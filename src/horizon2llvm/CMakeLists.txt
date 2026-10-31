cmake_minimum_required(VERSION 3.16)
project(horizon2llvm_llvm LANGUAGES C CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Threads REQUIRED)

find_package(LLVM CONFIG QUIET)
if(NOT LLVM_FOUND)
    find_program(LLVM_CONFIG_EXECUTABLE NAMES llvm-config)
    if(LLVM_CONFIG_EXECUTABLE)
        execute_process(
            COMMAND ${LLVM_CONFIG_EXECUTABLE} --cmakedir
            OUTPUT_VARIABLE LLVM_CONFIG_CMAKE_DIR
            OUTPUT_STRIP_TRAILING_WHITESPACE
            ERROR_QUIET
        )
        if(LLVM_CONFIG_CMAKE_DIR AND EXISTS "${LLVM_CONFIG_CMAKE_DIR}")
            find_package(LLVM CONFIG HINTS "${LLVM_CONFIG_CMAKE_DIR}" QUIET)
        endif()
    endif()
endif()

if(LLVM_FOUND)
    message(STATUS "Using system LLVM ${LLVM_PACKAGE_VERSION} (include: ${LLVM_INCLUDE_DIRS}, lib: ${LLVM_LIBRARY_DIRS})")
    set(H2L_LLVM_INCLUDE_DIRS ${LLVM_INCLUDE_DIRS})
    set(H2L_LLVM_LIB_DIR "${LLVM_LIBRARY_DIRS}")
    add_definitions(${LLVM_DEFINITIONS})

    if(TARGET LLVM)
        add_library(ThirdPartyLLVM INTERFACE)
        target_link_libraries(ThirdPartyLLVM INTERFACE LLVM)
        target_include_directories(ThirdPartyLLVM INTERFACE ${H2L_LLVM_INCLUDE_DIRS})
    else()
        find_library(H2L_SYSTEM_LLVM_LIB NAMES LLVM libLLVM PATHS ${LLVM_LIBRARY_DIRS})
        if(NOT H2L_SYSTEM_LLVM_LIB)
            find_library(H2L_SYSTEM_LLVM_LIB NAMES LLVM libLLVM)
        endif()
        add_library(ThirdPartyLLVM UNKNOWN IMPORTED GLOBAL)
        set_target_properties(ThirdPartyLLVM PROPERTIES
            IMPORTED_LOCATION "${H2L_SYSTEM_LLVM_LIB}"
            INTERFACE_INCLUDE_DIRECTORIES "${H2L_LLVM_INCLUDE_DIRS}"
        )
    endif()
else()
    message(STATUS "Using prebuilt LLVM from third-party/llvm")
    set(H2L_LLVM_DIR "${CMAKE_CURRENT_SOURCE_DIR}/third-party/llvm")
    set(H2L_LLVM_INCLUDE_DIRS
        "${H2L_LLVM_DIR}/include"
        "${H2L_LLVM_DIR}/include/llvm"
    )
    set(H2L_LLVM_LIB_DIR "${H2L_LLVM_DIR}/prebuilts/x86-64")
    set(H2L_LLVM_SHARED_LIB "${H2L_LLVM_LIB_DIR}/libLLVM.so")

    add_library(ThirdPartyLLVM SHARED IMPORTED GLOBAL)
    set_target_properties(ThirdPartyLLVM PROPERTIES
        IMPORTED_LOCATION "${H2L_LLVM_SHARED_LIB}"
        IMPORTED_SONAME "libLLVM.so.21.1"
        INTERFACE_INCLUDE_DIRECTORIES "${H2L_LLVM_INCLUDE_DIRS}"
    )
endif()

