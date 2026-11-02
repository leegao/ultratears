#include "vkb_capture.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <unistd.h>
#include "compat/gfx_compat.h"
#include "host/hle.h"
#include "vkb.h"
#include "vkb_shader.h"

static long long g_cap_frame = -1;
static char g_cap_dir[512];

static void mkdir_p(const char *dir) {
    char tmp[512];
    snprintf(tmp, sizeof tmp, "%s", dir);
    size_t len = strlen(tmp);
    if (len > 0 && tmp[len - 1] == '/') tmp[len - 1] = 0;
    for (char *p = tmp + 1; *p; p++) {
        if (*p == '/') {
            *p = 0;
            mkdir(tmp, 0755);
            *p = '/';
        }
    }
    mkdir(tmp, 0755);
}

int vkb_capture_wanted(void) {
    if (g_cap_frame < 0) {
        const char *e = getenv("TOTK_FRAME_CAPTURE");
        if (e && *e) {
            g_cap_frame = atoll(e);
            const char *col = strchr(e, ':');
            if (col && *(col + 1)) snprintf(g_cap_dir, sizeof g_cap_dir, "%s", col + 1);
            else snprintf(g_cap_dir, sizeof g_cap_dir, "totk_dump/frame%lld", g_cap_frame);
        } else {
            g_cap_frame = 0;
        }
    }
    return g_cap_frame > 0 && (vkb_frame() + 1 == (uint64_t)g_cap_frame);
}

const char *vkb_capture_dir(void) {
    return g_cap_dir;
}

typedef struct {
    uintptr_t old_addr;
    uint32_t id;
    size_t size;
    uint8_t *data;
} cap_handle;

static cap_handle g_cmd_hands[8192];
static int g_ncmd_hands = 0;

/*
 * Recursively walks the NVN recorded command stream starting at `addr`,
 * following any nested `OP_CALL` sub-recordings, and stores each unique
 * command buffer stream in `g_cmd_hands`.
 */
static uint32_t capture_handle_recursive(uintptr_t addr) {
    if (!addr) return 0;
    for (int i = 0; i < g_ncmd_hands; i++) {
        if (g_cmd_hands[i].old_addr == addr) return (uint32_t)i;
    }
    if (g_ncmd_hands >= 8192) return 0;

    int id = g_ncmd_hands++;
    const uint8_t *p = (const uint8_t *)addr;
    size_t total = 0;
    for (;;) {
        op_hdr h;
        memcpy(&h, p + total, sizeof h);
        if (h.size < 8 || (h.size & 7)) break;
        if (h.op == OP_CALL) {
            uintptr_t child = 0;
            memcpy(&child, p + total + 8, 8);
            if (child) capture_handle_recursive(child);
        }
        total += h.size;
        if (h.op == OP_END) break;
    }

    g_cmd_hands[id].old_addr = addr;
    g_cmd_hands[id].id = (uint32_t)id;
    g_cmd_hands[id].size = total;
    g_cmd_hands[id].data = malloc(total ? total : 1);
    if (g_cmd_hands[id].data) memcpy(g_cmd_hands[id].data, (const void *)addr, total);
    return (uint32_t)id;
}

static int is_zero_block(const uint8_t *p, size_t sz) {
    const uint64_t *u = (const uint64_t *)p;
    size_t nu = sz / 8;
    for (size_t i = 0; i < nu; i++) {
        if (u[i] != 0) return 0;
    }
    for (size_t i = nu * 8; i < sz; i++) {
        if (p[i] != 0) return 0;
    }
    return 1;
}

/*
 * Writes a host memory slab [lo, hi) using 64 KiB block zero-compaction.
 * Guest memory slabs often contain 40-70% zero-filled virtual space.
 * By storing only non-zero 64 KiB blocks prefixed by SLAB_SPARSE_MAGIC,
 * disk footprint and I/O time are cut roughly in half while replay maps
 * anonymous zero-filled memory via mmap(MAP_FIXED) and populates only active blocks.
 */
