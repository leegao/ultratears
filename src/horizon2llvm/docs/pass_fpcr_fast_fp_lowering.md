# Pass 4: `FPCRFastFPLoweringPass` (`fpcr-fast-fp-lowering-pass`)

- **Implementation File**: `src/horizon2llvm/lowering/pass_fpcr_fast_fp_lowering.cpp`
- **Header Declaration**: `src/horizon2llvm/passes.hpp` (`ultrs::passes::FPCRFastFPLoweringPass`)
- **Pipeline Stage**: Stage II — Switch-Specific, x86-64 Devirtualization & ARM64-ism Deconstruction (Pass 4 of 23)
- **Default Tier**: Tier 1 (Safe Local; enabled by default)

## 1. What Problem It Is Solving

To guarantee strict bit-accurate IEEE-754 compliance when a guest function dynamically modifies the AArch64 Floating-Point Control Register (`FPCR`—for example, changing rounding modes or Flush-to-Zero behavior via `MSR FPCR, Xn`), the baseline lifter emits calls to runtime C helpers (`@rt_fp_op_s`, `@rt_fp_op_d`, `@rt_fp_fma_s`, `@rt_fp_fma_d`, `@rt_fp_dp1`, `@rt_vec_fop`) that take `(ptr %c, ...)` and inspect `c->fpcr` at runtime.

However, >99.9% of functions in Nintendo Switch games run under the default IEEE-754 Round-to-Nearest-Even (`RN`) mode and never write to `FPCR`. Leaving basic scalar/vector `FADD`, `FSUB`, `FMUL`, `FDIV`, `FMADD`, `FMSUB`, `FNMADD`, `FNMSUB`, `FSQRT`, `FMAXNM`, and `FMINNM` as C runtime calls destroys floating-point performance.

## 2. Why That Problem Is Important

- **Performance (Eliminating 32-Register XMM Flush/Reload Barriers)**: Every call to `@rt_fp_op_s(ptr %c, ...)` passes `Cpu* %c` to an external C function. Consequently, `CpuStatePromotionPass` (Pass 21) must flush all modified `V0`..`V31` (`128-bit` NEON/FP registers) to `Cpu* %c` in memory before the call and reload them from memory after the call. In a physics or animation loop (`f_800417630`), a single 4x4 matrix multiply would execute dozens of C function calls and hundreds of 128-bit memory stores/loads instead of staying in host XMM registers (`addss`, `mulss`, `vfmadd213ss`, `addps`, `mulps`).
- **Correctness**: Functions that actually execute `MSR FPCR, Xn` (`fn->modifies_fpcr == true`) must retain the exact `@rt_fp_*` helper calls so dynamic rounding modes continue to work accurately.

## 3. How the Pass Solves That Problem at a High Level

