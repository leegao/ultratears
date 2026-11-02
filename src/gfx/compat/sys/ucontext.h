// Stand-in for <sys/ucontext.h> on Windows; forwards to system <sys/ucontext.h> on Linux.
#pragma once
#ifdef _WIN32
#include "gfx_compat.h"
#else
#include_next <sys/ucontext.h>
#include "gfx_compat.h"
#endif
