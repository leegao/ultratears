// main_432 sample harness definition
// (src/horizon2llvm/benchmark/main_432/runtime_stubs.hpp)

#pragma once

#include "src/horizon2llvm/benchmark/harness_interface.hpp"

namespace ultrs::benchmark {

class Main432Harness : public ISampleHarness {
public:
    explicit Main432Harness(std::string base_dir = "");

    const char* name() const override { return "main_432"; }
    std::string sample_dir() const override { return sample_dir_; }
    std::string sample_ll_path() const override;
    std::string runtime_stubs_c_path() const override;
    std::string default_results_dir() const override;
    const std::vector<std::string>& function_names() const override;

    void init_guest_globals(uint64_t guest_base, uint64_t data_offset, size_t image_size) override;
    void setup_test_case(int fn_idx, size_t iter, std::mt19937_64& rng, Cpu& c) override;

    void prepare_benchmark_states(size_t n_states, std::mt19937_64& rng) override;
    void restore_benchmark_state(size_t state_idx, Cpu& c, SharedModuleHandle& handle) override;
    void execute_bench_function(size_t state_idx, Cpu& c, const SharedModuleHandle& handle) override;

private:
    std::string sample_dir_;
    std::vector<std::string> fn_names_;
    std::vector<Cpu> bench_cpus_;
    std::vector<std::vector<uint8_t>> slice_snaps_;
};

std::unique_ptr<ISampleHarness> create_main_432_harness(const std::string& base_dir = "");

} // namespace ultrs::benchmark
