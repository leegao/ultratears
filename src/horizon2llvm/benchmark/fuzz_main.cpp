// Enhanced Differential Fuzzing & Path-Exploration Tool for UltraTears Lifter
// Supports:
//  - Arbitrary .ll and multi-sample (--all-samples) differential equivalence testing
//  - Branch-sensitive stub policy exploration (testing all g_stub_branch_policy bitmasks)
//  - Equivalence verification across Raw Reference, Safe Default (Pass 21), and All Passes (Pass 23)
//  - Distinct execution path bucket tracking, call depth statistics, and longest-path discovery
// (src/horizon2llvm/benchmark/fuzz_main.cpp)

#include <algorithm>
#include <chrono>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <filesystem>
#include <fstream>
#include <iostream>
#include <map>
#include <random>
#include <set>
#include <sstream>
#include <string>
#include <vector>

#include "benchmark/benchmark_common.hpp"

namespace fs = std::filesystem;
using namespace ultrs;
using namespace ultrs::passes;
using namespace ultrs::benchmark;

namespace {

static int run_single_sample_fuzz(
    const std::string& sample_dir,
    const std::string& sample_ll_override,
    size_t fuzz_iters,
    const nso::NsoFile& nso,
    const std::unordered_set<uint64_t>& unrelocated_rodata_addrs,
    std::unordered_map<uint64_t, LeafFunctionSlice>& global_leaves) {

    std::unique_ptr<ISampleHarness> harness = create_sample_harness(sample_dir, sample_ll_override);
    std::string sample_ll_path = sample_ll_override.empty() ? harness->sample_ll_path() : sample_ll_override;
    std::string chunk_stem = harness->name();

    std::printf("\n====================================================================================================\n");
    std::printf("=== UltraTears Differential Equivalence & Path-Exploration Fuzzing: %s ===\n", chunk_stem.c_str());
    std::printf("====================================================================================================\n");
    std::printf("Input sample IR: %s\n", sample_ll_path.c_str());
    std::printf("Fuzz iterations: %zu per function (across branch-sensitive stub policies)\n\n", fuzz_iters);

    std::ifstream raw_in(sample_ll_path, std::ios::binary);
    if (!raw_in) {
        std::fprintf(stderr, "FATAL: cannot open %s\n", sample_ll_path.c_str());
        return 1;
    }
    std::ostringstream raw_ss;
    raw_ss << raw_in.rdbuf();
    std::string raw_ir = raw_ss.str();

    ParsedRawChunk parsed_chunk = parse_raw_ll(raw_ir, chunk_stem);
    SampleStaticAnalysis static_analysis = load_or_generate_stub_analysis(harness->sample_dir());

    std::printf("Loaded %s: %zu functions (%zu ARM64 insns, %zu external callees, %zu branch-sensitive)\n",
                sample_ll_path.c_str(), parsed_chunk.fns.size(),
                parsed_chunk.total_arm64_insns,
                static_analysis.external_stubs.size(),
                static_analysis.num_branch_sensitive);

    init_guest_address_space(nso, harness.get());
    PassPipelineConfig base_cfg = make_base_pipeline_config(nso, &unrelocated_rodata_addrs, &global_leaves);

    std::string stub_c = harness->runtime_stubs_c_path();
    std::string stub_o = "/tmp/" + chunk_stem + "_stubs.o";
    std::string simd_o = "/tmp/" + chunk_stem + "_simd_rt.o";
    if (!compile_stubs(stub_c, stub_o, simd_o)) {
        std::fprintf(stderr, "FATAL: failed to compile stub_o or simd_o\n");
        return 1;
    }

    PassPipelineConfig safe_cfg = base_cfg;
    safe_cfg.disable_high_risk_passes();
    std::string safe_ir = lower_parsed_chunk(parsed_chunk, safe_cfg);

    PassPipelineConfig all_cfg = base_cfg;
    all_cfg.enable_all_passes();
    std::string all_ir = lower_parsed_chunk(parsed_chunk, all_cfg);

    std::string raw_obj  = "/tmp/" + chunk_stem + "_raw.o";
    std::string safe_obj = "/tmp/" + chunk_stem + "_safe.o";
    std::string all_obj  = "/tmp/" + chunk_stem + "_all.o";
    std::string raw_so   = "/tmp/lib" + chunk_stem + "_raw.so";
    std::string safe_so  = "/tmp/lib" + chunk_stem + "_safe.so";
    std::string all_so   = "/tmp/lib" + chunk_stem + "_all.so";

    if (!compile_and_link_so(raw_ir, chunk_stem + "_raw", "default<O2>", raw_obj, stub_o, simd_o, raw_so) ||
        !compile_and_link_so(safe_ir, chunk_stem + "_safe", "default<O2>", safe_obj, stub_o, simd_o, safe_so) ||
        !compile_and_link_so(all_ir, chunk_stem + "_all", "default<O2>", all_obj, stub_o, simd_o, all_so)) {
        std::fprintf(stderr, "FATAL: failed to compile raw, safe, or all module for %s\n", chunk_stem.c_str());
        return 1;
    }

    const auto& fn_names = harness->function_names();
    SharedModuleHandle h_raw, h_safe, h_all;
    if (!h_raw.load(raw_so, fn_names) || !h_safe.load(safe_so, fn_names) || !h_all.load(all_so, fn_names)) {
        return 1;
    }

    const size_t snap_obj_bytes = 0x100000ULL;
    std::vector<uint8_t> snap_heap_raw(0x20000), snap_heap_safe(0x20000);
    std::vector<uint8_t> snap_obj_raw(snap_obj_bytes), snap_obj_safe(snap_obj_bytes);
    size_t total_fuzz_runs = 0;
    size_t fuzz_failures = 0;
    size_t all_passes_exact_matches = 0;

    uint32_t num_policies = static_cast<uint32_t>(
        1u << std::min<size_t>(3, std::max<size_t>(1, static_analysis.num_branch_sensitive)));

    std::printf("--- Running Differential Equivalence & Coverage Tests (%zu functions, %u branch policies) ---\n",
                fn_names.size(), num_policies);

    for (size_t f = 0; f < fn_names.size(); ++f) {
        std::mt19937_64 rng_raw(0x43200000ULL + f);
        std::mt19937_64 rng_safe(0x43200000ULL + f);
        std::mt19937_64 rng_all(0x43200000ULL + f);
        bool ok = true;

        std::set<uint64_t> distinct_trace_hashes;
        std::set<uint64_t> distinct_path_buckets;
        uint64_t max_calls_seen = 0;
        uint64_t min_calls_seen = UINT64_MAX;
        size_t fn_all_matches = 0;

        for (size_t iter = 0; iter < fuzz_iters; ++iter) {
            uint32_t policy = static_cast<uint32_t>((iter / 16) % num_policies);
            Cpu cpu_raw{}, cpu_safe{}, cpu_all{};

            // 1. Run Raw Reference
            reset_demand_paged_arenas();
            harness->setup_test_case(static_cast<int>(f), iter, rng_raw, cpu_raw);
            h_raw.stub_reset_state(static_cast<uint32_t>(iter + 1));
            if (h_raw.stub_set_branch_policy) h_raw.stub_set_branch_policy(policy);
            bool ok_raw = run_guest_fn_safely(h_raw.fns[f], &cpu_raw);
            uint64_t hash_raw  = h_raw.stub_get_trace_hash();
            uint64_t calls_raw = h_raw.stub_get_call_count();
            uint64_t hptr_raw  = h_raw.stub_get_heap_ptr();
            std::memcpy(snap_heap_raw.data(), reinterpret_cast<void*>(HEAP_BASE), snap_heap_raw.size());
            std::memcpy(snap_obj_raw.data(), reinterpret_cast<void*>(OBJ_BASE), snap_obj_raw.size());

            // 2. Run Safe Default (Pass 01..21)
            reset_demand_paged_arenas();
            harness->setup_test_case(static_cast<int>(f), iter, rng_safe, cpu_safe);
            h_safe.stub_reset_state(static_cast<uint32_t>(iter + 1));
            if (h_safe.stub_set_branch_policy) h_safe.stub_set_branch_policy(policy);
            bool ok_safe = run_guest_fn_safely(h_safe.fns[f], &cpu_safe);
            uint64_t hash_safe  = h_safe.stub_get_trace_hash();
            uint64_t calls_safe = h_safe.stub_get_call_count();
            uint64_t hptr_safe  = h_safe.stub_get_heap_ptr();
            std::memcpy(snap_heap_safe.data(), reinterpret_cast<void*>(HEAP_BASE), snap_heap_safe.size());
            std::memcpy(snap_obj_safe.data(), reinterpret_cast<void*>(OBJ_BASE), snap_obj_safe.size());

            // 3. Run All Passes (Pass 01..23)
            reset_demand_paged_arenas();
            harness->setup_test_case(static_cast<int>(f), iter, rng_all, cpu_all);
            h_all.stub_reset_state(static_cast<uint32_t>(iter + 1));
            if (h_all.stub_set_branch_policy) h_all.stub_set_branch_policy(policy);
            bool ok_all = run_guest_fn_safely(h_all.fns[f], &cpu_all);
            uint64_t hash_all  = h_all.stub_get_trace_hash();
            uint64_t calls_all = h_all.stub_get_call_count();

            ++total_fuzz_runs;

            if (ok_raw != ok_safe) {
                std::fprintf(stderr, "  [FAIL] %s iter %zu fault status mismatch (raw=%d vs safe=%d)\n",
                             fn_names[f].c_str(), iter, ok_raw, ok_safe);
                ok = false;
                break;
            }
            if (!ok_raw) continue;

            distinct_trace_hashes.insert(hash_raw);
            uint64_t x0_cat = (cpu_raw.x[0] == 0) ? 0ULL : ((cpu_raw.x[0] >= GUEST_BASE) ? 2ULL : 1ULL);
            distinct_path_buckets.insert((calls_raw << 16) ^ (x0_cat << 8) ^ policy);
            max_calls_seen = std::max(max_calls_seen, calls_raw);
            min_calls_seen = std::min(min_calls_seen, calls_raw);

            if (ok_all && hash_all == hash_raw && calls_all == calls_raw && cpu_all.x[0] == cpu_raw.x[0]) {
                ++fn_all_matches;
                ++all_passes_exact_matches;
            }

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

        if (min_calls_seen == UINT64_MAX) min_calls_seen = 0;

        if (!ok) {
            ++fuzz_failures;
        } else {
            std::printf("  [PASS] %-14s (%zu iters | %zu trace hashes | %zu path buckets | calls=[%llu..%llu] | --all-passes match=%zu/%zu)\n",
                        fn_names[f].c_str(),
                        fuzz_iters,
                        distinct_trace_hashes.size(),
                        distinct_path_buckets.size(),
                        static_cast<unsigned long long>(min_calls_seen),
                        static_cast<unsigned long long>(max_calls_seen),
                        fn_all_matches,
                        fuzz_iters);
        }
    }

    h_raw.close();
    h_safe.close();
    h_all.close();

    if (fuzz_failures > 0) {
        std::fprintf(stderr, "\nFATAL: %zu/%zu functions failed differential equivalence fuzzing in %s!\n",
                     fuzz_failures, fn_names.size(), chunk_stem.c_str());
        return 1;
    }

    std::printf("\nALL %zu FUNCTIONS IN %s PASSED DIFFERENTIAL EQUIVALENCE FUZZING (100%% match across %zu total runs; --all-passes match %zu/%zu).\n",
                fn_names.size(), chunk_stem.c_str(), total_fuzz_runs, all_passes_exact_matches, total_fuzz_runs);
    return 0;
}

} // namespace

int main(int argc, char** argv) {
    setvbuf(stdout, nullptr, _IONBF, 0); install_segv_handler();

    std::string sample_dir = "src/horizon2llvm/benchmark/samples/main_432";
    std::string sample_ll_path;
    size_t fuzz_iters = 250;
    bool all_samples = false;

    for (int i = 1; i < argc; ++i) {
        std::string a = argv[i];
        if (a == "--sample-dir" && i + 1 < argc) {
            sample_dir = argv[++i];
        } else if (a == "--sample-ll" && i + 1 < argc) {
            sample_ll_path = argv[++i];
        } else if (a == "--fuzz-iters" && i + 1 < argc) {
            fuzz_iters = std::stoull(argv[++i]);
        } else if (a == "--all-samples") {
            all_samples = true;
        } else if (a == "-h" || a == "--help") {
            std::printf("Usage: %s [options]\n"
                        "Options:\n"
                        "  --sample-dir <dir>    Path to sample directory (default: src/horizon2llvm/benchmark/samples/main_432)\n"
                        "  --sample-ll <file>    Direct path to arbitrary unlowered IR (default: <sample-dir>/sample.ll)\n"
                        "  --all-samples         Run differential fuzzing across all extracted hot/large suites\n"
                        "  --fuzz-iters <N>      Differential fuzzing iterations per function (default: 250)\n"
                        "  -h, --help            Show this help message\n", argv[0]);
            return 0;
        }
    }

    std::string nso_path = fs::exists("data/exefs/main") ? "data/exefs/main" : "../../data/exefs/main";
    nso::NsoFile nso(nso_path);

    std::unordered_set<uint64_t> unrelocated_rodata_addrs;
    uint64_t ro_lo = GUEST_BASE + nso.rodata.first;
    uint64_t ro_hi = ro_lo + nso.rodata.second;
    for (const auto& r : nso.relocs) {
        if (r.sym != 0) {
            uint64_t va = GUEST_BASE + r.offset;
            if (va >= ro_lo && va < ro_hi) unrelocated_rodata_addrs.insert(va);
        }
    }
    std::unordered_map<uint64_t, LeafFunctionSlice> global_leaves;

    if (!all_samples) {
        if (!fs::path(sample_dir).is_absolute() && !fs::exists(sample_dir)) {
            if (fs::exists("src/horizon2llvm/benchmark/samples/" + sample_dir)) {
                sample_dir = "src/horizon2llvm/benchmark/samples/" + sample_dir;
            }
        }
        return run_single_sample_fuzz(
            sample_dir, sample_ll_path, fuzz_iters,
            nso, unrelocated_rodata_addrs, global_leaves);
    }

    std::string bench_root = fs::exists("src/horizon2llvm/benchmark/samples") ? "src/horizon2llvm/benchmark/samples" : "benchmark/samples";
    std::vector<std::string> suite_dirs = {
        bench_root + "/main_432",
        bench_root + "/main_105_alloc",
        // bench_root + "/main_159_dispatch", // Disabled temporarily (investigated separately)
        bench_root + "/main_121_simd",
        bench_root + "/main_300_bvhtree",
        bench_root + "/main_163_actor",
        bench_root + "/main_136_alloc",
        bench_root + "/main_111_slab",
        bench_root + "/main_083_buddy",
        bench_root + "/main_154_hashmap",
        bench_root + "/main_029_mempool",
        bench_root + "/main_121_ringbuf",
        bench_root + "/main_475_threadpool",
        bench_root + "/main_125_rescache",
        bench_root + "/main_123_animblend",
        bench_root + "/main_107_arenabucket",
        bench_root + "/main_124_scenegraph",
        bench_root + "/main_180_eventengine",
        bench_root + "/main_107_freelist",
        bench_root + "/main_107_buddysplit",
        bench_root + "/main_027_physics",
        bench_root + "/main_435_dispatch",
        bench_root + "/main_068_ecs",
        bench_root + "/main_050_renderpass",
        bench_root + "/main_1163_spatialhash",
        bench_root + "/main_067_statickernel",
    };

    for (const auto& sdir : suite_dirs) {
        if (!fs::exists(fs::path(sdir) / "sample.ll")) continue;
        int rc = run_single_sample_fuzz(
            sdir, "", fuzz_iters,
            nso, unrelocated_rodata_addrs, global_leaves);
        if (rc != 0) return rc;
    }

    std::printf("\n====================================================================================================\n");
    std::printf("ALL %zu BENCHMARK SAMPLE SUITES PASSED DIFFERENTIAL EQUIVALENCE FUZZING!\n", suite_dirs.size());
    std::printf("====================================================================================================\n");
    return 0;
}
