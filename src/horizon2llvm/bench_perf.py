#!/usr/bin/env python3
"""UltraTears Automated Layered Pass Benchmark & Differential Fuzzing Runner.

Supports both single-sample and multi-sample (--all-samples) orchestration across all 23 lowering passes,
driving the core C++ lifter_benchmark and lifter_fuzz binaries.
"""

import argparse
import json
import os
import shutil
import subprocess
import sys


def get_all_suites(bench_root):
    suites = []
    if not os.path.isdir(bench_root):
        return suites
    for entry in sorted(os.listdir(bench_root)):
        sub = os.path.join(bench_root, entry)
        if os.path.isdir(sub) and os.path.isfile(os.path.join(sub, "sample.ll")):
            if entry == "main_159_dispatch":
                # Disabled in --all-samples: f_8002824a0 is an internal event-dispatch
                # traversal loop (~4.5s per iteration); tested and benchmarked separately.
                continue
            # if entry == "main_180_eventengine":
            #     # Disabled in --all-samples: f_8002d8e30 infinite loops
            #     continue
            # if entry == "main_432":
            #     # Disabled in --all-samples: f_80077be18 takes too long
            #     # Program received signal SIGSEGV, Segmentation fault.
            #     # 0x000077c207562955 in f_80077be18 () from /tmp/lib_main_432_layer_21a_pass21_safe_default.so
            #     # (gdb) bt
            #     #0  0x000077c207562955 in f_80077be18 () from /tmp/lib_main_432_layer_21a_pass21_safe_default.so
            #     #1  0x0000594e3012539c in ultrs::benchmark::run_guest_fn_safely(void (*)(Cpu*), Cpu*) ()
            #     #2  0x0000594e301563d3 in ultrs::benchmark::discover_observed_path_profiles(ultrs::benchmark::ISampleHarness*, ultrs::benchmark::SharedModuleHandle&, unsigned long) ()
            #     #3  0x0000594e30163669 in (anonymous namespace)::benchmark_observed_profiles((anonymous namespace)::SampleBenchmarkContext&, (anonymous namespace)::LayerRow const*, (anonymous namespace)::LayerRow const*, (anonymous namespace)::LayerRow const*) ()
            #     #4  0x0000594e2ffd105a in main ()
            #     # too many page faults causing this to just take forever
            #     continue
            # if entry == "main_163_actor":
            #     # pass
            #     continue
            suites.append(entry)
    return suites


