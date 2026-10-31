#!/usr/bin/env bash
# UltraTears Layered Pass Automated Benchmark & Code Dumping Tool
#
# Usage:
#   ./src/horizon2llvm/run_benchmarks.sh [options]
#
# Options forwarded to build/src/horizon2llvm/benchmark/horizon2llvm_benchmark_layers:
#   --perf-dir <dir>       Directory containing perf chunks (default: perf)
#   --raw-ll <file>        Input unlowered reference IR file (default: perf/main_432_raw.ll)
#   --dump-dir <dir>       Directory to dump layered .ll, .o, and .asm files (default: perf/layers)
#   --dump-layers          Dump .ll, .o, and .asm for each layered pass (default: true)
#   --report-out <file>    Markdown report output path (default: perf/layers/BENCHMARK_REPORT.md)
#   --skip-fuzz            Skip differential fuzzing and run benchmarks directly
#   --fuzz-only            Run differential equivalence fuzzing only
#   --fuzz-iters <N>       Number of fuzzing iterations per function (default: 250)
#   --bench-iters <N>      Number of benchmark timing iterations per function (default: 5000)

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
if [[ "$(basename "$(dirname "$SCRIPT_DIR")")" == "src" ]]; then
    REPO_ROOT="$(cd "$SCRIPT_DIR/../.." && pwd)"
else
    REPO_ROOT="$SCRIPT_DIR"
fi
cd "$REPO_ROOT"

cmake -S src/horizon2llvm -B build/src/horizon2llvm -DCMAKE_BUILD_TYPE=Release
cmake --build build/src/horizon2llvm -j4 --target horizon2llvm_benchmark_layers

exec build/src/horizon2llvm/benchmark/horizon2llvm_benchmark_layers "$@"
