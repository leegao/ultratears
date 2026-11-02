// Stand-in for <sys/mman.h> on Windows; forwards to system <sys/mman.h> on Linux.
#pragma once
#ifdef _WIN32
#include "gfx_compat.h"
#else
#include_next <sys/mman.h>
#include "gfx_compat.h"
#endif
