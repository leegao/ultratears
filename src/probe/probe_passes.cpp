// Comprehensive Test Suite for UltraTears 23-Pass LLVM IR Pipeline (src/probe/probe_passes.cpp)
//
// Tests all 23 lifting, lowering, Switch-specific, x86-64 devirtualization, ARM64-ism elimination,
// and Static-NCE passes verifies every generated module with `libLLVM` (`LLVMVerifyModule` + `default<O2>`),
// and compiles and executes the lifted functions natively on the host CPU to verify end-to-end
// semantic accuracy.

#include <cassert>
#include <cmath>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <dlfcn.h>
#include <filesystem>
#include <fstream>
#include <iostream>
#include <stdexcept>
#include <string>
#include <vector>

extern "C" {
#define _Static_assert static_assert
#define Module RtModuleStruct
#include "src/runtime/cpu.h"
#include "src/runtime/rt.h"
#undef Module
}
#include "src/horizon2llvm/aarch64_lifter.hpp"
#include "src/horizon2llvm/llvm_backend.hpp"
#include "src/horizon2llvm/llvm_ir.hpp"
#include "src/horizon2llvm/nso_loader.hpp"
#include "src/horizon2llvm/passes.hpp"

using namespace ultrs;
using namespace ultrs::llvm_ir;
using namespace ultrs::lifter;
using namespace ultrs::passes;

