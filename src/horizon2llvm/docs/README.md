# UltraTears LLVM 21 IR Lifter & 23-Pass Pipeline Documentation (`src/horizon2llvm/docs/`)

This directory contains the comprehensive technical documentation for each of the **23 LLVM IR lifting and lowering passes** in `src/horizon2llvm/`. Each pass document covers:
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

---

## `main_432` Layered Per-Pass Benchmark Results (`perf/main_432_raw.ll` -> `perf/main_432.o`)

Input chunk `perf/main_432_raw.ll` consists of **1,516 AArch64 instructions** across 5 TOTK `main` functions (`f_80077bc00`, `f_80077be18`, `f_80077c0e4`, `f_80077c180`, `f_80077d084`). All configurations are verified for 100% functional equivalence via 1,250 randomized differential fuzzing executions (`build/src/horizon2llvm_main_432_bench`):

| Layered Configuration | IR Lines | `Cpu` Ld/St | x86-64 Insns | `%rsp` Spills | `Cpu*` Mem Ops | Time (ns) |
| :--- | ---: | ---: | ---: | ---: | ---: | ---: |
| **00. Initial Baseline (pre-opt `main_432.ll`)** | 16,373 | 1,982 | 4,686 | 802 | 1,255 | 540.0 |
| **01. Raw Reference (Unlowered `main_432_raw.ll`)** | 13,309 | 2,725 | 3,352 | 137 | 749 | 298.7 |
| **02. Minimal Structural (No Opt Passes)** | 13,309 | 2,725 | 3,325 | 137 | 723 | 291.5 |
| **03. +Pass 2: `ProfileGuidedEntryHookElimPass`** | 13,259 | 2,715 | 3,291 | 137 | 711 | 305.8 |
| **04. +Pass 4/5: `FPCRFastFP` & `SIMDInline`** | 13,259 | 2,715 | 3,291 | 137 | 711 | 312.5 |
| **05. +Pass 7: `X8664HardwareIntrinsicPass`** | 13,560 | 2,715 | 3,252 | 137 | 713 | 326.1 |
| **06. +Pass 10/11: `TLS` + `GuestStackAlignment`** | 13,560 | 2,715 | 3,252 | 137 | 713 | 315.8 |
| **07. +Pass 12: `AArch64IdiomDeconstructPass`** | 13,178 | 2,715 | 3,252 | 137 | 713 | 279.5 |
| **08. +Pass 14: `ShadowDispatchTablePass`** | 13,205 | 2,715 | 3,272 | 126 | 712 | 313.3 |
| **09. +Pass 15/16/17: `FCMP` + `NZCV` Fusion & DFE** | 10,679 | 2,487 | 2,653 | 89 | 648 | 309.1 |
| **10. +Pass 21: `CpuStatePromotionPass` (Safe Default)** | **8,964** | **1,039** | **2,485** | **80** | **570** | **300.3** |
| **11. +All Passes (`--all-passes`)** | **8,962** | **1,038** | **2,483** | **80** | **569** | **279.5** |

### Per-Function x86-64 Instruction & Spill Breakdown (`main_432_amd64.asm`)

| Function | ARM64 Insns | Initial Baseline x86-64 Insns (`%rsp` Spills) | Raw `.o` x86-64 Insns (`%rsp` Spills) | Optimized Safe Default x86-64 Insns (`%rsp` Spills) | Reduction vs Initial Baseline |
| :--- | ---: | ---: | ---: | ---: | ---: |
| `f_80077bc00` | 134 | 462 (64 spills) | 303 (2 spills) | **201 (0 spills)** | **-56.5% insns (-100% spills)** |
| `f_80077be18` | 179 | 665 (88 spills) | 491 (20 spills) | **421 (12 spills)** | **-36.7% insns (-86.4% spills)** |
| `f_80077c0e4` | 53 | 204 (26 spills) | 145 (4 spills) | **119 (0 spills)** | **-41.7% insns (-100% spills)** |
| `f_80077c180` | 1,000 | 2,943 (624 spills) | 2,051 (111 spills) | **1,499 (68 spills)** | **-49.1% insns (-89.1% spills)** |
| `f_80077d084` | 150 | 412 (0 spills) | 362 (0 spills) | **245 (0 spills)** | **-40.5% insns (0 spills)** |
| **Total (`main_432`)** | **1,516** | **4,686 (802 spills)** | **3,352 (137 spills)** | **2,485 (80 spills)** | **-47.0% insns (-90.0% spills)** |
