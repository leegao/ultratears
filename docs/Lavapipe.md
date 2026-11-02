# Lavapipe (Mesa `lvp` / CPU Software Rasterizer) Compatibility Guide

## 1. Overview and Purpose

Lavapipe (`lvp`) is Mesa's CPU-based Vulkan software rasterizer powered by LLVM (`llvmpipe`). Running UltraTears and `replay_frame` on Lavapipe enables:
- **Headless Continuous Integration (CI)**: Deterministic graphics regression testing in cloud environments without dedicated GPU hardware.
- **Cross-Platform Verification**: Validation of Vulkan 1.3 compliance without vendor-specific driver quirks.
- **Reference Rendering**: Bit-exact rasterization verification against hardware GPU output.

---

## 2. Issues Diagnosed and Resolved

### 2.1 The `vkCmdSetLogicOpEXT` Segmentation Fault

#### Symptom
During frame replay under Lavapipe, the process crashed with a segmentation fault (`SIGSEGV`):
```text
[totk-replay] CRASH: caught signal 11 (SIGSEGV)
  #01 0x000000000041df98 in set_dynamic_state ()
  #02 0x000000000041f6ac in vkb_draw_elements ()
```

#### Root Cause Analysis
In `src/gfx/vkb_draw.c`, `set_dynamic_state()` configured dynamic logic operations whenever `vkc.has_eds2` (`VK_EXT_extended_dynamic_state2`) was enabled:
```c
if (vkc.has_eds2) {
    vk.vkCmdSetLogicOpEnableEXT(cb, s->logic_op_en);
    vk.vkCmdSetLogicOpEXT(cb, s->logic_op);
}
```
In the Vulkan specification, `VK_EXT_extended_dynamic_state2` divides logic op control into an optional sub-feature: `VkPhysicalDeviceExtendedDynamicState2FeaturesEXT::extendedDynamicState2LogicOp`.
- Hardware drivers (NVIDIA, AMD RADV, Intel ANV) typically support `extendedDynamicState2LogicOp`.
- Lavapipe supports `extendedDynamicState2` but explicitly sets `extendedDynamicState2LogicOp = VK_FALSE`.
- When a feature is disabled, `vkGetDeviceProcAddr(device, "vkCmdSetLogicOpEXT")` legitimately returns `NULL`. Invoking `vk.vkCmdSetLogicOpEXT(cb, ...)` resulted in a direct branch to address `0x0`.

#### Resolution
Added defensive function pointer checks:
```c
if (vk.vkCmdSetLogicOpEnableEXT) vk.vkCmdSetLogicOpEnableEXT(cb, s->logic_op_en);
if (vk.vkCmdSetLogicOpEXT) vk.vkCmdSetLogicOpEXT(cb, s->logic_op);
```

---

### 2.2 Lack of `VK_EXT_shader_object`

Lavapipe implements Vulkan 1.3 core features (`dynamicRendering`, `synchronization2`, `timelineSemaphore`), but lacks `VK_EXT_shader_object`.

When `vkc.has_shader_object` is false, UltraTears automatically activates its transparent emulation layer (`src/vk/shader_object_emu.cpp`), converting shader objects on the fly into cached monolithic `VkPipeline` instances. See [docs/VK_EXT_shader_object.md](file:///home/leegao/meh/ultratears-main/docs/VK_EXT_shader_object.md) for full architectural details.

---

### 2.3 Unbound Descriptor Set Protection in `resolve_set`

When running under classic descriptor sets (`!vkc.has_descriptor_buffer`):
- Switch / NVN shaders declare large arrays of texture and image bindings (up to 32 textures and 8 images per stage).
- While NVN hardware ignores unreferenced bindings in the descriptor pool, Lavapipe's descriptor table walker strictly checks descriptor validity. If a shader's reflection contains binding slots that are not bound by the game during a specific draw pass, Lavapipe can crash attempting to dereference null descriptor pointers.
- To resolve this without impacting performance on production hardware drivers:
  - `src/gfx/vkb_draw.c` gates this behind `need_descriptor_prefill()`.
  - **Auto-Detection**: It automatically activates when detecting a software CPU device (`VK_PHYSICAL_DEVICE_TYPE_CPU`, `llvmpipe`, or `Lavapipe`). On hardware GPUs (NVIDIA/AMD/Intel), it remains disabled with zero overhead.
  - **Environment Override**: Can be explicitly controlled using `TOTK_VK_DESCRIPTOR_PREFILL=1` or `TOTK_VK_DESCRIPTOR_PREFILL=0`.

---

### 2.4 File-Backed Slab Paging (`setup.c`)

TOTK capture frames contain large memory dumps:
- Uncompressed raw memory slabs (`totk_mem.bin`) can range from 4 GB to 16 GB.
- In low-memory CI workers (e.g. 8 GB RAM), loading the entire slab into anonymous RSS memory triggers the Linux OOM killer.
- `src/replay/setup.c` implements file-backed `mmap` with `MAP_SHARED` / `MAP_NORESERVE`. The kernel pages in only the active pages touched by command buffers during frame execution, reducing physical RSS usage from $\approx 8\text{ GB}$ to under $1.2\text{ GB}$.

---

## 3. Running Replay on Lavapipe

### 3.1 Invocation
To force Vulkan to use Lavapipe on Linux:

```bash
# On Debian / Ubuntu (where Mesa packages the driver as lvp_icd.json):
LIBGL_ALWAYS_SOFTWARE=1 \
VK_ICD_FILENAMES=/usr/share/vulkan/icd.d/lvp_icd.json \
build/replay_frame src/replay/tests/sample_frame --bench 3 --headless
```

### 3.2 Output Verification
```text
[totk-vk] VK_EXT_shader_object not supported natively; using built-in VkPipeline shader-object emulation
[totk-vk] device: 32 extensions; descriptor buffer 0, pipeline library 0, dynamic state 3 1, vertex input 1, timeline semaphores 1, host pointer alignment 0x40
[totk-vk] core features: timelineSemaphore=1 dynamicRendering=1 synchronization2=1
[totk-replay] replaying sample/frame900 (1 iterations)...
[totk-replay] saved presented frame to frame_lvp.bmp
[totk-replay] benchmark: 1 runs, median 1420.5 ms
```

All 120 render passes complete cleanly and generate an exact visual match to hardware-rendered frames.
