// Stand-in for <sys/resource.h> on Windows; forwards to system <sys/resource.h> on Linux.
#pragma once
#ifdef _WIN32
#include "gfx_compat.h"
#else
#include_next <sys/resource.h>
#include "gfx_compat.h"
#endif
