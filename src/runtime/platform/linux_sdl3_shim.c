/* Linux SDL3 runtime bridge & headless fallback.
 *
 * All symbols are marked __attribute__((weak)) so linking directly against a
 * system libSDL3.so overrides them automatically. When libSDL3.so is not
 * present at link time, this translation unit dynamically loads libSDL3.so.0
 * at runtime if available, or falls back to libSDL2-2.0.so.0 / headless stubs.
 */
#if defined(__linux__)

#define _GNU_SOURCE
#include <SDL3/SDL.h>
#include <SDL3/SDL_vulkan.h>
#include <dlfcn.h>
#include <pthread.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define WEAK __attribute__((weak))

static void *g_sdl3_lib = NULL;
static void *g_sdl2_lib = NULL;
static int g_sdl_probed = 0;
static Uint32 g_init_flags = 0;
static const char *g_last_err = "SDL3 not initialized (headless fallback)";

static void probe_sdl(void) {
    if (g_sdl_probed) return;
    g_sdl_probed = 1;
    g_sdl3_lib = dlopen("libSDL3.so.0", RTLD_LAZY | RTLD_LOCAL);
    if (!g_sdl3_lib) g_sdl3_lib = dlopen("libSDL3.so", RTLD_LAZY | RTLD_LOCAL);
    if (!g_sdl3_lib) {
        g_sdl2_lib = dlopen("libSDL2-2.0.so.0", RTLD_LAZY | RTLD_LOCAL);
    }
    if (getenv("TOTK_SDL_DEBUG") || getenv("TOTK_GFX_DEBUG")) {
        if (g_sdl3_lib) fprintf(stderr, "[totk-sdl] loaded libSDL3\n");
        else if (g_sdl2_lib) fprintf(stderr, "[totk-sdl] loaded fallback libSDL2\n");
        else fprintf(stderr, "[totk-sdl] neither libSDL3 nor libSDL2 found (running headless fallback)\n");
    }
}

#define SDL3_SYM(name) (g_sdl3_lib ? dlsym(g_sdl3_lib, #name) : NULL)
#define SDL2_SYM(name) (g_sdl2_lib ? dlsym(g_sdl2_lib, #name) : NULL)

WEAK void SDL_SetMainReady(void) {
    probe_sdl();
    void (*fn)(void) = (void (*)(void))SDL3_SYM(SDL_SetMainReady);
    if (!fn) fn = (void (*)(void))SDL2_SYM(SDL_SetMainReady);
    if (fn) fn();
}

WEAK bool SDL_SetHint(const char *name, const char *value) {
    probe_sdl();
    bool (*fn3)(const char *, const char *) = (bool (*)(const char *, const char *))SDL3_SYM(SDL_SetHint);
    if (fn3) return fn3(name, value);
    int (*fn2)(const char *, const char *) = (int (*)(const char *, const char *))SDL2_SYM(SDL_SetHint);
    if (fn2) return fn2(name, value) != 0;
    return true;
}

WEAK const char *SDL_GetError(void) {
    probe_sdl();
    const char *(*fn)(void) = (const char *(*)(void))SDL3_SYM(SDL_GetError);
    if (!fn) fn = (const char *(*)(void))SDL2_SYM(SDL_GetError);
    if (fn) {
        const char *s = fn();
        if (s && *s) return s;
    }
    return g_last_err;
}

WEAK bool SDL_Init(Uint32 flags) {
    probe_sdl();
    bool (*fn3)(Uint32) = (bool (*)(Uint32))SDL3_SYM(SDL_Init);
    if (fn3) {
        bool ok = fn3(flags);
        if (ok) g_init_flags |= flags;
        return ok;
    }
    int (*fn2)(Uint32) = (int (*)(Uint32))SDL2_SYM(SDL_Init);
    if (fn2) {
        if (!getenv("DISPLAY") && !getenv("WAYLAND_DISPLAY")) {
            g_last_err = "No DISPLAY or WAYLAND_DISPLAY set (running headless)";
            return false;
        }
        int r = fn2(flags);
        if (r == 0) {
            g_init_flags |= flags;
            return true;
        }
        return false;
    }
    g_last_err = "Neither libSDL3.so.0 nor Display available; running headless";
    return false;
}

