#pragma once
#include <SDL3/SDL.h>
#include <vulkan/vulkan.h>

#ifdef __cplusplus
extern "C" {
#endif

SDL_FunctionPointer SDL_Vulkan_GetVkGetInstanceProcAddr(void);
const char * const *SDL_Vulkan_GetInstanceExtensions(Uint32 *count);
bool SDL_Vulkan_CreateSurface(SDL_Window *window, VkInstance instance, const struct VkAllocationCallbacks *allocator, VkSurfaceKHR *surface);

#ifdef __cplusplus
}
#endif
