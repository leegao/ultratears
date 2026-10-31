#include "replay.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/stat.h>
#include "../vk/vk.h"
#include "vkb.h"

int replay_save_screenshot(const tex_t *t, const char *bmp_path) {
    if (!t || !bmp_path || !*bmp_path) return 0;
    vkb_image *im = vkb_image_of(t);
    if (!im || !im->img || !im->width || !im->height) return 0;

    uint32_t w = im->width, h = im->height;
    VkDeviceSize size = (VkDeviceSize)w * h * 4;
    VkBuffer buf = VK_NULL_HANDLE;
    VkDeviceMemory mem = VK_NULL_HANDLE;

    VkBufferCreateInfo bi = {
        VK_STRUCTURE_TYPE_BUFFER_CREATE_INFO,
        .size = size,
        .usage = VK_BUFFER_USAGE_TRANSFER_DST_BIT
    };
    if (!vk_check(vk.vkCreateBuffer(vkc.device, &bi, NULL, &buf), "screenshot buffer")) return 0;

    VkMemoryRequirements req;
    vk.vkGetBufferMemoryRequirements(vkc.device, buf, &req);
    uint32_t type = UINT32_MAX;
    for (uint32_t i = 0; i < vkc.memory.memoryTypeCount && type == UINT32_MAX; i++) {
        if ((req.memoryTypeBits & (1u << i)) &&
            (vkc.memory.memoryTypes[i].propertyFlags &
             (VK_MEMORY_PROPERTY_HOST_VISIBLE_BIT | VK_MEMORY_PROPERTY_HOST_COHERENT_BIT)) ==
            (VK_MEMORY_PROPERTY_HOST_VISIBLE_BIT | VK_MEMORY_PROPERTY_HOST_COHERENT_BIT)) {
            type = i;
        }
    }
    VkMemoryAllocateInfo ai = {
        VK_STRUCTURE_TYPE_MEMORY_ALLOCATE_INFO,
        .allocationSize = req.size,
        .memoryTypeIndex = type
    };
    if (type == UINT32_MAX || !vk_check(vk.vkAllocateMemory(vkc.device, &ai, NULL, &mem), "screenshot memory")) {
        vk.vkDestroyBuffer(vkc.device, buf, NULL);
        return 0;
    }
    vk.vkBindBufferMemory(vkc.device, buf, mem, 0);

    mtl_sub_begin();
    VkCommandBuffer cb = vkb_cmd();
    vkb_image_use(cb, im, VK_IMAGE_LAYOUT_TRANSFER_SRC_OPTIMAL,
                  VK_PIPELINE_STAGE_2_COPY_BIT, VK_ACCESS_2_TRANSFER_READ_BIT);
    VkBufferImageCopy r = {
        .imageSubresource = {VK_IMAGE_ASPECT_COLOR_BIT, 0, 0, 1},
        .imageExtent = {w, h, 1}
    };
    vk.vkCmdCopyImageToBuffer(cb, im->img, VK_IMAGE_LAYOUT_TRANSFER_SRC_OPTIMAL, buf, 1, &r);
    uint64_t fence = mtl_sub_commit();
    mtl_wait(fence, UINT64_MAX);

    int ok = 0;
    void *px = NULL;
    if (vk.vkMapMemory(vkc.device, mem, 0, VK_WHOLE_SIZE, 0, &px) == VK_SUCCESS) {
        FILE *f = fopen(bmp_path, "wb");
        if (f) {
            uint32_t img_bytes = w * h * 4;
            uint8_t hdr[54] = {'B', 'M'};
            uint32_t v;
            v = 54 + img_bytes; memcpy(hdr + 2, &v, 4);
            v = 54; memcpy(hdr + 10, &v, 4);
            v = 40; memcpy(hdr + 14, &v, 4);
            memcpy(hdr + 18, &w, 4);
            int32_t nh = -(int32_t)h; memcpy(hdr + 22, &nh, 4);
            hdr[26] = 1; hdr[28] = 32;
            memcpy(hdr + 34, &img_bytes, 4);
            fwrite(hdr, 1, sizeof hdr, f);

            int is_rgba = (im->format == VK_FORMAT_R8G8B8A8_UNORM ||
                           im->format == VK_FORMAT_R8G8B8A8_SRGB);
            if (is_rgba) {
                uint8_t *tmp = malloc(img_bytes);
                if (tmp) {
                    const uint8_t *src = (const uint8_t *)px;
                    for (uint32_t p = 0; p < img_bytes; p += 4) {
                        tmp[p + 0] = src[p + 2];
                        tmp[p + 1] = src[p + 1];
                        tmp[p + 2] = src[p + 0];
                        tmp[p + 3] = src[p + 3];
                    }
                    fwrite(tmp, 1, img_bytes, f);
                    free(tmp);
                } else {
                    fwrite(px, 1, img_bytes, f);
                }
            } else {
                fwrite(px, 1, img_bytes, f);
            }
            fclose(f);
            ok = 1;
        }
        vk.vkUnmapMemory(vkc.device, mem);
    }
    vk.vkDestroyBuffer(vkc.device, buf, NULL);
    vk.vkFreeMemory(vkc.device, mem, NULL);
    return ok;
}


