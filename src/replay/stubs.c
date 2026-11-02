// Standalone runtime and HLE stubs for executing the Vulkan backend outside UltraTears
#include <stdlib.h>
#include <stdint.h>
#include <time.h>
#include "compat/gfx_compat.h"
#include "host/hle.h"

uint64_t runtime_now_ns(void) {
    struct timespec ts;
    clock_gettime(CLOCK_MONOTONIC, &ts);
    return (uint64_t)ts.tv_sec * 1000000000ull + (uint64_t)ts.tv_nsec;
}

void guest_chain(const char *what) { (void)what; }
void runtime_core_away(void) {}
void runtime_core_back(void) {}
_Noreturn void runtime_fail(const char *message) { (void)message; exit(1); }
void hle_bind_system_event(void *e, int id) { (void)e; (void)id; }
void hle_signal_system_event(void *event) { (void)event; }
Cpu *guest_cpu(void) { return NULL; }
void runtime_watch_tick(uint64_t f) { (void)f; }
void runtime_input_script_tick(uint64_t f) { (void)f; }
void mtl_mem_stat(unsigned long long f, unsigned long long mb) { (void)f; (void)mb; }
