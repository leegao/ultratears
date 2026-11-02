# Pass 17: `NZCVDeadFlagElimPass` (`nzcv-dead-flag-elim-pass`)

- **Implementation File**: `src/horizon2llvm/lowering/pass_nzcv_dead_flag_elim.cpp`
- **Header Declaration**: `src/horizon2llvm/passes.hpp` (`ultrs::passes::NZCVDeadFlagElimPass`)
- **Pipeline Stage**: Stage III — Control-Flow, Indirect Dispatch & Integer/FP Flag Predicate Fusion (Pass 17 of 23)
- **Default Tier**: Tier 1 (Safe Local; enabled by default)

## 1. What Problem It Is Solving

After `NZCVPredicateFusionPass` (Pass 16) replaces `OpTag::CpuRegRead(32)` + `OpTag::CondEval` pairs with direct `icmp`/`fcmp` (and `select i1` for `CCMP`/`CCMN`) instructions, the `OpTag::FlagWrite` instructions—each carrying an 11-instruction `prefix_ir` bit-packing sequence `(N << 31) | (Z << 30) | (C << 29) | (V << 28)`—still remain at the end of every comparison basic block!

Previously, `NZCVDeadFlagElimPass` only performed a single-block backward sweep that initialized `flag_overwritten = false` at the end of each basic block. Because AArch64 comparisons (`CMP`, `SUBS`, `ADDS`, `ANDS`, `CCMP`) almost always sit right before a conditional branch (`B.cond`) at the **end** of a basic block, the single-block pass assumed `NZCV` might be read in a successor basic block and left **145 dead `NZCV` flag stores and ~1,600 bit-packing IR instructions** alive across `main_432.ll`!

## 2. Why That Problem Is Important

- **Eliminating 100% of Dead `NZCV` Stores Across Basic Blocks**: In `main_432.ll`, every single one of the 145 `OpTag::FlagWrite` instructions is fused with its branch/select consumer by Pass 16, and no successor basic block ever reads `NZCV` before overwriting it (or returning/calling an AAPCS64 function, where `NZCV` is caller-saved and volatile). Upgrading `NZCVDeadFlagElimPass` to a **full CFG-wide backward liveness dataflow analysis** eliminates **all 145 (100%) of the `NZCV` flag writes** in `main_432.ll`, shrinking `main_432.ll` by **2,526 IR lines** and reducing compiled x86-64 code size by **619 instructions**!

## 3. How the Pass Solves That Problem at a High Level

For each function in the module, `NZCVDeadFlagElimPass` executes a 4-step CFG-wide analysis:
1. **CFG Construction**: Builds successor edges (`succs[bi]`) for every basic block from `UncondBranch`, `CondBranch`, and `switch i64` terminators.
2. **Per-Block `gen_nzcv` / `kill_nzcv` Summary Extraction**:
   - Scans each basic block backward:
     - `OpTag::CpuRegRead(32)` sets `gen = true`.
     - `OpTag::FlagWrite` or `OpTag::CpuRegWrite(32)` sets `gen = false, kill = true`.
     - `DirectCall`, `IndirectCall`, `HorizonSvc`, and `Return` (`ret void`) act as `NZCV` kills (`gen = false, kill = true`) because `NZCV` is a caller-saved volatile condition register under the AAPCS64 ABI.
3. **Backward Fixpoint Dataflow (`live_in` / `live_out`)**:
   - Iterates to a fixpoint:
     - `live_out[u] = OR_{s in succs[u]} live_in[s]` (with `live_out[u] = false` on return blocks).
     - `live_in[u] = gen_nzcv[u] || (live_out[u] && !kill_nzcv[u])`.
4. **Dead `FlagWrite` Elimination & Orphaned `CCMP` Prefix Cleanup**:
   - Sweeps each basic block backward starting from `flag_live = live_out[bi]`. Any `FlagWrite` where `flag_live == false` has its `prefix_ir` bit-packing sequence stripped and is marked `dead = true` (or converted to a pure `RawIR` arithmetic def if `dst_reg` is used by `SUBS`/`ADDS`/`ANDS`).
   - Performs a backward dead-SSA-def sweep on blocks that contained a dead `CCMP`/`CCMN` (`ccmp_sel`) to remove orphaned inner `NZCV` bit-packing instructions.

