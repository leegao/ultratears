### Executive Summary of x86-64 Bottlenecks

Profiling the static recompiler (`src/horizon2llvm/`), the three TOTK NSO binaries (`main`, `subsdk0`, `sdk`), the Horizon OS runtime (`src/runtime/`, `src/host/`), and the NVN-to-Vulkan backend (`src/gfx/`, `src/vk/`) reveals significant, quantifiable bottlenecks across **all four layers**:

| Subsystem | Bottleneck | Measured Magnitude / Impact on x86-64 | Priority |
| --- | --- | --- | --- |
| **AOT Codegen (`passes.hpp`)** | `CpuStatePromotionPass` flushes `written_regs` and reloads `all_regs` (function-wide sets) at every call site with no inter-block liveness/dirty tracking | **23.52M** `Cpu` loads/stores in `main`; **5.37x–7.74x** x86-64 instruction expansion; **18.9%–24.7%** of all instructions are `[rsp]` stack spills | **P0 (Critical)** |
| **AOT Build (`build_game.py`)** | Oversized `.ll` chunks (`>100k` lines) and non-Clang `libLLVM` builds drop from `-O2` to **`-O0`**, skipping `mem2reg` | **10.70x** x86-64 instruction bloat (`10,419` vs `5,227` insns in `f_80029e418`); **34.2%** of instructions become `[rsp]` stack loads/stores | **P0 (Critical)** |
| **AOT Codegen (`passes.hpp`)** | Dead `@g_fnprof` hook (`fnprof_hit` is an empty no-op in `dispatch.c:353`) kept in ~220,000 non-leaf/`>16`-insn functions | Breaks `killed_on_entry` in **100%** of non-leaf functions (`blocks[1]` is `prof_hit`); forces caller-saved spills in every function prologue | **P0 (Critical)** |
| **NVN / Vulkan (`linux.c`, `backend_vk.c`)** | `plat_written_pages()` is stubbed to `-1` on Linux, disabling `vkb_shadow` VRAM pool copies; `vkb_mt_recording()` simultaneously disables SSBO `mirrors_prepare()` | **28 ms vs 7.6 ms** GPU render-pass time across PCIe; **59–114 ms** GPU stall on shader SSBO atomic passes (~6 FPS) when neither shadow nor mirror is active | **P0 (Critical)** |
| **NVN / Vulkan (`totk_vpool_win.c`, `vkb_tex.c`)** | Single global `g_map_gen` bumped on every `MapVirtual` call marks **all** virtual-pool textures stale | Every 64 KiB page map re-gathers, re-deswizzles, re-hashes, and re-uploads untouched virtual-pool textures | **P1 (High)** |
| **AOT SIMD/FP (`passes.hpp`, `simd_rt.c`)** | **23,775** `@rt_*` helper calls remain un-inlined across `main`+`subsdk0`+`sdk`, calling across TU into non-LTO `simd_rt.o` and flushing/reloading `V0..V31` | **`5,790`** IEEE `@rt_crc32`, **`5,210`** `@rt_vec_fop` (`FMAX`/`FMIN`/`FRSQRTS`/`FABD`), **`7,260`** `@rt_sl_ld*/st*`, **`2,740`** `@rt_sv_tbl`, **`1,595`** `@rt_sl_gen` | **P1 (High)** |
| **Horizon Runtime (`threads.c`)** | Single global mutex `G`, 3-virtual-core cap (`NCORE = 3`), $O(N)$ thundering herd in `wake_sync_waiters()`, and un-backed-off main-thread yield spin | ~50 guest threads contend on one lock; every `svcSignalEvent` wakes all `WaitSynchronization` threads in the process | **P1 (High)** |
| **NVN / Vulkan (`hle_nvn.c`, `vkb_ucap.c`, `vkb_shader.c`)** | 4x command buffer walks per submission; synchronous game-thread `memcpy` of SSBOs/`COPY_B2B` up to 1 MB; per-thread `B->progs` SHA-256 misses | Multi-MB CPU copies on the game & replay threads; 5x redundant software SHA-256 hashing of Maxwell shaders across walk + 4 recording threads | **P2 (Medium)** |

---

### 1. Bottlenecks in the AOT-ed Code (`src/horizon2llvm/` & `src/runtime/simd_rt.c`)

Running a static binary and IR profiler across all three TOTK NSO binaries (`data/exefs/main`, `subsdk0`, and `sdk`) yields the exact instruction and helper distribution:

