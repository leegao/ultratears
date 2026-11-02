# VK_EXT_shader_object Emulation Architecture

## 1. Overview and Motivation

`VK_EXT_shader_object` is a Vulkan extension that introduces standalone `VkShaderEXT` objects. This decouples shader stage compilation and binding from the traditional monolithic `VkPipeline` model, mirroring modern graphics APIs like Metal, DirectX 12, and Nintendo Switch's NVN API.

In UltraTears, the NVN backend (`src/gfx/backend_vk.c`) relies on stage decoupling to independently bind vertex, fragment, and compute shaders without triggering combinatorial graphics pipeline compilation upfront. However, several target platforms and Vulkan environments lack native support for `VK_EXT_shader_object`:
- **Lavapipe (`lvp` / `llvmpipe`)**: Mesa's CPU software rasterizer.
- **Older Desktop Drivers**: Pre-535.43 NVIDIA drivers, pre-23.3 Mesa/RADV drivers, or drivers on older GPUs.
- **Translation Layers**: MoltenVK on macOS or translation layers that support Vulkan 1.3 core but not the shader object extension.

To provide universal compatibility across all Vulkan 1.3-capable environments, UltraTears implements a built-in, transparent C++ emulation layer (`src/vk/shader_object_emu.cpp`, `src/vk/shader_object_emu.h`).

---

## 2. Architectural Design

```
+-------------------------------------------------------------------------+
|                              UltraTears GFX                             |
|          (backend_vk.c, vkb_draw.c, vkb_shader.c, replay_frame)         |
+-------------------------------------------------------------------------+
                                    |
                    Calls vk.vkCmdBindShadersEXT(...), etc.
                                    v
+-------------------------------------------------------------------------+
|                           Vulkan Function Table                         |
+-------------------------------------------------------------------------+
                  |                                     |
    [vkc.has_shader_object == true]      [!vkc.has_shader_object]
                  |                                     |
                  v                                     v
       Native Driver Hooks                 Emulation Layer
      (libvulkan / libGLX)             (shader_object_emu.cpp)
                                                        |
                                      +-----------------+-----------------+
                                      |                                   |
                                      v                                   v
                             Compute Shaders                     Graphics Shaders
                       (VkComputePipeline on create)      (Dynamic Pipeline Cache on draw)
```

### 2.1 Passthrough vs Emulation
During device creation (`src/vk/vk.c`), physical device features are queried via `VkPhysicalDeviceShaderObjectFeaturesEXT`:
1. **Native Passthrough**: If `fso.shaderObject == VK_TRUE`, `vkc.has_shader_object` is set to `1`. `init_shader_object_emu()` exits immediately, leaving native driver entry points untouched. All function calls execute directly in the hardware driver with zero overhead.
2. **Emulation Hooking**: If `fso.shaderObject == VK_FALSE`, `vkc.has_shader_object` is set to `0`. `init_shader_object_emu()` overrides four dispatch function pointers in the `vk` table:
   - `vk.vkCreateShadersEXT` $\rightarrow$ `emu_CreateShadersEXT`
   - `vk.vkDestroyShaderEXT` $\rightarrow$ `emu_DestroyShaderEXT`
   - `vk.vkCmdBindShadersEXT` $\rightarrow$ `emu_CmdBindShadersEXT`
   - `vk.vkCmdBeginRendering` $\rightarrow$ `emu_CmdBeginRendering`

---

## 3. Emulation Mechanics

### 3.1 Shader Object Representation (`EmuShader`)
Instead of a native `VkShaderEXT`, the emulation wraps a `VkShaderModule` and stage metadata:
```cpp
struct EmuShader {
    VkShaderStageFlagBits stage;
    VkShaderModule module;
    VkPipelineLayout pipeline_layout;
    VkPipeline compute_pipeline;
};
```
- For **compute shaders**, since a compute pipeline only requires a single compute stage and layout, `VkComputePipeline` is compiled eagerly inside `emu_CreateShadersEXT`.
- For **graphics shaders** (vertex and fragment), compilation must wait until the stages meet at draw time, as monolithic Vulkan graphics pipelines require both vertex and fragment stages along with render target attachment formats.

### 3.2 Conditional SPIR-V Sanitization: Interlock Stripping
Certain shaders use rasterizer order views or pixel interlock (`SPV_EXT_fragment_shader_interlock`).

**Strict Hardware Feature Check**:
UltraTears inspects physical device features during initialization (`vkc.has_interlock = ffsi.fragmentShaderPixelInterlock || ffsi.fragmentShaderSampleInterlock`).
- **Supported (Native)**: If the GPU hardware and driver report true support for `fragmentShaderPixelInterlock`, `strip_interlock_spv()` immediately returns with zero modification. The original shader bytecode passes through untouched, preserving full bit-exact order-independent transparency and raster interlock semantics.
- **Unsupported (Software/Legacy)**: Only when the physical device confirms that interlock is unsupported (`!vkc.has_interlock`, e.g. on Lavapipe or older GPUs), `strip_interlock_spv()` cleans the bytecode to prevent `VK_ERROR_INITIALIZATION_FAILED` on `vkCreateShaderModule`:
  - Capabilities: `FragmentShaderSampleInterlockEXT` (5378), `FragmentShaderPixelInterlockEXT` (5379), `FragmentShaderShadingRateInterlockEXT` (5380).
  - Extensions: `"SPV_EXT_fragment_shader_interlock"`.
  - Execution modes: `PixelInterlockOrderedEXT` (5366), `PixelInterlockUnorderedEXT` (5367), `SampleInterlockOrderedEXT` (5368).
  - Instructions: `OpBeginInvocationInterlockEXT` (5364), `OpEndInvocationInterlockEXT` (5365).

