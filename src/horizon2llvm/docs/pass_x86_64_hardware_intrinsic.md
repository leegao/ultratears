# Pass 7: `X8664HardwareIntrinsicPass` (`x86-64-hardware-intrinsic-pass`)

- **Implementation File**: `src/horizon2llvm/pass_x86_64_hardware_intrinsic.cpp`
- **Header Declaration**: `src/horizon2llvm/passes.hpp` (`ultrs::passes::X8664HardwareIntrinsicPass`)
- **Pipeline Stage**: Stage II — Switch-Specific, x86-64 Devirtualization & ARM64-ism Deconstruction (Pass 7 of 23)
- **Default Tier**: Tier 1 (Safe Local; active by default on `x86_64-*` targets)

## 1. What Problem It Is Solving

Nintendo Switch titles compiled for the ARM Cortex-A57 heavily use four families of AArch64 instructions that the baseline lifter lowers to C runtime helpers (`src/runtime/simd_rt.c`):
1. **Castagnoli `CRC32C` (`CRC32CB`, `CRC32CH`, `CRC32CW`, `CRC32CX` via `@rt_crc32(..., is_c = 1)`)**: Used in `sead` and `nn::fs` hash tables.
2. **IEEE 802.3 `CRC32` (`CRC32B`, `CRC32H`, `CRC32W`, `CRC32X` via `@rt_crc32(..., is_c = 0)`)**: Used in `main_432`'s `f_80077bc00` (`0x80077bc58..0x80077bd00`), which executes 7 back-to-back `crc32b` instructions on the constant string `"default"` (`'d'`, `'e'`, `'f'`, `'a'`, `'u'`, `'l'`, `'t'`). Leaving `@rt_crc32` as an external C call without `readnone` forced 7 function calls, spilled caller-saved registers across every call, and prevented constant folding and dead-store elimination on `X8`, `X9`, and `X10`.
3. **NEON Bit-Manipulation (`CNT`, `RBIT`, `CLZ` via `@rt_sl_gen`)**: Used for population counts, bit reversal, and leading-zero scans on 64-bit (`8B`/`4H`/`2S`) and 128-bit (`128B`/`8H`/`4S`) vectors.
4. **NEON Across-Vector Horizontal Reductions (`ADDV`, `SADDLV`, `UADDLV`, `SMAXV`, `UMAXV`, `SMINV`, `UMINV` via `@rt_sl_across`)**: Used for horizontal lane sums and min/max reductions.

## 2. Why That Problem Is Important

- **Compile-Time Constant Folding & Call Elimination for IEEE 802.3 `CRC32` (`is_c == 0`)**: By inlining `@rt_crc32(..., is_c = 0)` into branchless bit-level polynomial `0xEDB88320` SSA operations (`and`, `sub`, `lshr`, `xor`), both downstream `AArch64IdiomDeconstructPass` (Pass 12) and LLVM `-O2` constant-fold all 7 `crc32b` calls in `f_80077bc00` into a single immediate (`0xcd27b6df`), eliminating 7 external calls and reducing `f_80077bc00` from 284 to 200 x86-64 instructions with 0 `%rsp` spills!
- **Hardware Instruction Parity for `CRC32C` (`is_c == 1`)**: The Castagnoli polynomial (`0x1EDC6F41` / reflected `0x82F63B78`) is bit-for-bit identical to x86-64 SSE4.2 `crc32` (`@llvm.x86.sse42.crc32.*`), lowering to a single 3-cycle `crc32b/w/l/q` instruction.
- **Eliminating `Cpu* %c` Vector Call Barriers**: Replacing `@rt_sl_gen` and `@rt_sl_across` with `@llvm.ctpop.*`, `@llvm.bitreverse.*`, `@llvm.ctlz.*`, and `@llvm.vector.reduce.*` keeps NEON vectors in host XMM registers.

## 3. How the Pass Solves That Problem at a High Level

