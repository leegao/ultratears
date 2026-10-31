// Differential Fuzzing & Functional Equivalence Tool for UltraTears Lifter
// (src/horizon2llvm/benchmark/fuzz_main.cpp)

#include <chrono>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <filesystem>
#include <fstream>
#include <iostream>
#include <random>
#include <string>
#include <vector>

#include "src/horizon2llvm/benchmark/benchmark_common.hpp"
#include "src/horizon2llvm/benchmark/main_432/runtime_stubs.hpp"

namespace fs = std::filesystem;
using namespace ultrs;
using namespace ultrs::passes;
using namespace ultrs::benchmark;

int main(int argc, char** argv) {
    install_segv_handler();

    std::string sample_dir = "src/horizon2llvm/benchmark/main_432";
    std::string sample_ll_path;
    size_t fuzz_iters = 250;

    for (int i = 1; i < argc; ++i) {
        std::string a = argv[i];
        if (a == "--sample-dir" && i + 1 < argc) {
            sample_dir = argv[++i];
        } else if (a == "--sample-ll" && i + 1 < argc) {
            sample_ll_path = argv[++i];
        } else if (a == "--fuzz-iters" && i + 1 < argc) {
            fuzz_iters = std::stoull(argv[++i]);
        } else if (a == "-h" || a == "--help") {
            std::printf("Usage: %s [options]\n"
                        "Options:\n"
                        "  --sample-dir <dir>    Path to sample directory (default: src/horizon2llvm/benchmark/main_432)\n"
                        "  --sample-ll <file>    Direct path to sample unlowered IR (default: <sample-dir>/sample.ll)\n"
                        "  --fuzz-iters <N>      Differential fuzzing iterations per function (default: 250)\n"
                        "  -h, --help            Show this help message\n", argv[0]);
            return 0;
        }
    }

    std::unique_ptr<ISampleHarness> harness;
    if (sample_dir.find("main_432") != std::string::npos) {
        harness = create_main_432_harness(sample_dir);
    } else {
        std::fprintf(stderr, "Unknown sample harness for %s; defaulting to main_432\n", sample_dir.c_str());
        harness = create_main_432_harness(sample_dir);
    }

    if (sample_ll_path.empty()) {
        sample_ll_path = harness->sample_ll_path();
    }

    std::printf("=== UltraTears Differential Equivalence Fuzzing Tool ===\n");
    std::printf("Sample Target:   %s\n", harness->name());
    std::printf("Input sample IR: %s\n", sample_ll_path.c_str());
    std::printf("Fuzz iterations: %zu per function\n\n", fuzz_iters);

    std::ifstream raw_in(sample_ll_path, std::ios::binary);
    if (!raw_in) {
        std::fprintf(stderr, "FATAL: cannot open %s\n", sample_ll_path.c_str());
        return 1;
    }
    std::ostringstream raw_ss;
    raw_ss << raw_in.rdbuf();
    std::string raw_ir = raw_ss.str();

    ParsedRawChunk parsed_chunk = parse_raw_ll(raw_ir, harness->name());
    std::printf("Loaded %s: %zu functions\n", sample_ll_path.c_str(), parsed_chunk.fns.size());

    nso::NsoFile nso("data/exefs/main");
    init_guest_address_space(nso, harness.get());

    std::unordered_set<uint64_t> unrelocated_rodata_addrs;
    uint64_t ro_lo = GUEST_BASE + nso.rodata.first;
    uint64_t ro_hi = ro_lo + nso.rodata.second;
    for (const auto& r : nso.relocs) {
        if (r.sym != 0) {
            uint64_t va = GUEST_BASE + r.offset;
            if (va >= ro_lo && va < ro_hi) unrelocated_rodata_addrs.insert(va);
        }
    }

    PassPipelineConfig base_cfg = make_base_pipeline_config(nso, &unrelocated_rodata_addrs);

    // Compile helper stubs and simd_rt.o
    std::string stub_c = harness->runtime_stubs_c_path();
    std::string stub_o = "/tmp/" + std::string(harness->name()) + "_stubs.o";
    std::string simd_o = "/tmp/" + std::string(harness->name()) + "_simd_rt.o";
    if (!compile_stubs(stub_c, stub_o, simd_o)) {
        std::fprintf(stderr, "FATAL: failed to compile stub_o or simd_o\n");
        return 1;
    }

    PassPipelineConfig safe_cfg = base_cfg;
    safe_cfg.disable_high_risk_passes();
    std::string safe_ir = lower_parsed_chunk(parsed_chunk, safe_cfg);

    std::string raw_obj = "/tmp/" + std::string(harness->name()) + "_raw.o";
    std::string safe_obj = "/tmp/" + std::string(harness->name()) + "_safe.o";
    std::string raw_so = "/tmp/lib" + std::string(harness->name()) + "_raw.so";
    std::string safe_so = "/tmp/lib" + std::string(harness->name()) + "_safe.so";

    if (!compile_and_link_so(raw_ir, std::string(harness->name()) + "_raw", "default<O2>", raw_obj, stub_o, simd_o, raw_so)) {
        std::fprintf(stderr, "FATAL: failed to compile raw module\n");
        return 1;
    }
    if (!compile_and_link_so(safe_ir, std::string(harness->name()) + "_safe", "default<O2>", safe_obj, stub_o, simd_o, safe_so)) {
        std::fprintf(stderr, "FATAL: failed to compile safe module\n");
        return 1;
    }

    const auto& fn_names = harness->function_names();
    SharedModuleHandle h_raw, h_safe;
    if (!h_raw.load(raw_so, fn_names)) return 1;
    if (!h_safe.load(safe_so, fn_names)) return 1;

    std::vector<uint8_t> snap_heap_raw(0x20000), snap_heap_safe(0x20000);
    std::vector<uint8_t> snap_obj_raw(OBJ_SIZE), snap_obj_safe(OBJ_SIZE);
    size_t total_fuzz_runs = 0;
    size_t fuzz_failures = 0;

    std::printf("--- Running Differential Equivalence Tests (%zu functions) ---\n", fn_names.size());
    for (size_t f = 0; f < fn_names.size(); ++f) {
        std::mt19937_64 rng_raw(0x43200000ULL + f);
        std::mt19937_64 rng_safe(0x43200000ULL + f);
        bool ok = true;

        for (size_t iter = 0; iter < fuzz_iters; ++iter) {
            Cpu cpu_raw{}, cpu_safe{};

            harness->setup_test_case(static_cast<int>(f), iter, rng_raw, cpu_raw);
            h_raw.stub_reset_state(static_cast<uint32_t>(iter + 1));
            h_raw.fns[f](&cpu_raw);
            uint64_t hash_raw  = h_raw.stub_get_trace_hash();
            uint64_t calls_raw = h_raw.stub_get_call_count();
            uint64_t hptr_raw  = h_raw.stub_get_heap_ptr();
            std::memcpy(snap_heap_raw.data(), reinterpret_cast<void*>(HEAP_BASE), snap_heap_raw.size());
            std::memcpy(snap_obj_raw.data(), reinterpret_cast<void*>(OBJ_BASE), snap_obj_raw.size());

            harness->setup_test_case(static_cast<int>(f), iter, rng_safe, cpu_safe);
            h_safe.stub_reset_state(static_cast<uint32_t>(iter + 1));
            h_safe.fns[f](&cpu_safe);
            uint64_t hash_safe  = h_safe.stub_get_trace_hash();
            uint64_t calls_safe = h_safe.stub_get_call_count();
            uint64_t hptr_safe  = h_safe.stub_get_heap_ptr();
            std::memcpy(snap_heap_safe.data(), reinterpret_cast<void*>(HEAP_BASE), snap_heap_safe.size());
            std::memcpy(snap_obj_safe.data(), reinterpret_cast<void*>(OBJ_BASE), snap_obj_safe.size());

            ++total_fuzz_runs;

            if (hash_raw != hash_safe || calls_raw != calls_safe || hptr_raw != hptr_safe) {
                std::fprintf(stderr, "  [FAIL] %s iter %zu trace mismatch: calls(%llu vs %llu) hash(0x%llx vs 0x%llx)\n",
                             fn_names[f].c_str(), iter,
                             static_cast<unsigned long long>(calls_raw),
                             static_cast<unsigned long long>(calls_safe),
                             static_cast<unsigned long long>(hash_raw),
                             static_cast<unsigned long long>(hash_safe));
                ok = false;
                break;
            }

            const int check_gprs[] = {0, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29};
            for (int r : check_gprs) {
                if (cpu_raw.x[r] != cpu_safe.x[r]) {
                    std::fprintf(stderr, "  [FAIL] %s iter %zu X%d mismatch: raw=0x%llx safe=0x%llx\n",
                                 fn_names[f].c_str(), iter, r,
                                 static_cast<unsigned long long>(cpu_raw.x[r]),
                                 static_cast<unsigned long long>(cpu_safe.x[r]));
                    ok = false;
                    break;
                }
            }
            if (!ok) break;

            if (cpu_raw.sp != cpu_safe.sp) {
                std::fprintf(stderr, "  [FAIL] %s iter %zu SP mismatch: raw=0x%llx safe=0x%llx\n",
                             fn_names[f].c_str(), iter,
                             static_cast<unsigned long long>(cpu_raw.sp),
                             static_cast<unsigned long long>(cpu_safe.sp));
                ok = false;
                break;
            }

            if (std::memcmp(snap_heap_raw.data(), snap_heap_safe.data(), snap_heap_raw.size()) != 0 ||
                std::memcmp(snap_obj_raw.data(), snap_obj_safe.data(), snap_obj_raw.size()) != 0) {
                std::fprintf(stderr, "  [FAIL] %s iter %zu guest memory mismatch!\n", fn_names[f].c_str(), iter);
                ok = false;
                break;
            }
        }

        if (!ok) {
            ++fuzz_failures;
        } else {
            std::printf("  [PASS] %-14s (%zu iterations: X0, X19..X29, SP, Heap, Object Arena & Call Trace 100%% identical)\n",
                        fn_names[f].c_str(), fuzz_iters);
        }
    }

    h_raw.close();
    h_safe.close();

    if (fuzz_failures > 0) {
        std::fprintf(stderr, "\nFATAL: %zu/%zu functions failed differential equivalence fuzzing!\n",
                     fuzz_failures, fn_names.size());
        return 1;
    }

    std::printf("\nALL %zu FUNCTIONS PASSED DIFFERENTIAL EQUIVALENCE FUZZING (100%% match across %zu total runs).\n",
                fn_names.size(), total_fuzz_runs);
    return 0;
}
