# Pass 12: `AArch64IdiomDeconstructPass` (`aarch64-idiom-deconstruct-pass`)

- **Implementation File**: `src/horizon2llvm/pass_aarch64_idiom_deconstruct.cpp`
- **Header Declaration**: `src/horizon2llvm/passes.hpp` (`ultrs::passes::AArch64IdiomDeconstructPass`)
- **Pipeline Stage**: Stage II — Switch-Specific, x86-64 Devirtualization & ARM64-ism Deconstruction (Pass 12 of 23)
- **Default Tier**: Tier 1 (Safe Local; enabled by default)

## 1. What Problem It Is Solving

Because AArch64 is a fixed-width 32-bit RISC ISA with non-trapping integer division and unified 128-bit scalar/vector `V0`..`V31` registers, instruction-by-instruction translation to LLVM IR produces several pervasive "ARM64-isms" that bloat IR and degrade code quality on x86-64:
1. **Multi-Instruction 64-Bit Constant Materialization & Constant Hash Chains (`MOVZ`/`MOVN` + `MOVK`, `ADRP` + `ADD`, and Constant `CRC32B` Sequences)**: Materializing a 64-bit constant or hashing a literal string via `CRC32B` (such as the 7-byte `"default"` hash in `f_80077bc00`) emits dozens of intermediate SSA arithmetic instructions and `Cpu* %c` loads/stores.
2. **Defensive `UDIV` / `SDIV` Division-by-Zero & Overflow Guards**: AArch64 `UDIV`/`SDIV` by `0` returns `0` without trapping, requiring a 4- to 9-instruction `icmp`+`select` guard unless the divisor is proven non-zero.
3. **Split Paired Constant/Zero Stores (`STP Wzr, Wzr` / `STP Xzr, Xzr`) & Register-Indirect Constant `GuestMemStore`s**: AArch64 materializes constants into a temporary GPR (`mov w10, #64`) before storing them to memory (`str w10, [sp, #8]`; `str w10, [x20, #536]`), and emits paired zero stores as two separate `store i64 0` instructions.
4. **Scalar FP/SIMD `zext`/`trunc i128` Round-Trips**: Scalar `S0`/`D0` operations zero-extend (`zext i32/i64 to i128`) on write and truncate (`trunc i128 to i32/i64`) on read.

## 2. Why That Problem Is Important

- **Performance & Dead-Store Exposure**:
  - Collapsing `MOVZ`+`MOVK`, `ADRP`+`ADD`, and constant `CRC32` chains into self-contained immediate stores (`store i64 <imm>, ptr %cwp`) and materializing constant `GuestMemStore` operands (`store i32 64, ptr %gmp`) removes all intermediate `CpuRegRead` uses.
  - Once intermediate `CpuRegRead`s are removed and dead constant SSA instructions are swept at the end of each block, `main_432.ll` shrinks by **382 IR lines** in Pass 12 alone, and downstream `CpuStatePromotionPass` DSE eliminates all intermediate `CpuRegWrite`s!
  - Coalescing adjacent 64-bit zero stores (`STP Xzr, Xzr`) into `store i128 0` merges 22 stores into 11 128-bit XMM stores in `main_432`.

## 3. How the Pass Solves That Problem at a High Level

Within each basic block, `AArch64IdiomDeconstructPass` performs 5 coordinated transformations:
1. **Intra-Block Constant Propagation (`known_consts` & `gpr_consts`)**: Propagates constants across `CpuRegWrite`/`CpuRegRead` (truncating 32-bit `Wn` reads to `uint32_t`) and across `add`, `sub`, `and`, `or`, `xor`, `shl`, `lshr`, `zext`, `trunc`, and `@rt_crc32`, rewriting constant `CpuRegWrite`s into immediate stores.
2. **Proven Non-Zero `UDIV` / `SDIV` Guard Elision**: Replaces 4-instruction `UDIV` and 9-instruction `SDIV` guards with direct `udiv`/`sdiv` when the divisor is proven non-zero (and `!= -1` for `SDIV`).
3. **Paired Constant/Zero Store Coalescing & Constant `GuestMemStore` Materialization**:
   - Coalesces adjacent `GuestMemStore` pairs at `%base` and `%base + 4` (`i32` constants -> `store i64`) or `%base + 8` (`i64 0` -> `store i128 0`).
   - Materializes known constant values directly into single `GuestMemStore` instructions (`store i32 64, ptr %gmp`).
