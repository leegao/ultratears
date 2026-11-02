# Pass 8: `ExclusiveMonitorLSEFastPathPass` (`exclusive-monitor-lse-fastpath-pass`)

- **Implementation File**: `src/horizon2llvm/lowering/pass_exclusive_monitor_lse_fastpath.cpp`
- **Header Declaration**: `src/horizon2llvm/passes.hpp` (`ultrs::passes::ExclusiveMonitorLSEFastPathPass`)
- **Pipeline Stage**: Stage II — Switch-Specific, x86-64 Devirtualization & ARM64-ism Deconstruction (Pass 8 of 23)
- **Default Tier**: Tier 2 (Opt-in via `--all-passes` or `--enable-pass lse-fastpath`)

## 1. What Problem It Is Solving

Because the Nintendo Switch's ARM Cortex-A57 targets ARMv8.0-A (which lacks ARMv8.1-A Large System Extensions `CAS` / `LDADD`), all atomic read-modify-write operations in Switch binaries (`std::atomic::fetch_add`, mutexes, reference counting in `f_8001e0d60` and `f_80029e418`) are compiled as Load-Exclusive / Store-Exclusive (`LDXR`/`LDAXR` + `STXR`/`STLXR`) loops.

In the baseline lifter:
1. `LDXR` / `LDAXR` performs an atomic load from `[rn]`, zero-extends the value, and **stores both the address and value into `Cpu* %c`'s software exclusive monitor fields**: `c->excl_addr` (offset `296`) and `c->excl_val` (offset `304`).
2. `STXR` / `STLXR` **reloads `c->excl_addr` and `c->excl_val` from `Cpu* %c`**, compares `%addr == %excl_addr`, and executes `cmpxchg ptr %p, i32/i64 %expected, %new seq_cst seq_cst`.

When `LDXR` and `STXR` reside in the same basic block with no intervening calls or `CLREX` barriers—which is true for virtually all standard compiler-generated atomic RMW idioms—storing to and reloading from `c->excl_addr` and `c->excl_val` on every loop iteration is pure overhead.

## 2. Why That Problem Is Important

- **Performance of Atomic Reference Counting & Synchronization**: TOTK executes millions of atomic reference-count increments/decrements per second across worker threads. Eliminating the 4 thread-state memory accesses (`2 stores` + `2 loads` on `c->excl_addr` and `c->excl_val`) and the address equality branch (`icmp eq %addr, %excl_addr`) reduces an `LDXR`+`ADD`+`STLXR`+`CBNZ` loop directly to a native x86-64 `lock cmpxchg` loop!
- **Correctness Across `CLREX` and Function Calls**: If a `CLREX` instruction (`OpTag::HorizonBarrier`) or a function call occurs between `LDXR` and `STXR`, or if `LDXR` and `STXR` span different basic blocks (e.g., LL/SC with an early-exit branch between `LDXR` and `STXR`), the software exclusive monitor state in `c->excl_addr` / `c->excl_val` is required for correctness.

## 3. How the Pass Solves That Problem at a High Level

1. **Intra-Block Pairing Scan**: Within each basic block, scans for an `LDXR`/`LDAXR` instruction (`store i64 ..., ptr %exa` at offset `296` and `store i64 ..., ptr %exv` at offset `304`) followed by a matching `STXR`/`STLXR` instruction (`load i64, ptr %exa`, `load i64, ptr %exv`, and `cmpxchg`) with **no** intervening calls (`DirectCall`, `IndirectCall`, `HorizonSvc`) and **no** `CLREX` (`HorizonBarrier`).
2. **SSA Value Forwarding & Monitor Elision**:
   - Extracts the SSA register holding the zero-extended value loaded by `LDXR` (`ldx_zext_reg`) and strips the two `store`s to `c->excl_addr` (offset `296`) and `c->excl_val` (offset `304`) from the `LDXR` instruction.
   - Replaces the `STXR` instruction's reload of `c->excl_addr` and `c->excl_val` using `PassLLVMBuilder`, forwarding `ldx_zext_reg` (truncated to `i8`/`i16`/`i32` for sub-64-bit atomics) directly as the `cmpxchg` expected value and folding `%addr_ok` to `true` (`or i1 true, false`).

