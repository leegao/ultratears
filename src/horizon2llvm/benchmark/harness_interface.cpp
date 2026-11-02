// Abstract test and benchmark harness interface implementation
// (src/horizon2llvm/benchmark/harness_interface.cpp)

#include "harness_interface.hpp"

namespace ultrs::benchmark {

bool SharedModuleHandle::load(const std::string& so_path, const std::vector<std::string>& fn_names) {
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
    stub_set_branch_policy = reinterpret_cast<SetPolicyFn>(dlsym(dl, "stub_set_branch_policy"));
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

void SharedModuleHandle::close() {
    if (dl) {
        dlclose(dl);
        dl = nullptr;
    }
    fns.clear();
    fn_map.clear();
    stub_reset_state = nullptr;
    stub_set_bench_mode = nullptr;
    stub_set_branch_policy = nullptr;
    stub_get_trace_hash = nullptr;
    stub_get_call_count = nullptr;
    stub_get_heap_ptr = nullptr;
}

} // namespace ultrs::benchmark
