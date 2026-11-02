# Pass 22: `CrossChunkLeafInlinePass` (`cross-chunk-leaf-inline-pass`)

- **Implementation File**: `src/horizon2llvm/lowering/pass_cross_chunk_leaf_inline.cpp`
- **Header Declaration**: `src/horizon2llvm/passes.hpp` (`ultrs::passes::CrossChunkLeafInlinePass`)
- **Pipeline Stage**: Stage IV — ABI Devirtualization, Register Promotion & Cross-Chunk Inlining (Pass 22 of 23)
- **Default Tier**: Tier 2 (Opt-in via `--all-passes` or `--enable-pass cross-chunk-leaf-inline`)

## 1. What Problem It Is Solving

To compile a 228,263-function NSO binary (`data/exefs/main`) in parallel without exhausting host RAM, `horizon2llvm` partitions the `.text` segment into 256 independent LLVM IR modules (`main_000.ll` .. `main_255.ll`).

However, partitioning into 256 translation units means that when a function in `main_042.ll` calls a 3-instruction C++ getter `@f_80000f3bc(ptr %c)` defined in `main_001.ll`, `@f_80000f3bc` is an `external` symbol in `main_042.ll`! Without LTO across all 256 chunks, LLVM cannot inline `@f_80000f3bc` into `main_042.ll`, forcing a cross-object function call and full `Cpu* %c` register flush/reload for a 3-instruction getter.

## 2. Why That Problem Is Important

- **Zero-Overhead Cross-Chunk Inlining Without Monolithic LTO**: By pre-scanning the NSO for tiny pure single-block leaf functions (`<= 12` instructions, no calls/branches, ending in `RET 0xD65F03C0`) via `CrossChunkLeafInlinePass::collect_nso_leaves()` and synthesizing an `internal ... alwaysinline` definition `@f_<pc>_inline(ptr %c)` directly inside any chunk that calls it, LLVM's inliner + `SROA` inlines the leaf function into the caller and eliminates all `Cpu* %c` store/load traffic between the caller and the leaf!
- **Intra-Chunk Leaf Inlining**: Also rewrites intra-chunk `DirectCall`s to local leaf functions to target an `internal alwaysinline` clone `@f_<pc>_inline(ptr %c)`.

## 3. How the Pass Solves That Problem at a High Level

1. **Global Leaf Catalog (`collect_nso_leaves`)**: Before chunk lifting starts, `collect_nso_leaves` scans all functions in the NSO in O(N) time and records `LeafFunctionSlice` (`entry_pc`, `end_pc`, `words`) for every non-HLE, call-free, branch-free single-block function of `<= max_leaf_words` (`12`) instructions ending in `RET` (`0xD65F03C0`).
2. **Call-Site Rewriting**: Scans each non-clone function in module `M` for `OpTag::DirectCall` instructions targeting either a local leaf (`local_leaf_pcs`) or an external leaf (`global_leaves_`), rewriting the call to `call void @f_<target>_inline(ptr %c)`.
3. **`internal alwaysinline` Synthesis**:
   - For local leaves, clones the already-promoted `Function` into `@f_<target>_inline` with `linkage = "internal"`, `is_inline_clone = true`.
   - For cross-chunk leaves in `needed_external_leaves`, lifts the `LeafFunctionSlice::words` in a temporary module `temp_mod`, runs the safe intra-function optimization passes (`Passes 2, 4, 5, 7, 9, 11, 12, 15, 16, 17, 21`) on `temp_mod`, detaches `temp_mod`'s LLVM context pointers, and moves the resulting `@f_<target>_inline` functions into `M.functions`.

## 4. Detailed Technical Implementation Details

- **Clean Cross-Module Transfer**: When moving lifted `@f_<target>_inline` `Function` objects from `temp_mod` into `M`, `CrossChunkLeafInlinePass` clears `lfn->ssa_values`, `lfn->synthetic_ssa_vals`, `lfn->llvm_fn`, and per-block/per-instruction `llvm_bb`/`llvm_inst` pointers while `temp_mod.llvm_ctx` is still alive, and sets `lfn->parent_mod = &M`, preventing any dangling `LLVMContext` references when `temp_mod` is destroyed.
- **`alwaysinline nounwind` Attribute Emission**: In `Module::serialize()`, any function with `fn->is_inline_clone == true` is emitted with `define internal void @f_<pc>_inline(ptr noalias nocapture noundef align 16 dereferenceable(1040) %c) alwaysinline nounwind`.

## 5. End-to-End Walkthrough of Representative `llvm::ir` Snippets

### Input Caller (`0x80000f3b0` in Chunk A) Calling Leaf (`0x80000f3bc` in Chunk B)
```arm64
; Caller f_80000f3b0:
0x80000f3b0: 94000003    bl  0x80000f3bc
0x80000f3b4: 91000400    add x0, x0, #1
0x80000f3b8: d65f03c0    ret
```

### Lowered LLVM IR After `CrossChunkLeafInlinePass`
```llvm
define dso_local void @f_80000f3b0(ptr noalias nocapture noundef align 16 dereferenceable(1040) %c) local_unnamed_addr #0 {
  ...
  ; [CrossChunkLeafInlinePass] inlined cross-chunk leaf call
  call void @f_80000f3bc_inline(ptr %c)
  ...
}

define internal void @f_80000f3bc_inline(ptr noalias nocapture noundef align 16 dereferenceable(1040) %c) alwaysinline nounwind {
entry:
  %loc_x0 = alloca i64, align 8
  %loc_x8 = alloca i64, align 8
  ...
  ret void
}
```

## 6. Other Passes That Rely On or Interact With This Pass

- **`CpuStatePromotionPass` (Pass 21, Upstream)**: Runs before Pass 22 so both caller and `@f_<pc>_inline` use `!alias.scope !3` on `Cpu* %c` loads/stores. When LLVM's `-O2` inliner inlines `@f_<pc>_inline(ptr %c)` into `@f_80000f3b0(ptr %c)`, LLVM's `GVN` and `DSE` forward the caller's pre-call `store` to `%c` directly into the callee's entry `load` from `%c` and delete the dead stores!
