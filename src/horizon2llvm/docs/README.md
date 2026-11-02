# UltraTears LLVM 21 IR Lifter, 23-Pass Pipeline & Multi-Sample Benchmark Documentation (`src/horizon2llvm/docs/`)

This directory contains the comprehensive technical documentation for each of the **23 LLVM IR lifting and lowering passes** in `src/horizon2llvm/` as well as the generalized 25-layer per-pass benchmark and differential fuzzing framework in `src/horizon2llvm/benchmark/`. Each pass document covers:
1. **What problem the pass solves**
2. **Why that problem is important** (correctness, Horizon OS virtualization/emulation, SSA register promotion, and native x86-64/ARM64 performance)
3. **How the pass solves that problem at a high level**
4. **Detailed technical implementation details** (`llvm::IRBuilder<llvm::NoFolder>`, `PassLLVMBuilder`, invariants, and edge cases)
5. **An end-to-end walkthrough of representative `llvm::ir` snippets** being lifted or lowered through the pass
6. **Pass dependencies and pipeline interactions**

## Pass Index by Pipeline Stage

### Stage I — Game Patching & Entry Cleanup
1. [`pass_ultratears_patch.md`](pass_ultratears_patch.md) — `UltraTearsPatchPass` (`src/horizon2llvm/lowering/pass_ultratears_patch.cpp`)
2. [`pass_profile_entry_hook_elim.md`](pass_profile_entry_hook_elim.md) — `ProfileGuidedEntryHookElimPass` (`src/horizon2llvm/lowering/pass_profile_entry_hook_elim.cpp`)

### Stage II — Switch-Specific, x86-64 Devirtualization & ARM64-ism Deconstruction
3. [`pass_nso_rodata_constprop_devirt.md`](pass_nso_rodata_constprop_devirt.md) — `NsoRodataConstPropAndDevirtPass` (`src/horizon2llvm/lowering/pass_nso_rodata_constprop_devirt.cpp`)
4. [`pass_fpcr_fast_fp_lowering.md`](pass_fpcr_fast_fp_lowering.md) — `FPCRFastFPLoweringPass` (`src/horizon2llvm/lowering/pass_fpcr_fast_fp_lowering.cpp`)
5. [`pass_simd_pairwise_conversion_inline.md`](pass_simd_pairwise_conversion_inline.md) — `SIMDPairwiseAndConversionInlinePass` (`src/horizon2llvm/lowering/pass_simd_pairwise_conversion_inline.cpp`)
6. [`pass_aarch64_native_intrinsic.md`](pass_aarch64_native_intrinsic.md) — `AArch64NativeIntrinsicPass` (`src/horizon2llvm/lowering/pass_aarch64_native_intrinsic.cpp`)
7. [`pass_x86_64_hardware_intrinsic.md`](pass_x86_64_hardware_intrinsic.md) — `X8664HardwareIntrinsicPass` (`src/horizon2llvm/lowering/pass_x86_64_hardware_intrinsic.cpp`)
8. [`pass_exclusive_monitor_lse_fastpath.md`](pass_exclusive_monitor_lse_fastpath.md) — `ExclusiveMonitorLSEFastPathPass` (`src/horizon2llvm/lowering/pass_exclusive_monitor_lse_fastpath.cpp`)
9. [`pass_horizon_lowering.md`](pass_horizon_lowering.md) — `HorizonLoweringPass` (`src/horizon2llvm/lowering/pass_horizon_lowering.cpp`)
10. [`pass_horizon_tls_spinwait.md`](pass_horizon_tls_spinwait.md) — `HorizonTLSAndSpinWaitPass` (`src/horizon2llvm/lowering/pass_horizon_tls_spinwait.cpp`)
11. [`pass_guest_stack_alignment.md`](pass_guest_stack_alignment.md) — `GuestStackAndAlignmentPass` (`src/horizon2llvm/lowering/pass_guest_stack_alignment.cpp`)
12. [`pass_aarch64_idiom_deconstruct.md`](pass_aarch64_idiom_deconstruct.md) — `AArch64IdiomDeconstructPass` (`src/horizon2llvm/lowering/pass_aarch64_idiom_deconstruct.cpp`)

