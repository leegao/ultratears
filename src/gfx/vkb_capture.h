#pragma once
#include <stdint.h>
#include <stddef.h>
#include <stdio.h>
#include "nvn/nvn_obj.h"
#include "nvn/nvn_tex.h"

#ifdef __cplusplus
extern "C" {
#endif

// Sparse slab binary header: skips 64 KiB zero-runs to save disk & I/O while preserving
// exact virtual address layout when loaded into anonymous mmap(MAP_FIXED) regions.
#define SLAB_SPARSE_MAGIC 0x534c414253504152ULL /* "SLABSPAR" */
#define SLAB_SPARSE_BLOCK_SIZE (64u * 1024u)

typedef struct {
    uint64_t magic;            /* SLAB_SPARSE_MAGIC ("SLABSPAR") */
    uint64_t total_size;       /* Full virtual range size (hi - lo) in bytes */
    uint32_t block_size;       /* Granularity in bytes (SLAB_SPARSE_BLOCK_SIZE = 65536) */
    uint32_t non_zero_blocks;  /* Number of non-zero blocks following this header */
} slab_sparse_hdr;
/* Followed by non_zero_blocks records of:
 *   uint32_t block_index;
 *   uint8_t  data[min(block_size, total_size - block_index * block_size)];
 */

// Serialized metadata entry in images.meta for reconstructing active VkImage objects
typedef struct {
    uint64_t serial;
    nvn_texdesc d;
    uint32_t width, height, depth, levels, layers;
    int format;
    uint32_t aspect;
    uint64_t storage;
    int gpu_written;
    int upload_stamp;
    uint8_t has_layout, layout[8];
    uint32_t has_pixels;
    uint32_t pixel_bytes;
} vkb_image_meta;

// Per-pass metadata for GPU pass timestamp profiling
typedef struct {
    uint32_t w, h, ncolor, fmt0, depth, draws;
    uint64_t draws0;
    char key[16];
} vkb_passprof_info;

// Check if current frame matches TOTK_FRAME_CAPTURE=<frame>[:<dir>]
int vkb_capture_wanted(void);
const char *vkb_capture_dir(void);

// Capture submission state (slabs, registries, ucap, command handles, textures, shaders)
void vkb_capture_frame(int n, const uint64_t *h, void *ucap);

// Capture present state (swapchain texture serial, crop)
void vkb_capture_present(uint64_t n, const tex_t *t, const int crop[4]);

// Queries the active host memory slabs backing guest memory pools.
// Allocates and populates *los and *his with the start (inclusive) and end (exclusive)
// virtual addresses [lo, hi) of each active slab, and stores the slab count in *count.
// Required so capture can dump exact virtual memory ranges and replay can mmap(MAP_FIXED)
// them at identical addresses for zero-translation GPU pointer replay.
int vkb_slabs_get(uintptr_t **los, uintptr_t **his, int *count);

// Registries dump / load (treg.bin and sreg.bin)
#ifndef TREG_T_DEFINED
#define TREG_T_DEFINED
typedef struct { tex_t t; view_t v; uint8_t has_view, valid; } treg_t;
#endif
void vkb_registries_dump(FILE *ft, FILE *fs);
void vkb_registries_load(FILE *ft, FILE *fs);

// UCAP dump / load (ucap.bin)
void *vkb_ucap_dump_save(FILE *f);
void *vkb_ucap_load_read(FILE *f);
void *vkb_ucap_clone(const void *src);

// Images dump / load (images.meta and textures/tex_<serial>.bin)
void vkb_images_dump(const char *dir);
void vkb_images_load(const char *dir);

// Collects GPU pass timestamp results from the last frame without printing immediately,
// allowing multi-iteration statistical aggregation (avg, min, p50, p75, p90, p99, max).
// Returns the number of passes recorded, or 0 if unavailable.
int vkb_passprof_collect(uint64_t fence, double *out_pass_ms, vkb_passprof_info *out_info,
                         int max_passes, double *out_inpass_ms, double *out_gaps_ms, double *out_span_ms);

#ifdef __cplusplus

}
#endif
