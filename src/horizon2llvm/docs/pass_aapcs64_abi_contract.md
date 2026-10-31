# Pass 20: `AAPCS64ABIContractPass` (`aapcs64-abi-contract-pass`)

- **Implementation File**: `src/horizon2llvm/pass_aapcs64_abi_contract.cpp`
- **Header Declaration**: `src/horizon2llvm/passes.hpp` (`ultrs::passes::AAPCS64ABIContractPass`)
- **Pipeline Stage**: Stage IV — ABI Devirtualization, Register Promotion & Cross-Chunk Inlining (Pass 20 of 23)
- **Default Tier**: Tier 2 (Opt-in via `--all-passes` or `--enable-pass aapcs64-abi`)

## 1. What Problem It Is Solving

Without accurate interprocedural register summaries, `CpuStatePromotionPass` (Pass 21) and pre-call dead-store elimination must conservatively assume that every intra-module function call (`call void @f_<target>(ptr %c)`) reads and modifies every architectural register touched anywhere in the callee.

Previously, `AAPCS64ABIContractPass` had two precision limitations:
1. **Non-Upward-Exposed `summary_reads`**: It added `inst.arch_reg` to `fn->summary_reads` whenever `CpuRegRead(r)` appeared anywhere in `fn`, even if `fn` **unconditionally overwrote `r` before reading it**! For example, in `main_432`, the leaf helper `f_80077d084` uses `X8..X14` as local scratch registers (writing each of `X8..X14` before reading it) and only reads `X0, X1, X2` from its caller. The naive scan falsely included `X8..X14` in `f_80077d084->summary_reads`.
2. **Single-Block Post-Call Liveness**: When checking if a caller's pre-call register write is dead after `call void @f_<target>(ptr %c)`, the pass only scanned instructions after the call within the *same* basic block. In `f_80077c180` (`0x80077cb50: bl 0x80077d084; b 0x80077cbc0`), the call is immediately followed by an unconditional branch to another block, so single-block post-call scanning saw zero post-call kills.

## 2. Why That Problem Is Important

- **Exact Upward-Exposed Callee Read Summaries (`live_in[0]`)**: A callee can only observe the caller's pre-call value of register `r` if there is an upward-exposed path from the callee's entry block to a `CpuRegRead(r)` without an intervening `CpuRegWrite(r)`. Computing `fn->summary_reads` via backward liveness dataflow (`live_in[0]` with `live_out[ret] = empty`) shrinks `f_80077d084->summary_reads` from `{0, 1, 2, 8, 9, 10, 11, 12, 13, 14}` to `{0, 1, 2}`!
- **CFG-Wide Post-Call Kill Detection**: Computing `live_out[bi]` across the caller's CFG allows `AAPCS64ABIContractPass` to eliminate dead pre-call register writes even when the `DirectCall` sits at the end of a basic block.

## 3. How the Pass Solves That Problem at a High Level

1. **Upward-Exposed Per-Function `summary_reads` via Backward Dataflow**:
   - For each function `fn`, builds the block-level CFG (`succs[bi]`) and computes `block_gen[bi]` (upward-exposed reads in `bi`) and `block_kill[bi]` (registers written in `bi`).
   - Solves backward liveness `live_in[u] = block_gen[u] | (live_out[u] & ~block_kill[u])` (where return blocks have `live_out = empty`, while unknown calls set `gen = all`) and sets `fn->summary_reads = live_in[0]`.
2. **Transitive Call-Graph Fixpoint Propagation**:
   - Propagates `summary_reads`, `summary_writes`, and `has_unknown_calls` across intra-module `DirectCall`s to convergence.
3. **CFG-Wide Pre-Call Dead Store Elimination**:
   - Computes CFG-wide liveness (`live_in`/`live_out`) in each caller function and computes `post_live` immediately after each `DirectCall`.
   - Eliminates any pre-call write to register `r` when `r` is not read before the call, `callee` does not read `r` (`!callee->summary_reads.count(r)`), and `r` is killed on all paths after the call (`!post_live.test(r)`).

## 4. Detailed Technical Implementation Details

- **Conservative External Call Handling**: External callees (`callee == nullptr`) are treated as reading and clobbering all registers unless `allow_external_scratch_elim_` is explicitly enabled, preserving full compatibility with compiler-outlined helpers across chunk boundaries.

## 5. End-to-End Walkthrough of Representative `llvm::ir` Snippets

### Intra-Module Call to `f_80077d084` in `f_80077c180` (`0x80077cb50`)
```arm64
; f_80077d084 only has upward-exposed reads of {X0, X1, X2} (X8..X14 are killed before read).
; In caller f_80077c180:
0x80077cb48: aa1303e0    mov x0, x19
0x80077cb4c: aa0803e1    mov x1, x8     ; last use of x8 before call
0x80077cb50: 9400014d    bl  0x80077d084
0x80077cb54: 1400001b    b   0x80077cbc0 ; L_80077cbc0 overwrites x8!
```

### Lowered Behavior After Upgraded `AAPCS64ABIContractPass`
Because `f_80077d084->summary_reads` is `{0, 1, 2}` (excluding `X8`) and `post_live` at `0x80077cb54` sees that successor `L_80077cbc0` overwrites `X8` before reading it, the pre-call write to `c->x[8]` before `call void @f_80077d084(ptr %c)` is proven dead and eliminated.

## 6. Other Passes That Rely On or Interact With This Pass

- **`ProfileGuidedEntryHookElimPass` (Pass 2, Upstream)**: Removes synthetic `X30` and `X0` reads from function entry blocks so `live_in[0]` reflects true upward-exposed reads.
- **`CpuStatePromotionPass` (Pass 21, Immediately Downstream)**: Consumes `fn->summary_reads` and `fn->summary_writes` for interprocedural flush/reload pruning.