### 3.3 Dynamic State Maximization
To allow monolithic `VkPipeline` objects to mimic shader objects without constantly invalidating pipelines when pipeline states change, the emulation marks **36 pipeline states as dynamic** via `VkPipelineDynamicStateCreateInfo`:
- **Viewport & Scissor**: `VIEWPORT_WITH_COUNT`, `SCISSOR_WITH_COUNT`
- **Rasterization**: `LINE_WIDTH`, `DEPTH_BIAS`, `DEPTH_BIAS_ENABLE`, `CULL_MODE`, `FRONT_FACE`, `POLYGON_MODE_EXT`, `RASTERIZER_DISCARD_ENABLE`, `DEPTH_CLAMP_ENABLE_EXT`
- **Depth & Stencil**: `DEPTH_TEST_ENABLE`, `DEPTH_WRITE_ENABLE`, `DEPTH_COMPARE_OP`, `DEPTH_BOUNDS`, `DEPTH_BOUNDS_TEST_ENABLE`, `STENCIL_TEST_ENABLE`, `STENCIL_OP`, `STENCIL_COMPARE_MASK`, `STENCIL_WRITE_MASK`, `STENCIL_REFERENCE`
- **Blend & Logic Op**: `BLEND_CONSTANTS`, `COLOR_BLEND_ENABLE_EXT`, `COLOR_BLEND_EQUATION_EXT`, `COLOR_WRITE_MASK_EXT`, `LOGIC_OP_ENABLE_EXT`, `LOGIC_OP_EXT`
- **Multisample**: `RASTERIZATION_SAMPLES_EXT`, `SAMPLE_MASK_EXT`, `ALPHA_TO_COVERAGE_ENABLE_EXT`, `ALPHA_TO_ONE_ENABLE_EXT`
- **Vertex Input & Assembly**: `PRIMITIVE_TOPOLOGY`, `PRIMITIVE_RESTART_ENABLE`, `VERTEX_INPUT_EXT`
- **Clipping**: `DEPTH_CLIP_ENABLE_EXT`, `DEPTH_CLIP_NEGATIVE_ONE_TO_ONE_EXT`, `PROVOKING_VERTEX_MODE_EXT`

Because all these properties are dynamic, a cached `VkPipeline` is uniquely determined solely by:
$$\text{PipelineKey} = (\text{vs\_module}, \text{fs\_module}, \text{color\_attachment\_count}, \text{color\_formats}[8], \text{depth\_format}, \text{stencil\_format})$$

### 3.4 Command Buffer State Tracking (`EmuCmdState`)
Each `VkCommandBuffer` tracks currently bound state:
```cpp
struct EmuCmdState {
    EmuShader *vs = nullptr;
    EmuShader *fs = nullptr;
    uint32_t ncolor = 0;
    std::array<VkFormat, 8> color_fmts{};
    VkFormat depth_fmt = VK_FORMAT_UNDEFINED;
    VkFormat stencil_fmt = VK_FORMAT_UNDEFINED;
};
```
- `emu_CmdBeginRendering`: Inspects `VkRenderingInfo` to extract active render target formats (`pColorAttachments[i].imageView ? format : UNDEFINED`), depth attachment format, and stencil attachment format.
- `emu_CmdBindShadersEXT`: Inspects `pStages` and records active `vs` and `fs` pointers. If graphics shaders are bound, it queries or generates the required `VkPipeline` and calls `vkCmdBindPipeline(cb, VK_PIPELINE_BIND_POINT_GRAPHICS, pipe)`.

### 3.5 Pipeline Cache (`std::unordered_map`)
Pipeline lookup uses `std::unordered_map` with `PipelineKeyHash`:
```cpp
struct PipelineKeyHash {
    size_t operator()(const PipelineKey &k) const {
        size_t h = std::hash<uintptr_t>{}((uintptr_t)k.vs) ^ (std::hash<uintptr_t>{}((uintptr_t)k.fs) << 1);
        h ^= std::hash<uint32_t>{}(k.ncolor) + 0x9e3779b97f4a7c15ULL + (h << 6) + (h >> 2);
        h ^= std::hash<uint32_t>{}((uint32_t)k.depth_fmt) + 0x9e3779b97f4a7c15ULL + (h << 6) + (h >> 2);
        h ^= std::hash<uint32_t>{}((uint32_t)k.stencil_fmt) + 0x9e3779b97f4a7c15ULL + (h << 6) + (h >> 2);
        for (uint32_t i = 0; i < k.ncolor; i++) {
            h ^= std::hash<uint32_t>{}((uint32_t)k.color_fmts[i]) + 0x9e3779b97f4a7c15ULL + (h << 6) + (h >> 2);
        }
        return h;
    }
};
```
Cache lookups are thread-safe and protected by `std::mutex g_emu_mutex`.

---

## 4. Verification and Testing

1. **Native Passthrough Verification**:
   Running on GPUs with native `VK_EXT_shader_object` (e.g., NVIDIA driver $\ge 535$ or RADV with `RADV_PERFTEST=shader_object`):
   ```bash
   build/replay_frame sample/frame900
   ```
   No `[totk-vk-emu]` messages appear; `vkc.has_shader_object` reports 1.

2. **Emulation Verification on Lavapipe**:
   Running under software rasterization:
   ```bash
   LIBGL_ALWAYS_SOFTWARE=1 VK_ICD_FILENAMES=/usr/share/vulkan/icd.d/lvp_icd.x86_64.json build/replay_frame sample/frame900 --bench 3
   ```
   Logs verify:
   ```
   [totk-vk] VK_EXT_shader_object not supported natively; using built-in VkPipeline shader-object emulation
   ```
   All 120 render passes execute correctly with identical frame buffer output.
