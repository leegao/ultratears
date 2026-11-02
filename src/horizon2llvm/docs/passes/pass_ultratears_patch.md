# Pass 1: `UltraTearsPatchPass` (`ultratears-patch-pass`)

- **Implementation File**: `src/horizon2llvm/lowering/pass_ultratears_patch.cpp`
- **Header Declaration**: `src/horizon2llvm/passes.hpp` (`ultrs::passes::UltraTearsPatchPass`)
- **Pipeline Stage**: Stage I — Game Patching & Entry Cleanup (Pass 1 of 23)
- **Default Tier**: Tier 0 (Required; always enabled)

## 1. What Problem It Is Solving

Static recompilation of commercial Nintendo Switch NSO0 executables (such as *The Legend of Zelda: Tears of the Kingdom* v1.4.2 and v1.4.3 `main`) requires targeted, instruction-verified binary patches at specific guest virtual addresses (`guest_pc`) without mutating the on-disk NSO0 binary or relying on brittle post-lift Python text-replacement scripts (`src/horizon2llvm/patches.py`). Specifically:
- Game engine subsystems like Dynamic Resolution Scaling (`drs_off`) branch on internal state bits (`tbz w8, #0, <target>`) inside large rendering functions (`0x8005e9d10` in TOTK 1.4.2 and `0x8005843e0` in TOTK 1.4.3), where runtime host configuration (`@totk_drs_enabled()`) needs to dynamically override or preserve the guest branch decision.
- Developers and test harnesses also need a structured CLI mechanism (`--patch ADDR:EXPECTED_WORD:KIND[:ARG]`) to inject no-ops (`nop`), forced branches (`b`), or immediate register overrides (`mov_x0`, `mov_w8`) at exact guest PCs while guaranteeing that a patch compiled for one NSO build never silently corrupts a different binary version.

## 2. Why That Problem Is Important

- **Correctness & Multi-Version Safety**: Applying an address-based patch to the wrong NSO version (e.g., applying a TOTK 1.4.3 patch offset to a 1.4.2 binary) would overwrite an unrelated instruction and corrupt control flow or register state. Verifying the exact 32-bit AArch64 instruction word (`fn->raw_words.at(pc) == expected_word`) inside the IR pass guarantees fail-fast diagnostics on explicit CLI rules and automatic version detection across built-in rules (`TOTK 1.4.2` vs `1.4.3`).
- **Virtualization & Host Integration**: Rather than hardcoding a static binary rewrite, `UltraTearsPatchPass` can splice calls to host C runtime predicates (such as `call i32 @totk_drs_enabled()`) directly into the lifted LLVM IR basic block and combine the host predicate with the guest condition (`or i1 %drs_off, %tbz`).
- **Performance & Downstream Optimization**: Because the patch is applied as the very first IR pass—before dead-flag elimination, constant propagation, and `CpuStatePromotionPass`—any register reads or writes introduced or killed by the patch participate naturally in downstream SSA promotion (`alloca` / `mem2reg`) with zero runtime interpreter or hook overhead.

## 3. How the Pass Solves That Problem at a High Level

1. **Candidate Filtering by Function PC Range**: For each `Function` in the `Module`, the pass skips high-level emulated (`hle_symbol`) stubs and checks which built-in or user-supplied `PatchRule` entries have `guest_pc` within `[fn->entry_pc, fn->end_pc)`.
2. **Instruction-Word Verification**:
   - For built-in multi-version `drs_off` rules (`0x8005843e0` expecting `0x360042e8` for TOTK 1.4.3; `0x8005e9d10` expecting `0x360041a8` for TOTK 1.4.2), the pass checks `fn->raw_words` and activates only the rule whose 32-bit word matches the loaded NSO.
   - For explicit CLI `--patch` rules, `verify_expected_word()` verifies that `fn->raw_words[pc] == rule.expected_word`, throwing a descriptive `std::runtime_error` if the instruction word mismatches.
3. **Guest Instruction Window Replacement**: Within each basic block, the lifter emits an `OpTag::GuestInsnMarker` (`; @pc 0x...`) at the start of every lifted AArch64 instruction. `UltraTearsPatchPass` locates the marker matching `rule.guest_pc`, marks all IR instructions belonging to that guest PC (up to the next `GuestInsnMarker`) as `dead = true`, and uses `PassLLVMBuilder` (`llvm::IRBuilder<llvm::NoFolder>`) to construct the replacement LLVM IR instructions in place.

## 4. Detailed Technical Implementation Details

