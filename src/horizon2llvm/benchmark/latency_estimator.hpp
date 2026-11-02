// Static microarchitectural x86-64 path latency estimator + empirical p50/p75/p90 timers
// (src/horizon2llvm/benchmark/latency_estimator.hpp)

#pragma once

#include <cstdint>
#include <string>
#include <unordered_map>
#include <vector>

#include "harness_interface.hpp"

namespace ultrs::benchmark {

struct FunctionCFGMetrics {
    std::string name;
    uint64_t entry_pc = 0;
    size_t static_arm64_insns = 0;
    size_t basic_blocks = 0;
    size_t back_edges = 0;
    size_t common_path_arm64_insns = 0;
    size_t longest_path_arm64_insns = 0;
};

struct SampleStaticAnalysis {
    std::string sample_id;
    size_t total_arm64_insns = 0;
    size_t total_common_path_arm64_insns = 0;
    size_t total_longest_path_arm64_insns = 0;
    std::vector<FunctionCFGMetrics> fn_metrics;
    std::unordered_map<std::string, FunctionCFGMetrics> fn_map;
    size_t num_branch_sensitive = 0;
    size_t num_pointer_alloc = 0;
    size_t num_constant_zero = 0;
    std::vector<std::string> external_stubs;
    std::string generated_stubs_c_path;
};

SampleStaticAnalysis load_or_generate_stub_analysis(const std::string& sample_dir);

struct IRAndAsmMetrics {
    size_t ir_lines = 0;
    size_t ir_cpu_loads = 0;
    size_t ir_cpu_stores = 0;
    size_t ir_rt_calls = 0;
    size_t asm_insns = 0;
    size_t asm_rsp_spills = 0;
    size_t asm_cpu_mem_ops = 0;
    size_t asm_guest_mem_ops = 0;
    size_t asm_simd_fp_ops = 0;
    size_t asm_branch_ops = 0;
    size_t asm_call_ops = 0;
    size_t asm_hw_intrinsics = 0;
    double est_common_cycles = 0.0;
    double est_common_ns = 0.0;
    double est_longest_cycles = 0.0;
    double est_longest_ns = 0.0;
    std::unordered_map<std::string, size_t> fn_x86_insns;
    std::unordered_map<std::string, double> fn_est_common_ns;
    std::unordered_map<std::string, double> fn_est_longest_ns;
};

struct LatencyPercentiles {
    double min_ns = 0.0;
    double p50_ns = 0.0;
    double p75_ns = 0.0;
    double p90_ns = 0.0;
    double mean_ns = 0.0;
};

IRAndAsmMetrics analyze_ir_and_asm(
    const std::string& ir_text,
    const std::string& asm_text,
    const SampleStaticAnalysis* static_info = nullptr);

LatencyPercentiles measure_latency_percentiles(
    size_t n_states,
    size_t bench_iters,
    ISampleHarness* harness,
    SharedModuleHandle& handle,
    uint32_t branch_policy = 0,
    int fixed_state_idx = -1);

std::vector<LatencyPercentiles> measure_multi_module_latency_percentiles(
    size_t n_states,
    size_t bench_iters,
    ISampleHarness* harness,
    const std::vector<SharedModuleHandle*>& handles,
    uint32_t branch_policy = 0,
    int fixed_state_idx = -1);

std::vector<ObservedPathProfile> discover_observed_path_profiles(
    ISampleHarness* harness,
    SharedModuleHandle& handle,
    size_t num_controlled_iters = 64);

} // namespace ultrs::benchmark