static size_t write_slab_sparse(FILE *fb, const uint8_t *base, size_t total_sz) {
    const uint32_t bsz = SLAB_SPARSE_BLOCK_SIZE;
    uint32_t num_blocks = (uint32_t)((total_sz + bsz - 1) / bsz);
    uint32_t non_zero = 0;

    for (uint32_t b = 0; b < num_blocks; b++) {
        size_t off = (size_t)b * bsz;
        size_t cur = (off + bsz <= total_sz) ? bsz : (total_sz - off);
        if (!is_zero_block(base + off, cur)) non_zero++;
    }

    slab_sparse_hdr hdr = {
        .magic = SLAB_SPARSE_MAGIC,
        .total_size = total_sz,
        .block_size = bsz,
        .non_zero_blocks = non_zero
    };
    fwrite(&hdr, sizeof hdr, 1, fb);

    size_t written_payload = 0;
    for (uint32_t b = 0; b < num_blocks; b++) {
        size_t off = (size_t)b * bsz;
        size_t cur = (off + bsz <= total_sz) ? bsz : (total_sz - off);
        if (!is_zero_block(base + off, cur)) {
            fwrite(&b, sizeof b, 1, fb);
            fwrite(base + off, 1, cur, fb);
            written_payload += cur;
        }
    }
    return written_payload;
}