enum { MAX_PROF_PASSES = 2048 };

typedef struct {
    int count;
    double avg;
    double min;
    double p50;
    double p75;
    double p90;
    double p99;
    double max;
} stat_summary;

static int cmp_double_asc(const void *a, const void *b) {
    double x = *(const double *)a;
    double y = *(const double *)b;
    return (x > y) - (x < y);
}

static double calc_percentile(const double *sorted, int n, double pct) {
    if (n <= 0) return 0.0;
    if (n == 1) return sorted[0];
    double pos = (pct / 100.0) * (double)(n - 1);
    int lo = (int)pos;
    int hi = lo + 1;
    if (hi >= n) return sorted[n - 1];
    double frac = pos - (double)lo;
    return sorted[lo] * (1.0 - frac) + sorted[hi] * frac;
}

static void compute_stats(const double *samples, int n, stat_summary *out) {
    memset(out, 0, sizeof *out);
    if (n <= 0) return;

    double *sorted = malloc(sizeof(double) * (size_t)n);
    double sum = 0.0;
    for (int i = 0; i < n; i++) {
        sorted[i] = samples[i];
        sum += samples[i];
    }
    qsort(sorted, (size_t)n, sizeof(double), cmp_double_asc);

    out->count = n;
    out->avg = sum / (double)n;
    out->min = sorted[0];
    out->p50 = calc_percentile(sorted, n, 50.0);
    out->p75 = calc_percentile(sorted, n, 75.0);
    out->p90 = calc_percentile(sorted, n, 90.0);
    out->p99 = calc_percentile(sorted, n, 99.0);
    out->max = sorted[n - 1];

    free(sorted);
}

typedef struct {
    int pass_idx;
    stat_summary st;
} pass_stat_row;

static int cmp_pass_stat_desc(const void *a, const void *b) {
    const pass_stat_row *ra = (const pass_stat_row *)a;
    const pass_stat_row *rb = (const pass_stat_row *)b;
    if (ra->st.p50 != rb->st.p50) return (ra->st.p50 < rb->st.p50) ? 1 : -1;
    return (ra->st.avg < rb->st.avg) ? 1 : (ra->st.avg > rb->st.avg) ? -1 : 0;
}

static void execute_single_frame(replay_state *st) {
    mtl_sub_begin();
    mtl_sub_snapshot_ubos_cap(st->top_handles, (int)st->num_top_handles, vkb_ucap_clone(st->ucap));
    mtl_sub_index(st->top_handles, (int)st->num_top_handles);

    static int dbg = -1;
    if (dbg < 0) dbg = getenv("TOTK_REPLAY_DEBUG") != NULL;
    for (uint32_t i = 0; i < st->num_top_handles; i++) {
        if (dbg) fprintf(stderr, "Starting mtl_exec %u / %u (h=%p)...\n", i, st->num_top_handles, (void*)st->top_handles[i]);
        mtl_exec_rest(st->top_handles + i + 1, (int)(st->num_top_handles - i - 1));
        mtl_exec((const uint8_t *)st->top_handles[i]);
        if (dbg) fprintf(stderr, "Done mtl_exec %u\n", i);
    }
    mtl_exec_rest(NULL, 0);

    mtl_present(&st->target_tex, 0.0, st->crop);
}

