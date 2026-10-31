# Pass 13: `JumpTableLoweringPass` (`jump-table-lowering-pass`)

- **Implementation File**: `src/horizon2llvm/lowering/pass_jump_table_lowering.cpp`
- **Header Declaration**: `src/horizon2llvm/passes.hpp` (`ultrs::passes::JumpTableLoweringPass`)
- **Pipeline Stage**: Stage III — Control-Flow, Indirect Dispatch & Integer/FP Flag Predicate Fusion (Pass 13 of 23)
- **Default Tier**: Tier 0 (Required; always enabled)

## 1. What Problem It Is Solving

In AArch64 binaries compiled from C/C++ `switch` statements, indirect jumps (`BR Xn`, lifted as `OpTag::IndirectJump`) compute a target PC within the current function by loading an offset from a `.rodata` jump table (`LDRB`/`LDRH`/`LDRSW`/`LDR`) and adding it to a base label (`ADR` or `ADRP`+`ADD`).

If an indirect `BR Xn` is left as a runtime call to `call void @rt_dispatch(ptr %c); ret void`, two severe problems occur:
1. **Fatal Intra-Function Dispatch Failure (`FATAL: no function at 800282ea4`)**: The global runtime dispatcher `@rt_dispatch` only indexes **function entry points** (`@f_<entry_pc>`), *not* internal basic block labels (`%L_800282ea4`). Jumping to an internal basic block via `@rt_dispatch` crashes at runtime unless the indirect jump is lowered to an intra-function `switch i64` branching directly to `%L_<target_pc>`.
2. **Broken Intra-Function CFG & Register Promotion**: Leaving a `switch` jump as `call void @rt_dispatch(ptr %c); ret void` hides all intra-function control-flow edges from `CpuStatePromotionPass` (`mem2reg`/`phi` placement) and LLVM's loop optimizer.

## 2. Why That Problem Is Important

- **Correctness of Switch Statements & State Machines**: Lowering `OpTag::IndirectJump` into a native LLVM `switch i64 %target_reg, label %default [ i64 <pc>, label %L_<pc> ... ]` connects the basic block directly to all case target blocks (`%L_<pc>`) inside the same `llvm::Function`.
- **Fallback Safety (`@L_dispatch`)**: For functions with unresolved dynamic indirect jumps (`fn->has_all_labels == true`), synthesizing a per-function `@L_dispatch` block that switches across every basic block PC in the function before falling back to `musttail call void @rt_dispatch(ptr %c)` guarantees that any intra-function computed `BR Xn` resolves locally without crashing `@rt_dispatch`.
- **Performance**: LLVM lowers `switch i64` directly to an x86-64 jump table or binary decision tree with zero `Cpu* %c` register flushing.

## 3. How the Pass Solves That Problem at a High Level

1. **Per-Site Jump Table Lowering (`fn->jump_tables`)**:
   - When an `OpTag::IndirectJump` at `inst.guest_pc` has a resolved `JumpTableInfo` entry in `fn->jump_tables` with non-empty `targets`:
     - Creates a fallback default basic block `L_<pc>_jt_def` that stores `%target_reg` to `c->pc` (offset `256`) and executes `musttail call void @rt_dispatch(ptr %c); ret void` (or branches to `L_dispatch` if `fn->has_all_labels` is active).
     - Uses `PassLLVMBuilder::switch_i64(target_reg, def_label, cases)` (`llvm::IRBuilder::CreateSwitch`) to emit a structured `switch i64` instruction branching to `%L_<target_pc>` for every unique valid target in `[fn->entry_pc, fn->end_pc)`.
2. **Per-Function `@L_dispatch` Block Synthesis (`fn->has_all_labels`)**:
   - If `fn->has_all_labels == true` (or any `OpTag::IndirectJump` lacks a resolved jump table), rewrites the unresolved `IndirectJump` to branch to `%L_dispatch`, and synthesizes a `@L_dispatch` basic block at the end of the function switching on `c->pc` across all `fn->label_pcs` before falling back to `L_dispatch_ext` (`musttail call void @rt_dispatch(ptr %c); ret void`).

## 4. Detailed Technical Implementation Details

- **Hoisted-Table ADRP+ADD Resolution (`nso_loader.hpp` + Pass 13)**: In large functions like `f_8002824a0` (where `ADRP X26, #0x802d73000; ADD X26, X26, #0x86c` at `0x80028257c` is hoisted 579 instructions before `LDRSH X10, [X26, X8, LSL #1]; BR X9` at `0x800282e88`), `JumpTableResolver::emulate_table` tracks `last_adrp_at` so only `ADD-imm` instructions paired with a recent `ADRP`/`ADR` update the table pointer, recovering all 7 case targets (`0x800282b38`, `0x800282e8c`, `0x800282ea4`, `0x8002830fc`, `0x800283114`, `0x800283128`, `0x80028313c`).
- **`PassLLVMBuilder::switch_i64`**: Emits a real `llvm::SwitchInst` on the underlying `llvm::BasicBlock` with a case for each `(uint64_t target_pc, BasicBlock* case_bb)` pair.

## 5. End-to-End Walkthrough of Representative `llvm::ir` Snippets

### Input AArch64 Jump-Table Dispatch (`f_8002824a0` at `0x800282e7c`..`0x800282e88`)
```arm64
0x800282e7c: 10fffe69    adr   x9, #0x800282b38
0x800282e80: f8787b4a    ldrsh x10, [x26, x8, lsl #1]
0x800282e84: 8b0a0929    add   x9, x9, x10, lsl #2
0x800282e88: d61f0120    br    x9
```

### Lifted LLVM IR Before `JumpTableLoweringPass`
```llvm
  ; @pc 0x800282e88 (word=0xd61f0120)
  ; indirect_br %r12 (pc=0x800282e88)
```

### Lowered LLVM IR After `JumpTableLoweringPass`
```llvm
  ; @pc 0x800282e88 (word=0xd61f0120)
  switch i64 %r12, label %L_800282e88_jt_def [
    i64 34362368824, label %L_800282b38
    i64 34362369676, label %L_800282e8c
    i64 34362369700, label %L_800282ea4
    i64 34362370300, label %L_8002830fc
    i64 34362370324, label %L_800283114
    i64 34362370344, label %L_800283128
    i64 34362370364, label %L_80028313c
  ]

L_800282e88_jt_def:
  %jt_pc.p = getelementptr inbounds i8, ptr %c, i64 256
  store i64 %r12, ptr %jt_pc.p, align 8, !alias.scope !3, !noalias !4
  musttail call void @rt_dispatch(ptr %c)
  ret void
```

## 6. Other Passes That Rely On or Interact With This Pass

- **`NsoRodataConstPropAndDevirtPass` (Pass 3, Upstream)**: Reads `fn->jump_tables` so jump-table case blocks are properly counted in `pred_count` even before Pass 13 emits the `switch i64` instruction.
- **`NZCVPredicateFusionPass` (Pass 16) & `CpuStatePromotionPass` (Pass 21, Downstream)**: Inspect `OpTag::Switch` (`inst.switch_targets`) to track successor basic blocks and entry back-edges accurately.
