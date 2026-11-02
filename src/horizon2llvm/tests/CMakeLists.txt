cmake_minimum_required(VERSION 3.16)

if(EXISTS "${CMAKE_CURRENT_SOURCE_DIR}/../runtime/simd_rt.c")
    set(H2L_RUNTIME_DIR "${CMAKE_CURRENT_SOURCE_DIR}/../runtime")
    set(ULTRS_REPO_ROOT "${CMAKE_CURRENT_SOURCE_DIR}/../../..")
else()
    set(ULTRS_REPO_ROOT "${CMAKE_CURRENT_SOURCE_DIR}/../../..")
    set(H2L_RUNTIME_DIR "${ULTRS_REPO_ROOT}/src/runtime")
endif()

if(NOT TARGET ultratears_simd_rt)
    add_library(ultratears_simd_rt STATIC
        "${H2L_RUNTIME_DIR}/simd_rt.c"
    )
    target_include_directories(ultratears_simd_rt PUBLIC
        "${CMAKE_CURRENT_SOURCE_DIR}/.."
        "${H2L_RUNTIME_DIR}"
        "${ULTRS_REPO_ROOT}"
    )
    if(NOT MSVC)
        target_compile_options(ultratears_simd_rt PRIVATE -O2 -fPIC -fno-strict-aliasing)
    endif()
endif()

add_executable(lifter_unit_tests
    test_main_snippets.cpp
)
target_include_directories(lifter_unit_tests PRIVATE
    "${CMAKE_CURRENT_SOURCE_DIR}"
    "${CMAKE_CURRENT_SOURCE_DIR}/.."
    "${H2L_RUNTIME_DIR}"
    "${ULTRS_REPO_ROOT}"
)
target_link_libraries(lifter_unit_tests PRIVATE
    horizon2llvm_core
    ultratears_simd_rt
)
set_target_properties(lifter_unit_tests PROPERTIES
    BUILD_RPATH "${ULTRS_LLVM_LIB_DIR}"
    INSTALL_RPATH "${ULTRS_LLVM_LIB_DIR}"
)

add_executable(lifter_fuzz_diff_tests
    test_fuzz_differential.cpp
)
target_include_directories(lifter_fuzz_diff_tests PRIVATE
    "${CMAKE_CURRENT_SOURCE_DIR}"
    "${CMAKE_CURRENT_SOURCE_DIR}/.."
    "${H2L_RUNTIME_DIR}"
    "${ULTRS_REPO_ROOT}"
)
target_link_libraries(lifter_fuzz_diff_tests PRIVATE
    horizon2llvm_core
    ultratears_simd_rt
)
set_target_properties(lifter_fuzz_diff_tests PROPERTIES
    BUILD_RPATH "${ULTRS_LLVM_LIB_DIR}"
    INSTALL_RPATH "${ULTRS_LLVM_LIB_DIR}"
)

add_test(NAME LifterUnitTests COMMAND lifter_unit_tests)
add_test(NAME LifterFuzzDifferentialTests COMMAND lifter_fuzz_diff_tests)
set_tests_properties(LifterUnitTests LifterFuzzDifferentialTests PROPERTIES
    WORKING_DIRECTORY "${ULTRS_REPO_ROOT}"
)
