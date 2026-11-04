// Static CFG longest-path solver & generic arbitrary-.ll sample harness
// (src/horizon2llvm/benchmark/generic_harness.cpp)

#include "generic_harness.hpp"
#include "benchmark_common.hpp"
#include "latency_estimator.hpp"

#include <algorithm>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <dlfcn.h>
#include <filesystem>
#include <fstream>
#include <sstream>
#include <sys/mman.h>

namespace fs = std::filesystem;
using namespace ultrs;
using namespace ultrs::llvm_ir;
using namespace ultrs::lifter;
using namespace ultrs::passes;

namespace ultrs::benchmark {

// ============================================================================
// Guest Address Space Initialization & GenericSampleHarness Implementation
// ============================================================================

void init_guest_address_space(const nso::NsoFile* nso, ISampleHarness* harness) {
    static bool s_mapped = false;
    if (!s_mapped) {
        void* mapped = mmap(reinterpret_cast<void*>(GUEST_BASE), GUEST_MAP_SIZE,
                            PROT_READ | PROT_WRITE,
                            MAP_PRIVATE | MAP_ANONYMOUS | MAP_FIXED, -1, 0);
        if (mapped == MAP_FAILED) {
            perror("mmap GUEST_BASE failed");
            std::exit(1);
        }
        s_mapped = true;
    }
    std::memset(reinterpret_cast<void*>(GUEST_BASE), 0, GUEST_MAP_SIZE);
    if (nso && !nso->image.empty()) {
        std::memcpy(reinterpret_cast<void*>(GUEST_BASE), nso->image.data(),
                    std::min<size_t>(nso->image.size(), HEAP_BASE - GUEST_BASE));

        // Apply R_AARCH64_RELATIVE relocations
        for (const auto& r : nso->relocs) {
            if (r.type == nso::R_AARCH64_RELATIVE && r.offset + 8 <= nso->image.size()) {
                uint64_t val = GUEST_BASE + static_cast<uint64_t>(r.addend);
                std::memcpy(reinterpret_cast<void*>(GUEST_BASE + r.offset), &val, 8);
            }
        }
    }

    if (harness) {
        uint64_t data_off = nso ? nso->data.first : 0;
        size_t img_sz = nso ? nso->image.size() : 0;
        harness->init_guest_globals(GUEST_BASE, data_off, img_sz);
    }
}

namespace {

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

// ============================================================================
// Target-Specific Setup Functions for Specialized Benchmark Kernels
// ============================================================================

/**
 * Setup for main_067_statickernel (f_8001161d0: static kernel command/descriptor dispatcher).
 * Parameters: context ptr in X0, actor/component ptr in X1, command type index (0..33) in W2.
 */
static void setup_target_main_067_statickernel(uint64_t fbase, size_t iter, Cpu& c) {
    uint64_t x0 = fbase + 0x1000;
    uint64_t x1 = fbase + 0x2000;
    // Cycle W2 across valid switch cases 0..33 (including case 19 -> f_8000ef570,
    // cases 0..4 -> inline scvtf, and cases 29..32 -> inline FP bbox scaling)
    uint32_t cmd_type = static_cast<uint32_t>(iter % 34);
    c.x[0] = x0;
    c.x[1] = x1;
    c.x[2] = cmd_type;

    // 1. Sub-index at [x1 + 0x2917] = 0, flags at [x1 + 0x2914] = 0x40
    *reinterpret_cast<uint16_t*>(x1 + 0x2914) = 0x40;
    *reinterpret_cast<int8_t*>(x1 + 0x2917)   = 0;
    *reinterpret_cast<uint8_t*>(x1 + 8)       = 0; // actor slot index 0

    // 2. Entry table at [x0 + 0x3390] (count) and [x0 + 0x3398] (base ptr -> x23 = base + 0x1e8)
    uint64_t x23_base = fbase + 0x6000;
    *reinterpret_cast<uint32_t*>(x0 + 0x3390) = 4;
    *reinterpret_cast<uint64_t*>(x0 + 0x3398) = x23_base;
    uint64_t x23 = x23_base + 0x1e8;
    *reinterpret_cast<uint32_t*>(x23 + 0x10) = 0xFFFFFFFFu; // mask for B_80011706c
    *reinterpret_cast<uint32_t*>(x23 + 0x14) = 0xFFFFFFFFu; // mask for B_800116fd4 (tst w11, w10)
    *reinterpret_cast<uint32_t*>(x23 + 0x1c) = 1;
    *reinterpret_cast<int32_t*>(x23 + 0x2c)  = 4;           // work item count > 0

    // 3. Descriptor tables at [x0 + 0x1ec8], [x0 + 0x1eb8], [x0 + 0x2fd0], [x0 + 0x31f0], [x0 + 0xd28]
    uint64_t tbl_1ec8 = fbase + 0x7000;
    uint64_t tbl_data = fbase + 0x8000;
    *reinterpret_cast<uint64_t*>(x0 + 0x1ec8) = tbl_1ec8;
    *reinterpret_cast<uint32_t*>(tbl_1ec8 + 8)  = 4;
    *reinterpret_cast<uint64_t*>(tbl_1ec8 + 16) = tbl_data;
    *reinterpret_cast<uint64_t*>(tbl_data + 0x3c40) = fbase + 0xC000;

    // Valid float bounding boxes at tbl_data + 0x2e00 for FP switch cases (29..32)
    float bbox[4] = {1.0f, 2.0f, 10.0f, 20.0f};
    std::memcpy(reinterpret_cast<void*>(tbl_data + 0x2e00), bbox, sizeof(bbox));

    uint64_t obj_31f0 = fbase + 0xD000;
    float scale[2] = {0.5f, 0.5f};
    std::memcpy(reinterpret_cast<void*>(obj_31f0 + 0x308), scale, sizeof(scale));
    *reinterpret_cast<uint64_t*>(x0 + 0x31f0) = obj_31f0;
    *reinterpret_cast<uint32_t*>(x0 + 0xd20)  = 4;
    *reinterpret_cast<uint64_t*>(x0 + 0xd28)  = fbase + 0xE000;
    *reinterpret_cast<int32_t*>(fbase + 0xE000 + 0x3d8) = -12;
    *reinterpret_cast<int32_t*>(fbase + 0xE000 + 0x3f8) = 24;

    // 4. Enable post-switch descriptor copy & work-queue loop (B_800117004 .. B_800117180)
    *reinterpret_cast<uint8_t*>(x0 + 0x140 + cmd_type) = 0x3; // bits 0 and 1 set
    *reinterpret_cast<uint8_t*>(x0 + 0x3a81) = 0x40;          // bit 6 set
    *reinterpret_cast<uint8_t*>(x0 + 0x3a85) = 0x02;          // bit 1 set
    *reinterpret_cast<uint64_t*>(x0 + 0x3b60) = 1;
    *reinterpret_cast<uint32_t*>(x0 + 0x3b68) = 16;           // max work items
    *reinterpret_cast<uint64_t*>(x0 + 0x3b70) = fbase + 0x10000; // work item array
    *reinterpret_cast<uint32_t*>(x0 + 0x3b78) = 0;            // atomic counter 1
    *reinterpret_cast<uint32_t*>(x0 + 0x3b80) = 0;            // atomic counter 2
    *reinterpret_cast<uint32_t*>(x0 + 0x3b84) = 16;           // queue capacity
    *reinterpret_cast<uint64_t*>(x0 + 0x3b88) = fbase + 0x12000; // queue ptr array
    *reinterpret_cast<uint32_t*>(x0 + 0x3b90) = 1;            // divisor
    *reinterpret_cast<uint32_t*>(x0 + 0x3b94) = 2;            // max loop trip count (2 iterations)
}

/**
 * Setup for main_105_alloc (f_8001a1590: heap/slab allocator entry point).
 * Parameters: size in X0, heap pointer in X1, alignment in W2.
 * Initializes vtable pointers with TLS fast-path vs generic slab allocation.
 */
static void setup_target_main_105_alloc(uint64_t fbase, size_t iter, Cpu& c) {
    uint64_t sizes[] = {32, 64, 128, 256, 512, 1024};
    uint64_t aligns[] = {8, 16, 32, 64};
    c.x[0] = sizes[iter % 6];
    c.x[1] = (iter % 7 == 0) ? 0 : (fbase + 0x2000);
    c.x[2] = aligns[iter % 4];
    // Vtable slot [x8 + 48] = 0x80060add0 on even iterations (TLS fast-path) vs generic slab on odd
    uint64_t vtbl = fbase + 0x5000;
    *reinterpret_cast<uint64_t*>(fbase + 0x2000) = vtbl;
    *reinterpret_cast<uint64_t*>(vtbl + 48) = (iter & 1) ? 0x80060add0ULL : 0x8001a1590ULL;
}

/**
 * Setup for main_121_simd (f_8001d2a5c: SIMD/vector batch processing).
 * Initializes descriptor tables, vector registers, and control header words.
 */
static void setup_target_main_121_simd(uint64_t fbase, size_t iter, Cpu& /*c*/) {
    *reinterpret_cast<uint64_t*>(fbase + 0x5000 + 24) = static_cast<uint64_t>(iter % 2);
    *reinterpret_cast<uint8_t*>(fbase + 0x3000 + 25) = (iter & 1) ? 0x08 : 0x00;
    uint32_t hdr = ((iter % 3 != 0) ? (2u << 24) : (1u << 24)) | static_cast<uint32_t>(iter % 3);
    *reinterpret_cast<uint32_t*>(fbase + 0x2000) = hdr;
    uint64_t desc_table = fbase + 0xD000;
    *reinterpret_cast<uint64_t*>(fbase + 0x5000 + 88) = desc_table;
    *reinterpret_cast<uint64_t*>(fbase + 0x6000 + 88) = desc_table;
    *reinterpret_cast<uint64_t*>(fbase + 0x7000 + 88) = desc_table;
    for (size_t k = 0; k < 8; ++k) {
        uint64_t d = desc_table + k * 24;
        *reinterpret_cast<uint16_t*>(d + 0) = 0;
        *reinterpret_cast<uint16_t*>(d + 2) = 2;
        *reinterpret_cast<uint16_t*>(d + 4) = 0;
        *reinterpret_cast<uint16_t*>(d + 6) = (iter % 4 == 0) ? 2 : 1;
        *reinterpret_cast<uint32_t*>(d + 16) = 1;
        *reinterpret_cast<int16_t*>(d + 20) = 0;
    }
}

/**
 * Setup for main_300_bvhtree (f_8004e71b0 & f_8004e8eec: bounding volume hierarchy traversal).
 * Synthesizes bounding box vectors and tree node child pointers with bitmasks.
 */
static void setup_target_main_300_bvhtree(uint64_t entry_pc, uint64_t fbase, size_t iter, Cpu& c) {
    if (entry_pc == 0x8004e71b0ULL) {
        uint64_t ctx = fbase + 0x3000;
        float b0 = 1.0f, b1 = 2.0f, b2 = 0.5f, b3 = 4.0f;
        std::memcpy(reinterpret_cast<void*>(ctx + 24), &b0, 4);
        std::memcpy(reinterpret_cast<void*>(ctx + 28), &b1, 4);
        std::memcpy(reinterpret_cast<void*>(ctx + 32), &b2, 4);
        std::memcpy(reinterpret_cast<void*>(ctx + 36), &b3, 4);
        std::memcpy(reinterpret_cast<void*>(ctx + 44), &b2, 4);
        std::memcpy(reinterpret_cast<void*>(ctx + 52), &b3, 4);
        uint64_t flag_byte_ptr = fbase + 0x9000;
        *reinterpret_cast<uint8_t*>(flag_byte_ptr) = 0;
        *reinterpret_cast<uint64_t*>(fbase + 0x8000) = flag_byte_ptr;
        *reinterpret_cast<uint64_t*>(ctx + 128) = fbase + 0x8000;
        *reinterpret_cast<int32_t*>(ctx + 120) = static_cast<int32_t>(1 + (iter % 3));
        *reinterpret_cast<uint8_t*>(fbase + 0x5000) = static_cast<uint8_t>(1 + (iter % 3));
        c.x[2] = ctx;
        c.x[3] = 15;
    } else if (entry_pc == 0x8004e8eecULL) {
        *reinterpret_cast<uint8_t*>(fbase + 0x1000) = static_cast<uint8_t>(iter % 6);
        *reinterpret_cast<uint64_t*>(fbase + 0x1000 + 8) = fbase + 0x6000;
        *reinterpret_cast<uint32_t*>(fbase + 0x3000) = 0xFFu;
        for (size_t k = 0; k < 16; ++k) {
            *reinterpret_cast<uint32_t*>(fbase + 0x6000 + k * 4) = static_cast<uint32_t>((iter + k) & 1);
        }
        c.x[0] = fbase + 0x1000;
        c.x[1] = fbase + 0x2000;
        c.x[2] = fbase + 0x3000;
        c.x[3] = static_cast<uint32_t>(iter & 0xFF);
        c.x[4] = static_cast<uint32_t>((iter >> 1) & 0xFF);
        c.x[5] = static_cast<uint32_t>(iter % 4);
        c.x[6] = 0;
    }
}

/**
 * Setup for main_159_dispatch (f_8002824a0: message/event dispatcher).
 * Sets up dispatch table indices and message header flags.
 */
static void setup_target_main_159_dispatch(uint64_t fbase, size_t iter, Cpu& /*c*/) {
    *reinterpret_cast<uint32_t*>(fbase + 0x1000 + 224) = static_cast<uint32_t>(iter % 4);
    *reinterpret_cast<uint32_t*>(fbase + 0x1000 + 200) = static_cast<uint32_t>(iter % 3);
    *reinterpret_cast<uint32_t*>(fbase + 0x1000 + 204) = static_cast<uint32_t>(iter % 6);
    *reinterpret_cast<uint8_t*>(fbase + 0x1000 + 228)  = 1;
}

static void setup_target_main_163_actor(uint64_t fbase, size_t iter, Cpu& /*c*/) {
    uint64_t cnt = 1ULL + (iter % 2);
    *reinterpret_cast<uint64_t*>(fbase + 0x2000 + 40) = fbase + 0x4000;
    *reinterpret_cast<uint64_t*>(fbase + 0x4000 + 16) = cnt;
    *reinterpret_cast<uint64_t*>(fbase + 0x1000 + 32) = cnt;
    for (size_t ni = 4; ni < 14; ++ni) {
        uint64_t nd = fbase + 0x1000 + ni * 0x1000;
        *reinterpret_cast<uint8_t*>(nd + 2432) = 0;
        *reinterpret_cast<uint64_t*>(nd + 176) = 0;
        *reinterpret_cast<uint64_t*>(nd + 208) = 0;
        *reinterpret_cast<uint64_t*>(nd + 880) = 0;
        if (ni >= 7) *reinterpret_cast<uint64_t*>(nd + 16) = 0;
    }
}

/**
 * Setup for main_432 functions (f_80077bc00..f_80077d084: complex descriptor graphs & tree balancing).
 * Generates nested descriptor hierarchies and valid red-black tree structures.
 */
static void setup_target_main_432(uint64_t entry_pc, int fn_idx, uint64_t fbase, size_t iter, Cpu& c) {
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

    if (entry_pc == 0x80077bc00ULL || (entry_pc == 0 && fn_idx == 0)) {
        c.x[0] = fbase + 0x100;
    } else if (entry_pc == 0x80077be18ULL || (entry_pc == 0 && fn_idx == 1)) {
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
    } else if (entry_pc == 0x80077c0e4ULL || (entry_pc == 0 && fn_idx == 2)) {
        uint64_t obj = fbase + 0x100;
        *reinterpret_cast<uint64_t*>(obj + 32) = shared_inner;
        c.x[0] = obj;
    } else if (entry_pc == 0x80077c180ULL || (entry_pc == 0 && fn_idx == 3)) {
        uint64_t x0 = fbase + 0x100;
        uint64_t x1 = fbase + 0x8000;
        *reinterpret_cast<uint64_t*>(x0 + 16) = shared_inner;
        c.x[0] = x0;
        c.x[1] = x1;
    } else if (entry_pc == 0x80077d084ULL || (entry_pc == 0 && fn_idx == 4)) {
        uint64_t root_slot = fbase + 0x100;
        uint64_t path_struct = fbase + 0x200;
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
        *reinterpret_cast<uint64_t*>(n_grand + 16) = 1;
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
        *reinterpret_cast<uint64_t*>(n_parent + 16) = n_grand | ((iter % 7 == 0) ? 1ULL : 0ULL);
        if (child_is_left) {
            *reinterpret_cast<uint64_t*>(n_parent + 0) = n_child;
            *reinterpret_cast<uint64_t*>(n_parent + 8) = n_sub1;
        } else {
            *reinterpret_cast<uint64_t*>(n_parent + 8) = n_child;
            *reinterpret_cast<uint64_t*>(n_parent + 0) = n_sub1;
        }
        *reinterpret_cast<uint64_t*>(n_child + 16) = n_parent;
        *reinterpret_cast<uint64_t*>(n_child + 0) = 0;
        *reinterpret_cast<uint64_t*>(n_child + 8) = 0;
        *reinterpret_cast<uint64_t*>(n_sub1 + 16) = n_parent | 1;
        *reinterpret_cast<uint64_t*>(n_sub1 + 0) = n_sub2;
        *reinterpret_cast<uint64_t*>(n_sub1 + 8) = 0;
        *reinterpret_cast<uint64_t*>(n_sub2 + 16) = n_sub1 | 1;
        *reinterpret_cast<uint64_t*>(n_sub2 + 0) = 0;
        *reinterpret_cast<uint64_t*>(n_sub2 + 8) = 0;

        *reinterpret_cast<uint64_t*>(path_struct + 0) = n_child;
        *reinterpret_cast<uint32_t*>(path_struct + 8) = depth;
        for (uint32_t d = 0; d < depth && d < 8; ++d) {
            uint64_t anc = (d == 0) ? n_child : (d == 1 ? n_parent : n_grand);
            *reinterpret_cast<uint64_t*>(path_struct + 16 + d * 8) = anc;
        }
        c.x[0] = root_slot;
        c.x[1] = n_child;
        c.x[2] = path_struct;
    }
}

class GenericSampleHarness final : public ISampleHarness {
public:
    GenericSampleHarness(std::string sample_dir, std::string sample_ll_override)
        : sample_dir_(std::move(sample_dir)) {

        if (sample_ll_override.empty()) {
            sample_ll_path_ = (fs::path(sample_dir_) / "sample.ll").string();
        } else {
            sample_ll_path_ = std::move(sample_ll_override);
            if (sample_dir_.empty()) {
                sample_dir_ = fs::path(sample_ll_path_).parent_path().string();
            }
        }

        name_ = fs::path(sample_dir_).filename().string();
        if (name_.empty() || name_ == ".") {
            name_ = fs::path(sample_ll_path_).stem().string();
        }

        std::ifstream in(sample_ll_path_, std::ios::binary);
        if (in) {
            std::ostringstream ss;
            ss << in.rdbuf();
            raw_ir_ = ss.str();
            chunk_ = parse_raw_ll(raw_ir_, name_);
            for (const auto& pf : chunk_.fns) {
                fn_names_.push_back(pf.name);
            }
            static_analysis_ = load_or_generate_stub_analysis(sample_dir_);
        }

        std::string stubs_c = runtime_stubs_c_path();
        if (!stubs_c.empty() && fs::exists(stubs_c)) {
            std::string stubs_so = "/tmp/lib_harness_" + name_ + ".so";
            bool need_build = true;
            if (fs::exists(stubs_so)) {
                auto t_c = fs::last_write_time(stubs_c);
                auto t_so = fs::last_write_time(stubs_so);
                if (t_so >= t_c) need_build = false;
            }
            if (need_build) {
                const char* cc = (std::system("command -v clang >/dev/null 2>&1") == 0) ? "clang" : "gcc";
                std::string cmd = std::string(cc) + " -O1 -shared -fPIC -Isrc/runtime -Isrc/horizon2llvm/runtime "
                                  + stubs_c + " -o " + stubs_so + " >/dev/null 2>&1";
                (void)std::system(cmd.c_str());
            }
            if (fs::exists(stubs_so)) {
                stubs_dl_ = dlopen(stubs_so.c_str(), RTLD_NOW | RTLD_LOCAL);
                if (stubs_dl_) {
                    stub_apply_path_params_ = reinterpret_cast<ApplyPathParamsFn>(dlsym(stubs_dl_, "stub_apply_path_params"));
                }
            }
        }
    }