1. **Target Triple Guard**: Checks that `M.is_x86_64_target()` is true (or `force_enable_` is set).
2. **SSE4.2 `CRC32C` Lowering (`is_c == 1`)**: Rewrites `@rt_crc32(i32 %acc, i64 %val, i32 <1|2|4|8>, i32 1)` to `@llvm.x86.sse42.crc32.32.{8,16,32}` or `@llvm.x86.sse42.crc32.64.64`.
3. **Inline Branchless IEEE 802.3 `CRC32` Lowering (`is_c == 0`)**: Rewrites `@rt_crc32(i32 %acc, i64 %val, i32 <1|2|4|8>, i32 0)` into structured `OpTag::RawIR` instructions performing `8 * bytes` unrolled branchless polynomial steps (`bit = cur & 1; mask = 0 - bit; poly = mask & 0xEDB88320; cur = (cur >> 1) ^ poly`), plus marks `@rt_crc32` `nounwind readnone speculatable willreturn` in `llvm_ir.hpp`.
4. **NEON `CNT` / `RBIT` / `CLZ` & Horizontal Reduction Lowering**: Rewrites `@rt_sl_gen` and `@rt_sl_across` to native LLVM vector intrinsics with `OpTag::CpuRegRead` / `OpTag::CpuRegWrite` on `V0..V31`.

## 4. Detailed Technical Implementation Details

- **Word-Level XOR Identity for Reflected CRC-32**: Because GF(2) shifts of upper accumulator bits (`cur >> 1`) are linear and do not touch bit 0 during earlier byte steps, `emit_crc32_ieee8023` XORs the full 8-, 16-, or 32-bit input word into `acc` upfront before running `8`, `16`, or `32` bit steps (and two 32-bit halves for `bytes == 8`), emitting structured `Instruction`s (`and`, `sub`, `lshr`, `xor`) that `AArch64IdiomDeconstructPass` (Pass 12) evaluates directly at compile time when inputs are constant.

## 5. End-to-End Walkthrough of Representative `llvm::ir` Snippets

### Input AArch64 Instructions (`f_80077bc00` in `main_432_arm64.asm`)
```arm64
0x80077bc4c: 52800c88    mov    w8, #100        ; 'd'
0x80077bc50: 12800009    mov    w9, #-1         ; 0xffffffff
0x80077bc58: 1ac84128    crc32b w8, w9, w8      ; IEEE 802.3 CRC32B
...
0x80077bd00: 1aca4108    crc32b w8, w8, w10     ; 't'
0x80077bd04: 2a2803f6    mvn    w22, w8         ; ~crc -> 0xcd27b6df
```

### Lifted LLVM IR Before `X8664HardwareIntrinsicPass`
```llvm
  %crc80 = call i32 @rt_crc32(i32 %c76, i64 %c79, i32 1, i32 0)
  %c81 = zext i32 %crc80 to i64
  %wp82 = getelementptr inbounds i8, ptr %c, i64 64
  store i64 %c81, ptr %wp82, align 8, !alias.scope !3, !noalias !4
```

### Lowered LLVM IR After `X8664HardwareIntrinsicPass` + `AArch64IdiomDeconstructPass` + `CpuStatePromotionPass`
```llvm
  ; All 7 intermediate CRC32B calls and X8 stores are constant-folded and dead-stripped,
  ; leaving a single immediate store to X22 (`0x80077bd04: mvn w22, w8`):
  ; @pc 0x80077bd04 word 0x2a2803f6
  ; [AArch64IdiomDeconstructPass] collapsed constant chain -> immediate store
  %cwp476 = getelementptr inbounds i8, ptr %c, i64 176
  store i64 3441915615, ptr %cwp476, align 8, !alias.scope !3, !noalias !4
```

## 6. Other Passes That Rely On or Interact With This Pass

- **`AArch64IdiomDeconstructPass` (Pass 12, Downstream)**: Evaluates the structured `trunc`/`and`/`sub`/`lshr`/`xor` instructions emitted by Pass 7's `emit_crc32_ieee8023` when inputs are constant, collapsing entire multi-byte `CRC32` chains into immediate constants and pruning the intermediate SSA instructions.
- **`CpuStatePromotionPass` (Pass 21, Downstream)**: Eliminates all overwritten intermediate register writes (`X8`, `X9`, `X10`) once the `@rt_crc32` call barriers are removed.
