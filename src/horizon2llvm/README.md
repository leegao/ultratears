# AArch64-Horizon -> LLVM 21 IR Lifter, Lowering Pipeline & Benchmark Suite (`src/horizon2llvm`)

Multi-threaded C++17/C++20 AArch64-to-LLVM-IR static recompiler (`horizon2llvm`) and automated per-pass benchmark/fuzzing framework built directly on top of **LLVM 21** (`llvm::IRBuilder<llvm::NoFolder>`, `llvm::LLVMContext`, `llvm::Module`, `llvm::Function`, `llvm::BasicBlock`, `llvm::Instruction`, `LLVMCreateDisasm`, and New Pass Manager `default<O2>`), linking directly (`DT_NEEDED`) against `third-party/llvm/prebuilts/x86-64/libLLVM.so`.

`src/horizon2llvm` is **fully self-contained** and can be built and run either inside the UltraTears monorepo or as a standalone repository.

## 1. Self-Contained Directory Layout

```text
src/horizon2llvm/
├── CMakeLists.txt                  # Standalone + monorepo CMake build configuration
├── Makefile                        # Fast parallel Makefile (works with or without CMake)
├── run_benchmarks.sh               # Self-contained CLI wrapper for benchmarking & fuzzing
├── bench_perf.py                   # Python CLI wrapper for layered pass benchmarking
├── aarch64/                        # AArch64 ISA specification & instruction lifting
│   ├── aarch64_lifter.hpp / .cpp   # ARMv8.0-A (Cortex-A57) -> LLVM 21 IRBuilder lifter
│   ├── abi_aapcs64.hpp             # Specification-derived AAPCS64 ABI bitsets & register maps
│   ├── AArch64CallingConv.td       # Declarative TableGen calling convention specification
│   └── gen_aapcs64.py              # Generator for abi_aapcs64.hpp from TableGen definitions
├── nso_loader.hpp / .cpp           # NSO0 loader, CFG builder & hoisted jump-table resolver
├── llvm_ir.hpp                     # Thin wrapper over llvm::Module / Function / IRBuilder
├── llvm_backend.hpp / .cpp         # Direct libLLVM.so New Pass Manager & MCDisassembler backend
├── passes.hpp / .cpp               # 23-pass pipeline orchestration & PassPipelineConfig
├── passes_llvm_utils.hpp           # Structured PassLLVMBuilder helpers
├── main.cpp                        # CLI driver (--extract-sample, --dump-chunk, --lower-ir, etc.)
├── runtime/                        # Self-contained guest CPU & NEON/FP runtime helpers
│   ├── cpu.h                       # Guest Cpu state struct (X0..X30, SP, NZCV, V0..V31, TLS)
│   ├── rt.h                        # Runtime helper declarations
│   └── simd_rt.c                   # Reference C implementations of @rt_* SIMD/FP helpers
├── lowering/                       # All 23 modularized LLVM IR lowering passes (pass_*.cpp)
├── benchmark/                      # Generalized multi-sample benchmark & differential fuzzer
│   ├── CMakeLists.txt
│   ├── harness_interface.hpp       # ISampleHarness interface, ObservedPathProfile & branch policies
│   ├── benchmark_common.hpp / .cpp # Auto-stub generator, CFG longest-path solver, GenericSampleHarness,
│   │                               # static x86-64 microarchitectural cost model & p50/p75/p90 timer
│   ├── bench_main.cpp              # 25-layer (all 23 individual passes) benchmark runner
│   ├── fuzz_main.cpp               # Branch-policy & path-coverage differential fuzzer
│   ├── MASTER_BENCHMARK_SUMMARY.md # Cross-sample master summary table across all 6 suites
│   ├── main_432/                   # 5 functions (1,516 ARM64 insns): RB-tree & resource registration
│   ├── main_105_alloc/             # f_8001a1590 (715 ARM64 insns): #1 hottest large function (13,102 callers)
│   ├── main_159_dispatch/          # f_8002824a0 (1,266 ARM64 insns): 189 backedges, 10 switch jump tables
│   ├── main_121_simd/              # f_8001d2a5c (696 ARM64 insns): 107 NEON SIMD/FP insns + jump table
│   ├── main_300_bvhtree/           # f_8004e71b0 + f_8004e8eec (973 ARM64 insns): BVH spatial traversal
│   └── main_163_actor/             # f_80029e418 (974 ARM64 insns): 87 backedges, 38 calls, LL/SC refcounting
├── tests/                          # 24 unit test suites + 22-function differential fuzzing suite
│   ├── CMakeLists.txt
│   ├── main_snippets.hpp
│   ├── test_main_snippets.cpp
│   └── test_fuzz_differential.cpp
└── docs/                           # Per-pass technical documentation (pass_*.md & README.md)
```

## 2. Building `horizon2llvm`, Tests, Fuzzer & Benchmark Suite

