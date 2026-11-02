# Pass 14: `ShadowDispatchTablePass` (`shadow-dispatch-table-pass`)

- **Implementation File**: `src/horizon2llvm/lowering/pass_shadow_dispatch_table.cpp`
- **Header Declaration**: `src/horizon2llvm/passes.hpp` (`ultrs::passes::ShadowDispatchTablePass`)
- **Pipeline Stage**: Stage III — Control-Flow, Indirect Dispatch & Integer/FP Flag Predicate Fusion (Pass 14 of 23)
- **Default Tier**: Tier 1 (Safe Local; enabled by default)

## 1. What Problem It Is Solving

C++ games like TOTK make heavy use of dynamic virtual method calls and callback functors (`BLR Xn`, lifted as `OpTag::IndirectCall`) where the target function pointer is loaded from a runtime heap object's vtable (`LDR X8, [X0]; LDR X8, [X8, #0x18]; BLR X8`) and therefore cannot be statically devirtualized by `NsoRodataConstPropAndDevirtPass` (Pass 3).

In the baseline lifter, every `BLR Xn` stores `%target_pc` into `c->pc` and calls `@rt_dispatch(ptr %c)` in `src/runtime/dispatch.c`, which performs an external C call and a global hash-table / binary search lookup on every single virtual call.

## 2. Why That Problem Is Important

- **Performance of Polymorphic C++ Virtual Calls**: In TOTK's actor, AI, and physics systems, indirect `BLR` calls occur millions of times per frame. Performing an inline, direct-mapped 64K-entry shadow cache lookup (`@g_icache_pc` and `@g_icache_fn`, indexed by `(target_pc >> 2) & 65535`) with a branchless `select i1 %hit, ptr %cached_fn, ptr @rt_dispatch` resolves >98% of indirect calls in 4 inline x86-64 instructions without entering `@rt_dispatch`!
- **Branchless Speculative Execution**: Using LLVM's `select i1 %hit, ptr %fn_ptr, ptr @rt_dispatch` followed by `call void %callee(ptr %c)` avoids introducing an extra basic block split at every `BLR` site and lets the host CPU's indirect branch target predictor (BTB) predict the target host function directly at that specific call site PC!

## 3. How the Pass Solves That Problem at a High Level

For every remaining `OpTag::IndirectCall` (`BLR Xn`) where `inst.op0.repr` holds the target guest PC SSA register:
1. Stores `%target_pc` into `c->pc` (`GEP %c, 256` + `store i64 %target_pc`).
2. Computes the 16-bit direct-mapped shadow cache index:
   - `%sh = lshr i64 %target_pc, 2` (since all AArch64 instructions are 4-byte aligned).
   - `%idx = and i64 %sh, 65535`.
3. Probes `@g_icache_pc = external dso_local local_unnamed_addr global [65536 x i64]` and `@g_icache_fn = external dso_local local_unnamed_addr global [65536 x ptr]`:
   - Loads `%cached_pc = load i64, ptr %pcp, align 8`.
   - Loads `%cached_fn = load ptr, ptr %fnp, align 8`.
   - Compares `%hit = icmp eq i64 %cached_pc, %target_pc`.
4. Selects `%callee = select i1 %hit, ptr %cached_fn, ptr @rt_dispatch` and emits `call void %callee(ptr %c)` (which populates `@g_icache_pc[%idx]` and `@g_icache_fn[%idx]` on a cache miss inside `@rt_dispatch`).

## 4. Detailed Technical Implementation Details

- **`PassLLVMBuilder` Array GEP Construction**: Uses `PassLLVMBuilder::gep_inbounds("[65536 x i64]", "@g_icache_pc", {"i64 0", "i64 " + idx})` and `PassLLVMBuilder::gep_inbounds("[65536 x ptr]", "@g_icache_fn", {"i64 0", "i64 " + idx})` (`llvm::IRBuilder::CreateInBoundsGEP` on `llvm::ArrayType::get(i64/ptr, 65536)`).
- **Preserving `OpTag::IndirectCall`**: The transformed instruction retains `inst.tag = OpTag::IndirectCall` so downstream passes (`AAPCS64ABIContractPass` Pass 20 and `CpuStatePromotionPass` Pass 21) continue to treat the instruction as an unknown indirect call barrier that flushes/reloads `Cpu* %c`.

## 5. End-to-End Walkthrough of Representative `llvm::ir` Snippets

### Input AArch64 Instruction
```arm64
0x800100004: d63f0100    blr x8
```

### Lifted LLVM IR Before `ShadowDispatchTablePass`
```llvm
  ; @pc 0x800100004 (word=0xd63f0100)
  %pc.p = getelementptr inbounds i8, ptr %c, i64 256
  store i64 %r1, ptr %pc.p, align 8, !alias.scope !3, !noalias !4
  call void @rt_dispatch(ptr %c)
```

### Lowered LLVM IR After `ShadowDispatchTablePass`
```llvm
  ; @pc 0x800100004 (word=0xd63f0100)
  ; [ShadowDispatchTablePass] inline O(1) direct-mapped ICACHE lookup
  %ic_pc2 = getelementptr inbounds i8, ptr %c, i64 256
  store i64 %r1, ptr %ic_pc2, align 8, !alias.scope !3, !noalias !4
  %ic_sh3 = lshr i64 %r1, 2
  %ic_idx4 = and i64 %ic_sh3, 65535
  %ic_pcp5 = getelementptr inbounds [65536 x i64], ptr @g_icache_pc, i64 0, i64 %ic_idx4
  %ic_tag6 = load i64, ptr %ic_pcp5, align 8
  %ic_fnp7 = getelementptr inbounds [65536 x ptr], ptr @g_icache_fn, i64 0, i64 %ic_idx4
  %ic_fn8 = load ptr, ptr %ic_fnp7, align 8
  %ic_hit9 = icmp eq i64 %ic_tag6, %r1
  %ic_cal10 = select i1 %ic_hit9, ptr %ic_fn8, ptr @rt_dispatch
  call void %ic_cal10(ptr %c)
```

## 6. Other Passes That Rely On or Interact With This Pass

- **`NsoRodataConstPropAndDevirtPass` (Pass 3, Upstream)**: Runs before Pass 14 to convert statically resolvable `.rodata` vtable/GOT `BLR` calls into `OpTag::DirectCall`s, leaving only genuinely dynamic `BLR` calls for Pass 14.
- **`AAPCS64ABIContractPass` (Pass 20) & `CpuStatePromotionPass` (Pass 21, Downstream)**: Recognize `OpTag::IndirectCall` and insert the required pre-call register flush and post-call reload around the indirect call.
