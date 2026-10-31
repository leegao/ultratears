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
#include "src/runtime/cpu.h"
#undef Module
}

namespace ultrs::benchmark {

using GuestFn = void (*)(Cpu*);
using ResetFn = void (*)(uint32_t);
using BenchModeFn = void (*)(int);
using GetU64Fn = uint64_t (*)(void);

struct SharedModuleHandle {
    void* dl = nullptr;
    std::vector<GuestFn> fns;
    std::unordered_map<std::string, GuestFn> fn_map;
    ResetFn stub_reset_state = nullptr;
    BenchModeFn stub_set_bench_mode = nullptr;
    GetU64Fn stub_get_trace_hash = nullptr;
    GetU64Fn stub_get_call_count = nullptr;
    GetU64Fn stub_get_heap_ptr = nullptr;

    bool load(const std::string& so_path, const std::vector<std::string>& fn_names) {
        close();
        dl = dlopen(so_path.c_str(), RTLD_NOW | RTLD_LOCAL);
        if (!dl) {
            std::fprintf(stderr, "dlopen(%s) failed: %s\n", so_path.c_str(), dlerror());
            return false;
        }

        fns.clear();
        fn_map.clear();
        for (const auto& name : fn_names) {
            GuestFn fn = reinterpret_cast<GuestFn>(dlsym(dl, name.c_str()));
            if (!fn) {
                std::fprintf(stderr, "dlsym(%s, %s) failed: %s\n", so_path.c_str(), name.c_str(), dlerror());
                close();
                return false;
            }
            fns.push_back(fn);
            fn_map[name] = fn;
        }

        stub_reset_state = reinterpret_cast<ResetFn>(dlsym(dl, "stub_reset_state"));
        stub_set_bench_mode = reinterpret_cast<BenchModeFn>(dlsym(dl, "stub_set_bench_mode"));
        stub_get_trace_hash = reinterpret_cast<GetU64Fn>(dlsym(dl, "stub_get_trace_hash"));
        stub_get_call_count = reinterpret_cast<GetU64Fn>(dlsym(dl, "stub_get_call_count"));
        stub_get_heap_ptr = reinterpret_cast<GetU64Fn>(dlsym(dl, "stub_get_heap_ptr"));

        if (!stub_reset_state || !stub_get_trace_hash || !stub_get_call_count || !stub_get_heap_ptr) {
            std::fprintf(stderr, "Failed to resolve stub management symbols in %s\n", so_path.c_str());
            close();
            return false;
        }
        return true;
    }

    void close() {
        if (dl) {
            dlclose(dl);
            dl = nullptr;
        }
        fns.clear();
        fn_map.clear();
        stub_reset_state = nullptr;
        stub_set_bench_mode = nullptr;
        stub_get_trace_hash = nullptr;
        stub_get_call_count = nullptr;
        stub_get_heap_ptr = nullptr;
    }
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
};

} // namespace ultrs::benchmark
