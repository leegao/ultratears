# UltraTears Cross-Sample Master Benchmark Summary (`src/horizon2llvm/benchmark/`)

This summary aggregates **25 benchmark suites** across all 23 lowering passes.

| Sample Suite | Fns | ARM64 Insns | x86-64 Insns (Raw -> Safe -> All) | Ratio vs ARM64 | Est. Common / Longest (ns) | Empirical p50: No-Opt -> Safe -> All (ns) | Speedup (p50) | Detailed Report |
| :--- | ---: | ---: | ---: | ---: | ---: | ---: | ---: | :--- |
| **`main_027_physics`** | 1 | 2337 | 7739 -> 4154 -> **4144** | **1.77x** | 173.4 / 970.9 | 5.0 -> 5.0 -> **5.0** | **1.00x** | `src/horizon2llvm/benchmark/samples/main_027_physics/results/BENCHMARK_REPORT.md` |
| **`main_029_mempool`** | 1 | 710 | 1868 -> 1131 -> **1131** | **1.59x** | 40.0 / 102.9 | 36.3 -> 27.1 -> **27.1** | **1.34x** | `src/horizon2llvm/benchmark/samples/main_029_mempool/results/BENCHMARK_REPORT.md` |
| **`main_050_renderpass`** | 1 | 2144 | 5278 -> 3747 -> **3737** | **1.74x** | 138.7 / 1071.8 | 145.4 -> 105.6 -> **101.9** | **1.43x** | `src/horizon2llvm/benchmark/samples/main_050_renderpass/results/BENCHMARK_REPORT.md` |
| **`main_067_statickernel`** | 1 | 1410 | 2924 -> 1780 -> **1774** | **1.26x** | 68.4 / 165.9 | 15.2 -> 15.1 -> **14.2** | **1.07x** | `src/horizon2llvm/benchmark/samples/main_067_statickernel/results/BENCHMARK_REPORT.md` |
| **`main_068_ecs`** | 1 | 2608 | 7315 -> 4698 -> **4557** | **1.75x** | 224.8 / 1373.5 | 5.0 -> 5.0 -> **5.0** | **1.00x** | `src/horizon2llvm/benchmark/samples/main_068_ecs/results/BENCHMARK_REPORT.md` |
| **`main_083_buddy`** | 1 | 1188 | 2845 -> 2050 -> **2050** | **1.73x** | 82.6 / 518.2 | 43.3 -> 40.1 -> **40.1** | **1.08x** | `src/horizon2llvm/benchmark/samples/main_083_buddy/results/BENCHMARK_REPORT.md` |
| **`main_105_alloc`** | 1 | 715 | 1966 -> 1158 -> **1158** | **1.62x** | 41.6 / 152.3 | 15.0 -> 13.3 -> **13.3** | **1.13x** | `src/horizon2llvm/benchmark/samples/main_105_alloc/results/BENCHMARK_REPORT.md` |
| **`main_107_arenabucket`** | 1 | 707 | 1950 -> 1131 -> **1131** | **1.60x** | 40.5 / 105.0 | 34.8 -> 26.8 -> **26.8** | **1.30x** | `src/horizon2llvm/benchmark/samples/main_107_arenabucket/results/BENCHMARK_REPORT.md` |
| **`main_107_buddysplit`** | 1 | 735 | 1949 -> 1188 -> **1188** | **1.62x** | 42.9 / 113.5 | 41.9 -> 30.5 -> **30.5** | **1.37x** | `src/horizon2llvm/benchmark/samples/main_107_buddysplit/results/BENCHMARK_REPORT.md` |
| **`main_107_freelist`** | 1 | 425 | 1018 -> 776 -> **776** | **1.83x** | 48.2 / 242.4 | 50.3 -> 45.4 -> **45.4** | **1.11x** | `src/horizon2llvm/benchmark/samples/main_107_freelist/results/BENCHMARK_REPORT.md` |
| **`main_111_slab`** | 1 | 1476 | 3089 -> 2419 -> **2419** | **1.64x** | 99.1 / 626.9 | 106.0 -> 96.2 -> **96.2** | **1.10x** | `src/horizon2llvm/benchmark/samples/main_111_slab/results/BENCHMARK_REPORT.md` |
| **`main_1163_spatialhash`** | 1 | 1122 | 3336 -> 2063 -> **2063** | **1.84x** | 85.4 / 253.7 | 89.7 -> 75.9 -> **75.9** | **1.18x** | `src/horizon2llvm/benchmark/samples/main_1163_spatialhash/results/BENCHMARK_REPORT.md` |
| **`main_121_ringbuf`** | 1 | 842 | 2224 -> 1558 -> **1558** | **1.85x** | 65.5 / 373.9 | 69.3 -> 58.1 -> **58.1** | **1.19x** | `src/horizon2llvm/benchmark/samples/main_121_ringbuf/results/BENCHMARK_REPORT.md` |
| **`main_121_simd`** | 1 | 696 | 1717 -> 856 -> **856** | **1.23x** | 30.4 / 71.0 | 42.0 -> 29.2 -> **29.2** | **1.44x** | `src/horizon2llvm/benchmark/samples/main_121_simd/results/BENCHMARK_REPORT.md` |
| **`main_123_animblend`** | 1 | 973 | 3098 -> 1779 -> **1776** | **1.83x** | 74.0 / 451.9 | 5.0 -> 5.0 -> **5.0** | **1.00x** | `src/horizon2llvm/benchmark/samples/main_123_animblend/results/BENCHMARK_REPORT.md` |
| **`main_124_scenegraph`** | 1 | 2153 | 5118 -> 3490 -> **3467** | **1.61x** | 260.1 / 1308.2 | 5.0 -> 5.0 -> **5.0** | **1.00x** | `src/horizon2llvm/benchmark/samples/main_124_scenegraph/results/BENCHMARK_REPORT.md` |
| **`main_125_rescache`** | 1 | 682 | 1854 -> 1259 -> **1259** | **1.85x** | 63.4 / 312.3 | 164.9 -> 158.5 -> **158.5** | **1.04x** | `src/horizon2llvm/benchmark/samples/main_125_rescache/results/BENCHMARK_REPORT.md` |
| **`main_136_alloc`** | 1 | 286 | 1001 -> 523 -> **519** | **1.81x** | 38.2 / 520.8 | 5.0 -> 5.0 -> **5.0** | **1.00x** | `src/horizon2llvm/benchmark/samples/main_136_alloc/results/BENCHMARK_REPORT.md` |
| **`main_154_hashmap`** | 1 | 1522 | 3006 -> 2539 -> **2539** | **1.67x** | 107.9 / 708.9 | 18.0 -> 19.1 -> **19.1** | **0.94x** | `src/horizon2llvm/benchmark/samples/main_154_hashmap/results/BENCHMARK_REPORT.md` |
| **`main_163_actor`** | 1 | 974 | 2856 -> 1893 -> **1889** | **1.94x** | 71.5 / 896.4 | 5.0 -> 5.0 -> **5.0** | **1.00x** | `src/horizon2llvm/benchmark/samples/main_163_actor/results/BENCHMARK_REPORT.md` |
| **`main_180_eventengine`** | 1 | 1712 | 4325 -> 3102 -> **3052** | **1.78x** | 142.8 / 764.9 | 173.2 -> 126.2 -> **125.2** | **1.38x** | `src/horizon2llvm/benchmark/samples/main_180_eventengine/results/BENCHMARK_REPORT.md` |
| **`main_300_bvhtree`** | 2 | 973 | 3225 -> 1709 -> **1700** | **1.75x** | 32.6 / 292.8 | 308.4 -> 98.7 -> **99.2** | **3.11x** | `src/horizon2llvm/benchmark/samples/main_300_bvhtree/results/BENCHMARK_REPORT.md` |
| **`main_432`** | 5 | 1516 | 3325 -> 2318 -> **2318** | **1.53x** | 54.2 / 364.7 | 5.0 -> 5.0 -> **5.0** | **1.00x** | `src/horizon2llvm/benchmark/samples/main_432/results/BENCHMARK_REPORT.md` |
| **`main_435_dispatch`** | 1 | 5671 | 16072 -> 11322 -> **11322** | **2.00x** | 4650.1 / 5848.1 | 5.0 -> 5.0 -> **5.0** | **1.00x** | `src/horizon2llvm/benchmark/samples/main_435_dispatch/results/BENCHMARK_REPORT.md` |
| **`main_475_threadpool`** | 1 | 310 | 1071 -> 549 -> **545** | **1.76x** | 46.1 / 223.0 | 25.0 -> 22.8 -> **22.9** | **1.09x** | `src/horizon2llvm/benchmark/samples/main_475_threadpool/results/BENCHMARK_REPORT.md` |