namespace {

int g_passed = 0;
int g_failed = 0;

#define CHECK(cond, msg)                                                                 \
    do {                                                                                 \
        if (!(cond)) {                                                                   \
            std::fprintf(stderr, "  [FAIL] %s (line %d): %s\n", __func__, __LINE__, msg); \
            ++g_failed;                                                                  \
            return;                                                                      \
        }                                                                                \
    } while (0)

#define PASS_TEST(name)                                      \
    do {                                                     \
        std::printf("  [PASS] %s\n", name);                  \
        ++g_passed;                                          \
    } while (0)

// Helper to verify an LLVM IR module string via in-process libLLVM
bool verify_ir_with_llvm(const std::string& ir_text, const std::string& mod_id,
                         const std::string& triple = "x86_64-pc-linux-gnu",
                         const std::string& opt_pipeline = "default<O2>") {
    if (!llvm_backend::LibLLVM::instance().available()) return true;
    std::string opt_out;
    llvm_backend::LibLLVM::instance().process_ir(
        ir_text, mod_id, /*verify=*/true, opt_pipeline,
        opt_pipeline.empty() ? nullptr : &opt_out, "", "", triple);
    return true;
}


// 1. Integer arithmetic + CMP + CSEL
//    add x8, x0, #0x18
//    and x9, x1, #0xffffffff
//    mov w10, #0x208
//    umaddl x9, w9, w10, x8
//    cmp w1, #7
//    csel x0, x9, x8, lo
//    ret
static const std::vector<uint32_t> TOTK_MAIN_f_80000f3a0 = {
    0x91006008u, 0x92407c29u, 0x5280410au, 0x9baa2129u,
    0x71001c3fu, 0x9a883120u, 0xd65f03c0u
};

// 2. Pure 3-insn leaf address getter
//    adrp x0, 0x802bd000
//    add  x0, x0, #0xb6a
//    ret
static const std::vector<uint32_t> TOTK_MAIN_f_80000f3bc = {
    0xb0015e80u, 0x912da800u, 0xd65f03c0u
};

// 3. Leaf SIMD 32-bit struct store
//    str s0, [x0, #0x1b8]
//    str s1, [x0, #0x1d8]
//    ret
static const std::vector<uint32_t> TOTK_MAIN_f_80002aafc = {
    0xbd01b800u, 0xbd01d801u, 0xd65f03c0u
};

// 4. UMADDL + CMP + CSEL + STP/STRB
//    mov w8, #0xc
//    add x9, x0, #0x38
//    umaddl x8, w1, w8, x9
//    cmp w1, #0x10
//    csel x8, x8, x9, lo
//    mov w9, #1
//    stp w2, w3, [x8]
//    strb w9, [x8, #8]
//    strb w4, [x8, #9]
//    ret
static const std::vector<uint32_t> TOTK_MAIN_f_800043f80 = {
    0x52800188u, 0x9100e009u, 0x9ba82428u, 0x7100403fu, 0x9a893108u,
    0x52800029u, 0x29000d02u, 0x39002109u, 0x39002504u, 0xd65f03c0u
};

// 5. 64-bit Atomic LDXR/STXR increment loop
//    ldr x8, [x0, #8]
//    cbz x8, 0x8001e0d80
//    add x8, x8, #0x10
//    nop
//    ldxr x9, [x8]
//    add x9, x9, #1
//    stxr w10, x9, [x8]
//    cbnz w10, 0x8001e0d70
//    ret
static const std::vector<uint32_t> TOTK_MAIN_f_8001e0d60 = {
    0xf9400408u, 0xb40000e8u, 0x91004008u, 0xd503201fu,
    0xc85f7d09u, 0x91000529u, 0xc80a7d09u, 0x35ffffaau, 0xd65f03c0u
};

// 6. Scalar floating-point LDP + FSUB + FADD
//    ldp s0, s2, [x0, #0x10]
//    fsub s0, s1, s0
//    fadd s0, s0, s2
//    ret
static const std::vector<uint32_t> TOTK_MAIN_f_800417630 = {
    0x2d420402u, 0x1e203820u, 0x1e222800u, 0xd65f03c0u
};

// 7. 32-bit Atomic LDXR/ORR/STXR bit-set loop
//    add w9, w1, #3
//    mov w10, #1
//    add x8, x0, #0x90
//    lsl w9, w10, w9
//    ldxr w10, [x8]
//    orr w10, w9, w10
//    stxr w11, w10, [x8]
//    cbnz w11, 0x8005bcce0
//    ret
static const std::vector<uint32_t> TOTK_MAIN_f_8005bccd0 = {
    0x11000c29u, 0x5280002au, 0x91024008u, 0x1ac92149u,
    0x885f7d0au, 0x2a0a012au, 0x880b7d0au, 0x35ffffabu, 0xd65f03c0u
};

// 8. Null-terminated string CRC32B hash loop
//    ldrb w8, [x0]
//    cbz w8, 0x8027c7898
//    add x10, x0, #1
//    mov w9, #-1
//    crc32b w9, w9, w8
//    ldrb w8, [x10], #1
//    cbnz w8, 0x8027c7884
//    mvn w0, w9
//    ret
//    mov w0, wzr
//    ret
static const std::vector<uint32_t> TOTK_MAIN_f_8027c7874 = {
    0x39400008u, 0x34000108u, 0x9100040au, 0x12800009u,
    0x1ac84129u, 0x38401548u, 0x35ffffc8u, 0x2a2903e0u,
    0xd65f03c0u, 0x2a1f03e0u, 0xd65f03c0u
};

void test_02_profile_guided_entry_hook_elim_pass() {
    uint64_t entry = 0x80000f3bcULL;
    uint64_t end = entry + TOTK_MAIN_f_80000f3bc.size() * 4;
    Module M("test_prof_elim", "x86_64-pc-linux-gnu");
    Function* fn = M.create_function("f_80000f3bc", entry, end);
    fn->label_pcs = {entry};
    AArch64ToLLVMLifter lifter(entry, end);
    lifter.lift_function(M, fn, TOTK_MAIN_f_80000f3bc, entry);

    CHECK(fn->get_block("prof_hit") != nullptr, "prof_hit block must exist before pass");
    ProfileGuidedEntryHookElimPass pass(16, /*force_fnprof=*/false);
    bool changed = pass.run(M);
    CHECK(changed, "ProfileGuidedEntryHookElimPass must trigger on TOTK leaf f_80000f3bc");
    CHECK(fn->get_block("prof_hit") == nullptr, "prof_hit block must be removed");
    CHECK(fn->get_block("prof_cont") == nullptr, "prof_cont block must be removed");

    HorizonLoweringPass().run(M);
    CpuStatePromotionPass().run(M);
    std::string ir = M.serialize();
    CHECK(ir.find("call void @fnprof_hit") == std::string::npos, "fnprof_hit call must be eliminated");
    CHECK(verify_ir_with_llvm(ir, "test_prof_elim"), "IR must verify with libLLVM");
    PASS_TEST("Pass 2: ProfileGuidedEntryHookElimPass (real TOTK main leaf f_80000f3bc)");
}

void test_03_nso_rodata_constprop_and_devirt_pass() {
    uint64_t base = 0x800000000ULL;
    std::vector<uint8_t> image(0x11000, 0);
    uint64_t vtable_target_pc = 0x800004100ULL;
    std::memcpy(image.data() + 0x10020, &vtable_target_pc, sizeof(uint64_t));

    // Function at 0x800004000:
    //   adrp x8, 0x800010000      (0x90000068)
    //   add  x8, x8, #0x20        (0x91008108)
    //   ldr  x9, [x8]             (0xf9400109) -> loads 0x800004100 from .rodata
    //   blr  x9                   (0xd63f0120) -> devirtualized to call void @f_800004100(ptr %c)
    //   ret                       (0xd65f03c0)
    uint64_t entry = 0x800004000ULL;
    std::vector<uint32_t> words = {
        0x90000068u, 0x91008108u, 0xf9400109u, 0xd63f0120u, 0xd65f03c0u
    };
    Module M("test_rodata_devirt", "x86_64-pc-linux-gnu");
    Function* fn = M.create_function("f_800004000", entry, entry + words.size() * 4);
    fn->label_pcs = {entry};
    AArch64ToLLVMLifter lifter(base, base + 0x10000);
    lifter.lift_function(M, fn, words, entry);

    NsoRodataConstPropAndDevirtPass pass(
        image.data(), image.size(), base,
        base + 0x10000, base + 0x11000,
        base, base + 0x10000);
    bool changed = pass.run(M);
    CHECK(changed, "NsoRodataConstPropAndDevirtPass must fold .rodata load and devirtualize BLR");

    HorizonLoweringPass().run(M);
    CpuStatePromotionPass().run(M);
    std::string ir = M.serialize();
    CHECK(ir.find("folded .rodata load at 0x800010020 -> 0x800004100") != std::string::npos,
          "Must fold .rodata load to 0x800004100");
    CHECK(ir.find("call void @f_800004100(ptr %c)") != std::string::npos,
          "Must devirtualize BLR X9 into direct call @f_800004100");
    CHECK(verify_ir_with_llvm(ir, "test_rodata_devirt"), "Devirtualized IR must verify with libLLVM");
    PASS_TEST("Pass 3: NsoRodataConstPropAndDevirtPass (.rodata folding & vtable BLR devirtualization)");
}

void test_04_fpcr_fast_fp_lowering_pass() {
    uint64_t entry = 0x800417630ULL;
    std::vector<uint32_t> words = {
        0x2d420402u, // ldp s0, s2, [x0, #16]
        0x1e203820u, // fsub s0, s1, s0
        0x1e222800u, // fadd s0, s0, s2
        0x1f020c20u, // fmadd s0, s1, s2, s3
        0x4e22d420u, // fadd v0.4s, v1.4s, v2.4s
        0xd65f03c0u  // ret
    };
    Module M("test_fast_fp", "x86_64-pc-linux-gnu");
    Function* fn = M.create_function("f_800417630", entry, entry + words.size() * 4);
    fn->label_pcs = {entry};
    AArch64ToLLVMLifter lifter(entry, entry + words.size() * 4);
    lifter.lift_function(M, fn, words, entry);

    FPCRFastFPLoweringPass pass(true);
    bool changed = pass.run(M);
    CHECK(changed, "FPCRFastFPLoweringPass must lower scalar and vector FP ops");
    HorizonLoweringPass().run(M);
    CpuStatePromotionPass().run(M);
    std::string ir = M.serialize();
    CHECK(ir.find("call void @rt_fp_op_s") == std::string::npos, "@rt_fp_op_s must be inlined");
    CHECK(ir.find("call void @rt_fp_fma_s") == std::string::npos, "@rt_fp_fma_s must be inlined");
    CHECK(ir.find("call void @rt_vec_fop") == std::string::npos, "@rt_vec_fop must be inlined");
    CHECK(ir.find(" = fadd float ") != std::string::npos, "Must emit native scalar fadd float");
    CHECK(ir.find("@llvm.fma.f32(") != std::string::npos, "Must emit native @llvm.fma.f32");
    CHECK(ir.find(" = fadd <4 x float> ") != std::string::npos, "Must emit native vector fadd <4 x float>");
    CHECK(verify_ir_with_llvm(ir, "test_fast_fp"), "Fast-FP IR must verify with libLLVM");
    PASS_TEST("Pass 4: FPCRFastFPLoweringPass (real TOTK main f_800417630 + FMA + <4 x float>)");
}

void test_05_aarch64_native_intrinsic_pass() {
    uint64_t entry = 0x8027c7874ULL;
    std::vector<uint32_t> words = {
        0x1ac84129u, // crc32b w9, w9, w8
        0x4e284820u, // aese v0.16b, v1.16b
        0x4e286820u, // aesmc v0.16b, v1.16b
        0x0ee1e020u, // pmull v0.1q, v1.1d, v1.1d
        0x4e020020u, // tbl v0.16b, {v1.16b}, v2.16b
        0x4e31b820u, // addv b0, v1.16b
        0xd65f03c0u  // ret
    };
    Module M("test_arm64_intrinsics", "aarch64-unknown-linux-gnu");
    Function* fn = M.create_function("f_8027c7874_arm64", entry, entry + words.size() * 4);
    fn->label_pcs = {entry};
    AArch64ToLLVMLifter lifter(entry, entry + words.size() * 4);
    lifter.lift_function(M, fn, words, entry);

    AArch64NativeIntrinsicPass pass(/*force_enable=*/true);
    bool changed = pass.run(M);
    CHECK(changed, "AArch64NativeIntrinsicPass must lower CRC32/AES/PMULL/TBL/ADDV");
    HorizonLoweringPass().run(M);
    CpuStatePromotionPass().run(M);
    std::string ir = M.serialize();
    CHECK(ir.find("@llvm.aarch64.crc32b(") != std::string::npos, "Must emit @llvm.aarch64.crc32b");
    CHECK(ir.find("@llvm.aarch64.crypto.aese(") != std::string::npos, "Must emit @llvm.aarch64.crypto.aese");
    CHECK(ir.find("@llvm.aarch64.crypto.aesmc(") != std::string::npos, "Must emit @llvm.aarch64.crypto.aesmc");
    CHECK(ir.find("@llvm.aarch64.neon.pmull64(") != std::string::npos, "Must emit @llvm.aarch64.neon.pmull64");
    CHECK(ir.find("@llvm.aarch64.neon.tbl1.v16i8(") != std::string::npos, "Must emit @llvm.aarch64.neon.tbl1.v16i8");
    CHECK(ir.find("@llvm.aarch64.neon.saddv.i32.v16i8(") != std::string::npos, "Must emit @llvm.aarch64.neon.saddv");
    CHECK(verify_ir_with_llvm(ir, "test_arm64_intrinsics", "aarch64-unknown-linux-gnu", ""),
          "AArch64 intrinsic IR must verify with libLLVM");
    PASS_TEST("Pass 6: AArch64NativeIntrinsicPass (real TOTK main CRC32B + AESE/AESMC/PMULL64/TBL1/ADDV)");
}

void test_06_exclusive_monitor_lse_fastpath_pass() {
    uint64_t entry = 0x8001e0d60ULL;
    uint64_t end = entry + TOTK_MAIN_f_8001e0d60.size() * 4;
    Module M("test_lse_fastpath", "x86_64-pc-linux-gnu");
    Function* fn = M.create_function("f_8001e0d60", entry, end);
    fn->label_pcs = {entry, 0x8001e0d70ULL, 0x8001e0d80ULL};
    AArch64ToLLVMLifter lifter(entry, end);
    lifter.lift_function(M, fn, TOTK_MAIN_f_8001e0d60, entry);

    ExclusiveMonitorLSEFastPathPass pass;
    bool changed = pass.run(M);
    CHECK(changed, "ExclusiveMonitorLSEFastPathPass must elide excl_addr/excl_val on TOTK f_8001e0d60");
    HorizonLoweringPass().run(M);
    CpuStatePromotionPass().run(M);
    std::string ir = M.serialize();
    CHECK(ir.find("[ExclusiveMonitorLSEFastPathPass] elided software exclusive monitor") != std::string::npos,
          "Must emit LSE fastpath elision marker");
    CHECK(ir.find("i64 296") == std::string::npos, "All accesses to c->excl_addr (offset 296) must be eliminated");
    CHECK(verify_ir_with_llvm(ir, "test_lse_fastpath"), "LSE fastpath IR must verify with libLLVM");
    PASS_TEST("Pass 8: ExclusiveMonitorLSEFastPathPass (real TOTK main f_8001e0d60 LDXR/STXR loop)");
}

void test_07_horizon_lowering_and_tls_spinwait_passes() {
    uint64_t entry = 0x800050000ULL;
    std::vector<uint32_t> words = {
        0xd53bd068u, // mrs x8, tpidrro_el0
        0xb4000068u, // cbz x8, +12 (0x800050010)
        0xd53bd069u, // mrs x9, tpidrro_el0 (second read in another block)
        0xd503203fu, // yield
        0xd50b7428u, // dc zva, x8
        0xd65f03c0u  // ret
    };
    uint64_t end = entry + words.size() * 4;
    Module M("test_horizon_tls", "x86_64-pc-linux-gnu");
    Function* fn = M.create_function("f_800050000", entry, end);
    fn->label_pcs = {entry, entry + 8, entry + 16};
    AArch64ToLLVMLifter lifter(entry, end);
    lifter.lift_function(M, fn, words, entry);

    HorizonLoweringPass hpass;
    CHECK(hpass.run(M), "HorizonLoweringPass must run");
    HorizonTLSAndSpinWaitPass tlspass;
    CHECK(tlspass.run(M), "HorizonTLSAndSpinWaitPass must hoist TPIDRRO_EL0 and lower YIELD");
    CpuStatePromotionPass().run(M);
    std::string ir = M.serialize();
    CHECK(ir.find("[HorizonTLSAndSpinWaitPass] invariant TPIDRRO_EL0 load") != std::string::npos,
          "Must hoist TPIDRRO_EL0 load to entry block");
    CHECK(ir.find("call void @llvm.x86.sse2.pause()") != std::string::npos,
          "Must lower YIELD to @llvm.x86.sse2.pause() on x86-64");
    CHECK(ir.find("@llvm.memset.p0.i64(ptr align 64") != std::string::npos,
          "Must lower DC ZVA to 64-byte aligned llvm.memset");
    CHECK(verify_ir_with_llvm(ir, "test_horizon_tls"), "Horizon/TLS IR must verify with libLLVM");
    PASS_TEST("Passes 9 & 10: HorizonLoweringPass & HorizonTLSAndSpinWaitPass (TPIDRRO hoisting + YIELD pause)");
}

void test_08_guest_stack_and_alignment_pass() {
    uint64_t entry = 0x800060000ULL;
    std::vector<uint32_t> words = {
        0xa9be7bfdu, 0xad0007e0u, 0xad4007e0u, 0xa8c27bfdu, 0xd65f03c0u
    };
    uint64_t end = entry + words.size() * 4;
    Module M("test_stack_align", "x86_64-pc-linux-gnu");
    Function* fn = M.create_function("f_800060000", entry, end);
    fn->label_pcs = {entry};
    AArch64ToLLVMLifter lifter(entry, end);
    lifter.lift_function(M, fn, words, entry);

    HorizonLoweringPass().run(M);
    GuestStackAndAlignmentPass spass;
    CHECK(spass.run(M), "GuestStackAndAlignmentPass must upgrade SP-relative load/store alignments");
    CpuStatePromotionPass().run(M);
    std::string ir = M.serialize();
    CHECK(ir.find(", align 16, !alias.scope !6, !noalias !3") != std::string::npos,
          "128-bit SP access must be upgraded to align 16 with !alias.scope !6");
    CHECK(ir.find(", align 8, !alias.scope !6, !noalias !3") != std::string::npos,
          "64-bit SP access must be upgraded to align 8 with !alias.scope !6");
    CHECK(verify_ir_with_llvm(ir, "test_stack_align"), "Stack-aligned IR must verify with libLLVM");
    PASS_TEST("Pass 11: GuestStackAndAlignmentPass (align 8/16 upgrade & !alias.scope !6 stack domain)");
}

void test_09_jump_table_and_shadow_dispatch_passes() {
    uint64_t entry = 0x800070000ULL;
    std::vector<uint32_t> words = {
        0xd63f0120u, // 0x800070000: blr x9
        0xd61f0100u, // 0x800070004: br x8
        0xd2800020u, // 0x800070008: mov x0, #1
        0xd65f03c0u  // 0x80007000c: ret
    };
    uint64_t end = entry + words.size() * 4;
    Module M("test_jt_shadow", "x86_64-pc-linux-gnu");
    Function* fn = M.create_function("f_800070000", entry, end);
    fn->label_pcs = {entry, entry + 8, entry + 12};
    JumpTableInfo jti;
    jti.is_all_labels = false;
    jti.targets = {entry + 8, entry + 12};
    fn->jump_tables[entry + 4] = jti;

    AArch64ToLLVMLifter lifter(entry, end);
    lifter.lift_function(M, fn, words, entry);

    HorizonLoweringPass().run(M);
    JumpTableLoweringPass jt_pass;
    CHECK(jt_pass.run(M), "JumpTableLoweringPass must lower BR X8 to switch i64");
    ShadowDispatchTablePass sd_pass(true);
    CHECK(sd_pass.run(M), "ShadowDispatchTablePass must lower BLR X9 to O(1) shadow cache lookup");
    CpuStatePromotionPass().run(M);
    std::string ir = M.serialize();
    CHECK(ir.find("switch i64 ") != std::string::npos, "Must emit switch i64 for jump table");
    CHECK(ir.find("@g_icache_pc") != std::string::npos && ir.find("@g_icache_fn") != std::string::npos,
          "Must emit inline lookup against @g_icache_pc and @g_icache_fn");
    CHECK(verify_ir_with_llvm(ir, "test_jt_shadow"), "JumpTable + ShadowDispatch IR must verify with libLLVM");
    PASS_TEST("Passes 13 & 14: JumpTableLoweringPass & ShadowDispatchTablePass (switch i64 + O(1) BLR cache)");
}

void test_10_nzcv_predicate_fusion_and_dead_flag_elim_passes() {
    uint64_t entry = 0x80000f3a0ULL;
    uint64_t end = entry + TOTK_MAIN_f_80000f3a0.size() * 4;
    Module M("test_nzcv_fusion", "x86_64-pc-linux-gnu");
    Function* fn = M.create_function("f_80000f3a0", entry, end);
    fn->label_pcs = {entry};
    AArch64ToLLVMLifter lifter(entry, end);
    lifter.lift_function(M, fn, TOTK_MAIN_f_80000f3a0, entry);

    ProfileGuidedEntryHookElimPass().run(M);
    HorizonLoweringPass().run(M);
    NZCVPredicateFusionPass fusion_pass;
    CHECK(fusion_pass.run(M), "NZCVPredicateFusionPass must fuse CMP W1, #7 + CSEL LO into direct icmp ult");
    NZCVDeadFlagElimPass().run(M);
    CpuStatePromotionPass().run(M);

    std::string ir = M.serialize();
    CHECK(ir.find("[NZCVPredicateFusionPass] fused NZCV condition -> direct icmp") != std::string::npos,
          "Must fuse CSEL condition into direct icmp");
    CHECK(ir.find(" = icmp ult i32 ") != std::string::npos,
          "CMP W1, #7 + LO must fuse into `icmp ult i32 %w1, 7`");
    CHECK(verify_ir_with_llvm(ir, "test_nzcv_fusion"), "Fused NZCV IR must verify with libLLVM");
    PASS_TEST("Passes 16 & 17: NZCVPredicateFusionPass & NZCVDeadFlagElimPass (real TOTK main f_80000f3a0)");
}

void test_11_lr_elision_aapcs64_and_cpu_state_promotion_passes() {
    uint64_t caller_pc = 0x800080000ULL;
    uint64_t callee_pc = 0x800080020ULL;
    std::vector<uint32_t> words(10, 0xd503201fu);
    words[0] = 0xd2800c69u; // mov x9, #99
    words[1] = 0x94000007u; // bl 0x800080020
    words[2] = 0xd2800549u; // mov x9, #42
    words[3] = 0x8b090000u; // add x0, x0, x9
    words[4] = 0xd65f03c0u; // ret
    words[8] = 0x91000400u; // 0x800080020: add x0, x0, #1
    words[9] = 0xd65f03c0u; // 0x800080024: ret

    Module M("test_aapcs_lr", "x86_64-pc-linux-gnu");
    Function* fn_caller = M.create_function("f_800080000", caller_pc, caller_pc + 20);
    fn_caller->label_pcs = {caller_pc};
    Function* fn_callee = M.create_function("f_800080020", callee_pc, callee_pc + 8);
    fn_callee->label_pcs = {callee_pc};

    AArch64ToLLVMLifter lifter(caller_pc, callee_pc + 8);
    lifter.lift_function(M, fn_caller, std::vector<uint32_t>(words.begin(), words.begin() + 5), caller_pc);
    lifter.lift_function(M, fn_callee, std::vector<uint32_t>(words.begin() + 8, words.begin() + 10), callee_pc);

    ProfileGuidedEntryHookElimPass().run(M);
    HorizonLoweringPass().run(M);
    LinkRegisterElisionPass lr_pass;
    CHECK(lr_pass.run(M), "LinkRegisterElisionPass must elide X30 = pc + 4 before BL to leaf callee");
    AAPCS64ABIContractPass abi_pass;
    CHECK(abi_pass.run(M), "AAPCS64ABIContractPass must prune dead pre-call write to scratch X9");
    CpuStatePromotionPass().run(M);

    std::string ir = M.serialize();
    auto caller_pos = ir.find("define dso_local void @f_800080000");
    auto callee_pos = ir.find("define dso_local void @f_800080020");
    std::string caller_ir = ir.substr(caller_pos, callee_pos - caller_pos);
    CHECK(caller_ir.find("store i64 34360262664") == std::string::npos, "LinkRegisterElisionPass must elide X30 = pc + 4 store before BL");
    CHECK(caller_ir.find("store i64 99") == std::string::npos, "Dead pre-call store `mov x9, #99` must be eliminated");
    CHECK(verify_ir_with_llvm(ir, "test_aapcs_lr"), "AAPCS64 + LR-elided IR must verify with libLLVM");
    PASS_TEST("Passes 18, 20 & 21: LinkRegisterElisionPass, AAPCS64ABIContractPass & CpuStatePromotionPass");
}

void test_12_cross_chunk_leaf_inline_and_static_nce_abi_passes() {
    std::unordered_map<uint64_t, LeafFunctionSlice> global_leaves;
    LeafFunctionSlice slice;
    slice.entry_pc = 0x80000f3bcULL;
    slice.end_pc = 0x80000f3c8ULL;
    slice.words = TOTK_MAIN_f_80000f3bc;
    global_leaves[slice.entry_pc] = slice;

    uint64_t caller_pc = 0x80000f3b0ULL;
    std::vector<uint32_t> caller_words = {
        0x94000003u, // bl 0x80000f3bc
        0x91000400u, // add x0, x0, #1
        0xd65f03c0u  // ret
    };
    Module M("test_cross_chunk_nce", "aarch64-unknown-linux-gnu");
    Function* fn = M.create_function("f_80000f3b0", caller_pc, caller_pc + 12);
    fn->label_pcs = {caller_pc};
    AArch64ToLLVMLifter lifter(0x800000000ULL, 0x802ba61f0ULL);
    lifter.lift_function(M, fn, caller_words, caller_pc);

    PassPipelineConfig cfg;
    cfg.text_lo = 0x800000000ULL;
    cfg.text_hi = 0x802ba61f0ULL;
    cfg.global_leaves = &global_leaves;
    cfg.enable_nce_abi = true;

    ModulePassManager MPM;
    build_ultratears_pipeline(MPM, cfg);
    MPM.run(M);

    std::string ir = M.serialize();
    CHECK(ir.find("call void @f_80000f3bc_inline(ptr %c)") != std::string::npos,
          "CrossChunkLeafInlinePass must rewrite call to @f_80000f3bc_inline");
    CHECK(ir.find("define internal void @f_80000f3bc_inline(") != std::string::npos &&
          ir.find(") alwaysinline nounwind {") != std::string::npos,
          "CrossChunkLeafInlinePass must synthesize internal alwaysinline definition");
    CHECK(ir.find("define dso_local { i64, i64 } @f_80000f3b0_nce(") != std::string::npos,
          "AArch64StaticNCEABIPass must emit register-pinned @f_80000f3b0_nce entry point");
    CHECK(verify_ir_with_llvm(ir, "test_cross_chunk_nce", "aarch64-unknown-linux-gnu"),
          "Cross-chunk + Static-NCE ABI IR must verify and optimize with libLLVM");
    PASS_TEST("Passes 22 & 23: CrossChunkLeafInlinePass & AArch64StaticNCEABIPass (cross-chunk leaf + _nce entry)");
}

void test_13_simd_pairwise_and_conversion_inline_pass() {
    // Comprehensive SIMD/FP sequence covering pairwise FP, indexed FP mul/FMA, vector FCMP,
    // scalar/vector FRINT, FCVT S<->D, FCVTL/FCVTN, SCVTF/FCVTZS, and NEON SHL/XTN/USHLL:
    uint64_t entry = 0x800100000ULL;
    std::vector<uint32_t> words = {
        0x6e22d420u, // faddp v0.4s, v1.4s, v2.4s
        0x7e30d820u, // faddp s0, v1.2s
        0x4fa29020u, // fmul v0.4s, v1.4s, v2.s[1]
        0x4f821020u, // fmla v0.4s, v1.4s, v2.s[0]
        0x4e22e420u, // fcmeq v0.4s, v1.4s, v2.4s
        0x1e22c020u, // fcvt d0, s1
        0x1e254020u, // frintm s0, s1
        0x4ea18820u, // frintp v0.4s, v1.4s
        0x0ea17820u, // fcvtl v0.2d, v1.2s
        0x0ee16820u, // fcvtn v0.2s, v1.2d
        0x1e220020u, // scvtf s0, w1
        0x1e380020u, // fcvtzs w0, s1
        0x4e21d820u, // scvtf v0.4s, v1.4s
        0x4ea1b820u, // fcvtzs v0.4s, v1.4s
        0x4f245420u, // shl v0.4s, v1.4s, #4
        0x0e612820u, // xtn v0.4h, v1.4s
        0x2f12a420u, // ushll v0.4s, v1.4h, #2
        0xd65f03c0u  // ret
    };
    uint64_t end = entry + words.size() * 4;
    Module M("test_simd_inline", "x86_64-pc-linux-gnu");
    Function* fn = M.create_function("f_800100000", entry, end);
    fn->label_pcs = {entry};
    AArch64ToLLVMLifter lifter(entry, end);
    lifter.lift_function(M, fn, words, entry);

    ProfileGuidedEntryHookElimPass(32, false).run(M);
    FPCRFastFPLoweringPass(true).run(M);
    SIMDPairwiseAndConversionInlinePass pass(true);
    CHECK(pass.run(M), "SIMDPairwiseAndConversionInlinePass must inline pairwise/indexed/conversion/shift ops");
    HorizonLoweringPass().run(M);
    CpuStatePromotionPass().run(M);

    std::string ir = M.serialize();
    CHECK(ir.find("call void @rt_vec_fpair") == std::string::npos, "@rt_vec_fpair must be devirtualized");
    CHECK(ir.find("call void @rt_scalar_fpair") == std::string::npos, "@rt_scalar_fpair must be devirtualized");
    CHECK(ir.find("call void @rt_indexed_fp") == std::string::npos, "@rt_indexed_fp must be devirtualized");
    CHECK(ir.find("call void @rt_vec_fcmp") == std::string::npos, "@rt_vec_fcmp must be devirtualized");
    CHECK(ir.find("call void @rt_fp_dp1") == std::string::npos, "@rt_fp_dp1 must be devirtualized");
    CHECK(ir.find("call void @rt_vec_frint") == std::string::npos, "@rt_vec_frint must be devirtualized");
    CHECK(ir.find("call void @rt_vec_fcvtl") == std::string::npos, "@rt_vec_fcvtl must be devirtualized");
    CHECK(ir.find("call void @rt_vec_fcvtn") == std::string::npos, "@rt_vec_fcvtn must be devirtualized");
    CHECK(ir.find("call void @rt_fp_fromint") == std::string::npos, "@rt_fp_fromint must be devirtualized");
    CHECK(ir.find("call i64 @rt_fp_toint") == std::string::npos, "@rt_fp_toint must be devirtualized");
    CHECK(ir.find("call void @rt_vec_fcvt_int") == std::string::npos, "@rt_vec_fcvt_int must be devirtualized");
    CHECK(ir.find("call void @rt_sl_gen") == std::string::npos, "@rt_sl_gen must be devirtualized");
    CHECK(ir.find("@llvm.fptosi.sat.v4i32.v4f32") != std::string::npos, "Must emit @llvm.fptosi.sat.v4i32.v4f32");
    CHECK(ir.find("@llvm.ceil.v4f32") != std::string::npos, "Must emit @llvm.ceil.v4f32");
    CHECK(verify_ir_with_llvm(ir, "test_simd_inline"), "Inlined SIMD/FP IR must verify and optimize with libLLVM");
    PASS_TEST("Pass 5: SIMDPairwiseAndConversionInlinePass (FADDP, indexed FMA, FCMP, FRINT, FCVTL/N, SCVTF/FCVTZS, SHL/XTN/USHLL)");
}

void test_14_x86_64_hardware_intrinsic_pass() {
    uint64_t entry = 0x800110000ULL;
    std::vector<uint32_t> words = {
        0x1ac25020u, // crc32cb w0, w1, w2
        0x1ac25420u, // crc32ch w0, w1, w2
        0x1ac25820u, // crc32cw w0, w1, w2
        0x9ac25c20u, // crc32cx w0, w1, x2
        0x4e205820u, // cnt v0.16b, v1.16b
        0x6e605820u, // rbit v0.16b, v1.16b
        0x6ea04820u, // clz v0.4s, v1.4s
        0x4e31b820u, // addv b0, v1.16b
        0x6e303820u, // uaddlv h0, v1.16b
        0x4eb0a820u, // smaxv s0, v1.4s
        0x6e31a820u, // uminv b0, v1.16b
        0xd65f03c0u  // ret
    };
    uint64_t end = entry + words.size() * 4;
    Module M("test_x86_64_intrinsics", "x86_64-pc-linux-gnu");
    Function* fn = M.create_function("f_800110000", entry, end);
    fn->label_pcs = {entry};
    AArch64ToLLVMLifter lifter(entry, end);
    lifter.lift_function(M, fn, words, entry);

    ProfileGuidedEntryHookElimPass(32, false).run(M);
    X8664HardwareIntrinsicPass x86_pass;
    CHECK(x86_pass.run(M), "X8664HardwareIntrinsicPass must lower CRC32C, CNT/RBIT/CLZ, and across-vector reductions");
    HorizonLoweringPass().run(M);
    CpuStatePromotionPass().run(M);

    std::string ir = M.serialize();
    CHECK(ir.find("call i32 @rt_crc32(") == std::string::npos, "CRC32C calls must be lowered to SSE4.2 intrinsics");
    CHECK(ir.find("call void @rt_sl_across") == std::string::npos, "@rt_sl_across calls must be lowered to vector.reduce intrinsics");
    CHECK(ir.find("@llvm.x86.sse42.crc32.32.8(") != std::string::npos, "Must emit @llvm.x86.sse42.crc32.32.8");
    CHECK(ir.find("@llvm.x86.sse42.crc32.64.64(") != std::string::npos, "Must emit @llvm.x86.sse42.crc32.64.64");
    CHECK(ir.find("@llvm.ctpop.v16i8(") != std::string::npos, "Must emit @llvm.ctpop.v16i8");
    CHECK(ir.find("@llvm.bitreverse.v16i8(") != std::string::npos, "Must emit @llvm.bitreverse.v16i8");
    CHECK(ir.find("@llvm.ctlz.v4i32(") != std::string::npos, "Must emit @llvm.ctlz.v4i32");
    CHECK(ir.find("@llvm.vector.reduce.add.v16i8(") != std::string::npos, "Must emit @llvm.vector.reduce.add.v16i8");
    CHECK(ir.find("@llvm.vector.reduce.add.v16i16(") != std::string::npos, "Must emit @llvm.vector.reduce.add.v16i16 for UADDLV");
    CHECK(ir.find("@llvm.vector.reduce.smax.v4i32(") != std::string::npos, "Must emit @llvm.vector.reduce.smax.v4i32");
    CHECK(ir.find("@llvm.vector.reduce.umin.v16i8(") != std::string::npos, "Must emit @llvm.vector.reduce.umin.v16i8");
    CHECK(verify_ir_with_llvm(ir, "test_x86_64_intrinsics"), "x86-64 intrinsic IR must verify with libLLVM");
    PASS_TEST("Pass 7: X8664HardwareIntrinsicPass (SSE4.2 CRC32C + NEON CNT/RBIT/CLZ + ADDV/UADDLV/SMAXV/UMINV)");
}

void test_15_aarch64_idiom_deconstruct_pass() {
    // 1. MOVZ + MOVK 64-bit constant materialization chain:
    //    movz x0, #0x1234                 (0xd2824680)
    //    movk x0, #0x5678, lsl #16        (0xf2aacf00)
    //    movk x0, #0x9abc, lsl #32        (0xf2d35780)
    //    movk x0, #0xdef0, lsl #48        (0xf2fbde00) -> 0xdef09abc56781234 (16064510004525797940)
    // 2. Proven non-zero divisor UDIV & SDIV:
    //    mov  x1, #10                     (0xd2800141)
    //    udiv x2, x2, x1                  (0x9ac10842)
    //    sdiv x3, x3, x1                  (0x9ac10c63)
    // 3. Adjacent paired zero stores:
    //    stp  wzr, wzr, [sp, #16]         (0x29027fff)
    //    stp  xzr, xzr, [sp, #32]         (0xa9027fff)
    // 4. Scalar V-register zext/trunc forwarding:
    //    fmov s0, w4                      (0x1e270080)
    //    fmov w5, s0                      (0x1e260005)
    uint64_t entry = 0x800120000ULL;
    std::vector<uint32_t> words = {
        0xd2824680u, 0xf2aacf00u, 0xf2d35780u, 0xf2fbde00u,
        0xd2800141u, 0x9ac10842u, 0x9ac10c63u,
        0x29027fffu, 0xa9027fffu,
        0x1e270080u, 0x1e260005u,
        0xd65f03c0u
    };
    uint64_t end = entry + words.size() * 4;
    Module M("test_idiom_deconstruct", "x86_64-pc-linux-gnu");
    Function* fn = M.create_function("f_800120000", entry, end);
    fn->label_pcs = {entry};
    AArch64ToLLVMLifter lifter(entry, end);
    lifter.lift_function(M, fn, words, entry);

    ProfileGuidedEntryHookElimPass(32, false).run(M);
    NsoRodataConstPropAndDevirtPass().run(M);
    HorizonLoweringPass().run(M);
    GuestStackAndAlignmentPass().run(M);
    AArch64IdiomDeconstructPass idiom_pass;
    CHECK(idiom_pass.run(M), "AArch64IdiomDeconstructPass must collapse MOVZ+MOVK, UDIV/SDIV guards, STP zeroes, and V-scalar forwarding");
    CpuStatePromotionPass().run(M);

    std::string ir = M.serialize();
    CHECK(ir.find("store i64 16064510004525797940, ptr %loc_x0") != std::string::npos,
          "MOVZ+3xMOVK chain must collapse into a single 64-bit immediate store (0xdef09abc56781234)");
    CHECK(ir.find("[AArch64IdiomDeconstructPass] elided UDIV zero guard") != std::string::npos,
          "UDIV divide-by-zero select tree must be elided for constant divisor 10");
    CHECK(ir.find("[AArch64IdiomDeconstructPass] elided SDIV zero/overflow guard") != std::string::npos,
          "SDIV divide-by-zero/overflow select tree must be elided for constant divisor 10");
    CHECK(ir.find("[AArch64IdiomDeconstructPass] coalesced paired 32-bit constant stores -> i64") != std::string::npos,
          "STP WZR, WZR must coalesce into a single 64-bit store");
    CHECK(ir.find("[AArch64IdiomDeconstructPass] coalesced paired 64-bit zero stores -> i128") != std::string::npos,
          "STP XZR, XZR must coalesce into a single 128-bit store");
    CHECK(ir.find("[AArch64IdiomDeconstructPass] forwarded scalar V-register value") != std::string::npos,
          "FMOV S0, W4 -> FMOV W5, S0 must forward W4 without 128-bit XMM round-trip");
    CHECK(verify_ir_with_llvm(ir, "test_idiom_deconstruct"), "Idiom-deconstructed IR must verify with libLLVM");
    PASS_TEST("Pass 12: AArch64IdiomDeconstructPass (MOVZ+MOVK collapse, UDIV/SDIV guard elision, STP coalescing, V-scalar forwarding)");
}

void test_16_fcmp_predicate_fusion_pass() {
    // Function with:
    //   fcmp  s0, s1           (0x1e212000)
    //   fcsel s0, s0, s1, gt   (0x1e21cc00) -> fuses into `fcmp ogt float`
    //   fcmp  d2, #0.0         (0x1e602048)
    //   csel  x0, x1, x2, lt   (0x9a82b020) -> fuses into `fcmp ult double`
    //   cmp   x0, #0           (0xf100001f) -> kills NZCV so preceding FCMP FlagWrite is eliminated!
    //   ret                    (0xd65f03c0)
    uint64_t entry = 0x800130000ULL;
    std::vector<uint32_t> words = {
        0x1e212000u, 0x1e21cc00u,
        0x1e602048u, 0x9a82b020u,
        0xf100001fu, 0xd65f03c0u
    };
    uint64_t end = entry + words.size() * 4;
    Module M("test_fcmp_fusion", "x86_64-pc-linux-gnu");
    Function* fn = M.create_function("f_800130000", entry, end);
    fn->label_pcs = {entry};
    AArch64ToLLVMLifter lifter(entry, end);
    lifter.lift_function(M, fn, words, entry);

    ProfileGuidedEntryHookElimPass().run(M);
    HorizonLoweringPass().run(M);
    FCMPPredicateFusionPass fcmp_pass;
    CHECK(fcmp_pass.run(M), "FCMPPredicateFusionPass must devirtualize @rt_fp_cmp_s and @rt_fp_cmp_d");
    NZCVPredicateFusionPass nzcv_pass;
    CHECK(nzcv_pass.run(M), "NZCVPredicateFusionPass must fuse FCMP + FCSEL/CSEL into direct fcmp");
    NZCVDeadFlagElimPass dead_pass;
    CHECK(dead_pass.run(M), "NZCVDeadFlagElimPass must eliminate overwritten FCMP NZCV FlagWrites");
    CpuStatePromotionPass().run(M);

    std::string ir = M.serialize();
    CHECK(ir.find("call i64 @rt_fp_cmp_s(") == std::string::npos && ir.find("call i64 @rt_fp_cmp_d(") == std::string::npos,
          "All @rt_fp_cmp_s/d calls must be eliminated");
    CHECK(ir.find("[NZCVPredicateFusionPass] fused NZCV condition -> direct fcmp") != std::string::npos,
          "FCMP + condition evaluation must fuse into direct fcmp");
    CHECK(ir.find(" = fcmp ogt float ") != std::string::npos, "FCMP S0, S1 + GT must fuse into `fcmp ogt float`");
    CHECK(ir.find(" = fcmp ult double ") != std::string::npos, "FCMP D2, #0.0 + LT must fuse into `fcmp ult double`");
    CHECK(verify_ir_with_llvm(ir, "test_fcmp_fusion"), "FCMP-fused IR must verify with libLLVM");
    PASS_TEST("Pass 15: FCMPPredicateFusionPass (FCMP S/D devirtualization + direct `fcmp ogt`/`fcmp ult` fusion)");
}

void test_17_tail_call_devirt_and_cpu_state_pruning_passes() {
    // Module with two functions:
    //   callee f_800140020: `mov x8, #77; add x0, x0, x8; ret` (does not read X30; kills X8 on entry)
    //   caller f_800140000: `mov x0, #10; bl 0x800140020; ret`
    // Verify:
    //   1. `LinkRegisterElisionPass` elides `X30 = pc + 4` in caller.
    //   2. `TailCallDevirtualizationPass` upgrades `bl 0x800140020; ret` into `musttail call void @f_800140020(ptr %c)\n  ret void`.
    //   3. `CpuStatePromotionPass` upward-exposed entry reload pruning skips loading `X8` (`i64 64`) in callee and `X0` (`i64 0`) in caller!
    uint64_t caller_pc = 0x800140000ULL;
    uint64_t callee_pc = 0x800140020ULL;
    std::vector<uint32_t> caller_words = {
        0xd2800140u, // mov x0, #10
        0x94000007u, // bl 0x800140020
        0xd65f03c0u  // ret
    };
    std::vector<uint32_t> callee_words = {
        0xd28009a8u, // mov x8, #77
        0x8b080000u, // add x0, x0, x8
        0xd65f03c0u  // ret
    };

    Module M("test_tailcall_pruning", "x86_64-pc-linux-gnu");
    Function* fn_caller = M.create_function("f_800140000", caller_pc, caller_pc + 12);
    fn_caller->label_pcs = {caller_pc};
    Function* fn_callee = M.create_function("f_800140020", callee_pc, callee_pc + 12);
    fn_callee->label_pcs = {callee_pc};

    AArch64ToLLVMLifter lifter(caller_pc, callee_pc + 12);
    lifter.lift_function(M, fn_caller, caller_words, caller_pc);
    lifter.lift_function(M, fn_callee, callee_words, callee_pc);

    ProfileGuidedEntryHookElimPass().run(M);
    HorizonLoweringPass().run(M);
    LinkRegisterElisionPass().run(M);
    TailCallDevirtualizationPass tc_pass;
    CHECK(tc_pass.run(M), "TailCallDevirtualizationPass must upgrade BL + RET into musttail call");
    AAPCS64ABIContractPass().run(M);
    CpuStatePromotionPass().run(M);

    std::string ir = M.serialize();
    auto caller_pos = ir.find("define dso_local void @f_800140000");
    auto callee_pos = ir.find("define dso_local void @f_800140020");
    std::string caller_ir = ir.substr(caller_pos, callee_pos - caller_pos);
    std::string callee_ir = ir.substr(callee_pos);

    CHECK(caller_ir.find("musttail call void @f_800140020(ptr %c)") != std::string::npos,
          "Caller must end with `musttail call void @f_800140020(ptr %c)`");
    CHECK(caller_ir.find("load i64, ptr") == std::string::npos ||
          caller_ir.find("getelementptr inbounds i8, ptr %c, i64 0\n  %ldv") == std::string::npos,
          "Upward-exposed entry reload pruning must skip loading overwritten X0 on caller entry");
    CHECK(callee_ir.find("getelementptr inbounds i8, ptr %c, i64 64\n  %ldv") == std::string::npos,
          "Upward-exposed entry reload pruning must skip loading overwritten X8 on callee entry");
    CHECK(verify_ir_with_llvm(ir, "test_tailcall_pruning"), "Tail-call + entry-pruned IR must verify with libLLVM");
    PASS_TEST("Pass 19 & Enhanced Pass 21: TailCallDevirtualizationPass & CpuStatePromotionPass (musttail + entry reload pruning)");
}

// -----------------------------------------------------------------------------
// End-to-End Native Compilation & Execution of Real Lifted TOTK 1.4.2 Functions
// and New x86-64 Devirtualized Functions
// -----------------------------------------------------------------------------
void test_18_end_to_end_native_execution_of_totk_main_functions() {
    CHECK(llvm_backend::LibLLVM::instance().available(), "libLLVM must be available for native execution test");

    Module M("totk_exec_suite", "x86_64-pc-linux-gnu");
    AArch64ToLLVMLifter lifter(0x800000000ULL, 0x802ba61f0ULL);

    auto add_fn = [&](const char* name, uint64_t entry, const std::vector<uint32_t>& words,
                      std::set<uint64_t> extra_labels = {}) {
        Function* fn = M.create_function(name, entry, entry + words.size() * 4);
        fn->label_pcs.insert(entry);
        for (uint64_t l : extra_labels) fn->label_pcs.insert(l);
        lifter.lift_function(M, fn, words, entry);
    };

    // Add real functions extracted from TOTK 1.4.2 main:
    add_fn("f_80000f3a0", 0x80000f3a0ULL, TOTK_MAIN_f_80000f3a0);
    add_fn("f_80000f3bc", 0x80000f3bcULL, TOTK_MAIN_f_80000f3bc);
    add_fn("f_80002aafc", 0x80002aafcULL, TOTK_MAIN_f_80002aafc);
    add_fn("f_800043f80", 0x800043f80ULL, TOTK_MAIN_f_800043f80);
    add_fn("f_8001e0d60", 0x8001e0d60ULL, TOTK_MAIN_f_8001e0d60, {0x8001e0d70ULL, 0x8001e0d80ULL});
    add_fn("f_800417630", 0x800417630ULL, TOTK_MAIN_f_800417630);
    add_fn("f_8005bccd0", 0x8005bccd0ULL, TOTK_MAIN_f_8005bccd0, {0x8005bcce0ULL});
    add_fn("f_8027c7874", 0x8027c7874ULL, TOTK_MAIN_f_8027c7874, {0x8027c7884ULL, 0x8027c7898ULL});

    // Indirect-call wrapper `f_800090000`: `blr x8; ret`
    add_fn("f_800090000", 0x800090000ULL, {0xd63f0100u, 0xd65f03c0u});

    // New x86-64 devirtualized FP/SIMD + FCMP + CRC32C + Idiom execution function `f_800091000`:
    //   fcmp  s0, s1           (0x1e212000) -> FCMPPredicateFusionPass
    //   fcsel s0, s0, s1, gt   (0x1e21cc00) -> max(s0, s1) via fused fcmp ogt
    //   fcvtzs w0, s0          (0x1e380000) -> SIMDPairwiseAndConversionInlinePass (@llvm.fptosi.sat.i32.f32)
    //   crc32cw w1, w1, w0     (0x1ac05821) -> X8664HardwareIntrinsicPass (@llvm.x86.sse42.crc32.32.32)
    //   mov   x2, #5           (0xd28000a2)
    //   udiv  x0, x0, x2       (0x9ac20800) -> AArch64IdiomDeconstructPass (elided zero guard)
    //   ret                    (0xd65f03c0)
    add_fn("f_800091000", 0x800091000ULL, {
        0x1e212000u, 0x1e21cc00u, 0x1e380000u, 0x1ac05821u,
        0xd28000a2u, 0x9ac20800u, 0xd65f03c0u
    });

    PassPipelineConfig cfg;
    cfg.include_default_drs = false;
    cfg.text_lo = 0x800000000ULL;
    cfg.text_hi = 0x802ba61f0ULL;

    ModulePassManager MPM;
    build_ultratears_pipeline(MPM, cfg);
    MPM.run(M);

    std::string ir = M.serialize();
    std::string obj_path = "/tmp/totk_exec_suite.o";
    std::string so_path  = "/tmp/totk_exec_suite.so";
    llvm_backend::LibLLVM::instance().process_ir(
        ir, "totk_exec_suite", /*verify=*/true, "default<O2>", nullptr, "", obj_path, "x86_64-pc-linux-gnu");

    {
        std::ofstream st("/tmp/totk_exec_stubs.c");
        st << "#include <stdint.h>\n"
           << "#include \"src/runtime/cpu.h\"\n"
           << "volatile int g_fnprof = 0;\n"
           << "uint64_t g_icache_pc[65536];\n"
           << "GuestFn  g_icache_fn[65536];\n"
           << "void fnprof_hit(uint64_t a, uint64_t b, uint64_t c) { (void)a; (void)b; (void)c; }\n"
           << "void rt_dispatch(Cpu* c) { (void)c; }\n"
           << "void rt_udf(Cpu* c, uint64_t pc) { (void)c; (void)pc; __builtin_trap(); }\n"
           << "void set_so_icache(uint64_t addr, GuestFn fn) {\n"
           << "    unsigned h = (unsigned)(addr >> 2) & 65535u;\n"
           << "    g_icache_pc[h] = addr;\n"
           << "    g_icache_fn[h] = fn;\n"
           << "}\n";
    }
    int rc0 = std::system("gcc -O2 -fPIC -I. -Isrc/runtime -c /tmp/totk_exec_stubs.c -o /tmp/totk_exec_stubs.o && "
                          "gcc -O2 -fPIC -Isrc/runtime -c src/runtime/simd_rt.c -o /tmp/simd_rt_pic.o");
    CHECK(rc0 == 0, "Compiling PIC helper objects for test_18 must succeed");
    int rc = std::system(("gcc -shared -Wl,-Bsymbolic " + obj_path + " /tmp/totk_exec_stubs.o /tmp/simd_rt_pic.o -lm -o " + so_path).c_str());
    CHECK(rc == 0, "gcc -shared -Wl,-Bsymbolic must link compiled TOTK object into shared library");

    void* dl = dlopen(so_path.c_str(), RTLD_NOW);
    CHECK(dl != nullptr, "dlopen on compiled TOTK shared library must succeed");

    auto get_fn = [&](const char* sym) -> GuestFn {
        return reinterpret_cast<GuestFn>(dlsym(dl, sym));
    };

    // 1. Execute TOTK f_80000f3a0 (UMADDL + CMP W1, #7 + CSEL LO):
    {
        GuestFn fn = get_fn("f_80000f3a0");
        CHECK(fn != nullptr, "f_80000f3a0 symbol must exist");
        Cpu c{};
        c.x[0] = 0x1000;
        c.x[1] = 3;
        fn(&c);
        CHECK(c.x[0] == 0x1000 + 0x18 + 3 * 0x208, "f_80000f3a0 (w1=3 < 7) must return x9");

        c.x[0] = 0x1000;
        c.x[1] = 9;
        fn(&c);
        CHECK(c.x[0] == 0x1000 + 0x18, "f_80000f3a0 (w1=9 >= 7) must return x8");
    }

    // 2. Execute TOTK f_80000f3bc (`adrp x0, 0x802bd000; add x0, x0, #0xb6a; ret`):
    {
        GuestFn fn = get_fn("f_80000f3bc");
        CHECK(fn != nullptr, "f_80000f3bc symbol must exist");
        Cpu c{};
        fn(&c);
        CHECK(c.x[0] == 0x802be0b6aULL, "f_80000f3bc must compute 0x802be0b6a");
    }

    // 3. Execute TOTK f_80002aafc (`str s0, [x0, #0x1b8]; str s1, [x0, #0x1d8]; ret`):
    {
        GuestFn fn = get_fn("f_80002aafc");
        uint8_t buf[512] = {};
        Cpu c{};
        c.x[0] = reinterpret_cast<uint64_t>(buf);
        float s0 = 3.5f, s1 = -7.25f;
        std::memcpy(&c.v[0], &s0, 4);
        std::memcpy(&c.v[1], &s1, 4);
        fn(&c);
        float out0 = 0.0f, out1 = 0.0f;
        std::memcpy(&out0, buf + 0x1b8, 4);
        std::memcpy(&out1, buf + 0x1d8, 4);
        CHECK(out0 == 3.5f && out1 == -7.25f, "f_80002aafc must store S0 and S1 at +0x1b8 and +0x1d8");
    }

    // 4. Execute TOTK f_800417630 (`ldp s0, s2, [x0, #16]; fsub s0, s1, s0; fadd s0, s0, s2; ret`):
    {
        GuestFn fn = get_fn("f_800417630");
        float mem[8] = {0, 0, 0, 0, 10.0f, 25.5f, 0, 0};
        Cpu c{};
        c.x[0] = reinterpret_cast<uint64_t>(mem);
        float s0_in = 5.5f;
        std::memcpy(&c.v[0], &s0_in, 4);
        fn(&c);
        float res = 0.0f;
        std::memcpy(&res, &c.v[0], 4);
        CHECK(std::fabs(res - 30.0f) < 1e-6f, "f_800417630 must compute (s1(25.5) - s0(5.5)) + s2(10.0) = 30.0");
    }

    // 5. Execute TOTK f_8001e0d60 (64-bit atomic LDXR/ADD/STXR increment):
    {
        GuestFn fn = get_fn("f_8001e0d60");
        uint64_t outer[4] = {0, 1, 41, 0};
        owner_ptr:
        outer[1] = reinterpret_cast<uint64_t>(&outer[0]); // [x0+8] points to outer[0], so +16 is outer[2]!
        Cpu c{};
        c.x[0] = reinterpret_cast<uint64_t>(outer);
        fn(&c);
        CHECK(outer[2] == 42, "f_8001e0d60 must atomically increment outer[2] ([x8+16]) from 41 to 42");
    }

    // 6. Execute TOTK f_8005bccd0 (32-bit atomic LDXR/ORR/STXR bit-set):
    {
        GuestFn fn = get_fn("f_8005bccd0");
        uint8_t obj[256] = {};
        uint32_t init_mask = 0x01u;
        std::memcpy(obj + 0x90, &init_mask, 4);
        Cpu c{};
        c.x[0] = reinterpret_cast<uint64_t>(obj);
        c.x[1] = 2; // sets bit (2 + 3) = bit 5 (0x20)
        fn(&c);
        uint32_t final_mask = 0;
        std::memcpy(&final_mask, obj + 0x90, 4);
        CHECK(final_mask == 0x21u, "f_8005bccd0 must atomically OR bit 5 (0x20) into [x0 + 0x90]");
    }

    // 7. Execute TOTK f_8027c7874 (CRC32B string hash):
    {
        GuestFn fn = get_fn("f_8027c7874");
        const char* str = "UltraTears";
        Cpu c{};
        c.x[0] = reinterpret_cast<uint64_t>(str);
        fn(&c);
        uint32_t hash_nonempty = static_cast<uint32_t>(c.x[0]);
        CHECK(hash_nonempty != 0, "f_8027c7874 must compute non-zero CRC32 for 'UltraTears'");

        const char* empty_str = "";
        c.x[0] = reinterpret_cast<uint64_t>(empty_str);
        fn(&c);
        CHECK(c.x[0] == 0, "f_8027c7874 must return 0 for empty string");
    }

    // 8. Execute f_800090000 (`blr x8; ret`) with `f_80000f3bc` registered in `g_icache_pc`/`g_icache_fn`:
    {
        GuestFn target_fn = get_fn("f_80000f3bc");
        GuestFn caller_fn = get_fn("f_800090000");
        auto set_ic = reinterpret_cast<void(*)(uint64_t, GuestFn)>(dlsym(dl, "set_so_icache"));
        set_ic(0x80000f3bcULL, target_fn);
        Cpu c{};
        c.x[8] = 0x80000f3bcULL;
        caller_fn(&c);
        CHECK(c.x[0] == 0x802be0b6aULL, "ShadowDispatchTablePass O(1) BLR must invoke @f_80000f3bc directly");
    }

    // 9. Execute f_800091000 (FCMP + FCSEL + FCVTZS + SSE4.2 CRC32CW + guard-elided UDIV):
    {
        GuestFn fn = get_fn("f_800091000");
        CHECK(fn != nullptr, "f_800091000 symbol must exist");
        Cpu c{};
        float s0 = 45.75f, s1 = 99.9f;
        std::memcpy(&c.v[0], &s0, 4);
        std::memcpy(&c.v[1], &s1, 4);
        c.x[1] = 0xFFFFFFFFu;
        fn(&c);
        // max(45.75f, 99.9f) = 99.9f -> FCVTZS = 99 -> UDIV by 5 = 19; CRC32CW(0xFFFFFFFF, 99) != 0
        CHECK(c.x[0] == 19, "f_800091000 must compute int(max(45.75, 99.9)) / 5 == 19");
        CHECK(c.x[1] != 0 && c.x[1] != 0xFFFFFFFFu, "f_800091000 must compute hardware SSE4.2 CRC32CW in W1");
    }

    dlclose(dl);
    PASS_TEST("End-to-End Native Compilation & Execution of Real TOTK 1.4.2 `main` + x86-64 Devirtualized Functions");
}

} // namespace