WEAK Uint32 SDL_WasInit(Uint32 flags) {
    probe_sdl();
    Uint32 (*fn)(Uint32) = (Uint32 (*)(Uint32))SDL3_SYM(SDL_WasInit);
    if (fn) return fn(flags);
    return g_init_flags & flags;
}

WEAK void SDL_free(void *mem) {
    probe_sdl();
    void (*fn)(void *) = (void (*)(void *))SDL3_SYM(SDL_free);
    if (!fn) fn = (void (*)(void *))SDL2_SYM(SDL_free);
    if (fn) fn(mem);
    else free(mem);
}

WEAK SDL_Mutex *SDL_CreateMutex(void) {
    pthread_mutex_t *m = (pthread_mutex_t *)calloc(1, sizeof(pthread_mutex_t));
    if (m) pthread_mutex_init(m, NULL);
    return (SDL_Mutex *)m;
}

WEAK void SDL_LockMutex(SDL_Mutex *mutex) {
    if (mutex) pthread_mutex_lock((pthread_mutex_t *)mutex);
}

WEAK void SDL_UnlockMutex(SDL_Mutex *mutex) {
    if (mutex) pthread_mutex_unlock((pthread_mutex_t *)mutex);
}

WEAK SDL_Window *SDL_CreateWindow(const char *title, int w, int h, SDL_WindowFlags flags) {
    probe_sdl();
    SDL_Window *(*fn3)(const char *, int, int, SDL_WindowFlags) =
        (SDL_Window *(*)(const char *, int, int, SDL_WindowFlags))SDL3_SYM(SDL_CreateWindow);
    if (fn3) return fn3(title, w, h, flags);
    SDL_Window *(*fn2)(const char *, int, int, int, int, Uint32) =
        (SDL_Window *(*)(const char *, int, int, int, int, Uint32))SDL2_SYM(SDL_CreateWindow);
    if (fn2) {
        Uint32 sdl2_flags = 0x10000000u | 0x00000020u;
        return fn2(title, 0x1FFF0000, 0x1FFF0000, w, h, sdl2_flags);
    }
    return NULL;
}

WEAK SDL_WindowFlags SDL_GetWindowFlags(SDL_Window *window) {
    probe_sdl();
    SDL_WindowFlags (*fn3)(SDL_Window *) = (SDL_WindowFlags (*)(SDL_Window *))SDL3_SYM(SDL_GetWindowFlags);
    if (fn3) return fn3(window);
    Uint32 (*fn2)(SDL_Window *) = (Uint32 (*)(SDL_Window *))SDL2_SYM(SDL_GetWindowFlags);
    if (fn2 && window) return (SDL_WindowFlags)fn2(window);
    return 0;
}

WEAK bool SDL_SetWindowFullscreen(SDL_Window *window, bool fullscreen) {
    probe_sdl();
    bool (*fn3)(SDL_Window *, bool) = (bool (*)(SDL_Window *, bool))SDL3_SYM(SDL_SetWindowFullscreen);
    if (fn3) return fn3(window, fullscreen);
    int (*fn2)(SDL_Window *, Uint32) = (int (*)(SDL_Window *, Uint32))SDL2_SYM(SDL_SetWindowFullscreen);
    if (fn2 && window) return fn2(window, fullscreen ? 0x1001u : 0u) == 0;
    return false;
}

WEAK bool SDL_SetWindowTitle(SDL_Window *window, const char *title) {
    probe_sdl();
    bool (*fn3)(SDL_Window *, const char *) = (bool (*)(SDL_Window *, const char *))SDL3_SYM(SDL_SetWindowTitle);
    if (fn3) return fn3(window, title);
    void (*fn2)(SDL_Window *, const char *) = (void (*)(SDL_Window *, const char *))SDL2_SYM(SDL_SetWindowTitle);
    if (fn2 && window) { fn2(window, title); return true; }
    return false;
}

