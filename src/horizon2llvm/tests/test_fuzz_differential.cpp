// Differential Fuzzing Test Suite: Unlowered Reference `.ll` vs Lowered/Optimized `.ll` on x86-64
// (src/horizon2llvm/tests/test_fuzz_differential.cpp)

#include <cassert>
#include <cmath>
#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <dlfcn.h>
#include <filesystem>
#include <iostream>
#include <random>
#include <string>
#include <vector>

extern "C" {
#define _Static_assert static_assert
#define Module RtModuleStruct
#if __has_include("../runtime/cpu.h")
#include "../runtime/cpu.h"
#include "../runtime/rt.h"
#elif __has_include("runtime/cpu.h")
#include "runtime/cpu.h"
#include "runtime/rt.h"
#else
#include "src/runtime/cpu.h"
#include "src/runtime/rt.h"
#endif
#undef Module
}

#include "main_snippets.hpp"

namespace fs = std::filesystem;
using namespace ultrs;
using namespace ultrs::llvm_ir;
using namespace ultrs::lifter;
using namespace ultrs::passes;
using namespace ultrs::tests;

namespace {

// 1. Combined SIMD FADDP + Indexed FMUL + FCVTZS + CRC32C + MOVZ/MOVK + UDIV + CMP/CSEL
ExtractedSnippet make_simd_crc_idiom_stress_snippet() {
    return ExtractedSnippet{
        "f_800700000",
        "Combined SIMD FADDP + Indexed FMUL + FCVTZS + CRC32CX + MOVZ/MOVK + UDIV + CMP/CSEL stress snippet",
        0x800700000ULL,
        {
            0x4e22d420u, // faddp v0.4s, v1.4s, v2.4s
            0x4f829023u, // fmul v3.4s, v1.4s, v2.s[1]
            0x4ea1b804u, // fcvtzs v4.4s, v0.4s
            0x4e31b885u, // addv b5, v4.16b
            0x9ac35c46u, // crc32cx w6, w2, x3
            0xd2824687u, // movz x7, #0x1234
            0xf2b00007u, // movk x7, #0x8000, lsl #16
            0x9ac70828u, // udiv x8, x1, x7
            0x71001c3fu, // cmp w1, #7
            0x9a8830c0u, // csel x0, x6, x8, lo
            0xd65f03c0u  // ret
        },
        {0x800700000ULL},
        false,
        true
    };
}

// 2. Multi-block NZCV flag fusion + CCMP + CSINC + CNEG + UBFM/SBFM/EXTR bitfield stress snippet
ExtractedSnippet make_nzcv_ccmp_bitfield_snippet() {
    return ExtractedSnippet{
        "f_800700100",
        "Multi-block NZCV predicate fusion + UBFM/SBFM/EXTR + CSINC/CNEG stress snippet",
        0x800700100ULL,
        {
            0xd3443c08u, // ubfx x8, x0, #4, #12
            0x93487c29u, // sbfx x9, x1, #8, #24
            0x93c1300au, // extr x10, x0, x1, #12
            0xeb09011fu, // cmp x8, x9
            0x5400008bu, // b.lt +16 (to 0x800700120)
            0x9a890500u, // csinc x0, x8, x9, eq
            0xda8a5541u, // cneg x1, x10, pl
            0x14000003u, // b +12 (to 0x800700128)
            0x8b0a0100u, // 0x800700120: add x0, x8, x10
            0xcb090141u, // sub x1, x10, x9
            0xdac00c02u, // 0x800700128: rev x2, x0
            0xdac01023u, // clz x3, x1
            0xd65f03c0u  // ret
        },
        {0x800700100ULL, 0x800700120ULL, 0x800700128ULL},
        false,
        false
    };
}

// 3. Multi-block FCMP + FCCMP + FCSEL + FRINT + FSQRT floating-point predicate fusion snippet
ExtractedSnippet make_fcmp_fcsel_stress_snippet() {
    return ExtractedSnippet{
        "f_800700200",
        "Multi-block FCMP + FCSEL + FABS + FMINNM/FMAXNM stress snippet",
        0x800700200ULL,
        {
            0x1e20c000u, // fabs s4, s0
            0x1e20c021u, // fabs s5, s1
            0x1e212000u, // fcmp s4, s5
            0x54000064u, // b.mi +12 (to 0x800700218)
            0x1e212800u, // fmaxnm s0, s4, s5
            0x14000002u, // b +8 (to 0x80070021c)
            0x1e213800u, // 0x800700218: fminnm s0, s4, s5
            0x1e202040u, // 0x80070021c: fcmp s2, s0
            0x1e210c00u, // fcsel s1, s4, s5, eq
            0x1e260000u, // fmov w0, s0
            0xd65f03c0u  // ret
        },
        {0x800700200ULL, 0x800700218ULL, 0x80070021cULL},
        false,
        true
    };
}

// 4. Guest Memory LSE Atomic LDXR/STXR Exclusive Monitor Fast-Path + Pre/Post-Indexed Load/Store
ExtractedSnippet make_lse_atomic_mem_snippet() {
    return ExtractedSnippet{
        "f_800700300",
        "Guest memory LDXR/STXR atomic CAS loop + LDP/STP/LDRB/STRB stress snippet",
        0x800700300ULL,
        {
            0x885f7c08u, // 0x800700300: ldxr w8, [x0]
            0x11001d09u, // add w9, w8, #7
            0x880a7c09u, // stxr w10, w9, [x0]
            0x35ffffaaU, // cbnz w10, -12 (to 0x800700300)
            0xa941240bu, // ldp x11, x9, [x0, #16]
            0x8b09016bu, // add x11, x11, x9
            0xf900100bu, // str x11, [x0, #32]
            0x2a0803e0u, // mov w0, w8
            0xd65f03c0u  // ret
        },
        {0x800700300ULL},
        true,
        false
    };
}

// 5.Bounded Loop with TBZ/TBNZ + CBZ/CBNZ + UMADDL/SMADDL (modeled after main_121_simd / main_105_alloc)
ExtractedSnippet make_bounded_loop_madd_snippet() {
    return ExtractedSnippet{
        "f_800700400",
        "Bounded loop with TBZ/TBNZ + CBZ/CBNZ + UMADDL/MADD accumulation",
        0x800700400ULL,
        {
            0x92401c08u, // and x8, x0, #0x7f (bound loop count to 0..127 -> further masked to 0..7)
            0x92400908u, // and x8, x8, #0x7
            0xd2800009u, // movz x9, #0
            0xd280030au, // movz x10, #24
            0xb40000c8u, // 0x800700410: cbz x8, +24 (to 0x800700428)
            0x9baa2509u, // umaddl x9, w8, w10, x9
            0x36000048u, // tbz w8, #0, +8 (to 0x800700420)
            0x91000d29u, // add x9, x9, #3
            0xd1000508u, // 0x800700420: sub x8, x8, #1
            0x17fffffbu, // b -20 (to 0x800700410)
            0xaa0903e0u, // 0x800700428: mov x0, x9
            0xd65f03c0u  // ret
        },
        {0x800700400ULL, 0x800700410ULL, 0x800700420ULL, 0x800700428ULL},
        false,
        false
    };
}

// 6. AAPCS64 Stack Frame Allocation, Callee-Saved Register Spilling & SP Restoration Stress Snippet
ExtractedSnippet make_stack_frame_sp_callee_saved_snippet() {
    return ExtractedSnippet{
        "f_800700500",
        "AAPCS64 Stack frame allocation (sub sp, 128), X19..X22 save/restore, and epilogue add sp, 128",
        0x800700500ULL,
        {
            0xd10203ffu, // sub sp, sp, #128
            0xa90153f3u, // stp x19, x20, [sp, #16]
            0xa9025bf5u, // stp x21, x22, [sp, #32]
            0xa9037bfdu, // stp x29, x30, [sp, #48]
            0x9100c3fdu, // add x29, sp, #48
            0x8b010013u, // add x19, x0, x1
            0x8b030054u, // add x20, x2, x3
            0x8b140275u, // add x21, x19, x20
            0xd2800556u, // mov x22, #42
            0x8b1602a0u, // add x0, x21, x22
            0xa9437bfdu, // ldp x29, x30, [sp, #48]
            0xa9425bf5u, // ldp x21, x22, [sp, #32]
            0xa94153f3u, // ldp x19, x20, [sp, #16]
            0x910203ffu, // add sp, sp, #128
            0xd65f03c0u  // ret
        },
        {0x800700500ULL},
        false,
        false
    };
}

void populate_random_cpu_state(std::mt19937_64& rng, Cpu& c, uint8_t* guest_mem, size_t mem_size,
                               const ExtractedSnippet& s, size_t iter) {
    std::memset(&c, 0, sizeof(Cpu));
    std::memset(guest_mem, 0, mem_size);

    auto rand_u64 = [&]() -> uint64_t {
        uint64_t mode = rng() % 8;
        if (mode == 0) return 0;
        if (mode == 1) return 1;
        if (mode == 2) return ~0ULL;
        if (mode == 3) return static_cast<uint64_t>(rng() % 32);
        if (mode == 4) return 0x80000000ULL;
        if (mode == 5) return 0x7FFFFFFFULL;
        return rng();
    };

    auto rand_f32 = [&]() -> float {
        static const float edge_floats[] = {
            0.0f, -0.0f, 1.0f, -1.0f, 0.5f, -0.5f, 0.25f, 0.75f,
            2.0f, -2.0f, 10.0f, -10.0f, 100.0f, -100.0f, 255.0f, 0.0039215686f
        };
        if (rng() % 3 == 0) {
            return edge_floats[rng() % (sizeof(edge_floats) / sizeof(edge_floats[0]))];
        }
        std::uniform_real_distribution<float> dist(-50.0f, 50.0f);
        return dist(rng);
    };

    for (int r = 0; r < 31; ++r) {
        c.x[r] = rand_u64();
    }
    if (std::strcmp(s.name, "f_800af9774") == 0) {
        if (iter == 0) { c.x[0] = 0; c.x[1] = 25; }
        else if (iter == 1) { c.x[0] = 18; c.x[1] = 0; }
        else if (iter == 2) { c.x[0] = 42; c.x[1] = 42; }
        else {
            c.x[0] = static_cast<uint32_t>(rng() % 250);
            c.x[1] = static_cast<uint32_t>(rng() % 250);
        }
    }

    if (s.uses_guest_mem_x0) {
        c.x[0] = reinterpret_cast<uint64_t>(guest_mem + 64);
        c.x[1] = rng() % 24;
    }

    for (size_t i = 0; i < mem_size; i += 4) {
        if (s.is_float_input) {
            float fv = rand_f32();
            std::memcpy(guest_mem + i, &fv, 4);
        } else {
            uint32_t uv = static_cast<uint32_t>(rng());
            std::memcpy(guest_mem + i, &uv, 4);
        }
    }

    for (int v = 0; v < 32; ++v) {
        for (int lane = 0; lane < 4; ++lane) {
            float fv = rand_f32();
            std::memcpy(reinterpret_cast<char*>(&c.v[v]) + lane * 4, &fv, 4);
        }
    }
    c.sp = reinterpret_cast<uint64_t>(guest_mem + mem_size - 256);
    c.nzcv = (rng() & 0xFULL) << 28;
}

} // namespace

