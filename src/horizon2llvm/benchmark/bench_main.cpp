// Core Layered Per-Pass Benchmark Engine for UltraTears Lifter
// (src/horizon2llvm/benchmark/bench_main.cpp)

#include <algorithm>
#include <chrono>
#include <cstdio>
#include <cstdlib>
#include <filesystem>
#include <fstream>
#include <iomanip>
#include <iostream>
#include <memory>
#include <random>
#include <sstream>
#include <string>
#include <unordered_map>
#include <unordered_set>
#include <vector>

#include "aarch64/aarch64_lifter.hpp"
#include "benchmark_common.hpp"
#include "harness_interface.hpp"
#include "latency_estimator.hpp"
#include "generic_harness.hpp"
#include "nso_loader.hpp"
#include "passes.hpp"

namespace fs = std::filesystem;
using namespace ultrs;
using namespace ultrs::llvm_ir;
using namespace ultrs::lifter;
using namespace ultrs::passes;
using namespace ultrs::benchmark;

namespace {

struct BenchmarkOptions {
    std::string bench_root;
    std::string sample_dir;
    std::string sample_ll_override;
    std::string results_dir_override;
    std::string report_out_override;
    std::string json_out;
    std::string nso_path;
    size_t bench_iters = 3200;
    bool dump_layers = true;
    bool compact_layers = false;
};

struct LayerRow {
    std::string label;
    std::string tag;
    size_t ir_lines = 0;
    size_t cpu_ldst = 0;
    size_t arm64_insns = 0;
    size_t x86_insns = 0;
    double ratio_vs_arm64 = 0.0;
    size_t rsp_spills = 0;
    size_t cpu_mem_ops = 0;
    double est_common_ns = 0.0;
    double est_longest_ns = 0.0;
    LatencyPercentiles lat;
    std::string ll_path;
    std::string asm_path;
    std::string so_path;
    IRAndAsmMetrics full_metrics;
};

struct PathBenchResult {
    ObservedPathProfile prof;
    bool is_longest_path = false;
    LatencyPercentiles raw_lat;
    LatencyPercentiles safe_lat;
    LatencyPercentiles all_lat;
    double est_path_ns = 0.0;
};

struct PerFnRow {
    std::string name;
    uint64_t entry_pc = 0;
    size_t arm64_insns = 0;
    size_t raw_x86_insns = 0;
    size_t safe_x86_insns = 0;
    size_t all_x86_insns = 0;
    double ratio_all = 0.0;
    double est_common_ns = 0.0;
    double est_longest_ns = 0.0;
    LatencyPercentiles raw_lat;
    LatencyPercentiles safe_lat;
    LatencyPercentiles all_lat;
};

struct SampleBenchmarkContext {
    std::unique_ptr<ISampleHarness> harness;
    std::string chunk_stem;
    std::string sample_ll_path;
    std::string results_dir;
    std::string report_out;
    std::string raw_ir;
    std::string orig_base_ir;
    std::string arm64_asm_path;
    ParsedRawChunk parsed_chunk;
    size_t total_arm64_insns = 0;
    SampleStaticAnalysis static_analysis;
    std::string stub_o;
    std::string simd_o;
    PassPipelineConfig base_cfg;
};

// Step 1: Resolve paths, parse input sample IR, count ARM64 reference instructions,
// and run static CFG longest-path stub synthesis.
bool prepare_benchmark_context(
    const BenchmarkOptions& opts,
    const std::unique_ptr<nso::NsoFile>& nso_ptr,
    const std::unordered_set<uint64_t>& unrelocated_rodata_addrs,
    std::unordered_map<uint64_t, LeafFunctionSlice>& global_leaves,
    SampleBenchmarkContext& ctx) {

    ctx.harness = create_sample_harness(opts.sample_dir, opts.sample_ll_override);
    ctx.chunk_stem = ctx.harness->name();
    ctx.sample_ll_path = opts.sample_ll_override.empty() ? ctx.harness->sample_ll_path() : opts.sample_ll_override;
    ctx.results_dir = opts.results_dir_override.empty() ? ctx.harness->default_results_dir() : opts.results_dir_override;
    ctx.report_out = opts.report_out_override.empty()
                     ? (fs::path(ctx.results_dir) / "BENCHMARK_REPORT.md").string()
                     : opts.report_out_override;

    std::ifstream raw_in(ctx.sample_ll_path, std::ios::binary);
    if (!raw_in) {
        std::fprintf(stderr, "FATAL: cannot open sample IR: %s\n", ctx.sample_ll_path.c_str());
        return false;
    }
    std::ostringstream raw_ss;
    raw_ss << raw_in.rdbuf();
    ctx.raw_ir = raw_ss.str();

    ctx.parsed_chunk = parse_raw_ll(ctx.raw_ir, ctx.chunk_stem);
    ctx.arm64_asm_path = (fs::path(ctx.harness->sample_dir()) / "sample_arm64.asm").string();
    ctx.total_arm64_insns = count_arm64_asm_insns(ctx.arm64_asm_path, ctx.parsed_chunk);

    ctx.static_analysis = load_or_generate_stub_analysis(ctx.harness->sample_dir());
    if (ctx.static_analysis.total_arm64_insns == 0) {
        ctx.static_analysis.total_arm64_insns = ctx.total_arm64_insns;
    }

    std::printf("\n====================================================================================================\n");
    std::printf("=== UltraTears Automated Layered Pass Benchmark Engine: %s ===\n", ctx.chunk_stem.c_str());
    std::printf("====================================================================================================\n");
    std::printf("Sample directory:     %s\n", ctx.harness->sample_dir().c_str());
    std::printf("Input sample IR:      %s (%zu functions)\n", ctx.sample_ll_path.c_str(), ctx.parsed_chunk.fns.size());
    std::printf("ARM64 Reference Asm:  %s (%zu ARM64 insns)\n", ctx.arm64_asm_path.c_str(), ctx.total_arm64_insns);
    std::printf("Static Path Estimate: Common=%zu ARM64 insns | Longest=%zu ARM64 insns\n",
                ctx.static_analysis.total_common_path_arm64_insns, ctx.static_analysis.total_longest_path_arm64_insns);
    std::printf("External Callee Stubs:%zu total (%zu constant-0, %zu pointer-alloc, %zu branch-sensitive)\n",
                ctx.static_analysis.external_stubs.size(),
                ctx.static_analysis.num_constant_zero,
                ctx.static_analysis.num_pointer_alloc,
                ctx.static_analysis.num_branch_sensitive);
    if (opts.dump_layers) {
        std::printf("Results directory:    %s\n", ctx.results_dir.c_str());
    }
    std::printf("Benchmark iterations: %zu (64 micro-batches -> p50 / p75 / p90 latency)\n\n", opts.bench_iters);

    // Initialize guest address space (maps GUEST_BASE, populates test arenas)
    if (nso_ptr) {
        init_guest_address_space(nso_ptr.get(), ctx.harness.get());
        ctx.base_cfg = make_base_pipeline_config(nso_ptr.get(), &unrelocated_rodata_addrs, &global_leaves);
    } else {
        // Fallback when standalone IR benchmarking runs without NSO binary
        init_guest_address_space(nullptr, ctx.harness.get());
        ctx.base_cfg = make_base_pipeline_config(nullptr, nullptr, nullptr);
    }

    // Load baseline.ll if present in sample directory
    std::string ob_path = (fs::path(ctx.harness->sample_dir()) / "baseline.ll").string();
    std::ifstream ob(ob_path, std::ios::binary);
    if (ob) {
        std::ostringstream oss;
        oss << ob.rdbuf();
        ctx.orig_base_ir = oss.str();
    }

    // Compile runtime stubs and simd_rt.o
    ctx.stub_o = "/tmp/" + ctx.chunk_stem + "_stubs.o";
    ctx.simd_o = "/tmp/" + ctx.chunk_stem + "_simd_rt.o";
    std::string stub_c = ctx.harness->runtime_stubs_c_path();
    if (!compile_stubs(stub_c, ctx.stub_o, ctx.simd_o)) {
        std::fprintf(stderr, "FATAL: failed to compile stub_o (%s) or simd_o\n", stub_c.c_str());
        return false;
    }

    if (opts.dump_layers) {
        fs::create_directories(ctx.results_dir);
    }

    return true;
}

// Step 2: Compile all layer IRs and measure percentile latencies in lockstep rotating micro-batches.
bool build_and_measure_layers(
    const BenchmarkOptions& opts,
    SampleBenchmarkContext& ctx,
    std::vector<LayerRow>& out_rows) {

    std::vector<LayerSpec> layers = get_standard_layers(ctx.orig_base_ir, opts.compact_layers);
    out_rows.clear();
    out_rows.reserve(layers.size());

    std::printf("%-44s | %6s | %7s | %5s | %6s | %5s | %5s | %6s | %11s | %19s | %7s\n",
                "Layered Configuration", "IR Lns", "CpuLdSt", "ARM64", "x86_64", "Ratio", "Spill", "CpuMem",
                "Est C/L(ns)", "p50 / p75 / p90(ns)", "Speedup");
    std::printf("---------------------------------------------+--------+---------+-------+--------+-------+-------+--------+-------------+---------------------+--------\n");

    const auto& fn_names = ctx.harness->function_names();
    const size_t N_STATES = std::max<size_t>(1, fn_names.size());

    struct CompiledCacheEntry {
        std::string obj_path;
        std::string asm_path;
        std::string so_path;
        std::string asm_text;
        IRAndAsmMetrics metrics;
        LatencyPercentiles lat;
        bool has_lat = false;
    };
    std::unordered_map<std::string, CompiledCacheEntry> ir_cache;

    std::vector<std::string> layer_irs(layers.size());
    std::vector<std::string> layer_lls(layers.size());
    std::vector<std::string> layer_asms(layers.size());
    std::vector<std::string> layer_sos(layers.size());

    // Phase A: Lower, compile, and analyze distinct IR layers
    for (size_t li = 0; li < layers.size(); ++li) {
        const auto& layer = layers[li];
        std::string& ir_str = layer_irs[li];
        if (layer.is_orig_base) {
            ir_str = ctx.orig_base_ir;
        } else if (layer.is_raw_ref) {
            ir_str = ctx.raw_ir;
        } else {
            PassPipelineConfig lcfg = ctx.base_cfg;
            layer.configure(lcfg);
            ir_str = lower_parsed_chunk(ctx.parsed_chunk, lcfg);
        }

        std::string base_name = ctx.chunk_stem + "_" + layer.tag;
        std::string l_ll  = opts.dump_layers ? (fs::path(ctx.results_dir) / (base_name + ".ll")).string()  : ("/tmp/" + base_name + ".ll");
        std::string l_obj = opts.dump_layers ? (fs::path(ctx.results_dir) / (base_name + ".o")).string()   : ("/tmp/" + base_name + ".o");
        std::string l_asm = opts.dump_layers ? (fs::path(ctx.results_dir) / (base_name + ".asm")).string() : ("/tmp/" + base_name + ".asm");
        std::string l_so  = "/tmp/lib_" + base_name + ".so";

        if (opts.dump_layers) {
            write_if_changed(l_ll, ir_str);
        }

        auto cache_it = ir_cache.find(ir_str);
        if (cache_it != ir_cache.end()) {
            if (opts.dump_layers) {
                if (cache_it->second.obj_path != l_obj) {
                    fs::copy_file(cache_it->second.obj_path, l_obj, fs::copy_options::overwrite_existing);
                }
                write_if_changed(l_asm, cache_it->second.asm_text);
            }
            l_so = cache_it->second.so_path;
        } else {
            if (!compile_and_link_so(ir_str, base_name, "default<O2>", l_obj, ctx.stub_o, ctx.simd_o, l_so)) {
                std::fprintf(stderr, "FATAL: failed to compile layer %zu (%s)\n", li, layer.label.c_str());
                return false;
            }
            std::system(("objdump -d " + l_obj + " > " + l_asm).c_str());
            std::ifstream asm_in(l_asm, std::ios::binary);
            std::ostringstream asm_ss;
            asm_ss << asm_in.rdbuf();
            std::string asm_text = asm_ss.str();
            IRAndAsmMetrics met = analyze_ir_and_asm(ir_str, asm_text, &ctx.static_analysis);
            ir_cache[ir_str] = CompiledCacheEntry{l_obj, l_asm, l_so, asm_text, met, {}, false};
        }
        layer_lls[li]  = l_ll;
        layer_asms[li] = l_asm;
        layer_sos[li]  = l_so;
    }

    // Phase B: Measure latencies in rotating micro-batches across distinct binaries
    {
        std::vector<CompiledCacheEntry*> unique_entries;
        std::unordered_map<std::string, CompiledCacheEntry*> asm_dedup;
        for (size_t li = 0; li < layers.size(); ++li) {
            auto& entry = ir_cache.at(layer_irs[li]);
            if (entry.has_lat) continue;
            size_t nl = entry.asm_text.find("\n");
            std::string norm_asm = (nl != std::string::npos) ? entry.asm_text.substr(nl + 1) : entry.asm_text;
            auto ait = asm_dedup.find(norm_asm);
            if (ait != asm_dedup.end()) {
                entry.has_lat = true;
                continue;
            }
            asm_dedup[norm_asm] = &entry;
            unique_entries.push_back(&entry);
        }

        std::vector<SharedModuleHandle> open_handles(unique_entries.size());
        std::vector<SharedModuleHandle*> handle_ptrs;
        for (size_t u = 0; u < unique_entries.size(); ++u) {
            if (!open_handles[u].load(unique_entries[u]->so_path, fn_names)) return false;
            handle_ptrs.push_back(&open_handles[u]);
        }

        std::mt19937_64 bench_rng(0xB34C4000ULL);
        ctx.harness->prepare_benchmark_states(N_STATES, bench_rng);
        std::vector<LatencyPercentiles> multi_lats =
            measure_multi_module_latency_percentiles(N_STATES, opts.bench_iters, ctx.harness.get(), handle_ptrs, 0, -1);

        for (size_t u = 0; u < unique_entries.size(); ++u) {
            unique_entries[u]->lat = multi_lats[u];
            unique_entries[u]->has_lat = true;
            open_handles[u].close();
        }

        for (size_t li = 0; li < layers.size(); ++li) {
            auto& entry = ir_cache.at(layer_irs[li]);
            if (entry.lat.p50_ns == 0.0) {
                size_t nl = entry.asm_text.find("\n");
                std::string norm_asm = (nl != std::string::npos) ? entry.asm_text.substr(nl + 1) : entry.asm_text;
                if (asm_dedup.count(norm_asm)) {
                    entry.lat = asm_dedup[norm_asm]->lat;
                }
            }
        }
    }

    for (size_t li = 0; li < layers.size(); ++li) {
        const auto& layer = layers[li];
        const std::string& ir_str = layer_irs[li];
        const std::string& l_ll   = layer_lls[li];
        const std::string& l_asm  = layer_asms[li];
        const std::string& l_so   = layer_sos[li];

        auto cache_it = ir_cache.find(ir_str);
        const IRAndAsmMetrics& met = cache_it->second.metrics;
        LatencyPercentiles lat = cache_it->second.lat;

        double ratio = (ctx.total_arm64_insns > 0)
                       ? (static_cast<double>(met.asm_insns) / static_cast<double>(ctx.total_arm64_insns))
                       : 1.0;

        LayerRow row;
        row.label = layer.label;
        row.tag = layer.tag;
        row.ir_lines = met.ir_lines;
        row.cpu_ldst = met.ir_cpu_loads + met.ir_cpu_stores;
        row.arm64_insns = ctx.total_arm64_insns;
        row.x86_insns = met.asm_insns;
        row.ratio_vs_arm64 = ratio;
        row.rsp_spills = met.asm_rsp_spills;
        row.cpu_mem_ops = met.asm_cpu_mem_ops;
        row.est_common_ns = met.est_common_ns;
        row.est_longest_ns = met.est_longest_ns;
        row.lat = lat;
        row.ll_path = l_ll;
        row.asm_path = l_asm;
        row.so_path = l_so;
        row.full_metrics = met;

        out_rows.push_back(row);

        double base_p50 = out_rows.front().lat.p50_ns;
        if (ctx.orig_base_ir.empty() && out_rows.size() >= 2) {
            base_p50 = out_rows[1].lat.p50_ns;
        }
        double speedup_p50 = (lat.p50_ns > 0.0) ? (base_p50 / lat.p50_ns) : 1.0;

        char est_buf[32], pct_buf[48];
        std::snprintf(est_buf, sizeof(est_buf), "%4.0f / %4.0f", met.est_common_ns, met.est_longest_ns);
        std::snprintf(pct_buf, sizeof(pct_buf), "%5.1f / %5.1f / %5.1f", lat.p50_ns, lat.p75_ns, lat.p90_ns);

        std::printf("%-44s | %6zu | %7zu | %5zu | %6zu | %4.2fx | %5zu | %6zu | %11s | %19s | %6.2fx\n",
                    layer.label.c_str(),
                    row.ir_lines,
                    row.cpu_ldst,
                    row.arm64_insns,
                    row.x86_insns,
                    row.ratio_vs_arm64,
                    row.rsp_spills,
                    row.cpu_mem_ops,
                    est_buf,
                    pct_buf,
                    speedup_p50);
    }
    return true;
}

// Step 3: Discover observed execution path profiles and benchmark longest/common paths.
std::vector<PathBenchResult> benchmark_observed_profiles(
    SampleBenchmarkContext& ctx,
    const LayerRow* raw_row,
    const LayerRow* safe_row,
    const LayerRow* all_row) {

    std::vector<PathBenchResult> path_results;
    const auto& fn_names = ctx.harness->function_names();
    const size_t N_STATES = std::max<size_t>(1, fn_names.size());

    SharedModuleHandle h_raw, h_safe, h_all;
    if (!h_raw.load(raw_row->so_path, fn_names) ||
        !h_safe.load(safe_row->so_path, fn_names) ||
        !h_all.load(all_row->so_path, fn_names)) {
        return path_results;
    }

    std::vector<ObservedPathProfile> profiles = discover_observed_path_profiles(ctx.harness.get(), h_safe, 32);

    size_t longest_idx = 0;
    for (size_t i = 1; i < profiles.size(); ++i) {
        if (profiles[i].call_count > profiles[longest_idx].call_count) {
            longest_idx = i;
        }
    }

    std::vector<size_t> selected_indices;
    for (size_t i = 0; i < std::min<size_t>(5, profiles.size()); ++i) {
        selected_indices.push_back(i);
    }
    if (longest_idx < profiles.size() &&
        std::find(selected_indices.begin(), selected_indices.end(), longest_idx) == selected_indices.end()) {
        selected_indices.push_back(longest_idx);
    }

    std::printf("\n--- Most Common Observed Result Sets (Path Profiles) & Longest-Path Benchmark ---\n");
    std::printf("%-42s | %5s | %6s | %11s | %11s | %11s | %8s\n",
                "Observed Path Profile / Seed", "Freq", "Calls", "Raw p50(ns)", "Safe p50(ns)", "All p50(ns)", "Est (ns)");
    std::printf("-------------------------------------------+-------+--------+-------------+-------------+-------------+---------\n");

    for (size_t idx : selected_indices) {
        const auto& prof = profiles[idx];
        PathBenchResult pbr;
        pbr.prof = prof;
        pbr.is_longest_path = (idx == longest_idx);

        int f_idx = static_cast<int>(prof.fn_idx % N_STATES);
        std::mt19937_64 prng(0xB34C4000ULL + prof.sample_iter);
        ctx.harness->prepare_benchmark_states(N_STATES, prng);

        std::vector<SharedModuleHandle*> trio = {&h_raw, &h_safe, &h_all};
        auto trio_lats = measure_multi_module_latency_percentiles(N_STATES, 1200, ctx.harness.get(), trio, prof.branch_policy, f_idx);
        pbr.raw_lat  = trio_lats[0];
        pbr.safe_lat = trio_lats[1];
        pbr.all_lat  = trio_lats[2];

        const std::string& fname = fn_names[prof.fn_idx];
        double base_est = pbr.is_longest_path
                          ? (all_row->full_metrics.fn_est_longest_ns.count(fname) ? all_row->full_metrics.fn_est_longest_ns.at(fname) : all_row->est_longest_ns)
                          : (all_row->full_metrics.fn_est_common_ns.count(fname)  ? all_row->full_metrics.fn_est_common_ns.at(fname)  : all_row->est_common_ns);
        pbr.est_path_ns = base_est + static_cast<double>(prof.call_count) * 2.2;

        std::string tag_label = prof.label + (pbr.is_longest_path ? " [LONGEST]" : "");
        std::printf("%-42s | %5zu | %6llu | %11.1f | %11.1f | %11.1f | %8.1f\n",
                    tag_label.c_str(),
                    prof.hit_count,
                    static_cast<unsigned long long>(prof.call_count),
                    pbr.raw_lat.p50_ns,
                    pbr.safe_lat.p50_ns,
                    pbr.all_lat.p50_ns,
                    pbr.est_path_ns);
        path_results.push_back(std::move(pbr));
    }

    h_raw.close();
    h_safe.close();
    h_all.close();
    return path_results;
}

// Step 4: Measure individual per-function latency breakdown.
std::vector<PerFnRow> benchmark_per_function(
    SampleBenchmarkContext& ctx,
    const LayerRow* raw_row,
    const LayerRow* safe_row,
    const LayerRow* all_row) {

    std::vector<PerFnRow> fn_rows;
    const auto& fn_names = ctx.harness->function_names();
    const size_t N_STATES = std::max<size_t>(1, fn_names.size());

    SharedModuleHandle h_raw, h_safe, h_all;
    if (!h_raw.load(raw_row->so_path, fn_names) ||
        !h_safe.load(safe_row->so_path, fn_names) ||
        !h_all.load(all_row->so_path, fn_names)) {
        return fn_rows;
    }

    std::mt19937_64 frng(0xB34C4000ULL);
    ctx.harness->prepare_benchmark_states(N_STATES, frng);
    for (size_t f = 0; f < fn_names.size(); ++f) {
        PerFnRow fr;
        fr.name = fn_names[f];
        if (ctx.static_analysis.fn_map.count(fr.name)) {
            const auto& fm = ctx.static_analysis.fn_map.at(fr.name);
            fr.entry_pc = fm.entry_pc;
            fr.arm64_insns = fm.static_arm64_insns;
        }
        fr.raw_x86_insns  = raw_row->full_metrics.fn_x86_insns.count(fr.name)  ? raw_row->full_metrics.fn_x86_insns.at(fr.name)  : 0;
        fr.safe_x86_insns = safe_row->full_metrics.fn_x86_insns.count(fr.name) ? safe_row->full_metrics.fn_x86_insns.at(fr.name) : 0;
        fr.all_x86_insns  = all_row->full_metrics.fn_x86_insns.count(fr.name)  ? all_row->full_metrics.fn_x86_insns.at(fr.name)  : 0;
        fr.ratio_all = (fr.arm64_insns > 0) ? (static_cast<double>(fr.all_x86_insns) / static_cast<double>(fr.arm64_insns)) : 1.0;
        fr.est_common_ns  = all_row->full_metrics.fn_est_common_ns.count(fr.name)  ? all_row->full_metrics.fn_est_common_ns.at(fr.name)  : all_row->est_common_ns;
        fr.est_longest_ns = all_row->full_metrics.fn_est_longest_ns.count(fr.name) ? all_row->full_metrics.fn_est_longest_ns.at(fr.name) : all_row->est_longest_ns;

        std::vector<SharedModuleHandle*> trio = {&h_raw, &h_safe, &h_all};
        auto trio_lats = measure_multi_module_latency_percentiles(N_STATES, 1200, ctx.harness.get(), trio, 0, static_cast<int>(f));
        fr.raw_lat  = trio_lats[0];
        fr.safe_lat = trio_lats[1];
        fr.all_lat  = trio_lats[2];
        fn_rows.push_back(std::move(fr));
    }

    h_raw.close();
    h_safe.close();
    h_all.close();
    return fn_rows;
}

// Step 5: Emit detailed Markdown report (BENCHMARK_REPORT.md).
void emit_markdown_report(
    const SampleBenchmarkContext& ctx,
    const std::vector<LayerRow>& rows,
    const std::vector<PathBenchResult>& path_results,
    const std::vector<PerFnRow>& fn_rows,
    double ref_base_p50) {

    if (ctx.report_out.empty()) return;
    if (!fs::path(ctx.report_out).parent_path().empty()) {
        fs::create_directories(fs::path(ctx.report_out).parent_path());
    }
    std::ofstream rpt(ctx.report_out);
    rpt << "# UltraTears Layered Pass Benchmark Report (`" << ctx.chunk_stem << "`)\n\n";
    rpt << "Generated by `lifter_benchmark` (with all 23 individual pass layers, `ARM64` reference instruction counts, static path latency estimates, and empirical `p50 / p75 / p90` percentiles).\n\n";

    rpt << "## 1. Sample Overview & ARM64 Reference Metrics\n\n";
    rpt << "- **Sample Target**: `" << ctx.chunk_stem << "` (`" << ctx.sample_ll_path << "`)\n";
    rpt << "- **ARM64 Reference Assembly**: `" << ctx.arm64_asm_path << "` (**" << ctx.total_arm64_insns << " ARM64 instructions** across **" << ctx.parsed_chunk.fns.size() << " functions**)\n";
    rpt << "- **Static CFG Path Estimates**: Common Path = **" << ctx.static_analysis.total_common_path_arm64_insns
        << " ARM64 insns**, Longest Path = **" << ctx.static_analysis.total_longest_path_arm64_insns << " ARM64 insns**\n";
    rpt << "- **Automated Stub Classification**: **" << ctx.static_analysis.external_stubs.size() << " external callees** ("
        << ctx.static_analysis.num_constant_zero << " `CONSTANT_ZERO`, "
        << ctx.static_analysis.num_pointer_alloc << " `POINTER_ALLOC`, "
        << ctx.static_analysis.num_branch_sensitive << " `BRANCH_SENSITIVE`) — see `STUB_ANALYSIS.md`\n\n";

    rpt << "## 2. Full Per-Pass Layered Benchmark Table (All 23 Individual Passes)\n\n";
    rpt << "*Note: Speedup is computed using the **p50 (median)** latency to eliminate OS/VM microstutter distortion.*\n\n";
    rpt << "| Layered Configuration | IR Lines | `Cpu` Ld/St | ARM64 Insns | x86-64 Insns | Ratio vs ARM64 | `%rsp` Spills | `Cpu*` Mem Ops | Est. Common / Longest (ns) | Latency p50 / p75 / p90 (ns) | Speedup (p50) |\n";
    rpt << "| :--- | ---: | ---: | ---: | ---: | ---: | ---: | ---: | ---: | ---: | ---: |\n";

    for (const auto& r : rows) {
        double speedup = (r.lat.p50_ns > 0.0) ? (ref_base_p50 / r.lat.p50_ns) : 1.0;
        char buf[512];
        std::snprintf(buf, sizeof(buf),
                      "| **%s** | %zu | %zu | %zu | %zu | %.2fx | %zu | %zu | %.1f / %.1f | **%.1f** / %.1f / %.1f | **%.2fx** |\n",
                      r.label.c_str(), r.ir_lines, r.cpu_ldst, r.arm64_insns, r.x86_insns, r.ratio_vs_arm64,
                      r.rsp_spills, r.cpu_mem_ops, r.est_common_ns, r.est_longest_ns,
                      r.lat.p50_ns, r.lat.p75_ns, r.lat.p90_ns, speedup);
        rpt << buf;
    }

    if (!path_results.empty()) {
        rpt << "\n## 3. Most Common Observed Result Sets (Path Profiles) & Longest-Path Seed Benchmark\n\n";
        rpt << "| Observed Path Profile / Branch Policy | Observed Hits | External Calls | Return `X0` | Est. Path Latency (ns) | Raw Ref p50 / p75 / p90 (ns) | Safe Default p50 / p75 / p90 (ns) | All Passes p50 / p75 / p90 (ns) | Speedup (All vs Raw p50) |\n";
        rpt << "| :--- | ---: | ---: | :--- | ---: | ---: | ---: | ---: | ---: |\n";
        for (const auto& pbr : path_results) {
            double sp = (pbr.all_lat.p50_ns > 0.0) ? (pbr.raw_lat.p50_ns / pbr.all_lat.p50_ns) : 1.0;
            std::string label = pbr.prof.label + (pbr.is_longest_path ? " **(Longest Path)**" : "");
            char buf[512];
            std::snprintf(buf, sizeof(buf),
                          "| %s | %zu | %llu | `0x%llx` | %.1f | %.1f / %.1f / %.1f | %.1f / %.1f / %.1f | **%.1f** / %.1f / %.1f | **%.2fx** |\n",
                          label.c_str(),
                          pbr.prof.hit_count,
                          static_cast<unsigned long long>(pbr.prof.call_count),
                          static_cast<unsigned long long>(pbr.prof.ret_x0),
                          pbr.est_path_ns,
                          pbr.raw_lat.p50_ns, pbr.raw_lat.p75_ns, pbr.raw_lat.p90_ns,
                          pbr.safe_lat.p50_ns, pbr.safe_lat.p75_ns, pbr.safe_lat.p90_ns,
                          pbr.all_lat.p50_ns, pbr.all_lat.p75_ns, pbr.all_lat.p90_ns,
                          sp);
            rpt << buf;
        }
    }

    if (!fn_rows.empty()) {
        rpt << "\n## 4. Per-Function Instruction Count, Static Estimate & Empirical Latency Breakdown\n\n";
        rpt << "| Function | Entry PC | ARM64 Insns | x86-64 Insns (Raw -> Safe -> All) | Ratio vs ARM64 | Est. Common / Longest (ns) | Raw p50 / p75 / p90 (ns) | Safe p50 / p75 / p90 (ns) | All Passes p50 / p75 / p90 (ns) |\n";
        rpt << "| :--- | :--- | ---: | ---: | ---: | ---: | ---: | ---: | ---: |\n";
        for (const auto& fr : fn_rows) {
            char epc_buf[32], est_buf[32], x86_buf[64];
            std::snprintf(epc_buf, sizeof(epc_buf), "`0x%llx`", static_cast<unsigned long long>(fr.entry_pc));
            std::snprintf(est_buf, sizeof(est_buf), "%.1f / %.1f", fr.est_common_ns, fr.est_longest_ns);
            std::snprintf(x86_buf, sizeof(x86_buf), "%zu -> %zu -> **%zu**", fr.raw_x86_insns, fr.safe_x86_insns, fr.all_x86_insns);
            char buf[512];
            std::snprintf(buf, sizeof(buf),
                          "| `%s` | %s | %zu | %s | **%.2fx** | %s | %.1f / %.1f / %.1f | %.1f / %.1f / %.1f | **%.1f** / %.1f / %.1f |\n",
                          fr.name.c_str(), epc_buf, fr.arm64_insns, x86_buf, fr.ratio_all, est_buf,
                          fr.raw_lat.p50_ns, fr.raw_lat.p75_ns, fr.raw_lat.p90_ns,
                          fr.safe_lat.p50_ns, fr.safe_lat.p75_ns, fr.safe_lat.p90_ns,
                          fr.all_lat.p50_ns, fr.all_lat.p75_ns, fr.all_lat.p90_ns);
            rpt << buf;
        }
    }
}

// Step 6: Output structured JSON summary for Python runner and aggregation scripts.
void emit_json_summary(
    const std::string& json_path,
    const SampleBenchmarkContext& ctx,
    const LayerRow* noopt_row,
    const LayerRow* safe_row,
    const LayerRow* all_row) {

    if (json_path.empty()) return;
    if (!fs::path(json_path).parent_path().empty()) {
        fs::create_directories(fs::path(json_path).parent_path());
    }
    double speedup = (all_row->lat.p50_ns > 0.0) ? (noopt_row->lat.p50_ns / all_row->lat.p50_ns) : 1.0;
    std::ofstream js(json_path);
    js << "{\n"
       << "  \"sample\": \"" << ctx.chunk_stem << "\",\n"
       << "  \"fns\": " << ctx.parsed_chunk.fns.size() << ",\n"
       << "  \"arm64_insns\": " << ctx.total_arm64_insns << ",\n"
       << "  \"x86_raw\": " << noopt_row->x86_insns << ",\n"
       << "  \"x86_safe\": " << safe_row->x86_insns << ",\n"
       << "  \"x86_all\": " << all_row->x86_insns << ",\n"
       << "  \"ratio_all\": " << all_row->ratio_vs_arm64 << ",\n"
       << "  \"est_common_ns\": " << all_row->est_common_ns << ",\n"
       << "  \"est_longest_ns\": " << all_row->est_longest_ns << ",\n"
       << "  \"p50_noopt_ns\": " << noopt_row->lat.p50_ns << ",\n"
       << "  \"p50_safe_ns\": " << safe_row->lat.p50_ns << ",\n"
       << "  \"p50_all_ns\": " << all_row->lat.p50_ns << ",\n"
       << "  \"speedup_p50\": " << speedup << ",\n"
       << "  \"report_path\": \"" << ctx.report_out << "\"\n"
       << "}\n";
}

} // namespace