WEAK bool SDL_GetWindowSizeInPixels(SDL_Window *window, int *w, int *h) {
    probe_sdl();
    bool (*fn3)(SDL_Window *, int *, int *) = (bool (*)(SDL_Window *, int *, int *))SDL3_SYM(SDL_GetWindowSizeInPixels);
    if (fn3) return fn3(window, w, h);
    void (*fn2)(SDL_Window *, int *, int *) = (void (*)(SDL_Window *, int *, int *))SDL2_SYM(SDL_Vulkan_GetDrawableSize);
    if (!fn2) fn2 = (void (*)(SDL_Window *, int *, int *))SDL2_SYM(SDL_GetWindowSize);
    if (fn2 && window) { fn2(window, w, h); return true; }
    if (w) *w = 1280;
    if (h) *h = 720;
    return false;
}

WEAK bool SDL_ShowSimpleMessageBox(Uint32 flags, const char *title, const char *message, SDL_Window *window) {
    probe_sdl();
    bool (*fn3)(Uint32, const char *, const char *, SDL_Window *) =
        (bool (*)(Uint32, const char *, const char *, SDL_Window *))SDL3_SYM(SDL_ShowSimpleMessageBox);
    if (fn3) return fn3(flags, title, message, window);
    fprintf(stderr, "[%s] %s\n", title ? title : "UltraTears", message ? message : "");
    return true;
}

WEAK bool SDL_WaitEventTimeout(SDL_Event *event, Sint32 timeoutMS) {
    probe_sdl();
    bool (*fn3)(SDL_Event *, Sint32) = (bool (*)(SDL_Event *, Sint32))SDL3_SYM(SDL_WaitEventTimeout);
    if (fn3) return fn3(event, timeoutMS);
    return false;
}

WEAK bool SDL_PollEvent(SDL_Event *event) {
    probe_sdl();
    bool (*fn3)(SDL_Event *) = (bool (*)(SDL_Event *))SDL3_SYM(SDL_PollEvent);
    if (fn3) return fn3(event);
    return false;
}

WEAK SDL_Gamepad *SDL_OpenGamepad(SDL_JoystickID instance_id) {
    probe_sdl();
    SDL_Gamepad *(*fn3)(SDL_JoystickID) = (SDL_Gamepad *(*)(SDL_JoystickID))SDL3_SYM(SDL_OpenGamepad);
    return fn3 ? fn3(instance_id) : NULL;
}

WEAK void SDL_CloseGamepad(SDL_Gamepad *gamepad) {
    probe_sdl();
    void (*fn3)(SDL_Gamepad *) = (void (*)(SDL_Gamepad *))SDL3_SYM(SDL_CloseGamepad);
    if (fn3 && gamepad) fn3(gamepad);
}

WEAK SDL_JoystickID SDL_GetGamepadID(SDL_Gamepad *gamepad) {
    probe_sdl();
    SDL_JoystickID (*fn3)(SDL_Gamepad *) = (SDL_JoystickID (*)(SDL_Gamepad *))SDL3_SYM(SDL_GetGamepadID);
    return (fn3 && gamepad) ? fn3(gamepad) : 0;
}

WEAK SDL_JoystickID *SDL_GetGamepads(int *count) {
    probe_sdl();
    SDL_JoystickID *(*fn3)(int *) = (SDL_JoystickID *(*)(int *))SDL3_SYM(SDL_GetGamepads);
    if (fn3) return fn3(count);
    if (count) *count = 0;
    return NULL;
}

WEAK const char *SDL_GetGamepadName(SDL_Gamepad *gamepad) {
    probe_sdl();
    const char *(*fn3)(SDL_Gamepad *) = (const char *(*)(SDL_Gamepad *))SDL3_SYM(SDL_GetGamepadName);
    return (fn3 && gamepad) ? fn3(gamepad) : "Linux Gamepad";
}

WEAK bool SDL_GetGamepadButton(SDL_Gamepad *gamepad, SDL_GamepadButton button) {
    probe_sdl();
    bool (*fn3)(SDL_Gamepad *, SDL_GamepadButton) = (bool (*)(SDL_Gamepad *, SDL_GamepadButton))SDL3_SYM(SDL_GetGamepadButton);
    return (fn3 && gamepad) ? fn3(gamepad, button) : false;
}

