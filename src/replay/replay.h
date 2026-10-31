// Standalone Frame Replayer and Shader Benchmark Harness for UltraTears
#pragma once

#ifdef __cplusplus
extern "C" {
#endif

#include <stdint.h>
#include <stddef.h>
#include "compat/gfx_compat.h"
#include "host/hle.h"
#include "nvn_obj.h"
#include "nvn_tex.h"
#include "vkb.h"
#include "vkb_capture.h"
#include "vkb_shader.h"

typedef struct {
    const char *frame_dir;
    int bench_count;
    int passprof;
    int headless;
    const char *shader_dir;
    const char *shot_bmp;
    const char *compact_out;
    int compact_passes;
    int fake_textures;
} replay_opts;


typedef struct {
    uintptr_t *slab_los;
    uintptr_t *slab_his;
    int nslabs;
    uint64_t *top_handles;
    uint32_t num_top_handles;
    int total_handles;
    void *ucap;
    tex_t target_tex;
    int crop[4];
} replay_state;

// External Vulkan backend hooks
void mtl_sub_begin(void);
void mtl_sub_snapshot_ubos_cap(const uint64_t *h, int n, void *ucap);
void mtl_sub_index(const uint64_t *h, int n);
void mtl_exec(const uint8_t *p);
void mtl_exec_rest(const uint64_t *h, int n);
uint64_t mtl_sub_commit(void);
uint64_t mtl_present(const tex_t *t, double period_s, const int crop[4]);
void mtl_pool_add(const void *mem, uint64_t size);
void vkb_passprof_report(uint64_t fence);

// CLI Argument Parsing (args.c)
void replay_print_usage(const char *prog);
int replay_parse_args(int argc, char **argv, replay_opts *opts);

// Frame State Loading & Pointer Remapping (setup.c)
int replay_load_frame(const replay_opts *opts, replay_state *st);
void replay_cleanup(replay_state *st);

// Multi-Iteration Benchmark & Pass Profiler Statistical Aggregator (bench.c)
int replay_run_benchmark(const replay_opts *opts, replay_state *st);
int replay_save_screenshot(const tex_t *t, const char *bmp_path);

// Transitive Reference Frame Compactor (compact.c)
int replay_compact_frame(const replay_opts *opts);

#ifdef __cplusplus


}
#endif