set(H2L_LIFTER_PASS_SOURCES
    llvm_backend.cpp
    aarch64_lifter.cpp
    nso_loader.cpp
    passes.cpp
    lowering/pass_ultratears_patch.cpp
    lowering/pass_profile_entry_hook_elim.cpp
    lowering/pass_nso_rodata_constprop_devirt.cpp
    lowering/pass_fpcr_fast_fp_lowering.cpp
    lowering/pass_simd_pairwise_conversion_inline.cpp
    lowering/pass_aarch64_native_intrinsic.cpp
    lowering/pass_x86_64_hardware_intrinsic.cpp
    lowering/pass_exclusive_monitor_lse_fastpath.cpp
    lowering/pass_horizon_lowering.cpp
    lowering/pass_horizon_tls_spinwait.cpp
    lowering/pass_guest_stack_alignment.cpp
    lowering/pass_aarch64_idiom_deconstruct.cpp
    lowering/pass_jump_table_lowering.cpp
    lowering/pass_shadow_dispatch_table.cpp
    lowering/pass_fcmp_predicate_fusion.cpp
    lowering/pass_nzcv_predicate_fusion.cpp
    lowering/pass_nzcv_dead_flag_elim.cpp
    lowering/pass_link_register_elision.cpp
    lowering/pass_tail_call_devirt.cpp
    lowering/pass_aapcs64_abi_contract.cpp
    lowering/pass_cpu_state_promotion.cpp
    lowering/pass_cross_chunk_leaf_inline.cpp
    lowering/pass_aarch64_static_nce_abi.cpp
)

add_library(horizon2llvm_core STATIC
    ${H2L_LIFTER_PASS_SOURCES}
)
target_include_directories(horizon2llvm_core PUBLIC
    "${CMAKE_CURRENT_SOURCE_DIR}"
    ${H2L_LLVM_INCLUDE_DIRS}
)
target_compile_definitions(horizon2llvm_core PUBLIC H2L_HAVE_LLVM_HEADERS=1)
target_link_libraries(horizon2llvm_core PUBLIC
    ThirdPartyLLVM
    Threads::Threads
    ${CMAKE_DL_LIBS}
)
if(MSVC)
    target_compile_options(horizon2llvm_core PRIVATE /O2 /W3)
else()
    target_compile_options(horizon2llvm_core PRIVATE -O3 -Wall -Wextra -Wno-unused-parameter)
endif()

add_executable(horizon2llvm
    main.cpp
    llvm_pass_plugin.cpp
)
target_link_libraries(horizon2llvm PRIVATE
    horizon2llvm_core
)
set_target_properties(horizon2llvm PROPERTIES
    BUILD_RPATH "${H2L_LLVM_LIB_DIR}"
    INSTALL_RPATH "${H2L_LLVM_LIB_DIR}"
)

if(MSVC)
    target_compile_options(horizon2llvm PRIVATE /O2 /W3)
else()
    target_compile_options(horizon2llvm PRIVATE -O3 -Wall -Wextra -Wno-unused-parameter)
endif()

option(H2L_BUILD_LLVM_PLUGIN "Build shared LLVM PassBuilder plugin" ON)
if(H2L_BUILD_LLVM_PLUGIN)
    add_library(Horizon2LLVMPasses SHARED llvm_pass_plugin.cpp)
    target_include_directories(Horizon2LLVMPasses PRIVATE ${H2L_LLVM_INCLUDE_DIRS})
    target_compile_definitions(Horizon2LLVMPasses PRIVATE H2L_HAVE_LLVM_HEADERS=1)
    target_link_libraries(Horizon2LLVMPasses PRIVATE ThirdPartyLLVM)
    set_target_properties(Horizon2LLVMPasses PROPERTIES
        BUILD_RPATH "${H2L_LLVM_LIB_DIR}"
        INSTALL_RPATH "${H2L_LLVM_LIB_DIR}"
    )
endif()

if(EXISTS "${CMAKE_CURRENT_SOURCE_DIR}/tests/CMakeLists.txt")
    enable_testing()
    add_subdirectory(tests)
endif()

if(EXISTS "${CMAKE_CURRENT_SOURCE_DIR}/benchmark/CMakeLists.txt")
    add_subdirectory(benchmark)
endif()
