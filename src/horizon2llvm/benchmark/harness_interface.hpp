// Abstract test and benchmark harness interface for lifter benchmark suites
// (src/horizon2llvm/benchmark/harness_interface.hpp)

#pragma once

#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <dlfcn.h>
#include <memory>
#include <random>
#include <string>
#include <unordered_map>
#include <vector>

extern "C" {
#define _Static_assert static_assert
#define Module RtModuleStruct
#if __has_include("../runtime/cpu.h")
#include "../runtime/cpu.h"
#elif __has_include("runtime/cpu.h")
#include "runtime/cpu.h"
#else
#include "src/runtime/cpu.h"
#endif
#undef Module
}

namespace ultrs::benchmark {

using GuestFn = void (*)(Cpu*);
using ResetFn = void (*)(uint32_t);
using BenchModeFn = void (*)(int);
using SetPolicyFn = void (*)(uint32_t);
using GetU64Fn = uint64_t (*)(void);
using ApplyPathParamsFn = void (*)(Cpu*, int, uint64_t);

struct ObservedPathProfile {
    uint64_t signature = 0;
    uint64_t trace_hash = 0;
    uint64_t call_count = 0;
    uint64_t ret_x0 = 0;
    uint32_t branch_policy = 0;
    size_t sample_iter = 0;
    size_t fn_idx = 0;
    size_t hit_count = 0;
    std::string label;
};

struct SharedModuleHandle {
    void* dl = nullptr;
    std::vector<GuestFn> fns;
    std::unordered_map<std::string, GuestFn> fn_map;
    ResetFn stub_reset_state = nullptr;
    BenchModeFn stub_set_bench_mode = nullptr;
    SetPolicyFn stub_set_branch_policy = nullptr;
    GetU64Fn stub_get_trace_hash = nullptr;
    GetU64Fn stub_get_call_count = nullptr;
    GetU64Fn stub_get_heap_ptr = nullptr;
    ApplyPathParamsFn stub_apply_path_params = nullptr;

    bool load(const std::string& so_path, const std::vector<std::string>& fn_names);
    void close();
};

class ISampleHarness {
public:
    virtual ~ISampleHarness() = default;

    virtual const char* name() const = 0;
    virtual std::string sample_dir() const = 0;
    virtual std::string sample_ll_path() const = 0;
    virtual std::string runtime_stubs_c_path() const = 0;
    virtual std::string default_results_dir() const = 0;
    virtual const std::vector<std::string>& function_names() const = 0;

    // Initialization of guest memory globals & pointer slots in [GUEST_BASE..HEAP_BASE)
    virtual void init_guest_globals(uint64_t guest_base, uint64_t data_offset, size_t image_size) = 0;

    // Deterministic test case setup for fuzzing and equivalence checks
    virtual void setup_test_case(int fn_idx, size_t iter, std::mt19937_64& rng, Cpu& c) = 0;

    // Benchmark snapshot preparation and execution
    virtual void prepare_benchmark_states(size_t n_states, std::mt19937_64& rng) = 0;
    virtual void restore_benchmark_state(size_t state_idx, Cpu& c, SharedModuleHandle& handle) = 0;
    virtual void execute_bench_function(size_t state_idx, Cpu& c, const SharedModuleHandle& handle) = 0;

    // Extended ergonomics for longest-path and observed path-profile benchmarking
    virtual uint32_t preferred_branch_policy(size_t /*state_idx*/) const { return 0; }
    virtual size_t num_branch_sensitive_callees() const { return 0; }
    virtual std::string stub_analysis_summary() const { return ""; }
};

} // namespace ultrs::benchmark
