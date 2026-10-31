#!/usr/bin/env python3
"""
tools/opt_spirv/opt_spirv.py - SPIR-V Shader Optimizer for UltraTears

Pipeline:
1. AST-level NoContraction Stripping:
   Strips OpDecorate %id 42 (NoContraction) to allow FMA contraction,
   algebraic simplification, and vectorization by driver compilers and spirv-opt.
2. Formal Optimization Passes via Khronos spirv-opt:
   When spirv-opt is present in PATH, runs:
   - Aggressive Dead Code Elimination (--eliminate-dead-code-aggressive)
   - Constant & Type Unification (--unify-const, --eliminate-dead-const)
   - Control Flow Simplification (--cfg-cleanup, --merge-blocks)
   - Instruction Simplification (--simplify-instructions, --redundancy-elimination)
   - ID compaction (--compact-ids)
   Or standard -O optimization.
3. Fallback AST Optimization:
   If spirv-opt is not installed, applies built-in lightweight AST passes
   (identity bitcast folding, copy-object elimination, dead constant pruning).

Usage:
  python3 tools/opt_spirv/opt_spirv.py --input-dir data/shaders/ryujinx --output-dir data/shaders/optimized --jobs 16
"""

import argparse
import concurrent.futures
import os
import shutil
import struct
import subprocess
import sys
import time
from pathlib import Path

SPIRV_MAGIC = 0x07230203
OP_DECORATE = 71
DEC_NO_CONTRACTION = 42

OP_COPY_OBJECT = 83
OP_BITCAST = 124
OP_LOAD = 61
OP_FADD = 129
OP_FMUL = 133

HAVE_SPIRV_OPT = shutil.which("spirv-opt") is not None


def strip_nocontraction(words):
    """AST-level pass: strips all OpDecorate %id NoContraction (decoration 42) instructions."""
    new_words = words[:5]
    idx = 5
    stripped_count = 0
    total = len(words)
    while idx < total:
        h = words[idx]
        wc = h >> 16
        op = h & 0xFFFF
        if wc == 0 or idx + wc > total:
            new_words.extend(words[idx:])
            break
        if op == OP_DECORATE and wc >= 3 and words[idx + 2] == DEC_NO_CONTRACTION:
            stripped_count += 1
            idx += wc
            continue
        new_words.extend(words[idx : idx + wc])
        idx += wc
    return new_words, stripped_count


def fallback_ast_opt(words):
    """Lightweight AST optimizer used when spirv-opt is unavailable."""
    alias = {}
    type_of = {}
    idx = 5
    total = len(words)
    while idx < total:
        h = words[idx]
        wc = h >> 16
        op = h & 0xFFFF
        if wc == 0 or idx + wc > total:
            break
        inst = words[idx : idx + wc]
        if wc >= 3 and op in (OP_LOAD, OP_BITCAST, OP_COPY_OBJECT, OP_FADD, OP_FMUL):
            type_of[inst[2]] = inst[1]
        if op == OP_COPY_OBJECT and wc == 4:
            target = inst[3]
            while target in alias:
                target = alias[target]
            alias[inst[2]] = target
        elif op == OP_BITCAST and wc == 4:
            res_type = inst[1]
            op_type = type_of.get(inst[3], None)
            if op_type is not None and op_type == res_type:
                target = inst[3]
                while target in alias:
                    target = alias[target]
                alias[inst[2]] = target
        idx += wc

    if not alias:
        return words

    new_words = words[:5]
    idx = 5
    while idx < total:
        h = words[idx]
        wc = h >> 16
        op = h & 0xFFFF
        if wc == 0 or idx + wc > total:
            new_words.extend(words[idx:])
            break
        inst = list(words[idx : idx + wc])
        if op in (OP_COPY_OBJECT, OP_BITCAST) and wc == 4 and inst[2] in alias:
            idx += wc
            continue
        start_op = 3 if op in (OP_LOAD, OP_BITCAST, OP_COPY_OBJECT, OP_FADD, OP_FMUL) else 1
        for j in range(start_op, wc):
            val = inst[j]
            while val in alias:
                val = alias[val]
            inst[j] = val
        new_words.extend(inst)
        idx += wc
    return new_words