WEAK Sint16 SDL_GetGamepadAxis(SDL_Gamepad *gamepad, SDL_GamepadAxis axis) {
    probe_sdl();
    Sint16 (*fn3)(SDL_Gamepad *, SDL_GamepadAxis) = (Sint16 (*)(SDL_Gamepad *, SDL_GamepadAxis))SDL3_SYM(SDL_GetGamepadAxis);
    return (fn3 && gamepad) ? fn3(gamepad, axis) : 0;
}

WEAK bool SDL_RumbleGamepad(SDL_Gamepad *gamepad, Uint16 low_frequency_rumble, Uint16 high_frequency_rumble, Uint32 duration_ms) {
    probe_sdl();
    bool (*fn3)(SDL_Gamepad *, Uint16, Uint16, Uint32) =
        (bool (*)(SDL_Gamepad *, Uint16, Uint16, Uint32))SDL3_SYM(SDL_RumbleGamepad);
    return (fn3 && gamepad) ? fn3(gamepad, low_frequency_rumble, high_frequency_rumble, duration_ms) : false;
}

WEAK bool SDL_GamepadHasSensor(SDL_Gamepad *gamepad, SDL_SensorType type) {
    probe_sdl();
    bool (*fn3)(SDL_Gamepad *, SDL_SensorType) = (bool (*)(SDL_Gamepad *, SDL_SensorType))SDL3_SYM(SDL_GamepadHasSensor);
    return (fn3 && gamepad) ? fn3(gamepad, type) : false;
}

WEAK bool SDL_SetGamepadSensorEnabled(SDL_Gamepad *gamepad, SDL_SensorType type, bool enabled) {
    probe_sdl();
    bool (*fn3)(SDL_Gamepad *, SDL_SensorType, bool) =
        (bool (*)(SDL_Gamepad *, SDL_SensorType, bool))SDL3_SYM(SDL_SetGamepadSensorEnabled);
    return (fn3 && gamepad) ? fn3(gamepad, type, enabled) : false;
}

WEAK float SDL_GetGamepadSensorDataRate(SDL_Gamepad *gamepad, SDL_SensorType type) {
    probe_sdl();
    float (*fn3)(SDL_Gamepad *, SDL_SensorType) = (float (*)(SDL_Gamepad *, SDL_SensorType))SDL3_SYM(SDL_GetGamepadSensorDataRate);
    return (fn3 && gamepad) ? fn3(gamepad, type) : 0.0f;
}

WEAK SDL_AudioStream *SDL_OpenAudioDeviceStream(SDL_AudioDeviceID devid, const SDL_AudioSpec *spec, SDL_AudioStreamCallback callback, void *userdata) {
    probe_sdl();
    SDL_AudioStream *(*fn3)(SDL_AudioDeviceID, const SDL_AudioSpec *, SDL_AudioStreamCallback, void *) =
        (SDL_AudioStream *(*)(SDL_AudioDeviceID, const SDL_AudioSpec *, SDL_AudioStreamCallback, void *))SDL3_SYM(SDL_OpenAudioDeviceStream);
    return fn3 ? fn3(devid, spec, callback, userdata) : NULL;
}

WEAK bool SDL_PutAudioStreamData(SDL_AudioStream *stream, const void *buf, int len) {
    probe_sdl();
    bool (*fn3)(SDL_AudioStream *, const void *, int) =
        (bool (*)(SDL_AudioStream *, const void *, int))SDL3_SYM(SDL_PutAudioStreamData);
    return (fn3 && stream) ? fn3(stream, buf, len) : false;
}

WEAK bool SDL_ResumeAudioStreamDevice(SDL_AudioStream *stream) {
    probe_sdl();
    bool (*fn3)(SDL_AudioStream *) = (bool (*)(SDL_AudioStream *))SDL3_SYM(SDL_ResumeAudioStreamDevice);
    return (fn3 && stream) ? fn3(stream) : false;
}