    ~GenericSampleHarness() override {
        if (stubs_dl_) {
            dlclose(stubs_dl_);
            stubs_dl_ = nullptr;
        }
    }

    const char* name() const override { return name_.c_str(); }
    std::string sample_dir() const override { return sample_dir_; }
    std::string sample_ll_path() const override { return sample_ll_path_; }

    std::string runtime_stubs_c_path() const override {
        std::string auto_c = (fs::path(sample_dir_) / "auto_stubs.c").string();
        if (fs::exists(auto_c)) return auto_c;
        if (!static_analysis_.generated_stubs_c_path.empty() && fs::exists(static_analysis_.generated_stubs_c_path)) {
            return static_analysis_.generated_stubs_c_path;
        }
        std::string manual_c = (fs::path(sample_dir_) / "runtime_stubs.c").string();
        if (fs::exists(manual_c)) return manual_c;
        return "";
    }

    std::string default_results_dir() const override {
        return (fs::path(sample_dir_) / "results").string();
    }

    const std::vector<std::string>& function_names() const override {
        return fn_names_;
    }

    size_t num_branch_sensitive_callees() const override {
        return static_analysis_.num_branch_sensitive;
    }

    void init_guest_globals(uint64_t guest_base, uint64_t data_offset, size_t /*image_size*/) override {
        uint64_t g_obj = GLOBALS_BASE;
        for (size_t off = 0; off < 0x10000; off += 8) {
            *reinterpret_cast<uint64_t*>(GLOBALS_BASE + off) = GLOBALS_BASE + 0x4000;
        }
        for (size_t off = 0x4000; off < 0x8000; off += 8) {
            *reinterpret_cast<uint64_t*>(GLOBALS_BASE + off) = GLOBALS_BASE + 0x8000;
        }
        std::memset(reinterpret_cast<void*>(GLOBALS_BASE + 0x8000), 0, 0x8000);
        *reinterpret_cast<uint8_t*>(GLOBALS_BASE + 0x4000) = 1;
        *reinterpret_cast<uint32_t*>(GLOBALS_BASE + 0x4000 + 60) = 2;
        *reinterpret_cast<uint32_t*>(GLOBALS_BASE + 0x4000 + 2400) = 0x7; // For BVH bics wzr, #6, w9
        *reinterpret_cast<uint32_t*>(GLOBALS_BASE + 0x8000 + 2400) = 0x7;

        *reinterpret_cast<uint64_t*>(0x803952000ULL + 3248) = GLOBALS_BASE + 0x4000;
        *reinterpret_cast<uint64_t*>(0x80395b000ULL + 3856) = GLOBALS_BASE + 0xC000;

        for (uint64_t addr = guest_base + data_offset; addr < HEAP_BASE; addr += 8) {
            if (*reinterpret_cast<uint64_t*>(addr) == 0) {
                *reinterpret_cast<uint64_t*>(addr) = g_obj;
            }
        }

        // Initialize known global pointer slots across targets (including main_432)
        for (uint64_t slot : MAIN_432_GLOBAL_PTR_SLOTS) {
            *reinterpret_cast<uint64_t*>(slot) = g_obj;
        }
    }