1. **Per-Function `FPCR` Check**: First scans each function to check whether `fn->modifies_fpcr` is set (or whether any `OpTag::HorizonMsr` writes to `FPCR`). If `FPCR` is modified, the function is skipped to preserve exact dynamic `FPCR` semantics.
2. **Inline Scalar & Vector FP Lowering via `PassLLVMBuilder`**:
   - **`@rt_fp_op_s` / `@rt_fp_op_d`** (`FOP_ADD`, `FOP_SUB`, `FOP_MUL`, `FOP_DIV`, `FOP_MAX`, `FOP_MIN`, `FOP_MAXNM`, `FOP_MINNM`): Replaces the call with `OpTag::CpuRegRead` loads of `V[n]` and `V[m]` (`arch_reg = 64 + reg`), truncates/bitcasts to `float` (`i32`) or `double` (`i64`), emits native LLVM `fadd`, `fsub`, `fmul`, `fdiv`, or `@llvm.maxnum.f32/f64` / `@llvm.minnum.f32/f64` via `PassLLVMBuilder`, zero-extends the result back to `i128` (matching AArch64's architectural rule that scalar `Sd`/`Dd` writes zero the upper bits of `Vd`), and emits an `OpTag::CpuRegWrite` to `V[d]`.
   - **`@rt_fp_fma_s` / `@rt_fp_fma_d`** (`FMADD`, `FMSUB`, `FNMADD`, `FNMSUB`): Emits inline `fneg` (when `neg_p` or `neg_a` is set) and `@llvm.fma.f32` / `@llvm.fma.f64`.
   - **`@rt_fp_dp1` (`FSQRT`)**: Emits inline `@llvm.sqrt.f32` / `@llvm.sqrt.f64`.
   - **`@rt_vec_fop`** (`<4 x float>` and `<2 x double>` `FADD`, `FSUB`, `FMUL`, `FDIV`, `FMAXNM`, `FMINNM`, `FMLA`, `FMLS`): Emits vector `bitcast i128 to <4 x float>/<2 x double>`, native vector FP operations (`fadd`, `fsub`, `fmul`, `fdiv`, `@llvm.fma.v4f32/v2f64`), and `64-bit` (`D`-reg, `Q=0`) zero-extension when `Q == 0`.

## 4. Detailed Technical Implementation Details

- **Architectural Upper-Bit Zeroing on Scalar & 64-Bit Vector Writes**: In AArch64, writing to a 32-bit scalar `Sd` register (`float`), a 64-bit scalar `Dd` register (`double`), or a 64-bit vector `Vd.2S` (`Q == 0`) zeroes bits `[127:32]` or `[127:64]` of the 128-bit `Vd` register. `FPCRFastFPLoweringPass` preserves this invariant by bitcasting `float -> i32` (or `double -> i64`, or truncating `Q=0` `<4 x float>` to `i64`) and emitting `zext i32/i64 %res to i128` before `OpTag::CpuRegWrite(64 + d)`.
- **`PassLLVMBuilder` Integration**: Every `trunc`, `bitcast`, `fneg`, `fadd`, `fsub`, `fmul`, `fdiv`, `@llvm.fma.*`, `@llvm.sqrt.*`, and `zext` is constructed through `PassLLVMBuilder` (`llvm::IRBuilder<llvm::NoFolder>`), keeping `fn.ssa_values` synchronized.

## 5. End-to-End Walkthrough of Representative `llvm::ir` Snippets

### Input AArch64 Instructions (TOTK `f_800417630` at `0x800417630`)
```arm64
0x800417630: 1e202820    fadd  s0, s1, s0
0x800417634: 1f020420    fmadd s0, s1, s2, s1
```

### Lifted LLVM IR Before `FPCRFastFPLoweringPass`
```llvm
  ; @pc 0x800417630 (word=0x1e202820)
  call void @rt_fp_op_s(ptr %c, i32 0, i32 0, i32 1, i32 0)
  ; @pc 0x800417634 (word=0x1f020420)
  call void @rt_fp_fma_s(ptr %c, i32 0, i32 1, i32 2, i32 1, i32 0, i32 0)
```

### Lowered LLVM IR After `FPCRFastFPLoweringPass`
```llvm
  ; @pc 0x800417630 (word=0x1e202820)
  %fpr1.p = getelementptr inbounds i8, ptr %c, i64 528
  %fpr1 = load i128, ptr %fpr1.p, align 16, !alias.scope !3, !noalias !4
  %fpr2.p = getelementptr inbounds i8, ptr %c, i64 512
  %fpr2 = load i128, ptr %fpr2.p, align 16, !alias.scope !3, !noalias !4
  ; [FPCRFastFPLoweringPass] inline scalar float op
  %fni3 = trunc i128 %fpr1 to i32
  %fmi4 = trunc i128 %fpr2 to i32
  %fnf5 = bitcast i32 %fni3 to float
  %fmf6 = bitcast i32 %fmi4 to float
  %frf7 = fadd float %fnf5, %fmf6
  %fri8 = bitcast float %frf7 to i32
  %frq9 = zext i32 %fri8 to i128
  %fpw10 = getelementptr inbounds i8, ptr %c, i64 512
  store i128 %frq9, ptr %fpw10, align 16, !alias.scope !3, !noalias !4
```

## 6. Other Passes That Rely On or Interact With This Pass

- **`SIMDPairwiseAndConversionInlinePass` (Pass 5, Downstream)**: Completes the devirtualization of the remaining FP/NEON runtime calls (`FADDP`, indexed `FMUL`/`FMLA`, `FCVT`, `FRINT`, `SCVTF`, `FCVTZS`, shifts/narrowing/widening).
- **`AArch64IdiomDeconstructPass` (Pass 12, Downstream)**: Forwards intra-block `zext i32/i64 -> i128` writes into subsequent `trunc i128 -> i32/i64` reads of the same `V` register, eliminating intermediate `i128` round-trips between consecutive scalar FP instructions.
- **`CpuStatePromotionPass` (Pass 21, Downstream)**: Promotes all `OpTag::CpuRegRead` / `OpTag::CpuRegWrite` on `V0`..`V31` (`arch_reg = 64..95`) into `%loc_v*` entry `alloca`s so LLVM's `SROA` maps them directly to host XMM registers.
