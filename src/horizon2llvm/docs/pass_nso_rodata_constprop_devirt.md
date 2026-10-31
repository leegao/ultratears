# Pass 3: `NsoRodataConstPropAndDevirtPass` (`nso-rodata-constprop-devirt-pass`)

- **Implementation File**: `src/horizon2llvm/lowering/pass_nso_rodata_constprop_devirt.cpp`
- **Header Declaration**: `src/horizon2llvm/passes.hpp` (`ultrs::passes::NsoRodataConstPropAndDevirtPass`)
- **Pipeline Stage**: Stage II — Switch-Specific, x86-64 Devirtualization & ARM64-ism Deconstruction (Pass 3 of 23)
- **Default Tier**: Tier 2 (Opt-in via `--all-passes` or `--enable-pass rodata-constprop`)

## 1. What Problem It Is Solving

Nintendo Switch NSO0 binaries compiled from C++ (`clang` for Horizon OS) store virtual method tables (`_ZTV*`), constant lookup tables, and relocated Global Offset Table (`.got`) pointers inside the read-only `.rodata` segment. At runtime on AArch64, calling a virtual method on a known concrete type or calling through a `.rodata` function pointer executes:
1. `ADRP Xn, <page>` + `ADD Xn, Xn, #<page_off>` (or `MOVZ` + `MOVK`) to materialize the `.rodata` vtable/GOT address.
2. `LDR Xm, [Xn, #offset]` (`OpTag::GuestMemLoad`) to load the 64-bit target function pointer from `.rodata`.
3. `BLR Xm` (`OpTag::IndirectCall`), which in the lifter defaults to a slow runtime hash-table lookup `call void @rt_dispatch(ptr %c)`.

Because `NsoFile::load()` decompresses `.rodata` and applies all static `DT_RELA` and `DT_RELR` image relocations prior to lifting (while also recording symbol relocations `r.sym != 0`), any load from a compile-time constant `.rodata` address that does not depend on an unresolved external symbol has a statically known constant value.

## 2. Why That Problem Is Important

- **Virtualization & Indirect Call Devirtualization**: Every `BLR Xm` left as `call void @rt_dispatch(ptr %c)` is an opaque indirect call barrier that forces `CpuStatePromotionPass` to flush all dirty guest registers to `Cpu* %c`, look up the target PC in a hash table, and reload all registers afterward. Converting `BLR Xm` into a direct `call void @f_<target_pc>(ptr %c)` (`OpTag::DirectCall`) exposes the call target to LLVM's optimizer, interprocedural register summaries (`Pass 20`), and link-register elision (`Pass 18`).
- **Performance (Constant Folding from `.rodata`)**: Folding constant loads from `.rodata` eliminates guest memory loads (`inttoptr` + `load`) and exposes constant divisors, constant shift counts, and constant branch conditions to downstream passes.
- **Correctness Safeguards**: Must carefully mask 32-bit `Wn` reads (`TypeKind::Int32`) to `uint32_t`, account for `fn->jump_tables` predecessors before propagating constants across basic blocks, clear `gpr_consts` on `@rt_*` helper calls, and skip `.rodata` addresses with unresolved symbol relocations (`r.sym != 0`).

## 3. How the Pass Solves That Problem at a High Level

1. **CFG Predecessor Counting**: Computes `pred_count[bb->name]` across all explicit `UncondBranch` and `CondBranch` edges **plus** all jump-table target blocks in `fn->jump_tables` (and all blocks if `fn->has_all_labels` is set).
2. **Forward Constant Propagation**:
   - Tracks `ssa_consts` (`%reg -> uint64_t`) and `gpr_consts` (`arch_reg 0..30 -> uint64_t`, with `X31/XZR = 0`).
   - Propagates `gpr_consts` into a basic block only when `pred_count[bb->name] == 1` and its single predecessor terminated without a call.
   - Evaluates `MOVZ`/`MOVN`/`MOVK` (`and` + `or`), `ADRP`+`ADD`, `SUB`, `XOR`, `SHL`, `LSHR`, `zext`, and `trunc`, truncating 32-bit `TypeKind::Int32` values to `uint32_t`.
