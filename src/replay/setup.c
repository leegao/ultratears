#include "replay.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>

#define COPY_MAGIC 0x59504f43444d43ull /* "CMDCOPY" */
typedef struct {
    uint64_t magic;
    _Atomic uint64_t used_at;
    uint64_t made_at;
    uint32_t body_bytes, last_size;
} copy_prefix;

typedef struct {
    uintptr_t old_addr;
    uint8_t *new_ptr;
    size_t size;
} loaded_handle;

typedef struct {
    uint64_t old_ptr;
    tex_t *new_ptr;
} pin_map_entry;

static pin_map_entry *g_pin_map = NULL;
static size_t g_pin_count = 0;

static const tex_t *map_tex_pin(const tex_t *old_ptr, const uintptr_t *slab_los, const uintptr_t *slab_his, int nslabs) {
    if (!old_ptr) return NULL;
    uintptr_t k = (uintptr_t)old_ptr;
    for (size_t i = 0; i < g_pin_count; i++) {
        if (g_pin_map[i].old_ptr == k) return g_pin_map[i].new_ptr;
    }
    for (int s = 0; s < nslabs; s++) {
        if (k >= slab_los[s] && k < slab_his[s]) return old_ptr;
    }
    return NULL;
}

static int load_slab_file(FILE *fb, uint8_t *base, size_t expected_sz) {
    uint64_t magic = 0;
    if (fread(&magic, sizeof magic, 1, fb) != 1) return 0;

    if (magic == SLAB_SPARSE_MAGIC) {
        rewind(fb);
        slab_sparse_hdr hdr;
        if (fread(&hdr, sizeof hdr, 1, fb) != 1) return 0;
        for (uint32_t i = 0; i < hdr.non_zero_blocks; i++) {
            uint32_t blk_idx = 0;
            if (fread(&blk_idx, sizeof blk_idx, 1, fb) != 1) return 0;
            size_t off = (size_t)blk_idx * hdr.block_size;
            if (off >= expected_sz) return 0;
            size_t cur = (off + hdr.block_size <= expected_sz) ? hdr.block_size : (expected_sz - off);
            if (fread(base + off, 1, cur, fb) != cur) return 0;
        }
        return 1;
    } else {
        rewind(fb);
        void *p = mmap(base, expected_sz, PROT_READ | PROT_WRITE,
                       MAP_PRIVATE | MAP_FIXED, fileno(fb), 0);
        if (p != MAP_FAILED) return 1;
        size_t nread = fread(base, 1, expected_sz, fb);
        return nread == expected_sz;
    }
}

static int load_slabs(const char *frame_dir, replay_state *st) {
    char slabs_meta[512];
    snprintf(slabs_meta, sizeof slabs_meta, "%s/slabs.txt", frame_dir);
    FILE *fs = fopen(slabs_meta, "r");
    if (!fs) {
        fprintf(stderr, "Failed to open %s\n", slabs_meta);
        return 0;
    }

    int nslabs = 0;
    if (fscanf(fs, "%d", &nslabs) != 1 || nslabs <= 0) {
        fclose(fs);
        fprintf(stderr, "Invalid slab count in %s\n", slabs_meta);
        return 0;
    }

    st->nslabs = nslabs;
    st->slab_los = malloc(sizeof(uintptr_t) * (size_t)nslabs);
    st->slab_his = malloc(sizeof(uintptr_t) * (size_t)nslabs);

    for (int i = 0; i < nslabs; i++) {
        int idx = 0;
        unsigned long long lo = 0, hi = 0;
        size_t sz = 0;
        char fname[128];
        if (fscanf(fs, "%d 0x%llx 0x%llx %zu %127s", &idx, &lo, &hi, &sz, fname) != 5) {
            fprintf(stderr, "Malformed line %d in slabs.txt\n", i);
            fclose(fs);
            return 0;
        }
        st->slab_los[i] = (uintptr_t)lo;
        st->slab_his[i] = (uintptr_t)hi;

        void *mapped = mmap((void *)(uintptr_t)lo, sz, PROT_READ | PROT_WRITE,
                            MAP_PRIVATE | MAP_ANONYMOUS | MAP_FIXED, -1, 0);
        if (mapped == MAP_FAILED || (uintptr_t)mapped != (uintptr_t)lo) {
            fprintf(stderr, "Failed to mmap slab %d at 0x%llx (size %zu)\n", idx, lo, sz);
            fclose(fs);
            return 0;
        }

        char slab_bin[512];
        snprintf(slab_bin, sizeof slab_bin, "%s/slabs/%s", frame_dir, fname);
        FILE *fb = fopen(slab_bin, "rb");
        if (!fb) {
            fprintf(stderr, "Failed to open slab binary %s\n", slab_bin);
            fclose(fs);
            return 0;
        }
        load_slab_file(fb, (uint8_t *)mapped, sz);
        fclose(fb);

        mtl_pool_add((const void *)(uintptr_t)lo, sz);
        printf("  Slab %d mapped at 0x%llx..0x%llx (%.1f MiB)\n", idx, lo, hi, sz / 1048576.0);
    }
    fclose(fs);
    return 1;
}

