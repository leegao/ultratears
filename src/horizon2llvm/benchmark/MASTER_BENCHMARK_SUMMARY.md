# UltraTears Cross-Sample Master Benchmark Summary

| Sample Suite | Fns | ARM64 Insns | x86-64 Insns (Raw -> Safe -> All) | Ratio vs ARM64 | Est. Common / Longest (ns) | Empirical p50: No-Opt -> Safe -> All (ns) | Speedup (p50) | Detailed Report |
| :--- | ---: | ---: | ---: | ---: | ---: | ---: | ---: | :--- |
| **`main_432`** | 5 | 1516 | 3352 -> 2485 -> **2466** | **1.63x** | 47.4 / 463.5 | 366.5 -> 327.0 -> **251.7** | **2.25x** | `src/horizon2llvm/benchmark/main_432/results/BENCHMARK_REPORT.md` |
| **`main_105_alloc`** | 1 | 715 | 1966 -> 1301 -> **1301** | **1.82x** | 46.0 / 1227.2 | 41.4 -> 35.8 -> **35.8** | **1.16x** | `src/horizon2llvm/benchmark/main_105_alloc/results/BENCHMARK_REPORT.md` |
| **`main_159_dispatch`** | 1 | 1266 | 5303 -> 3876 -> **3876** | **3.06x** | 211.0 / 2975.7 | 74.5 -> 65.5 -> **65.5** | **1.14x** | `src/horizon2llvm/benchmark/main_159_dispatch/results/BENCHMARK_REPORT.md` |
| **`main_121_simd`** | 1 | 696 | 1717 -> 984 -> **984** | **1.41x** | 40.7 / 913.1 | 69.8 -> 46.8 -> **46.8** | **1.49x** | `src/horizon2llvm/benchmark/main_121_simd/results/BENCHMARK_REPORT.md` |
| **`main_300_bvhtree`** | 2 | 973 | 3225 -> 1926 -> **1918** | **1.97x** | 55.4 / 892.3 | 5.0 -> 5.0 -> **5.0** | **1.00x** | `src/horizon2llvm/benchmark/main_300_bvhtree/results/BENCHMARK_REPORT.md` |
| **`main_163_actor`** | 1 | 974 | 2856 -> 2185 -> **2181** | **2.24x** | 100.2 / 2133.2 | 73.5 -> 75.2 -> **74.8** | **0.98x** | `src/horizon2llvm/benchmark/main_163_actor/results/BENCHMARK_REPORT.md` |
| **`main_111_slab`** | 1 | 1476 | 3089 -> 2743 -> **2743** | **1.86x** | 120.7 / 2907.7 | 87.5 -> 80.8 -> **80.8** | **1.08x** | `src/horizon2llvm/benchmark/main_111_slab/results/BENCHMARK_REPORT.md` |
| **`main_083_buddy`** | 1 | 1188 | 2845 -> 2289 -> **2289** | **1.93x** | 116.3 / 2360.9 | 51.1 -> 46.6 -> **46.6** | **1.10x** | `src/horizon2llvm/benchmark/main_083_buddy/results/BENCHMARK_REPORT.md` |
| **`main_154_hashmap`** | 1 | 1522 | 3006 -> 2707 -> **2707** | **1.78x** | 120.2 / 2999.1 | 5.0 -> 5.0 -> **5.0** | **1.00x** | `src/horizon2llvm/benchmark/main_154_hashmap/results/BENCHMARK_REPORT.md` |
| **`main_029_mempool`** | 1 | 710 | 1868 -> 1259 -> **1259** | **1.77x** | 51.5 / 1178.4 | 41.9 -> 32.1 -> **32.1** | **1.31x** | `src/horizon2llvm/benchmark/main_029_mempool/results/BENCHMARK_REPORT.md` |
| **`main_121_ringbuf`** | 1 | 842 | 2224 -> 1807 -> **1807** | **2.15x** | 126.0 / 1783.4 | 9.4 -> 6.7 -> **6.7** | **1.40x** | `src/horizon2llvm/benchmark/main_121_ringbuf/results/BENCHMARK_REPORT.md` |
| **`main_475_threadpool`** | 1 | 310 | 1071 -> 617 -> **612** | **1.97x** | 23.0 / 594.1 | 37.7 -> 34.6 -> **34.1** | **1.11x** | `src/horizon2llvm/benchmark/main_475_threadpool/results/BENCHMARK_REPORT.md` |
| **`main_125_rescache`** | 1 | 682 | 1854 -> 1465 -> **1465** | **2.15x** | 93.0 / 1409.2 | 129.4 -> 110.2 -> **110.2** | **1.17x** | `src/horizon2llvm/benchmark/main_125_rescache/results/BENCHMARK_REPORT.md` |
| **`main_123_animblend`** | 1 | 973 | 3098 -> 2045 -> **2042** | **2.10x** | 81.2 / 2166.0 | 4170.9 -> 4167.0 -> **4139.3** | **1.01x** | `src/horizon2llvm/benchmark/main_123_animblend/results/BENCHMARK_REPORT.md` |
| **`main_107_arenabucket`** | 1 | 707 | 1950 -> 1266 -> **1266** | **1.79x** | 44.7 / 1190.8 | 24.0 -> 16.1 -> **16.1** | **1.50x** | `src/horizon2llvm/benchmark/main_107_arenabucket/results/BENCHMARK_REPORT.md` |
| **`main_124_scenegraph`** | 1 | 2153 | 5118 -> 4131 -> **4148** | **1.93x** | 156.1 / 4164.0 | 4432.2 -> 4260.0 -> **4270.1** | **1.04x** | `src/horizon2llvm/benchmark/main_124_scenegraph/results/BENCHMARK_REPORT.md` |
| **`main_180_eventengine`** | 1 | 1712 | 4325 -> 3508 -> **3457** | **2.02x** | 130.2 / 1447.5 | 194.7 -> 166.2 -> **165.8** | **1.17x** | `src/horizon2llvm/benchmark/main_180_eventengine/results/BENCHMARK_REPORT.md` |
| **`main_107_freelist`** | 1 | 425 | 1018 -> 861 -> **861** | **2.03x** | 76.4 / 865.8 | 44.9 -> 42.6 -> **42.6** | **1.05x** | `src/horizon2llvm/benchmark/main_107_freelist/results/BENCHMARK_REPORT.md` |
| **`main_107_buddysplit`** | 1 | 735 | 1949 -> 1338 -> **1338** | **1.82x** | 47.7 / 1272.3 | 83.2 -> 50.0 -> **50.0** | **1.66x** | `src/horizon2llvm/benchmark/main_107_buddysplit/results/BENCHMARK_REPORT.md` |
| **`main_027_physics`** | 1 | 2337 | 7739 -> 4646 -> **4634** | **1.98x** | 189.2 / 3707.5 | 4297.5 -> 4258.7 -> **4242.9** | **1.01x** | `src/horizon2llvm/benchmark/main_027_physics/results/BENCHMARK_REPORT.md` |
| **`main_435_dispatch`** | 1 | 5671 | 16072 -> 51931 -> **51931** | **9.16x** | 2533.6 / 23463.9 | 4654.1 -> 4662.3 -> **4662.3** | **1.00x** | `src/horizon2llvm/benchmark/main_435_dispatch/results/BENCHMARK_REPORT.md` |
| **`main_068_ecs`** | 1 | 2608 | 7315 -> 5497 -> **5415** | **2.08x** | 210.9 / 5624.3 | 4415.0 -> 4375.2 -> **4359.5** | **1.01x** | `src/horizon2llvm/benchmark/main_068_ecs/results/BENCHMARK_REPORT.md` |
| **`main_050_renderpass`** | 1 | 2144 | 5278 -> 4243 -> **4232** | **1.97x** | 151.5 / 4040.2 | 103.4 -> 83.2 -> **83.2** | **1.24x** | `src/horizon2llvm/benchmark/main_050_renderpass/results/BENCHMARK_REPORT.md` |
| **`main_1163_spatialhash`** | 1 | 1122 | 3336 -> 2484 -> **2483** | **2.21x** | 151.8 / 2609.7 | 44.3 -> 37.2 -> **37.9** | **1.17x** | `src/horizon2llvm/benchmark/main_1163_spatialhash/results/BENCHMARK_REPORT.md` |
| **`main_067_statickernel`** | 1 | 1410 | 2924 -> 1957 -> **1953** | **1.39x** | 74.5 / 1849.1 | 42.8 -> 39.9 -> **38.9** | **1.10x** | `src/horizon2llvm/benchmark/main_067_statickernel/results/BENCHMARK_REPORT.md` |
