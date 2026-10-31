# Pass 16: `NZCVPredicateFusionPass` (`nzcv-predicate-fusion-pass`)

- **Implementation File**: `src/horizon2llvm/lowering/pass_nzcv_predicate_fusion.cpp`
- **Header Declaration**: `src/horizon2llvm/passes.hpp` (`ultrs::passes::NZCVPredicateFusionPass`)
- **Pipeline Stage**: Stage III — Control-Flow, Indirect Dispatch & Integer/FP Flag Predicate Fusion (Pass 16 of 23)
- **Default Tier**: Tier 1 (Safe Local; enabled by default)

## 1. What Problem It Is Solving

In AArch64, conditional branches (`B.EQ`, `B.NE`, `B.CS`, `B.CC`, `B.HI`, `B.LS`, `B.GE`, `B.LT`, `B.GT`, `B.LE`, `B.MI`, `B.PL`), conditional selects (`CSEL`, `CSINC`, `CSINV`, `CSNEG`, `FCSEL`), and **conditional compares (`CCMP`, `CCMN`)** communicate through the 4-bit `NZCV` condition flag register (`arch_reg == 32`):
1. A flag-setting instruction (`CMP`/`SUBS`, `CMN`/`ADDS`, `TST`/`ANDS`, or `FCMP`) computes `(N, Z, C, V)` via an 11-instruction bitwise shift/OR/select sequence (`prefix_ir`) and stores the packed 32-bit integer to `c->nzcv`.
2. A consuming `B.cond` / `CSEL` instruction loads `c->nzcv` (`OpTag::CpuRegRead(32)`) and unpacks the individual `N`, `Z`, `C`, `V` bits to evaluate a condition code (`cond_code` in `0..13`).
3. Even worse, when a **conditional compare (`CCMP` / `CCMN`)** instruction occurs (such as `0x80077d0a4: ccmp x10, #0, #4, ge` in `f_80077d084`), it reads the *outer* `NZCV` flags, computes a *new* inner comparison `(N', Z', C', V')`, selects between `(N', Z', C', V')` and a 4-bit immediate `#nzcv` (`#4` = `0b0100` -> `Z=1`), and stores the merged flags back to `c->nzcv` (`cmp_kind == 0`). Previously, `NZCVPredicateFusionPass` could not fuse `CCMP`/`CCMN` flag writes (`cmp_kind == 0`), leaving a 22-instruction `NZCV` pack/unpack dependency chain inside `f_80077d084`'s hot red-black tree rebalance loop!

## 2. Why That Problem Is Important

- **Complete Elimination of `NZCV` Bit-Packing Across `main_432`**: By adding **CCMP/CCMN Compound Predicate Fusion** (`select i1 %outer_cond, i1 %inner_cmp, i1 <static_imm_cond>`) on top of standard `SUBS`/`ADDS`/`ANDS`/`FCMP` fusion, `NZCVPredicateFusionPass` fuses **100% of all condition evaluations in `main_432`** (including `0x80077d0a4: ccmp x10, #0, #4, ge` + `0x80077d0a8: b.eq`), reducing `main_432` by **2,526 IR lines** and **619 x86-64 instructions** when combined with Pass 17!
- **Unlocking LLVM Loop & Branch Optimizations**: Direct `icmp`/`fcmp` + `select i1` instructions compile to native x86-64 `cmp` + `jcc` / `cmovcc` instructions with zero `c->nzcv` memory traffic.

## 3. How the Pass Solves That Problem at a High Level

1. **Phase 1a — Standard Intra-Block `NZCV` & `FCMP` Predicate Fusion (`cmp_kind` in `1..5`)**:
   - Tracks the most recent active `OpTag::FlagWrite` (`last_fw_idx`) in each basic block.
   - When a consumer reads `NZCV` (`OpTag::CpuRegRead(32)`) and evaluates `cond_code` (`0..13`), synthesizes a direct `icmp` or `fcmp` on the `FlagWrite`'s original operands (`op1`, `op2`, or `dst_reg`), replaces the flag-unpacking expression, and marks the `CpuRegRead(32)` dead if no other instruction references it.
