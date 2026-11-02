#!/usr/bin/env bash
# UltraTears Layered Pass Automated Benchmark & Code Dumping Tool
# Works with either CMake or Make (when CMake is not installed).
#
# Usage:
#   ./src/horizon2llvm/run_benchmarks.sh [options]
#
# Options forwarded to lifter_benchmark:
#   --sample-dir <dir>     Path to sample directory (default: src/horizon2llvm/benchmark/main_432)
#   --sample-ll <file>     Direct path to sample unlowered IR
#   --all-samples          Run benchmarks across main_432 and all extracted hot/large sample suites
#   --results-dir <dir>    Directory to dump layered .ll, .o, and .asm files
#   --report-out <file>    Markdown report output path
#   --all-layers           Benchmark all 23 individual pass layers (default)
#   --compact-layers       Benchmark grouped 11-layer milestone subset
#   --bench-iters <N>      Number of benchmark timing iterations (default: 3200)

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
if [[ "$(basename "$(dirname "$SCRIPT_DIR")")" == "src" ]]; then
    REPO_ROOT="$(cd "$SCRIPT_DIR/../.." && pwd)"
else
    REPO_ROOT="$SCRIPT_DIR"
fi
cd "$REPO_ROOT"

if command -v cmake >/dev/null 2>&1; then
    cmake -S src/horizon2llvm -B build/src/horizon2llvm -DCMAKE_BUILD_TYPE=Release
    cmake --build build/src/horizon2llvm -j4 --target lifter_benchmark
    exec build/src/horizon2llvm/benchmark/lifter_benchmark "$@"
else
    make -C src/horizon2llvm -j4 build/tools/lifter_benchmark
    exec build/tools/lifter_benchmark "$@"
fi