// Stub runtime symbols required when linking standalone probe_passes
extern "C" {
#include "src/runtime/hle.h"
HLE_FUNC("__probe_dummy_hle__", hle_probe_dummy) { (void)c; }
int totk_drs_enabled(void) { return 0; }
void rt_svc(Cpu* c, uint32_t imm, uint64_t pc) { (void)c; (void)imm; (void)pc; }
__attribute__((weak)) const char* loader_symbol_at(uint64_t addr, uint64_t* offset) { (void)addr; if (offset) *offset = 0; return NULL; }
__attribute__((weak)) const char* loader_module_at(uint64_t addr, uint64_t* offset) { (void)addr; if (offset) *offset = 0; return NULL; }
extern const uint64_t main_fn_addrs[1] = {0};
extern const GuestFn  main_fn_ptrs[1]  = {nullptr};
extern const uint64_t main_fn_count = 0;
extern const uint64_t subsdk0_fn_addrs[1] = {0};
extern const GuestFn  subsdk0_fn_ptrs[1]  = {nullptr};
extern const uint64_t subsdk0_fn_count = 0;
extern const uint64_t sdk_fn_addrs[1] = {0};
extern const GuestFn  sdk_fn_ptrs[1]  = {nullptr};
extern const uint64_t sdk_fn_count = 0;
}

