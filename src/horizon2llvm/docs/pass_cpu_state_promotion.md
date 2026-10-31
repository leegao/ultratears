# Pass 21: `CpuStatePromotionPass` (`cpu-state-promotion-pass`)

- **Implementation File**: `src/horizon2llvm/lowering/pass_cpu_state_promotion.cpp`
- **Header Declaration**: `src/horizon2llvm/passes.hpp` (`ultrs::passes::CpuStatePromotionPass`)
- **Pipeline Stage**: Stage IV — ABI Devirtualization, Register Promotion & Cross-Chunk Inlining (Pass 21 of 23)
- **Default Tier**: Tier 0 (Required; always enabled)

## 1. What Problem It Is Solving

When AArch64 instructions are lifted one-by-one, every architectural register read (`OpTag::CpuRegRead`) loads from `Cpu* %c` (`GEP %c, offset` + `load`), and every register write (`OpTag::CpuRegWrite`) stores back to `Cpu* %c` (`GEP %c, offset` + `store`).

In `perf.md` and `perf/main_432.ll`, the original implementation of `CpuStatePromotionPass` suffered from a severe **x86-64 Register Pressure & Double-Buffering Pathology** on large multi-call functions (`f_80077bc00`, `f_80077be18`, `f_80077c0e4`, `f_80077c180`):
1. **Unconditional Full-Alloca Promotion Across Calls**: Promoting all 20–27 touched AArch64 GPRs (`%loc_x0..%loc_x30`, `%loc_sp`) to function-wide `alloca`s and flushing/reloading all 20+ `alloca`s before and after every `BL` call (79 calls in `f_80077c180` alone!) created massive 25-variable SSA `PHI` webs across 44 basic blocks.
2. **Host x86-64 Register Starvation (`802` `%rsp` Stack Spills!)**: Because x86-64 has only 14 general-purpose registers (5 callee-saved plus `%rbx` holding `ptr %c`), LLVM's `Mem2Reg` + Greedy Register Allocator ran out of physical registers and **spilled `%loc_x*` onto the host x86-64 stack (`(%rsp)`)**, copying values from `0x80(%rbx)` (`Cpu* %c`) into `0x48(%rsp)` and back before every call! As a result, the original `main_432.o` bloated to **4,686 x86-64 instructions** (vs 3,352 for unlowered `main_432_raw.o`!), **802 `(%rsp)` stack spills**, and **1,255 `Cpu*` memory ops**.
3. **Single-Block-Only Pre-Promotion DSE & Unforwarded Intra-Block Reads**: Previously, pre-promotion DSE only looked within a single basic block and was blocked whenever an intermediate instruction read the register in the same block (`add x15, x16, x15, lsl #7; mov x1, x15; str xzr, [x1, #8]!`).

## 2. Why That Problem Is Important

- **Closing the x86-64 Instruction Bloat & Stack-Spill Gap**: Solving the cross-call double-buffering pathology while forwarding intra-block SSA register values and eliminating dead register stores across the entire CFG reduces `main_432` from **16,373 -> 8,964 IR lines (-45.2%)**, **4,686 -> 2,485 x86-64 instructions (-47.0%)**, **802 -> 80 `(%rsp)` stack spills (-90.0%)**, and **1,255 -> 570 `Cpu*` memory ops (-54.6%)**, while accelerating runtime execution from **540.0 ns -> 300.3 ns (1.80x speedup)**!

## 3. How the Pass Solves That Problem at a High Level

For each function in the module, `CpuStatePromotionPass` executes a 5-stage pipeline:
1. **Stage 2a — Intra-Block SSA Register Store-to-Load & Load-to-Load Forwarding**:
   - Within each basic block (between calls), maintains `avail_ssa[arch_reg]` tracking the SSA value of the most recent `CpuRegWrite(r)` or `CpuRegRead(r)`.
   - Rewrites any subsequent `CpuRegRead(r)` in the same call-free segment directly to `%dst = add i64/i128 0, <avail_ssa[r]>` (`OpTag::RawIR`), completely removing the memory load from `ptr %c` and exposing earlier overwritten `CpuRegWrite(r)`s as having zero reads!