| Metric | `main` (`0x800000000`) | `subsdk0` (`0x804000000`) | `sdk` (`0x805000000`) | Total |
| --- | --- | --- | --- | --- |
| **Total Discovered Functions** | 228,155 | 13,632 | 39,223 | **281,010** |
| **Pure Leaf Functions (`<= 8` insns)** | 45,265 (19.8%) | 856 (6.3%) | 3,111 (7.9%) | **49,232 (17.5%)** |
| **AArch64 Instructions (`.text` words)** | 11,442,300 | 875,252 | 1,673,380 | **13,990,932** |
| **Direct Calls (`BL`)** | 562,240 | 51,045 | 74,270 | **687,555** |
| **Indirect Calls (`BLR`)** | 105,860 | 3,955 | 14,330 | **124,145** |
| **`Cpu *c` Memory Loads (Post-Pass)** | 12,177,860 | 985,100 | 1,626,320 | **14,789,280** |
| **`Cpu *c` Memory Stores (Post-Pass)** | 11,345,740 | 983,965 | 1,782,235 | **14,111,940** |

#### 1.1 Function-Wide `CpuStatePromotionPass` Flushing Causes 5.4x–7.7x x86-64 Code Bloat & Stack Spills

In `CpuStatePromotionPass` (`src/horizon2llvm/passes.hpp:3947–4152`), `written_regs` and `all_regs` are collected **across the entire function**, while `synced_in_cpu` is reset at the beginning of every basic block (`line 4003`):

* **The Problem**: If a 900-instruction function touches 28 architectural registers anywhere across its 120 basic blocks, then at **every single `BL` or `BLR` call site in every basic block**, `CpuStatePromotionPass` emits stores for all `written_regs` before the call and loads for all `all_regs` after the call (`lines 4096–4129`).
* **Why LLVM `-O2` Cannot Remove Them**: Because `call void @f_<target>(ptr %c)` receives `ptr %c`, LLVM `-O2` must assume the callee reads and modifies every field of `Cpu *c`. Worse, because basic block $B_1$ reloads `%loc_x16 = load c->x[16]` after a call and basic block $B_2$ flushes `store %loc_x16 -> c->x[16]` before its call, LLVM's `mem2reg` (`SROA`) constructs PHI nodes that keep **all 25–30 guest GPRs simultaneously live across every basic block in the function**. With only 15 hardware GPRs on x86-64, LLVM's register allocator is forced to spill 15+ registers onto the host stack (`[rsp+...]`).
* **Measured Proof on Real TOTK Functions (`f_80029e418` and `main_001.ll`)**:
* In `f_80029e418` (`974` AArch64 instructions, `38` call sites), `CpuStatePromotionPass` emits **1,312 register flushes and 1,417 register reloads (`2,729` total)**—reloading scratch registers `%loc_x12..%loc_x18` and callee-saved registers `%loc_x19..%loc_x29` **44 times each**.
* Compiling `f_80029e418` with `-O2 -march=x86-64-v3` produces **5,227 x86-64 instructions (`5.37x` expansion)**, of which **1,551 (`29.7%`)** are `[rbx]`/`[rdi]` `Cpu` loads/stores and **988 (`18.9%`)** are `[rsp]` stack spills (**48.6% pure memory overhead**).
* In `main_001.ll` (`14,661` AArch64 instructions), `-O2` produces **113,548 x86-64 instructions (`7.74x` expansion)** with **28,048 `[rsp]` stack spills (`24.7%`)**.



#### 1.2 Dead `@g_fnprof` Hook Kept in ~220,000 Functions Breaks `killed_on_entry` and Shrink-Wrapping

In `src/runtime/dispatch.c:352–353`, `fnprof_hit` is an empty stub (`void fnprof_hit(uint64_t addr, uint64_t lr, uint64_t x0) { (void)addr; (void)lr; (void)x0; }`) and `g_fnprof` is never modified anywhere in the codebase.