def main():
    script_dir = os.path.abspath(os.path.dirname(__file__))
    if os.path.basename(os.path.dirname(script_dir)) == "src":
        repo_root = os.path.abspath(os.path.join(script_dir, "../.."))
    else:
        repo_root = script_dir
    os.chdir(repo_root)

    parser = argparse.ArgumentParser(
        description="Run UltraTears layered pass benchmarks, stub synthesis, and differential fuzzing."
    )
    parser.add_argument(
        "--bench-root",
        default="src/horizon2llvm/benchmark/samples",
        help="Root benchmark directory containing suites (default: src/horizon2llvm/benchmark/samples)",
    )
    parser.add_argument(
        "--sample-dir",
        default="",
        help="Specific sample directory or name (e.g. main_432 or src/horizon2llvm/benchmark/main_432)",
    )
    parser.add_argument(
        "--sample-ll",
        default="",
        help="Direct path to arbitrary unlowered .ll file",
    )
    parser.add_argument(
        "--nso",
        default="",
        help="Optional path to main NSO binary (only needed for rodata devirtualization or leaf inlining)",
    )
    parser.add_argument(
        "--all-samples",
        action="store_true",
        help="Run across main_432 and all extracted hot/large sample suites",
    )
    parser.add_argument(
        "--results-dir",
        default="",
        help="Directory to dump layered .ll, .o, and .asm files",
    )
    parser.add_argument(
        "--report-out",
        default="",
        help="Markdown report output path",
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
        default=200,
        help="Number of fuzzing iterations per function (default: 200)",
    )
    parser.add_argument(
        "--bench-iters",
        type=int,
        default=3200,
        help="Number of benchmark timing iterations per layer (default: 3200)",
    )
    parser.add_argument(
        "--compact-layers",
        action="store_true",
        help="Use grouped 11-layer milestone table instead of all 23 individual passes",
    )
    parser.add_argument(
        "--rebuild",
        action="store_true",
        help="Force rebuild of lifter, fuzz, and benchmark binaries",
    )
    args, extra = parser.parse_known_args()

    bench_bin = os.path.join(repo_root, "build/tools/lifter_benchmark")
    fuzz_bin = os.path.join(repo_root, "build/tools/lifter_fuzz")

    if args.rebuild or not (os.path.isfile(bench_bin) and os.path.isfile(fuzz_bin)):
        print("[*] Building horizon2llvm benchmark & fuzz tools via Make...")
        subprocess.check_call(["make", "-C", "src/horizon2llvm", "-j4", "all"])

    bench_root = os.path.abspath(args.bench_root)

    if not args.skip_fuzz:
        fuzz_cmd = [fuzz_bin, "--fuzz-iters", str(args.fuzz_iters)]
        if args.all_samples:
            fuzz_cmd.append("--all-samples")
        else:
            s_dir = args.sample_dir if args.sample_dir else os.path.join(bench_root, "main_432")
            fuzz_cmd.extend(["--sample-dir", s_dir])
            if args.sample_ll:
                fuzz_cmd.extend(["--sample-ll", args.sample_ll])
        print(f"[*] Executing Differential Fuzzing: {' '.join(fuzz_cmd)}")
        rc = subprocess.call(fuzz_cmd)
        if rc != 0 or args.fuzz_only:
            sys.exit(rc)

    if not args.all_samples:
        s_dir = args.sample_dir if args.sample_dir else os.path.join(bench_root, "main_432")
        bench_cmd = [
            bench_bin,
            "--bench-root", bench_root,
            "--sample-dir", s_dir,
            "--bench-iters", str(args.bench_iters),
        ]
        if args.sample_ll:
            bench_cmd.extend(["--sample-ll", args.sample_ll])
        if args.nso:
            bench_cmd.extend(["--nso", args.nso])
        if args.results_dir:
            bench_cmd.extend(["--results-dir", args.results_dir])
        if args.report_out:
            bench_cmd.extend(["--report-out", args.report_out])
        if args.compact_layers:
            bench_cmd.append("--compact-layers")
        bench_cmd.extend(extra)
        print(f"[*] Executing Single-Sample Benchmark: {' '.join(bench_cmd)}")
        sys.exit(subprocess.call(bench_cmd))

    # Multi-sample execution (--all-samples) orchestrated in Python
    all_suites = get_all_suites(bench_root)
    print(f"[*] Discovered {len(all_suites)} benchmark suites under {bench_root}")

    results = []
    tmp_json_dir = "/tmp/ultrs_bench_jsons"
    os.makedirs(tmp_json_dir, exist_ok=True)

    for suite_name in all_suites:
        suite_path = os.path.join(bench_root, suite_name)
        json_file = os.path.join(tmp_json_dir, f"{suite_name}.json")
        cmd = [
            bench_bin,
            "--bench-root", bench_root,
            "--sample-dir", suite_path,
            "--bench-iters", str(args.bench_iters),
            "--json-out", json_file,
        ]
        if args.compact_layers:
            cmd.append("--compact-layers")
        if args.nso:
            cmd.extend(["--nso", args.nso])

        print(f"\n=======================================================")
        print(f"[*] Running suite: {suite_name}")
        print(f"=======================================================")
        rc = subprocess.call(cmd)
        if rc == 0 and os.path.isfile(json_file):
            try:
                with open(json_file) as jf:
                    data = json.load(jf)
                    results.append(data)
            except Exception as e:
                print(f"[!] Warning: failed to parse {json_file}: {e}")

    # Generate or update MASTER_BENCHMARK_SUMMARY.md
    summary_path = os.path.join(bench_root, "MASTER_BENCHMARK_SUMMARY.md")
    print(f"\n[*] Emitting Master Summary across {len(results)} suites -> {summary_path}")
    with open(summary_path, "w") as out:
        out.write("# UltraTears Cross-Sample Master Benchmark Summary (`src/horizon2llvm/benchmark/`)\n\n")
        out.write(f"This summary aggregates **{len(results)} benchmark suites** across all 23 lowering passes.\n\n")
        out.write("| Sample Suite | Fns | ARM64 Insns | x86-64 Insns (Raw -> Safe -> All) | Ratio vs ARM64 | Est. Common / Longest (ns) | Empirical p50: No-Opt -> Safe -> All (ns) | Speedup (p50) | Detailed Report |\n")
        out.write("| :--- | ---: | ---: | ---: | ---: | ---: | ---: | ---: | :--- |\n")
        for r in results:
            name = r.get("sample", "")
            fns = r.get("fns", 1)
            arm = r.get("arm64_insns", 0)
            x_raw = r.get("x86_raw", 0)
            x_safe = r.get("x86_safe", 0)
            x_all = r.get("x86_all", 0)
            ratio = r.get("ratio_all", 1.0)
            est_c = r.get("est_common_ns", 0.0)
            est_l = r.get("est_longest_ns", 0.0)
            p_noopt = r.get("p50_noopt_ns", 0.0)
            p_safe = r.get("p50_safe_ns", 0.0)
            p_all = r.get("p50_all_ns", 0.0)
            speedup = r.get("speedup_p50", 1.0)
            rpt_path = r.get("report_path", "")
            rel_rpt = os.path.relpath(rpt_path, repo_root) if os.path.isabs(rpt_path) else rpt_path

            out.write(
                f"| **`{name}`** | {fns} | {arm} | {x_raw} -> {x_safe} -> **{x_all}** | **{ratio:.2f}x** | "
                f"{est_c:.1f} / {est_l:.1f} | {p_noopt:.1f} -> {p_safe:.1f} -> **{p_all:.1f}** | **{speedup:.2f}x** | "
                f"`{rel_rpt}` |\n"
            )

    print("[*] All benchmarks complete!")


if __name__ == "__main__":
    main()
