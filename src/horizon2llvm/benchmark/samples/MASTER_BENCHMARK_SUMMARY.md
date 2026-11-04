# UltraTears Cross-Sample Master Benchmark Summary (`src/horizon2llvm/benchmark/`)

This summary aggregates **25 benchmark suites** across all 23 lowering passes.

| Sample Suite | Fns | ARM64 Insns | x86-64 Insns (Raw -> Safe -> All) | Ratio vs ARM64 | Est. Common / Longest (ns) | Empirical p50: No-Opt -> Safe -> All (ns) | Speedup (p50) | Detailed Report |
| :--- | ---: | ---: | ---: | ---: | ---: | ---: | ---: | :--- |
| **`main_027_physics`** | 1 | 2337 | 7739 -> 4600 -> **4590** | **1.96x** | 187.8 / 1051.7 | 5.0 -> 5.0 -> **5.0** | **1.00x** | `src/horizon2llvm/benchmark/samples/main_027_physics/results/BENCHMARK_REPORT.md` |
| **`main_029_mempool`** | 1 | 710 | 1868 -> 1258 -> **1258** | **1.77x** | 44.1 / 113.3 | 49.6 -> 35.4 -> **35.4** | **1.40x** | `src/horizon2llvm/benchmark/samples/main_029_mempool/results/BENCHMARK_REPORT.md` |
| **`main_050_renderpass`** | 1 | 2144 | 5278 -> 4213 -> **4202** | **1.96x** | 150.5 / 1163.6 | 205.7 -> 177.6 -> **177.1** | **1.16x** | `src/horizon2llvm/benchmark/samples/main_050_renderpass/results/BENCHMARK_REPORT.md` |
| **`main_067_statickernel`** | 1 | 1410 | 2924 -> 1805 -> **1801** | **1.28x** | 69.8 / 162.8 | 36.0 -> 35.8 -> **34.5** | **1.04x** | `src/horizon2llvm/benchmark/samples/main_067_statickernel/results/BENCHMARK_REPORT.md` |
| **`main_068_ecs`** | 1 | 2608 | 7315 -> 5522 -> **5379** | **2.06x** | 251.8 / 1538.8 | 1404.2 -> 739.1 -> **756.0** | **1.86x** | `src/horizon2llvm/benchmark/samples/main_068_ecs/results/BENCHMARK_REPORT.md` |
| **`main_083_buddy`** | 1 | 1188 | 2845 -> 2196 -> **2196** | **1.85x** | 85.6 / 537.0 | 66.6 -> 62.2 -> **62.2** | **1.07x** | `src/horizon2llvm/benchmark/samples/main_083_buddy/results/BENCHMARK_REPORT.md` |
| **`main_105_alloc`** | 1 | 715 | 1966 -> 1292 -> **1292** | **1.81x** | 45.6 / 167.2 | 40.9 -> 33.1 -> **33.1** | **1.24x** | `src/horizon2llvm/benchmark/samples/main_105_alloc/results/BENCHMARK_REPORT.md` |
| **`main_107_arenabucket`** | 1 | 707 | 1950 -> 1273 -> **1273** | **1.80x** | 44.6 / 115.5 | 44.5 -> 34.5 -> **34.5** | **1.29x** | `src/horizon2llvm/benchmark/samples/main_107_arenabucket/results/BENCHMARK_REPORT.md` |
| **`main_107_buddysplit`** | 1 | 735 | 1949 -> 1329 -> **1329** | **1.81x** | 47.4 / 125.4 | 5.0 -> 5.0 -> **5.0** | **1.00x** | `src/horizon2llvm/benchmark/samples/main_107_buddysplit/results/BENCHMARK_REPORT.md` |
| **`main_107_freelist`** | 1 | 425 | 1018 -> 853 -> **853** | **2.01x** | 56.0 / 253.7 | 68.5 -> 63.8 -> **63.8** | **1.08x** | `src/horizon2llvm/benchmark/samples/main_107_freelist/results/BENCHMARK_REPORT.md` |
| **`main_111_slab`** | 1 | 1476 | 3089 -> 2646 -> **2646** | **1.79x** | 105.6 / 667.7 | 30.1 -> 27.1 -> **27.1** | **1.11x** | `src/horizon2llvm/benchmark/samples/main_111_slab/results/BENCHMARK_REPORT.md` |
| **`main_1163_spatialhash`** | 1 | 1122 | 3336 -> 2395 -> **2395** | **2.13x** | 95.7 / 284.3 | 57.1 -> 54.5 -> **54.5** | **1.05x** | `src/horizon2llvm/benchmark/samples/main_1163_spatialhash/results/BENCHMARK_REPORT.md` |
| **`main_121_ringbuf`** | 1 | 842 | 2224 -> 1766 -> **1766** | **2.10x** | 72.2 / 411.9 | 138.1 -> 135.4 -> **135.4** | **1.02x** | `src/horizon2llvm/benchmark/samples/main_121_ringbuf/results/BENCHMARK_REPORT.md` |
| **`main_121_simd`** | 1 | 696 | 1717 -> 897 -> **897** | **1.29x** | 31.5 / 73.5 | 37.5 -> 26.7 -> **26.7** | **1.40x** | `src/horizon2llvm/benchmark/samples/main_121_simd/results/BENCHMARK_REPORT.md` |
| **`main_123_animblend`** | 1 | 973 | 3098 -> 2011 -> **2007** | **2.06x** | 80.5 / 491.4 | 5.0 -> 5.0 -> **5.0** | **1.00x** | `src/horizon2llvm/benchmark/samples/main_123_animblend/results/BENCHMARK_REPORT.md` |
| **`main_124_scenegraph`** | 1 | 2153 | 5118 -> 4064 -> **4086** | **1.90x** | 294.5 / 1481.3 | 5.0 -> 5.0 -> **5.0** | **1.00x** | `src/horizon2llvm/benchmark/samples/main_124_scenegraph/results/BENCHMARK_REPORT.md` |
| **`main_125_rescache`** | 1 | 682 | 1854 -> 1444 -> **1444** | **2.12x** | 69.5 / 342.2 | 133.7 -> 127.7 -> **127.7** | **1.05x** | `src/horizon2llvm/benchmark/samples/main_125_rescache/results/BENCHMARK_REPORT.md` |
| **`main_136_alloc`** | 1 | 286 | 1001 -> 588 -> **584** | **2.04x** | 41.5 / 565.8 | 5.0 -> 5.0 -> **5.0** | **1.00x** | `src/horizon2llvm/benchmark/samples/main_136_alloc/results/BENCHMARK_REPORT.md` |
| **`main_154_hashmap`** | 1 | 1522 | 3006 -> 2610 -> **2610** | **1.71x** | 108.7 / 714.3 | 94.7 -> 86.9 -> **86.9** | **1.09x** | `src/horizon2llvm/benchmark/samples/main_154_hashmap/results/BENCHMARK_REPORT.md` |
| **`main_163_actor`** | 1 | 974 | 2856 -> 2088 -> **2084** | **2.14x** | 77.1 / 967.4 | 5.0 -> 5.0 -> **5.0** | **1.00x** | `src/horizon2llvm/benchmark/samples/main_163_actor/results/BENCHMARK_REPORT.md` |
| **`main_180_eventengine`** | 1 | 1712 | 4325 -> 3497 -> **3445** | **2.01x** | 155.8 / 834.7 | 152.4 -> 137.8 -> **137.2** | **1.11x** | `src/horizon2llvm/benchmark/samples/main_180_eventengine/results/BENCHMARK_REPORT.md` |
| **`main_300_bvhtree`** | 2 | 973 | 3225 -> 1830 -> **1822** | **1.87x** | 35.0 / 318.9 | 247.1 -> 91.7 -> **90.7** | **2.72x** | `src/horizon2llvm/benchmark/samples/main_300_bvhtree/results/BENCHMARK_REPORT.md` |
| **`main_432`** | 5 | 1516 | 3325 -> 2472 -> **2470** | **1.63x** | 67.1 / 380.7 | 5.0 -> 5.0 -> **5.0** | **1.00x** | `src/horizon2llvm/benchmark/samples/main_432/results/BENCHMARK_REPORT.md` |
| **`main_435_dispatch`** | 1 | 5671 | 16072 -> 11587 -> **11587** | **2.04x** | 4730.1 / 5948.7 | 5.0 -> 5.0 -> **5.0** | **1.00x** | `src/horizon2llvm/benchmark/samples/main_435_dispatch/results/BENCHMARK_REPORT.md` |
| **`main_475_threadpool`** | 1 | 310 | 1071 -> 615 -> **611** | **1.97x** | 50.0 / 241.9 | 34.5 -> 29.1 -> **27.6** | **1.25x** | `src/horizon2llvm/benchmark/samples/main_475_threadpool/results/BENCHMARK_REPORT.md` |