WEAK SDL_AudioDeviceID SDL_GetAudioStreamDevice(SDL_AudioStream *stream) {
    probe_sdl();
    SDL_AudioDeviceID (*fn3)(SDL_AudioStream *) = (SDL_AudioDeviceID (*)(SDL_AudioStream *))SDL3_SYM(SDL_GetAudioStreamDevice);
    return (fn3 && stream) ? fn3(stream) : 0;
}

WEAK const char *SDL_GetAudioDeviceName(SDL_AudioDeviceID devid) {
    probe_sdl();
    const char *(*fn3)(SDL_AudioDeviceID) = (const char *(*)(SDL_AudioDeviceID))SDL3_SYM(SDL_GetAudioDeviceName);
    return fn3 ? fn3(devid) : "Linux Audio Device";
}

WEAK void SDL_DestroyAudioStream(SDL_AudioStream *stream) {
    probe_sdl();
    void (*fn3)(SDL_AudioStream *) = (void (*)(SDL_AudioStream *))SDL3_SYM(SDL_DestroyAudioStream);
    if (fn3 && stream) fn3(stream);
}

WEAK SDL_FunctionPointer SDL_Vulkan_GetVkGetInstanceProcAddr(void) {
    probe_sdl();
    SDL_FunctionPointer (*fn3)(void) = (SDL_FunctionPointer (*)(void))SDL3_SYM(SDL_Vulkan_GetVkGetInstanceProcAddr);
    if (!fn3) fn3 = (SDL_FunctionPointer (*)(void))SDL2_SYM(SDL_Vulkan_GetVkGetInstanceProcAddr);
    if (fn3) return fn3();
    void *vk = dlopen("libvulkan.so.1", RTLD_NOW | RTLD_LOCAL);
    if (vk) return (SDL_FunctionPointer)dlsym(vk, "vkGetInstanceProcAddr");
    return NULL;
}

WEAK const char * const *SDL_Vulkan_GetInstanceExtensions(Uint32 *count) {
    probe_sdl();
    const char * const *(*fn3)(Uint32 *) = (const char * const *(*)(Uint32 *))SDL3_SYM(SDL_Vulkan_GetInstanceExtensions);
    if (fn3) return fn3(count);
    // SDL2 / no SDL: query libvulkan.so.1 directly for instance extensions
    void *vk = dlopen("libvulkan.so.1", RTLD_NOW | RTLD_LOCAL);
    if (!vk) vk = dlopen("libvulkan.so", RTLD_NOW | RTLD_LOCAL);
    if (vk) {
        PFN_vkEnumerateInstanceExtensionProperties enum_ext = (PFN_vkEnumerateInstanceExtensionProperties)dlsym(vk, "vkEnumerateInstanceExtensionProperties");
        if (enum_ext) {
            uint32_t n = 0;
            enum_ext(NULL, &n, NULL);
            static char *names_buf = NULL;
            static char **names = NULL;
            if (names_buf) { free(names_buf); names_buf = NULL; }
            if (names) { free((void*)names); names = NULL; }
            names_buf = calloc(n ? n : 1, sizeof(char) * 256);
            names = calloc((n ? n : 1) + 1, sizeof(char*));
            VkExtensionProperties *props = calloc(n ? n : 1, sizeof(VkExtensionProperties));
            enum_ext(NULL, &n, props);
            for (uint32_t i = 0; i < n; i++) {
                names[i] = names_buf + i * 256;
                strncpy(names[i], props[i].extensionName, 255);
                names[i][255] = '\0';
            }
            names[n] = NULL;
            free(props);
            if (count) *count = n;
            return (const char * const *)names;
        }
    }
    if (count) *count = 0;
    return NULL;
}