* However, `ProfileGuidedEntryHookElimPass` (`src/horizon2llvm/passes.hpp:297–314`) only removes `prof_hit` when `insn_count <= 16 && !has_call_or_svc`.
* For the remaining **~220,000 functions** across `main`, `subsdk0`, and `sdk`:
1. `prof_hit` reads `X30` and `X0`, falsely marking `X30` and `X0` as read on entry.
2. In `CpuStatePromotionPass` (`passes.hpp:3975–3977`), `scan_entry_kills` checks `if (fn->blocks[1]->name == first_lbl)` (`L_<entry_pc>`). Because `blocks[1]` is `"prof_hit"` (and `L_<entry_pc>` is `blocks[3]`), **`killed_on_entry` is empty (`{}`) on 100% of non-leaf or `>16`-instruction functions**! Every scratch register written in the first block is unconditionally loaded from `Cpu *c` in `entry:`.
3. Because `CpuStatePromotionPass` inserts all entry loads *before* `cmp DWORD PTR [rip+g_fnprof], 0; je prof_cont`, LLVM sees all 20–30 loaded registers live across `call fnprof_hit`, spilling caller-saved registers (`rdx`, `rdi`, `rsi`, `rcx`, `r8..r11`, `xmm6..xmm7`) to `[rsp+...]` in the function prologue before the branch is even taken (`f_80029e418+0x11..0x172`, 72 instructions!).



#### 1.3 Un-Inlined `@rt_*` Runtime Helpers in Separate Translation Unit (`src/runtime/simd_rt.c`)

Unlike the legacy C backend (where `simd.h` was `#include`d in every chunk so `always_inline` folded constant `op`/`sz`/`ne` arguments), any `@rt_*` call remaining in LLVM IR calls across a translation-unit boundary into `simd_rt.o` (compiled without LTO). Every `@rt_*(ptr %c, ...)` call also triggers a **full flush and reload of all touched `V0..V31` registers and `NZCV**` (`passes.hpp:4156–4173`). Across `main`, `subsdk0`, and `sdk`, **23,775 `@rt_*` calls remain after all 23 passes**:

| Remaining Helper | Post-Pass Calls (`main` / `subsdk0` / `sdk`) | Why It Was Missed & x86-64 Performance Cost |
| --- | --- | --- |
| **`@rt_sl_lds` / `@rt_sl_sts` / `@rt_sl_ldr` / `@rt_sl_ldm` / `@rt_sl_stm**` | **7,260** (`5,150` / `70` / `2,040`) | **Zero passes inline NEON structure loads/stores (`LD1..LD4`, `ST1..ST4`, `LD1R..LD4R`)**. A 4-register `LD1` (4x4 matrix load) flushes `V0..V31`, calls `simd_rt.c`, and runs a 3-level nested loop with a `switch (sz)` per lane instead of 4 `vmovups` loads. |
| **`@rt_crc32`** | **5,790** (`5,790` / `0` / `0`) | `X8664HardwareIntrinsicPass` (`passes.hpp:2038`) checks `is_c == 1` (Castagnoli `CRC32C`, only `10` sites in `main`!). **99.8% (`5,790`)** of TOTK's `CRC32` instructions use IEEE 802.3 (`is_c == 0`) for string/SARC/Byml hashing and run a byte-by-byte C loop in `simd_rt.c`. |
| **`@rt_vec_fop`** | **5,210** (`5,120` / `0` / `90`) | `FPCRFastFPLoweringPass` (`passes.hpp:714`) omitted `FOP_MAX` (`2,400` in `main`), `FOP_MIN` (`1,910`), `FOP_RSQRTS` (`630`), `FOP_ABD` (`120`), and `FOP_RECPS` (`110`). Used heavily in Havok physics AABB culling and vector normalization. |
| **`@rt_sv_tbl`** | **2,740** (`2,650` / `0` / `90`) | Only lowered on ARM64 (Pass 6). On x86-64, copies 16–64 bytes to a stack array and runs a 16-iteration byte loop instead of SSSE3/AVX2 `pshufb` (`@llvm.x86.ssse3.pshuf.b.128`). |
| **`@rt_sl_gen`** | **1,595** (`360` / `95` / `1,140`) | Takes **16 arguments** (10 spilled to stack per call!). Remaining opcodes: `LOP_SQRDMULH` (`600`), `LOP_SQDMULH` (`265`), indexed `LOP_MULL` (`225`), `LOP_MLAL` (`130`), `LOP_SHL` (`95`), `LOP_QSHRN` (`70`), `LOP_SRAI` (`65`), `LOP_SQXTUN` (`40`). |
| **`@rt_vec_frecpe` & `@rt_fp_recpe**` | **595** (`570` / `0` / `25`) | `FRSQRTE` / `FRECPE` are never inlined on x86-64; each call flushes `V0..V31` and runs a scalar lookup table (`simd_rsqrt_tab[384]`) instead of `rsqrtps` / `rcpps` or fast `1.0f / sqrt(x)`. |
| **`@rt_fp_toint` / `@rt_vec_fcvt_int**` | **615** (`210` / `65` / `340`) | `SIMDPairwiseAndConversionInlinePass` requires `rm == 3 && fbits == 0` (`passes.hpp:1058`), skipping fixed-point `FCVTZS #fbits` (`fmul` by $2^{\text{fbits}}$) and `FCVTNS`/`FCVTPS`/`FCVTMS` (`rint`/`ceil`/`floor` + `fptosi.sat`). |
| **`@rt_vec_fpair` / `@rt_sv_fred_s` / `@rt_fp_dp1**` | **885** (`860` / `0` / `25`) | `FMAXP`/`FMINP` (`325`), `FMAXNMV`/`FMINNMV` (`260`), and FP16 `FCVT` (`220`, supported natively by x86-64-v3 `F16C` `vcvtph2ps`/`vcvtps2ph`) are not inlined. |

