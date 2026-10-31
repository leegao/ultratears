#!/usr/bin/env python3
"""
tools/opt_spirv/benchmark.py - Shader Optimization Performance Benchmark on Real GPU

Executes standalone frame replay (replay_frame) across different SPIR-V shader optimization
pipelines to measure true hardware GPU execution time, pass-by-pass latency, and compilation overhead.

Configurations compared:
1. Baseline (Raw Ryujinx Maxwell translations)
2. Pass 1: Strip NoContraction Only
3. spirv-opt -O Only (without stripping NoContraction)
4. Combined: Strip NoContraction + spirv-opt -O
5. Individual Passes:
   - Strip + ADCE (--eliminate-dead-code-aggressive)
   - Strip + Constant Deduplication (--unify-const --eliminate-dead-const)
   - Strip + Instruction Simplification & Redundancy (--simplify-instructions --redundancy-elimination)

Usage:
  python3 tools/opt_spirv/benchmark.py [--frame totk_dump/frame900] [--bench 5]
"""

import argparse
import os
import re
import shutil
import struct
import subprocess
import sys
import tempfile
import time
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent.parent
REPLAY_BIN = ROOT / "build" / "replay_frame"
DEFAULT_FRAME = ROOT / "totk_dump" / "frame900"
FALLBACK_FRAME = ROOT / "src" / "replay" / "tests" / "sample_frame"

OP_DECORATE = 71
DEC_NO_CONTRACTION = 42


def strip_nc_bytes(data):
    """AST-level stripping of OpDecorate %id NoContraction (42)."""
    words = list(struct.unpack(f"<{len(data)//4}I", data))
    new_words = words[:5]
    i = 5
    while i < len(words):
        wc = words[i] >> 16
        op = words[i] & 0xFFFF
        if op == OP_DECORATE and wc >= 3 and words[i + 2] == DEC_NO_CONTRACTION:
            i += wc
            continue
        new_words.extend(words[i : i + wc])
        i += wc
    return struct.pack(f"<{len(new_words)}I", *new_words)


def run_spirv_opt(data, opt_args):
    """Executes spirv-opt with given arguments via stdin/stdout pipe."""
    cmd = ["spirv-opt"] + opt_args + ["-", "-o", "-"]
    proc = subprocess.run(cmd, input=data, capture_output=True)
    return proc.stdout if proc.returncode == 0 and len(proc.stdout) > 20 else data


def build_shader_dir(src_spv_files, dst_dir, transform_fn):
    """Populates dst_dir with transformed .spv files and corresponding .res.json files."""
    dst_dir.mkdir(parents=True, exist_ok=True)
    for s in src_spv_files:
        raw = s.read_bytes()
        out = transform_fn(raw) if transform_fn else raw
        (dst_dir / s.name).write_bytes(out)
        res_j = s.with_suffix(".res.json")
        if res_j.exists():
            shutil.copy(res_j, dst_dir / res_j.name)


def parse_replay_output(stdout, stderr=""):
    """Parses GPU In-Pass Execution and GPU Total Frame Span metrics from replay_frame output."""
    full_output = stdout + "\n" + stderr
    m_inpass = re.search(r"GPU In-Pass Execution\s*\|\s*(\d+)\s*\|\s*([\d.]+)\s+([\d.]+)\s+([\d.]+)\s+([\d.]+)\s+([\d.]+)\s+([\d.]+)\s+([\d.]+)", full_output)
    m_span = re.search(r"GPU Total Frame Span\s*\|\s*(\d+)\s*\|\s*([\d.]+)\s+([\d.]+)\s+([\d.]+)\s+([\d.]+)\s+([\d.]+)\s+([\d.]+)\s+([\d.]+)", full_output)
    m_gpu = re.search(r"\[totk-vk\] GPU:\s*([^\n]+)", full_output)

    gpu_name = m_gpu.group(1).strip() if m_gpu else "Unknown GPU"

    inpass = {
        "avg": float(m_inpass.group(2)) if m_inpass else 0.0,
        "min": float(m_inpass.group(3)) if m_inpass else 0.0,
        "p50": float(m_inpass.group(4)) if m_inpass else 0.0,
        "max": float(m_inpass.group(8)) if m_inpass else 0.0,
    }

    span = {
        "avg": float(m_span.group(2)) if m_span else 0.0,
        "min": float(m_span.group(3)) if m_span else 0.0,
        "p50": float(m_span.group(4)) if m_span else 0.0,
        "max": float(m_span.group(8)) if m_span else 0.0,
    }

    # Extract top passes
    top_passes = {}
    for line in full_output.splitlines():
        m_p = re.search(r"^\s*(\d+)\s+(\d+x\d+)\s+.*?\s*\|\s*([\d.]+)\s+([\d.]+)\s+([\d.]+)", line)
        if m_p:
            p_id = int(m_p.group(1))
            p_p50 = float(m_p.group(5))
            top_passes[p_id] = p_p50

    return gpu_name, inpass, span, top_passes


