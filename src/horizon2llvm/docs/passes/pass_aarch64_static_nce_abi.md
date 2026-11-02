# Pass 23: `AArch64StaticNCEABIPass` (`aarch64-static-nce-abi-pass`)

- **Implementation File**: `src/horizon2llvm/pass_aarch64_static_nce_abi.cpp`
- **Header Declaration**: `src/horizon2llvm/passes.hpp` (`ultrs::passes::AArch64StaticNCEABIPass`)
- **Pipeline Stage**: Stage IV — ABI Devirtualization, Register Promotion & Cross-Chunk Inlining (Pass 23 of 23)
- **Default Tier**: Tier 2 (Opt-in via `--aarch64-nce-abi` or `--enable-pass static-nce-abi`)

## 1. What Problem It Is Solving

In standard static recompilation, every lifted function has the uniform context-pointer signature `void @f_<pc>(ptr %c)` where guest registers `X0`..`X7` and `SP` are passed in memory inside `Cpu* %c`. When running on an AArch64 host (or when calling hot ABI-compliant functions from native host bridges), passing arguments via memory in `Cpu* %c` instead of native hardware registers (`x0`..`x7`, `sp`) adds memory store/load latency at function boundaries.

## 2. Why That Problem Is Important

- **Hardware-Register Argument & Return Passing (`_nce` Entry Points)**: By synthesizing a companion `alwaysinline` wrapper `@f_<pc>_nce(ptr %c, i64 %x0_in, ..., i64 %x7_in, i64 %sp_in) -> { i64, i64 }`, callers using the Static NCE ABI can pass the 8 AAPCS64 integer argument registers (`X0`..`X7`) and guest stack pointer (`SP`) directly in host hardware registers and receive `{ X0, X1 }` directly as an aggregate register return value!
- **Full Backward Compatibility with `@rt_dispatch`**: Keeping the canonical `void @f_<pc>(ptr %c)` function intact alongside `@f_<pc>_nce` guarantees that indirect calls (`BLR`) and global dispatch tables (`@rt_dispatch`) continue to work with zero ABI mismatches.

## 3. How the Pass Solves That Problem at a High Level

For each AAPCS64-compliant, non-clone, non-HLE function `fn` in `M.functions` (when `enabled_ == true`):
1. Synthesizes an `alwaysinline nounwind` companion function definition `@<fn->name>_nce`:
   ```llvm
   define dso_local { i64, i64 } @f_<pc>_nce(
       ptr noalias nocapture noundef align 16 dereferenceable(1040) %c,
       i64 %x0_in, i64 %x1_in, i64 %x2_in, i64 %x3_in,
       i64 %x4_in, i64 %x5_in, i64 %x6_in, i64 %x7_in, i64 %sp_in) local_unnamed_addr #0
   ```
2. **Summary-Driven Entry Sync**: Only stores `%x{i}_in` (`i = 0..7`) into `c->x[i]` if `fn->summary_reads.count(i) || fn->has_unknown_calls`, and only stores `%sp_in` into `c->sp` (offset `248`) if `fn->summary_reads.count(31) || fn->has_unknown_calls`.
3. **Underlying Call & Register Return**: Calls `call void @<fn->name>(ptr %c)` (which LLVM inlines into `@f_<pc>_nce`, forwarding the register arguments directly into `%loc_x0`..`%loc_x7`), loads `%x0_out` and `%x1_out` (or returns `%x0_in`/`%x1_in` directly if unmodified by `fn`), packs them via `insertvalue { i64, i64 }`, and returns `{ i64, i64 }`.

## 4. Detailed Technical Implementation Details

- **Summary-Pruned Argument Sync**: Because `AAPCS64ABIContractPass` (Pass 20) has already computed `fn->summary_reads` and `fn->summary_writes`, `@f_<pc>_nce` avoids writing unused `%x{i}_in` parameters into `Cpu* %c`. And if `fn` never modifies `X1` (`!fn->summary_writes.count(1) && !fn->has_unknown_calls`), `@f_<pc>_nce` packs `%x1_in` directly into the second return slot without loading `c->x[1]`.
- **`M.extra_raw_functions` Registration**: Appends the synthesized `@f_<pc>_nce` definition to `M.extra_raw_functions`, which `Module::serialize()` emits after all primary function definitions and `Module::sync_llvm_module()` parses into the `llvm::Module`.

## 5. End-to-End Walkthrough of Representative `llvm::ir` Snippets

### Synthesized `@f_80000f3b0_nce` Companion Function
```llvm
; [AArch64StaticNCEABIPass] hardware-register NCE ABI entry point for @f_80000f3b0
define dso_local { i64, i64 } @f_80000f3b0_nce(ptr noalias nocapture noundef align 16 dereferenceable(1040) %c, i64 %x0_in, i64 %x1_in, i64 %x2_in, i64 %x3_in, i64 %x4_in, i64 %x5_in, i64 %x6_in, i64 %x7_in, i64 %sp_in) local_unnamed_addr #0 {
entry:
  %nce_in_x0 = getelementptr inbounds i8, ptr %c, i64 0
  store i64 %x0_in, ptr %nce_in_x0, align 8, !alias.scope !3, !noalias !4
  call void @f_80000f3b0(ptr %c)
  %nce_out_x0.p = getelementptr inbounds i8, ptr %c, i64 0
  %nce_out_x0 = load i64, ptr %nce_out_x0.p, align 8, !alias.scope !3, !noalias !4
  %nce_rv0 = insertvalue { i64, i64 } poison, i64 %nce_out_x0, 0
  %nce_rv1 = insertvalue { i64, i64 } %nce_rv0, i64 %x1_in, 1
  ret { i64, i64 } %nce_rv1
}
```

## 6. Other Passes That Rely On or Interact With This Pass

- **`AAPCS64ABIContractPass` (Pass 20, Upstream)**: Populates `fn->summary_reads`, `fn->summary_writes`, and `fn->has_unknown_calls`, which Pass 23 uses to elide unused parameter stores and unmodified return register reloads.
- **`CpuStatePromotionPass` (Pass 21, Upstream)**: Ensures all `Cpu* %c` accesses inside `@f_<pc>` carry `!alias.scope !3, !noalias !4` so LLVM's inliner and `GVN` eliminate the `Cpu* %c` round-trip when `@f_<pc>` is inlined into `@f_<pc>_nce`.
