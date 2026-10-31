#!/usr/bin/env python3
"""UltraTears Automated Layered Pass Benchmark & Code Dumping Tool.

Iterates through perf/ chunks, lowers each pass layer, dumps .ll and .asm code,
and measures execution performance.
"""

import argparse
import os
import subprocess
import sys


def main():
    repo_root = os.path.abspath(os.path.join(os.path.dirname(__file__), "../.."))
    os.chdir(repo_root)

    parser = argparse.ArgumentParser(
        description="Run UltraTears layered pass benchmarks and dump .ll/.asm code."
    )
    parser.add_argument(
        "--perf-dir",
        default="perf",
        help="Directory containing perf chunks (default: perf)",
    )
    parser.add_argument(
        "--raw-ll",
        default="perf/main_432_raw.ll",
        help="Input unlowered reference IR file (default: perf/main_432_raw.ll)",
    )
    parser.add_argument(
        "--dump-dir",
        default="perf/layers",
        help="Directory to dump layered .ll, .o, and .asm files (default: perf/layers)",
    )
    parser.add_argument(
        "--skip-fuzz",
        action="store_true",
        help="Skip differential fuzzing and run benchmarks directly",
    )
    parser.add_argument(
        "--fuzz-only",
        action="store_true",
        help="Run differential equivalence fuzzing only",
    )
    parser.add_argument(
        "--fuzz-iters",
        type=int,
        default=250,
        help="Number of fuzzing iterations per function (default: 250)",
    )
    parser.add_argument(
        "--bench-iters",
        type=int,
        default=5000,
        help="Number of benchmark timing iterations per function (default: 5000)",
    )
    parser.add_argument(
        "--report-out",
        default="perf/layers/BENCHMARK_REPORT.md",
        help="Markdown report output path (default: perf/layers/BENCHMARK_REPORT.md)",
    )
    parser.add_argument(
        "--rebuild",
        action="store_true",
        help="Force rebuild of lifter and benchmark tools",
    )
    args, extra = parser.parse_known_args()

    bench_bin = os.path.join(repo_root, "build/src/horizon2llvm/benchmark/horizon2llvm_benchmark_layers")
    if args.rebuild or not os.path.isfile(bench_bin) or not os.access(bench_bin, os.X_OK):
        print("[*] Compiling src/horizon2llvm binaries via CMake...")
        subprocess.check_call(["cmake", "-S", "src/horizon2llvm", "-B", "build/src/horizon2llvm", "-DCMAKE_BUILD_TYPE=Release"])
        subprocess.check_call(["cmake", "--build", "build/src/horizon2llvm", "-j4", "--target", "horizon2llvm_benchmark_layers"])

    cmd = [
        bench_bin,
        "--perf-dir", args.perf_dir,
        "--raw-ll", args.raw_ll,
        "--dump-dir", args.dump_dir,
        "--report-out", args.report_out,
        "--fuzz-iters", str(args.fuzz_iters),
        "--bench-iters", str(args.bench_iters),
    ]
    if args.skip_fuzz:
        cmd.append("--skip-fuzz")
    if args.fuzz_only:
        cmd.append("--fuzz-only")
    cmd.extend(extra)

    print(f"[*] Executing: {' '.join(cmd)}")
    sys.exit(subprocess.call(cmd))


if __name__ == "__main__":
    main()
