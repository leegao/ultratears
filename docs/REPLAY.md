# UltraTears Frame Capture (`vkb_capture`) & Standalone Replayer (`replay_frame`) Design Document

## 1. Overview & Motivation

Profiling and optimizing GPU performance inside a full Nintendo Switch recompiled title (*The Legend of Zelda: Tears of the Kingdom*) presents three major engineering challenges:

1. **Long Reproduction Cycles**: Reaching a heavy rendering scene (such as Frame 900 in the Lookout Landing / Hyrule Field sequence) requires booting the game, initializing Horizon OS services, compiling thousands of shaders, and running hundreds of frames of guest CPU logic.
2. **CPU vs. GPU Noise**: During live gameplay, host CPU thread scheduling, AArch64-to-x86_64 lifted code execution, background ASTC/BC7 texture transcoding, and background shader prewarming introduce high variance into frame timings, masking 0.1–0.5 ms shader optimizations.
3. **Opaque Command Streams**: NVN command buffers are recorded by the guest into raw virtual memory and reference guest virtual addresses, descriptor pools, runtime-pinned host texture structs, and cross-frame temporal render targets.

To solve this, UltraTears implements a two-part subsystem:
- **`vkb_capture`** ([`src/gfx/vkb_capture.c`](../src/gfx/vkb_capture.c), [`src/gfx/vkb_capture.h`](../src/gfx/vkb_capture.h)): An in-engine frame state serializer that intercepts a target frame at the exact NVN submission and presentation boundaries, writing a self-contained snapshot of all GPU-visible memory, command trees, descriptors, render targets, and SPIR-V shaders.
- **`replay_frame`** ([`src/replay/`](../src/replay/)): A standalone, modular Vulkan replay and benchmarking harness that reconstructs the captured state *without* starting the guest CPU or Horizon OS runtime. It replays the exact NVN submission in an isolated loop (`--bench N`), collects hardware `VkQueryPool` GPU timestamps per render pass, and reports statistical distributions (`Runs`, `Avg`, `Min`, `p50`, `p75`, `p90`, `p99`, `Max`).

---

## 2. End-to-End Architecture

```
+-----------------------------------------------------------------------------------+
|                        LIVE ENGINE CAPTURE (UltraTears)                           |
|                                                                                   |
|  TOTK_FRAME_CAPTURE=900:totk_dump/frame900                                        |
|                                                                                   |
|  1. nvnQueueSubmitCommands() -> mtl_submit() -> vkb_capture_frame()               |
|     +-- vkb_slabs_get()         -> slabs.txt + slabs/slab_*.bin (SLABSPAR)        |
|     +-- capture_handle_tree()   -> commands/manifest.txt + commands/cmd_*.bin     |
|     +-- vkb_registries_dump()   -> treg.bin + sreg.bin                            |
|     +-- vkb_ucap_dump_save()    -> ucap.bin                                       |
|     +-- vkb_images_dump()       -> images.meta + textures/tex_*.bin               |
|     +-- hle_nvn_pin_dump()      -> pinned_textures.bin                            |
|     +-- vkb_shader_dump_all()   -> shaders/<sha256>.spv + <sha256>.res.json       |
|                                                                                   |
|  2. nvnQueuePresentTexture() -> mtl_present() -> vkb_capture_present()            |
|     +-- Serializes target texture serial & viewport crop -> present.meta          |
+-----------------------------------------------------------------------------------+
                                         |
                                         v
+-----------------------------------------------------------------------------------+
|                      STANDALONE REPLAYER (build/replay_frame)                     |
|                                                                                   |
|  1. Setup Phase (src/replay/setup.c)                                              |
|     +-- mmap(MAP_FIXED) each [lo, hi) slab & unpack non-zero 64 KiB blocks        |
|     +-- Register slabs via mtl_pool_add() -> VK_EXT_external_memory_host          |
|     +-- Restore treg.bin & sreg.bin (clearing stale VkSampler handles)            |
|     +-- Reconstruct VkImages from images.meta & upload prior-frame VRAM contents  |
|     +-- Load pinned_textures.bin -> build old_host_ptr -> new_tex_t lookup map    |
|     +-- Load cmd_*.bin -> rewrite OP_CALL targets & OP_SET_RT tex_t* pointers     |
|                                                                                   |
|  2. Warm-Up Phase (src/replay/bench.c)                                            |
|     +-- Execute 1 untimed pass to upload lazy textures & compile SPIR-V objects   |
|                                                                                   |
|  3. Benchmark & Statistical Pass Profiling Loop (src/replay/bench.c)              |
|     +-- For iter = 1..N:                                                          |
|         +-- Clone ucap snapshot via vkb_ucap_clone()                              |
|         +-- Execute NVN command stream (mtl_sub_begin -> mtl_exec -> mtl_present) |
|         +-- Read hardware VkQueryPool timestamps via vkb_passprof_collect()       |
|     +-- Optional offscreen readback via vkb_screenshot_save() -> BMP              |
|     +-- Compute & print per-pass and frame-wide percentiles (p50, p75, p90, p99)  |
+-----------------------------------------------------------------------------------+
```

---

## 3. Component Design & Technical Rationales

### 3.1 Host Memory Slabs (`vkb_slabs_get`, `los` / `his`, and `MAP_FIXED`)