static void load_registries(const char *frame_dir) {
    char treg_path[512], sreg_path[512];
    snprintf(treg_path, sizeof treg_path, "%s/treg.bin", frame_dir);
    snprintf(sreg_path, sizeof sreg_path, "%s/sreg.bin", frame_dir);
    FILE *ft = fopen(treg_path, "rb"), *fsreg = fopen(sreg_path, "rb");
    if (ft || fsreg) {
        vkb_registries_load(ft, fsreg);
        if (ft) fclose(ft);
        if (fsreg) fclose(fsreg);
        printf("Registries (treg & sreg) restored.\n");
    }
}

static void load_pinned_textures(const char *frame_dir) {
    char pin_path[512];
    snprintf(pin_path, sizeof pin_path, "%s/pinned_textures.bin", frame_dir);
    FILE *fpin = fopen(pin_path, "rb");
    if (!fpin) return;

    uint32_t pcount = 0;
    if (fread(&pcount, sizeof pcount, 1, fpin) == 1 && pcount > 0) {
        g_pin_map = malloc(sizeof(pin_map_entry) * pcount);
        g_pin_count = pcount;
        for (uint32_t i = 0; i < pcount; i++) {
            uint64_t old_p = 0;
            tex_t *nt = malloc(sizeof(tex_t));
            if (fread(&old_p, sizeof old_p, 1, fpin) != 1 ||
                fread(nt, sizeof(tex_t), 1, fpin) != 1) {
                free(nt);
                g_pin_count = i;
                break;
            }
            g_pin_map[i].old_ptr = old_p;
            g_pin_map[i].new_ptr = nt;
            vkb_image_of(nt);
        }
        printf("Loaded %zu pinned host textures.\n", g_pin_count);
    }
    fclose(fpin);
}