WEAK bool SDL_Vulkan_CreateSurface(SDL_Window *window, VkInstance instance, const struct VkAllocationCallbacks *allocator, VkSurfaceKHR *surface) {
    probe_sdl();
    bool res = false;
    bool (*fn3)(SDL_Window *, VkInstance, const struct VkAllocationCallbacks *, VkSurfaceKHR *) =
        (bool (*)(SDL_Window *, VkInstance, const struct VkAllocationCallbacks *, VkSurfaceKHR *))SDL3_SYM(SDL_Vulkan_CreateSurface);
    if (fn3) res = fn3(window, instance, allocator, surface);
    else {
        int (*fn2)(SDL_Window *, VkInstance, VkSurfaceKHR *) =
            (int (*)(SDL_Window *, VkInstance, VkSurfaceKHR *))SDL2_SYM(SDL_Vulkan_CreateSurface);
        if (fn2 && window) res = fn2(window, instance, surface) != 0;
    }
    if (getenv("TOTK_SDL_DEBUG") || getenv("TOTK_GFX_DEBUG")) {
        fprintf(stderr, "[totk-sdl] SDL_Vulkan_CreateSurface: %s (surface=%p)\n",
                res ? "success" : "failed", (surface ? (void*)(uintptr_t)*surface : NULL));
    }
    return res;
}


#include <opus/opus.h>
#include <vpx/vpx_decoder.h>
#include <vpx/vp8dx.h>
#include <stdarg.h>

static void *g_opus_lib = NULL;
static int g_opus_probed = 0;
static void probe_opus(void) {
    if (g_opus_probed) return;
    g_opus_probed = 1;
    const char *cands[] = {"libopus.so.0", "libopus.so", NULL};
    for (int i = 0; cands[i] && !g_opus_lib; i++)
        g_opus_lib = dlopen(cands[i], RTLD_LAZY | RTLD_LOCAL);
}
#define OPUS_SYM(name) (g_opus_lib ? dlsym(g_opus_lib, #name) : NULL)

WEAK int opus_decoder_get_size(int channels) {
    probe_opus();
    int (*fn)(int) = (int (*)(int))OPUS_SYM(opus_decoder_get_size);
    return fn ? fn(channels) : 32768;
}

WEAK OpusDecoder *opus_decoder_create(opus_int32 Fs, int channels, int *error) {
    probe_opus();
    OpusDecoder *(*fn)(opus_int32, int, int *) = (OpusDecoder *(*)(opus_int32, int, int *))OPUS_SYM(opus_decoder_create);
    if (fn) return fn(Fs, channels, error);
    if (error) *error = OPUS_OK;
    return (OpusDecoder *)calloc(1, 64);
}

WEAK void opus_decoder_destroy(OpusDecoder *st) {
    probe_opus();
    void (*fn)(OpusDecoder *) = (void (*)(OpusDecoder *))OPUS_SYM(opus_decoder_destroy);
    if (fn) fn(st);
    else free(st);
}

WEAK int opus_decode(OpusDecoder *st, const unsigned char *data, opus_int32 len, opus_int16 *pcm, int frame_size, int decode_fec) {
    probe_opus();
    int (*fn)(OpusDecoder *, const unsigned char *, opus_int32, opus_int16 *, int, int) =
        (int (*)(OpusDecoder *, const unsigned char *, opus_int32, opus_int16 *, int, int))OPUS_SYM(opus_decode);
    if (fn) return fn(st, data, len, pcm, frame_size, decode_fec);
    if (pcm && frame_size > 0) memset(pcm, 0, (size_t)frame_size * sizeof(opus_int16) * 2);
    return frame_size;
}

WEAK int opus_decoder_ctl(OpusDecoder *st, int request, ...) {
    probe_opus();
    int (*fn)(OpusDecoder *, int, void *) = (int (*)(OpusDecoder *, int, void *))OPUS_SYM(opus_decoder_ctl);
    va_list ap;
    va_start(ap, request);
    void *arg = va_arg(ap, void *);
    va_end(ap);
    if (fn) return fn(st, request, arg);
    if (request == OPUS_GET_FINAL_RANGE_REQUEST && arg) *(opus_uint32 *)arg = 0;
    return OPUS_OK;
}

WEAK const char *opus_strerror(int error) {
    probe_opus();
    const char *(*fn)(int) = (const char *(*)(int))OPUS_SYM(opus_strerror);
    return fn ? fn(error) : "opus error";
}

