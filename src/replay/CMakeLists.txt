cmake_minimum_required(VERSION 3.16)
project(replay_frame LANGUAGES C CXX)

set(CMAKE_C_STANDARD 11)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_C_STANDARD_REQUIRED ON)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

get_filename_component(REPO_ROOT "${CMAKE_CURRENT_SOURCE_DIR}/../.." ABSOLUTE)

add_definitions(-D_FILE_OFFSET_BITS=64)

if(CMAKE_SYSTEM_NAME STREQUAL "Linux")
    add_compile_options(
        -march=x86-64-v3
        -fno-strict-aliasing
        -Wall
        -Wno-unused-function
        "-include${REPO_ROOT}/src/runtime/platform/linux_compat.h"
        "-include${REPO_ROOT}/src/gfx/compat/gfx_compat.h"
    )
endif()

set(COMMON_INCLUDES
    ${REPO_ROOT}
    ${REPO_ROOT}/third_party/linux_headers
    ${REPO_ROOT}/src/runtime
    ${REPO_ROOT}/src/gfx
    ${REPO_ROOT}/src/gfx/nvn
    ${REPO_ROOT}/src/gfx/nvn/include
    ${REPO_ROOT}/src/gfx/compat
    ${REPO_ROOT}/src/vk
    ${REPO_ROOT}/src/replay
)

set(REPLAY_FRAME_SRCS
    ${CMAKE_CURRENT_SOURCE_DIR}/main.c
    ${CMAKE_CURRENT_SOURCE_DIR}/args.c
    ${CMAKE_CURRENT_SOURCE_DIR}/setup.c
    ${CMAKE_CURRENT_SOURCE_DIR}/bench.c
    ${CMAKE_CURRENT_SOURCE_DIR}/compact.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/stubs.c
    ${REPO_ROOT}/src/runtime/dispatch.c
    ${REPO_ROOT}/src/runtime/loader.c
    ${REPO_ROOT}/src/runtime/simd_rt.c
    ${REPO_ROOT}/src/runtime/platform/linux.c
    ${REPO_ROOT}/src/runtime/platform/linux_sdl3_shim.c
    ${REPO_ROOT}/src/vk/vk.c
    ${REPO_ROOT}/src/vk/shader_object_emu.cpp
    ${REPO_ROOT}/src/vk/present.c
    ${REPO_ROOT}/src/gfx/nvn/hle_nvn.c
    ${REPO_ROOT}/src/gfx/nvn/nvn_tex.c
    ${REPO_ROOT}/src/gfx/nvn/totk_nvn_ext.c
    ${REPO_ROOT}/src/gfx/nvn/nvn_registry.c
    ${REPO_ROOT}/src/gfx/nvn/nvn_thunks.gen.c
    ${REPO_ROOT}/src/gfx/nvn/nvn_dirty_win.c
    ${REPO_ROOT}/src/gfx/nvn/totk_timeline_win.c
    ${REPO_ROOT}/src/gfx/nvn/nvn_names.gen.c
    ${REPO_ROOT}/src/gfx/backend_null.c
    ${REPO_ROOT}/src/gfx/gfx_bridge.c
    ${REPO_ROOT}/src/gfx/front_win.c
    ${REPO_ROOT}/src/gfx/nvn/totk_vpool_win.c
    ${REPO_ROOT}/src/gfx/backend_vk.c
    ${REPO_ROOT}/src/gfx/vkb_tex.c
    ${REPO_ROOT}/src/gfx/vkb_capture.c
    ${REPO_ROOT}/src/gfx/vkb_shader.c
    ${REPO_ROOT}/src/gfx/vkb_spv.c
    ${REPO_ROOT}/src/gfx/vkb_audit.c
    ${REPO_ROOT}/src/gfx/vkb_copy.c
    ${REPO_ROOT}/src/gfx/vkb_desc.c
    ${REPO_ROOT}/src/gfx/vkb_shadow.c
    ${REPO_ROOT}/src/gfx/vkb_ucap.c
    ${REPO_ROOT}/src/gfx/vkb_draw.c
    ${REPO_ROOT}/src/gfx/tex/nvn_deswizzle.c
    ${REPO_ROOT}/src/gfx/tex/astc.c
    ${REPO_ROOT}/src/gfx/vkb_bc7.c
    ${REPO_ROOT}/src/gfx/tex/bc7.cpp
    ${REPO_ROOT}/src/gfx/tex/bc7enc/bc7enc.cpp
    ${REPO_ROOT}/src/gfx/tex/bc7enc/rgbcx.cpp
    ${REPO_ROOT}/src/gfx/tex/bc7key.c
)

add_executable(replay_frame ${REPLAY_FRAME_SRCS})
target_include_directories(replay_frame PRIVATE ${COMMON_INCLUDES})

find_library(OPUS_LIB NAMES opus libopus.so.0)
find_library(VPX_LIB NAMES vpx libvpx.so.12 libvpx.so.7 libvpx.so.8 libvpx.so.6)

target_link_libraries(replay_frame PRIVATE pthread dl m stdc++)
if(OPUS_LIB)
    target_link_libraries(replay_frame PRIVATE ${OPUS_LIB})
endif()
if(VPX_LIB)
    target_link_libraries(replay_frame PRIVATE ${VPX_LIB})
endif()

set_target_properties(replay_frame PROPERTIES RUNTIME_OUTPUT_DIRECTORY "${REPO_ROOT}/build")

# Shader optimization target
add_custom_target(optimize_shaders
    COMMAND ${CMAKE_COMMAND} -E echo "Optimizing SPIR-V shaders..."
    COMMAND python3 ${REPO_ROOT}/tools/opt_spirv.py
        --input-dir ${REPO_ROOT}/data/shaders/ryujinx
        --output-dir ${REPO_ROOT}/data/shaders/optimized
    COMMENT "Running SPIR-V shader optimization pipeline"
)
