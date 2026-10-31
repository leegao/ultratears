cmake_minimum_required(VERSION 3.16)

set(ULTRS_REPO_ROOT "${CMAKE_CURRENT_SOURCE_DIR}/../../..")

set(BENCHMARK_COMMON_SOURCES
    benchmark_common.cpp
    main_432/runtime_stubs.cpp
)

add_executable(lifter_benchmark
    bench_main.cpp
    ${BENCHMARK_COMMON_SOURCES}
)
target_include_directories(lifter_benchmark PRIVATE
    "${CMAKE_CURRENT_SOURCE_DIR}"
    "${CMAKE_CURRENT_SOURCE_DIR}/.."
    "${ULTRS_REPO_ROOT}"
    "${ULTRS_REPO_ROOT}/src/runtime"
)
target_link_libraries(lifter_benchmark PRIVATE
    horizon2llvm_core
    ultratears_simd_rt
)
set_target_properties(lifter_benchmark PROPERTIES
    BUILD_RPATH "${ULTRS_LLVM_LIB_DIR}"
    INSTALL_RPATH "${ULTRS_LLVM_LIB_DIR}"
)

add_executable(lifter_fuzz
    fuzz_main.cpp
    ${BENCHMARK_COMMON_SOURCES}
)
target_include_directories(lifter_fuzz PRIVATE
    "${CMAKE_CURRENT_SOURCE_DIR}"
    "${CMAKE_CURRENT_SOURCE_DIR}/.."
    "${ULTRS_REPO_ROOT}"
    "${ULTRS_REPO_ROOT}/src/runtime"
)
target_link_libraries(lifter_fuzz PRIVATE
    horizon2llvm_core
    ultratears_simd_rt
)
set_target_properties(lifter_fuzz PROPERTIES
    BUILD_RPATH "${ULTRS_LLVM_LIB_DIR}"
    INSTALL_RPATH "${ULTRS_LLVM_LIB_DIR}"
)

add_executable(horizon2llvm_benchmark_layers
    bench_main.cpp
    ${BENCHMARK_COMMON_SOURCES}
)
target_include_directories(horizon2llvm_benchmark_layers PRIVATE
    "${CMAKE_CURRENT_SOURCE_DIR}"
    "${CMAKE_CURRENT_SOURCE_DIR}/.."
    "${ULTRS_REPO_ROOT}"
    "${ULTRS_REPO_ROOT}/src/runtime"
)
target_link_libraries(horizon2llvm_benchmark_layers PRIVATE
    horizon2llvm_core
    ultratears_simd_rt
)
set_target_properties(horizon2llvm_benchmark_layers PROPERTIES
    BUILD_RPATH "${ULTRS_LLVM_LIB_DIR}"
    INSTALL_RPATH "${ULTRS_LLVM_LIB_DIR}"
)
