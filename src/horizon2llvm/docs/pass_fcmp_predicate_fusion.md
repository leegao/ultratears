# Pass 15: `FCMPPredicateFusionPass` (`fcmp-predicate-fusion-pass`)

- **Implementation File**: `src/horizon2llvm/lowering/pass_fcmp_predicate_fusion.cpp`
- **Header Declaration**: `src/horizon2llvm/passes.hpp` (`ultrs::passes::FCMPPredicateFusionPass`)
- **Pipeline Stage**: Stage III — Control-Flow, Indirect Dispatch & Integer/FP Flag Predicate Fusion (Pass 15 of 23)
- **Default Tier**: Tier 1 (Safe Local; enabled by default)

## 1. What Problem It Is Solving

In AArch64, scalar floating-point comparisons (`FCMP Sn, Sm`, `FCMP Dn, Dm`, `FCMP Sn, #0.0`, `FCMP Dn, #0.0`) compare two IEEE-754 floating-point values in `V[n]` and `V[m]` and write a 4-bit condition result into the integer `NZCV` status register (`N=0, Z=1, C=1, V=0` = `0x60000000` for equal; `N=1, Z=0, C=0, V=0` = `0x80000000` for less-than; `N=0, Z=0, C=1, V=0` = `0x20000000` for greater-than; `N=0, Z=0, C=1, V=1` = `0x30000000` for unordered/NaN). Immediately afterward, a branch (`B.GT`, `B.LT`, `B.MI`, `B.PL`, `B.VS`), conditional select (`CSEL`, `FCSEL`), or `CCMP` tests those `NZCV` bits.

In the baseline lifter, `FCMP` calls a C helper `%nzcv = call i64 @rt_fp_cmp_s(ptr %c, i32 <n>, i32 <m>, i32 <zero>)` (or `@rt_fp_cmp_d`). This creates two major inefficiencies:
1. Calling `@rt_fp_cmp_s(ptr %c, ...)` is an external C call taking `ptr %c`, which forces `CpuStatePromotionPass` to flush and reload all 32 `V` registers around every single `FCMP`!
2. Packing IEEE-754 comparison results into a 32-bit integer `0x60000000` / `0x80000000` / `0x20000000` / `0x30000000` and then extracting and shifting `N`, `Z`, `C`, `V` bits prevents LLVM from emitting a direct `vucomiss` / `vucomisd` + `ja`/`jb` or `vcmpss` instruction.

## 2. Why That Problem Is Important

- **Performance (Single-Instruction `vucomiss` + Branch/Select on x86-64)**: By devirtualizing `@rt_fp_cmp_s` / `@rt_fp_cmp_d` into inline `V`-register reads (`OpTag::CpuRegRead`) and tagging the `OpTag::FlagWrite` with `cmp_kind = 4` (`FCMP_S`) or `cmp_kind = 5` (`FCMP_D`), downstream `NZCVPredicateFusionPass` (Pass 16) fuses `FCMP` + `B.cond`/`FCSEL`/`CSEL` into a single LLVM `fcmp <pred> float %lhs, %rhs` instruction, and `NZCVDeadFlagElimPass` (Pass 17) deletes the integer `NZCV` bit-packing tree completely!
- **Exact IEEE-754 NaN (Unordered) Semantics**: Because AArch64 `FCMP` sets `N=0, Z=0, C=1, V=1` when either operand is `NaN`, ordered vs unordered condition codes behave asymmetrically on `NaN` (e.g., `B.LT` (`N != V`) is **true** on `NaN` -> `fcmp ult`, whereas `B.MI` (`N == 1`) is **false** on `NaN` -> `fcmp olt`; `B.GT` (`Z == 0 && N == V`) is **false** on `NaN` -> `fcmp ogt`, whereas `B.HI` (`C == 1 && Z == 0`) is **true** on `NaN` -> `fcmp ugt`). Mapping all 14 condition codes (`0..13`) to their exact ordered/unordered LLVM `fcmp` predicates preserves 100% bit-exact IEEE-754 NaN behavior.

## 3. How the Pass Solves That Problem at a High Level