static int load_commands(const char *frame_dir, replay_state *st) {
    char cman[512];
    snprintf(cman, sizeof cman, "%s/commands/manifest.txt", frame_dir);
    FILE *fc = fopen(cman, "r");
    if (!fc) {
        fprintf(stderr, "Failed to open %s\n", cman);
        return 0;
    }

    int top_count = 0, total_handles = 0;
    if (fscanf(fc, "top_count=%d total_handles=%d\n", &top_count, &total_handles) != 2) {
        fclose(fc);
        fprintf(stderr, "Malformed header in %s\n", cman);
        return 0;
    }

    uint32_t *top_ids = malloc(sizeof(uint32_t) * (top_count ? (size_t)top_count : 1));
    for (int i = 0; i < top_count; i++) {
        int idx = 0;
        uint32_t id = 0;
        if (fscanf(fc, "top %d %u\n", &idx, &id) != 2) break;
        top_ids[i] = id;
    }

    loaded_handle *lh = calloc((size_t)(total_handles ? total_handles : 1), sizeof(loaded_handle));
    for (int i = 0; i < total_handles; i++) {
        int id = 0;
        unsigned long long old_addr = 0;
        size_t sz = 0;
        char cfile[128];
        if (fscanf(fc, "handle %d 0x%llx %zu %127s\n", &id, &old_addr, &sz, cfile) != 4) break;
        lh[id].old_addr = (uintptr_t)old_addr;
        lh[id].size = sz;

        uint8_t *raw = malloc(sizeof(copy_prefix) + sz + 16);
        memset(raw, 0, sizeof(copy_prefix) + sz + 16);
        copy_prefix *cp = (copy_prefix *)raw;
        cp->magic = COPY_MAGIC;
        cp->body_bytes = (uint32_t)sz;
        lh[id].new_ptr = raw + sizeof(copy_prefix);

        char cpath[512];
        snprintf(cpath, sizeof cpath, "%s/commands/%s", frame_dir, cfile);
        FILE *fbin = fopen(cpath, "rb");
        if (fbin) {
            if (fread(lh[id].new_ptr, 1, sz, fbin) != sz) {
                fprintf(stderr, "Warning: short read on %s\n", cpath);
            }
            fclose(fbin);
        }
    }
    fclose(fc);

    // Patch OP_CALL child command pointers and OP_SET_RT pinned texture pointers
    for (int i = 0; i < total_handles; i++) {
        uint8_t *p = lh[i].new_ptr;
        size_t off = 0;
        while (off < lh[i].size) {
            op_hdr h;
            memcpy(&h, p + off, sizeof h);
            if (h.size < 8 || (h.size & 7)) break;
            if (h.op == OP_CALL) {
                uintptr_t child_old = 0;
                memcpy(&child_old, p + off + 8, 8);
                for (int j = 0; j < total_handles; j++) {
                    if (lh[j].old_addr == child_old) {
                        uintptr_t child_new = (uintptr_t)lh[j].new_ptr;
                        memcpy(p + off + 8, &child_new, 8);
                        break;
                    }
                }
            } else if (h.op == OP_SET_RT) {
                p_set_rt *rt = (p_set_rt *)(p + off + 8);
                for (int c = 0; c < rt->n && c < 8; c++) {
                    rt->color[c] = map_tex_pin(rt->color[c], st->slab_los, st->slab_his, st->nslabs);
                }
                rt->depth = map_tex_pin(rt->depth, st->slab_los, st->slab_his, st->nslabs);
            }
            off += h.size;
            if (h.op == OP_END) break;
        }
    }

    st->top_handles = malloc(sizeof(uint64_t) * (top_count ? (size_t)top_count : 1));
    for (int i = 0; i < top_count; i++) {
        st->top_handles[i] = (uint64_t)(uintptr_t)lh[top_ids[i]].new_ptr;
    }
    st->num_top_handles = (uint32_t)top_count;
    st->total_handles = total_handles;

    free(top_ids);
    free(lh);
    printf("Command buffer loaded: %u top handles (%d total recordings loaded & patched)\n",
           st->num_top_handles, st->total_handles);
    return 1;
}

int replay_load_frame(const replay_opts *opts, replay_state *st) {
    memset(st, 0, sizeof *st);

    if (!load_slabs(opts->frame_dir, st)) return 0;

    load_registries(opts->frame_dir);

    vkb_images_load(opts->frame_dir);
    printf("Active GPU images restored.\n");

    load_pinned_textures(opts->frame_dir);

    if (!load_commands(opts->frame_dir, st)) return 0;

    // Load UCAP
    char ucap_path[512];
    snprintf(ucap_path, sizeof ucap_path, "%s/ucap.bin", opts->frame_dir);
    FILE *fu = fopen(ucap_path, "rb");
    if (fu) {
        st->ucap = vkb_ucap_load_read(fu);
        fclose(fu);
        printf("Uniform buffer snapshots loaded.\n");
    }

    // Load Present Metadata
    char pmeta[512];
    snprintf(pmeta, sizeof pmeta, "%s/present.meta", opts->frame_dir);
    FILE *fp = fopen(pmeta, "r");
    uint64_t target_serial = 0;
    st->crop[0] = 0;
    st->crop[1] = 0;
    st->crop[2] = 1920;
    st->crop[3] = 1080;
    if (fp) {
        if (fscanf(fp, "serial=%llu\ncrop=%d,%d,%d,%d\n", (unsigned long long *)&target_serial,
                   &st->crop[0], &st->crop[1], &st->crop[2], &st->crop[3]) != 5) {
            // Keep default crop if partial
        }
        fclose(fp);
    }
    st->target_tex = (tex_t){
        .magic = MAGIC('T', 'E', 'X', '_'),
        .serial = target_serial
    };
    printf("Presentation target serial: %llu, crop: %d,%d,%d,%d\n",
           (unsigned long long)target_serial, st->crop[0], st->crop[1], st->crop[2], st->crop[3]);

    return 1;
}

void replay_cleanup(replay_state *st) {
    free(st->slab_los);
    free(st->slab_his);
    free(st->top_handles);
    for (size_t i = 0; i < g_pin_count; i++) {
        free(g_pin_map[i].new_ptr);
    }
    free(g_pin_map);
    g_pin_map = NULL;
    g_pin_count = 0;
}