### Stage III — Control-Flow, Indirect Dispatch & Integer/FP Flag Predicate Fusion
13. [`pass_jump_table_lowering.md`](pass_jump_table_lowering.md) — `JumpTableLoweringPass` (`src/horizon2llvm/lowering/pass_jump_table_lowering.cpp`)
14. [`pass_shadow_dispatch_table.md`](pass_shadow_dispatch_table.md) — `ShadowDispatchTablePass` (`src/horizon2llvm/lowering/pass_shadow_dispatch_table.cpp`)
15. [`pass_fcmp_predicate_fusion.md`](pass_fcmp_predicate_fusion.md) — `FCMPPredicateFusionPass` (`src/horizon2llvm/lowering/pass_fcmp_predicate_fusion.cpp`)
16. [`pass_nzcv_predicate_fusion.md`](pass_nzcv_predicate_fusion.md) — `NZCVPredicateFusionPass` (`src/horizon2llvm/lowering/pass_nzcv_predicate_fusion.cpp`)
17. [`pass_nzcv_dead_flag_elim.md`](pass_nzcv_dead_flag_elim.md) — `NZCVDeadFlagElimPass` (`src/horizon2llvm/lowering/pass_nzcv_dead_flag_elim.cpp`)

### Stage IV — ABI Devirtualization, Register Promotion & Cross-Chunk Inlining
18. [`pass_link_register_elision.md`](pass_link_register_elision.md) — `LinkRegisterElisionPass` (`src/horizon2llvm/lowering/pass_link_register_elision.cpp`)
19. [`pass_tail_call_devirt.md`](pass_tail_call_devirt.md) — `TailCallDevirtualizationPass` (`src/horizon2llvm/lowering/pass_tail_call_devirt.cpp`)
20. [`pass_aapcs64_abi_contract.md`](pass_aapcs64_abi_contract.md) — `AAPCS64ABIContractPass` (`src/horizon2llvm/lowering/pass_aapcs64_abi_contract.cpp`)
21. [`pass_cpu_state_promotion.md`](pass_cpu_state_promotion.md) — `CpuStatePromotionPass` (`src/horizon2llvm/lowering/pass_cpu_state_promotion.cpp`)
22. [`pass_cross_chunk_leaf_inline.md`](pass_cross_chunk_leaf_inline.md) — `CrossChunkLeafInlinePass` (`src/horizon2llvm/lowering/pass_cross_chunk_leaf_inline.cpp`)
23. [`pass_aarch64_static_nce_abi.md`](pass_aarch64_static_nce_abi.md) — `AArch64StaticNCEABIPass` (`src/horizon2llvm/lowering/pass_aarch64_static_nce_abi.cpp`)

## All-23-Pass Layered Benchmark Results on `main_432`

Input chunk `src/horizon2llvm/benchmark/main_432/sample.ll` consists of **1,516 AArch64 instructions** across 5 TOTK `main` functions (`f_80077bc00`, `f_80077be18`, `f_80077c0e4`, `f_80077c180`, `f_80077d084`). All configurations are verified for 100% functional equivalence via differential fuzzing across all 8 branch-sensitive stub policies (`lifter_fuzz`), and timed in lockstep rotating micro-batches (`lifter_benchmark`):

