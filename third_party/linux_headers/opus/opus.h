#pragma once
#include <stdint.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef int16_t opus_int16;
typedef uint16_t opus_uint16;
typedef int32_t opus_int32;
typedef uint32_t opus_uint32;

#define OPUS_OK 0
#define OPUS_RESET_STATE 4028
#define OPUS_GET_FINAL_RANGE_REQUEST 4031
#define OPUS_GET_FINAL_RANGE(x) OPUS_GET_FINAL_RANGE_REQUEST, (opus_uint32 *)(x)

typedef struct OpusDecoder OpusDecoder;

int opus_decoder_get_size(int channels);
OpusDecoder *opus_decoder_create(opus_int32 Fs, int channels, int *error);
void opus_decoder_destroy(OpusDecoder *st);
int opus_decode(OpusDecoder *st, const unsigned char *data, opus_int32 len, opus_int16 *pcm, int frame_size, int decode_fec);
int opus_decoder_ctl(OpusDecoder *st, int request, ...);
const char *opus_strerror(int error);

#ifdef __cplusplus
}
#endif
