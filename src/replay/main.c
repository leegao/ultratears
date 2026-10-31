#include "replay.h"
#include <stdio.h>
#include <stdlib.h>
#include <execinfo.h>
#include <signal.h>
#include <unistd.h>
#include <SDL3/SDL.h>
#include <SDL3/SDL_vulkan.h>
#include "../vk/vk.h"
#include "../vk/present.h"

static void sig_handler(int sig, siginfo_t *si, void *u) {
    (void)u;
    fprintf(stderr, "CRASH sig=%d addr=%p\n", sig, si->si_addr);
    void *bt[64];
    int n = backtrace(bt, 64);
    char **syms = backtrace_symbols(bt, n);
    for (int i = 0; i < n; i++) fprintf(stderr, "  [%d] %s\n", i, syms[i]);
    _exit(1);
}

int main(int argc, char **argv) {
    setvbuf(stdout, NULL, _IONBF, 0);
    setvbuf(stderr, NULL, _IONBF, 0);
    struct sigaction sa = {.sa_sigaction = sig_handler, .sa_flags = SA_SIGINFO};
    sigaction(SIGSEGV, &sa, NULL);
    sigaction(SIGABRT, &sa, NULL);

    replay_opts opts;
    if (!replay_parse_args(argc, argv, &opts)) {
        return 1;
    }

    if (opts.compact_out) {
        return replay_compact_frame(&opts) ? 0 : 1;
    }

    printf("=== UltraTears Standalone Frame Replayer ===\n");

    printf("Loading frame: %s\n", opts.frame_dir);
    if (opts.shader_dir) {
        printf("Shader override dir: %s\n", opts.shader_dir);
    }

    SDL_Window *window = NULL;
    if (!opts.headless && getenv("DISPLAY")) {
        if (SDL_Init(SDL_INIT_VIDEO)) {
            window = SDL_CreateWindow("UltraTears Frame Replayer", 1280, 720,
                                      SDL_WINDOW_VULKAN | SDL_WINDOW_RESIZABLE);
        }
    }

    if (!vk_init(window)) {
        fprintf(stderr, "Failed to initialize Vulkan context.\n");
        return 1;
    }
    printf("Vulkan initialized successfully.\n");

    replay_state st;
    if (!replay_load_frame(&opts, &st)) {
        fprintf(stderr, "Failed to load captured frame from %s\n", opts.frame_dir);
        return 1;
    }

    replay_run_benchmark(&opts, &st);
    replay_cleanup(&st);

    return 0;
}