## 4. Detailed Technical Implementation Details

- **`CLREX` Barrier Reset**: Any `OpTag::HorizonBarrier` (`CLREX`) encountered after an `LDXR` immediately resets `ldx_idx = -1` so a subsequent `STXR` after `CLREX` is never falsely paired with the cleared `LDXR`.
- **`PassLLVMBuilder` Reconstruction**: Uses `PassLLVMBuilder::trunc`, `PassLLVMBuilder::inttoptr`, `PassLLVMBuilder::cmpxchg` (`llvm::IRBuilder::CreateAtomicCmpXchg` with `SequentiallyConsistent` ordering), `PassLLVMBuilder::extractvalue`, `PassLLVMBuilder::xor_i1`, and `PassLLVMBuilder::zext` to build the fast-path `STXR` sequence.

## 5. End-to-End Walkthrough of Representative `llvm::ir` Snippets

### Input AArch64 Atomic Increment Loop (TOTK `f_8001e0d60`)
```arm64
0x8001e0d60: 885f7c08    ldxr  w8, [x0]
0x8001e0d64: 11000508    add   w8, w8, #1
0x8001e0d68: 8809fc08    stlxr w9, w8, [x0]
0x8001e0d6c: 35ffffa9    cbnz  w9, 0x8001e0d60
0x8001e0d70: d65f03c0    ret
```

### Lifted LLVM IR Before `ExclusiveMonitorLSEFastPathPass`
```llvm
  ; @pc 0x8001e0d60 (word=0x885f7c08)
  %ldx2 = load atomic i32, ptr %gmp1 acquire, align 4
  %zext3 = zext i32 %ldx2 to i64
  %exa4 = getelementptr inbounds i8, ptr %c, i64 296
  store i64 %r1, ptr %exa4, align 8
  %exv5 = getelementptr inbounds i8, ptr %c, i64 304
  store i64 %zext3, ptr %exv5, align 8
  ...
  ; @pc 0x8001e0d68 (word=0x8809fc08)
  %exa10 = getelementptr inbounds i8, ptr %c, i64 296
  %ea11 = load i64, ptr %exa10, align 8
  %exv12 = getelementptr inbounds i8, ptr %c, i64 304
  %ev13 = load i64, ptr %exv12, align 8
  %aok14 = icmp eq i64 %r9, %ea11
  %exp15 = trunc i64 %ev13 to i32
  %cx16 = cmpxchg ptr %gmp17, i32 %exp15, i32 %val8 seq_cst seq_cst
```

### Lowered LLVM IR After `ExclusiveMonitorLSEFastPathPass`
```llvm
  ; @pc 0x8001e0d60 (word=0x885f7c08)
  %ldx2 = load atomic i32, ptr %gmp1 acquire, align 4
  %zext3 = zext i32 %ldx2 to i64
  ...
  ; @pc 0x8001e0d68 (word=0x8809fc08)
  ; [ExclusiveMonitorLSEFastPathPass] elided c->excl_addr/excl_val round-trip
  %aok14 = or i1 true, false
  %exp15 = trunc i64 %zext3 to i32
  %cx16 = cmpxchg ptr %gmp17, i32 %exp15, i32 %val8 seq_cst seq_cst
```

## 6. Other Passes That Rely On or Interact With This Pass

- **`HorizonLoweringPass` (Pass 9, Downstream)**: Attaches `!alias.scope !4, !noalias !3` metadata to the atomic guest memory operations and lowers any `CLREX` instructions (`OpTag::HorizonBarrier`).
- **`CpuStatePromotionPass` (Pass 21, Downstream)**: Promotes the `w8` and `w9` status registers to SSA values so the entire `LDXR`/`STLXR` loop compiles to a tight register-only `lock cmpxchg` loop on x86-64.