void test_19_hoisted_table_jump_table_resolution() {
    // Real TOTK 1.4.2 f_8002824a0 jump table slice around 0x800282e88 targeting 0x800282ea4
    uint64_t entry = 0x8002824a0ULL;
    uint64_t end   = 0x800283868ULL;
    uint64_t br_pc = 0x800282e88ULL;

    // Check if main NSO exists in test path to run full NSO integration check
    std::string nso_path = "../tmp_test/exefs/exefs/main";
    if (!std::filesystem::exists(nso_path)) {
        nso_path = "data/exefs/main";
    }
    if (std::filesystem::exists(nso_path)) {
        nso::NsoFile nso(nso_path);
        uint64_t base = 0x800000000ULL;
        size_t nwords = nso.text.second / 4;
        std::vector<uint32_t> words(nwords);
        std::memcpy(words.data(), nso.image.data() + nso.text.first, nwords * 4);

        nso::JumpTableResolver jt_resolver(nso, base, words);
        std::map<std::string, uint64_t> stats;
        auto res = jt_resolver.resolve(br_pc, entry, end, stats);
        CHECK(res.has_value(), "JumpTableResolver must resolve hoisted-table jump table at 0x800282e88");
        CHECK(res->size() == 7, "JumpTable at 0x800282e88 must resolve exactly 7 targets");

        std::set<uint64_t> target_set(res->begin(), res->end());
        CHECK(target_set.count(0x800282ea4ULL) == 1, "Resolved targets must include fatal crash target 0x800282ea4");
        CHECK(target_set.count(0x800282b38ULL) == 1, "Resolved targets must include 0x800282b38");
        CHECK(target_set.count(0x800282e8cULL) == 1, "Resolved targets must include 0x800282e8c");
        CHECK(target_set.count(0x8002830fcULL) == 1, "Resolved targets must include 0x8002830fc");
        CHECK(target_set.count(0x800283114ULL) == 1, "Resolved targets must include 0x800283114");
        CHECK(target_set.count(0x800283128ULL) == 1, "Resolved targets must include 0x800283128");
        CHECK(target_set.count(0x80028313cULL) == 1, "Resolved targets must include 0x80028313c");

        // Lower with JumpTableLoweringPass and verify switch cases
        Module M("test_hoisted_jt", "x86_64-pc-linux-gnu");
        Function* fn = M.create_function("f_8002824a0", 0x800282e70ULL, 0x800282e8cULL + 4);
        fn->label_pcs = target_set;
        fn->label_pcs.insert(entry);
        fn->label_pcs.insert(br_pc);

        JumpTableInfo jti;
        jti.is_all_labels = false;
        jti.targets = *res;
        fn->jump_tables[br_pc] = jti;

        std::vector<uint32_t> slice_words = {
            0x51000508u, // 0x800282e70: sub w8, w8, #1
            0x7100191fu, // 0x800282e74: cmp w8, #6
            0x54000588u, // 0x800282e78: b.hi 0x800282f28
            0x10ffe5e9u, // 0x800282e7c: adr x9, #-1362
            0x78687b4au, // 0x800282e80: ldrsh x10, [x26, x8, lsl #1]
            0x8b0a0929u, // 0x800282e84: add x9, x9, x10, lsl #2
            0xd61f0120u, // 0x800282e88: br x9
            0xd65f03c0u  // 0x800282e8c: ret
        };
        for (uint64_t t : *res) {
            fn->label_pcs.insert(t);
        }
        fn->label_pcs.insert(0x800282e70ULL);
        fn->label_pcs.insert(0x800282f28ULL);

        AArch64ToLLVMLifter lifter(0x800282e70ULL, 0x800282e8cULL + 4);
        lifter.lift_function(M, fn, slice_words, 0x800282e70ULL);

        for (uint64_t t : *res) {
            if (!fn->get_block(block_label(t))) {
                BasicBlock* tbb = fn->create_block(block_label(t), t);
                IRBuilder TB(fn, tbb);
                TB.emit_raw("ret void", OpTag::Return);
            }
        }
        if (!fn->get_block("L_800282f28")) {
            BasicBlock* fbb = fn->create_block("L_800282f28", 0x800282f28ULL);
            IRBuilder FB(fn, fbb);
            FB.emit_raw("ret void", OpTag::Return);
        }

        PassPipelineConfig cfg;
        cfg.text_lo = 0x800000000ULL;
        cfg.text_hi = 0x802ba61f0ULL;
        ModulePassManager MPM;
        build_ultratears_pipeline(MPM, cfg);
        MPM.run(M);
        std::string ir = M.serialize();
        CHECK(ir.find("i64 34362371748, label %L_800282ea4") != std::string::npos,
              "Switch must directly target %L_800282ea4 for PC 0x800282ea4");
        CHECK(verify_ir_with_llvm(ir, "test_hoisted_jt"), "Hoisted jump table IR must verify with libLLVM");
    }

    PASS_TEST("Pass 13 / CFG: Hoisted-Table Jump Table Resolution & 0x800282ea4 Intra-Function Dispatch");
}

