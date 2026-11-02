# Pass 19: `TailCallDevirtualizationPass` (`tail-call-devirt-pass`)

- **Implementation File**: `src/horizon2llvm/lowering/pass_tail_call_devirt.cpp`
- **Header Declaration**: `src/horizon2llvm/passes.hpp` (`ultrs::passes::TailCallDevirtualizationPass`)
- **Pipeline Stage**: Stage IV — ABI Devirtualization, Register Promotion & Cross-Chunk Inlining (Pass 19 of 23)
- **Default Tier**: Tier 2 (Opt-in via `--all-passes` or `--enable-pass tail-call-devirt`)

## 1. What Problem It Is Solving

In AArch64 C++ binaries, two tail-call patterns occur tens of thousands of times:
1. **Explicit Tail Branches (`B <external_func>`)**: The lifter already emits `musttail call void @f_<target>(ptr %c); ret void` when a function branches unconditionally outside its `[entry_pc, end_pc)` range.
2. **Implicit Tail Calls (`BL <target>; RET`)**: In leaf-like wrapper functions, thunks, or functions whose Link Register write (`X30 = pc + 4`) was just elided by `LinkRegisterElisionPass` (Pass 18), a basic block ends with a direct call `call void @f_<target>(ptr %c)` (`OpTag::DirectCall`) followed immediately by `ret void` (`OpTag::Return`) with no intervening instructions.

If `call void @f_<target>(ptr %c)` is left as a regular non-tail call before `ret void`, `CpuStatePromotionPass` (Pass 21) treats it as an interior call—allocating a host stack frame, calling `@f_<target>`, returning to the caller, and then executing `ret void`.

## 2. Why That Problem Is Important

- **Zero-Frame `jmp` Generation on x86-64**: Upgrading `call void @f_<target>(ptr %c)` + `ret void` to `musttail call void @f_<target>(ptr %c)` + `ret void` guarantees that LLVM's x86-64 backend pops the current stack frame (or omits frame setup entirely) and emits a direct `jmp f_<target>` tail jump!
- **Eliminating Post-Call Reload & Pre-Return Re-Flush**: In `CpuStatePromotionPass` (Pass 21), a `musttail` call at the end of a basic block is a terminal exit: `CpuStatePromotionPass` flushes dirty registers once before the `musttail` call and emits **zero** post-call reloads and **zero** pre-return stores.

## 3. How the Pass Solves That Problem at a High Level

For each basic block in a function:
1. Finds the last two live (non-`dead`, non-`GuestInsnMarker`) instructions `(second_last, last)` in `bb->insts`.
2. Checks that:
   - `last` is an `OpTag::Return` (`ret void`).
   - `second_last` is an `OpTag::DirectCall` (`call void @f_<target>(ptr %c)`) that is not already marked `musttail`.
   - There is no live `OpTag::CpuRegWrite` to `X30` (`arch_reg == 30`) immediately preceding `second_last` in the same basic block (i.e., `LinkRegisterElisionPass` confirmed `X30` does not need to be restored/observed after the call).
3. Uses `PassLLVMBuilder::musttail_call_void(callee, {"ptr %c"}, OpTag::DirectCall)` to rewrite `second_last` into `musttail call void @<callee>(ptr %c)`.

## 4. Detailed Technical Implementation Details

- **`llvm::CallInst::setTailCallKind(llvm::CallInst::TCK_MustTail)`**: Inside `PassLLVMBuilder::musttail_call_void` (`src/horizon2llvm/passes_llvm_utils.hpp`), the underlying `llvm::CallInst*` is created via `builder_.CreateCall(fn, args)` and explicitly marked with `ci->setTailCallKind(llvm::CallInst::TCK_MustTail)`, which prints as `musttail call void @f_<target>(ptr %c)`.
- **Signature Compatibility**: Because all standard lifted functions share the identical `void (ptr %c)` signature, LLVM's `Verifier` (`musttail` contract requiring matching caller/callee signatures and immediate `ret void`) is always satisfied.

## 5. End-to-End Walkthrough of Representative `llvm::ir` Snippets

### Input AArch64 Instructions
```arm64
0x800100000: d2800540    mov x0, #42
0x800100004: 94000002    bl  0x80010000c
0x800100008: d65f03c0    ret
```

### Lifted LLVM IR After `LinkRegisterElisionPass` (Before Pass 19)
```llvm
  ; @pc 0x800100000 (word=0xd2800540)
  %t1 = add i64 0, 42
  store i64 %t1, ptr %loc_x0, align 8
  ; @pc 0x800100004 (word=0x94000002)
  call void @f_80010000c(ptr %c)
  ; @pc 0x800100008 (word=0xd65f03c0)
  ret void
```

### Lowered LLVM IR After `TailCallDevirtualizationPass`
```llvm
  ; @pc 0x800100000 (word=0xd2800540)
  %t1 = add i64 0, 42
  store i64 %t1, ptr %loc_x0, align 8
  ; @pc 0x800100004 (word=0x94000002)
  ; [TailCallDevirtualizationPass] devirtualized BL + RET -> musttail call
  musttail call void @f_80010000c(ptr %c)
  ; @pc 0x800100008 (word=0xd65f03c0)
  ret void
```

## 6. Other Passes That Rely On or Interact With This Pass

- **`LinkRegisterElisionPass` (Pass 18, Immediately Upstream)**: Elides the `X30 = pc + 4` write before `BL <target>`, unlocking Pass 19 on `BL + RET` sequences.
- **`CpuStatePromotionPass` (Pass 21, Downstream)**: Detects `inst.text.find("musttail call ") != std::string::npos` and skips emitting post-call reloads and pre-return flushes after the `musttail` call.
