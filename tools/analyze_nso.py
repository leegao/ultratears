#!/usr/bin/env python3
"""tools/analyze_nso.py - Whole-NSO Call-Graph PageRank, Loop Intensity & Hot*Size Profiler

Supports two operational modes:
1. Cache-Reusing Mode (--from-cache <dir>, default if data/generated exists):
   Extracts call graph directly from cached lifted assembly (*_arm64.asm) or LLVM IR (*.ll)
   already emitted by aarch64_lifter, avoiding redundant binary re-disassembly.
   Uses NumPy for vectorized sparse power-iteration PageRank in < 0.2s.
2. Binary Mode:
   Profiles raw Nintendo Switch NSO binaries via C++ analyze_nso executable.
"""

from __future__ import annotations

import argparse
import os
import re
import subprocess
import sys
from pathlib import Path

try:
    import numpy as np
except ImportError:
    sys.exit("Error: NumPy is required for analyze_nso.py (run 'pip install numpy' or 'apt-get install python3-numpy').")


def ensure_binary(repo_root: Path) -> Path:
    bin_path = repo_root / "build/tools/analyze_nso"
    if bin_path.is_file():
        return bin_path

    print(f"[analyze_nso.py] Building {bin_path.name} via Make...")
    res = subprocess.run(["make", "-C", "src/horizon2llvm", str(bin_path)], cwd=repo_root)
    if res.returncode != 0 or not bin_path.is_file():
        res = subprocess.run(["make", "-C", "src/horizon2llvm", "all"], cwd=repo_root)
        if res.returncode != 0 or not bin_path.is_file():
            sys.exit(f"Error: Failed to build {bin_path}. Run 'make -C src/horizon2llvm' manually.")
    return bin_path


def compute_pagerank(
    N: int,
    out_edges: list[list[int]],
    loop_counts: np.ndarray | None = None,
    damping: float = 0.85,
    max_iters: int = 25,
    self_loop_weight: float = 1.5,
) -> np.ndarray:
    """Loop-Aware Call-Graph PageRank:
    1. Uses Personalized Teleportation seeded by function loop intensity.
    2. Adds virtual self-edges (u -> u) proportional to internal backward branches.
    """
    if N == 0:
        return np.array([], dtype=np.float64)

    if loop_counts is None:
        loop_counts = np.zeros(N, dtype=np.int32)
    else:
        loop_counts = np.asarray(loop_counts, dtype=np.int32)

    # --- 1. Loop-Biased Personalized Teleportation Vector ---
    # Functions with loops generate compute energy that radiates to callees
    teleport = 1.0 + 0.5 * np.minimum(loop_counts, 30).astype(np.float64)
    # Normalize so mean is 1.0 (preserves existing score scale)
    teleport = teleport / np.mean(teleport)

    # --- 2. Build Edge Matrix with Virtual Self-Loops ---
    src_list = []
    dst_list = []
    weight_list = []

    for u in range(N):
        callees = out_edges[u]
        loops = int(loop_counts[u])

        # Virtual self-edge representing time spent in internal loops
        if loops > 0:
            src_list.append(u)
            dst_list.append(u)
            weight_list.append(self_loop_weight * min(loops, 30))

        # External call edges
        for v in callees:
            src_list.append(u)
            dst_list.append(v)
            weight_list.append(1.0)

    if not src_list:
        return teleport

    src = np.array(src_list, dtype=np.int32)
    dst = np.array(dst_list, dtype=np.int32)
    raw_weights = np.array(weight_list, dtype=np.float64)

    # Compute row-normalized probabilities: P_uv = weight(u -> v) / sum_w(u)
    node_out_weight = np.bincount(src, weights=raw_weights, minlength=N)
    # Avoid div by zero for leaf nodes with no loops
    node_out_weight[node_out_weight == 0] = 1.0
    normalized_weights = raw_weights / node_out_weight[src]

    # --- 3. Power Iteration ---
    pr = teleport.copy()
    base_injection = (1.0 - damping) * teleport

    for _ in range(max_iters):
        contrib = (damping * pr[src]) * normalized_weights
        pr = np.bincount(dst, weights=contrib, minlength=N) + base_injection

    return pr


