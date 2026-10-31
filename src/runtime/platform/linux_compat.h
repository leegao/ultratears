// What glibc before 2.38 lacks (included via runtime/platform.h on Linux only): the AppImage is built against
// Ubuntu 22.04's glibc 2.35 (no strlcpy / strlcat until 2.38, no arc4random until 2.36).
// Also provides cross-platform shims for Windows CRT helpers used across src/host and src/gfx.
#pragma once
#ifndef _GNU_SOURCE
#define _GNU_SOURCE
#endif
#include <errno.h>
#include <fcntl.h>
#include <malloc.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include <sys/random.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <time.h>
#include <unistd.h>

#ifdef __cplusplus
#ifndef _Noreturn
#define _Noreturn [[noreturn]]
#endif
#endif

#if !defined(__GLIBC_PREREQ)
#define __GLIBC_PREREQ(maj, min) 0
#endif

#if !__GLIBC_PREREQ(2, 38)
static inline size_t strlcpy(char *d, const char *s, size_t n) {
    size_t len = strlen(s);
    if (n) {
        size_t k = len < n - 1 ? len : n - 1;
        memcpy(d, s, k);
        d[k] = 0;
    }
    return len;
}
static inline size_t strlcat(char *d, const char *s, size_t n) {
    size_t dl = strnlen(d, n);
    if (dl == n) return n + strlen(s);
    return dl + strlcpy(d + dl, s, n - dl);
}
#endif

#if !__GLIBC_PREREQ(2, 36)
static inline uint32_t arc4random(void) {
    uint32_t v = 0;
    while (getrandom(&v, sizeof v, 0) != sizeof v) {}
    return v;
}
static inline uint32_t arc4random_uniform(uint32_t n) {
    if (n < 2) return 0;
    uint32_t min = -n % n, r;  // reject the low values that would bias the modulo
    do r = arc4random(); while (r < min);
    return r % n;
}
#endif

// ---- Windows CRT compatibility shims on Linux
#ifndef O_BINARY
#define O_BINARY 0

#ifndef ULTRATEARS_SYSTEM_INFO_DEFINED
#define ULTRATEARS_SYSTEM_INFO_DEFINED
#include <unistd.h>
typedef struct {
    uint32_t dwNumberOfProcessors;
} SYSTEM_INFO;

static inline void GetSystemInfo(SYSTEM_INFO *si) {
    long n = sysconf(_SC_NPROCESSORS_ONLN);
    si->dwNumberOfProcessors = (n > 0) ? (uint32_t)n : 4;
}
#endif

#ifndef weak_import
#define weak_import weak
#endif
#endif

static inline void *plat_aligned_malloc(size_t size, size_t align) {
    void *p = NULL;
    if (align < sizeof(void *)) align = sizeof(void *);
    return posix_memalign(&p, align, size) == 0 ? p : NULL;
}
#define _aligned_malloc(sz, al) plat_aligned_malloc((sz), (al))
#define _aligned_free(p) free(p)

static inline int _chsize_s(int fd, int64_t size) {
    return ftruncate(fd, (off_t)size) == 0 ? 0 : errno;
}

#define _mkdir(p) mkdir((p), 0755)
#define _fseeki64(f, off, w) fseeko((f), (off_t)(off), (w))
#define _ftelli64(f) ((int64_t)ftello(f))
#define _stricmp(a, b) strcasecmp((a), (b))
#define _mkgmtime(tm) timegm(tm)

static inline int plat_localtime_s(struct tm *out, const time_t *t) {
    return localtime_r(t, out) ? 0 : EINVAL;
}
static inline int plat_gmtime_s(struct tm *out, const time_t *t) {
    return gmtime_r(t, out) ? 0 : EINVAL;
}
#define localtime_s(out, t) plat_localtime_s((out), (t))
#define gmtime_s(out, t) plat_gmtime_s((out), (t))