- **`PassLLVMBuilder` Construction (`src/horizon2llvm/lowering/pass_ultratears_patch.cpp`)**:
  - For `PatchRule::Kind::DrsOff`:
    1. Emits an `OpTag::CpuRegRead` for `X8` (`arch_reg = 8`, `TypeKind::Int64`) so `CpuStatePromotionPass` promotes the `X8` read to `%loc_x8`.
    2. Uses `PassLLVMBuilder::call("i32", "totk_drs_enabled", {})` (`llvm::IRBuilder::CreateCall` on `llvm::FunctionCallee` `@totk_drs_enabled`) to query host DRS configuration.
    3. Uses `B.icmp_eq("i32", drs_on, "0")` (`CreateICmpEQ`), `B.and_i64(x8_reg, "1")` (`CreateAnd`), `B.icmp_eq("i64", b0, "0")` (`CreateICmpEQ`), and `B.or_op("i1", drs_off, tbz)` (`CreateOr`) to fuse the host override with the original `tbz w8, #0` test.
    4. Emits an `OpTag::CondBranch` (`B.cond_br(...)`) targeting `L_<target_pc>` when true and `L_<pc + 4>_ft` when false.
  - For `PatchRule::Kind::Nop`: Marks all non-branch instructions in the `[marker, next_marker)` window `dead = true` and emits a comment marker via `PassLLVMBuilder`.
  - For `PatchRule::Kind::BranchTarget`: Replaces the window with an unconditional `OpTag::UncondBranch` (`br label %L_<target_pc>`) or tail dispatch call if out-of-function.
  - For `PatchRule::Kind::WriteRegImm`: Replaces the window with an `OpTag::CpuRegWrite` storing `llvm::ConstantInt::get(i64, imm_val)` into `rule.arch_reg`.
- **Dual LLVM New Pass Manager Plugin Support**: In addition to operating on `ultrs::llvm_ir::Module`, `src/horizon2llvm/llvm_pass_plugin.cpp` exposes `UltraTearsPatchLLVMIRPass` for standalone `opt -load-pass-plugin` pipelines by scanning `!ultratears.pc` metadata nodes attached to `llvm::Instruction`s.

## 5. End-to-End Walkthrough of Representative `llvm::ir` Snippets

### Input AArch64 Instruction (TOTK 1.4.2 `f_8005e9b00` at `0x8005e9d10`)
```arm64
0x8005e9d10: 360041a8    tbz w8, #0, #0x8005ea544
```

### Lifted LLVM IR Before `UltraTearsPatchPass`
```llvm
L_8005e9d10:
  ; @pc 0x8005e9d10 (word=0x360041a8)
  %r1.p = getelementptr inbounds i8, ptr %c, i64 64
  %r1 = load i64, ptr %r1.p, align 8, !alias.scope !3, !noalias !4
  %t2 = and i64 %r1, 1
  %cmp3 = icmp eq i64 %t2, 0
  br i1 %cmp3, label %L_8005ea544, label %L_8005e9d14_ft
```

### Lowered LLVM IR After `UltraTearsPatchPass` (and `CpuStatePromotionPass`)
```llvm
L_8005e9d10:
  ; @pc 0x8005e9d10 (word=0x360041a8)
  %x8v1 = load i64, ptr %loc_x8, align 8
  ; [UltraTearsPatchPass] drs_off at 0x8005e9d10
  %drs_on2 = call i32 @totk_drs_enabled()
  %drs_off3 = icmp eq i32 %drs_on2, 0
  %b04 = and i64 %x8v1, 1
  %tbz5 = icmp eq i64 %b04, 0
  %drs_br6 = or i1 %drs_off3, %tbz5
  br i1 %drs_br6, label %L_8005ea544, label %L_8005e9d14_ft
```

## 6. Other Passes That Rely On or Interact With This Pass

- **`AArch64ToLLVMLifter` (Upstream)**: Must populate `fn->raw_words[pc]` and emit `OpTag::GuestInsnMarker` boundaries for each 32-bit AArch64 instruction.
- **`CpuStatePromotionPass` (Pass 21, Downstream)**: Relies on `UltraTearsPatchPass` tagging its synthesized register reads/writes with `OpTag::CpuRegRead` / `OpTag::CpuRegWrite` (`arch_reg = 8`) so `%x8v1` is promoted to the function's entry-block `alloca` (`%loc_x8`) and SSA registers rather than accessing `Cpu* %c` directly.
- **`AAPCS64ABIContractPass` (Pass 20, Downstream)**: Sees any patched register reads/writes when computing interprocedural `summary_reads` and `summary_writes`.
