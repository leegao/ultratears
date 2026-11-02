#ifndef SHADER_OBJECT_EMU_H
#define SHADER_OBJECT_EMU_H

#ifdef __cplusplus
extern "C" {
#endif

// Initializes the VK_EXT_shader_object emulation layer.
// When the underlying Vulkan implementation natively supports VK_EXT_shader_object,
// this function is a passthrough and leaves native driver function pointers intact.
void init_shader_object_emu(void);

#ifdef __cplusplus
}
#endif

#endif // SHADER_OBJECT_EMU_H