    void setup_test_case(int fn_idx, size_t iter, std::mt19937_64& rng, Cpu& c) override {
        std::memset(&c, 0, sizeof(Cpu));
        std::memset(reinterpret_cast<void*>(HEAP_BASE), 0, 0x20000);
        std::memset(reinterpret_cast<void*>(STACK_BASE), 0, STACK_SIZE);

        uint64_t fbase = OBJ_BASE + static_cast<uint64_t>(fn_idx) * 0x40000ULL;
        std::memset(reinterpret_cast<void*>(fbase), 0, 0x40000ULL);

        c.sp = STACK_BASE + STACK_SIZE - 0x2000;
        c.tpidr = GLOBALS_BASE + 0x10000;
        c.tpidrro = GLOBALS_BASE + 0x10000;
        *reinterpret_cast<uint64_t*>(c.tpidr) = GLOBALS_BASE + 0x4000;

        for (int v = 0; v < 32; ++v) {
            float f0 = 1.0f + static_cast<float>((iter + v) % 4) * 0.5f;
            float f1 = 2.0f + static_cast<float>((iter + v) % 3) * 0.25f;
            float f2 = 0.5f;
            float f3 = 4.0f;
            std::memcpy(reinterpret_cast<char*>(&c.v[v]) + 0,  &f0, 4);
            std::memcpy(reinterpret_cast<char*>(&c.v[v]) + 4,  &f1, 4);
            std::memcpy(reinterpret_cast<char*>(&c.v[v]) + 8,  &f2, 4);
            std::memcpy(reinterpret_cast<char*>(&c.v[v]) + 12, &f3, 4);
        }
        c.nzcv = static_cast<uint32_t>((rng() & 0xFULL) << 28);

        // Build a rich pool of 16 self-consistent object nodes at fbase + 0x1000 .. fbase + 0x10000
        for (size_t node_i = 0; node_i < 16; ++node_i) {
            uint64_t node = fbase + 0x1000 + node_i * 0x1000;
            uint64_t next_node = 0;
            if (node_i < 4) next_node = fbase + 0x5000;
            else if (node_i < 12) next_node = fbase + (node_i + 2) * 0x1000;
            else next_node = 0; // Acyclic leaf terminator
            for (size_t off = 0; off < 0x1000; off += 8) {
                *reinterpret_cast<uint64_t*>(node + off) = next_node;
            }
            // Keep all 8-byte aligned slots [0..0x9F8] as valid 64-bit pointers by default;
            // only set non-pointer scalar offsets >= 128 in the generic template.
            *reinterpret_cast<uint64_t*>(node + 128) = 1ULL;
            *reinterpret_cast<uint64_t*>(node + 168) = 0ULL;
        }

        // Default X0..X3 as pointers into fbase nodes, X4..X7 as small valid indices/flags
        c.x[0] = fbase + 0x1000;
        c.x[1] = fbase + 0x2000;
        c.x[2] = fbase + 0x3000;
        c.x[3] = (iter % 4) + 1;
        c.x[4] = (iter % 4) + 1;
        c.x[5] = iter % 3;
        c.x[6] = 0;
        c.x[7] = 0;
        for (int r = 8; r < 31; ++r) {
            c.x[r] = rng() & 0xFFFFULL;
        }

        uint64_t entry_pc = (fn_idx >= 0 && static_cast<size_t>(fn_idx) < chunk_.fns.size())
                            ? chunk_.fns[fn_idx].entry_pc : 0;

        // Target-specific refinements: Prefer automated constraint-solved path parameter synthesis
        // except in specialized cases where multi-function structures are required (e.g. main_432)
        // that the single-function auto-stub cannot handle.
        bool applied_auto_stubs = false;
        if (name_ == "main_432" || (entry_pc >= 0x80077bc00ULL && entry_pc <= 0x80077d084ULL)) {
            setup_target_main_432(entry_pc, fn_idx, fbase, iter, c);
        } else if (stub_apply_path_params_ && name_ != "main_180_eventengine") {
            stub_apply_path_params_(&c, static_cast<int>(iter % 2), fbase);
            applied_auto_stubs = true;
        }

        if (!applied_auto_stubs && name_ != "main_432") {
            // Target-specific refinements deduced from entry guards (fallback if no auto-stub exists)
            if (entry_pc == 0x8001161d0ULL) {
                setup_target_main_067_statickernel(fbase, iter, c);
            } else if (entry_pc == 0x8001a1590ULL) {
                setup_target_main_105_alloc(fbase, iter, c);
            } else if (entry_pc == 0x8001d2a5cULL) {
                setup_target_main_121_simd(fbase, iter, c);
            } else if (entry_pc == 0x8004e71b0ULL || entry_pc == 0x8004e8eecULL) {
                setup_target_main_300_bvhtree(entry_pc, fbase, iter, c);
            } else if (entry_pc == 0x8002824a0ULL) {
                setup_target_main_159_dispatch(fbase, iter, c);
            } else if (entry_pc == 0x80029e418ULL) {
                setup_target_main_163_actor(fbase, iter, c);
            }
        }
    }