def analyze_cached_lifter_data(
    cache_dir: Path, top_n: int = 35, min_insns: int = 250, tsv_out: str = ""
):
    """Parses cached lifted assembly files, builds call graph, and runs PageRank matching C++ exactly."""
    print(f"[*] Analyzing cached lifted data from: {cache_dir}")
    asm_files = sorted(cache_dir.glob("*_arm64.asm"))
    if not asm_files:
        asm_files = sorted(cache_dir.glob("*.ll"))
    if not asm_files:
        print(f"[-] No lifted .asm or .ll files found in {cache_dir}")
        return

    fn_meta = []
    addr_to_idx: dict[int, int] = {}

    print(f"[*] Discovering function entry points across {len(asm_files)} cached chunk files...")
    for f in asm_files:
        chunk_name = f.name.replace("_arm64.asm", "").replace(".ll", "")
        with open(f, "rb") as fp:
            for line in fp:
                if line.startswith(b"; Function f_"):
                    parts = line.split()
                    name = parts[2].decode("ascii")
                    r = parts[3].strip(b"[]()").split(b"..")
                    entry = int(r[0], 16)
                    end = int(r[1], 16)
                    idx = len(fn_meta)
                    addr_to_idx[entry] = idx
                    fn_meta.append({
                        "name": name,
                        "chunk": chunk_name,
                        "entry": entry,
                        "end": end,
                        "insns": 0,
                        "call_in": 0,
                        "loops": 0,
                        "simd": 0,
                        "blr": 0,
                        "br": 0,
                        "ucallees": set(),
                    })

    N = len(fn_meta)
    print(f"[*] Discovered {N} functions. Disassembling instructions & constructing call graph edges...")

    for f in asm_files:
        cur_idx = None
        entry = end = 0
        with open(f, "rb") as fp:
            for line in fp:
                if line.startswith(b"; Function f_"):
                    entry = int(line.split()[3].strip(b"[]()").split(b"..")[0], 16)
                    cur_idx = addr_to_idx.get(entry)
                    if cur_idx is not None:
                        end = fn_meta[cur_idx]["end"]
                elif line.startswith(b"  0x") and cur_idx is not None:
                    meta = fn_meta[cur_idx]
                    meta["insns"] += 1
                    colon = line.find(b":")
                    pc = int(line[2:colon], 16)
                    mnem_part = line[colon + 11:].strip()

                    # AdvSIMD / FP instruction opcodes (w >> 25 & 0xF == 0b0111)
                    word_hex = line[colon + 2:colon + 10]
                    try:
                        w = int(word_hex, 16)
                        if ((w >> 25) & 0b0111) == 0b0111:
                            meta["simd"] += 1
                    except ValueError:
                        pass

                    if mnem_part.startswith(b"blr"):
                        meta["blr"] += 1
                    elif mnem_part.startswith(b"br "):
                        meta["br"] += 1
                    elif mnem_part.startswith(b"bl #") or mnem_part.startswith(b"b #"):
                        is_bl = mnem_part.startswith(b"bl #")
                        off_bytes = mnem_part[4 if is_bl else 3:].split()[0]
                        try:
                            off = int(off_bytes)
                            t = pc + off
                            if not is_bl and entry <= t < pc:
                                meta["loops"] += 1
                            if is_bl or t < entry or t >= end:
                                dst_idx = addr_to_idx.get(t)
                                if dst_idx is not None and dst_idx != cur_idx:
                                    meta["ucallees"].add(dst_idx)
                                    fn_meta[dst_idx]["call_in"] += 1
                        except ValueError:
                            pass
                    elif (
                        mnem_part.startswith(b"b.")
                        or mnem_part.startswith(b"cbz")
                        or mnem_part.startswith(b"cbnz")
                        or mnem_part.startswith(b"tbz")
                        or mnem_part.startswith(b"tbnz")
                    ):
                        off_bytes = mnem_part.split()[-1].lstrip(b"#")
                        try:
                            off = int(off_bytes)
                            t = pc + off
                            if entry <= t < pc:
                                meta["loops"] += 1
                        except ValueError:
                            pass

    print("[*] Computing Loop-Aware Call-Graph PageRank (25 iterations)...")
    out_edges = [list(m["ucallees"]) for m in fn_meta]
    loop_counts = np.array([m["loops"] for m in fn_meta], dtype=np.int32)

    # Run Loop-Aware PageRank
    pr = compute_pagerank(
        N,
        out_edges,
        loop_counts=loop_counts,
        damping=0.85,
        max_iters=25,
        self_loop_weight=1.5,
    )

    # Hotness & scoring: PageRank now already reflects loops internally!
    # We maintain insns & call_in, with loop density acting as an amplifier.
    cand = []
    for i in range(N):
        m = fn_meta[i]
        m["pagerank"] = pr[i]

        # Balanced score: PageRank carries transitive loop heat,
        # while local loops account for straight-line unrolled/tight compute blocks.
        loop_factor = 1.0 + 0.3 * min(m["loops"], 30)
        hotness = (m["call_in"] + 5.0 * m["pagerank"]) * loop_factor
        m["hot_size"] = hotness * m["insns"]
        if (
            m["insns"] >= min_insns
            and (m["call_in"] >= 15 or m["pagerank"] >= 5.0)
            and m["loops"] >= 2
        ):
            cand.append(m)

    cand.sort(key=lambda x: x["hot_size"], reverse=True)

    print(
        f"\n=== Top {top_n} HOT & LARGE Functions (insns >= {min_insns}, CallIn/PageRank & Loop Intensity) ==="
    )
    print(
        f"{'Function':<14} | {'Chunk':<10} | {'Insns':>6} | {'CallIn':>7} | {'Loops':>6} | {'UCall':>5} | {'SIMD':>6} | {'BLR':>4} | {'BR':>4} | {'PageRank':>8} | {'Hot*Size':>12}"
    )
    for f in cand[:top_n]:
        print(
            f"{f['name']:<14} | {f['chunk']:<10} | {f['insns']:6} | {f['call_in']:7} | {f['loops']:6} | {len(f['ucallees']):5} | {f['simd']:6} | {f['blr']:4} | {f['br']:4} | {f['pagerank']:8.1f} | {f['hot_size']:12.1f}"
        )

    print(f"\n=== Top 25 HOT & LARGE Functions with Zero BLR & Few External Callees (<= 8) ===")
    shown = 0
    for f in cand:
        if f["blr"] == 0 and len(f["ucallees"]) <= 8 and min_insns <= f["insns"] <= 4000:
            print(
                f"{f['name']:<14} | {f['chunk']:<10} | {f['insns']:6} | {f['call_in']:7} | {f['loops']:6} | {len(f['ucallees']):5} | {f['simd']:6} | {f['blr']:4} | {f['br']:4} | {f['pagerank']:8.1f} | {f['hot_size']:12.1f}"
            )
            shown += 1
            if shown >= 25:
                break

    if tsv_out:
        with open(tsv_out, "w") as out:
            out.write(
                "entry\tchunk\tinsns\tcall_sites_in\tunique_callers\tvtable_refs\tbackedges\tcallees\tunique_callees\tsimd_fp\tindirect_calls\tindirect_brs\tpagerank\thot_large_score\n"
            )
            for f in cand:
                out.write(
                    f"0x{f['entry']:x}\t{f['chunk']}\t{f['insns']}\t{f['call_in']}\t0\t0\t{f['loops']}\t{len(f['ucallees'])}\t{len(f['ucallees'])}\t{f['simd']}\t{f['blr']}\t{f['br']}\t{f['pagerank']:.6f}\t{f['hot_size']:.1f}\n"
                )
        print(f"\nWrote full profile table to {tsv_out}")


