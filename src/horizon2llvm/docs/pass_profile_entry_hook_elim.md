# Pass 2: `ProfileGuidedEntryHookElimPass` (`profile-entry-hook-elim-pass`)

- **Implementation File**: `src/horizon2llvm/lowering/pass_profile_entry_hook_elim.cpp`
- **Header Declaration**: `src/horizon2llvm/passes.hpp` (`ultrs::passes::ProfileGuidedEntryHookElimPass`)
- **Pipeline Stage**: Stage I — Game Patching & Entry Cleanup (Pass 2 of 23)
- **Default Tier**: Tier 1 (Safe Local; enabled by default unless `--force-fnprof` is passed)

## 1. What Problem It Is Solving

When `AArch64ToLLVMLifter::emit_fn_enter()` initializes a lifted function, it emits an optional runtime function-profiler hook in the `entry` basic block:
1. A volatile load of `@g_fnprof` (`load volatile i32, ptr @g_fnprof, align 4`).
2. A conditional branch to `prof_hit` vs `prof_cont`.
3. Inside `prof_hit`, two `OpTag::CpuRegRead` instructions reading `X30` (`LR`, `arch_reg = 30`) and `X0` (`arch_reg = 0`) to pass `(pc, x30, x0)` to `@fnprof_hit(i64, i64, i64)`.

Previously, `ProfileGuidedEntryHookElimPass` only removed this hook on tiny call-free leaf functions (`<= 16` instructions). In `perf/main_432_raw.ll`, all 5 functions (`f_80077bc00`, `f_80077be18`, `f_80077c0e4`, `f_80077c180`, `f_80077d084`) are `>= 53` instructions (150 to 1,032 instructions), so all 5 functions retained the dead `@g_fnprof` volatile load and `@fnprof_hit` call in production builds where `--force-fnprof` is not enabled.

## 2. Why That Problem Is Important

- **Eliminating False Upward-Exposed Register Reads (`X30` & `X0`)**: Because `prof_hit` executes `OpTag::CpuRegRead` on `X30` (`arch_reg = 30`) and `X0` (`arch_reg = 0`) at function entry before `L_<entry_pc>`, keeping `prof_hit` in non-leaf or larger leaf functions like `f_80077d084` (150 ARM64 instructions) forces `X30` and `X0` to appear live-in on entry in every function:
  - `LinkRegisterElisionPass` (Pass 18) could not elide `X30 = pc + 4` before calls to `f_80077d084` (`bl 0x80077d084` in `f_80077be18` and `f_80077c180`) because `f_80077d084` appeared to read `X30` in `prof_hit`.
  - `CpuStatePromotionPass` (Pass 21) was forced to allocate `%loc_x30` and load `c->x[30]` on entry in `f_80077d084` even though `f_80077d084`'s body never touches `X30`.
  - Even if `X0` is unconditionally overwritten in `L_<entry_pc>`, reading `X0` in `prof_hit` blocked `killed_on_entry` pruning for `X0`.
- **Eliminating Volatile Loads & External Call Clobbers**: Because `%prof_on = load volatile i32, ptr @g_fnprof` is `volatile`, LLVM `-O2` cannot dead-strip `prof_hit` or its `@fnprof_hit` call, adding a volatile memory load, comparison, conditional branch, and cold call block to every function prologue.

## 3. How the Pass Solves That Problem at a High Level

1. **Unconditional Elision When `!force_fnprof_`**: When `--force-fnprof` is not passed (`force_fnprof_ == false`), `ProfileGuidedEntryHookElimPass` elides the `entry -> prof_hit / prof_cont` diamond on **all** lifted functions regardless of instruction count or call presence.
2. **CFG Simplification**:
   - Rewrites the `entry` basic block to contain a single unconditional branch (`br label %L_<entry_pc>`).
   - Erases `prof_hit` and `prof_cont` from `fn->blocks`, `fn->block_map`, and the in-memory `llvm::Function` basic block list.

## 4. Detailed Technical Implementation Details

- **Synchronized `llvm::BasicBlock` Cleanup**: In `src/horizon2llvm/lowering/pass_profile_entry_hook_elim.cpp`, when `prof_hit` and `prof_cont` are removed from `fn->blocks`, the pass first drops all references in `bb->llvm_bb` and calls `bb->llvm_bb->eraseFromParent()` before erasing the `std::unique_ptr<BasicBlock>`, ensuring the in-memory `llvm::Function` CFG remains valid with zero dangling basic block uses.
- **Immediate Impact on `main_432`**: Removes 50 lines of IR, 10 `Cpu*` loads (`X30` and `X0` across the 5 functions), 5 `load volatile` instructions, and 34 x86-64 instructions, while exposing `f_80077d084` as completely `X30`-free for `LinkRegisterElisionPass` (Pass 18).

## 5. End-to-End Walkthrough of Representative `llvm::ir` Snippets

### Input Lifted Function Prologue (`f_80077d084` in `main_432_raw.ll`)
```llvm
define dso_local void @f_80077d084(ptr noalias noundef nonnull align 16 dereferenceable(1024) %c) nounwind {
entry:
  %prof_on1 = load volatile i32, ptr @g_fnprof, align 4
  %prof_cmp2 = icmp ne i32 %prof_on1, 0
  br i1 %prof_cmp2, label %prof_hit, label %prof_cont
prof_hit:
  %r3.p = getelementptr inbounds i8, ptr %c, i64 240
  %r3 = load i64, ptr %r3.p, align 8, !alias.scope !3, !noalias !4
  %r4.p = getelementptr inbounds i8, ptr %c, i64 0
  %r4 = load i64, ptr %r4.p, align 8, !alias.scope !3, !noalias !4
  call void @fnprof_hit(i64 34367582340, i64 %r3, i64 %r4)
  br label %prof_cont
prof_cont:
  br label %L_80077d084
```

### Lowered LLVM IR After `ProfileGuidedEntryHookElimPass`
```llvm
define dso_local void @f_80077d084(ptr noalias noundef nonnull align 16 dereferenceable(1024) %c) nounwind {
entry:
  br label %L_80077d084
```

## 6. Other Passes That Rely On or Interact With This Pass

- **`LinkRegisterElisionPass` (Pass 18, Downstream)**: Directly relies on Pass 2 removing `prof_hit`'s read of `X30` (`arch_reg = 30`) on `f_80077d084` so callers (`f_80077be18`, `f_80077c180`) can elide `X30 = pc + 4` before `call void @f_80077d084(ptr %c)`.
- **`AAPCS64ABIContractPass` (Pass 20) & `CpuStatePromotionPass` (Pass 21, Downstream)**: Benefit from accurate upward-exposed `summary_reads` (`X30` and `X0` are no longer artificially marked live-in at `entry`) and `killed_on_entry` pruning across `entry -> L_<entry_pc>`.