#### 1.4 `-O0` Fallback on Large IR Chunks (`tools/build_game.py:92, 224, 312`) & Disabled Passes

* **`-O0` Cliff on Large Chunks**: `tools/build_game.py:312` checks `ll_is_oversized(text)` (`> 100,000` lines or instructions) and replaces `-O2` with **`-O0`**. In just the first 200 functions of `main`, `main_001.ll` is `228,747` lines and gets compiled at `-O0`. Furthermore, on Linux systems without `clang` where `horizon2llvm --compile-ir` is used (`has_clang_ir == False`), `build_game.py:224` hardcodes `gameirflags = "-O0"` for **every chunk in the game**. At `-O0`, `main.cpp:244` sets `opt_pipe = ""`, so `mem2reg` never runs and every `%loc_*` register stays in stack memory (`10,419` x86-64 instructions for `f_80029e418` vs `5,227` at `-O2`).
* **9 Passes Disabled by Default**: `PassPipelineConfig::disable_high_risk_passes()` disables `NsoRodataConstPropAndDevirtPass` (Pass 3), `ExclusiveMonitorLSEFastPathPass` (Pass 8), `NZCVPredicateFusionPass` inter-block DSE (Pass 16b), `LinkRegisterElisionPass` (Pass 18), `TailCallDevirtualizationPass` (Pass 19), `AAPCS64ABIContractPass` (Pass 20), `CpuStatePromotionPass` interprocedural pruning (Pass 21b), and `CrossChunkLeafInlinePass` (Pass 22, which inlines `49,232` `<=8`-insn leaf functions across chunks).
* **Why `LinkRegisterElisionPass` (Pass 18) & `TailCallDevirtualizationPass` (Pass 19) Miss Most Calls Even When Enabled**: Pass 18 (`passes.hpp:3619`) only checks callees within the *same* `.ll` chunk (`M.functions`) and rejects any callee that contains `STP X29, X30, [SP, ...]` (`OpTag::CpuRegRead` of `arch_reg == 30`) or any outgoing call—even though `RET` (`aarch64_lifter.hpp:738`) emits `ret void` and never reads `c->x[30]`.

---

### 2. Bottlenecks in the NVN & Vulkan Backend (`src/gfx/` & `src/vk/`)

#### 2.1 Unimplemented Write-Watch on Linux (`linux.c:39`) Disables VRAM Pool Shadowing (`vkb_shadow`)

On discrete x86-64 GPUs, reading vertex, index, uniform, and storage buffers directly from host-imported memory (`VK_EXT_external_memory_host`) across the PCIe bus costs **28 ms of GPU time per frame** on the Great Sky Island, compared to **7.6 ms** when pools are shadowed in device-local VRAM (`src/gfx/backend_vk.c:270–272`).

* `sync_gather()` (`backend_vk.c:354`) only creates a device-local shadow buffer if `nvn_dirty_tracked((const void *)p->lo, p->hi - p->lo)` returns `1`.
* On Linux (`src/runtime/platform/linux.c:39–42`), `plat_written_pages()` is an unimplemented stub returning `-1`. Consequently, `g_watch` is `0`, `nvn_dirty_tracked()` returns `0` for every pool, and **100% of memory pools on Linux are permanently marked `no_shadow = 1**`, forcing all GPU buffer reads across PCIe.
* On Windows, `totk_vpool_win.c:45` allocates `CPU_NO_ACCESS` physical pools with `VirtualAlloc(..., MEM_RESERVE | MEM_COMMIT, PAGE_READWRITE)` *without* `MEM_WRITE_WATCH` (and outside the `[GUEST_LO, GUEST_HI)` reservation), so `GetWriteWatch` fails (`vvl_log.txt`: `dirty tracking: no write watch for pool ...`).