### Option A: Using `make` (Zero CMake Dependency, Works Standalone or in Monorepo)

```bash
# Build horizon2llvm, lifter_unit_tests, lifter_fuzz_diff_tests, lifter_benchmark, and lifter_fuzz
make -C src/horizon2llvm -j4 all

# Run unit tests (24 suites) + differential fuzzing tests (22 functions, 11,000 native x86-64 runs)
make -C src/horizon2llvm tests

# Run differential fuzzing across all 6 benchmark sample suites (and all branch policies)
make -C src/horizon2llvm fuzz-all

# Run the 25-layer (all 23 individual passes) benchmark across all 6 sample suites
make -C src/horizon2llvm bench-all
```

### Option B: Using CMake (Standalone or Monorepo)

```bash
cmake -S src/horizon2llvm -B build/horizon2llvm -DCMAKE_BUILD_TYPE=Release
cmake --build build/horizon2llvm -j4
ctest --test-dir build/horizon2llvm --output-on-failure
```

### Option C: Using `run_benchmarks.sh` or `bench_perf.py`

```bash
# Run single sample (defaults to main_432) or all 6 hot & large sample suites:
./src/horizon2llvm/run_benchmarks.sh --all-samples --bench-iters 3200

# Benchmark an arbitrary extracted .ll file using GenericSampleHarness & auto-generated stubs:
./build/tools/lifter_benchmark --sample-ll path/to/sample.ll --arm64-asm path/to/sample_arm64.asm
```

## 3. Extracting New Benchmark Samples from an NSO Binary

`horizon2llvm` includes built-in sample extraction that emits both the unlowered reference LLVM IR (`sample.ll`) and LLVM `MCDisassembler` AArch64 reference assembly (`sample_arm64.asm`):

```bash
# Extract one or more functions by guest PC into a ready-to-run benchmark sample directory:
./build/tools/horizon2llvm main data/exefs/main 0x800000000 /tmp/out \
    --extract-sample src/horizon2llvm/benchmark/my_sample \
    --dump-fn 0x8001a1590 --dump-fn 0x8001d2a5c

# Immediately auto-generate C stubs (auto_stubs.c + STUB_ANALYSIS.md), fuzz, and benchmark:
./build/tools/lifter_fuzz --sample-dir src/horizon2llvm/benchmark/my_sample
./build/tools/lifter_benchmark --sample-dir src/horizon2llvm/benchmark/my_sample
```

## 4. Cross-Sample Master Benchmark Summary (All 6 Suites)

All 6 benchmark suites are verified with 100% differential execution equivalence (`Raw Reference` vs `Safe Default` vs `All Passes`) and timed using lockstep rotating micro-batches reporting `p50 / p75 / p90` percentiles:

| Sample Suite | Fns | ARM64 Insns | x86-64 Insns (Raw -> Safe -> All) | Ratio vs ARM64 | Est. Common / Longest (ns) | Empirical p50: No-Opt -> Safe -> All (ns) | Speedup (p50) | Detailed Report |
| :--- | ---: | ---: | ---: | ---: | ---: | ---: | ---: | :--- |
| **`main_432`** | 5 | 1,516 | 3,352 -> 2,485 -> **2,466** | **1.63x** | 47.4 / 463.5 | 370.3 -> 311.0 -> **229.8** | **2.41x** *(vs Orig 554.3 ns)* | `benchmark/main_432/results/BENCHMARK_REPORT.md` |
| **`main_105_alloc`** | 1 | 715 | 1,966 -> 1,301 -> **1,301** | **1.82x** | 45.5 / 1226.7 | 43.6 -> 35.6 -> **35.6** | **1.22x** | `benchmark/main_105_alloc/results/BENCHMARK_REPORT.md` |
| **`main_159_dispatch`** | 1 | 1,266 | 5,303 -> 3,876 -> **3,876** | **3.06x** | 211.1 / 2975.6 | 76.3 -> 71.8 -> **71.8** | **1.06x** | `benchmark/main_159_dispatch/results/BENCHMARK_REPORT.md` |
| **`main_121_simd`** | 1 | 696 | 1,717 -> 984 -> **984** | **1.41x** | 40.7 / 913.1 | 86.3 -> 58.1 -> **58.1** | **1.49x** | `benchmark/main_121_simd/results/BENCHMARK_REPORT.md` |
| **`main_300_bvhtree`** | 2 | 973 | 3,225 -> 1,926 -> **1,918** | **1.97x** | 55.4 / 892.2 | 51.6 -> 49.1 -> **48.8** | **1.06x** | `benchmark/main_300_bvhtree/results/BENCHMARK_REPORT.md` |
| **`main_163_actor`** | 1 | 974 | 2,856 -> 2,185 -> **2,181** | **2.24x** | 99.9 / 2133.1 | 129.8 -> 131.5 -> **123.1** | **1.05x** | `benchmark/main_163_actor/results/BENCHMARK_REPORT.md` |
