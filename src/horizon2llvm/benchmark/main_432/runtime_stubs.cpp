// main_432 harness implementation: global setups, test case synthesis, and benchmark state logic
// (src/horizon2llvm/benchmark/main_432/runtime_stubs.cpp)

#include "src/horizon2llvm/benchmark/main_432/runtime_stubs.hpp"
#include <cassert>
#include <cstring>
#include <filesystem>
#include <iostream>

namespace fs = std::filesystem;

namespace ultrs::benchmark {

namespace {

constexpr uint64_t HEAP_BASE      = 0x804000000ULL;
constexpr uint64_t STACK_BASE     = 0x804200000ULL;
constexpr size_t   STACK_SIZE     = 0x000040000ULL; // 256 KiB stack
constexpr uint64_t OBJ_BASE       = 0x804240000ULL;
constexpr uint64_t GLOBALS_BASE   = 0x804400000ULL;

const uint64_t MAIN_432_GLOBAL_PTR_SLOTS[] = {
    0x80395d000ULL + 1736,
    0x80395c000ULL + 4016,
    0x80394b000ULL + 3744,
    0x80394b000ULL + 3392,
    0x80394b000ULL + 3384,
    0x80394b000ULL + 3400,
    0x80394b000ULL + 2936,
    0x80394b000ULL + 3952,
    0x803953000ULL + 840,
    0x803956000ULL + 840,
    0x803957000ULL + 840,
    0x80395d000ULL + 1544,
    0x80395e000ULL + 1544,
    0x80394c000ULL + 3744,
    0x8038f6000ULL + 2688,
    0x80395d000ULL + 1912,
};

} // namespace

Main432Harness::Main432Harness(std::string base_dir) {
    if (base_dir.empty()) {
        if (fs::exists("src/horizon2llvm/benchmark/main_432")) {
            sample_dir_ = "src/horizon2llvm/benchmark/main_432";
        } else if (fs::exists("main_432")) {
            sample_dir_ = "main_432";
        } else {
            sample_dir_ = "src/horizon2llvm/benchmark/main_432";
        }
    } else {
        sample_dir_ = std::move(base_dir);
    }

    fn_names_ = {
        "f_80077bc00",
        "f_80077be18",
        "f_80077c0e4",
        "f_80077c180",
        "f_80077d084",
    };
}

std::string Main432Harness::sample_ll_path() const {
    std::string p = (fs::path(sample_dir_) / "sample.ll").string();
    if (fs::exists(p)) return p;
    // Fallback search locations
    if (fs::exists("perf/main_432_raw.ll")) return "perf/main_432_raw.ll";
    return p;
}

std::string Main432Harness::runtime_stubs_c_path() const {
    return (fs::path(sample_dir_) / "runtime_stubs.c").string();
}

std::string Main432Harness::default_results_dir() const {
    return (fs::path(sample_dir_) / "results").string();
}

const std::vector<std::string>& Main432Harness::function_names() const {
    return fn_names_;
}

void Main432Harness::init_guest_globals(uint64_t guest_base, uint64_t data_offset, size_t image_size) {
    (void)image_size;
    uint64_t g_obj = GLOBALS_BASE;
    for (size_t off = 0; off < 0x4000; off += 8) {
        *reinterpret_cast<uint64_t*>(GLOBALS_BASE + off) = GLOBALS_BASE + 0x4000;
    }
    for (size_t off = 0x4000; off < 0x8000; off += 8) {
        *reinterpret_cast<uint64_t*>(GLOBALS_BASE + off) = GLOBALS_BASE + 0x8000;
    }
    *reinterpret_cast<uint8_t*>(GLOBALS_BASE + 0x4000) = 1; // For ldarb [x8] in f_80077be18
    // At GLOBALS_BASE + 0xC000, store 0 (used as index offset *x24 in f_80077c180)
    *reinterpret_cast<uint64_t*>(GLOBALS_BASE + 0xC000) = 0;

    for (uint64_t addr = guest_base + data_offset; addr < HEAP_BASE; addr += 8) {
        if (*reinterpret_cast<uint64_t*>(addr) == 0) {
            *reinterpret_cast<uint64_t*>(addr) = g_obj;
        }
    }
    for (uint64_t slot : MAIN_432_GLOBAL_PTR_SLOTS) {
        *reinterpret_cast<uint64_t*>(slot) = g_obj;
    }
    *reinterpret_cast<uint64_t*>(0x80395b000ULL + 3856) = GLOBALS_BASE + 0xC000;
}

void Main432Harness::setup_test_case(int fn_idx, size_t iter, std::mt19937_64& rng, Cpu& c) {
    std::memset(&c, 0, sizeof(Cpu));
    std::memset(reinterpret_cast<void*>(HEAP_BASE), 0, 0x20000);
    std::memset(reinterpret_cast<void*>(STACK_BASE), 0, STACK_SIZE);
    uint64_t fbase = OBJ_BASE + static_cast<uint64_t>(fn_idx) * 0x30000ULL;
    std::memset(reinterpret_cast<void*>(fbase), 0, 0x30000ULL);

    for (int r = 0; r < 31; ++r) {
        c.x[r] = rng();
    }
    for (int v = 0; v < 32; ++v) {
        uint64_t lo = rng(), hi = rng();
        std::memcpy(&c.v[v], &lo, 8);
        std::memcpy(reinterpret_cast<char*>(&c.v[v]) + 8, &hi, 8);
    }
    c.sp = STACK_BASE + STACK_SIZE - 0x1000;
    c.nzcv = static_cast<uint32_t>((rng() & 0xFULL) << 28);

    // Build a shared valid inner descriptor graph at fbase + 0x10000 for f_80077c0e4 / f_80077c180
    uint64_t shared_inner = fbase + 0x10000;
    uint64_t shared_desc_arr = fbase + 0x11000;
    uint16_t shared_outer_cnt = static_cast<uint16_t>(iter % 3);
    *reinterpret_cast<uint16_t*>(shared_inner + 64) = shared_outer_cnt;
    *reinterpret_cast<uint64_t*>(shared_inner + 16) = shared_desc_arr;
    for (uint16_t i = 0; i < shared_outer_cnt; ++i) {
        uint64_t desc = shared_desc_arr + i * 256;
        *reinterpret_cast<uint64_t*>(desc + 168) =
            ((iter + i) % 3 == 0) ? 0 : (fbase + 0x14000 + i * 0x40 + (((iter + i) & 1) << 4));
        uint16_t inner_cnt = static_cast<uint16_t>((iter + i) % 4);
        *reinterpret_cast<uint16_t*>(desc + 232) = inner_cnt;
        uint64_t entries = fbase + 0x15000 + i * 0x1000;
        *reinterpret_cast<uint64_t*>(desc + 136) = entries;
        for (uint16_t j = 0; j < inner_cnt; ++j) {
            uint64_t ent = entries + j * 64;
            uint64_t ptr_table = fbase + 0x18000 + (i * 4 + j) * 0x400;
            *reinterpret_cast<uint64_t*>(ent + 32) = ptr_table;
            uint64_t target_node = ptr_table + 0x100;
            *reinterpret_cast<uint64_t*>(ptr_table) = target_node;
            for (int k = 0; k < 14; ++k) {
                *reinterpret_cast<uint32_t*>(target_node + 64 + k * 4) = static_cast<uint32_t>((iter + j + k) & 3);
            }
            uint64_t sub_info = ptr_table + 0x200;
            *reinterpret_cast<uint64_t*>(target_node + 120) = (j & 1) ? sub_info : 0;
        }
    }

    // Build valid context objects with vtable at +0 and allocator handle at +8
    auto init_ctx_obj = [&](uint64_t addr) {
        *reinterpret_cast<uint64_t*>(addr + 0) = addr + 32;
        *reinterpret_cast<uint64_t*>(addr + 8) = addr + 64;
        *reinterpret_cast<uint64_t*>(addr + 32) = 0x80077bc00ULL;
        *reinterpret_cast<uint64_t*>(addr + 64) = addr + 96;
        *reinterpret_cast<uint64_t*>(addr + 32 + 128) = 0x80077bc00ULL;
        *reinterpret_cast<uint64_t*>(addr + 96 + 128) = 0x80077bc00ULL;
    };
    init_ctx_obj(fbase + 0x8000);
    init_ctx_obj(fbase + 0x8200);
    init_ctx_obj(fbase + 0x8400);

    if (fn_idx == 0) {
        // f_80077bc00(ptr x0): initializes a 1200-byte object at x0
        c.x[0] = fbase + 0x100;
    } else if (fn_idx == 1) {
        // f_80077be18(ptr x0, ptr x1, ptr x2, ptr x3)
        uint64_t obj = fbase + 0x100;
        uint64_t arr = fbase + 0x1000;
        uint32_t count = static_cast<uint32_t>(iter % 5);
        *reinterpret_cast<uint32_t*>(obj + 104) = count;
        *reinterpret_cast<uint64_t*>(obj + 112) = arr;
        for (uint32_t i = 0; i < count; ++i) {
            uint64_t entry = arr + i * 56;
            uint8_t f48 = (iter + i) % 4 == 0 ? 0 : ((iter + i) & 1 ? 3 : 2);
            *reinterpret_cast<uint8_t*>(entry + 48) = f48;
            *reinterpret_cast<uint8_t*>(entry + 0) = ((iter + i) % 3 == 0) ? 0x0A : 0x02;
            *reinterpret_cast<uint64_t*>(entry + 24) = ((iter + i) & 1) ? (fbase + 0x2000) : 0;
            *reinterpret_cast<uint32_t*>(entry + 16) = ((iter + i) % 5 == 0) ? 1 : 2;
            uint64_t sub = fbase + 0x3000 + i * 0x400;
            *reinterpret_cast<uint64_t*>(entry + 8) = sub;
            *reinterpret_cast<uint8_t*>(sub + 210) = ((iter + i) & 1) ? 1 : 6;
            *reinterpret_cast<uint32_t*>(sub + 12) = ((iter + i) % 3 == 0) ? 14 : 8;
            *reinterpret_cast<uint8_t*>(sub + 4) = 0;
            uint64_t vobj = fbase + 0x6000 + i * 0x100;
            *reinterpret_cast<uint64_t*>(sub + 40) = vobj;
            *reinterpret_cast<uint64_t*>(vobj + 0) = vobj + 16;
            *reinterpret_cast<uint64_t*>(vobj + 16) = 0x80077bc00ULL;
            *reinterpret_cast<uint64_t*>(vobj + 32) = shared_inner;
        }
        c.x[0] = obj;
        c.x[1] = fbase + 0x8000;
        c.x[2] = fbase + 0x8200;
        c.x[3] = (iter & 1) ? (fbase + 0x8400) : 0;
    } else if (fn_idx == 2) {
        // f_80077c0e4(ptr x0)
        uint64_t obj = fbase + 0x100;
        *reinterpret_cast<uint64_t*>(obj + 32) = shared_inner;
        c.x[0] = obj;
    } else if (fn_idx == 3) {
        // f_80077c180(ptr x0, ptr x1)
        uint64_t x0 = fbase + 0x100;
        uint64_t x1 = fbase + 0x8000;
        *reinterpret_cast<uint64_t*>(x0 + 16) = shared_inner;
        c.x[0] = x0;
        c.x[1] = x1;
    } else if (fn_idx == 4) {
        // f_80077d084(ptr x0, ptr x1, ptr x2): red-black tree rebalance leaf function
        uint64_t root_slot = fbase + 0x100;
        uint64_t path_struct = fbase + 0x200;
        // Build a valid 3-level tree of nodes in fbase + 0x1000..0x2000
        uint64_t n_grand = fbase + 0x1000;
        uint64_t n_parent = fbase + 0x1100;
        uint64_t n_uncle = fbase + 0x1200;
        uint64_t n_child = fbase + 0x1300;
        uint64_t n_sub1 = fbase + 0x1400;
        uint64_t n_sub2 = fbase + 0x1500;

        bool parent_is_left = (iter & 1) != 0;
        bool child_is_left = (iter & 2) != 0;
        bool uncle_present = (iter & 4) != 0;
        bool uncle_black = (iter & 8) != 0;
        uint32_t depth = 1 + (iter % 4);

        *reinterpret_cast<uint64_t*>(root_slot) = n_grand;
        *reinterpret_cast<uint64_t*>(n_grand + 16) = 1; // root, black, parent=0
        if (parent_is_left) {
            *reinterpret_cast<uint64_t*>(n_grand + 0) = n_parent;
            *reinterpret_cast<uint64_t*>(n_grand + 8) = uncle_present ? n_uncle : 0;
        } else {
            *reinterpret_cast<uint64_t*>(n_grand + 8) = n_parent;
            *reinterpret_cast<uint64_t*>(n_grand + 0) = uncle_present ? n_uncle : 0;
        }
        if (uncle_present) {
            *reinterpret_cast<uint64_t*>(n_uncle + 16) = n_grand | (uncle_black ? 1ULL : 0ULL);
        }
        // Parent is red (bit 0 == 0) so rebalance triggers
        *reinterpret_cast<uint64_t*>(n_parent + 16) = n_grand | ((iter % 7 == 0) ? 1ULL : 0ULL);
        if (child_is_left) {
            *reinterpret_cast<uint64_t*>(n_parent + 0) = n_child;
            *reinterpret_cast<uint64_t*>(n_parent + 8) = n_sub1;
        } else {
            *reinterpret_cast<uint64_t*>(n_parent + 8) = n_child;
            *reinterpret_cast<uint64_t*>(n_parent + 0) = n_sub1;
        }
        *reinterpret_cast<uint64_t*>(n_sub1 + 16) = n_parent | 1ULL;
        *reinterpret_cast<uint64_t*>(n_child + 16) = n_parent | 0ULL; // red child
        *reinterpret_cast<uint64_t*>(n_child + 0) = n_sub2;
        *reinterpret_cast<uint64_t*>(n_child + 8) = 0;
        *reinterpret_cast<uint64_t*>(n_sub2 + 16) = n_child | 1ULL;

        uint64_t mask = (iter >> 4) & 0xFULL;
        *reinterpret_cast<uint64_t*>(path_struct + 0) = mask;
        *reinterpret_cast<uint32_t*>(path_struct + 8) = depth;

        c.x[0] = root_slot;
        c.x[1] = n_child;
        c.x[2] = path_struct;
    }
}

void Main432Harness::prepare_benchmark_states(size_t n_states, std::mt19937_64& rng) {
    bench_cpus_.resize(n_states);
    slice_snaps_.resize(n_states);
    for (size_t s = 0; s < n_states; ++s) {
        setup_test_case(static_cast<int>(s % fn_names_.size()), 2, rng, bench_cpus_[s]);
        uint64_t fbase = OBJ_BASE + s * 0x30000ULL;
        slice_snaps_[s].resize(0x30000ULL);
        std::memcpy(slice_snaps_[s].data(), reinterpret_cast<void*>(fbase), 0x30000ULL);
    }
}

void Main432Harness::restore_benchmark_state(size_t state_idx, Cpu& c, SharedModuleHandle& handle) {
    std::memcpy(&c, &bench_cpus_[state_idx], 280);
    uint64_t fbase = OBJ_BASE + state_idx * 0x30000ULL;
    std::memcpy(reinterpret_cast<void*>(fbase + 0x100ULL), slice_snaps_[state_idx].data() + 0x100ULL, 0x200ULL);
    if (state_idx == 4) {
        std::memcpy(reinterpret_cast<void*>(fbase + 0x1000ULL), slice_snaps_[state_idx].data() + 0x1000ULL, 0x540ULL);
    } else if (state_idx == 2 || state_idx == 3) {
        std::memcpy(reinterpret_cast<void*>(fbase + 0x10000ULL), slice_snaps_[state_idx].data() + 0x10000ULL, 0x180ULL);
    }
    if (handle.stub_reset_state) {
        handle.stub_reset_state(3);
    }
}

void Main432Harness::execute_bench_function(size_t state_idx, Cpu& c, const SharedModuleHandle& handle) {
    if (state_idx < handle.fns.size()) {
        handle.fns[state_idx](&c);
    }
}

std::unique_ptr<ISampleHarness> create_main_432_harness(const std::string& base_dir) {
    return std::make_unique<Main432Harness>(base_dir);
}

} // namespace ultrs::benchmark
