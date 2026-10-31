# Pass 18: `LinkRegisterElisionPass` (`link-register-elision-pass`)

- **Implementation File**: `src/horizon2llvm/lowering/pass_link_register_elision.cpp`
- **Header Declaration**: `src/horizon2llvm/passes.hpp` (`ultrs::passes::LinkRegisterElisionPass`)
- **Pipeline Stage**: Stage IV — ABI Devirtualization, Register Promotion & Cross-Chunk Inlining (Pass 18 of 23)
- **Default Tier**: Tier 2 (Opt-in via `--all-passes` or `--enable-pass link-reg-elision`)

## 1. What Problem It Is Solving

On AArch64 hardware, the Branch with Link instruction (`BL <target>`) writes the return address (`PC + 4`) into the Link Register `X30` (`LR`) and jumps to `<target>`. In our static recompiler, however, direct calls (`BL <target>`) are translated into native host C/LLVM function calls (`call void @f_<target>(ptr %c)`), which push the host return address onto the native host call stack (`%rsp` on x86-64) and return via native `ret void`—**not** by jumping to `c->x[30]`!

Despite this, the baseline lifter faithfully emits `c->x[30] = pc + 4` (`OpTag::CpuRegWrite` on `arch_reg == 30`) before every single `BL <target>` instruction in case the callee saves `X30` to the guest stack (`STP X29, X30, [SP, #-16]!`) and later inspects or returns via `X30`. When calling an intra-module leaf function (or a call-tree of functions that never read `X30`) or when `X30` is immediately overwritten after the call before being read, writing `pc + 4` to `X30` is unnecessary.

## 2. Why That Problem Is Important

- **Enabling `musttail` Tail-Call Devirtualization (Pass 19)**: When a function ends with `BL <target>; RET`, the `BL` writes `X30 = pc + 4` immediately before `call void @f_<target>(ptr %c); ret void`. If `X30 = pc + 4` is not elided (or if `X30` must be flushed after the call), `TailCallDevirtualizationPass` (Pass 19) cannot safely convert `BL + RET` into a zero-frame `musttail call void @f_<target>(ptr %c)`!
- **Performance (Reducing `X30` Flush Traffic)**: Eliding `X30 = pc + 4` before calls to leaf functions prevents `X30` from becoming dirty before the call and avoids flushing 8 bytes to `c->x[30]` on every leaf call.

## 3. How the Pass Solves That Problem at a High Level

1. **Interprocedural `X30` Liveness Analysis (`reads_x30`)**:
   - Scans every function in the module to determine if it directly reads `X30` (`OpTag::CpuRegRead` with `arch_reg == 30`) or executes an unknown indirect call / `SVC` (which conservatively might read `X30`).
   - Propagates `reads_x30` backward across the intra-module `OpTag::DirectCall` graph to a fixpoint: if function `A` calls function `B` without first overwriting `X30`, and `B` reads `X30`, then `A` transitively reads `X30`.
2. **Pre-Call `X30 = pc + 4` Elision**:
   - Scans each basic block for an `OpTag::CpuRegWrite` on `arch_reg == 30` with a constant value (`pc + 4`) immediately preceding an `OpTag::DirectCall` to `target_pc`.
   - If the target function `@f_<target_pc>` is present in the module (`M.fn_map`) and `reads_x30[callee] == false`, **and** `X30` is either overwritten or never read after the call before `ret void` (or the call is immediately followed by `ret void`), marks the `X30 = pc + 4` write `dead = true`.

## 4. Detailed Technical Implementation Details

- **Synergy with `ProfileGuidedEntryHookElimPass` (Pass 2)**: Recall that the default `@g_fnprof` entry hook reads `X30` in `prof_hit`. Because Pass 2 removes `prof_hit` from all leaf functions, `LinkRegisterElisionPass` sees that leaf functions have zero reads of `arch_reg == 30`.

## 5. End-to-End Walkthrough of Representative `llvm::ir` Snippets

### Input AArch64 Instructions (Caller `f_80000f3b0` calling Leaf `f_80000f3bc`)
```arm64
0x80000f3b0: 94000003    bl  0x80000f3bc
0x80000f3b4: d65f03c0    ret
```

### Lifted LLVM IR Before `LinkRegisterElisionPass`
```llvm
  ; @pc 0x80000f3b0 (word=0x94000003)
  %lr.p = getelementptr inbounds i8, ptr %c, i64 240
  store i64 34359798708, ptr %lr.p, align 8, !alias.scope !3, !noalias !4
  call void @f_80000f3bc(ptr %c)
  ; @pc 0x80000f3b4 (word=0xd65f03c0)
  ret void
```

### Lowered LLVM IR After `LinkRegisterElisionPass`
```llvm
  ; @pc 0x80000f3b0 (word=0x94000003)
  ; (dead X30 = 0x80000f3b4 write elided because @f_80000f3bc never reads X30!)
  call void @f_80000f3bc(ptr %c)
  ; @pc 0x80000f3b4 (word=0xd65f03c0)
  ret void
```

## 6. Other Passes That Rely On or Interact With This Pass

- **`ProfileGuidedEntryHookElimPass` (Pass 2, Upstream)**: Removes synthetic `X30` reads from leaf function entry hooks.
- **`TailCallDevirtualizationPass` (Pass 19, Immediately Downstream)**: Relies on Pass 18 eliding the `X30 = pc + 4` write before `BL + RET` so the `BL + RET` pair can be upgraded to `musttail call void @f_<target>(ptr %c); ret void`.