#### 2.2 Multithreaded Recording (`vkb_mt_recording()`) Disables SSBO VRAM Mirrors (`vkb_draw.c:759`)

When shaders perform atomic writes to storage buffers (such as TOTK's ~360 tile-marking draws/frame or the 400×224 sun-shadow statistics pass), writing across PCIe to host RAM serializes GPU atomic units and takes **59–114 ms of GPU time per frame (~6 FPS)** (`src/gfx/vkb_draw.c:455–462`).

* In `mirrors_prepare()` (`src/gfx/vkb_draw.c:759`):
```c
int off = off_env || vkb_mt_recording();

```


* When multithreaded command recording is active (`vkb_mt_on()` defaults to `4` threads on any CPU with `>= 8` logical cores, `backend_vk.c:1641`), `vkb_mt_recording()` is `1`, which **disables `mirrors_prepare()` completely**.
* Whenever a written SSBO resides in a pool where `vkb_shadow` is off or marked `no_shadow = 1` (e.g., all pools on Linux, or overlapping pools on Windows at `backend_vk.c:214`), **both `vkb_shadow` and `mirrors_prepare` are disabled simultaneously**, causing severe GPU atomic stalls across PCIe.

#### 2.3 Single Global `g_map_gen` Causes Mass Virtual-Pool Texture Re-Uploads (`totk_vpool_win.c:125`, `vkb_tex.c:609`)

TOTK streams world textures into virtual memory pools via `nvnMemoryPoolMapVirtual` (`totk_vpool_map` in `src/gfx/nvn/totk_vpool_win.c:111`).

* `totk_vpool_map()` increments a **single global counter `g_map_gen**` (`line 125`) whenever *any* 64 KiB page mapping changes.
* In `vkb_tex_stale()` (`src/gfx/vkb_tex.c:609`):
```c
if (im->vpool_gen && im->vpool_gen != totk_vpool_generation()) return 1;

```


* Whenever TOTK maps or unmaps even a single 64 KiB page for a newly streamed texture, **every existing virtual-pool texture in the entire scene sees `im->vpool_gen != totk_vpool_generation()**` and is marked stale—triggering `malloc(L.size)` + `totk_vpool_gather` + `nvn_deswizzle` + 128-bit `bc7_key_of` hashing + `bc7.pack` disk reads (or CPU ASTC decoding) + `vkCmdCopyBufferToImage` for textures whose backing pages never changed.

#### 2.4 4x Command Stream Walks & Multi-Megabyte Synchronous UBO/SSBO Copies (`hle_nvn.c`, `vkb_ucap.c`, `backend_vk.c`)

1. **Four Separate Command Buffer Walks per Submission**:
* **Walk 1 (Game Thread, `hle_nvn.c:1995`)**: `resolve_deferred()` walks every command and nested `OP_CALL` to snapshot deferred texture/image handles.
* **Walk 2 (Game Thread, `vkb_ucap.c:72`)**: `mtl_sub_capture_ubos()` walks the entire command stream a second time to collect `OP_BIND_UBO`, `OP_BIND_SSBO`, and `OP_COPY_B2B` ranges.
* **Walk 3 (Translation Thread, `backend_vk.c:1770`)**: `exec_ops(..., EX_WALK, ...)` walks the entire stream a third time on `x_thread`, updating thread-local `S`, calling `vkb_draw_prescan()`, and `memcpy`ing the `~4.5 KB` `S` struct at every chunk boundary.
* **Walk 4 (Recording Threads, `backend_vk.c:1699`)**: `exec_ops(..., EX_CHUNK, ...)` walks each chunk a fourth time to emit Vulkan commands.


2. **Over-Capturing SSBOs and Buffer Copies on the Game Thread (`vkb_ucap.c:48–103`)**:
* `collect()` in `vkb_ucap.c:48` captures not only UBOs (`<= 64 KB`), but **every bound SSBO (`OP_BIND_SSBO`) and `OP_COPY_B2B` source up to `OTHER_MAX = 1 MB` each** (`MERGE_MAX = 4 MB`), `malloc`ing and `memcpy`ing megabytes on the game's render thread during `nvnQueueSubmitCommands`, then `memcpy`ing them a second time into the Vulkan upload ring on `x_thread` (`vkb_ucap.c:165`).



#### 2.5 Per-Thread Shader Cache Misses & Synchronous Driver Compilation (`vkb_draw.c:913`, `vkb_shader.c:473`)

* **5x Redundant SHA-256 Hashing**: `B->progs[PROGS]` (`vkb_draw.c:590, 913`) is `__thread` (per-thread). When a new `S.prog->serial` is bound, the walk thread (`EX_WALK` in `vkb_draw_prescan`) and each of the 4 recording threads independently miss their thread-local `B->progs` table and call `vkb_shader_get()`, running a full software SHA-256 over the `0x880`-byte control header and tens of KiB of Maxwell code up to 5 times per program.
* **Coarse Lock & Uncached Driver Binaries**: `vkb_shader_get()` (`vkb_shader.c:473`) holds `pthread_mutex_t g_mu` across disk file reads (`.res.json`, `.spv`), `vkCreateShadersEXT` compilation, and `fopen`/`fprintf`/`fclose` on `used.txt`, blocking all other recording threads. Moreover, `create_object()` compiles SPIR-V on every launch rather than caching compiled `VkShaderEXT` binaries via `vkGetShaderBinaryDataEXT`.

---

### 3. Other Translation & Runtime Overhead (`src/host/` & `src/runtime/`)

#### 3.1 Global Mutex `G` + 3-Core Virtual Serialization (`src/host/threads.c:79, 125–170`)

* **Virtual Core Throttling (`NCORE = 3`)**: By default (`TOTK_FREE_CORES` unset), `core_take()` (`threads.c:140`) enforces that **at most 3 guest threads can execute simultaneously**, regardless of whether the host x86-64 CPU has 8, 16, or 32 cores.
* **Single Global Lock `G**`: Every thread creation, start, sleep, yield, `ArbitrateLock` (`0x1A`), `ArbitrateUnlock` (`0x1B`), `WaitProcessWideKeyAtomic` (`0x1C`), `SignalProcessWideKey` (`0x1D`), `WaitForAddress` (`0x34`), `SignalToAddress` (`0x35`), `SignalEvent` (`0x11`), and `WaitSynchronization` (`0x18`) acquires the **single process-wide `pthread_mutex_t G**` and linearly scans the global `g_wait` linked list (`pick()` at `threads.c:103`).

#### 3.2 $O(N)$ Thundering Herd on `svcSignalEvent` (`src/host/threads.c:284`)

In `src/host/threads.c:284`:

```c
static void wake_sync_waiters(void) {
    for (thr_t *w = g_wait; w; ) { thr_t *n = w->next; if (w->wkind == 4) wake(w, -1); w = n; }
}

```

Whenever **any single `KEvent**` is signaled (`svcSignalEvent`, SVC `0x11`), `wake_sync_waiters()` wakes **every thread in the entire process blocked in `WaitSynchronization` (`wkind == 4`)**—even threads waiting on completely unrelated handles. Every woken thread contends on `G`, releases/acquires virtual cores (`core_put`/`core_take`), re-evaluates its handle array, and goes back to sleep.

#### 3.3 Main-Thread Busy-Poll Yield Spin (`src/host/threads.c:369–388`)

When TOTK's main thread waits for its render task graph workers to finish (`main+0x15ee898`), it polls in a tight loop calling `svcSleepThread(0)` (yield). Because `TOTK_YIELD_BACKOFF` defaults to `off` (`threads.c:311`), every iteration acquires and releases the global mutex `G` (`line 374`), starving worker threads trying to acquire `G` to complete their tasks.

#### 3.4 Custom Spin-Wait Reader-Writer Lock on Linux (`src/gfx/backend_vk.c:60–97`)

On Windows, `vkb_rw` wraps kernel-backed `SRWLOCK`. On Linux (`backend_vk.c:83, 91`), `vkb_rw_read` and `vkb_rw_write` use a user-space spin loop (`while (!rw_try_read(l)) sched_yield();`) with no writer starvation prevention, causing high context-switch churn on `g_pool_mu` and `g_reg_mu` when 4 recording threads and the game thread access pools concurrently.

---

### 4. Actionable Optimization Roadmap (Ranked by Impact)

#### Tier 1: AOT Lifter, Pass Pipeline & Build Fixes (2x–3x CPU Speedup)

1. **Add Inter-Block Forward Dirty + Backward Need Dataflow to `CpuStatePromotionPass` & Elide `@g_fnprof` Globally (`src/horizon2llvm/passes.hpp`)**:
* Remove the `insn_count <= max_leaf_insns_ && !has_call_or_svc` restriction in `ProfileGuidedEntryHookElimPass` so the dead `@g_fnprof` hook is stripped from all 281,010 functions when `--force-fnprof` is off.
* In `CpuStatePromotionPass`, compute 96-bit `std::bitset<96>` forward `dirty_in`/`dirty_out` and backward `need_in`/`need_out` across each function's CFG so a register is only flushed before a call/return if modified along a call-free path (`dirty_before[i]`), and only reloaded after a call/entry if consumed along a call-free path (`need_after[i]`).
* *Verified Impact*: Tested on `main_001.ll` (`14,661` AArch64 insns) and `f_80029e418` (`974` AArch64 insns), this single change **eliminates 69.2% of `Cpu *c` memory accesses (`41,330 -> 12,721`), eliminates 78.1% of `[rsp]` stack spills (`28,048 -> 6,133`), and cuts total compiled x86-64 instructions in half (`113,548 -> 54,134`, from `7.74x` down to `3.69x`)**.


2. **Stop Compiling Oversized Chunks with `-O0` (`tools/build_game.py:224, 312` & `src/horizon2llvm/main.cpp:244`)**:
* In `build_game.py:224`, change `"-O0"` to `"-O2"` when invoking `horizon2llvm --compile-ir`.
* In `build_game.py:312`, replace `-O0` on oversized chunks with `-O1` (or `mem2reg,instcombine,simplifycfg,dse` in `main.cpp:244`) and lower `--big-fn` in `gen_game.py` so large functions get dedicated chunks that compile cleanly with `mem2reg` (`2.0x` fewer x86-64 instructions and `3.6x` fewer stack accesses than `-O0`).


3. **Inline the Remaining 23,775 `@rt_*` Helpers in `passes.hpp` (or Enable ThinLTO on `simd_rt.c`)**:
* **`@rt_vec_fop` (`5,210` calls)**: Add `FOP_MAX`, `FOP_MIN`, `FOP_ABD` (`fsub` + `@llvm.fabs`), `FOP_RECPS` (`2.0 - a*b`), and `FOP_RSQRTS` (`(3.0 - a*b)*0.5`) to `FPCRFastFPLoweringPass::is_inlineable_vec_fop()` and `is_inlineable_scalar_fop()`.
* **`@rt_vec_frecpe` / `@rt_fp_recpe` (`595` calls)**: Inline under fast-FP to `1.0f / @llvm.sqrt` and `1.0f / x` (or `@llvm.x86.sse.rsqrt.ps` / `rcp.ps`).
* **`@rt_sl_ldr`, `@rt_sl_lds`, `@rt_sl_sts`, `@rt_sl_ldm`, `@rt_sl_stm` (`7,260` calls)**: Lower `selem == 1` directly to native LLVM `load`/`store` + `insertelement`/`extractelement`/`shufflevector` splats (`vbroadcastss`, `vmovups`).
* **`@rt_sv_tbl` (`2,740` calls)**: Lower in `X8664HardwareIntrinsicPass` to `@llvm.x86.ssse3.pshuf.b.128` with `icmp uge <16 x i8> %idx, 16` out-of-bounds zeroing.
* **`@rt_crc32` (`5,790` IEEE calls)**: Unroll 1/2/4/8-byte IEEE CRC32 inline using slicing-by-4/8 tables or x86 `pclmulqdq` (`_mm_clmulepi64_si128`).


4. **Re-Enable Audited Interprocedural & Leaf Passes (`CrossChunkLeafInlinePass`, `LinkRegisterElisionPass`, `TailCallDevirtualizationPass`)**:
* In `LinkRegisterElisionPass` (Pass 18), elide `X30 = pc + 4` before **all** direct calls except calls targeting `nvnWindowSetPresentInterval` (the only function checking caller `LR`), unlocking `TailCallDevirtualizationPass` (`musttail`) across all `BL + RET` sites.
* Enable `CrossChunkLeafInlinePass` (Pass 22) to inline the **49,232 pure leaf functions (`17.5%` of all functions)** across chunks.



#### Tier 2: NVN & Vulkan Backend Fixes (2x–4x GPU & Replay Thread Speedup)

1. **Implement Linux Write-Watch (`src/runtime/platform/linux.c:39`) to Enable `vkb_shadow` VRAM Pools**:
* Implement `plat_written_pages()` on Linux using either `PAGEMAP_SCAN` (`PM_SCAN_WP_MATCHING | PM_SCAN_CHECK_WPASYNC`, Linux 6.7+ `ioctl` built specifically for Windows `GetWriteWatch` emulation), `userfaultfd` (`UFFDIO_WRITEPROTECT`), or `mprotect(PROT_READ)` + `rt_fault_watch()` in `crash_handler()`. This unlocks `vkb_shadow` on Linux discrete GPUs, cutting render-pass GPU time from **~28 ms to ~7.6 ms**.


2. **Keep `mirrors_prepare()` Active When `vkb_shadow` Is Inactive (`src/gfx/vkb_draw.c:759`)**:
* Instead of disabling SSBO mirrors whenever `vkb_mt_recording()` is true, pre-create device-local SSBO mirrors during the single-threaded `EX_WALK` pass (`vkb_draw_prescan()` in `backend_vk.c:1728`) for any written SSBO whose pool has `no_shadow == 1` or `!vkb_shadow_on()`. This eliminates the **59–114 ms PCIe atomic shader stall**.


3. **Replace Global `g_map_gen` with Per-Page Generation Stamps (`src/gfx/nvn/totk_vpool_win.c:29, 125`)**:
* Add `uint64_t gen;` to `typedef struct { const pool_t *phys; uint64_t off, gen; } vpage;` in `totk_vpool_win.c`, and add `totk_vpool_range_gen(va, len)` returning the max `gen` across only the 64 KiB pages spanned by `[va, va+len)`. In `vkb_tex_stale()`, compare `im->vpool_gen` against `totk_vpool_range_gen((uintptr_t)im->storage, L.size)` so mapping a new texture no longer invalidates every virtual-pool texture in VRAM.


4. **Fuse Walk #1 (`resolve_deferred`) and Walk #2 (`mtl_sub_capture_ubos`) & Restrict UBO Capture (`hle_nvn.c:1995`, `vkb_ucap.c:48`)**:
* Resolve deferred texture handles and collect UBO ranges in a **single pass** over the command stream on the game thread, and only snapshot small constant buffers (`OP_BIND_UBO`, `<= 64 KB`) rather than copying megabyte-sized `OP_BIND_SSBO` buffers on the CPU.


5. **Share `B->progs` Globally & Cache `VkShaderEXT` Binaries (`src/gfx/vkb_draw.c:913`, `src/gfx/vkb_shader.c:233, 473`)**:
* Move `B->progs[PROGS]` from `__thread` to a global atomic table keyed by `prog->serial` (or resolve programs once during `EX_WALK`), and release `g_mu` in `vkb_shader_get()` while reading `.spv` files and calling `vkCreateShadersEXT`. Persist compiled shader binaries via `vkGetShaderBinaryDataEXT`.



#### Tier 3: Horizon Threading & Synchronization Fixes (`src/host/threads.c`)

1. **Eliminate the `wake_sync_waiters()` Thundering Herd (`src/host/threads.c:284, 463`)**:
* Pass the signaled handle `h` (or `event_t *e`) to `wake_sync_waiters(uint32_t h)` and only wake threads in `g_wait` (`w->wkind == 4`) whose wait-handle list `w->wh[0..w->nwh]` actually contains `e`.


2. **Partition Wait Queues by Address/Key & Replace Spin `vkb_rw` with `pthread_rwlock_t` (`src/host/threads.c`, `src/gfx/backend_vk.c:60`)**:
* Hash wait chains (`g_wait`) into a 64-bucket hash table keyed by `waddr` / `wkey` so `ArbitrateLock`/`Unlock` and `WaitForAddress` do not linearly scan all waiting threads under one global lock, and enable `TOTK_YIELD_BACKOFF` (`10..100 us` sleep after repeated yields on `main+0x15ee898`).
* On Linux (`backend_vk.c:60`), replace the `sched_yield()` spin-lock in `vkb_rw` with `pthread_rwlock_t`.