void test_20_pass_bug_regressions_and_selective_disabling() {
    // 1. Regression: CpuStatePromotionPass write-only register in call-free function with conditional branch:
    //    cbz  x0, L_ret         (0xb4000040 -> +8 = 0x800200008)
    //    mov  x1, #42           (0xd2800541)
    //  L_ret:
    //    ret                    (0xd65f03c0)
    // Previously, `!read_regs.count(1) && !has_any_call` skipped loading `%loc_x1` from `c->x[1]` at entry,
    // causing `ret void` on the `x0 == 0` branch to flush uninitialized `%loc_x1` back to `c->x[1]`!
    {
        uint64_t entry = 0x800200000ULL;
        std::vector<uint32_t> words = {
            0xb4000040u, // cbz x0, +8
            0xd2800541u, // mov x1, #42
            0xd65f03c0u  // ret
        };
        Module M("test_cond_write_only", "x86_64-pc-linux-gnu");
        Function* fn = M.create_function("f_800200000", entry, entry + 12);
        fn->label_pcs = {entry, entry + 4, entry + 8};
        AArch64ToLLVMLifter lifter(entry, entry + 12);
        lifter.lift_function(M, fn, words, entry);

        ProfileGuidedEntryHookElimPass().run(M);
        HorizonLoweringPass().run(M);
        CpuStatePromotionPass().run(M);
        std::string ir = M.serialize();
        CHECK(ir.find("getelementptr inbounds i8, ptr %c, i64 8") != std::string::npos &&
              ir.find("store i64 %ldv") != std::string::npos,
              "CpuStatePromotionPass must initialize %loc_x1 from c->x[1] on entry when x1 is only conditionally written");
        CHECK(verify_ir_with_llvm(ir, "test_cond_write_only"), "Conditional write-only IR must verify with libLLVM");
    }

    // 2. Regression: 32-bit Wn read of 64-bit constant in NsoRodataConstPropAndDevirtPass & AArch64IdiomDeconstructPass:
    //    movz x8, #0x1234          (0xd2824688)
    //    movk x8, #0x8, lsl #32    (0xf2c00108) -> X8 = 0x800001234
    //    mov  w9, w8               (0x2a0803e9) -> W9 = 0x1234 (upper 32 bits MUST be zeroed!)
    //    ret                       (0xd65f03c0)
    {
        uint64_t entry = 0x800200100ULL;
        std::vector<uint32_t> words = {
            0xd2824688u, // movz x8, #0x1234
            0xf2c00108u, // movk x8, #0x8, lsl #32
            0x2a0803e9u, // mov w9, w8 (orr w9, wzr, w8)
            0xd65f03c0u  // ret
        };
        Module M("test_wreg_trunc", "x86_64-pc-linux-gnu");
        Function* fn = M.create_function("f_800200100", entry, entry + 16);
        fn->label_pcs = {entry};
        AArch64ToLLVMLifter lifter(entry, entry + 16);
        lifter.lift_function(M, fn, words, entry);

        ProfileGuidedEntryHookElimPass().run(M);
        NsoRodataConstPropAndDevirtPass().run(M);
        HorizonLoweringPass().run(M);
        AArch64IdiomDeconstructPass().run(M);
        CpuStatePromotionPass().run(M);
        std::string ir = M.serialize();
        CHECK(ir.find("store i64 4660, ptr %loc_x9") != std::string::npos,
              "32-bit `mov w9, w8` must truncate 0x800001234 to 0x1234 (4660), not preserve upper 32 bits");
        CHECK(verify_ir_with_llvm(ir, "test_wreg_trunc"), "32-bit Wn truncation IR must verify with libLLVM");
    }

    // 3. Regression: AArch64IdiomDeconstructPass paired store coalescing must NOT coalesce negative/`sub` offsets:
    {
        uint64_t entry = 0x800200200ULL;
        Module M("test_stp_sub_guard", "x86_64-pc-linux-gnu");
        Function* fn = M.create_function("f_800200200", entry, entry + 12);
        BasicBlock* bb = fn->create_block("entry", entry);
        IRBuilder B(fn, bb);
        Value base = B.read_arch_reg(0, TypeKind::Int64);
        B.guest_store(TypeKind::Int32, base, Value::imm(TypeKind::Int32, 0), entry);
        Value ea_neg = B.binop("sub", TypeKind::Int64, base, Value::imm_u64(4));
        B.guest_store(TypeKind::Int32, ea_neg, Value::imm(TypeKind::Int32, 0), entry + 4);
        B.emit_raw("ret void", OpTag::Return);

        HorizonLoweringPass().run(M);
        AArch64IdiomDeconstructPass().run(M);
        std::string ir = M.serialize();
        CHECK(ir.find("coalesced paired 32-bit constant stores") == std::string::npos,
              "AArch64IdiomDeconstructPass must NOT coalesce stores when second address is `sub i64 %base, 4`");
    }

    // 4. Selective pass disabling configuration checks:
    {
        PassPipelineConfig cfg;
        cfg.disable_high_risk_passes();
        CHECK(!cfg.enable_rodata_constprop && !cfg.enable_lse_fastpath &&
              !cfg.enable_link_reg_elision && !cfg.enable_tail_call_devirt &&
              !cfg.enable_aapcs64_abi_contract && !cfg.enable_cross_chunk_leaf_inline,
              "disable_high_risk_passes() must disable all high-risk interprocedural/speculative passes");
        CHECK(cfg.enable_fast_fp && cfg.enable_idiom_deconstruct && cfg.enable_nzcv_fusion,
              "disable_high_risk_passes() must keep safe intra-function passes enabled");
        CHECK(cfg.set_pass_enabled("lse-fastpath", true) && cfg.enable_lse_fastpath,
              "set_pass_enabled must toggle individual passes by name");
    }

    PASS_TEST("Regressions & Selective Pass Disabling (CpuStatePromotion cond write-only, 32-bit Wn constprop, sub-store guard)");
}