int main(int argc, char** argv) {
    install_segv_handler();

    BenchmarkOptions opts;
    for (int i = 1; i < argc; ++i) {
        std::string a = argv[i];
        if (a == "--bench-root" && i + 1 < argc) {
            opts.bench_root = argv[++i];
        } else if (a == "--sample-dir" && i + 1 < argc) {
            opts.sample_dir = argv[++i];
        } else if (a == "--sample-ll" && i + 1 < argc) {
            opts.sample_ll_override = argv[++i];
        } else if (a == "--results-dir" && i + 1 < argc) {
            opts.results_dir_override = argv[++i];
            opts.dump_layers = true;
        } else if (a == "--report-out" && i + 1 < argc) {
            opts.report_out_override = argv[++i];
        } else if (a == "--json-out" && i + 1 < argc) {
            opts.json_out = argv[++i];
        } else if (a == "--nso" && i + 1 < argc) {
            opts.nso_path = argv[++i];
        } else if (a == "--bench-iters" && i + 1 < argc) {
            opts.bench_iters = std::stoull(argv[++i]);
        } else if (a == "--compact-layers") {
            opts.compact_layers = true;
        } else if (a == "--all-layers") {
            opts.compact_layers = false;
        } else if (a == "--dump-layers") {
            opts.dump_layers = true;
        } else if (a == "--no-dump-layers") {
            opts.dump_layers = false;
        } else if (a == "-h" || a == "--help") {
            std::printf("Usage: %s --bench-root <dir> [options]\n"
                        "Mandatory Options:\n"
                        "  --bench-root <dir>    Root directory containing sample suites (e.g. src/horizon2llvm/benchmark)\n"
                        "Options:\n"
                        "  --sample-dir <dir>    Path to specific sample suite (default: <bench-root>/main_432)\n"
                        "  --sample-ll <file>    Direct path to arbitrary unlowered IR (default: <sample-dir>/sample.ll)\n"
                        "  --nso <file>          Optional path to NSO binary (only needed for rodata devirtualization / leaf inlining)\n"
                        "  --results-dir <dir>   Directory to dump layered .ll, .o, .asm (default: <sample-dir>/results)\n"
                        "  --report-out <file>   Markdown report output path (default: <results-dir>/BENCHMARK_REPORT.md)\n"
                        "  --json-out <file>     Write machine-readable benchmark JSON summary\n"
                        "  --bench-iters <N>     Timing benchmark iterations per layer (default: 3200)\n"
                        "  --all-layers          Benchmark all 23 individual pass layers (default)\n"
                        "  --compact-layers      Benchmark grouped 11-layer milestone subset\n"
                        "  --dump-layers         Dump layered .ll, .o, and .asm files (default: true)\n"
                        "  --no-dump-layers      Disable dumping layer artifacts\n"
                        "  -h, --help            Show this help message\n", argv[0]);
            return 0;
        }
    }

    // Enforce mandatory --bench-root flag
    if (opts.bench_root.empty()) {
        std::fprintf(stderr, "ERROR: --bench-root <dir> is mandatory. Example: %s --bench-root src/horizon2llvm/benchmark\n", argv[0]);
        return 1;
    }

    if (opts.sample_dir.empty()) {
        std::string candidate = (fs::path(opts.bench_root) / "main_432").string();
        if (fs::exists(candidate)) {
            opts.sample_dir = candidate;
        } else {
            opts.sample_dir = (fs::path(opts.bench_root) / "samples" / "main_432").string();
        }
    } else if (!fs::path(opts.sample_dir).is_absolute() && !fs::exists(opts.sample_dir)) {
        std::string candidate = (fs::path(opts.bench_root) / opts.sample_dir).string();
        if (fs::exists(candidate)) {
            opts.sample_dir = candidate;
        } else {
            std::string candidate2 = (fs::path(opts.bench_root) / "samples" / opts.sample_dir).string();
            if (fs::exists(candidate2)) {
                opts.sample_dir = candidate2;
            }
        }
    }

    // Optional NSO loading: only load when --nso <file> is explicitly passed and exists
    std::unique_ptr<nso::NsoFile> nso_ptr;
    std::unordered_set<uint64_t> unrelocated_rodata_addrs;
    std::unordered_map<uint64_t, LeafFunctionSlice> global_leaves;

    if (!opts.nso_path.empty() && fs::exists(opts.nso_path)) {
        nso_ptr = std::make_unique<nso::NsoFile>(opts.nso_path);
        uint64_t ro_lo = GUEST_BASE + nso_ptr->rodata.first;
        uint64_t ro_hi = ro_lo + nso_ptr->rodata.second;
        for (const auto& r : nso_ptr->relocs) {
            if (r.sym != 0) {
                uint64_t va = GUEST_BASE + r.offset;
                if (va >= ro_lo && va < ro_hi) unrelocated_rodata_addrs.insert(va);
            }
        }
    }

    // Execute core benchmark workflow
    SampleBenchmarkContext ctx;
    if (!prepare_benchmark_context(opts, nso_ptr, unrelocated_rodata_addrs, global_leaves, ctx)) {
        return 1;
    }

    std::vector<LayerRow> rows;
    if (!build_and_measure_layers(opts, ctx, rows)) {
        return 1;
    }

    const LayerRow* raw_row = nullptr;
    const LayerRow* noopt_row = nullptr;
    const LayerRow* safe_row = nullptr;
    const LayerRow* all_row = &rows.back();
    for (const auto& r : rows) {
        if (r.tag.find("raw_reference") != std::string::npos) raw_row = &r;
        if (r.tag.find("pass01_patch") != std::string::npos || r.tag.find("minimal_no_opt") != std::string::npos) noopt_row = &r;
        if (r.tag.find("safe_default") != std::string::npos || r.tag.find("pass21_cpu_state_promotion") != std::string::npos) safe_row = &r;
    }
    if (!raw_row) raw_row = &rows.front();
    if (!noopt_row) noopt_row = raw_row;
    if (!safe_row) safe_row = all_row;

    double ref_base_p50 = (!ctx.orig_base_ir.empty()) ? rows.front().lat.p50_ns : noopt_row->lat.p50_ns;

    std::vector<PathBenchResult> path_results = benchmark_observed_profiles(ctx, raw_row, safe_row, all_row);
    std::vector<PerFnRow> fn_rows = benchmark_per_function(ctx, raw_row, safe_row, all_row);

    emit_markdown_report(ctx, rows, path_results, fn_rows, ref_base_p50);
    emit_json_summary(opts.json_out, ctx, noopt_row, safe_row, all_row);

    double speedup_all = (all_row->lat.p50_ns > 0.0) ? (ref_base_p50 / all_row->lat.p50_ns) : 1.0;
    std::printf("\n>>> Benchmark Complete for %s: Raw/NoOpt=%.1fns -> All=%.1fns (Speedup p50: %.2fx, x86/ARM ratio: %.2fx) <<<\n",
                ctx.chunk_stem.c_str(), noopt_row->lat.p50_ns, all_row->lat.p50_ns, speedup_all, all_row->ratio_vs_arm64);

    // Flush standard streams and immediately terminate via std::_Exit(0).
    // Avoids hangs and deadlocks during process teardown caused by static destructors
    // in LLVM backends, thread local cleanup, and dlopened JIT shared libraries.
    std::fflush(stdout);
    std::_Exit(0);
}
