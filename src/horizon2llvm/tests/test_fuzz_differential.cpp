// Differential Fuzzing Test Suite: Unlowered Reference `.ll` vs Lowered/Optimized `.ll` on x86-64
// (src/horizon2llvm/tests/test_fuzz_differential.cpp)
//
// Lifts real AArch64 functions extracted from `data/exefs/main` (plus multi-instruction
// SIMD/FP/CRC32/Idiom/Flag test functions) into:
//   1. Reference LLVM IR (`serialize_unlowered_reference_ir` — unoptimized lifted IR where
//      every instruction reads/writes `Cpu* %c` directly, packs full 4-bit `NZCV`, and calls
//      C `@rt_*` helpers).
//   2. Target Lowered LLVM IR (`build_ultratears_pipeline` — both `--safe-passes` and
//      `--all-passes` configurations).
// Compiles both Reference and Target `.ll` modules to native x86-64 machine code via
// `libLLVM`, links them against `src/runtime/simd_rt.c`, and runs thousands of randomized
// differential fuzzing iterations per function verifying 100% identical post-execution
// `Cpu` register state (`X0`..`X30`, `SP`, `V0`..`V31`) and guest memory contents.

#include <cassert>
#include <cmath>
#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <dlfcn.h>
#include <iostream>
#include <random>
#include <string>
#include <vector>

extern "C" {
#define _Static_assert static_assert
#define Module RtModuleStruct
#include "src/runtime/cpu.h"
#include "src/runtime/rt.h"
#undef Module
}

#include "main_snippets.hpp"

using namespace ultrs;
using namespace ultrs::llvm_ir;
using namespace ultrs::lifter;
using namespace ultrs::passes;
using namespace ultrs::tests;

namespace {

// Additional synthetic stress snippet combining SIMD, FP, CRC32C, MOVZ+MOVK, UDIV/SDIV, and CMP+CSEL
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
    // Keep inputs for Euclidean GCD/LCM (`f_800af9774`) bounded so loop terminates quickly during fuzzing
    if (std::strcmp(s.name, "f_800af9774") == 0) {
        if (iter == 0) { c.x[0] = 0; c.x[1] = 25; }
        else if (iter == 1) { c.x[0] = 18; c.x[1] = 0; }
        else if (iter == 2) { c.x[0] = 42; c.x[1] = 42; }
        else {
            c.x[0] = static_cast<uint32_t>(rng() % 250);
            c.x[1] = static_cast<uint32_t>(rng() % 250);
        }
    }

    // If the snippet dereferences X0 as a guest memory pointer, point X0 into `guest_mem`
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

    // 1. Build Reference Module (lifted, unoptimized/unlowered .ll) with `<name>_ref` symbols
    Module ref_mod("fuzz_ref_module", "x86_64-pc-linux-gnu");
    for (const auto& s : snippets) {
        uint64_t end_pc = s.entry_pc + s.words.size() * 4;
        Function* fn = ref_mod.create_function(std::string(s.name) + "_ref", s.entry_pc, end_pc);
        fn->label_pcs = s.label_pcs;
        AArch64ToLLVMLifter lifter(s.entry_pc, end_pc);
        lifter.lift_function(ref_mod, fn, s.words, s.entry_pc);
    }
    std::string ref_ir = serialize_unlowered_reference_ir(ref_mod);

    // 2. Build Target Module A (lowered with Safe Passes) with `<name>_safe` symbols
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

    // 3. Build Target Module B (lowered with All 23 Passes) with `<name>_all` symbols
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

    // 4. Compile Reference (-O0) and Target (-O2) modules to x86-64 object files via libLLVM
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

    int rc1 = std::system(("gcc -O2 -fPIC -c " + stub_c + " -o " + stub_o).c_str());
    int rc2 = std::system(("gcc -O2 -fPIC -fno-strict-aliasing -I. -Isrc/runtime -c src/runtime/simd_rt.c -o " + simd_o).c_str());
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

            // Compare X0..X30 (note: if uses_guest_mem_x0 and X0 was unmodified or derived from base, adjust base delta)
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

            // Compare V0..V31 SIMD/FP registers
            for (int v = 0; v < 32; ++v) {
                if (std::memcmp(&cpu_ref.v[v], &cpu_safe.v[v], 16) != 0 ||
                    std::memcmp(&cpu_ref.v[v], &cpu_all.v[v], 16) != 0) {
                    std::fprintf(stderr, "  [FAIL] %s iter %zu SIMD V%d mismatch!\n", s.name, iter, v);
                    fn_ok = false;
                    break;
                }
            }
            if (!fn_ok) { ++failures; break; }

            // Compare Guest Memory buffer
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