static void ensure_bundled_shaders(const char *frame_dir) {
    char sdir[512], test_probe[512];
    snprintf(sdir, sizeof sdir, "%s/shaders", frame_dir);
    struct stat st;
    if (stat(sdir, &st) != 0) {
        mkdir(sdir, 0755);
        vkb_shader_dump_all(sdir);
    }
    (void)test_probe;
}

int replay_run_benchmark(const replay_opts *opts, replay_state *st) {
    int n_iters = opts->bench_count;

    // Perform 1 warm-up execution so first-time texture uploads, BC7 decodes, and SPIR-V
    // shader compilations complete before timed benchmark passes begin. This guarantees
    // every benchmark iteration executes the exact steady-state render pass topology.
    printf("\n=== Warming up GPU & caches (1 warm-up pass) ===\n");
    uint64_t tw0 = runtime_now_ns();
    execute_single_frame(st);
    if (opts->passprof) {
        // Drain warm-up passprof query pool so benchmark starts fresh
        vkb_passprof_collect(0, NULL, NULL, 0, NULL, NULL, NULL);
    }
    double warmup_ms = (double)(runtime_now_ns() - tw0) / 1e6;
    printf("Warm-up complete in %.2f ms.\n", warmup_ms);

    // Ensure <frame_dir>/shaders is populated for self-contained portability
    ensure_bundled_shaders(opts->frame_dir);

    printf("\n=== Running Frame Replay Benchmark (%d %s) ===\n",
           n_iters, n_iters == 1 ? "iteration" : "iterations");

    double *wall_ms = calloc((size_t)n_iters, sizeof(double));
    double *inpass_ms = calloc((size_t)n_iters, sizeof(double));
    double *gaps_ms = calloc((size_t)n_iters, sizeof(double));
    double *span_ms = calloc((size_t)n_iters, sizeof(double));
    double *pass_matrix = calloc((size_t)n_iters * MAX_PROF_PASSES, sizeof(double));
    vkb_passprof_info *pass_info = calloc(MAX_PROF_PASSES, sizeof(vkb_passprof_info));
    int num_passes = 0;

    for (int iter = 0; iter < n_iters; iter++) {
        uint64_t t0 = runtime_now_ns();

        execute_single_frame(st);

        if (opts->passprof) {
            int np = vkb_passprof_collect(0, &pass_matrix[(size_t)iter * MAX_PROF_PASSES],
                                          iter == 0 ? pass_info : NULL, MAX_PROF_PASSES,
                                          &inpass_ms[iter], &gaps_ms[iter], &span_ms[iter]);
            if (np > num_passes) num_passes = np;
        }

        uint64_t dt = runtime_now_ns() - t0;
        wall_ms[iter] = (double)dt / 1e6;

        if (n_iters > 1 && ((iter + 1) % 10 == 0 || iter + 1 == n_iters)) {
            if (opts->passprof && num_passes > 0) {
                printf("  [Run %3d/%3d] GPU in-pass: %6.2f ms | GPU span: %6.2f ms | Host wall: %6.2f ms\n",
                       iter + 1, n_iters, inpass_ms[iter], span_ms[iter], wall_ms[iter]);
            } else {
                printf("  [Run %3d/%3d] Host wall: %6.2f ms\n", iter + 1, n_iters, wall_ms[iter]);
            }
        }
    }

    // Save screenshot if requested
    if (opts->shot_bmp) {
        if (replay_save_screenshot(&st->target_tex, opts->shot_bmp)) {

            printf("\nRendered frame saved to: %s\n", opts->shot_bmp);
        } else {
            fprintf(stderr, "\nFailed to save screenshot to: %s\n", opts->shot_bmp);
        }
    }

    if (opts->passprof && num_passes > 0) {
        pass_stat_row *rows = malloc(sizeof(pass_stat_row) * (size_t)num_passes);
        double *col_samples = malloc(sizeof(double) * (size_t)n_iters);

        for (int p = 0; p < num_passes; p++) {
            for (int r = 0; r < n_iters; r++) {
                col_samples[r] = pass_matrix[(size_t)r * MAX_PROF_PASSES + p];
            }
            rows[p].pass_idx = p;
            compute_stats(col_samples, n_iters, &rows[p].st);
        }
        qsort(rows, (size_t)num_passes, sizeof(pass_stat_row), cmp_pass_stat_desc);

        printf("\n=== GPU Pass Profile Statistics (%d passes, %d %s) ===\n",
               num_passes, n_iters, n_iters == 1 ? "run" : "runs");
        printf("  %-5s %-11s %-18s %-6s %-13s | %7s %7s %7s %7s %7s %7s %7s\n",
               "Pass", "Dimensions", "Targets (fmt/d)", "Draws", "FS Key",
               "Avg", "Min", "p50", "p75", "p90", "p99", "Max");
        printf("  ------------------------------------------------------------------------------------------------------------------------\n");

        int limit = num_passes < 30 ? num_passes : 30;
        for (int k = 0; k < limit; k++) {
            int idx = rows[k].pass_idx;
            const vkb_passprof_info *pi = &pass_info[idx];
            const stat_summary *s = &rows[k].st;
            char dims[24], tgts[32];
            snprintf(dims, sizeof dims, "%ux%u", pi->w, pi->h);
            snprintf(tgts, sizeof tgts, "%uc(%#x) d%#x", pi->ncolor, pi->fmt0, pi->depth);
            printf("  %4d  %-11s %-18s %6u %-13s | %7.3f %7.3f %7.3f %7.3f %7.3f %7.3f %7.3f ms\n",
                   idx, dims, tgts, pi->draws, pi->key[0] ? pi->key : "-",
                   s->avg, s->min, s->p50, s->p75, s->p90, s->p99, s->max);
        }

        free(col_samples);
        free(rows);
    }

    // Frame-level statistical summary
    stat_summary st_wall, st_inpass, st_gaps, st_span;
    compute_stats(wall_ms, n_iters, &st_wall);

    printf("\n=== Frame Timing Summary (%d %s) ===\n", n_iters, n_iters == 1 ? "run" : "runs");
    printf("  %-26s | %5s | %8s %8s %8s %8s %8s %8s %8s\n",
           "Metric", "Runs", "Avg", "Min", "p50", "p75", "p90", "p99", "Max");
    printf("  ---------------------------------------------------------------------------------------------------\n");
    if (opts->passprof && num_passes > 0) {
        compute_stats(inpass_ms, n_iters, &st_inpass);
        compute_stats(gaps_ms, n_iters, &st_gaps);
        compute_stats(span_ms, n_iters, &st_span);
        printf("  %-26s | %5d | %8.3f %8.3f %8.3f %8.3f %8.3f %8.3f %8.3f ms\n",
               "GPU In-Pass Execution", st_inpass.count,
               st_inpass.avg, st_inpass.min, st_inpass.p50, st_inpass.p75, st_inpass.p90, st_inpass.p99, st_inpass.max);
        printf("  %-26s | %5d | %8.3f %8.3f %8.3f %8.3f %8.3f %8.3f %8.3f ms\n",
               "GPU Inter-Pass Gaps", st_gaps.count,
               st_gaps.avg, st_gaps.min, st_gaps.p50, st_gaps.p75, st_gaps.p90, st_gaps.p99, st_gaps.max);
        printf("  %-26s | %5d | %8.3f %8.3f %8.3f %8.3f %8.3f %8.3f %8.3f ms\n",
               "GPU Total Frame Span", st_span.count,
               st_span.avg, st_span.min, st_span.p50, st_span.p75, st_span.p90, st_span.p99, st_span.max);
    }
    printf("  %-26s | %5d | %8.3f %8.3f %8.3f %8.3f %8.3f %8.3f %8.3f ms\n",
           "Host Replay Wall Time", st_wall.count,
           st_wall.avg, st_wall.min, st_wall.p50, st_wall.p75, st_wall.p90, st_wall.p99, st_wall.max);

    free(wall_ms);
    free(inpass_ms);
    free(gaps_ms);
    free(span_ms);
    free(pass_matrix);
    free(pass_info);
    return 1;
}