4. **Scalar `V`-Register `zext`/`trunc i128` Forwarding**: Rewrites `trunc i128 %vload to i32/i64` to copy the original scalar source before `zext`.
5. **Backward Dead-Constant SSA Cleanup**: Sweeps the basic block in reverse to mark dead any constant-folded `OpTag::RawIR` instruction whose `dst_reg` has no remaining live uses after constant materialization.

## 4. Detailed Technical Implementation Details

- **Strict `= add i64` Verification on Paired Stores**: Verifies `ea2_inst.text.find(" = add i64 ") != std::string::npos` so negative-offset stores (`sub i64 %base, 4`) are never coalesced.
- **Backward Dead-Constant Sweep**: After collapsing constant chains into immediate `CpuRegWrite` and `GuestMemStore` instructions, the reverse sweep tracks `live_ssa` tokens (`%[A-Za-z0-9_.]+`) and marks any unreferenced `RawIR` instruction in `known_consts` as `dead = true`, eliminating all 280 intermediate bit-level `CRC32B` SSA instructions in `f_80077bc00`.

## 5. End-to-End Walkthrough of Representative `llvm::ir` Snippets

### Input AArch64 Instructions (`f_80077bc00` in `main_432_arm64.asm`)
```arm64
0x80077bc60: 5280080a    mov w10, #64
0x80077bc64: b9000bea    str w10, [sp, #8]
0x80077bc68: b9021a8a    str w10, [x20, #536]
0x80077bc6c: 52800d8a    mov w10, #108          ; overwrites w10!
```

### Lifted LLVM IR Before `AArch64IdiomDeconstructPass`
```llvm
  ; @pc 0x80077bc60 word 0x5280080a
  %c85 = zext i32 64 to i64
  %wp86 = getelementptr inbounds i8, ptr %c, i64 80
  store i64 %c85, ptr %wp86, align 8, !alias.scope !3, !noalias !4
  ; @pc 0x80077bc64 word 0xb9000bea
  %r87 = load i64, ptr %loc_sp, align 8
  %t88 = add i64 %r87, 8
  %r89.p = getelementptr inbounds i8, ptr %c, i64 80
  %r89 = load i64, ptr %r89.p, align 8, !alias.scope !3, !noalias !4
  %c90 = trunc i64 %r89 to i32
  %gmp91 = inttoptr i64 %t88 to ptr
  store i32 %c90, ptr %gmp91, align 4, !alias.scope !6, !noalias !3
```

### Lowered LLVM IR After `AArch64IdiomDeconstructPass` + `CpuStatePromotionPass`
```llvm
  ; The write `w10 = 64` at 0x80077bc60 and its reloads are completely eliminated,
  ; and `64` is stored directly to `[sp, #8]` and `[x20, #536]`:
  ; @pc 0x80077bc64 word 0xb9000bea
  %r87 = load i64, ptr %loc_sp, align 8
  %t88 = add i64 %r87, 8
  %gmp91 = inttoptr i64 %t88 to ptr
  store i32 64, ptr %gmp91, align 4, !alias.scope !6, !noalias !3
```

## 6. Other Passes That Rely On or Interact With This Pass

- **`X8664HardwareIntrinsicPass` (Pass 7) & `GuestStackAndAlignmentPass` (Pass 11, Upstream)**: Pass 7 expands `CRC32` into arithmetic instructions that Pass 12 folds, and Pass 11 provides stack alignment for Pass 12's paired store coalescer.
- **`CpuStatePromotionPass` (Pass 21, Downstream)**: Eliminates the intermediate `CpuRegWrite`s whose `CpuRegRead` consumers were constant-folded by Pass 12.
