// Layered Per-Pass Benchmark Suite for UltraTears Lifter
// (src/horizon2llvm/benchmark/bench_main.cpp)

#include <chrono>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <filesystem>
#include <fstream>
#include <iomanip>
#include <iostream>
#include <random>
#include <sstream>
#include <string>
#include <vector>

#include "benchmark_common.hpp"
#include "main_432/runtime_stubs.hpp"

namespace fs = std::filesystem;
using namespace ultrs;
using namespace ultrs::passes;
using namespace ultrs::benchmark;

int main(int argc, char** argv) {
    install_segv_handler();

    std::string sample_dir = "src/horizon2llvm/benchmark/main_432";
    std::string sample_ll_path;
    std::string results_dir;
    std::string report_out;
    bool dump_layers = true;
    size_t bench_iters = 5000;

    for (int i = 1; i < argc; ++i) {
        std::string a = argv[i];
        if (a == "--sample-dir" && i + 1 < argc) {
            sample_dir = argv[++i];
        } else if (a == "--sample-ll" && i + 1 < argc) {
            sample_ll_path = argv[++i];
        } else if (a == "--results-dir" && i + 1 < argc) {
            results_dir = argv[++i];
            dump_layers = true;
        } else if (a == "--report-out" && i + 1 < argc) {
            report_out = argv[++i];
        } else if (a == "--bench-iters" && i + 1 < argc) {
            bench_iters = std::stoull(argv[++i]);
        } else if (a == "--dump-layers") {
            dump_layers = true;
        } else if (a == "--no-dump-layers") {
            dump_layers = false;
        } else if (a == "-h" || a == "--help") {
            std::printf("Usage: %s [options]\n"
                        "Options:\n"
                        "  --sample-dir <dir>    Path to sample directory (default: src/horizon2llvm/benchmark/main_432)\n"
                        "  --sample-ll <file>    Direct path to sample unlowered IR (default: <sample-dir>/sample.ll)\n"
                        "  --results-dir <dir>   Directory to dump layered .ll, .o, .asm (default: <sample-dir>/results)\n"
                        "  --report-out <file>   Markdown report output path (default: <results-dir>/BENCHMARK_REPORT.md)\n"
                        "  --bench-iters <N>     Timing benchmark iterations per function (default: 5000)\n"
                        "  --dump-layers         Dump layered .ll, .o, and .asm files (default: true)\n"
                        "  --no-dump-layers      Disable dumping layer artifacts\n"
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
    if (results_dir.empty()) {
        results_dir = harness->default_results_dir();
    }
    if (report_out.empty()) {
        report_out = (fs::path(results_dir) / "BENCHMARK_REPORT.md").string();
    }

    std::printf("=== UltraTears Automated Layered Pass Benchmark Suite ===\n");
    std::printf("Sample Target:   %s\n", harness->name());
    std::printf("Input sample IR: %s\n", sample_ll_path.c_str());
    if (dump_layers) {
        std::printf("Results dir:     %s\n", results_dir.c_str());
    }
    std::printf("Benchmark iters: %zu\n\n", bench_iters);

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

    if (dump_layers) {
        fs::create_directories(results_dir);
    }

    std::string chunk_stem = harness->name();

    std::string orig_base_ir;
    {
        std::vector<std::string> search_paths = {
            (fs::path(sample_dir) / "baseline.ll").string(),
        };
        for (const auto& p : search_paths) {
            std::ifstream ob(p, std::ios::binary);
            if (ob) {
                std::ostringstream oss;
                oss << ob.rdbuf();
                orig_base_ir = oss.str();
                break;
            }
        }
    }

    std::vector<LayerSpec> layers = get_standard_layers(orig_base_ir);

    struct LayerRow {
        std::string label;
        std::string tag;
        size_t ir_lines = 0;
        size_t cpu_ldst = 0;
        size_t x86_insns = 0;
        size_t rsp_spills = 0;
        size_t cpu_mem_ops = 0;
        double time_ns = 0.0;
        std::string ll_path;
        std::string asm_path;
    };
    std::vector<LayerRow> rows;

    std::printf("%-44s | %7s | %8s | %8s | %8s | %8s | %9s\n",
                "Layered Configuration", "IR Line", "Cpu LdSt", "x86 Insn", "RSP Spil", "CpuMemOp", "Time (ns)");
    std::printf("---------------------------------------------+---------+----------+----------+----------+----------+----------\n");

    const auto& fn_names = harness->function_names();
    const size_t N_STATES = fn_names.size();

    for (size_t li = 0; li < layers.size(); ++li) {
        const auto& layer = layers[li];
        std::string ir_str;
        if (layer.is_orig_base) {
            ir_str = orig_base_ir;
        } else if (layer.is_raw_ref) {
            ir_str = raw_ir;
        } else {
            PassPipelineConfig lcfg = base_cfg;
            layer.configure(lcfg);
            ir_str = lower_parsed_chunk(parsed_chunk, lcfg);
        }

        std::string base_name = chunk_stem + "_" + layer.tag;
        std::string l_ll  = dump_layers ? (fs::path(results_dir) / (base_name + ".ll")).string() : ("/tmp/" + base_name + ".ll");
        std::string l_obj = dump_layers ? (fs::path(results_dir) / (base_name + ".o")).string() : ("/tmp/" + base_name + ".o");
        std::string l_asm = dump_layers ? (fs::path(results_dir) / (base_name + ".asm")).string() : ("/tmp/" + base_name + ".asm");
        std::string l_so  = "/tmp/lib_" + base_name + ".so";

        if (dump_layers) {
            write_if_changed(l_ll, ir_str);
        }

        if (!compile_and_link_so(ir_str, base_name, "default<O2>", l_obj, stub_o, simd_o, l_so)) {
            std::fprintf(stderr, "FATAL: failed to compile layer %zu (%s)\n", li, layer.label.c_str());
            return 1;
        }

        std::system(("objdump -d " + l_obj + " > " + l_asm).c_str());
        std::ifstream asm_in(l_asm, std::ios::binary);
        std::ostringstream asm_ss;
        asm_ss << asm_in.rdbuf();
        IRAndAsmMetrics met = analyze_ir_and_asm(ir_str, asm_ss.str());

        SharedModuleHandle h_layer;
        if (!h_layer.load(l_so, fn_names)) return 1;

        std::mt19937_64 bench_rng(0xB34C4000ULL);
        harness->prepare_benchmark_states(N_STATES, bench_rng);

        if (h_layer.stub_set_bench_mode) {
            h_layer.stub_set_bench_mode(1);
        }

        Cpu c{};
        auto run_one = [&](size_t s) {
            harness->restore_benchmark_state(s, c, h_layer);
            harness->execute_bench_function(s, c, h_layer);
        };

        // Warmup
        for (size_t w = 0; w < 250; ++w) {
            run_one(w % N_STATES);
        }

        double overhead_ns = 1e18;
        for (int trial = 0; trial < 3; ++trial) {
            auto t0 = std::chrono::steady_clock::now();
            for (size_t it = 0; it < bench_iters; ++it) {
                harness->restore_benchmark_state(it % N_STATES, c, h_layer);
                asm volatile("" : : "r"(&c) : "memory");
            }
            auto t1 = std::chrono::steady_clock::now();
            double trial_ns = std::chrono::duration<double, std::nano>(t1 - t0).count() / static_cast<double>(bench_iters);
            if (trial_ns < overhead_ns) overhead_ns = trial_ns;
        }

        double total_ns = 1e18;
        for (int trial = 0; trial < 7; ++trial) {
            auto t0 = std::chrono::steady_clock::now();
            for (size_t it = 0; it < bench_iters; ++it) {
                run_one(it % N_STATES);
            }
            auto t1 = std::chrono::steady_clock::now();
            double trial_ns = std::chrono::duration<double, std::nano>(t1 - t0).count() / static_cast<double>(bench_iters);
            if (trial_ns < total_ns) total_ns = trial_ns;
        }
        double ns_per_call = std::max(10.0, total_ns - overhead_ns);
        h_layer.close();

        rows.push_back({layer.label, layer.tag, met.ir_lines, met.ir_cpu_loads + met.ir_cpu_stores,
                        met.asm_insns, met.asm_rsp_spills, met.asm_cpu_mem_ops, ns_per_call,
                        l_ll, l_asm});

        std::printf("%-44s | %7zu | %8zu | %8zu | %8zu | %8zu | %9.1f\n",
                    layer.label.c_str(),
                    met.ir_lines,
                    met.ir_cpu_loads + met.ir_cpu_stores,
                    met.asm_insns,
                    met.asm_rsp_spills,
                    met.asm_cpu_mem_ops,
                    ns_per_call);
    }

    if (!report_out.empty()) {
        if (!fs::path(report_out).parent_path().empty()) {
            fs::create_directories(fs::path(report_out).parent_path());
        }
        std::ofstream rpt(report_out);
        rpt << "# UltraTears Layered Pass Benchmark Report (" << chunk_stem << ")\n\n";
        rpt << "Generated by `lifter_benchmark`\n\n";
        rpt << "| Layered Configuration | IR Lines | `Cpu` Ld/St | x86-64 Insns | Ratio vs ARM64 | `%rsp` Spills | `Cpu*` Mem Ops | Latency (ns) | Speedup |\n";
        rpt << "| :--- | ---: | ---: | ---: | ---: | ---: | ---: | ---: | ---: |\n";
        double base_time = rows.empty() ? 1.0 : rows.front().time_ns;
        for (const auto& r : rows) {
            double speedup = (r.time_ns > 0.0) ? (base_time / r.time_ns) : 1.0;
            double ratio = static_cast<double>(r.x86_insns) / 1516.0;
            char buf[256];
            std::snprintf(buf, sizeof(buf),
                          "| **%s** | %zu | %zu | %zu | %.2fx | %zu | %zu | %.1f | **%.2fx** |\n",
                          r.label.c_str(), r.ir_lines, r.cpu_ldst, r.x86_insns, ratio,
                          r.rsp_spills, r.cpu_mem_ops, r.time_ns, speedup);
            rpt << buf;
        }
        rpt << "\n## Dumped Artifacts in `" << results_dir << "/`\n\n";
        for (const auto& r : rows) {
            rpt << "- **" << r.label << "**:\n";
            rpt << "  - LLVM IR: `" << r.ll_path << "`\n";
            rpt << "  - x86-64 Disassembly: `" << r.asm_path << "`\n";
        }
        std::printf("\nSaved benchmark report to: %s\n", report_out.c_str());
    }

    return 0;
}
