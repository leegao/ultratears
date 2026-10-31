### Real Hardware GPU Performance Profile (AMD Radeon Graphics (RADV RENOIR) (Vulkan 1.4.335, driver 0x6800008))

| Pipeline Configuration | GPU In-Pass (p50) | In-Pass (avg) | Speedup / Delta | GPU Frame Span (p50) | Offline Opt Time |
| :--- | :--- | :--- | :--- | :--- | :--- |
| **Baseline (Ryujinx Raw)** | 18.183 ms | 18.241 ms | Baseline | 21.071 ms | 0.19s |
| **Pass 1: Strip NoContraction Only** | 18.227 ms | 18.528 ms | **+0.24%** | 21.117 ms | 0.54s |
| **spirv-opt -O Only** | 18.399 ms | 18.498 ms | **+1.19%** | 21.229 ms | 10.65s |
| **Combined: Strip + spirv-opt -O** | 18.118 ms | 18.216 ms | **-0.36%** | 21.014 ms | 10.20s |
| **Strip + ADCE Only** | 18.109 ms | 18.212 ms | **-0.41%** | 21.006 ms | 5.19s |
| **Strip + Const Dedup Only** | 18.319 ms | 18.336 ms | **+0.75%** | 21.206 ms | 4.73s |
| **Strip + Simplify & Redundancy** | 18.461 ms | 18.528 ms | **+1.53%** | 21.333 ms | 7.28s |

#### Heavy Render Pass Breakdown (GPU In-Pass Execution Time, p50):

| Pass ID | Baseline | Strip NoContraction | Combined (-O) | Delta |
| :--- | :--- | :--- | :--- | :--- |
| **22** | 1.685 ms | 1.679 ms | 1.697 ms | **+0.71%** |
| **35** | 1.490 ms | 1.490 ms | 1.492 ms | **+0.13%** |
| **153** | 1.380 ms | 1.346 ms | 1.320 ms | **-4.35%** |
| **183** | 0.888 ms | 0.967 ms | 0.879 ms | **-1.01%** |
| **135** | 0.744 ms | 0.750 ms | 0.746 ms | **+0.27%** |
| **142** | 0.700 ms | 0.715 ms | 0.682 ms | **-2.57%** |
| **157** | 0.571 ms | 0.568 ms | 0.563 ms | **-1.40%** |
| **64** | 0.571 ms | 0.569 ms | 0.567 ms | **-0.70%** |
| **84** | 0.533 ms | 0.535 ms | 0.523 ms | **-1.88%** |
| **185** | 0.524 ms | 0.511 ms | 0.509 ms | **-2.86%** |
| **21** | 0.491 ms | 0.488 ms | 0.490 ms | **-0.20%** |
| **181** | 0.484 ms | 0.485 ms | 0.471 ms | **-2.69%** |
| **136** | 0.475 ms | 0.472 ms | 0.475 ms | **+0.00%** |
| **23** | 0.452 ms | 0.468 ms | 0.486 ms | **+7.52%** |
| **24** | 0.417 ms | 0.414 ms | 0.420 ms | **+0.72%** |
| **152** | 0.401 ms | 0.409 ms | 0.405 ms | **+1.00%** |
| **137** | 0.373 ms | 0.381 ms | 0.378 ms | **+1.34%** |
| **155** | 0.340 ms | 0.346 ms | 0.344 ms | **+1.18%** |
| **182** | 0.335 ms | 0.328 ms | 0.369 ms | **+10.15%** |
| **145** | 0.310 ms | 0.300 ms | 0.306 ms | **-1.29%** |
