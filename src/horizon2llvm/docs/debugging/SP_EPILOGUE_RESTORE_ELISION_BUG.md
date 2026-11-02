# Case Study: Stack Frame Leakage via Epilogue SP Restore Elision

## Executive Summary

- **Symptom**: `./UltraTears` crashed during early engine initialization with `SIGSEGV accessing 0x8` at native address `f_800bbe720+0x10b5` (`mov %rcx, 0x8(%rax)` where `%rax == 0x0`).
- **Surface Observation**: Prior working builds (`UltraTears_old`) proceeded through initialization without crashing. The crash appeared non-deterministic or far away from any recent lifter changes.
- **Root Cause**: `pass_cpu_state_promotion` introduced an aggressive optimization pass (`defer_sp_sync` and `elide_epilogue_sp_restores`) intended to avoid redundant guest SP flushes to `Cpu::sp`. In functions identified as having "clean stack frames", the pass deleted the epilogue stack pointer restoration (`add sp, sp, #frame_size`) under the erroneous assumption that mid-function syncs or caller handling would keep SP balanced.
- **The Consequence**: Every invocation of such functions (e.g. `f_80017c350`) allocated stack space (`sub sp, sp, 128`) in its prologue but never deallocated it on `ret void`. This leaked 128 bytes per call into the caller's stack frame. When callers (e.g. `f_80020f100`) restored callee-saved registers (`X19..X30`) from their expected stack offsets (`ldr x19, [sp, #64]`), they read from uninitialized stack memory (`0x0000000000000000`) instead of their preserved objects. Downstream pointer dereferencing immediately triggered a segmentation fault.
- **Resolution**: Disabled `defer_sp_sync` in `pass_cpu_state_promotion.cpp`, enforcing the fundamental AAPCS64 invariant that every prologue stack allocation must have a corresponding epilogue restoration on all exit paths.

---

## 1. Problem Manifestation

During startup of the recompiled game, the process crashed with:

```text
[totk] performance request mode=0 cfg=92220008: host scheduling
Segmentation fault (core dumped)
```

Running under GDB revealed the crash location:

```text
Program received signal SIGSEGV, Segmentation fault.
0x000055555627f1c5 in f_800bbe720 (c=0x7fffcc000a40) at build/game/main/main_448.o:0x800bbe720+0x10b5
=> 0x000055555627f1c5:    mov    %rcx,0x8(%rax)
(gdb) info registers rax rbx rcx
rax            0x0                 0
rbx            0x7fffcc000a40      140736614138432
rcx            0x1030b04000        69536858112
```

Inspecting the disassembly leading up to the fault:

```assembly
0x000055555627f1be:    mov    0x98(%rbx),%rax    ; %rbx is Cpu*, offset 0x98 is c->x[19]
0x000055555627f1c5:    mov    %rcx,0x8(%rax)     ; dereference rax + 8 -> FAULT (rax == 0)
```

In `UltraTears_old` (the known-working baseline), executing up to the exact same point showed:

```text
(gdb) print/x ((Cpu*)0x7fffcc000a40)->x[19]
$1 = 0x1030b009e8  ; Valid heap object pointer
```

---

## 2. Differential Dynamic Tracing

Because the crash occurred deep within module initialization after thousands of function calls, static analysis alone could not pinpoint which function corrupted `c->x[19]`. We utilized differential execution analysis between `UltraTears` and `UltraTears_old`.

### Step 1: Hardware Watchpoint on `c->x[19]`

We attached GDB to both processes and set a hardware write watchpoint on `c->x[19]` (`*(uint64_t*)(c + 0x98)`):

```gdb
(gdb) watch *(uint64_t*)(0x7fffcc000a40 + 0x98)
(gdb) continue
```

In `UltraTears_old`, the write occurred in `f_80020f100`:

```assembly
f_80020f100:
...
ldr x19, [sp, #64]   ; Restores callee-saved X19 from caller stack frame
```

At this moment:
- In `UltraTears_old`: `[sp, #64]` contained `0x1030b009e8`.
- In `UltraTears`: `[sp, #64]` contained `0x0000000000000000`.

### Step 2: Stack Pointer Differential

Why did `[sp, #64]` contain `0`? We checked the value of guest `SP` (`c->sp`, offset `0x100` / 256 in `Cpu`):

| State | `UltraTears_old` | `UltraTears` (Faulting) | Delta |
|---|---|---|---|
| `c->sp` on entry to `f_80020f100` | `0x101ffffae0` | `0x101ffffa60` | **-128 bytes (0x80)** |
| `[c->sp + 64]` evaluated address | `0x101ffffb20` | `0x101ffffaa0` | Shifted by 128 bytes |

Because `c->sp` was shifted by 128 bytes, `[sp + 64]` was reading from an entirely different memory location on the guest stack—one that had never been written to and still held zeroes from the initial anonymous stack mapping.

### Step 3: Isolating the 128-Byte Leak

We placed a watchpoint on `c->sp` (`*(uint64_t*)(c + 0x100)`):

```gdb
(gdb) watch *(uint64_t*)(0x7fffcc000a40 + 0x100)
```

Tracing backward through the call chain immediately preceding `f_80020f100`, we hit:

```text
Hardware watchpoint 2: *(uint64_t*)0x7fffcc000b40
Old value = 0x101ffffae0
New value = 0x101ffffa60
f_80017c350 () at build/game/main/main_093.o
```