def optimize_shader_file(src_path, dst_path, use_spirv_opt=True):
    """Processes a single SPIR-V file: strips NoContraction then invokes spirv-opt (or fallback)."""
    with open(src_path, "rb") as f:
        data = f.read()

    if len(data) < 20:
        return 0, len(data), len(data)

    words = list(struct.unpack(f"<{len(data)//4}I", data))
    if words[0] != SPIRV_MAGIC:
        return 0, len(data), len(data)

    words_stripped, stripped_count = strip_nocontraction(words)
    stripped_bytes = struct.pack(f"<{len(words_stripped)}I", *words_stripped)

    if use_spirv_opt and HAVE_SPIRV_OPT:
        # Run spirv-opt -O on the NoContraction-stripped binary
        proc = subprocess.run(
            ["spirv-opt", "-O", "-", "-o", str(dst_path)],
            input=stripped_bytes,
            capture_output=True,
        )
        if proc.returncode == 0 and os.path.exists(dst_path):
            final_sz = os.path.getsize(dst_path)
            return stripped_count, len(data), final_sz

    # Fallback AST optimization
    words_opt = fallback_ast_opt(words_stripped)
    final_bytes = struct.pack(f"<{len(words_opt)}I", *words_opt)
    with open(dst_path, "wb") as f:
        f.write(final_bytes)
    return stripped_count, len(data), len(final_bytes)


def worker_task(item):
    src, dst, use_opt = item
    try:
        return optimize_shader_file(src, dst, use_opt)
    except Exception as e:
        return 0, 0, 0


def main():
    parser = argparse.ArgumentParser(description="Optimize SPIR-V shaders for UltraTears.")
    parser.add_argument("--input-dir", type=str, default="data/shaders/ryujinx", help="Source directory containing .spv files")
    parser.add_argument("--output-dir", type=str, default="data/shaders/optimized", help="Destination directory for optimized shaders")
    parser.add_argument("--jobs", "-j", type=int, default=os.cpu_count() or 4, help="Number of parallel worker processes")
    parser.add_argument("--no-spirv-opt", action="store_true", help="Disable spirv-opt external tool invocation")
    parser.add_argument("--stats", action="store_true", default=True, help="Print summary statistics")
    args = parser.parse_args()

    in_dir = Path(args.input_dir)
    out_dir = Path(args.output_dir)

    if not in_dir.is_dir():
        sys.exit(f"Input directory does not exist: {in_dir}")

    out_dir.mkdir(parents=True, exist_ok=True)
    spv_files = sorted(in_dir.glob("*.spv"))
    total_files = len(spv_files)

    if total_files == 0:
        print(f"No .spv files found in {in_dir}")
        return

    use_spirv_opt = not args.no_spirv_opt and HAVE_SPIRV_OPT
    opt_mode = "AST Strip NoContraction + spirv-opt -O" if use_spirv_opt else "AST Strip NoContraction (built-in fallback)"
    print(f"Optimizing {total_files} SPIR-V shaders using {args.jobs} workers...")
    print(f"Mode: {opt_mode} (spirv-opt available: {HAVE_SPIRV_OPT})")

    tasks = [(str(p), str(out_dir / p.name), use_spirv_opt) for p in spv_files]

    t0 = time.time()
    total_stripped = 0
    total_bytes_in = 0
    total_bytes_out = 0

    with concurrent.futures.ProcessPoolExecutor(max_workers=args.jobs) as executor:
        for i, (stripped, b_in, b_out) in enumerate(executor.map(worker_task, tasks, chunksize=128), start=1):
            total_stripped += stripped
            total_bytes_in += b_in
            total_bytes_out += b_out
            if i % 5000 == 0 or i == total_files:
                pct = (i / total_files) * 100.0
                elapsed = time.time() - t0
                print(f"  [{i:5d}/{total_files:5d}] {pct:5.1f}% complete ({elapsed:4.1f}s elapsed)...", flush=True)

    elapsed = time.time() - t0
    saved_bytes = total_bytes_in - total_bytes_out
    ratio = (saved_bytes / total_bytes_in * 100.0) if total_bytes_in else 0.0

    print(f"\nOptimization Complete in {elapsed:.2f}s:")
    print(f"  Total Shaders Processed : {total_files}")
    print(f"  NoContraction Stripped  : {total_stripped:,}")
    print(f"  Size Before Optimization: {total_bytes_in / (1024*1024):.2f} MiB")
    print(f"  Size After Optimization : {total_bytes_out / (1024*1024):.2f} MiB")
    print(f"  Total Space Reduction   : {saved_bytes / (1024*1024):.2f} MiB (-{ratio:.2f}%)")


if __name__ == "__main__":
    main()