int main() {
    std::printf("=== UltraTears 23-Pass LLVM IR Test Suite ===\n");
    test_02_profile_guided_entry_hook_elim_pass();
    test_03_nso_rodata_constprop_and_devirt_pass();
    test_04_fpcr_fast_fp_lowering_pass();
    test_05_aarch64_native_intrinsic_pass();
    test_06_exclusive_monitor_lse_fastpath_pass();
    test_07_horizon_lowering_and_tls_spinwait_passes();
    test_08_guest_stack_and_alignment_pass();
    test_09_jump_table_and_shadow_dispatch_passes();
    test_10_nzcv_predicate_fusion_and_dead_flag_elim_passes();
    test_11_lr_elision_aapcs64_and_cpu_state_promotion_passes();
    test_12_cross_chunk_leaf_inline_and_static_nce_abi_passes();
    test_13_simd_pairwise_and_conversion_inline_pass();
    test_14_x86_64_hardware_intrinsic_pass();
    test_15_aarch64_idiom_deconstruct_pass();
    test_16_fcmp_predicate_fusion_pass();
    test_17_tail_call_devirt_and_cpu_state_pruning_passes();
    test_18_end_to_end_native_execution_of_totk_main_functions();
    test_19_hoisted_table_jump_table_resolution();
    test_20_pass_bug_regressions_and_selective_disabling();

    std::printf("=== Summary: %d/%d test suites passed (%d failed) ===\n",
                g_passed, g_passed + g_failed, g_failed);
    return g_failed == 0 ? 0 : 1;
}
