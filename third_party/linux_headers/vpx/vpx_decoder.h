#pragma once
#include <stddef.h>
#include <stdint.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef enum {
    VPX_CODEC_OK = 0,
} vpx_codec_err_t;

typedef enum {
    VPX_IMG_FMT_NONE = 0,
    VPX_IMG_FMT_YV12 = 0x301,
    VPX_IMG_FMT_I420 = 0x102,
} vpx_img_fmt_t;

typedef enum {
    VPX_CS_UNKNOWN = 0,
    VPX_CS_BT_601 = 1,
    VPX_CS_BT_709 = 2,
    VPX_CS_SMPTE_170 = 3,
    VPX_CS_SMPTE_240 = 4,
    VPX_CS_BT_2020 = 5,
    VPX_CS_RESERVED = 6,
    VPX_CS_SRGB = 7
} vpx_color_space_t;

typedef enum {
    VPX_CR_STUDIO_RANGE = 0,
    VPX_CR_FULL_RANGE = 1
} vpx_color_range_t;

#define VPX_PLANE_PACKED 0
#define VPX_PLANE_Y 0
#define VPX_PLANE_U 1
#define VPX_PLANE_V 2
#define VPX_PLANE_ALPHA 3

typedef struct vpx_image {
    vpx_img_fmt_t fmt;
    vpx_color_space_t cs;
    vpx_color_range_t range;
    unsigned int w;
    unsigned int h;
    unsigned int bit_depth;
    unsigned int d_w;
    unsigned int d_h;
    unsigned int r_w;
    unsigned int r_h;
    unsigned int x_chroma_shift;
    unsigned int y_chroma_shift;
    unsigned char *planes[4];
    int stride[4];
    int bps;
    void *user_priv;
    unsigned char *img_data;
    int img_data_owner;
    int self_allocd;
    void *fb_priv;
} vpx_image_t;

typedef const struct vpx_codec_iface vpx_codec_iface_t;
typedef struct vpx_codec_priv vpx_codec_priv_t;
typedef const void *vpx_codec_iter_t;
typedef long vpx_codec_flags_t;

typedef struct vpx_codec_dec_cfg {
    unsigned int threads;
    unsigned int w;
    unsigned int h;
} vpx_codec_dec_cfg_t;

typedef struct vpx_codec_ctx {
    const char *name;
    vpx_codec_iface_t *iface;
    vpx_codec_err_t err;
    const char *err_detail;
    vpx_codec_flags_t init_flags;
    union {
        const vpx_codec_dec_cfg_t *dec;
        const void *raw;
    } config;
    vpx_codec_priv_t *priv;
} vpx_codec_ctx_t;

const char *vpx_codec_version_str(void);
const char *vpx_codec_err_to_string(vpx_codec_err_t err);
const char *vpx_codec_error_detail(const vpx_codec_ctx_t *ctx);
vpx_codec_err_t vpx_codec_dec_init_ver(vpx_codec_ctx_t *ctx, vpx_codec_iface_t *iface,
                                       const vpx_codec_dec_cfg_t *cfg, vpx_codec_flags_t flags, int ver);
vpx_codec_err_t vpx_codec_destroy(vpx_codec_ctx_t *ctx);
vpx_codec_err_t vpx_codec_decode(vpx_codec_ctx_t *ctx, const uint8_t *data, unsigned int data_sz,
                                 void *user_priv, long deadline);
vpx_image_t *vpx_codec_get_frame(vpx_codec_ctx_t *ctx, vpx_codec_iter_t *iter);

static inline vpx_codec_err_t vpx_codec_dec_init_auto(vpx_codec_ctx_t *ctx, vpx_codec_iface_t *iface,
                                                      const vpx_codec_dec_cfg_t *cfg, vpx_codec_flags_t flags) {
    /* Probe ABI versions 12..8 across libvpx 1.11 / 1.12 / 1.13 / 1.14 */
    for (int ver = 16; ver >= 6; --ver) {
        vpx_codec_err_t r = vpx_codec_dec_init_ver(ctx, iface, cfg, flags, ver);
        if (r == VPX_CODEC_OK) return r;
    }
    return vpx_codec_dec_init_ver(ctx, iface, cfg, flags, 12);
}
#define vpx_codec_dec_init(ctx, iface, cfg, flags) vpx_codec_dec_init_auto((ctx), (iface), (cfg), (flags))

#ifdef __cplusplus
}
#endif
