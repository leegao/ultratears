#include "replay.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/stat.h>

void replay_print_usage(const char *prog) {
    fprintf(stderr, "Usage: %s <frame_dir> [options]\n", prog);
    fprintf(stderr, "Options:\n");
    fprintf(stderr, "  --bench <N>            Run N benchmark iterations (default: 1)\n");
    fprintf(stderr, "  --passprof             Enable per-pass GPU timestamp statistical profiling (default)\n");
    fprintf(stderr, "  --no-passprof          Disable per-pass GPU timestamp profiling\n");
    fprintf(stderr, "  --shader-dir <dir>     Override directory for SPIR-V shaders\n");
    fprintf(stderr, "  --shot <file.bmp>      Save the presented frame to a 32-bit BMP image\n");
    fprintf(stderr, "  --headless             Run without opening an SDL window\n");
    fprintf(stderr, "  --compact <out_dir>    Transitively compact frame memory & write to out_dir\n");
    fprintf(stderr, "  --compact-passes <N>   Keep only the first N render passes during compaction\n");
    fprintf(stderr, "  --fake-textures        Strip textures / generate texture-less copyright-free bundle\n");
    fprintf(stderr, "  --help, -h             Display this help message\n");
}


int replay_parse_args(int argc, char **argv, replay_opts *opts) {
    memset(opts, 0, sizeof *opts);
    opts->bench_count = 1;
    opts->passprof = 1;

    if (argc < 2 || !strcmp(argv[1], "--help") || !strcmp(argv[1], "-h")) {
        replay_print_usage(argv[0]);
        return 0;
    }

    opts->frame_dir = argv[1];

    for (int i = 2; i < argc; i++) {
        if (!strcmp(argv[i], "--bench") && i + 1 < argc) {
            opts->bench_count = atoi(argv[++i]);
            if (opts->bench_count < 1) opts->bench_count = 1;
        } else if (!strcmp(argv[i], "--passprof")) {
            opts->passprof = 1;
        } else if (!strcmp(argv[i], "--no-passprof")) {
            opts->passprof = 0;
        } else if (!strcmp(argv[i], "--shader-dir") && i + 1 < argc) {
            opts->shader_dir = argv[++i];
        } else if (!strcmp(argv[i], "--shot") && i + 1 < argc) {
            opts->shot_bmp = argv[++i];
        } else if (!strcmp(argv[i], "--headless")) {
            opts->headless = 1;
        } else if (!strcmp(argv[i], "--compact") && i + 1 < argc) {
            opts->compact_out = argv[++i];
        } else if (!strcmp(argv[i], "--compact-passes") && i + 1 < argc) {
            opts->compact_passes = atoi(argv[++i]);
        } else if (!strcmp(argv[i], "--fake-textures")) {
            opts->fake_textures = 1;
        } else if (!strcmp(argv[i], "--help") || !strcmp(argv[i], "-h")) {

            replay_print_usage(argv[0]);
            return 0;
        } else {
            fprintf(stderr, "Unknown option: %s\n", argv[i]);
            replay_print_usage(argv[0]);
            return 0;
        }
    }

    // Configure shader directory: explicit --shader-dir takes priority,
    // followed by <frame_dir>/shaders if present.
    if (opts->shader_dir) {
        vkb_shader_set_dir(opts->shader_dir);
        setenv("TOTK_SHADER_DIR", opts->shader_dir, 1);
    } else {
        char bundled[512];
        snprintf(bundled, sizeof bundled, "%s/shaders", opts->frame_dir);
        struct stat st;
        if (stat(bundled, &st) == 0 && S_ISDIR(st.st_mode)) {
            vkb_shader_set_dir(bundled);
        }
    }

    // Disable background prewarming of unrelated shaders from used.txt during isolated frame benchmarks
    setenv("TOTK_SHADER_PREWARM", "0", 0);
    setenv("TOTK_BC7", "0", 0);

    if (opts->passprof) {
        setenv("TOTK_GPU_PASSPROF", "collect", 1);
    }


    return 1;
}
