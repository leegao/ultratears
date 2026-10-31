#include "shader_object_emu.h"
#include "vk.h"

#include <array>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <mutex>
#include <unordered_map>
#include <vector>

#define LOG(...) (fprintf(stderr, "[totk-vk-emu] " __VA_ARGS__), fputc('\n', stderr))

namespace {

struct EmuShader {
    VkShaderStageFlagBits stage = {};
    VkShaderModule module = VK_NULL_HANDLE;
    VkPipelineLayout pipeline_layout = VK_NULL_HANDLE;
    VkPipeline compute_pipeline = VK_NULL_HANDLE;
};

struct EmuCmdState {
    EmuShader *vs = nullptr;
    EmuShader *fs = nullptr;
    uint32_t ncolor = 0;
    std::array<VkFormat, 8> color_fmts{};
    VkFormat depth_fmt = VK_FORMAT_UNDEFINED;
    VkFormat stencil_fmt = VK_FORMAT_UNDEFINED;
};

struct PipelineKey {
    VkShaderModule vs = VK_NULL_HANDLE;
    VkShaderModule fs = VK_NULL_HANDLE;
    uint32_t ncolor = 0;
    std::array<VkFormat, 8> color_fmts{};
    VkFormat depth_fmt = VK_FORMAT_UNDEFINED;
    VkFormat stencil_fmt = VK_FORMAT_UNDEFINED;

