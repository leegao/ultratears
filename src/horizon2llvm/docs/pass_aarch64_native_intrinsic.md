# Pass 6: `AArch64NativeIntrinsicPass` (`aarch64-native-intrinsic-pass`)

- **Implementation File**: `src/horizon2llvm/pass_aarch64_native_intrinsic.cpp`
- **Header Declaration**: `src/horizon2llvm/passes.hpp` (`ultrs::passes::AArch64NativeIntrinsicPass`)
- **Pipeline Stage**: Stage II — Switch-Specific, x86-64 Devirtualization & ARM64-ism Deconstruction (Pass 6 of 23)
- **Default Tier**: Tier 1 (Safe Local; active automatically when target triple is `aarch64-*` or `arm64-*`)

## 1. What Problem It Is Solving

When compiling lifted Nintendo Switch AArch64 code for an AArch64 host (such as Apple Silicon M-series, Linux ARM64 workstations, or Android/Linux ARM64 handhelds), calling C software emulation helpers for hardware instructions that exist natively on the host CPU—specifically `CRC32*` / `CRC32C*` (`@rt_crc32`), ARMv8 Crypto AES rounds (`AESE`, `AESD`, `AESMC`, `AESIMC` via `@rt_sv_aes`), polynomial multiplication (`PMULL` / `PMULL2` via `@rt_sl_pmull64`), NEON table lookups (`TBL` / `TBX` via `@rt_sv_tbl`), and across-vector horizontal reductions (`ADDV`, `SADDLV`, `UADDLV`, `SMAXV`, `UMAXV`, `SMINV`, `UMINV` via `@rt_sl_across`)—wastes 10x–50x throughput per instruction.

## 2. Why That Problem Is Important

- **Performance on ARM64 Hosts**: A single software `@rt_sv_aes` call executes dozens of table lookups in C and flushes all 32 `V` registers to `Cpu* %c`, whereas `@llvm.aarch64.crypto.aese` compiles to a single 1-cycle `aese v0.16b, v1.16b` instruction! Similarly, `@rt_crc32` software bit-by-bit loops take ~25 instructions per byte vs 1 cycle for `@llvm.aarch64.crc32*`.
- **SSA Register Promotion**: Replacing `@rt_sv_aes`, `@rt_sl_pmull64`, `@rt_sv_tbl`, and `@rt_sl_across` (all of which take `ptr %c`) with `OpTag::CpuRegRead` + `@llvm.aarch64.*` + `OpTag::CpuRegWrite` removes the `Cpu* %c` call barrier so `V0`..`V31` stay in hardware NEON registers across crypto, compression, and hashing loops.

## 3. How the Pass Solves That Problem at a High Level

1. **Target Triple Check**: Checks whether `M.target_triple` contains `"aarch64"` or `"arm64"` (or `force_enable_ == true`). If targeting x86-64, Pass 6 is a no-op and defers to `X8664HardwareIntrinsicPass` (Pass 7).
2. **Intrinsic Substitution via `PassLLVMBuilder`**:
   - **`@rt_crc32(i32 %acc, i64 %val, i32 <1|2|4|8>, i32 <0|1>)`** -> `@llvm.aarch64.crc32{b,h,w,x}` or `@llvm.aarch64.crc32c{b,h,w,x}`.
   - **`@rt_sv_aes(ptr %c, i32 <op>, i32 <d>, i32 <n>)`** -> `@llvm.aarch64.crypto.{aese,aesd,aesmc,aesimc}` on `<16 x i8>`.
   - **`@rt_sl_pmull64(ptr %c, i32 <Q>, i32 <d>, i32 <n>, i32 <m>)`** -> `@llvm.aarch64.neon.pmull64(i64, i64)` returning `<16 x i8>`.
   - **`@rt_sv_tbl(ptr %c, i32 <Q>, i32 0, i32 1, i32 <d>, i32 <n>, i32 <m>)`** -> `@llvm.aarch64.neon.tbl1.v16i8(<16 x i8>, <16 x i8>)`.
   - **`@rt_sl_across(ptr %c, i32 <op>, ...)`** -> `@llvm.aarch64.neon.{saddv,uaddv,saddlv,uaddlv,smaxv,umaxv,sminv,uminv}.*`.
3. Sets `M.uses_aarch64_intrinsics = true` so `Module::serialize()` emits the required `@llvm.aarch64.*` intrinsic declarations.

## 4. Detailed Technical Implementation Details

- **`PMULL` vs `PMULL2` Lane Selection**: For `@rt_sl_pmull64`, when `Q == 0` (`PMULL Vd.1Q, Vn.1D, Vm.1D`), the pass truncates `Vn` and `Vm` (`i128`) directly to `i64`; when `Q == 1` (`PMULL2 Vd.1Q, Vn.2D, Vm.2D`), it first shifts `Vn` and `Vm` right by `64` bits (`lshr i128 ..., 64`) before truncating to `i64` and passing both 64-bit polynomials to `@llvm.aarch64.neon.pmull64`.
- **`AESE`/`AESD` Read-Modify-Write Semantics**: On AArch64, `AESE Vd.16B, Vn.16B` and `AESD Vd.16B, Vn.16B` read both `Vd` and `Vn`, whereas `AESMC Vd.16B, Vn.16B` and `AESIMC Vd.16B, Vn.16B` only read `Vn`. The pass emits `OpTag::CpuRegRead` for both `d` and `n` on `op == 0 || op == 1` and only `n` on `op == 2 || op == 3`.

## 5. End-to-End Walkthrough of Representative `llvm::ir` Snippets

### Input AArch64 Instructions (`CRC32B` + `AESE` + `AESMC`)
```arm64
0x8003fc21c: 1ac04108    crc32b w8, w8, w0
0x8003fc220: 4e284820    aese   v0.16b, v1.16b
0x8003fc224: 4e286800    aesmc  v0.16b, v0.16b
```

### Lifted LLVM IR Before `AArch64NativeIntrinsicPass`
```llvm
  %crc4 = call i32 @rt_crc32(i32 %t2, i64 %r3, i32 1, i32 0)
  call void @rt_sv_aes(ptr %c, i32 0, i32 0, i32 1)
  call void @rt_sv_aes(ptr %c, i32 2, i32 0, i32 0)
```

### Lowered LLVM IR After `AArch64NativeIntrinsicPass`
```llvm
  ; [AArch64NativeIntrinsicPass] hardware CRC32
  %crcv11 = trunc i64 %r3 to i32
  %crc4 = call i32 @llvm.aarch64.crc32b(i32 %t2, i32 %crcv11)
  ...
  ; [AArch64NativeIntrinsicPass] inline @llvm.aarch64.crypto.aese
  %aesd14 = bitcast i128 %avr12 to <16 x i8>
  %aesn15 = bitcast i128 %avr13 to <16 x i8>
  %aesr16 = call <16 x i8> @llvm.aarch64.crypto.aese(<16 x i8> %aesd14, <16 x i8> %aesn15)
  %aesq17 = bitcast <16 x i8> %aesr16 to i128
```

## 6. Other Passes That Rely On or Interact With This Pass

- **`X8664HardwareIntrinsicPass` (Pass 7, Downstream)**: The x86-64 counterpart to Pass 6; handles `CRC32C` via SSE4.2 and NEON horizontal reductions/bit-ops via target-independent LLVM vector intrinsics when targeting x86-64.
- **`CpuStatePromotionPass` (Pass 21, Downstream)**: Promotes the explicit `OpTag::CpuRegRead` / `OpTag::CpuRegWrite` instructions emitted by Pass 6 into SSA `alloca`s.