static void *g_vpx_lib = NULL;
static int g_vpx_probed = 0;
static void probe_vpx(void) {
    if (g_vpx_probed) return;
    g_vpx_probed = 1;
    const char *cands[] = {"libvpx.so.9", "libvpx.so.8", "libvpx.so.7", "libvpx.so.6", "libvpx.so", NULL};
    for (int i = 0; cands[i] && !g_vpx_lib; i++)
        g_vpx_lib = dlopen(cands[i], RTLD_LAZY | RTLD_LOCAL);
}
#define VPX_SYM(name) (g_vpx_lib ? dlsym(g_vpx_lib, #name) : NULL)

WEAK vpx_codec_iface_t *vpx_codec_vp9_dx(void) {
    probe_vpx();
    vpx_codec_iface_t *(*fn)(void) = (vpx_codec_iface_t *(*)(void))VPX_SYM(vpx_codec_vp9_dx);
    static int dummy_iface;
    return fn ? fn() : (vpx_codec_iface_t *)&dummy_iface;
}

WEAK vpx_codec_err_t vpx_codec_dec_init_ver(vpx_codec_ctx_t *ctx, vpx_codec_iface_t *iface, const vpx_codec_dec_cfg_t *cfg, vpx_codec_flags_t flags, int ver) {
    probe_vpx();
    vpx_codec_err_t (*fn)(vpx_codec_ctx_t *, vpx_codec_iface_t *, const vpx_codec_dec_cfg_t *, vpx_codec_flags_t, int) =
        (vpx_codec_err_t (*)(vpx_codec_ctx_t *, vpx_codec_iface_t *, const vpx_codec_dec_cfg_t *, vpx_codec_flags_t, int))VPX_SYM(vpx_codec_dec_init_ver);
    return fn ? fn(ctx, iface, cfg, flags, ver) : VPX_CODEC_OK;
}

WEAK vpx_codec_err_t vpx_codec_decode(vpx_codec_ctx_t *ctx, const uint8_t *data, unsigned int data_sz, void *user_priv, long deadline) {
    probe_vpx();
    vpx_codec_err_t (*fn)(vpx_codec_ctx_t *, const uint8_t *, unsigned int, void *, long) =
        (vpx_codec_err_t (*)(vpx_codec_ctx_t *, const uint8_t *, unsigned int, void *, long))VPX_SYM(vpx_codec_decode);
    return fn ? fn(ctx, data, data_sz, user_priv, deadline) : VPX_CODEC_OK;
}

WEAK vpx_image_t *vpx_codec_get_frame(vpx_codec_ctx_t *ctx, vpx_codec_iter_t *iter) {
    probe_vpx();
    vpx_image_t *(*fn)(vpx_codec_ctx_t *, vpx_codec_iter_t *) =
        (vpx_image_t *(*)(vpx_codec_ctx_t *, vpx_codec_iter_t *))VPX_SYM(vpx_codec_get_frame);
    return fn ? fn(ctx, iter) : NULL;
}

WEAK vpx_codec_err_t vpx_codec_destroy(vpx_codec_ctx_t *ctx) {
    probe_vpx();
    vpx_codec_err_t (*fn)(vpx_codec_ctx_t *) = (vpx_codec_err_t (*)(vpx_codec_ctx_t *))VPX_SYM(vpx_codec_destroy);
    return fn ? fn(ctx) : VPX_CODEC_OK;
}

WEAK const char *vpx_codec_err_to_string(vpx_codec_err_t err) {
    probe_vpx();
    const char *(*fn)(vpx_codec_err_t) = (const char *(*)(vpx_codec_err_t))VPX_SYM(vpx_codec_err_to_string);
    return fn ? fn(err) : "vpx error";
}

WEAK const char *vpx_codec_error_detail(const vpx_codec_ctx_t *ctx) {
    probe_vpx();
    const char *(*fn)(const vpx_codec_ctx_t *) = (const char *(*)(const vpx_codec_ctx_t *))VPX_SYM(vpx_codec_error_detail);
    return fn ? fn(ctx) : NULL;
}

WEAK const char *vpx_codec_version_str(void) {
    probe_vpx();
    const char *(*fn)(void) = (const char *(*)(void))VPX_SYM(vpx_codec_version_str);
    return fn ? fn() : "shim";
}

#endif /* __linux__ */