2. **Stage 2b — CFG-Wide Backward Liveness Dead-Store Elimination (`live_in` / `live_out`)**:
   - Builds the function's CFG (`succs`, `preds`) and computes `block_gen` and `block_kill` for all 96 architectural registers (`X0..X30`, `SP`, `NZCV`, `V0..V31`).
   - Solves backward liveness across basic blocks (`live_out[u] = union_{s in succs[u]} live_in[s]`) to a fixpoint and marks `dead = true` on every `CpuRegWrite` whose register is overwritten along all successor paths before being read or reaching a call/return.
3. **Stage 3 — Upward-Exposed Entry-Kill Analysis (`scan_entry_kills`)**:
   - Identifies registers unconditionally overwritten in `entry` / `L_<entry_pc>` before any read, branch, or call so they are never loaded from `Cpu* %c` on function entry.
4. **Stage 4 — Adaptive Register-Pressure-Aware Promotion for Multi-Call Functions (`full_call_count >= 1 && all_regs.size() > 8`)**:
   - Instead of promoting all 20+ registers across calls (which overflows x86-64's 5 available callee-saved GPRs), promotes **at most 3 (`<= 3`) highest-reuse AAPCS64 call-invariant registers**—prioritizing `SP` (`31`) and `X29` (`29`) plus at most 1 high-reuse callee-saved register (`X19..X28` with `rd - wr >= 12`)—using write-through `%loc_*` allocas (`store` to both `ptr %c` and `%loc_r` on write, pure SSA `load` from `%loc_r` across all calls with zero post-call reloads!).
   - Leaves caller-saved / high-churn registers as Stage-2a/2b-pruned `!alias.scope !3, !noalias !4` accesses on `ptr %c` (`%rbx`), allowing LLVM's `GVN`, `EarlyCSE`, `LICM`, and `DSE` to keep values in caller-saved host registers between calls without spilling onto `%rsp`.
5. **Stage 5 — Full `%loc_*` Alloca Promotion for Call-Free & Low-Pressure Functions (`f_80077d084`)**:
   - Promotes all touched registers to `%loc_*` allocas in `entry`, loads non-killed registers on entry, and flushes written registers only at `ret void` (resulting in 245 x86-64 instructions, **0 `(%rsp)` spills**, and **only 14 `Cpu*` memory ops** across the entire 150-instruction red-black tree rebalance function `f_80077d084`!).

## 4. Detailed Technical Implementation Details

- **Synergy Between Stage 2a (Intra-Block SSA Forwarding) and Stage 2b (CFG-Wide Backward DSE)**: In `main_432`, basic blocks frequently compute address or key expressions through scratch registers (`ldur x16, [x29, #-64]; rev x16, x16; cmp x16, x17; b.ne ...`). Without Stage 2a, the read of `X16` in `rev x16, x16` prevented Stage 2b from deleting the store to `X16` in `ldur x16, [x29, #-64]`. Stage 2a forwards `%gml784` directly into `@llvm.bswap.i64(i64 %gml784)` and removes the `CpuRegRead(16)`, allowing Stage 2b to immediately delete the overwritten `CpuRegWrite(16)`! Together, Stages 2a and 2b eliminate **943 `Cpu*` load/store operations** and **1,715 lines of LLVM IR** in `main_432.ll`.
- **Preventing Callee-Saved Host Register Starvation (`<= 3` Cross-Call Allocas)**: On x86-64 System V ABI, `%rbx` holds `ptr %c`, leaving 5 callee-saved GPRs (`%rbp`, `%r12`, `%r13`, `%r14`, `%r15`). Capping cross-call `call_inv_regs` at `<= 3` (`SP`, `X29`, and the top callee-saved register) leaves 2 callee-saved host registers free for LLVM's `LICM` and Greedy Register Allocator to hold loop-invariant pointers/values across calls, cutting `(%rsp)` spills in `main_432` down to `80` (`0` in `f_80077bc00`, `0` in `f_80077c0e4`, `0` in `f_80077d084`).

## 5. End-to-End Walkthrough of Representative `llvm::ir` Snippets

### Input AArch64 Sequence (`L_80077c47c` in `f_80077c180`)
```arm64
0x80077c47c: f85c03b0    ldur x16, [x29, #-64]
0x80077c480: dac00e10    rev  x16, x16
0x80077c484: f9400df1    ldr  x17, [x15, #24]
0x80077c488: dac00e31    rev  x17, x17
0x80077c48c: eb11021f    cmp  x16, x17
0x80077c490: 54000401    b.ne 0x80077c510
```

### Lifted LLVM IR Before Upgraded `CpuStatePromotionPass`
```llvm
L_80077c47c:
  %r781.p = getelementptr inbounds i8, ptr %c, i64 232
  %r781 = load i64, ptr %r781.p, align 8, !alias.scope !3, !noalias !4
  %t782 = add i64 %r781, -64
  %gmp783 = inttoptr i64 %t782 to ptr
  %gml784 = load i64, ptr %gmp783, align 8, !alias.scope !6, !noalias !3
  %wp785 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %gml784, ptr %wp785, align 8, !alias.scope !3, !noalias !4   ; dead store to X16!
  %r786.p = getelementptr inbounds i8, ptr %c, i64 128
  %r786 = load i64, ptr %r786.p, align 8, !alias.scope !3, !noalias !4   ; redundant load of X16!
  %bsw787 = call i64 @llvm.bswap.i64(i64 %r786)
  %wp788 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %bsw787, ptr %wp788, align 8, !alias.scope !3, !noalias !4
```

### Lowered LLVM IR After Upgraded `CpuStatePromotionPass`
```llvm
L_80077c47c:
  %r781 = load i64, ptr %loc_x29, align 8
  %t782 = add i64 %r781, -64
  %gmp783 = inttoptr i64 %t782 to ptr
  %gml784 = load i64, ptr %gmp783, align 8, !alias.scope !6, !noalias !3
  ; (dead store %wp785 to X16 eliminated by Stage 2b!)
  %r786 = add i64 0, %gml784                                             ; Stage 2a SSA forward!
  %bsw787 = call i64 @llvm.bswap.i64(i64 %r786)
  %wp788 = getelementptr inbounds i8, ptr %c, i64 128
  store i64 %bsw787, ptr %wp788, align 8, !alias.scope !3, !noalias !4
```

## 6. Other Passes That Rely On or Interact With This Pass

- **All Upstream Passes (Passes 1–20)**: Remove synthetic entry hooks (Pass 2), inline runtime helpers (Passes 4–7), upgrade stack alignment (Pass 11), fold constants (Pass 12), and eliminate `NZCV` flag writes (Passes 15–17) so Pass 21 sees minimal live registers and clean CFGs.
- **`CrossChunkLeafInlinePass` (Pass 22) & `AArch64StaticNCEABIPass` (Pass 23, Downstream)**: Run after Pass 21 on the promoted IR.

6. **Stage 6 — Intra-Block SSA Copy Propagation, Typed Cast Round-Trip/CSE Folding & Multi-Pass Dead Pure SSA Elimination (`optimize_ssa_and_dce`) + Precise Helper Register Effects (`classify_helper_reg_effects`)**:
   - Decodes exact `V`-register read/write bitsets for remaining `@rt_*` SIMD/FP helpers (`@rt_vec_fop`, `@rt_vec_frecpe`, `@rt_fp_op_s`, `@rt_fp_op_d`, `@rt_sl_ldr`, `@rt_sl_ldm`) so they do not act as full 96-register barriers during Stages 2a, 2b, 3, and 5.
   - Propagates Stage 2a and W-register identity copies (`add/or i32/i64/i128 0, %src`), folds round-trip vector/scalar casts (`<4 x float> <-> i128`, `float <-> i32`, `double <-> i64`, `i32/i64 <-> i128`, `i32 <-> i64`), deduplicates intra-block `bitcast`/`trunc`/`shufflevector`/`extractelement` expressions, and runs multi-pass dead pure SSA instruction elimination.
   - Together with the jump-table bounds fix in `nso_loader.cpp`, this reduced `f_80154bac0_postpass.ll` (`main_899.ll`) from **182,529 lines to 88,915 lines (-51.3%)** and `main_899_amd64.asm` from **128,531 x86-64 instructions (42,214 `%rsp` spills) to 24,175 x86-64 instructions (916 `%rsp` spills)**.