def main():
    parser = argparse.ArgumentParser(description="Benchmark SPIR-V shader optimization performance on real GPU.")
    parser.add_argument("--frame", type=str, default="", help="Path to captured frame directory")
    parser.add_argument("--bench", type=int, default=5, help="Number of benchmark iterations")
    parser.add_argument("--update-docs", action="store_true", help="Automatically update docs/Opt_spirv.md with results")
    args = parser.parse_args()

    if not REPLAY_BIN.is_file():
        sys.exit(f"Replay binary not found at {REPLAY_BIN}. Build it first.")

    frame_dir = Path(args.frame) if args.frame else (DEFAULT_FRAME if DEFAULT_FRAME.is_dir() else FALLBACK_FRAME)
    if not frame_dir.is_dir():
        sys.exit(f"Frame directory not found: {frame_dir}")

    # Determine shader sources
    sdir = frame_dir / "shaders"
    if not sdir.is_dir() or not list(sdir.glob("*.spv")):
        sdir = ROOT / "data" / "shaders" / "ryujinx"

    spv_files = sorted(sdir.glob("*.spv"))
    if not spv_files:
        sys.exit(f"No .spv files found in {sdir}")

    print(f"=== UltraTears SPIR-V Shader Hardware GPU Performance Benchmark ===")
    print(f"Frame Directory: {frame_dir}")
    print(f"Active Shaders : {len(spv_files)} (.spv) from {sdir}")
    print(f"Iterations     : {args.bench}")

    configs = {
        "Baseline (Ryujinx Raw)": None,
        "Pass 1: Strip NoContraction Only": lambda d: strip_nc_bytes(d),
        "spirv-opt -O Only": lambda d: run_spirv_opt(d, ["-O"]),
        "Combined: Strip + spirv-opt -O": lambda d: run_spirv_opt(strip_nc_bytes(d), ["-O"]),
        "Strip + ADCE Only": lambda d: run_spirv_opt(strip_nc_bytes(d), ["--eliminate-dead-code-aggressive"]),
        "Strip + Const Dedup Only": lambda d: run_spirv_opt(strip_nc_bytes(d), ["--unify-const", "--eliminate-dead-const"]),
        "Strip + Simplify & Redundancy": lambda d: run_spirv_opt(strip_nc_bytes(d), ["--simplify-instructions", "--redundancy-elimination"]),
    }

    results = {}
    gpu_identified = "GPU"

    with tempfile.TemporaryDirectory() as base_tmp:
        base_tmp_p = Path(base_tmp)

        for name, fn in configs.items():
            print(f"\n[Benchmarking] {name}...")
            cfg_dir = base_tmp_p / re.sub(r"[^\w]+", "_", name)
            t_opt_start = time.time()
            build_shader_dir(spv_files, cfg_dir, fn)
            opt_time = time.time() - t_opt_start

            cmd = [
                str(REPLAY_BIN),
                str(frame_dir),
                "--shader-dir",
                str(cfg_dir),
                "--bench",
                str(args.bench),
                "--headless",
            ]
            p = subprocess.run(cmd, cwd=str(ROOT), capture_output=True, text=True)
            if p.returncode != 0:
                print(f"  FAILED: returncode {p.returncode}")
                print(p.stderr[:500])
                continue

            gpu_name, inpass, span, top_passes = parse_replay_output(p.stdout, p.stderr)
            gpu_identified = gpu_name
            results[name] = {
                "inpass": inpass,
                "span": span,
                "top_passes": top_passes,
                "opt_time": opt_time,
            }
            print(f"  -> In-Pass p50: {inpass['p50']:.3f} ms | avg: {inpass['avg']:.3f} ms | min: {inpass['min']:.3f} ms | Total Span p50: {span['p50']:.3f} ms")

    # Format Markdown Report
    base_inpass_p50 = results["Baseline (Ryujinx Raw)"]["inpass"]["p50"] if "Baseline (Ryujinx Raw)" in results else 1.0

    lines = []
    lines.append(f"### Real Hardware GPU Performance Profile ({gpu_identified})\n")
    lines.append("| Pipeline Configuration | GPU In-Pass (p50) | In-Pass (avg) | Speedup / Delta | GPU Frame Span (p50) | Offline Opt Time |")
    lines.append("| :--- | :--- | :--- | :--- | :--- | :--- |")

    tsv_rows = ["Config\tInPassP50\tInPassAvg\tInPassDeltaPct\tSpanP50\tOptTimeSec"]

    for name, r in results.items():
        inp = r["inpass"]
        sp = r["span"]
        delta_pct = ((inp["p50"] - base_inpass_p50) / base_inpass_p50) * 100.0
        delta_str = f"**{delta_pct:+.2f}%**" if abs(delta_pct) > 0.01 else "Baseline"
        lines.append(f"| **{name}** | {inp['p50']:.3f} ms | {inp['avg']:.3f} ms | {delta_str} | {sp['p50']:.3f} ms | {r['opt_time']:.2f}s |")
        tsv_rows.append(f"{name}\t{inp['p50']:.3f}\t{inp['avg']:.3f}\t{delta_pct:.2f}\t{sp['p50']:.3f}\t{r['opt_time']:.2f}")

    # Pass-by-pass breakdown for heavy passes
    lines.append("\n#### Heavy Render Pass Breakdown (GPU In-Pass Execution Time, p50):\n")
    lines.append("| Pass ID | Baseline | Strip NoContraction | Combined (-O) | Delta |")
    lines.append("| :--- | :--- | :--- | :--- | :--- |")

    b_top = results.get("Baseline (Ryujinx Raw)", {}).get("top_passes", {})
    s_top = results.get("Pass 1: Strip NoContraction Only", {}).get("top_passes", {})
    c_top = results.get("Combined: Strip + spirv-opt -O", {}).get("top_passes", {})

    # Top 20 passes by highest median baseline time
    top_20 = sorted(b_top.items(), key=lambda x: x[1], reverse=True)[:20]

    for pid, bp in top_20:
        sp = s_top.get(pid, 0.0)
        cp = c_top.get(pid, 0.0)
        p_delta = ((cp - bp) / bp) * 100.0 if bp > 0 else 0.0
        lines.append(f"| **{pid}** | {bp:.3f} ms | {sp:.3f} ms | {cp:.3f} ms | **{p_delta:+.2f}%** |")

    report = "\n".join(lines)
    print("\n" + report + "\n")

    out_dir = Path("tools/opt_spirv")
    out_dir.mkdir(parents=True, exist_ok=True)
    (out_dir / "benchmark_results.md").write_text(report + "\n", encoding="utf-8")
    (out_dir / "benchmark_results.tsv").write_text("\n".join(tsv_rows) + "\n", encoding="utf-8")
    print("Report saved to tools/opt_spirv/benchmark_results.md and .tsv")


if __name__ == "__main__":
    main()