In `f_80017c350`:
1. Prologue executed:
   ```assembly
   sub sp, sp, 128
   str sp, [c, 256]    ; c->sp updated from 0x101ffffae0 to 0x101ffffa60
   ```
2. The function executed its body.
3. The function reached its epilogue and returned (`ret void`).

In `UltraTears_old`, the epilogue was:
```assembly
add sp, sp, 128
str sp, [c, 256]    ; c->sp restored to 0x101ffffae0
ret
```

In `UltraTears`, the epilogue was:
```assembly
; add sp, sp, 128 was MISSING!
; str sp, [c, 256] was MISSING!
ret
```

The function returned to its caller with `c->sp` left at `0x101ffffa60`. The 128-byte stack allocation had leaked into the caller!

---

## 3. Lifter Root Cause in `pass_cpu_state_promotion`

We traced the omission back to `src/horizon2llvm/lowering/pass_cpu_state_promotion.cpp`.

### Mechanism of the Failure

The optimization pass attempted to implement `defer_sp_sync`:

```cpp
static bool elide_epilogue_sp_restores(
    Function& fn,
    const std::vector<size_t>& return_blocks,
    const std::vector<size_t>& ret_sp_write_indices,
    const std::vector<size_t>& ret_sp_read_indices,
    ...) {
    for (size_t ri = 0; ri < return_blocks.size(); ++ri) {
        BasicBlock& rbb = *fn.blocks[return_blocks[ri]];
        size_t w_idx = ret_sp_write_indices[ri];
        size_t r_idx = ret_sp_read_indices[ri];
        rbb.insts[w_idx].dead = true; // <--- MARKED EPILOGUE SP STORE DEAD
        ...
        rbb.insts[r_idx].dead = true; // <--- MARKED EPILOGUE SP ADD DEAD
    }
    return true;
}
```

This logic assumed that if a function's stack frame was tracked as an SSA delta (`saved_frame_sp_rel`), the epilogue store to `Cpu::sp` could simply be discarded, and that any mid-function calls would sync SP on-demand.

However, this violated three fundamental principles:
1. **AAPCS64 Caller-Callee Contract**: In AAPCS64, `SP` is an architectural register that must be preserved across function calls. Any function that decrements `SP` in its prologue *must* increment `SP` by the exact same amount prior to returning to the caller.
2. **Missing Return Sync**: If a function returned without making further external calls, `c->sp` was left decremented forever.
3. **Mid-Function Call Inversion**: Around calls, `defer_sp_sync` injected:
   ```cpp
   // Before call:
   store i64 %frame_sp_ssa, ptr %c_sp
   // Call:
   call @callee(...)
   // After call:
   %v2 = add i64 %frame_sp_ssa, -saved_frame_sp_rel // e.g. %frame_sp + 128 == %entry_sp!
   store i64 %v2, ptr %c_sp
   ```
   `-saved_frame_sp_rel` added `+128` back to SP *immediately after the callee returned*, resetting `c->sp` to `%entry_sp` while the current function was still executing and still needed its stack frame.

---

## 4. The Fix

In [`src/horizon2llvm/lowering/pass_cpu_state_promotion.cpp`](file:///home/leegao/meh/ultratears-main/src/horizon2llvm/lowering/pass_cpu_state_promotion.cpp#L514):

```cpp
res.elided_callee_regs = elide_prologue_epilogue_callee_saves(
    fn, prolog_bi, prolog_saves, return_blocks, epilog_restores, is_jt_def_block, changed);

// TODO(leegao): defer_sp_sync was eliding epilogue `add sp, sp, #frame` restores
// in return blocks while retaining prologue `sub sp, sp, #frame` allocations, leaking
// frames across calls and corrupting caller SP. It also injected premature `rest_sp`
// restores (+saved_frame_sp_rel) after mid-function calls, prematurely resetting SP
// to entry SP while the function frame was still live. To safely re-enable:
// 1) Ensure epilogue SP restores are NEVER elided when callers depend on AAPCS64 SP balance.
// 2) Keep SP pointing to the current function frame across all mid-function external calls
//    instead of resetting it to entry SP.
res.defer_sp_sync = false;
```

With `defer_sp_sync = false`:
1. `elide_epilogue_sp_restores` is never invoked; all epilogue `add sp, sp, #frame` and stores to `c->sp` are preserved.
2. AAPCS64 liveness sets (`aapcs_ret_live` and `aapcs_ext_call_reads`) unconditionally include `SP` (register index 31), preventing backward dead-store elimination from purging SP updates.
3. Elision of unmodified callee-saved registers (`X19..X29`, `V8..V15`) remains fully active and safe.

---

## 5. Lessons Learned & Invariants

1. **SP is Callee-Saved**: In static binary translation, guest `SP` is not merely a memory offset; it is a callee-saved register under AAPCS64. Any optimization that touches SP must ensure net frame change $\Delta SP = 0$ between function entry and function exit across all reachable execution paths.
2. **Differential Watchpoints for Distant Crashes**: When a crash manifests hundreds of thousands of instructions after corruption occurs, differential memory watchpoints between a known-good binary and the candidate binary isolate the corruption site in minutes.
3. **Recursive Build Dependencies**: Build scripts checking timestamp invalidation must recursively inspect all subdirectories (`rglob`), otherwise modifications to pass implementations will be silently ignored, executing stale binaries.
