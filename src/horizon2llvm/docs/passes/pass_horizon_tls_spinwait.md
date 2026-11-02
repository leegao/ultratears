# Pass 10: `HorizonTLSAndSpinWaitPass` (`horizon-tls-spinwait-pass`)

- **Implementation File**: `src/horizon2llvm/lowering/pass_horizon_tls_spinwait.cpp`
- **Header Declaration**: `src/horizon2llvm/passes.hpp` (`ultrs::passes::HorizonTLSAndSpinWaitPass`)
- **Pipeline Stage**: Stage II — Switch-Specific, x86-64 Devirtualization & ARM64-ism Deconstruction (Pass 10 of 23)
- **Default Tier**: Tier 1 (Safe Local; enabled by default)

## 1. What Problem It Is Solving

Nintendo Switch user-mode threads on Horizon OS store their Thread Local Storage (TLS) pointer in the read-only system register `TPIDRRO_EL0` (`c->tpidrro` at `Cpu* %c` byte offset `288`). Functions that access TLS or thread-local variables inside loops often execute `MRS Xn, TPIDRRO_EL0` multiple times.

Additionally, Horizon OS synchronization primitives use AArch64 `YIELD` (`0xD503203F`), `WFE` (`0xD503205F`), or tight single-block spin-wait polling loops that benefit from `@llvm.x86.sse2.pause()` on x86-64. However, a naive single-block loop check (`<= 4` instructions with a memory load and self-branch) **falsely matches pointer-chasing data-structure traversal loops** such as the 3 red-black tree min/max search loops in `main_432`'s `f_80077c180` (`0x80077ca20`, `0x80077cc6c`, `0x80077cfb4`: `mov x8, x9; ldr x9, [x9]; cbnz x9, loop`). Emitting an x86-64 `pause` instruction (~140 clock cycles on modern Intel/AMD processors) inside a red-black tree traversal loop severely penalizes single-threaded execution (~115 ns slowdown per call in `main_432`).

## 2. Why That Problem Is Important

- **Performance (Avoiding 140-Cycle `pause` Penalties in Tree/List Traversals)**: Distinguishing true spin-wait loops (which repeatedly poll an **invariant** address or execute an atomic acquire load `LDAR`/`LDAXR`) from pointer-chasing loops (`p = p->next`, where the base pointer register `Rn` is overwritten on every iteration) eliminates all 3 false-positive `pause` instructions in `f_80077c180`, improving `main_432` execution speed by ~28%.
- **Loop-Invariant TLS Base Hoisting**: Hoisting repeated `MRS TPIDRRO_EL0` reads to a single load in `entry` eliminates redundant `Cpu*` loads inside loops.

## 3. How the Pass Solves That Problem at a High Level

1. **Invariant `TPIDRRO_EL0` Hoisting**:
   - Scans all basic blocks for `TPIDRRO_EL0` (`sys_key == 0xDE83`) loads, hoists a single load to `entry`, and forwards `%tpro_cached` to all intra-function readers.
2. **Explicit `YIELD`/`WFE` & Invariant-Address Spin-Wait Detection**:
   - Lowers explicit `YIELD` (`0xD503203F`) and `WFE` (`0xD503205F`) instructions to `@llvm.x86.sse2.pause()` (or `@llvm.aarch64.hint(i32 1)` on ARM64).
   - For implicit single-block self-loops (`<= 4` instructions with a memory load and conditional back-edge to `bb->name`), collects `read_gprs` and `written_gprs` in the block and **only** emits `pause` if the loop either executes an atomic load (`load atomic`) or reads an invariant address register (`r in read_gprs` and `r not in written_gprs`) while writing at most 1 destination register (`written_gprs.size() <= 1`).

## 4. Detailed Technical Implementation Details

- **Pointer-Chase Exclusion Criterion**: In a linked-list or binary-tree traversal block like `L_80077cc6c` (`mov x8, x9; ldr x9, [x9]; cbnz x9, L_80077cc6c`), `read_gprs` is `{9}` and `written_gprs` is `{8, 9}`. Because `9` is in `written_gprs` (`has_invariant_addr_reg == false`) and `written_gprs.size() == 2 > 1`, `HorizonTLSAndSpinWaitPass` recognizes the loop as a pointer-chasing traversal rather than a spin-wait loop and does not inject `@llvm.x86.sse2.pause()`.

## 5. End-to-End Walkthrough of Representative `llvm::ir` Snippets

### Red-Black Tree Pointer-Chasing Loop in `f_80077c180` (`0x80077cc6c..0x80077cc74`)
```arm64
L_80077cc6c:
  0x80077cc6c: aa0903e8    mov  x8, x9
  0x80077cc70: f9400129    ldr  x9, [x9]
  0x80077cc74: b5ffffc9    cbnz x9, 0x80077cc6c
```

### Before Pointer-Chase Disambiguation (False-Positive `pause` Injected)
```llvm
L_80077cc6c:
  ...
  %gml4264 = load i64, ptr %gmp4263, align 1, !alias.scope !4, !noalias !3
  ; [HorizonTLSAndSpinWaitPass] polling loop pause  <-- 140-cycle stall on tree walk!
  call void @llvm.x86.sse2.pause()
  br i1 %cmp4267, label %L_80077cc6c, label %L_80077cc78_ft
```

### After Pointer-Chase Disambiguation (Clean Tree Traversal Loop)
```llvm
L_80077cc6c:
  ...
  %gml4264 = load i64, ptr %gmp4263, align 1, !alias.scope !4, !noalias !3
  %cmp4267 = icmp ne i64 %r4266, 0
  br i1 %cmp4267, label %L_80077cc6c, label %L_80077cc78_ft
```

## 6. Other Passes That Rely On or Interact With This Pass

- **`HorizonLoweringPass` (Pass 9, Upstream)**: Lowers `MRS TPIDRRO_EL0` and tags `sys_key` so Pass 10 can hoist TLS reads.
- **`CpuStatePromotionPass` (Pass 21, Downstream)**: Forwards intra-block `X8`/`X9` values inside tight pointer-chasing loops without any call barrier from `@llvm.x86.sse2.pause()`.
