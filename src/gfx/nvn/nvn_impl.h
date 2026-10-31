// NVN implementation registration macros shared by hle_nvn.c and TOTK extension files.
// Registered in ELF sections nvn_impls / nvn_extras on Linux, or PE sections .nvni$m / .nvnx$m on Windows.
#pragma once
#include "nvn_protos.h"

// TOTK: NVN entry points that wait for the GPU, the display or other threads give up the caller's virtual core for
// their duration (runtime/threads.c), as the Horizon thread would block there.
int runtime_core_away(void);
void runtime_core_back(int *away);
#define NVN_BLOCKING() __attribute__((cleanup(runtime_core_back))) int totk_core_away_ = runtime_core_away()

#if defined(__linux__)
#define NVNI_SECTION "nvn_impls"
#define NVNX_SECTION "nvn_extras"
#else
#define NVNI_SECTION ".nvni$m"
#define NVNX_SECTION ".nvnx$m"
#endif

typedef struct { const char *name; void *fn; } nvn_impl;
#define NVN(name, ret, ...)                                                                       \
    static ret h_##name(__VA_ARGS__);                                                             \
    static const NVNT_##name chk_##name __attribute__((unused)) = h_##name;                       \
    __attribute__((used, section(NVNI_SECTION))) static const nvn_impl e_##name = {#name, (void *)h_##name}; \
    static ret h_##name(__VA_ARGS__)
// 无原型的新版接口：不做签名检查
// Newer interfaces without prototypes: no signature check
#define NVN_NOPROTO(name, ret, ...)                                                               \
    static ret h_##name(__VA_ARGS__);                                                             \
    __attribute__((used, section(NVNI_SECTION))) static const nvn_impl e_##name = {#name, (void *)h_##name}; \
    static ret h_##name(__VA_ARGS__)


// TOTK: entry points the game asks nvnDeviceGetProcAddress / nvnBootstrapLoader for that are not in main's
// name table (no counting thunk). They are returned directly by nvn_lookup.
#define NVN_EXTRA(name, ret, ...)                                                                 \
    static ret x_##name(__VA_ARGS__);                                                             \
    __attribute__((used, section(NVNX_SECTION))) static const nvn_impl ex_##name = {#name, (void *)x_##name}; \
    static ret x_##name(__VA_ARGS__)

// nvn_registry.c
const nvn_impl *nvn_registry_impls(unsigned *n);
const nvn_impl *nvn_registry_extras(unsigned *n);
void *nvn_impl_fn(const char *name, int extra);
uint64_t nvn_registry_guest_address(const char *name);
