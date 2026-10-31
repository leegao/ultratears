// Deterministic mock implementations of external guest callees and runtime helpers
// for main_432 benchmark and differential fuzzing.
// (src/horizon2llvm/benchmark/main_432/runtime_stubs.c)

#include <stdint.h>
#include <stdlib.h>
#include <string.h>
#include "src/runtime/cpu.h"

volatile int g_fnprof = 0;
uint64_t g_icache_pc[65536];
void* g_icache_fn[65536];

uint64_t g_stub_heap_ptr = 0x804000000ULL;
uint64_t g_stub_heap_end = 0x804200000ULL;
uint64_t g_stub_call_count = 0;
int g_bench_mode = 0;

void stub_set_bench_mode(int m) {
    g_bench_mode = m;
}

uint64_t g_stub_trace_hash = 0xCBF29CE484222325ULL;
uint32_t g_stub_rng_state = 0x12345678u;

void stub_reset_state(uint32_t seed) {
    if (g_icache_pc[0] == 0) {
        memset(g_icache_pc, 0xFF, sizeof(g_icache_pc));
    }
    g_stub_heap_ptr = 0x804000000ULL;
    g_stub_call_count = 0;
    g_stub_trace_hash = 0xCBF29CE484222325ULL;
    g_stub_rng_state = seed ? seed : 0x12345678u;
}

uint64_t stub_get_trace_hash(void) { return g_stub_trace_hash; }
uint64_t stub_get_call_count(void) { return g_stub_call_count; }
uint64_t stub_get_heap_ptr(void)   { return g_stub_heap_ptr; }

static inline void trace_mix(uint64_t v) {
    g_stub_trace_hash ^= v;
    g_stub_trace_hash *= 0x100000001B3ULL;
}

static inline uint64_t stub_next_rand(void) {
    uint32_t x = g_stub_rng_state;
    x ^= x << 13;
    x ^= x >> 17;
    x ^= x << 5;
    g_stub_rng_state = x;
    return (uint64_t)x | ((uint64_t)(x ^ 0xA5A5A5A5u) << 32);
}

static void clobber_caller_saved(Cpu* c, uint64_t tag, int num_args_read) {
    g_stub_call_count++;
    if (g_bench_mode) return;
    trace_mix(tag);
    for (int i = 0; i < num_args_read; ++i) {
        trace_mix(c->x[i]);
    }
    trace_mix(c->sp);
    // Clobber AAPCS64 caller-saved registers X1..X17 (and X30) deterministically
    for (int r = 1; r <= 17; ++r) {
        c->x[r] = stub_next_rand() ^ (tag + (uint64_t)r);
    }
    c->nzcv = (uint32_t)((stub_next_rand() & 0xFULL) << 28);
}

static uint64_t guest_alloc(uint64_t sz) {
    if (sz == 0) sz = 16;
    sz = (sz + 15ULL) & ~15ULL;
    if (g_stub_heap_ptr + sz > g_stub_heap_end) return 0;
    uint64_t p = g_stub_heap_ptr;
    g_stub_heap_ptr += sz;
    if (!g_bench_mode) {
        memset((void*)(uintptr_t)p, 0, sz <= 256 ? (size_t)sz : 256);
    } else {
        *(uint64_t*)(uintptr_t)p = 0;
        *(uint64_t*)(uintptr_t)(p + 8) = 0;
        *(uint64_t*)(uintptr_t)(p + 16) = 0;
        *(uint64_t*)(uintptr_t)(p + 24) = 0;
    }
    return p;
}

void fnprof_hit(uint64_t a, uint64_t b, uint64_t c) {
    (void)a; (void)b; (void)c;
}

void rt_dispatch(Cpu* c) {
    // Indirect call (BLR): record X0, X1 and return a valid object or timestamp
    clobber_caller_saved(c, 0xD15FA7C0ULL, 2);
    if (c->x[0] >= 0x800000000ULL && c->x[0] < 0x805000000ULL) {
        uint64_t p = guest_alloc(32);
        if (p) {
            *(uint64_t*)(uintptr_t)(p + 8) = c->x[0];
        }
        c->x[0] = p;
    } else {
        c->x[0] = 1000ULL + g_stub_call_count * 25ULL;
    }
}

void rt_svc(Cpu* c, uint32_t imm, uint64_t pc) { (void)c; (void)imm; (void)pc; }
void rt_brk(Cpu* c, uint32_t imm, uint64_t pc) { (void)c; (void)imm; (void)pc; abort(); }
void rt_udf(Cpu* c, uint64_t pc) { (void)c; (void)pc; abort(); }
uint64_t rt_ticks(void) { return 1000ULL + g_stub_call_count; }
int32_t totk_drs_enabled(void) { return 0; }