3. **`.rodata` Load Folding**: When an `OpTag::GuestMemLoad` has an address operand in `ssa_consts` falling inside `[rodata_lo_, rodata_hi_)` (and not in `relocated_addrs` with `r.sym != 0`), the pass reads the `1`-, `2`-, `4`-, or `8`-byte value directly from `image_data_`, replaces the load with `PassLLVMBuilder::add("i64", "0", std::to_string(val), dst_reg)`, and records `ssa_consts[dst_reg] = val`.
4. **Devirtualizing `BLR Xn` / `BR Xn`**: When an `OpTag::IndirectCall` or `OpTag::IndirectJump` jumps to a constant target `target_pc` in `[text_lo_, text_hi_)` aligned to 4 bytes, the pass rewrites the instruction into an `OpTag::DirectCall` (`call void @f_<target_pc>(ptr %c)`) or intra-function `OpTag::UncondBranch` (`br label %L_<target_pc>`).

## 4. Detailed Technical Implementation Details

- **32-Bit `Wn` Constant Truncation Guard**: When `inst.tag == OpTag::CpuRegRead` has `inst.dst_type == TypeKind::Int32`, `cval` is masked via `static_cast<uint32_t>(cval)` before recording `ssa_consts[inst.dst_reg]`. Similarly, 32-bit `and i32`, `or i32` (used by `MOV Wn, Wm`), `xor i32`, and `trunc i64 ... to i32` mask the folded constant to 32 bits so high 32-bit garbage never leaks into `Xd` on subsequent `zext i32 to i64`.
- **`PassLLVMBuilder` Emission**: Folded `.rodata` loads use `PassLLVMBuilder::add` (`IRBuilder::CreateAdd(ConstantInt(0), ConstantInt(val))`) and devirtualized calls use `PassLLVMBuilder::call("void", callee_sym, {"ptr %c"}, "", OpTag::DirectCall)`.

## 5. End-to-End Walkthrough of Representative `llvm::ir` Snippets

### Input AArch64 Sequence (Vtable Load from `.rodata` + `BLR X9`)
```arm64
0x800100000: 90016008    adrp x8, #0x802c00000
0x800100004: 91040108    add  x8, x8, #0x100     ; x8 = 0x802c00100 (in .rodata)
0x800100008: f9400509    ldr  x9, [x8, #8]       ; *(uint64_t*)0x802c00108 == 0x80000f3bc
0x80010000c: d63f0120    blr  x9
0x800100010: d65f03c0    ret
```

### Lifted LLVM IR Before `NsoRodataConstPropAndDevirtPass`
```llvm
  ; @pc 0x800100008 (word=0xf9400509)
  %t4 = add i64 %r3, 8
  %gmp5 = inttoptr i64 %t4 to ptr
  %ld6 = load i64, ptr %gmp5, align 1
  store i64 %ld6, ptr %r7.p, align 8
  ; @pc 0x80010000c (word=0xd63f0120)
  store i64 %r8, ptr %pc.p, align 8
  call void @rt_dispatch(ptr %c)
```

### Lowered LLVM IR After `NsoRodataConstPropAndDevirtPass`
```llvm
  ; @pc 0x800100008 (word=0xf9400509)
  %t4 = add i64 %r3, 8
  ; [NsoRodataConstPropAndDevirtPass] folded 8-byte .rodata load at 0x802c00108 -> 0x80000f3bc
  %ld6 = add i64 0, 34359798716
  store i64 %ld6, ptr %r7.p, align 8
  ; @pc 0x80010000c (word=0xd63f0120)
  ; [NsoRodataConstPropAndDevirtPass] devirtualized indirect call -> @f_80000f3bc
  call void @f_80000f3bc(ptr %c)
```

## 6. Other Passes That Rely On or Interact With This Pass

- **`ShadowDispatchTablePass` (Pass 14, Downstream)**: Any `BLR Xn` devirtualized into `OpTag::DirectCall` by Pass 3 no longer needs a shadow dispatch cache lookup in Pass 14.
- **`LinkRegisterElisionPass` (Pass 18), `TailCallDevirtualizationPass` (Pass 19), & `AAPCS64ABIContractPass` (Pass 20, Downstream)**: All three passes operate on `OpTag::DirectCall` instructions; devirtualizing `BLR` in Pass 3 unlocks link-register elision, tail-call devirtualization, and interprocedural register summary pruning at the call site.