void vkb_capture_frame(int n, const uint64_t *h, void *ucap) {
    (void)ucap;
    const char *dir = vkb_capture_dir();
    LOG("[totk-gfx] [capture] Capturing frame %lld submission into %s...", g_cap_frame, dir);
    mkdir_p(dir);

    char sub_dir[512];
    snprintf(sub_dir, sizeof sub_dir, "%s/slabs", dir);
    mkdir_p(sub_dir);
    snprintf(sub_dir, sizeof sub_dir, "%s/textures", dir);
    mkdir_p(sub_dir);
    snprintf(sub_dir, sizeof sub_dir, "%s/commands", dir);
    mkdir_p(sub_dir);
    snprintf(sub_dir, sizeof sub_dir, "%s/shaders", dir);
    mkdir_p(sub_dir);

    // 1. Slabs (sparse block-compacted guest memory ranges)
    uintptr_t *los = NULL, *his = NULL;
    int nslabs = 0;
    vkb_slabs_get(&los, &his, &nslabs);

    char slabs_meta[512];
    snprintf(slabs_meta, sizeof slabs_meta, "%s/slabs.txt", dir);
    FILE *fs = fopen(slabs_meta, "w");
    if (fs) {
        fprintf(fs, "%d\n", nslabs);
        for (int i = 0; i < nslabs; i++) {
            uintptr_t lo = los[i], hi = his[i];
            size_t sz = (size_t)(hi - lo);
            char slab_bin[512];
            snprintf(slab_bin, sizeof slab_bin, "%s/slabs/slab_%d.bin", dir, i);
            fprintf(fs, "%d 0x%llx 0x%llx %zu slab_%d.bin\n",
                    i, (unsigned long long)lo, (unsigned long long)hi, sz, i);
            FILE *fb = fopen(slab_bin, "wb");
            if (fb) {
                size_t nz_bytes = write_slab_sparse(fb, (const uint8_t *)lo, sz);
                fclose(fb);
                LOG("[totk-gfx] [capture] Slab %d: 0x%llx..0x%llx (%.1f MiB virtual -> %.1f MiB non-zero)",
                    i, (unsigned long long)lo, (unsigned long long)hi,
                    sz / 1048576.0, nz_bytes / 1048576.0);
            }
        }
        fclose(fs);
    }
    free(los);
    free(his);

    // 2. Command handles and deep call graph
    g_ncmd_hands = 0;
    uint32_t *top_ids = malloc(sizeof(uint32_t) * (n ? n : 1));
    for (int i = 0; i < n; i++) {
        top_ids[i] = capture_handle_recursive(h[i]);
    }

    char cman[512];
    snprintf(cman, sizeof cman, "%s/commands/manifest.txt", dir);
    FILE *fc = fopen(cman, "w");
    if (fc) {
        fprintf(fc, "top_count=%d total_handles=%d\n", n, g_ncmd_hands);
        for (int i = 0; i < n; i++) fprintf(fc, "top %d %u\n", i, top_ids[i]);
        for (int i = 0; i < g_ncmd_hands; i++) {
            fprintf(fc, "handle %d 0x%llx %zu cmd_%d.bin\n",
                    i, (unsigned long long)g_cmd_hands[i].old_addr, g_cmd_hands[i].size, i);
            char cpath[512];
            snprintf(cpath, sizeof cpath, "%s/commands/cmd_%d.bin", dir, i);
            FILE *fbin = fopen(cpath, "wb");
            if (fbin) {
                if (g_cmd_hands[i].data) fwrite(g_cmd_hands[i].data, 1, g_cmd_hands[i].size, fbin);
                fclose(fbin);
            }
            free(g_cmd_hands[i].data);
        }
        fclose(fc);
    }
    free(top_ids);

    // 3. Registries (texture & sampler)
    char treg_path[512], sreg_path[512];
    snprintf(treg_path, sizeof treg_path, "%s/treg.bin", dir);
    snprintf(sreg_path, sizeof sreg_path, "%s/sreg.bin", dir);
    FILE *ft = fopen(treg_path, "wb"), *fsreg = fopen(sreg_path, "wb");
    if (ft && fsreg) {
        vkb_registries_dump(ft, fsreg);
        fclose(ft);
        fclose(fsreg);
    } else {
        if (ft) fclose(ft);
        if (fsreg) fclose(fsreg);
    }

    // 4. UCAP (Uniform Buffer Snapshot at submit boundary)
    char ucap_path[512];
    snprintf(ucap_path, sizeof ucap_path, "%s/ucap.bin", dir);
    FILE *fu = fopen(ucap_path, "wb");
    if (fu) {
        vkb_ucap_dump_save(fu);
        fclose(fu);
    }

    // 5. Images / textures (VRAM render targets + metadata)
    vkb_images_dump(dir);

    // 6. Pinned textures (host heap tex_t pointers referenced by OP_SET_RT)
    char pin_path[512];
    snprintf(pin_path, sizeof pin_path, "%s/pinned_textures.bin", dir);
    FILE *fpin = fopen(pin_path, "wb");
    if (fpin) {
        void hle_nvn_pin_dump(FILE *f);
        hle_nvn_pin_dump(fpin);
        fclose(fpin);
    }

    // 7. Self-contained SPIR-V shaders + reflection JSONs
    char shader_dir[512];
    snprintf(shader_dir, sizeof shader_dir, "%s/shaders", dir);
    vkb_shader_dump_all(shader_dir);

    LOG("[totk-gfx] [capture] Submission captured (%d top handles, %d total recordings, %d slabs)",
        n, g_ncmd_hands, nslabs);
}

void vkb_capture_present(uint64_t n, const tex_t *t, const int crop[4]) {
    if (g_cap_frame <= 0 || n != (uint64_t)g_cap_frame) return;
    const char *dir = vkb_capture_dir();

    char pmeta[512];
    snprintf(pmeta, sizeof pmeta, "%s/present.meta", dir);
    FILE *fp = fopen(pmeta, "w");
    if (fp) {
        uint64_t serial = t ? t->serial : 0;
        int c[4] = {crop ? crop[0] : 0, crop ? crop[1] : 0, crop ? crop[2] : 0, crop ? crop[3] : 0};
        fprintf(fp, "serial=%llu\ncrop=%d,%d,%d,%d\n", (unsigned long long)serial, c[0], c[1], c[2], c[3]);
        fclose(fp);
    }
    LOG("[totk-gfx] [capture] Frame %llu present captured. Complete frame is ready in %s!", (unsigned long long)n, dir);
    if (getenv("TOTK_FRAME_CAPTURE_EXIT")) {
        fflush(NULL);
        _Exit(0);
    }
}