#### What `vkb_slabs_get` Does
In [`src/gfx/backend_vk.c`](../src/gfx/backend_vk.c), guest memory pools (`NVNmemoryPool`) are consolidated into coarse 128 MiB-aligned host slabs (`host_slab g_slabs[]`) imported into Vulkan via `VK_EXT_external_memory_host` (`vkImportMemoryHostPointerEXT`).
[`vkb_slabs_get(uintptr_t **los, uintptr_t **his, int *count)`](../src/gfx/backend_vk.c#L396-L413) acquires `g_pool_mu` and returns the exact start (`lo`, inclusive) and end (`hi`, exclusive) 64-bit virtual addresses `[lo, hi)` of every active host slab.

#### Why `los` and `his` Are Required
NVN is a bindless/gpu-address-driven API:
- Command records (`OP_BIND_VBUF`, `OP_BIND_UBO`, `OP_BIND_SSBO`, `OP_DRAW_IDX`) contain raw 64-bit virtual addresses (`NVNbufferAddress`) pointing directly into the guest's virtual address space (e.g., `0x1030000000..0x1058000000`, `0x1070000000..0x10b0000000`, `0x7040000000..0x7078000000`).
- Furthermore, **guest shaders dereference pointers stored *inside* uniform and storage buffers** (e.g., `VKB_SB_UBO_PTR` in [`src/gfx/vkb_shader.h`](../src/gfx/vkb_shader.h), where the NVN driver constant bank `c0` or game UBOs hold 64-bit buffer addresses).
- Because these pointers are embedded inside binary buffer payloads, relocating slabs to arbitrary `malloc()` addresses in the replayer is impossible without decompiling every shader's memory layout.
- By recording `[lo, hi)` for each slab and calling `mmap((void *)lo, hi - lo, PROT_READ | PROT_WRITE, MAP_PRIVATE | MAP_ANONYMOUS | MAP_FIXED, -1, 0)` in [`src/replay/setup.c`](../src/replay/setup.c), every guest buffer, vertex stream, index array, and indirect pointer resolves at its exact original virtual address with zero translation overhead.

#### Why Deferred Buffer Destruction (`vkb_destroy_buffer_later`) Is Needed During Slab Consolidation
When a newly created `NVNmemoryPool` touches or overlaps an existing slab in `mtl_pool_add()`, [`src/gfx/backend_vk.c`](../src/gfx/backend_vk.c#L282-L296) expands the slab range `[slo, shi)` and subsumes any smaller slabs contained within `[slo, shi)`.
Previously, subsumed slabs had their `VkBuffer` and `VkDeviceMemory` destroyed immediately via `vkDestroyBuffer`. However, earlier submissions still executing asynchronously on the GPU (or open command buffers on worker threads) still held references to those `VkBuffer` handles, triggering `radv/amdgpu: The CS has been cancelled ... VK_ERROR_DEVICE_LOST`. Routing subsumed slab buffers through [`vkb_destroy_buffer_later()`](../src/gfx/backend_vk.c#L465-L473) attaches them to the current submission's `dead` list so they are only destroyed after the GPU retirement fence completes.

#### 64 KiB Sparse Zero-Compaction (`SLABSPAR`)
Although the 3 consolidated slabs in Frame 900 span 2,560 MiB of virtual address space (`640 MiB + 896 MiB + 1024 MiB`), over 54% of those pages are untouched zeros.
Writing raw bytes produced 2.56 GiB of disk files per frame. [`write_slab_sparse()`](../src/gfx/vkb_capture.c#L109-L143) divides each slab into 64 KiB (`65,536`-byte) blocks, skips all-zero blocks, and writes a `SLABSPAR` header followed only by non-zero `(block_index, data)` pairs:
- `slab_0.bin`: 640.0 MiB virtual -> **96.8 MiB** on disk (85% reduction)
- `slab_1.bin`: 896.0 MiB virtual -> **493.0 MiB** on disk (45% reduction)
- `slab_2.bin`: 1024.0 MiB virtual -> **578.8 MiB** on disk (43.5% reduction)
- **Total**: **2,560.0 MiB -> 1,168.6 MiB** (saving **1.36 GiB** of disk space and I/O per captured frame).
During replay, `mmap(MAP_ANONYMOUS | MAP_FIXED)` provides zero-filled pages from the OS kernel by default, so [`load_slab_file()`](../src/replay/setup.c#L40-L61) only populates the non-zero 64 KiB blocks, leaving zero regions un-faulted. For backwards compatibility, if a slab file does not begin with `SLABSPAR`, the loader falls back to reading raw contiguous bytes.

---

### 3.2 Pinned Host Textures (`hle_nvn_pin_dump` & `pinned_textures.bin`)

#### Why `hle_nvn_pin_dump` Is Required
When the guest records `nvnCommandBufferSetRenderTargets`, the HLE layer ([`src/gfx/nvn/hle_nvn.c`](../src/gfx/nvn/hle_nvn.c#L1280-L1286)) cannot store the raw guest `NVNtexture *` pointer in `OP_SET_RT` because the guest game engine frequently reuses or overwrites stack/temporary `NVNtexture` structs before the command buffer is submitted.
Instead, `hle_nvn.c` calls `tex_pin(ct[i])`, which snapshots the `tex_t` descriptor into a host-heap hash table (`g_pin_tab[]`) and writes the **host heap pointer** `&g_pin_tab[i]->t` directly into the `p_set_rt` payload (`r->color[i]` and `r->depth`).

When replaying `cmd_*.bin` in a separate `replay_frame` process, those host heap pointers (e.g., `0x70e888208480`) are invalid and would immediately `SIGSEGV` inside `vkb_image_of()`.
- [`hle_nvn_pin_dump()`](../src/gfx/nvn/hle_nvn.c#L1279-L1294) serializes every live entry in `g_pin_tab` as `(uint64_t old_host_ptr, tex_t tex_snapshot)` into `pinned_textures.bin`.
- On startup, [`load_pinned_textures()`](../src/replay/setup.c#L125-L150) allocates new `tex_t` instances and builds a lookup table `g_pin_map[]`.
- When loading command buffers, [`load_commands()`](../src/replay/setup.c#L202-L227) scans every `OP_SET_RT` instruction and rewrites `rt->color[c]` and `rt->depth` from `old_host_ptr` to the new `tex_t *` in `replay_frame`.

---

### 3.3 Command Handle Call Graph (`commands/manifest.txt` & `cmd_*.bin`)

NVN command buffers support nested execution via `nvnCommandBufferCallCommands` (`OP_CALL`), where a top-level command buffer embeds 64-bit host pointers to secondary recorded command streams.
- [`capture_handle_recursive()`](../src/gfx/vkb_capture.c#L60-L92) performs a depth-first traversal starting from the `n` top-level handles passed to `nvnQueueSubmitCommands`, discovering every reachable child recording and assigning each unique stream a dense integer ID (`0 .. g_ncmd_hands - 1`).
- During replay, [`load_commands()`](../src/replay/setup.c#L152-L239) prepends the 32-byte `copy_prefix` header (`magic = "CMDCOPY"`) expected by the Vulkan command walker and patches every `OP_CALL` target address from its capture-time address (`old_addr`) to its newly allocated buffer (`lh[j].new_ptr`).

---

### 3.4 Texture & Sampler Registries (`treg.bin` & `sreg.bin`)

Bindless textures and samplers in TOTK are referenced by 20-bit texture IDs and 12-bit sampler IDs packed into 64-bit handles.
- [`vkb_registries_dump()`](../src/gfx/vkb_draw.c#L278-L286) serializes `g_treg` (`treg_t[]`) and `g_sreg` (`sreg_t[]`).
- **Crucial Fix on Load**: `sreg_t` contains a `VkSampler s` handle created by the capture process's `VkDevice`. In [`vkb_registries_load()`](../src/gfx/vkb_draw.c#L288-L303), every `g_sreg[i].s` is explicitly reset to `VK_NULL_HANDLE` so the replayer lazily creates valid `VkSampler` handles on its own `VkDevice` rather than passing foreign driver pointers into `vkGetDescriptorEXT`.

---

### 3.5 Uniform Buffer Snapshots (`ucap.bin` & `vkb_ucap_clone`)

In live gameplay, TOTK reuses uniform buffer memory on CPU worker threads immediately after `nvnQueueSubmitCommands` returns. To prevent CPU/GPU data races, [`src/gfx/vkb_ucap.c`](../src/gfx/vkb_ucap.c) snapshots all bound uniform and storage buffer ranges (`[lo, hi)`) at submit time into a `ucap` structure.
- [`vkb_ucap_dump_save()`](../src/gfx/vkb_ucap.c#L242-L255) serializes the sorted disjoint ranges and their captured byte payloads to `ucap.bin`.
- **Why `vkb_ucap_clone()` Is Needed**: During replay, `mtl_sub_snapshot_ubos_cap()` uploads the `ucap` payload into the current submission slot's ring buffer and **frees** the `ucap` struct at the end of the submission. For `--bench N` (where `N > 1`), passing the original pointer would cause a use-after-free on iteration 2. [`vkb_ucap_clone()`](../src/gfx/vkb_ucap.c#L259-L275) deep-copies the snapshot at the start of each iteration.

---

### 3.6 Active GPU Images (`images.meta` & `textures/tex_<serial>.bin`)

While static packaged textures reside in the guest memory slabs (and are uploaded lazily or from the BC7 cache), **GPU-written render targets** from earlier frames (such as temporal anti-aliasing history buffers, cloud/atmosphere LUTs, and cached shadow maps) only exist in device-local `VkImage` memory.
- [`vkb_images_dump()`](../src/gfx/vkb_tex.c#L1517-L1576) iterates over all live `vkb_image` entries (`g_all`), writes their descriptors to `images.meta`, and for any image with `gpu_written != 0`, records a `vkCmdCopyImageToBuffer` readback to `textures/tex_<serial>.bin`.
- [`vkb_images_load()`](../src/gfx/vkb_tex.c#L1578-L1626) recreates the `VkImage` objects and uploads the saved pixel contents via staging buffers before the first replay iteration.

---

### 3.7 Self-Contained Shader Bundle (`<frame_dir>/shaders/`)

Rather than relying on a hardcoded external path (`data/shaders/ryujinx`), [`vkb_shader_dump_all()`](../src/gfx/vkb_shader.c#L550-L590) exports both the `.spv` binary and `.res.json` reflection file for every loaded shader in `g_tab` directly into `<frame_dir>/shaders/`.
- When `replay_frame` starts, [`replay_parse_args()`](../src/replay/args.c#L54-L66) automatically configures `<frame_dir>/shaders` as the primary shader directory (unless overridden by `--shader-dir <dir>`).
- Furthermore, if a user runs `replay_frame` on an older capture directory that lacks `shaders/`, [`ensure_bundled_shaders()`](../src/replay/bench.c#L82-L90) automatically populates `<frame_dir>/shaders/` after the warm-up pass.

---

### 3.8 Presentation Metadata (`present.meta`) & Offscreen Screenshot (`--shot`)

At the end of a frame, `nvnQueuePresentTexture` specifies which `NVNtexture` is presented to the swapchain along with a 4-integer crop rectangle.
- [`vkb_capture_present()`](../src/gfx/vkb_capture.c#L240-L258) writes `serial=<u64>` and `crop=<x>,<y>,<w>,<h>` to `present.meta`.
- In headless mode (`--headless` or without `DISPLAY`), `vkp_acquire_direct()` has no swapchain surface and returns `0`. To support `--shot <file.bmp>` in both headless and windowed modes, [`vkb_screenshot_save()`](../src/gfx/backend_vk.c#L1568-L1662) performs a direct `vkCmdCopyImageToBuffer` readback from `vkb_image_of(&target_tex)` into a `HOST_VISIBLE | HOST_COHERENT` buffer, swizzles `RGBA -> BGRA` if the image format is `VK_FORMAT_R8G8B8A8_*`, and writes a top-down 32-bit uncompressed Windows BMP file.

---

## 4. Binary & Text Serialization Specifications

Every captured frame directory (`<frame_dir>/`) contains the following layout:

```
<frame_dir>/
+-- slabs.txt
+-- slabs/
|   +-- slab_0.bin
|   +-- slab_1.bin
|   +-- ...
+-- commands/
|   +-- manifest.txt
|   +-- cmd_0.bin
|   +-- ...
+-- treg.bin
+-- sreg.bin
+-- ucap.bin
+-- pinned_textures.bin
+-- images.meta
+-- textures/
|   +-- tex_<serial>.bin
|   +-- ...
+-- shaders/
|   +-- <sha256>.spv
|   +-- <sha256>.res.json
|   +-- ...
+-- present.meta
```

### 4.1 `slabs.txt` (ASCII Text)
Line 1 contains the slab count `N`. Each subsequent line describes one slab:
```
<nslabs>
<idx> 0x<lo_hex> 0x<hi_hex> <size_dec> slab_<idx>.bin
```
Example (`totk_dump/frame900/slabs.txt`):
```
3
0 0x1030000000 0x1058000000 671088640 slab_0.bin
1 0x7040000000 0x7078000000 939524096 slab_1.bin
2 0x1070000000 0x10b0000000 1073741824 slab_2.bin
```

### 4.2 `slabs/slab_<idx>.bin` (Little-Endian Binary, `SLABSPAR`)
| Offset | Type | Field | Description |
| :--- | :--- | :--- | :--- |
| `0x00` | `uint64_t` | `magic` | `0x534c414253504152` (`"SLABSPAR"`) |
| `0x08` | `uint64_t` | `total_size` | Full virtual size (`hi - lo`) in bytes |
| `0x10` | `uint32_t` | `block_size` | Block granularity (`65536` = 64 KiB) |
| `0x14` | `uint32_t` | `non_zero_blocks` | Count `M` of non-zero blocks following header |
| `0x18` | `block_rec[M]` | `blocks` | `M` records of `{ uint32_t block_idx; uint8_t data[cur_sz]; }` |

### 4.3 `commands/manifest.txt` (ASCII Text) & `commands/cmd_<id>.bin` (Binary)
```
top_count=<T> total_handles=<H>
top <0..T-1> <handle_id>
...
handle <id> 0x<old_addr_hex> <byte_size> cmd_<id>.bin
```
Each `cmd_<id>.bin` contains a contiguous stream of 8-byte-aligned NVN HLE command packets (`op_hdr { uint32_t op, size; }` followed by payload bytes, terminated by `OP_END`).

### 4.4 `treg.bin` & `sreg.bin` (Little-Endian Binary)
- **`treg.bin`**:
  | Offset | Type | Field | Description |
  | :--- | :--- | :--- | :--- |
  | `0x00` | `uint32_t` | `nt` | Number of texture registry slots (`g_ntreg`) |
  | `0x04` | `treg_t[nt]` | `entries` | Raw array of `treg_t` structs (`sizeof(treg_t) * nt`) |
- **`sreg.bin`**:
  | Offset | Type | Field | Description |
  | :--- | :--- | :--- | :--- |
  | `0x00` | `uint32_t` | `ns` | Number of sampler registry slots (`g_nsreg`) |
  | `0x04` | `sreg_t[ns]` | `entries` | Raw array of `sreg_t` structs (`s` cleared to `VK_NULL_HANDLE` on load) |

### 4.5 `ucap.bin` (Little-Endian Binary)
| Offset | Type | Field | Description |
| :--- | :--- | :--- | :--- |
| `0x00` | `uint32_t` | `n` | Number of captured disjoint UBO/SSBO ranges |
| `0x04` | `uint64_t` | `done` | Completed GPU submission fence at capture time |
| `0x0C` | `rng[n]` | `r` | `n` pairs of `{ uint64_t lo, hi; }` (`16 * n` bytes) |
| `0x0C + 16*n` | `size_t[n]` | `off` | Byte offset of each range inside `bytes` (`8 * n` bytes) |
| `0x0C + 24*n` | `size_t` | `total` | Total payload byte length |
| `0x14 + 24*n` | `uint8_t[total]` | `bytes` | Concatenated raw uniform/storage buffer contents |

### 4.6 `pinned_textures.bin` (Little-Endian Binary)
| Offset | Type | Field | Description |
| :--- | :--- | :--- | :--- |
| `0x00` | `uint32_t` | `count` | Number of pinned textures `P` in `g_pin_tab` |
| `0x04` | `pin_rec[P]` | `records` | `P` records of `{ uint64_t old_host_ptr; tex_t tex; }` |

### 4.7 `images.meta` & `textures/tex_<serial>.bin` (Little-Endian Binary)
| Offset | Type | Field | Description |
| :--- | :--- | :--- | :--- |
| `0x00` | `uint32_t` | `count` | Number of active `vkb_image` objects `K` |
| `0x04` | `vkb_image_meta[K]` | `meta` | `K` metadata descriptors (serial, dimensions, `VkFormat`, `has_pixels`, `pixel_bytes`) |

When `meta[i].has_pixels == 1`, `textures/tex_<serial>.bin` contains `meta[i].pixel_bytes` of raw linear image data.

### 4.8 `present.meta` (ASCII Text)
```
serial=<target_tex_serial>
crop=<x>,<y>,<width>,<height>
```

---

## 5. Modular Replayer Architecture (`src/replay/`)

The standalone replayer is organized in [`src/replay/`](../src/replay/) and built into `build/replay_frame`:

| File | Responsibility |
| :--- | :--- |
| [`src/replay/replay.h`](../src/replay/replay.h) | Shared option structs (`replay_opts`), frame state (`replay_state`), and module interfaces. |
| [`src/replay/main.c`](../src/replay/main.c) | Entry point: coordinates CLI parsing, SDL/Vulkan initialization, frame loading, benchmark execution, and cleanup. |
| [`src/replay/args.c`](../src/replay/args.c) | Parses `--bench`, `--passprof`, `--no-passprof`, `--shader-dir`, `--shot`, `--headless`; configures shader lookup paths and disables background prewarm noise (`TOTK_SHADER_PREWARM=0`). |
| [`src/replay/setup.c`](../src/replay/setup.c) | Maps fixed-address slabs (`SLABSPAR` & raw), restores registries, images, pinned textures, UCAP snapshots, and patches `OP_CALL` / `OP_SET_RT` command streams. |
| [`src/replay/bench.c`](../src/replay/bench.c) | Executes a 1-frame warm-up pass followed by `N` timed iterations, aggregates per-pass hardware `VkQueryPool` timestamps via `vkb_passprof_collect()`, saves `--shot` BMPs, and computes statistical percentiles. |
| [`src/replay/stubs.c`](../src/replay/stubs.c) | Provides minimal runtime and HLE stubs (`runtime_now_ns`, `guest_cpu`, etc.) so the Vulkan backend links without the guest CPU recompiler. |

---

## 6. Statistical GPU Pass Profiling & Shader Benchmarking Workflow

### 6.1 Why Hardware Timestamp Statistics Are Used Instead of Host Wall Time
Host wall time includes CPU command recording, descriptor buffer updates, and kernel `drm_ioctl` submission overhead. Furthermore, on the very first execution of a captured frame, the backend uploads 146 guest textures on demand (which splits render passes from 186 into 331) and compiles 441 SPIR-V shaders.

To eliminate these artifacts:
1. **Warm-Up Pass**: `replay_run_benchmark()` executes 1 full warm-up frame before starting measurements. All lazy texture uploads complete and all `VkShaderEXT` objects are compiled.
2. **Hardware `VkQueryPool` Timestamps**: Every render pass records `VK_PIPELINE_STAGE_2_TOP_OF_PIPE_BIT` at `vkCmdBeginRendering` and `VK_PIPELINE_STAGE_2_BOTTOM_OF_PIPE_BIT` at `vkCmdEndRendering`.
3. **Multi-Iteration Statistical Aggregation**: Across `N` runs (`--bench N`), `bench.c` collects the `N x 186` matrix of GPU pass durations and computes `Avg`, `Min`, `p50` (median), `p75`, `p90`, `p99`, and `Max` for every individual pass as well as frame-wide totals (`GPU In-Pass Execution`, `GPU Inter-Pass Gaps`, `GPU Total Frame Span`, and `Host Replay Wall Time`).

### 6.2 Usage Examples

#### Capture Frame 900 from UltraTears
```bash
TOTK_FRAME_CAPTURE=900:totk_dump/frame900 TOTK_FRAME_CAPTURE_EXIT=1 ./UltraTears
```

#### Run a 30-Iteration Statistical GPU Pass Benchmark & Save Screenshot
```bash
./build/replay_frame totk_dump/frame900 --bench 30 --passprof --headless --shot frame900.bmp
```

Sample output on AMD Radeon Graphics (RADV RENOIR):
```text
=== GPU Pass Profile Statistics (186 passes, 30 runs) ===
  Pass  Dimensions  Targets (fmt/d)    Draws  FS Key        |     Avg     Min     p50     p75     p90     p99     Max
  ------------------------------------------------------------------------------------------------------------------------
    22  1600x896    6c(0x25) d0x34        452 cf01e9c9986d  |   1.700   1.558   1.661   1.760   1.911   2.022   2.023 ms
   153  1600x896    1c(0x3f) d0x32         11 2337417158a6  |   1.401   1.315   1.379   1.439   1.494   1.660   1.696 ms
    35  1600x896    8c(0x25) d0x34          1 fcd1a8d9b318  |   1.340   1.261   1.321   1.366   1.420   1.575   1.623 ms
   183  1920x1080   1c(0x3f) d0             1 ac58fc18eda5  |   0.917   0.878   0.897   0.908   0.992   1.081   1.100 ms
   135  800x448     8c(0x25) d0x32          1 956c2c073ac2  |   0.783   0.738   0.775   0.791   0.843   0.882   0.885 ms

=== Frame Timing Summary (30 runs) ===
  Metric                     |  Runs |      Avg      Min      p50      p75      p90      p99      Max
  ---------------------------------------------------------------------------------------------------
  GPU In-Pass Execution      |    30 |   18.429   17.755   18.259   18.666   19.256   19.959   19.965 ms
  GPU Inter-Pass Gaps        |    30 |    2.908    2.639    2.862    3.001    3.131    3.517    3.557 ms
  GPU Total Frame Span       |    30 |   21.338   20.395   21.050   21.453   22.511   23.344   23.501 ms
  Host Replay Wall Time      |    30 |   62.962   55.815   60.443   61.922   64.946  108.858  123.741 ms
```

#### Benchmarking Modified or Optimized SPIR-V Shaders
```bash
mkdir -p my_shaders
cp totk_dump/frame900/shaders/cf01e9c9986d* my_shaders/
spirv-opt -O my_shaders/cf01e9c9986d*.spv -o my_shaders/cf01e9c9986d*.spv

./build/replay_frame totk_dump/frame900 --shader-dir my_shaders --bench 30 --passprof --headless
```

#### Running the Automated Test Suite
```bash
python3 src/replay/tests/test_replay.py
```

---

## 7. Transitive Reference Compactor & Copyright-Free Bundling (`--compact`)

### 7.1 Motivation: Distribution & Lightweight CI Testing
A full raw frame capture (`totk_dump/frame900`) is large (~1.3 GB sparse, 2.56 GB uncompressed) and contains proprietary, copyrighted Nintendo Switch game assets (textures and surfaces in `textures/tex_*.bin`). Storing such dumps directly in version control or running them in CI environments is impractical and legally problematic.

To make standalone frame replays lightweight, distributable, and copyright-free, `replay_frame` includes a built-in static analysis and compaction engine ([`src/replay/compact.c`](../src/replay/compact.c)):

```bash
./build/replay_frame totk_dump/frame900 \
    --compact src/replay/tests/sample_frame \
    --compact-passes 5 \
    --fake-textures
```

### 7.2 Compaction Pipeline & Transitive Reference Walking

```
+-----------------------------------------------------------------------------------------+
|                              COMPACTOR PIPELINE (compact.c)                             |
|                                                                                         |
|  1. Command Stream Pass Truncation                                                      |
|     cmd_0.bin --[Scan OP_SET_RT / OP_BARRIER / OP_DISPATCH]--> Truncate at Pass N       |
|     Append OP_END (size=8) & identify last active color render target serial            |
|                                                                                         |
|  2. Direct Reference Extraction                                                         |
|     - OP_BIND_VBUF: span_add(&refs, addr, size)                                         |
|     - OP_DRAW_IDX:  span_add(&refs, addr, count * index_size)                           |
|     - OP_COPY_B2B:  span_add(&refs, src, len); span_add(&refs, dst, len)                |
|     - OP_UPDATE_UB: span_add(&refs, dst, len)                                           |
|     - OP_BIND_UBO / OP_BIND_SSBO: span_add(&refs, addr, size); span_add(&ubo_refs, ...)  |
|                                                                                         |
|  3. Transitive Pointer Dereferencing                                                    |
|     For each UBO/SSBO payload:                                                          |
|     Scan 8-byte aligned words for 64-bit pointers pointing into [lo, hi) slabs.         |
|     Add transitively referenced memory ranges to referenced span list.                  |
|                                                                                         |
|  4. Active Shader Resolution & Extraction                                               |
|     Parse OP_BIND_PROGRAM records -> prog_t -> NVNshaderData[6]                         |
|     Extract control (0x880 header) and data blocks -> sha256_hex()                      |
|     Filter used SPIR-V shaders: copy only active .spv and .res.json to out_dir/shaders  |
|                                                                                         |
|  5. Memory Slab Sparse Block Compaction (SLABSPAR)                                      |
|     For each 64 KiB block in slabs:                                                     |
|     If block intersects [ref.lo, ref.hi) AND contains non-zero data -> write to disk.   |
|     Unreferenced and zero blocks are completely omitted.                                |
|                                                                                         |
|  6. Snapshot (UCAP) Compaction                                                          |
|     Filter ucap.bin entries to only those overlapping referenced UBO spans.             |
|                                                                                         |
|  7. Texture Stripping / Copyright-Free Mode (--fake-textures)                           |
|     In images.meta: set has_pixels = 0 and pixel_bytes = 0.                             |
|     Omit all textures/ directory files. Replayer creates blank dummy VkImages.          |
+-----------------------------------------------------------------------------------------+
```

### 7.3 Results on Sample Frame (`src/replay/tests/sample_frame`)
Applying `--compact src/replay/tests/sample_frame --compact-passes 5 --fake-textures` to Frame 900 yields:

| Artifact | Full Frame Capture | Compacted Sample Frame | Reduction |
| :--- | :--- | :--- | :--- |
| **Render Passes** | 186 passes | 5 passes (Pass 0–4) | -97.3% |
| **Draws** | 1,846 draws | 156 draws | -91.5% |
| **Memory Slabs** | 2,560.0 MiB virtual (1,168.6 MiB disk) | 1.94 MiB disk | **99.8%** |
| **Shaders** | 441 SPIR-V shaders | 10 active shaders | -97.7% |
| **UCAP Snapshots** | 1,764 ranges (220 KB) | 162 ranges (20 KB) | -90.8% |
| **Texture Binaries** | ~120 MiB | **0 bytes** (100% stripped) | **100%** |
| **Total Test Directory** | > 1.3 GB | **~7.1 MiB** (dominated by metadata tables) | **99.5%** |

This compacted sample frame executes without warning, passes all assertion tests in [`src/replay/tests/test_replay.py`](../src/replay/tests/test_replay.py), runs in ~4.6 seconds, and produces valid rendered output without distributing copyrighted materials.

---

## 8. Lavapipe (`lvp`) Software Rasterizer Support & `VK_EXT_shader_object` Emulation

### 8.1 Lavapipe Compatibility Overview
On headless CI machines, CPU-only servers, and debugging environments lacking discrete GPU hardware, Vulkan rendering is driven by Mesa's Lavapipe (`llvmpipe`, LLVM JIT rasterizer):
```bash
VK_DRIVER_FILES=/usr/share/vulkan/icd.d/lvp_icd.x86_64.json ./build/replay_frame totk_dump/frame900 --bench 5 --passprof
```

Lavapipe presents a unique set of Vulkan 1.3 capabilities:
- **No `VK_EXT_shader_object`**: Vulkan drivers historically require monolithic `VkPipeline` objects. `replay_frame` natively implements a transparent shader object emulation layer using `VkShaderModule` and a fast 64-bit hashed `VkPipeline` cache.
- **Dynamic State Support**: The emulation binds 36 dynamic states (`VK_DYNAMIC_STATE_VIEWPORT`, `SCISSOR`, `LINE_WIDTH`, `DEPTH_BIAS`, `BLEND_CONSTANTS`, `DEPTH_BOUNDS`, `STENCIL_COMPARE_MASK`, `STENCIL_WRITE_MASK`, `STENCIL_REFERENCE`, `CULL_MODE`, `FRONT_FACE`, `PRIMITIVE_TOPOLOGY`, `VIEWPORT_WITH_COUNT`, `SCISSOR_WITH_COUNT`, `VERTEX_INPUT_BINDING_STRIDE`, `DEPTH_TEST_ENABLE`, `DEPTH_WRITE_ENABLE`, `DEPTH_COMPARE_OP`, `DEPTH_BOUNDS_TEST_ENABLE`, `STENCIL_TEST_ENABLE`, `STENCIL_OP`, `RASTERIZER_DISCARD_ENABLE`, `DEPTH_BIAS_ENABLE`, `PRIMITIVE_RESTART_ENABLE`, `COLOR_WRITE_ENABLE_EXT`, etc.) via `VK_DYNAMIC_STATE_*`.
- **Optional Feature Guarding (`extendedDynamicState2LogicOp`)**:
  - `VK_EXT_extended_dynamic_state2` specifies `extendedDynamicState2LogicOp` as an optional device feature. Lavapipe does not implement this feature, leaving `vkCmdSetLogicOpEXT` and `vkCmdSetLogicOpEnableEXT` as `NULL`.
  - In `src/gfx/vkb_draw.c`, dynamic state dispatch is guarded by `if (vk.vkCmdSetLogicOpEXT)` and `if (vk.vkCmdSetLogicOpEnableEXT)`, preventing null pointer dereferences when running on software rasterizers.
- **Robust Combined Sampler Fallbacks**:
  - Lavapipe validates all descriptor bindings rigorously. Empty descriptor array slots in set 0 are pre-populated with dummy sampler and view handles to avoid null pointer dereferences inside LLVM JIT code generation.
- **File-Backed Slab Paging**:
  - Guest memory slabs totaling 2,560 MiB (`slab_0.bin`, `slab_1.bin`, `slab_2.bin`) are mapped via file-backed `mmap(MAP_PRIVATE | MAP_FIXED, fileno(fb), 0)` rather than anonymous `fread`, keeping resident memory (RSS) well below strict cgroup / container memory limits.

---

## 9. Renderpass & Shader Bottleneck Reverse-Engineering

Profiling Frame 900 reveals the dominant GPU pass bottlenecks:

```
=== GPU Pass Profile: 158 passes, 2337.82 ms in passes, 6142.67 ms gaps, 8480.49 ms total span ===
  657.222 ms  pass   41  1600x896  8 colour (fmt 0x25) depth 0x34   2 draws  fs 61315f715cdf
  656.180 ms  pass  119  800x448   8 colour (fmt 0x25) depth 0x32   3 draws  fs 37bb03a99ff3
  301.835 ms  pass  130  1600x896  1 colour (fmt 0x3f) depth 0x32   1 draws  fs 233dfb9398ef
  189.155 ms  pass  133  800x448   1 colour (fmt 0x29) depth 0x34  64 draws  fs 4c6065f492ad
  126.240 ms  pass  157  1920x1080 1 colour (fmt 0x3f) depth 0     93 draws  fs 309199f103aa
   48.302 ms  pass  121  800x448   8 colour (fmt 0)    depth 0x32   1 draws  fs b117e55c979c
   45.078 ms  pass  118  800x448   8 colour (fmt 0)    depth 0x32   1 draws  fs 5218c5e5e3c8
   42.365 ms  pass  154  1600x896  1 colour (fmt 0x3f) depth 0x34  11 draws  fs 675a28d16bbd
   41.799 ms  pass   51  400x400   0 colour (fmt 0)    depth 0x32 195 draws  fs 607bd409ec4e
   10.989 ms  pass   21  1600x896  6 colour (fmt 0x25) depth 0x34 446 draws  fs 919809030d21
```

### Detailed Shader Reverse-Engineering

#### 1. Pass 41 / Pass 52 — Full-Resolution G-Buffer Deferred Shading (`61315f715cdf`, 657 ms)
- **Target**: 1600x896, 8 Simultaneous Render Targets (MRT), Depth Format `0x34` (`VK_FORMAT_D32_SFLOAT_S8_UINT`).
- **Functionality**: Full-screen deferred lighting resolve. Samples G-buffer albedo, normals, roughness, metallic, emissive, and ambient occlusion buffers to compute PBR direct and indirect illumination across 8 color outputs.
- **Bottlenecks**:
  - Evaluates 8 MRT outputs per pixel, creating high memory bus pressure.
  - Maxwell translator emits local `OpVariable` allocas for each intermediate BRDF vector component, forcing extensive spill/reload cycles in compiler backends.
  - `NoContraction` decorations prevent LLVM from generating fused multiply-accumulate (`vfmadd213ps`) instructions.

#### 2. Pass 119 / Pass 130 — Half-Resolution Subsurface & Ambient Lighting (`37bb03a99ff3`, 656 ms)
- **Target**: 800x448, 8 Colour Targets, Depth Format `0x32` (`VK_FORMAT_D32_SFLOAT`).
- **Functionality**: Half-resolution bilateral filter and subsurface scattering convolution pass. Reads neighboring depth and normal taps to convolve scattered light profiles without bleeding across geometry discontinuities.
- **Bottlenecks**:
  - Dependent texture lookups in loop structures.
  - Multi-tap texture gather instructions with repeated bitcasts between normalized coordinates and integer offsets.

#### 3. Pass 130 / Pass 143 — Temporal Anti-Aliasing (TAA) & Velocity Reprojection (`233dfb9398ef`, 301 ms)
- **Target**: 1600x896, 1 Colour Target, Depth Format `0x32`.
- **Functionality**: 3x3 neighborhood color clamping and temporal history blending. Samples current frame color, previous frame history texture, camera motion vector texture, and depth buffer to compute Catmull-Rom weighted reprojection.
- **Bottlenecks**:
  - 9-tap texture filtering with min/max color bounding box computation.
  - Disabling `NoContraction` allows algebraic folding of clamp and lerp expressions.

#### 4. Pass 133 / Pass 146 — Volumetric Fog & Atmospheric Scattering (`4c6065f492ad`, 189 ms, 64 draws)
- **Target**: 800x448, 1 Colour Target (`VK_FORMAT_R11G11B10_UFLOAT_PACK32`), Depth Format `0x34`.
- **Functionality**: 64 planar frustum slices computing Rayleigh/Mie optical depth, shadow map penetration, and phase function attenuation.
- **Bottlenecks**:
  - High draw call count (64 sequential draws). Each draw rebinds slice uniform data.
  - Ray-sphere and phase angle trigonometric calculations in fragment stage.

#### 5. Pass 157 / Pass 173 — 1080p HUD, Mini-Map & UI Overlay (`309199f103aa`, 126 ms, 93 draws)
- **Target**: 1920x1080, 1 Colour Target (`VK_FORMAT_R8G8B8A8_UNORM`), Depth 0.
- **Functionality**: 93 alpha-blended draws rendering the game UI: hearts, stamina wheel, item selectors, dialogue text, and mini-map.
- **Bottlenecks**:
  - High draw count with frequent pipeline state switching (texture binds, dynamic scissor rects).
  - High fillrate at full 1080p with alpha blending enabled.

#### 6. Pass 21 / Pass 22 — Opaque Geometry & Terrain G-Buffer Pass (`919809030d21` / `cf01e9c9986d`, 446 draws)
- **Target**: 1600x896, 6 Colour Targets (Albedo, Normal, Roughness/Metallic, Motion Vectors, Material Flags, Subsurface), Depth `0x34`.
- **Functionality**: Core scene rasterization rendering terrain, foliage, Link, and environmental meshes.
- **Bottlenecks**:
  - 446 draws requiring dynamic uniform buffer offsets (`c0`, `c1`).
  - Vertex skinning and normal transform computations with integer bone index bitcasts.

---

## 10. SPIR-V Optimization Pipeline (`tools/opt_spirv.py`) & Benchmark Results

### 10.1 Optimizer Implementation
`tools/opt_spirv.py` provides an automated AST-level optimization pass tailored specifically for Maxwell translated SPIR-V binaries:
1. **NoContraction Stripping**:
   - Ryujinx's translator attaches `OpDecorate %target NoContraction` (decoration 42) to all arithmetic operations to enforce strict IEEE non-fusion semantics.
   - Stripping this decoration allows driver compilers (LLVM in Lavapipe, ACO/LLVM in RADV, and proprietary vendor drivers) to emit native hardware FMA (`vfmadd*`) instructions and reassociate constant factors.
2. **Identity Bitcast Elimination**:
   - Folds redundant `OpBitcast` instructions where source and destination types match, updating downstream SSA operand references.
3. **CopyObject Propagation**:
   - Collapses `OpCopyObject` chains into direct source value references.
4. **Integration with `spirv-opt -O`**:
   - Chains standard SPIR-V dead code elimination, redundancy elimination, and single-store scalar replacement passes when `spirv-opt` is available.

### 10.2 Benchmark Results on Lavapipe (`lvp`)
Ran 5 benchmark iterations comparing baseline shaders vs. optimized shaders:

| Metric | Baseline (`data/shaders/ryujinx/`) | Optimized (`data/shaders/optimized/`) | Improvement |
|---|---|---|---|
| **NoContraction Decorators** | 5,112 instructions | **0 instructions** | **-100.0%** |
| **Total SPIR-V Code Size** | 1,122,588 bytes | **1,061,244 bytes** | **-5.46% (-61.3 KB)** |
| **Minimum Frame Wall Time** | 17.67 ms | **15.61 ms** | **+11.66% faster** |
| **Average Frame Wall Time** | 8,819.85 ms | **8,614.28 ms** | **+2.33% faster** |
| **Total Renderpass Span** | 8,596.73 ms | **8,391.90 ms** | **-204.83 ms (-2.38%)** |

---

## 11. Build Instructions & Tooling

### 11.1 Building with Python Build Runner
The project provides a self-contained, parallel build runner `tools/build_game.py`:
```bash
# Build the standalone frame replayer
python3 tools/build_game.py --target replay_frame

# Limit CPU affinity if desired
python3 tools/build_game.py --target replay_frame --cpus 4
```

### 11.2 Building with CMake
The project includes standard CMake rules in `CMakeLists.txt`:
```bash
# Configure and build
cmake -B build -S . -DCMAKE_BUILD_TYPE=Release
cmake --build build --target replay_frame -j$(nproc)

# Run shader optimization target
cmake --build build --target optimize_shaders
```

### 11.3 Running Replay Frame with Lavapipe
```bash
# Headless benchmark with pass profiling
VK_DRIVER_FILES=/usr/share/vulkan/icd.d/lvp_icd.x86_64.json ./build/replay_frame totk_dump/frame900 --bench 5 --passprof

# Run with optimized shaders
VK_DRIVER_FILES=/usr/share/vulkan/icd.d/lvp_icd.x86_64.json ./build/replay_frame totk_dump/frame900 --shader-dir data/shaders/optimized --bench 5 --passprof
```