// External guest functions called by main_432:
void f_8000340bc(Cpu* c) { clobber_caller_saved(c, 0x8000340bcULL, 1); c->x[0] = 0; }
void f_800079d20(Cpu* c) {
    uint64_t sz = c->x[1];
    clobber_caller_saved(c, 0x800079d20ULL, 4);
    c->x[0] = guest_alloc(sz ? sz : 64);
}
void f_8001797dc(Cpu* c) { clobber_caller_saved(c, 0x8001797dcULL, 2); c->x[0] = 0; }
void f_8001a1590(Cpu* c) {
    uint64_t sz = c->x[0];
    clobber_caller_saved(c, 0x8001a1590ULL, 3);
    c->x[0] = guest_alloc(sz ? sz : 64);
}
void f_8001a6c10(Cpu* c) {
    uint64_t sz = c->x[0];
    clobber_caller_saved(c, 0x8001a6c10ULL, 3);
    c->x[0] = guest_alloc(sz ? sz : 64);
}
void f_8002152a0(Cpu* c) { clobber_caller_saved(c, 0x8002152a0ULL, 1); c->x[0] = 0; }
void f_8003f9d50(Cpu* c) { clobber_caller_saved(c, 0x8003f9d50ULL, 3); c->x[0] = 0; }
void f_80077d3b0(Cpu* c) { clobber_caller_saved(c, 0x80077d3b0ULL, 3); c->x[0] = 0; }
void f_80077fec4(Cpu* c) {
    uint64_t obj = c->x[0];
    uint32_t kind = (uint32_t)c->x[1];
    clobber_caller_saved(c, 0x80077fec4ULL, 2);
    if (kind == 3) {
        c->x[0] = 0;
    } else if (obj >= 0x800000000ULL && obj < 0x805000000ULL) {
        uint64_t p = guest_alloc(32);
        if (p) {
            *(uint64_t*)(uintptr_t)(p + 8) = obj + 64;
            *(uint64_t*)(uintptr_t)(p + 16) = 1;
        }
        c->x[0] = p;
    } else {
        c->x[0] = 0;
    }
}
void f_80077fee0(Cpu* c) {
    uint64_t obj = c->x[0];
    uint32_t kind = (uint32_t)c->x[1];
    clobber_caller_saved(c, 0x80077fee0ULL, 2);
    if (kind == 3) {
        c->x[0] = 0; // Forces the main comparison path at 0x80077c404 (cbnz x0)
    } else if (obj >= 0x800000000ULL && obj < 0x805000000ULL) {
        uint64_t p = guest_alloc(32);
        if (p) {
            *(uint64_t*)(uintptr_t)(p + 8) = obj + 64;
            *(uint64_t*)(uintptr_t)(p + 16) = 1;
        }
        c->x[0] = p;
    } else {
        c->x[0] = 0;
    }
}
void f_800781d60(Cpu* c) { clobber_caller_saved(c, 0x800781d60ULL, 3); c->x[0] = 0; }
void f_800789c30(Cpu* c) {
    uint64_t sp_ptr = c->x[1];
    clobber_caller_saved(c, 0x800789c30ULL, 6);
    if (sp_ptr >= 0x800000000ULL && sp_ptr < 0x805000000ULL) {
        c->x[0] = *(uint64_t*)(uintptr_t)sp_ptr;
    }
}
void f_80084d7f0(Cpu* c) { clobber_caller_saved(c, 0x80084d7f0ULL, 2); c->x[0] = 0; }
void f_800b54d3c(Cpu* c) { clobber_caller_saved(c, 0x800b54d3cULL, 5); c->x[0] = 0; }
void f_8027d342c(Cpu* c) { clobber_caller_saved(c, 0x8027d342cULL, 1); c->x[0] = 0; }
void f_802ba39a0(Cpu* c) { clobber_caller_saved(c, 0x802ba39a0ULL, 1); c->x[0] = 1; }
void f_802ba39b0(Cpu* c) {
    uint64_t v = c->x[0];
    clobber_caller_saved(c, 0x802ba39b0ULL, 1);
    c->x[0] = (v >> 4) & 1ULL;
}
void f_802ba3ac0(Cpu* c) { clobber_caller_saved(c, 0x802ba3ac0ULL, 1); c->x[0] = 0; }
void f_802ba4080(Cpu* c) { clobber_caller_saved(c, 0x802ba4080ULL, 1); c->x[0] = 0; }
void f_802ba40a0(Cpu* c) { clobber_caller_saved(c, 0x802ba40a0ULL, 1); c->x[0] = 0; }
void f_802ba40b0(Cpu* c) { clobber_caller_saved(c, 0x802ba40b0ULL, 1); c->x[0] = 0; }
void f_802ba41b0(Cpu* c) { clobber_caller_saved(c, 0x802ba41b0ULL, 1); c->x[0] = 0; }
void f_802ba4a70(Cpu* c) { clobber_caller_saved(c, 0x802ba4a70ULL, 1); c->x[0] = 0; }