| Layered Configuration | IR Lines | `Cpu` Ld/St | ARM64 Insns | x86-64 Insns | Ratio vs ARM64 | `%rsp` Spills | `Cpu*` Mem Ops | Est. Common / Longest (ns) | Latency p50 / p75 / p90 (ns) | Speedup (p50) |
| :--- | ---: | ---: | ---: | ---: | ---: | ---: | ---: | ---: | ---: | ---: |
| **00. Initial Baseline (orig `baseline.ll`)** | 16,373 | 1,982 | 1,516 | 4,686 | 3.09x | 802 | 1,255 | 80.2 / 833.1 | **554.3** / 563.7 / 568.9 | **1.00x** |
| **00. Raw Reference (Unlowered `sample.ll`)** | 13,309 | 2,725 | 1,516 | 3,352 | 2.21x | 137 | 749 | 58.6 / 553.6 | **361.4** / 368.9 / 373.4 | **1.53x** |
| **01. +Pass 01: `UltraTearsPatch` (Minimal No-Opt)** | 13,309 | 2,725 | 1,516 | 3,325 | 2.19x | 137 | 723 | 57.3 / 552.3 | **370.3** / 373.6 / 375.6 | **1.50x** |
| **02. +Pass 02: `ProfileGuidedEntryHookElim`** | 13,259 | 2,715 | 1,516 | 3,291 | 2.17x | 137 | 711 | 56.0 / 546.1 | **362.0** / 368.0 / 371.6 | **1.53x** |
| **03. +Pass 03: `NsoRodataConstPropAndDevirt`** | 13,259 | 2,715 | 1,516 | 3,291 | 2.17x | 137 | 711 | 56.0 / 546.0 | **362.4** / 369.6 / 372.8 | **1.53x** |
| **04. +Pass 04: `FPCRFastFPLowering`** | 13,259 | 2,715 | 1,516 | 3,291 | 2.17x | 137 | 711 | 56.0 / 546.0 | **362.4** / 369.6 / 372.8 | **1.53x** |
| **05. +Pass 05: `SIMDPairwiseAndConversionInline`** | 13,259 | 2,715 | 1,516 | 3,291 | 2.17x | 137 | 711 | 56.0 / 546.0 | **362.4** / 369.6 / 372.8 | **1.53x** |
| **06. +Pass 06: `AArch64NativeIntrinsic` (HostGated)** | 13,259 | 2,715 | 1,516 | 3,291 | 2.17x | 137 | 711 | 56.0 / 546.0 | **362.4** / 369.6 / 372.8 | **1.53x** |
| **07. +Pass 07: `X8664HardwareIntrinsic`** | 13,560 | 2,715 | 1,516 | 3,252 | 2.15x | 137 | 713 | 53.8 / 543.9 | **355.4** / 361.6 / 364.3 | **1.56x** |
| **08. +Pass 08: `ExclusiveMonitorLSEFastPath`** | 13,560 | 2,715 | 1,516 | 3,252 | 2.15x | 137 | 713 | 53.8 / 543.9 | **355.4** / 361.6 / 364.3 | **1.56x** |
| **09. +Pass 09: `HorizonLowering` (System Insns)** | 13,560 | 2,715 | 1,516 | 3,252 | 2.15x | 137 | 713 | 53.8 / 543.9 | **355.4** / 361.6 / 364.3 | **1.56x** |
| **10. +Pass 10: `HorizonTLSAndSpinWait`** | 13,560 | 2,715 | 1,516 | 3,252 | 2.15x | 137 | 713 | 53.8 / 543.9 | **355.4** / 361.6 / 364.3 | **1.56x** |
| **11. +Pass 11: `GuestStackAndAlignment`** | 13,560 | 2,715 | 1,516 | 3,252 | 2.15x | 137 | 713 | 53.8 / 543.9 | **358.4** / 366.4 / 370.3 | **1.55x** |
| **12. +Pass 12: `AArch64IdiomDeconstruct`** | 13,179 | 2,715 | 1,516 | 3,252 | 2.15x | 137 | 713 | 53.8 / 543.9 | **355.5** / 364.2 / 366.1 | **1.56x** |
| **13. +Pass 13: `JumpTableLowering`** | 13,179 | 2,715 | 1,516 | 3,252 | 2.15x | 137 | 713 | 53.8 / 543.9 | **355.5** / 364.2 / 366.1 | **1.56x** |
| **14. +Pass 14: `ShadowDispatchTable`** | 13,206 | 2,715 | 1,516 | 3,272 | 2.16x | 126 | 712 | 54.1 / 546.5 | **358.7** / 365.1 / 367.5 | **1.55x** |
| **15. +Pass 15: `FCMPPredicateFusion`** | 13,206 | 2,715 | 1,516 | 3,272 | 2.16x | 126 | 712 | 54.1 / 546.5 | **358.7** / 365.1 / 367.5 | **1.55x** |
| **16. +Pass 16: `NZCVPredicateFusion`** | 12,087 | 2,560 | 1,516 | 3,448 | 2.27x | 133 | 694 | 55.3 / 566.2 | **364.4** / 373.0 / 377.0 | **1.52x** |
| **17. +Pass 17: `NZCVDeadFlagElim`** | 10,680 | 2,487 | 1,516 | 2,653 | 1.75x | 89 | 648 | 49.7 / 493.5 | **326.4** / 332.3 / 334.0 | **1.70x** |
| **18. +Pass 18: `LinkRegisterElision`** | 10,678 | 2,486 | 1,516 | 2,650 | 1.75x | 89 | 647 | 49.7 / 493.1 | **327.5** / 331.2 / 333.6 | **1.69x** |
| **19. +Pass 19: `TailCallDevirtualization`** | 10,678 | 2,486 | 1,516 | 2,650 | 1.75x | 89 | 647 | 49.7 / 493.1 | **327.5** / 331.2 / 333.6 | **1.69x** |
| **20. +Pass 20: `AAPCS64ABIContract`** | 10,678 | 2,486 | 1,516 | 2,650 | 1.75x | 89 | 647 | 49.7 / 493.1 | **327.5** / 331.2 / 333.6 | **1.69x** |
| **21a. +Pass 21: `CpuStatePromotion` (Safe Default)** | 7,747 | 1,039 | 1,516 | 2,485 | 1.64x | 80 | 570 | 47.7 / 466.5 | **311.0** / 316.3 / 330.5 | **1.78x** |
| **21b. +Pass 21: `CpuStatePromotion` (With High-Risk)** | 7,744 | 1,038 | 1,516 | 2,483 | 1.64x | 80 | 569 | 47.6 / 466.1 | **311.6** / 317.3 / 322.5 | **1.78x** |
| **22. +Pass 22: `CrossChunkLeafInline`** | 7,827 | 1,044 | 1,516 | 2,466 | 1.63x | 82 | 540 | 47.4 / 463.5 | **229.8** / 238.0 / 242.4 | **2.41x** |
| **23. +Pass 23: `AArch64StaticNCEABI` (`--all-passes`)** | 7,827 | 1,044 | 1,516 | 2,466 | 1.63x | 82 | 540 | 47.4 / 463.5 | **229.8** / 238.0 / 242.4 | **2.41x** |