## 4. Detailed Technical Implementation Details

- **Preserving Used SSA Operands in `CCMP`/`CCMN` Dead-SSA Cleanup**: When a dead `CCMP`/`CCMN` `FlagWrite` (`cmp_kind == 0`) is eliminated, the pass cleans up its preceding standalone flag-packing arithmetic and bitwise instructions. To ensure that 32-bit register truncation definitions (`%c... = trunc i64 to i32`), forwarded register copies (`%r... = add i64 0, ...`), and comparisons feeding fused `%ccmp_in` instructions are never erroneously eliminated, the pass performs a backward dead-SSA-def sweep: it tracks all downstream-used SSA tokens across the function and basic block in a `live_ssa` set, and only marks instructions dead if their `dst_reg` is unreferenced in `live_ssa`. Any live instruction keeps its inputs active in `live_ssa`, preventing undefined-value errors during subsequent LLVM compilation.
- **Preserving `SUBS`/`ADDS`/`ANDS` Arithmetic Results**: When a flag-setting instruction also writes a GPR result (e.g., `subs w8, w8, #1` or `ands x9, x9, #1`), the arithmetic computation (`%t = sub i32 %r, 1`) is stored in the first line of `inst.prefix_ir` (with `inst.dst_reg = "%t"`) or as a separate `RawIR` instruction prior to the `FlagWrite`. When `inst.dst_reg` is non-empty and `inst.prefix_ir` is non-empty, `NZCVDeadFlagElimPass` keeps the first line (`%t = sub ...`) as `OpTag::RawIR` and discards the remaining 11 `NZCV` bit-packing lines and the store to `c->nzcv`.

## 5. End-to-End Walkthrough of Representative `llvm::ir` Snippets

### Input Basic Block Ending in `CMP` + `B.NE` (`L_80077c47c` in `f_80077c180`)
```llvm
  ; @pc 0x80077c48c word 0xeb11021f (cmp x16, x17)
  %t799 = sub i64 %r797, %r798
  ; [11 prefix_ir instructions packing N, Z, C, V into %nzcv811]
  store i64 %nzcv_zext812, ptr %wp813, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077c490 word 0x54000401 (b.ne L_80077c510)
  %cond820 = icmp ne i64 %r797, %r798
  br i1 %cond820, label %L_80077c510, label %L_80077c494
```
Both successor blocks (`L_80077c510` and `L_80077c494`) execute a new `cmp x16, x17` (`FlagWrite`) before reading `NZCV`, so `live_out[L_80077c47c] == false`.

### Lowered LLVM IR After CFG-Wide `NZCVDeadFlagElimPass`
```llvm
  ; @pc 0x80077c48c word 0xeb11021f
  %t799 = sub i64 %r797, %r798
  ; (All 11 NZCV packing instructions and store to c->nzcv eliminated across block boundary!)
  ; @pc 0x80077c490 word 0x54000401
  ; [NZCVPredicateFusionPass] fused NZCV condition -> direct icmp
  %cond820 = icmp ne i64 %r797, %r798
  br i1 %cond820, label %L_80077c510, label %L_80077c494
```

## 6. Other Passes That Rely On or Interact With This Pass

- **`FCMPPredicateFusionPass` (Pass 15) & `NZCVPredicateFusionPass` (Pass 16, Upstream)**: Fuse `CondEval` flag consumers into direct `icmp`/`fcmp` instructions so `gen_nzcv[bb]` becomes `false` across all basic blocks of `main_432`.
- **`CpuStatePromotionPass` (Pass 21, Downstream)**: Because Pass 17 eliminates 100% of `arch_reg == 32` reads and writes, Pass 21 never allocates `%loc_nzcv` or flushes `c->nzcv` before calls.