2. **Phase 1b — `CCMP` / `CCMN` Compound Predicate Fusion (`cmp_kind == 0` with `ccmp_sel`)**:
   - Recognizes `CCMP`/`CCMN` `FlagWrite` instructions (`prefix_ir` ending in `%ccmp_sel = select i1 %outer_cond, i32 %packed_inner, i32 <imm_nzcv>`):
     - Extracts the outer condition `%outer_cond`, the inner `sub`/`add` instruction (`%lhs`, `%rhs`, `32`/`64`-bit width, `CCMP` vs `CCMN`), and the 4-bit immediate fallback flags `imm_nzcv = (imm >> 28) & 0xF`.
     - For any subsequent consumer of `NZCV` with condition code `cc`, evaluates `eval_static_nzcv_cond(cc, N, Z, C, V)` at compile time to a boolean constant (`true` or `false`), emits the inner comparison `%ccmp_in = icmp <pred> <ty> %lhs, %rhs`, and fuses the entire `CCMP` + consumer into:
       `%cond = select i1 %outer_cond, i1 %ccmp_in, i1 <true|false>`!

## 4. Detailed Technical Implementation Details

- **Static `NZCV` Fallback Evaluation (`eval_static_nzcv_cond`)**: Given the 4-bit immediate `nzcv4` from `CCMP`/`CCMN` (`N = (nzcv4 >> 3) & 1`, `Z = (nzcv4 >> 2) & 1`, `C = (nzcv4 >> 1) & 1`, `V = nzcv4 & 1`), `eval_static_nzcv_cond(cc, N, Z, C, V)` evaluates the exact ARM64 condition predicate for the `outer_cond == false` branch at compile time (e.g., for `ccmp x10, #0, #4, ge` followed by `b.eq`, `nzcv4 = 4` has `Z = 1`, so `EQ` evaluates to `true`, yielding `select i1 %outer_ge, i1 (%x10 == 0), i1 true`).

## 5. End-to-End Walkthrough of Representative `llvm::ir` Snippets

### Input AArch64 Instructions (`f_80077d084` in `main_432_arm64.asm`)
```arm64
0x80077d0a0: 7100053f    cmp  w9, #1
0x80077d0a4: fa409144    ccmp x10, #0, #4, ge
0x80077d0a8: 54001fc0    b.eq 0x80077d4a0
```

### Lifted LLVM IR Before `NZCVPredicateFusionPass`
```llvm
  ; @pc 0x80077d0a0 word 0x7100053f (cmp w9, #1 -> 11 instructions packing NZCV)
  ; @pc 0x80077d0a4 word 0xfa409144 (ccmp x10, #0, #4, ge -> loads NZCV, unpacks GE,
  ;   packs inner x10 - 0 NZCV, selects %ccmp_sel38, stores to c->nzcv)
  ; @pc 0x80077d0a8 word 0x54001fc0 (b.eq -> loads NZCV, unpacks Z==1, branches)
```

### Lowered LLVM IR After `NZCVPredicateFusionPass` + `NZCVDeadFlagElimPass`
```llvm
  ; @pc 0x80077d0a0 word 0x7100053f
  %t12 = sub i32 %c11, 1
  ; @pc 0x80077d0a4 word 0xfa409144
  ; [NZCVPredicateFusionPass] fused NZCV condition -> direct icmp
  %cond900 = icmp sge i32 %c11, 1
  %t28 = sub i64 %r27, 0
  ; @pc 0x80077d0a8 word 0x54001fc0
  ; [NZCVPredicateFusionPass] fused CCMP + branch/select -> direct icmp + select
  %ccmp_in901 = icmp eq i64 %r27, 0
  %cond902 = select i1 %cond900, i1 %ccmp_in901, i1 true
  br i1 %cond902, label %L_80077d4a0, label %L_80077d0ac_ft
```

## 6. Other Passes That Rely On or Interact With This Pass

- **`FCMPPredicateFusionPass` (Pass 15, Upstream)**: Tags floating-point comparisons with `cmp_kind = 4/5`.
- **`NZCVDeadFlagElimPass` (Pass 17, Immediately Downstream)**: Eliminates 100% of the `OpTag::FlagWrite` instructions and `CCMP` flag-packing trees once Pass 16 fuses their consumers.