    void prepare_benchmark_states(size_t n_states, std::mt19937_64& rng) override {
        bench_cpus_.resize(n_states);
        slice_snaps_.resize(n_states);
        for (size_t s = 0; s < n_states; ++s) {
            int fn_idx = static_cast<int>(s % std::max<size_t>(1, fn_names_.size()));
            setup_test_case(fn_idx, 2 + s, rng, bench_cpus_[s]);
            uint64_t fbase = OBJ_BASE + static_cast<uint64_t>(fn_idx) * 0x40000ULL;
            slice_snaps_[s].resize(0x10000ULL);
            std::memcpy(slice_snaps_[s].data(), reinterpret_cast<void*>(fbase), 0x10000ULL);
        }
    }

    void restore_benchmark_state(size_t state_idx, Cpu& c, SharedModuleHandle& handle) override {
        size_t s = state_idx % bench_cpus_.size();
        int fn_idx = static_cast<int>(s % std::max<size_t>(1, fn_names_.size()));
        std::memcpy(&c, &bench_cpus_[s], sizeof(Cpu));
        uint64_t fbase = OBJ_BASE + static_cast<uint64_t>(fn_idx) * 0x40000ULL;
        // Restore 256-byte working slices mutated by specialized sample kernels:
        // - 0x1000: Context / primary parameter descriptor arena (used across all samples)
        // - 0x2000: Actor / entity descriptor table base (main_163, main_067)
        // - 0x2D00: Actor command slots [actor + cmd*208 + 3392] mutated by main_067_statickernel
        // - 0x3000: Secondary descriptor & bounding box arena (main_300, main_432)
        // - 0x4000: Node hierarchies & heap scratch structures (main_105, main_432)
        // - 0x4B00: Atomic work-queue / ringbuffer state [ctx + 15104] mutated by main_067_statickernel
        // - 0x5000: Vtable & dispatch descriptors (main_105, main_159)
        // - 0x6100: Secondary tree node / child pointer table (main_432 red-black nodes)
        for (size_t off : {0x1000ULL, 0x2000ULL, 0x2D00ULL, 0x3000ULL, 0x4000ULL, 0x4B00ULL, 0x5000ULL, 0x6100ULL}) {
            std::memcpy(reinterpret_cast<void*>(fbase + off),
                        slice_snaps_[s].data() + off,
                        0x100ULL);
        }
        if (handle.stub_reset_state) {
            handle.stub_reset_state(3);
        }
        if (handle.stub_apply_path_params && name_ != "main_432" && name_ != "main_180_eventengine") {
            handle.stub_apply_path_params(&c, static_cast<int>(s % 2), fbase);
        }
    }

    void execute_bench_function(size_t state_idx, Cpu& c, const SharedModuleHandle& handle) override {
        if (handle.fns.empty()) return;
        size_t fn_idx = state_idx % handle.fns.size();
        run_guest_fn_safely(handle.fns[fn_idx], &c);
    }

private:
    std::string sample_dir_;
    std::string sample_ll_path_;
    std::string name_;
    std::string raw_ir_;
    ParsedRawChunk chunk_;
    std::vector<std::string> fn_names_;
    SampleStaticAnalysis static_analysis_;
    std::vector<Cpu> bench_cpus_;
    std::vector<std::vector<uint8_t>> slice_snaps_;
    ApplyPathParamsFn stub_apply_path_params_ = nullptr;
    void* stubs_dl_ = nullptr;
};

} // namespace

std::unique_ptr<ISampleHarness> create_sample_harness(
    const std::string& sample_dir,
    const std::string& sample_ll_override) {
    // Uniform generic harness across all benchmark suites (including main_432)
    return std::make_unique<GenericSampleHarness>(sample_dir, sample_ll_override);
}

} // namespace ultrs::benchmark
