# Pass 5: `SIMDPairwiseAndConversionInlinePass` (`simd-pairwise-conversion-inline-pass`)

- **Implementation File**: `src/horizon2llvm/lowering/pass_simd_pairwise_conversion_inline.cpp`
- **Header Declaration**: `src/horizon2llvm/passes.hpp` (`ultrs::passes::SIMDPairwiseAndConversionInlinePass`)
- **Pipeline Stage**: Stage II — Switch-Specific, x86-64 Devirtualization & ARM64-ism Deconstruction (Pass 5 of 23)
- **Default Tier**: Tier 1 (Safe Local; enabled by default)

## 1. What Problem It Is Solving

Even after `FPCRFastFPLoweringPass` (Pass 4) lowers basic element-wise `FADD`/`FMUL`/`FMLA`, 3D game engines on Nintendo Switch (such as Nintendo's `sead` math library and Havok physics in TOTK) rely heavily on specialized AArch64 AdvSIMD (NEON) instructions:
- **Pairwise FP reductions** (`FADDP`, `FMAXNMP`, `FMINNMP` via `@rt_vec_fpair` and `@rt_scalar_fpair`) for vector dot products and bounding-box checks.
- **Indexed vector-by-element FP multiply/FMA** (`FMUL Vd.4S, Vn.4S, Vm.S[idx]`, `FMLA Vd.4S, Vn.4S, Vm.S[idx]`, `FMLS` via `@rt_indexed_fp`) for 4x4 matrix-vector multiplication and quaternion skinning.
- **Vector/scalar-SIMD FP comparisons** (`FCMEQ`, `FCMGE`, `FCMGT`, `FACGE`, `FACGT` via `@rt_vec_fcmp`) producing all-ones/all-zeros lane masks.
- **Scalar & vector rounding and precision conversions** (`FCVT Dd, Sn`, `FCVT Sd, Dn`, `FRINTN/P/M/Z/A/X/I`, `FCVTL`, `FCVTN` via `@rt_fp_dp1`, `@rt_vec_frint`, `@rt_vec_fcvtl`, `@rt_vec_fcvtn`).
- **Scalar & vector Int<->FP conversions** (`SCVTF`, `UCVTF`, `FCVTZS`, `FCVTZU` via `@rt_fp_fromint`, `@rt_fp_toint`, `@rt_vec_fcvt_int`), such as `f_80116adb8` (RGBA float-to-packed-u32 color conversion).
- **NEON integer vector shifts, narrowing, and widening** (`SHL`, `SSHR`, `USHR`, `XTN`, `SHRN`, `SHLL`, `SSHLL`, `USHLL`, `SADDL`, `UADDL`, `SSUBL`, `USUBL`, `SMULL`, `UMULL` via `@rt_sl_gen`).

If even **one** of these instructions remains an opaque `@rt_*` C call inside a function, `CpuStatePromotionPass` must flush and reload all dirty `V0`..`V31` and `X0`..`X30` registers around that call!

## 2. Why That Problem Is Important

- **Performance (100% XMM Residency for Transform/Physics Kernels)**: By inlining all 12 families of NEON/FP helpers into pure SSA vector IR (`shufflevector`, `extractelement`, `@llvm.fma.v4f32`, `@llvm.fptosi.sat.*`, `fcmp`, `sext`, `fpext`, `fptrunc`), entire 3D math and color-conversion functions (`f_80116adb8`) become 100% call-free and execute purely in host XMM/YMM registers.
- **Correctness of AArch64 Saturation & NaN Semantics**: In C/C++, `fptosi` on `NaN` or out-of-range floats is undefined behavior (and on x86-64 `cvttss2si` returns `0x80000000` "indefinite integer"), whereas AArch64 `FCVTZS` / `FCVTZU` architecturally returns `0` for `NaN` and saturates `+Inf`/`-Inf` to `INT_MAX`/`INT_MIN` (or `UINT_MAX`/`0`). Lowering `FCVTZS`/`FCVTZU` specifically to `@llvm.fptosi.sat.*` and `@llvm.fptoui.sat.*` guarantees exact AArch64 saturation and `NaN -> 0` behavior in native x86-64 machine code!

## 3. How the Pass Solves That Problem at a High Level

For every function where `!fn->modifies_fpcr`:
1. Matches `@rt_vec_fpair`, `@rt_scalar_fpair`, `@rt_indexed_fp`, `@rt_vec_fcmp`, `@rt_fp_dp1`, `@rt_vec_frint`, `@rt_vec_fcvtl`, `@rt_vec_fcvtn`, `@rt_fp_fromint`, `@rt_fp_toint`, `@rt_vec_fcvt_int`, and `@rt_sl_gen` calls.
2. Emits explicit `OpTag::CpuRegRead` loads for the source `V` registers (`arch_reg = 64 + n`), constructs the exact LLVM vector/scalar IR sequence, and emits an `OpTag::CpuRegWrite` store for the destination `V` register (`arch_reg = 64 + d`) or GPR (`dst_reg`).

## 4. Detailed Technical Implementation Details

- **Pairwise FP (`emit_vec_fpair`)**: Bitcasts `Vn` and `Vm` from `i128` to `<4 x float>` (or `<2 x double>`), extracts even lanes `<0, 2, 4, 6>` and odd lanes `<1, 3, 5, 7>` using two `shufflevector` instructions (or `<0, 4, u, u>` and `<1, 5, u, u>` with 64-bit truncation for `2S` when `Q == 0`), and performs `fadd` or `@llvm.maxnum`/`@llvm.minnum`.
- **Indexed FP Multiply/FMA (`emit_indexed_fp`)**: Uses `shufflevector` with mask `<idx, idx, idx, idx>` (or `<idx, idx>` for `2D`) to broadcast lane `idx` of `Vm` across the vector, then emits `fmul` or `@llvm.fma.v4f32` / `@llvm.fma.v2f64` (with `fneg` on `Vn` for `FMLS`, `opc == 5`).
- **Saturating FP-to-Int (`emit_fp_toint` / `emit_vec_fcvt_int`)**: Emits `@llvm.fptosi.sat.i32.f32`, `@llvm.fptoui.sat.i32.f32`, `@llvm.fptosi.sat.v4i32.v4f32`, etc., which LLVM 21 lowers on x86-64 to exact clamping + NaN masking instructions.
- **NEON Widening & Narrowing (`try_emit_inline_sl_gen`)**: Handles `keep == 1` (`XTN2`, `SHRN2`, `FCVTN2`) by reading the existing low 64 bits of `Vd`, zero-extending to `i128`, shifting the new 64-bit narrowed upper half left by `64`, and ORing them together.

## 5. End-to-End Walkthrough of Representative `llvm::ir` Snippets

### Input AArch64 Instructions
```arm64
0x800100008: 4fa29020    fmul   v0.4s, v1.4s, v2.s[1]
0x800100034: 4ea1b820    fcvtzs v0.4s, v1.4s
```

### Lifted LLVM IR Before `SIMDPairwiseAndConversionInlinePass`
```llvm
  call void @rt_indexed_fp(ptr %c, i32 0, i32 1, i32 0, i32 9, i32 0, i32 0, i32 1, i32 2, i32 1)
  call void @rt_vec_fcvt_int(ptr %c, i32 0, i32 1, i32 1, i32 0, i32 3, i32 0, i32 0, i32 0, i32 1)
```

### Lowered LLVM IR After `SIMDPairwiseAndConversionInlinePass`
```llvm
  ; [SIMDPairwiseAndConversionInlinePass] inline indexed FP mul/FMA
  %ixnv23 = bitcast i128 %svr21 to <4 x float>
  %ixmv24 = bitcast i128 %svr22 to <4 x float>
  %ixsp25 = shufflevector <4 x float> %ixmv24, <4 x float> %ixmv24, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %ixrv26 = fmul <4 x float> %ixnv23, %ixsp25
  %ixq22 = bitcast <4 x float> %ixrv26 to i128
  ...
  ; [SIMDPairwiseAndConversionInlinePass] inline vector/scalar FP<->Int conversion
  %vcinv94 = bitcast i128 %svr91 to <4 x float>
  %vcirv93 = call <4 x i32> @llvm.fptosi.sat.v4i32.v4f32(<4 x float> %vcinv94)
  %vciq92 = bitcast <4 x i32> %vcirv93 to i128
```

## 6. Other Passes That Rely On or Interact With This Pass

- **`FPCRFastFPLoweringPass` (Pass 4, Upstream)**: Handles element-wise binary FP ops and `FSQRT`, while Pass 5 handles pairwise, indexed, rounding, conversion, and NEON lane width ops.
- **`AArch64IdiomDeconstructPass` (Pass 12, Downstream)**: Forwards scalar `V`-register `zext`/`trunc i128` pairs produced by `@rt_fp_fromint`, `@rt_fp_toint`, and `@rt_fp_dp1` (e.g., in `f_80116adb8` where `FCVTZS W8, S0` immediately follows scalar FP multiplies).
- **`CpuStatePromotionPass` (Pass 21, Downstream)**: Promotes all `OpTag::CpuRegRead` / `OpTag::CpuRegWrite` on `V0`..`V31` to SSA `alloca`s.
