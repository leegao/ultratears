# AArch64-Horizon -> LLVM 21 IR Lifter & Lowering Pipelines

Multi-threaded C++20 AArch64-to-LLVM-IR static recompiler (`horizon2llvm`) built directly on top of **LLVM 21** (`llvm::IRBuilder<llvm::NoFolder>`, `llvm::LLVMContext`, `llvm::Module`, `llvm::Function`, `llvm::BasicBlock`, `llvm::Instruction`, `LLVMCreateDisasm`, and New Pass Manager `default<O2>`), linking directly (`DT_NEEDED`) against `src/horizon2llvm/third-party/llvm/prebuilts/x86-64/libLLVM.so`.

## Architecture & Source Layout

- `CMakeLists.txt`: Configures `horizon2llvm_core`, `horizon2llvm`, `ultratears-passes` plugin, and the `src/horizon2llvm/tests` subproject against `src/horizon2llvm/third-party/llvm/include` and `src/horizon2llvm/third-party/llvm/prebuilts/x86-64/libLLVM.so` (`BUILD_RPATH` set automatically).
- `llvm_backend.hpp` / `llvm_backend.cpp`: Direct (`DT_NEEDED`) `libLLVM.so` backend supporting in-memory `llvm::Module` optimization & code generation (`process_module`), textual `.ll` verification & compilation (`process_ir`), and AArch64 `MCDisassembler` disassembly (`LLVMCreateDisasm` / `LLVMDisasmInstruction`) for `main_XX_arm64.asm` chunk emission.
- `llvm_ir.hpp`: Thin wrapper over `llvm::IRBuilder<llvm::NoFolder>`, `llvm::LLVMContext`, `llvm::Module`, `llvm::Function`, `llvm::BasicBlock`, `llvm::Instruction`, and `llvm::Value`.
- `aarch64_lifter.hpp`: Full ARMv8.0-A (Nintendo Switch Cortex-A57) instruction lifter constructed exclusively via `IRBuilder` calls (`0` raw text `emit_raw` / `emit_inst` calls).
- `passes.hpp`, `passes_llvm_utils.hpp`, `passes.cpp`, and `lowering/pass_*.cpp` (23 files):
  1. `lowering/pass_ultratears_patch.cpp` (`UltraTearsPatchPass`)
  2. `lowering/pass_profile_entry_hook_elim.cpp` (`ProfileGuidedEntryHookElimPass`)
  3. `lowering/pass_nso_rodata_constprop_devirt.cpp` (`NsoRodataConstPropAndDevirtPass`)
  4. `lowering/pass_fpcr_fast_fp_lowering.cpp` (`FPCRFastFPLoweringPass`)
  5. `lowering/pass_simd_pairwise_conversion_inline.cpp` (`SIMDPairwiseAndConversionInlinePass`)
  6. `lowering/pass_aarch64_native_intrinsic.cpp` (`AArch64NativeIntrinsicPass`)
  7. `lowering/pass_x86_64_hardware_intrinsic.cpp` (`X8664HardwareIntrinsicPass`)
  8. `lowering/pass_exclusive_monitor_lse_fastpath.cpp` (`ExclusiveMonitorLSEFastPathPass`)
  9. `lowering/pass_horizon_lowering.cpp` (`HorizonLoweringPass`)
  10. `lowering/pass_horizon_tls_spinwait.cpp` (`HorizonTLSAndSpinWaitPass`)
  11. `lowering/pass_guest_stack_alignment.cpp` (`GuestStackAndAlignmentPass`)
  12. `lowering/pass_aarch64_idiom_deconstruct.cpp` (`AArch64IdiomDeconstructPass`)
  13. `lowering/pass_jump_table_lowering.cpp` (`JumpTableLoweringPass`)
  14. `lowering/pass_shadow_dispatch_table.cpp` (`ShadowDispatchTablePass`)
  15. `lowering/pass_fcmp_predicate_fusion.cpp` (`FCMPPredicateFusionPass`)
  16. `lowering/pass_nzcv_predicate_fusion.cpp` (`NZCVPredicateFusionPass`)
  17. `lowering/pass_nzcv_dead_flag_elim.cpp` (`NZCVDeadFlagElimPass`)
  18. `lowering/pass_link_register_elision.cpp` (`LinkRegisterElisionPass`)
  19. `lowering/pass_tail_call_devirt.cpp` (`TailCallDevirtualizationPass`)
  20. `lowering/pass_aapcs64_abi_contract.cpp` (`AAPCS64ABIContractPass`)
  21. `lowering/pass_cpu_state_promotion.cpp` (`CpuStatePromotionPass`)
  22. `lowering/pass_cross_chunk_leaf_inline.cpp` (`CrossChunkLeafInlinePass`)
  23. `lowering/pass_aarch64_static_nce_abi.cpp` (`AArch64StaticNCEABIPass`)
- `docs/`: Detailed per-pass technical documentation (`docs/pass_*.md` and `docs/README.md`).
- `tests/`: Unit and differential fuzzing test subproject (`tests/CMakeLists.txt`, `tests/main_snippets.hpp`, `tests/test_main_snippets.cpp`, `tests/test_fuzz_differential.cpp`).

## New CLI Flags for Raw `.ll` and Disassembled `.asm` Output

- `--emit-raw` / `--emit-raw-ll` (or `ULTRATEARS_EMIT_RAW_LL=1`): Outputs the lifted, unlowered/unoptimized LLVM IR (with only structural `HorizonLoweringPass` + `JumpTableLoweringPass` so all symbols resolve) for each chunk as `<prefix>_<chunk>_raw.ll` (e.g., `main_000_raw.ll`).
- `--emit-arm64-asm` (or `ULTRATEARS_EMIT_ARM64_ASM=1`): Disassembles every function in each chunk using LLVM's AArch64 `MCDisassembler` (`LLVMCreateDisasm`) and outputs `<prefix>_<chunk>_arm64.asm` (e.g., `main_000_arm64.asm`).