## Cross-Sample Master Summary (Hot & Large Extracted Suites)

| Sample Suite | Fns | ARM64 Insns | x86-64 Insns (Raw -> Safe -> All) | Ratio vs ARM64 | Est. Common / Longest (ns) | Empirical p50: No-Opt -> Safe -> All (ns) | Speedup (p50) |
| :--- | ---: | ---: | ---: | ---: | ---: | ---: | ---: |
| **`main_432`** | 5 | 1,516 | 3,352 -> 2,485 -> **2,466** | **1.63x** | 47.4 / 463.5 | 370.3 -> 311.0 -> **229.8** | **2.41x** |
| **`main_105_alloc`** | 1 | 715 | 1,966 -> 1,301 -> **1,301** | **1.82x** | 45.5 / 1226.7 | 43.6 -> 35.6 -> **35.6** | **1.22x** |
| **`main_159_dispatch`** | 1 | 1,266 | 5,303 -> 3,876 -> **3,876** | **3.06x** | 211.1 / 2975.6 | 76.3 -> 71.8 -> **71.8** | **1.06x** |
| **`main_121_simd`** | 1 | 696 | 1,717 -> 984 -> **984** | **1.41x** | 40.7 / 913.1 | 86.3 -> 58.1 -> **58.1** | **1.49x** |
| **`main_300_bvhtree`** | 2 | 973 | 3,225 -> 1,926 -> **1,918** | **1.97x** | 55.4 / 892.2 | 51.6 -> 49.1 -> **48.8** | **1.06x** |
| **`main_163_actor`** | 1 | 974 | 2,856 -> 2,185 -> **2,181** | **2.24x** | 99.9 / 2133.1 | 129.8 -> 131.5 -> **123.1** | **1.05x** |