int main(int argc, char** argv) {
    size_t iters_per_fn = 500;
    if (argc >= 2) {
        iters_per_fn = std::stoull(argv[1]);
    }

    std::printf("=== UltraTears Differential Fuzzing Suite (Reference Unlowered .ll vs Lowered .ll) ===\n");
    std::vector<ExtractedSnippet> snippets = all_extracted_main_snippets();
    snippets.push_back(make_simd_crc_idiom_stress_snippet());
    snippets.push_back(make_nzcv_ccmp_bitfield_snippet());
    snippets.push_back(make_fcmp_fcsel_stress_snippet());
    snippets.push_back(make_lse_atomic_mem_snippet());
    snippets.push_back(make_bounded_loop_madd_snippet());
    snippets.push_back(make_stack_frame_sp_callee_saved_snippet());

    // 1. Build Reference Module
    Module ref_mod("fuzz_ref_module", "x86_64-pc-linux-gnu");
    for (const auto& s : snippets) {
        uint64_t end_pc = s.entry_pc + s.words.size() * 4;
        Function* fn = ref_mod.create_function(std::string(s.name) + "_ref", s.entry_pc, end_pc);
        fn->label_pcs = s.label_pcs;
        AArch64ToLLVMLifter lifter(s.entry_pc, end_pc);
        lifter.lift_function(ref_mod, fn, s.words, s.entry_pc);
    }
    std::string ref_ir = serialize_unlowered_reference_ir(ref_mod);

    // 2. Build Target Module A (Safe Passes)
    Module safe_mod("fuzz_safe_module", "x86_64-pc-linux-gnu");
    for (const auto& s : snippets) {
        uint64_t end_pc = s.entry_pc + s.words.size() * 4;
        Function* fn = safe_mod.create_function(std::string(s.name) + "_safe", s.entry_pc, end_pc);
        fn->label_pcs = s.label_pcs;
        AArch64ToLLVMLifter lifter(s.entry_pc, end_pc);
        lifter.lift_function(safe_mod, fn, s.words, s.entry_pc);
    }
    {
        PassPipelineConfig safe_cfg;
        safe_cfg.disable_high_risk_passes();
        ModulePassManager MPM;
        build_ultratears_pipeline(MPM, safe_cfg);
        MPM.run(safe_mod);
    }
    std::string safe_ir = safe_mod.serialize();

    // 3. Build Target Module B (All 23 Passes)
    Module all_mod("fuzz_all_module", "x86_64-pc-linux-gnu");
    for (const auto& s : snippets) {
        uint64_t end_pc = s.entry_pc + s.words.size() * 4;
        Function* fn = all_mod.create_function(std::string(s.name) + "_all", s.entry_pc, end_pc);
        fn->label_pcs = s.label_pcs;
        AArch64ToLLVMLifter lifter(s.entry_pc, end_pc);
        lifter.lift_function(all_mod, fn, s.words, s.entry_pc);
    }
    {
        PassPipelineConfig all_cfg;
        all_cfg.enable_all_passes();
        ModulePassManager MPM;
        build_ultratears_pipeline(MPM, all_cfg);
        MPM.run(all_mod);
    }
    std::string all_ir = all_mod.serialize();

    std::string ref_obj  = "/tmp/fuzz_ref.o";
    std::string safe_obj = "/tmp/fuzz_safe.o";
    std::string all_obj  = "/tmp/fuzz_all.o";
    std::string stub_c   = "/tmp/fuzz_stubs.c";
    std::string stub_o   = "/tmp/fuzz_stubs.o";
    std::string simd_o   = "/tmp/fuzz_simd_rt.o";
    std::string so_path  = "/tmp/fuzz_diff_suite.so";

    llvm_backend::LibLLVM::instance().process_ir(ref_ir, "fuzz_ref", /*verify=*/true, "", nullptr, "", ref_obj, "x86_64-pc-linux-gnu");
    llvm_backend::LibLLVM::instance().process_ir(safe_ir, "fuzz_safe", /*verify=*/true, "default<O2>", nullptr, "", safe_obj, "x86_64-pc-linux-gnu");
    llvm_backend::LibLLVM::instance().process_ir(all_ir, "fuzz_all", /*verify=*/true, "default<O2>", nullptr, "", all_obj, "x86_64-pc-linux-gnu");

    {
        FILE* f = std::fopen(stub_c.c_str(), "w");
        std::fprintf(f,
            "#include <stdint.h>\n"
            "#include <stdlib.h>\n"
            "int32_t g_fnprof = 0;\n"
            "uint64_t g_icache_pc[65536];\n"
            "void* g_icache_fn[65536];\n"
            "void fnprof_hit(uint64_t a, uint64_t b, uint64_t c) {}\n"
            "void rt_dispatch(void* c) {}\n"
            "void rt_svc(void* c, int32_t imm, uint64_t pc) {}\n"
            "void rt_brk(void* c, int32_t imm, uint64_t pc) { abort(); }\n"
            "void rt_udf(void* c, uint64_t pc) { abort(); }\n"
            "uint64_t rt_ticks(void) { return 0; }\n"
            "int32_t totk_drs_enabled(void) { return 0; }\n"
            "\n");
        std::fclose(f);
    }

    std::string simd_c = fs::exists("src/horizon2llvm/runtime/simd_rt.c")
                         ? "src/horizon2llvm/runtime/simd_rt.c"
                         : (fs::exists("runtime/simd_rt.c") ? "runtime/simd_rt.c" : "src/runtime/simd_rt.c");
    std::string inc_flags = "-I. -Isrc/horizon2llvm -Isrc/horizon2llvm/runtime -Isrc/runtime";
    int rc1 = std::system(("gcc -O2 -fPIC -c " + stub_c + " -o " + stub_o).c_str());
    int rc2 = std::system(("gcc -O2 -fPIC -fno-strict-aliasing " + inc_flags + " -c " + simd_c + " -o " + simd_o).c_str());
    int rc3 = std::system(("gcc -shared -Wl,-Bsymbolic -O2 " + ref_obj + " " + safe_obj + " " + all_obj + " " + stub_o + " " + simd_o + " -lm -o " + so_path).c_str());
    if (rc1 != 0 || rc2 != 0 || rc3 != 0) {
        std::fprintf(stderr, "FATAL: Failed to compile/link differential fuzzing shared object\n");
        return 1;
    }

    void* dl = dlopen(so_path.c_str(), RTLD_NOW | RTLD_LOCAL);
    if (!dl) {
        std::fprintf(stderr, "FATAL: dlopen failed: %s\n", dlerror());
        return 1;
    }

    using GuestFn = void (*)(Cpu*);
    std::mt19937_64 rng(0x554C545241544541ULL);
    constexpr size_t MEM_SIZE = 4096;
    alignas(64) uint8_t mem_init[MEM_SIZE];
    alignas(64) uint8_t mem_ref[MEM_SIZE];
    alignas(64) uint8_t mem_safe[MEM_SIZE];
    alignas(64) uint8_t mem_all[MEM_SIZE];

    size_t total_runs = 0;
    size_t failures = 0;

    for (const auto& s : snippets) {
        auto fn_ref  = reinterpret_cast<GuestFn>(dlsym(dl, (std::string(s.name) + "_ref").c_str()));
        auto fn_safe = reinterpret_cast<GuestFn>(dlsym(dl, (std::string(s.name) + "_safe").c_str()));
        auto fn_all  = reinterpret_cast<GuestFn>(dlsym(dl, (std::string(s.name) + "_all").c_str()));
        if (!fn_ref || !fn_safe || !fn_all) {
            std::fprintf(stderr, "  [FAIL] Missing dlsym symbols for %s\n", s.name);
            ++failures;
            continue;
        }

        bool fn_ok = true;
        for (size_t iter = 0; iter < iters_per_fn; ++iter) {
            Cpu cpu_init{};
            populate_random_cpu_state(rng, cpu_init, mem_init, MEM_SIZE, s, iter);

            Cpu cpu_ref = cpu_init;
            Cpu cpu_safe = cpu_init;
            Cpu cpu_all = cpu_init;
            std::memcpy(mem_ref, mem_init, MEM_SIZE);
            std::memcpy(mem_safe, mem_init, MEM_SIZE);
            std::memcpy(mem_all, mem_init, MEM_SIZE);

            if (s.uses_guest_mem_x0) {
                cpu_ref.x[0]  = reinterpret_cast<uint64_t>(mem_ref + 64);
                cpu_safe.x[0] = reinterpret_cast<uint64_t>(mem_safe + 64);
                cpu_all.x[0]  = reinterpret_cast<uint64_t>(mem_all + 64);
            }
            cpu_ref.sp  = reinterpret_cast<uint64_t>(mem_ref + MEM_SIZE - 256);
            cpu_safe.sp = reinterpret_cast<uint64_t>(mem_safe + MEM_SIZE - 256);
            cpu_all.sp  = reinterpret_cast<uint64_t>(mem_all + MEM_SIZE - 256);

            fn_ref(&cpu_ref);
            fn_safe(&cpu_safe);
            fn_all(&cpu_all);
            ++total_runs;

            for (int r = 0; r < 31; ++r) {
                uint64_t vr = cpu_ref.x[r];
                uint64_t vs = cpu_safe.x[r];
                uint64_t va = cpu_all.x[r];
                if (s.uses_guest_mem_x0) {
                    uint64_t br = reinterpret_cast<uint64_t>(mem_ref);
                    uint64_t bs = reinterpret_cast<uint64_t>(mem_safe);
                    uint64_t ba = reinterpret_cast<uint64_t>(mem_all);
                    if (vr >= br && vr < br + MEM_SIZE) vr -= br;
                    if (vs >= bs && vs < bs + MEM_SIZE) vs -= bs;
                    if (va >= ba && va < ba + MEM_SIZE) va -= ba;
                }
                if (vr != vs || vr != va) {
                    std::fprintf(stderr, "  [FAIL] %s iter %zu GPR X%d mismatch: ref=0x%llx safe=0x%llx all=0x%llx\n",
                                 s.name, iter, r,
                                 static_cast<unsigned long long>(vr),
                                 static_cast<unsigned long long>(vs),
                                 static_cast<unsigned long long>(va));
                    fn_ok = false;
                    break;
                }
            }
            if (!fn_ok) { ++failures; break; }

            // Verify AAPCS64 SP preservation across differential tiers
            uint64_t spr = cpu_ref.sp - reinterpret_cast<uint64_t>(mem_ref);
            uint64_t sps = cpu_safe.sp - reinterpret_cast<uint64_t>(mem_safe);
            uint64_t spa = cpu_all.sp - reinterpret_cast<uint64_t>(mem_all);
            if (spr != sps || spr != spa) {
                std::fprintf(stderr, "  [FAIL] %s iter %zu SP mismatch: ref=0x%llx safe=0x%llx all=0x%llx\n",
                             s.name, iter,
                             static_cast<unsigned long long>(spr),
                             static_cast<unsigned long long>(sps),
                             static_cast<unsigned long long>(spa));
                fn_ok = false;
                ++failures;
                break;
            }
            uint64_t expected_sp = MEM_SIZE - 256;
            if (spr != expected_sp) {
                std::fprintf(stderr, "  [FAIL] %s iter %zu SP leaked stack frame! entry=0x%llx exit=0x%llx (delta=%lld)\n",
                             s.name, iter,
                             static_cast<unsigned long long>(expected_sp),
                             static_cast<unsigned long long>(spr),
                             static_cast<long long>(spr - expected_sp));
                fn_ok = false;
                ++failures;
                break;
            }

            for (int v = 0; v < 32; ++v) {
                if (std::memcmp(&cpu_ref.v[v], &cpu_safe.v[v], 16) != 0 ||
                    std::memcmp(&cpu_ref.v[v], &cpu_all.v[v], 16) != 0) {
                    std::fprintf(stderr, "  [FAIL] %s iter %zu SIMD V%d mismatch!\n", s.name, iter, v);
                    fn_ok = false;
                    break;
                }
            }
            if (!fn_ok) { ++failures; break; }

            if (std::memcmp(mem_ref, mem_safe, MEM_SIZE) != 0 ||
                std::memcmp(mem_ref, mem_all, MEM_SIZE) != 0) {
                std::fprintf(stderr, "  [FAIL] %s iter %zu guest memory buffer mismatch!\n", s.name, iter);
                fn_ok = false;
                ++failures;
                break;
            }
        }
        if (fn_ok) {
            std::printf("  [PASS] %-14s (%zu fuzz iterations: Reference .ll == Safe-Passes .ll == All-Passes .ll)\n",
                        s.name, iters_per_fn);
        }
    }

    dlclose(dl);
    std::printf("=== Differential Fuzzing Summary: %zu/%zu functions matched across %zu total x86-64 executions (%zu failures) ===\n",
                snippets.size() - failures, snippets.size(), total_runs, failures);
    return failures == 0 ? 0 : 1;
}