1. **Pattern Matching `@rt_fp_cmp_s` and `@rt_fp_cmp_d`**: Scans each basic block for `%res = call i64 @rt_fp_cmp_s(ptr %c, i32 <n>, i32 <m>, i32 <zero>)` (or `@rt_fp_cmp_d`) followed by an `OpTag::FlagWrite` storing `trunc i64 %res to i32` into `NZCV`.
2. **Inline `V`-Register Read Emission**:
   - Emits `OpTag::CpuRegRead` for `V[n]` (`arch_reg = 64 + n`) and, if `zero == 0`, `OpTag::CpuRegRead` for `V[m]` (`arch_reg = 64 + m`).
   - Uses `PassLLVMBuilder` to `trunc i128` to `i32`/`i64` and `bitcast` to `float`/`double` (`%fnf` and `%fmf` or `0.000000e+00`).
3. **Fallback `NZCV` Prefix Tree + Structured `FlagWrite` Tagging**:
   - Builds the inline 3-`fcmp` (`oeq`, `olt`, `ogt`) + 3-`select` `NZCV` computation in `finst.prefix_ir` (so if `NZCV` is actually read as an integer by `MRS Xn, NZCV` or across basic blocks, the exact `NZCV` bits are still computed in SSA without calling C).
   - Tags the `OpTag::FlagWrite` with `finst.cmp_kind = is_double ? 5 : 4`, `finst.op1 = Value::reg(Float/Double, %fnf)`, and `finst.op2 = Value::reg(Float/Double, %fmf)` for `NZCVPredicateFusionPass` (Pass 16).

## 4. Detailed Technical Implementation Details

- **`prefix_ir` Co-Elimination**: Attaching the `fcmp oeq`/`olt`/`ogt` + `select` tree to `finst.prefix_ir` (rather than emitting standalone `OpTag::RawIR` instructions) ensures that when `NZCVDeadFlagElimPass` (Pass 17) marks `finst.dead = true` after `NZCVPredicateFusionPass` (Pass 16) fuses the condition, the entire `NZCV` integer-packing select tree disappears with it!
- **Extracted TOTK Snippet Verification**: Verified on `f_800729cb0` from `data/exefs/main` (`fcmp s0, s1; b.gt; fcmp s1, #0.0; fcsel s0, s0, s2, mi`), where `FCMP` + `B.GT` fuses to `fcmp ogt float` and `FCMP #0.0` + `FCSEL MI` fuses to `fcmp olt float ..., 0.0` + `select i1`.

## 5. End-to-End Walkthrough of Representative `llvm::ir` Snippets

### Input AArch64 Instructions (TOTK `f_800729cb0`)
```arm64
0x800729cb0: 1e212000    fcmp  s0, s1
0x800729cb4: 5400008c    b.gt  0x800729cc4
0x800729cb8: 1e202028    fcmp  s1, #0.0
0x800729cbc: 1e224c00    fcsel s0, s0, s2, mi
```

### Lifted LLVM IR Before `FCMPPredicateFusionPass`
```llvm
  %fpc1 = call i64 @rt_fp_cmp_s(ptr %c, i32 0, i32 1, i32 0)
  %tr2 = trunc i64 %fpc1 to i32
  store i32 %tr2, ptr %nzcv.p, align 4
  ...
  ; cond_eval GT (12) from NZCV bits -> br i1 %cond
```

### Lowered LLVM IR After `FCMPPredicateFusionPass` + `NZCVPredicateFusionPass` + `NZCVDeadFlagElimPass`
```llvm
  ; [FCMPPredicateFusionPass] inline float operands for FCMP
  %fni24 = trunc i128 %fcr22 to i32
  %fnf25 = bitcast i32 %fni24 to float
  %fmi26 = trunc i128 %fcr23 to i32
  %fmf27 = bitcast i32 %fmi26 to float
  ; [NZCVPredicateFusionPass] fused direct fcmp for cond 12
  %cond5 = fcmp ogt float %fnf25, %fmf27
  br i1 %cond5, label %L_800729cc4, label %L_800729cb8_ft
```

## 6. Other Passes That Rely On or Interact With This Pass

- **`NZCVPredicateFusionPass` (Pass 16, Downstream)**: Consumes `finst.cmp_kind == 4 || 5` (`FCMP_S` / `FCMP_D`) and `finst.op1` / `finst.op2` to emit direct `fcmp <pred> float/double` instructions for `B.cond`, `CSEL`, `FCSEL`, and `CCMP`.
- **`NZCVDeadFlagElimPass` (Pass 17, Downstream)**: Eliminates the `OpTag::FlagWrite` (including `finst.prefix_ir`) once all `CondEval` consumers have been fused by Pass 16.
- **`CpuStatePromotionPass` (Pass 21, Downstream)**: Promotes the `OpTag::CpuRegRead` instructions on `V[n]` and `V[m]` to `%loc_v*` SSA registers.