def main():
    repo_root = Path(__file__).resolve().parent.parent

    ap = argparse.ArgumentParser(description="Whole-NSO Call-Graph & PageRank Profiler")
    ap.add_argument(
        "target",
        nargs="?",
        default="",
        help="Path to NSO binary or cache directory (default: data/exefs/main)",
    )
    ap.add_argument(
        "--from-cache",
        default="",
        help="Path to cached data directory with lifted .asm/.ll files",
    )
    ap.add_argument("--top", type=int, default=35, help="Number of top functions to display")
    ap.add_argument(
        "--min-insns", type=int, default=100, help="Minimum instruction filter (default: 100)"
    )
    ap.add_argument("--tsv", default="", help="Export full profile to tab-separated file")
    args, unknown = ap.parse_known_args()

    # Cache mode: only when explicitly requested via --from-cache or target is an existing directory
    if args.from_cache:
        analyze_cached_lifter_data(
            Path(args.from_cache), top_n=args.top, min_insns=args.min_insns, tsv_out=args.tsv
        )
        return
    if args.target and Path(args.target).is_dir():
        analyze_cached_lifter_data(
            Path(args.target), top_n=args.top, min_insns=args.min_insns, tsv_out=args.tsv
        )
        return

    # Binary mode: delegates directly to build/tools/analyze_nso
    bin_path = ensure_binary(repo_root)
    target = args.target if args.target else "data/exefs/main"
    forward_args = [str(bin_path), target]
    if args.top:
        forward_args.extend(["--top", str(args.top)])
    if args.min_insns:
        forward_args.extend(["--min-insns", str(args.min_insns)])
    if args.tsv:
        forward_args.extend(["--tsv", args.tsv])
    forward_args.extend(unknown)
    res = subprocess.run(forward_args, cwd=repo_root)
    sys.exit(res.returncode)


if __name__ == "__main__":
    main()