    bool operator==(const PipelineKey &o) const {
        return vs == o.vs &&
               fs == o.fs &&
               ncolor == o.ncolor &&
               depth_fmt == o.depth_fmt &&
               stencil_fmt == o.stencil_fmt &&
               color_fmts == o.color_fmts;
    }
};

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

std::mutex g_emu_mutex;
std::unordered_map<VkCommandBuffer, EmuCmdState> g_cmd_states;
std::unordered_map<PipelineKey, VkPipeline, PipelineKeyHash> g_pipeline_cache;
VkPipelineLayout g_emu_gfx_pipeline_layout = VK_NULL_HANDLE;

PFN_vkCmdBeginRendering g_real_CmdBeginRendering = nullptr;
PFN_vkCreateShadersEXT g_real_CreateShadersEXT = nullptr;
PFN_vkDestroyShaderEXT g_real_DestroyShaderEXT = nullptr;
PFN_vkCmdBindShadersEXT g_real_CmdBindShadersEXT = nullptr;

// Strip unsupported FragmentShaderPixelInterlockEXT capability/extension/opcodes when !vkc.has_interlock
std::vector<uint32_t> strip_interlock_spv(const uint32_t *code, size_t words) {
    if (vkc.has_interlock || words < 5) return {};
    std::vector<uint32_t> out;
    out.reserve(words);
    out.insert(out.end(), code, code + 5);
    for (size_t i = 5; i < words;) {
        uint32_t op = code[i] & 0xffff;
        uint32_t wc = code[i] >> 16;
        if (!wc || i + wc > words) break;
        bool drop = false;
        if (op == 17 && wc == 2 && (code[i + 1] == 5378 || code[i + 1] == 5379 || code[i + 1] == 5380)) drop = true;
        else if (op == 10 && wc >= 2 && !strncmp((const char *)&code[i + 1], "SPV_EXT_fragment_shader_interlock", 33)) drop = true;
        else if (op == 16 && wc >= 3 && (code[i + 2] == 5366 || code[i + 2] == 5367 || code[i + 2] == 5368)) drop = true;
        else if (op == 5364 || op == 5365) drop = true;
        if (!drop) {
            out.insert(out.end(), &code[i], &code[i + wc]);
        }
        i += wc;
    }
    return out;
}

VkPipeline get_or_create_gfx_pipeline(EmuCmdState &cs) {
    if (!cs.vs || !cs.vs->module) return VK_NULL_HANDLE;
    VkShaderModule vs = cs.vs->module;
    VkShaderModule fs = cs.fs ? cs.fs->module : VK_NULL_HANDLE;

    PipelineKey key;
    key.vs = vs;
    key.fs = fs;
    key.ncolor = cs.ncolor;
    key.color_fmts = cs.color_fmts;
    key.depth_fmt = cs.depth_fmt;
    key.stencil_fmt = cs.stencil_fmt;

    auto it = g_pipeline_cache.find(key);
    if (it != g_pipeline_cache.end()) {
        return it->second;
    }

    VkPipelineShaderStageCreateInfo stages[2] = {};
    stages[0].sType = VK_STRUCTURE_TYPE_PIPELINE_SHADER_STAGE_CREATE_INFO;
    stages[0].stage = VK_SHADER_STAGE_VERTEX_BIT;
    stages[0].module = vs;
    stages[0].pName = "main";

    uint32_t nstages = 1;
    if (fs) {
        stages[1].sType = VK_STRUCTURE_TYPE_PIPELINE_SHADER_STAGE_CREATE_INFO;
        stages[1].stage = VK_SHADER_STAGE_FRAGMENT_BIT;
        stages[1].module = fs;
        stages[1].pName = "main";
        nstages = 2;
    }

    VkPipelineVertexInputStateCreateInfo vi = {};
    vi.sType = VK_STRUCTURE_TYPE_PIPELINE_VERTEX_INPUT_STATE_CREATE_INFO;

    VkPipelineInputAssemblyStateCreateInfo ia = {};
    ia.sType = VK_STRUCTURE_TYPE_PIPELINE_INPUT_ASSEMBLY_STATE_CREATE_INFO;
    ia.topology = VK_PRIMITIVE_TOPOLOGY_TRIANGLE_LIST;

    VkPipelineViewportStateCreateInfo vp = {};
    vp.sType = VK_STRUCTURE_TYPE_PIPELINE_VIEWPORT_STATE_CREATE_INFO;
    vp.viewportCount = 1;
    vp.scissorCount = 1;

    VkPipelineRasterizationStateCreateInfo rs = {};
    rs.sType = VK_STRUCTURE_TYPE_PIPELINE_RASTERIZATION_STATE_CREATE_INFO;
    rs.polygonMode = VK_POLYGON_MODE_FILL;
    rs.cullMode = VK_CULL_MODE_NONE;
    rs.frontFace = VK_FRONT_FACE_COUNTER_CLOCKWISE;
    rs.lineWidth = 1.0f;

    VkPipelineMultisampleStateCreateInfo ms = {};
    ms.sType = VK_STRUCTURE_TYPE_PIPELINE_MULTISAMPLE_STATE_CREATE_INFO;
    ms.rasterizationSamples = VK_SAMPLE_COUNT_1_BIT;

    VkPipelineDepthStencilStateCreateInfo ds = {};
    ds.sType = VK_STRUCTURE_TYPE_PIPELINE_DEPTH_STENCIL_STATE_CREATE_INFO;

    VkPipelineColorBlendAttachmentState cb_att[8] = {};
    for (int i = 0; i < 8; i++) cb_att[i].colorWriteMask = 0xf;

    VkPipelineColorBlendStateCreateInfo cb_st = {};
    cb_st.sType = VK_STRUCTURE_TYPE_PIPELINE_COLOR_BLEND_STATE_CREATE_INFO;
    cb_st.attachmentCount = cs.ncolor;
    cb_st.pAttachments = cb_att;

    static const VkDynamicState dyn_states[] = {
        VK_DYNAMIC_STATE_VIEWPORT_WITH_COUNT,
        VK_DYNAMIC_STATE_SCISSOR_WITH_COUNT,
        VK_DYNAMIC_STATE_LINE_WIDTH,
        VK_DYNAMIC_STATE_DEPTH_BIAS,
        VK_DYNAMIC_STATE_BLEND_CONSTANTS,
        VK_DYNAMIC_STATE_DEPTH_BOUNDS,
        VK_DYNAMIC_STATE_STENCIL_COMPARE_MASK,
        VK_DYNAMIC_STATE_STENCIL_WRITE_MASK,
        VK_DYNAMIC_STATE_STENCIL_REFERENCE,
        VK_DYNAMIC_STATE_CULL_MODE,
        VK_DYNAMIC_STATE_FRONT_FACE,
        VK_DYNAMIC_STATE_PRIMITIVE_TOPOLOGY,
        VK_DYNAMIC_STATE_DEPTH_TEST_ENABLE,
        VK_DYNAMIC_STATE_DEPTH_WRITE_ENABLE,
        VK_DYNAMIC_STATE_DEPTH_COMPARE_OP,
        VK_DYNAMIC_STATE_DEPTH_BOUNDS_TEST_ENABLE,
        VK_DYNAMIC_STATE_STENCIL_TEST_ENABLE,
        VK_DYNAMIC_STATE_STENCIL_OP,
        VK_DYNAMIC_STATE_RASTERIZER_DISCARD_ENABLE,
        VK_DYNAMIC_STATE_DEPTH_BIAS_ENABLE,
        VK_DYNAMIC_STATE_PRIMITIVE_RESTART_ENABLE,
        VK_DYNAMIC_STATE_LOGIC_OP_EXT,
        VK_DYNAMIC_STATE_VERTEX_INPUT_EXT,
        VK_DYNAMIC_STATE_DEPTH_CLAMP_ENABLE_EXT,
        VK_DYNAMIC_STATE_POLYGON_MODE_EXT,
        VK_DYNAMIC_STATE_RASTERIZATION_SAMPLES_EXT,
        VK_DYNAMIC_STATE_SAMPLE_MASK_EXT,
        VK_DYNAMIC_STATE_ALPHA_TO_COVERAGE_ENABLE_EXT,
        VK_DYNAMIC_STATE_ALPHA_TO_ONE_ENABLE_EXT,
        VK_DYNAMIC_STATE_LOGIC_OP_ENABLE_EXT,
        VK_DYNAMIC_STATE_COLOR_BLEND_ENABLE_EXT,
        VK_DYNAMIC_STATE_COLOR_BLEND_EQUATION_EXT,
        VK_DYNAMIC_STATE_COLOR_WRITE_MASK_EXT,
        VK_DYNAMIC_STATE_DEPTH_CLIP_ENABLE_EXT,
        VK_DYNAMIC_STATE_PROVOKING_VERTEX_MODE_EXT,
        VK_DYNAMIC_STATE_DEPTH_CLIP_NEGATIVE_ONE_TO_ONE_EXT,
    };

    VkPipelineDynamicStateCreateInfo dyn = {};
    dyn.sType = VK_STRUCTURE_TYPE_PIPELINE_DYNAMIC_STATE_CREATE_INFO;
    dyn.dynamicStateCount = sizeof(dyn_states) / sizeof(dyn_states[0]);
    dyn.pDynamicStates = dyn_states;

    VkPipelineRenderingCreateInfo prci = {};
    prci.sType = VK_STRUCTURE_TYPE_PIPELINE_RENDERING_CREATE_INFO;
    prci.colorAttachmentCount = cs.ncolor;
    prci.pColorAttachmentFormats = cs.color_fmts.data();
    prci.depthAttachmentFormat = cs.depth_fmt;
    prci.stencilAttachmentFormat = cs.stencil_fmt;

    VkGraphicsPipelineCreateInfo gpci = {};
    gpci.sType = VK_STRUCTURE_TYPE_GRAPHICS_PIPELINE_CREATE_INFO;
    gpci.pNext = &prci;
    gpci.stageCount = nstages;
    gpci.pStages = stages;
    gpci.pVertexInputState = &vi;
    gpci.pInputAssemblyState = &ia;
    gpci.pViewportState = &vp;
    gpci.pRasterizationState = &rs;
    gpci.pMultisampleState = &ms;
    gpci.pDepthStencilState = &ds;
    gpci.pColorBlendState = &cb_st;
    gpci.pDynamicState = &dyn;
    gpci.layout = cs.vs->pipeline_layout ? cs.vs->pipeline_layout : g_emu_gfx_pipeline_layout;

    VkPipeline pipeline = VK_NULL_HANDLE;
    VkResult r = vk.vkCreateGraphicsPipelines(vkc.device, VK_NULL_HANDLE, 1, &gpci, nullptr, &pipeline);
    if (r != VK_SUCCESS) {
        LOG("vkCreateGraphicsPipelines failed: %d (vs=%p fs=%p ncolor=%u depth=%#x)",
            (int)r, vs, fs, cs.ncolor, cs.depth_fmt);
    }
    g_pipeline_cache.emplace(key, pipeline);
    return pipeline;
}

VKAPI_ATTR VkResult VKAPI_CALL emu_CreateShadersEXT(
    VkDevice device, uint32_t createInfoCount, const VkShaderCreateInfoEXT *pCreateInfos,
    const VkAllocationCallbacks *pAllocator, VkShaderEXT *pShaders) {
    if (vkc.has_shader_object && g_real_CreateShadersEXT) {
        return g_real_CreateShadersEXT(device, createInfoCount, pCreateInfos, pAllocator, pShaders);
    }
    (void)pAllocator;
    for (uint32_t i = 0; i < createInfoCount; i++) {
        const VkShaderCreateInfoEXT *ci = &pCreateInfos[i];
        std::vector<uint32_t> patched = strip_interlock_spv((const uint32_t *)ci->pCode, ci->codeSize / 4);
        VkShaderModuleCreateInfo smci = {};
        smci.sType = VK_STRUCTURE_TYPE_SHADER_MODULE_CREATE_INFO;
        smci.codeSize = !patched.empty() ? patched.size() * sizeof(uint32_t) : ci->codeSize;
        smci.pCode = !patched.empty() ? patched.data() : (const uint32_t *)ci->pCode;

        VkShaderModule mod = VK_NULL_HANDLE;
        VkResult r = vk.vkCreateShaderModule(device, &smci, nullptr, &mod);
        if (r != VK_SUCCESS) {
            pShaders[i] = VK_NULL_HANDLE;
            return r;
        }

        EmuShader *es = new EmuShader();
        es->stage = ci->stage;
        es->module = mod;

        std::lock_guard<std::mutex> lock(g_emu_mutex);
        if (ci->stage == VK_SHADER_STAGE_COMPUTE_BIT) {
            VkPipelineLayoutCreateInfo plci = {};
            plci.sType = VK_STRUCTURE_TYPE_PIPELINE_LAYOUT_CREATE_INFO;
            plci.setLayoutCount = ci->setLayoutCount;
            plci.pSetLayouts = ci->pSetLayouts;
            plci.pushConstantRangeCount = ci->pushConstantRangeCount;
            plci.pPushConstantRanges = ci->pPushConstantRanges;
            vk.vkCreatePipelineLayout(device, &plci, nullptr, &es->pipeline_layout);

            VkComputePipelineCreateInfo cpci = {};
            cpci.sType = VK_STRUCTURE_TYPE_COMPUTE_PIPELINE_CREATE_INFO;
            cpci.stage.sType = VK_STRUCTURE_TYPE_PIPELINE_SHADER_STAGE_CREATE_INFO;
            cpci.stage.stage = VK_SHADER_STAGE_COMPUTE_BIT;
            cpci.stage.module = mod;
            cpci.stage.pName = ci->pName ? ci->pName : "main";
            cpci.layout = es->pipeline_layout;

            vk.vkCreateComputePipelines(device, VK_NULL_HANDLE, 1, &cpci, nullptr, &es->compute_pipeline);
        } else {
            if (!g_emu_gfx_pipeline_layout && ci->setLayoutCount > 0) {
                VkPipelineLayoutCreateInfo plci = {};
                plci.sType = VK_STRUCTURE_TYPE_PIPELINE_LAYOUT_CREATE_INFO;
                plci.setLayoutCount = ci->setLayoutCount;
                plci.pSetLayouts = ci->pSetLayouts;
                vk.vkCreatePipelineLayout(device, &plci, nullptr, &g_emu_gfx_pipeline_layout);
            }
            es->pipeline_layout = g_emu_gfx_pipeline_layout;
        }
        pShaders[i] = (VkShaderEXT)(uintptr_t)es;
    }
    return VK_SUCCESS;
}

VKAPI_ATTR void VKAPI_CALL emu_DestroyShaderEXT(
    VkDevice device, VkShaderEXT shader, const VkAllocationCallbacks *pAllocator) {
    if (vkc.has_shader_object && g_real_DestroyShaderEXT) {
        g_real_DestroyShaderEXT(device, shader, pAllocator);
        return;
    }
    (void)pAllocator;
    if (!shader) return;
    EmuShader *es = (EmuShader *)(uintptr_t)shader;
    if (es->compute_pipeline) vk.vkDestroyPipeline(device, es->compute_pipeline, nullptr);
    if (es->stage == VK_SHADER_STAGE_COMPUTE_BIT && es->pipeline_layout) {
        vk.vkDestroyPipelineLayout(device, es->pipeline_layout, nullptr);
    }
    if (es->module) vk.vkDestroyShaderModule(device, es->module, nullptr);
    delete es;
}

VKAPI_ATTR void VKAPI_CALL emu_CmdBeginRendering(VkCommandBuffer cb, const VkRenderingInfo *ri) {
    if (vkc.has_shader_object && g_real_CmdBeginRendering) {
        g_real_CmdBeginRendering(cb, ri);
        return;
    }
    {
        std::lock_guard<std::mutex> lock(g_emu_mutex);
        EmuCmdState &cs = g_cmd_states[cb];
        cs.ncolor = ri->colorAttachmentCount > 8 ? 8 : ri->colorAttachmentCount;
        for (uint32_t i = 0; i < cs.ncolor; i++) {
            cs.color_fmts[i] = ri->pColorAttachments[i].imageView ? VK_FORMAT_R8G8B8A8_UNORM : VK_FORMAT_UNDEFINED;
        }
        cs.depth_fmt = (ri->pDepthAttachment && ri->pDepthAttachment->imageView) ? VK_FORMAT_D32_SFLOAT : VK_FORMAT_UNDEFINED;
        cs.stencil_fmt = (ri->pStencilAttachment && ri->pStencilAttachment->imageView) ? VK_FORMAT_S8_UINT : VK_FORMAT_UNDEFINED;
    }
    g_real_CmdBeginRendering(cb, ri);
}

VKAPI_ATTR void VKAPI_CALL emu_CmdBindShadersEXT(
    VkCommandBuffer commandBuffer, uint32_t stageCount,
    const VkShaderStageFlagBits *pStages, const VkShaderEXT *pShaders) {
    if (vkc.has_shader_object && g_real_CmdBindShadersEXT) {
        g_real_CmdBindShadersEXT(commandBuffer, stageCount, pStages, pShaders);
        return;
    }
    std::lock_guard<std::mutex> lock(g_emu_mutex);
    EmuCmdState &cs = g_cmd_states[commandBuffer];
    bool is_compute = false;
    for (uint32_t i = 0; i < stageCount; i++) {
        EmuShader *es = pShaders ? (EmuShader *)(uintptr_t)pShaders[i] : nullptr;
        if (pStages[i] == VK_SHADER_STAGE_COMPUTE_BIT) {
            is_compute = true;
            if (es && es->compute_pipeline) {
                vk.vkCmdBindPipeline(commandBuffer, VK_PIPELINE_BIND_POINT_COMPUTE, es->compute_pipeline);
            }
        } else if (pStages[i] == VK_SHADER_STAGE_VERTEX_BIT) {
            cs.vs = es;
        } else if (pStages[i] == VK_SHADER_STAGE_FRAGMENT_BIT) {
            cs.fs = es;
        }
    }
    if (!is_compute && cs.vs) {
        VkPipeline pipeline = get_or_create_gfx_pipeline(cs);
        if (pipeline) {
            vk.vkCmdBindPipeline(commandBuffer, VK_PIPELINE_BIND_POINT_GRAPHICS, pipeline);
        }
    }
}

} // anonymous namespace

void init_shader_object_emu(void) {
    if (vkc.has_shader_object) {
        return; // Passthrough: native VK_EXT_shader_object supported
    }
    g_real_CmdBeginRendering = vk.vkCmdBeginRendering;
    g_real_CreateShadersEXT = vk.vkCreateShadersEXT;
    g_real_DestroyShaderEXT = vk.vkDestroyShaderEXT;
    g_real_CmdBindShadersEXT = vk.vkCmdBindShadersEXT;

    vk.vkCmdBeginRendering = emu_CmdBeginRendering;
    vk.vkCreateShadersEXT = emu_CreateShadersEXT;
    vk.vkDestroyShaderEXT = emu_DestroyShaderEXT;
    vk.vkCmdBindShadersEXT = emu_CmdBindShadersEXT;
}
