#!/usr/bin/env python3
"""Automated External Callee & Branch Sensitivity Analyzer (Python Reference Implementation)

Parses disassembled ARM64 assembly (sample_arm64.asm) and optional LLVM IR (sample.ll),
reconstructs function CFGs (including jump-table switches), identifies true loop back-edges
via CFG dominance, solves longest and common static execution paths over the resulting DAG,
classifies external callees, and synthesizes auto_stubs.c, STUB_ANALYSIS.md, and stub_analysis.json.
"""

from __future__ import annotations

import argparse
import json
import re
import sys
from dataclasses import dataclass, field
from enum import Enum
from pathlib import Path


class StubKind(Enum):
    CONSTANT_ZERO = "CONSTANT_ZERO"
    POINTER_ALLOC = "POINTER_ALLOC"
    BRANCH_SENSITIVE = "BRANCH_SENSITIVE"
    MEMORY_COPY = "MEMORY_COPY"


@dataclass
class CalleeClassification:
    sym_name: str
    target_pc: int = 0
    kind: StubKind = StubKind.CONSTANT_ZERO
    num_args_read: int = 2
    alloc_size_reg: int = -1
    longest_path_ret: int = 0
    alt_branch_ret: int = 1
    policy_bit: int = -1
    returns_ptr_on_nonzero: bool = False
    reason: str = ""


@dataclass
class CFGBlock:
    start_pc: int
    end_pc: int
    insn_count: int
    succs: list[int] = field(default_factory=list)
    back_edge_succs: set[int] = field(default_factory=set)
    is_jump_table_dispatch: bool = False
    is_loop_header: bool = False
    loop_body_insns: int = 0
    longest_remaining_insns: int = 0
    common_remaining_insns: int = 0


@dataclass
class FunctionMetrics:
    name: str
    entry_pc: int
    static_insns: int = 0
    basic_blocks: int = 0
    back_edges: int = 0
    longest_path_insns: int = 0
    common_path_insns: int = 0


def parse_arm64_asm(asm_text: str) -> dict[str, list[tuple[int, str, list[str]]]]:
    """Parse disassembled ARM64 text into {fn_name: [(pc, mnemonic, operands)]}."""
    functions: dict[str, list[tuple[int, str, list[str]]]] = {}
    current_fn = ""
    line_re = re.compile(r"^\s*0x([0-9a-fA-F]+):\s+([0-9a-fA-F]{8})\s+(\w+(?:\.\w+)?)\s*(.*)$")
    fn_hdr_re = re.compile(r"^; Function (f_[0-9a-fA-F]+)")

    for line in asm_text.splitlines():
        line = line.strip()
        m_fn = fn_hdr_re.match(line)
        if m_fn:
            current_fn = m_fn.group(1)
            functions[current_fn] = []
            continue

        m_insn = line_re.match(line)
        if m_insn and current_fn:
            pc = int(m_insn.group(1), 16)
            mnem = m_insn.group(3).lower()
            ops_str = m_insn.group(4).strip()
            ops = [op.strip() for op in ops_str.split(",")] if ops_str else []
            functions[current_fn].append((pc, mnem, ops))

    return functions


def parse_target_pc(pc: int, target_str: str) -> int:
    target_str = target_str.strip().lstrip("#")
    try:
        if (target_str.startswith("-") and target_str[1:].isdigit()) or target_str.isdigit():
            return pc + int(target_str, 10)
        if target_str.startswith("-0x"):
            return pc - int(target_str[3:], 16)
        if target_str.startswith("0x"):
            val = int(target_str, 16)
            if val > 0x10000000:
                return val
            return pc + val
        if target_str.startswith("f_"):
            return int(target_str[2:], 16)
    except ValueError:
        pass
    return 0


def extract_ll_block_pcs(sample_ll_path: Path | None, entry_pc: int, end_pc: int) -> set[int]:
    """Extract guest PC block labels (L_<hex_pc>) from sample.ll if available."""
    pcs: set[int] = set()
    if not sample_ll_path or not sample_ll_path.is_file():
        return pcs
    lbl_re = re.compile(r"\bL_([0-9a-fA-F]{8,16})\b")
    for m in lbl_re.finditer(sample_ll_path.read_text()):
        pc = int(m.group(1), 16)
        if entry_pc <= pc < end_pc:
            pcs.add(pc)
    return pcs


def compute_dominators(
    entry_pc: int,
    blocks: dict[int, CFGBlock],
) -> tuple[set[int], dict[int, set[int]]]:
    """Compute reachable blocks and standard CFG dominator sets starting from entry_pc."""
    reachable: set[int] = set()
    rpo: list[int] = []
    visited: set[int] = set()

    def dfs(u: int):
        visited.add(u)
        reachable.add(u)
        for v in blocks[u].succs:
            if v in blocks and v not in visited:
                dfs(v)
        rpo.append(u)

    if entry_pc in blocks:
        dfs(entry_pc)
    rpo.reverse()

    preds: dict[int, list[int]] = {u: [] for u in reachable}
    for u in reachable:
        for v in blocks[u].succs:
            if v in reachable:
                preds[v].append(u)

    dom: dict[int, set[int]] = {u: set(reachable) for u in reachable}
    if entry_pc in dom:
        dom[entry_pc] = {entry_pc}

    changed = True
    while changed:
        changed = False
        for u in rpo:
            if u == entry_pc:
                continue
            p_list = preds[u]
            if not p_list:
                new_dom = {u}
            else:
                new_dom = set(dom[p_list[0]])
                for p in p_list[1:]:
                    new_dom &= dom[p]
                new_dom.add(u)
            if new_dom != dom[u]:
                dom[u] = new_dom
                changed = True

    return reachable, dom


def build_cfg_and_solve_paths(
    fn_name: str,
    insns: list[tuple[int, str, list[str]]],
    sample_ll_path: Path | None = None,
) -> tuple[FunctionMetrics, dict[int, CFGBlock]]:
    if not insns:
        return FunctionMetrics(name=fn_name, entry_pc=0), {}

    entry_pc = insns[0][0]
    end_pc = insns[-1][0] + 4
    insn_by_pc = {pc: (mnem, ops) for pc, mnem, ops in insns}

    # Step 1: Discover basic block start PCs from ARM64 branches and sample.ll labels
    block_starts = {entry_pc} | extract_ll_block_pcs(sample_ll_path, entry_pc, end_pc)
    for pc, mnem, ops in insns:
        if mnem == "b" or mnem.startswith("b.") or mnem in ("cbz", "cbnz", "tbz", "tbnz"):
            t_pc = parse_target_pc(pc, ops[-1])
            if entry_pc <= t_pc < end_pc:
                block_starts.add(t_pc)
            if pc + 4 < end_pc:
                block_starts.add(pc + 4)
        elif mnem in ("ret", "br"):
            if pc + 4 < end_pc:
                block_starts.add(pc + 4)
        elif mnem == "adr" and len(ops) >= 2:
            t_pc = parse_target_pc(pc, ops[1])
            if entry_pc <= t_pc < end_pc:
                block_starts.add(t_pc)

    sorted_starts = sorted(block_starts)
    blocks: dict[int, CFGBlock] = {}
    br_blocks: list[int] = []

    for idx, b_start in enumerate(sorted_starts):
        b_end = sorted_starts[idx + 1] if idx + 1 < len(sorted_starts) else end_pc
        if b_end <= b_start:
            continue
        last_pc = b_end - 4
        succs: list[int] = []
        is_jt = False

        if last_pc in insn_by_pc:
            mnem, ops = insn_by_pc[last_pc]
            if mnem == "b":
                t_pc = parse_target_pc(last_pc, ops[0])
                if entry_pc <= t_pc < end_pc:
                    succs.append(t_pc)
            elif mnem.startswith("b.") or mnem in ("cbz", "cbnz", "tbz", "tbnz"):
                t_pc = parse_target_pc(last_pc, ops[-1])
                if entry_pc <= t_pc < end_pc:
                    succs.append(t_pc)
                if b_end < end_pc:
                    succs.append(b_end)
            elif mnem == "br":
                is_jt = True
                br_blocks.append(b_start)
            elif mnem != "ret":
                if b_end < end_pc:
                    succs.append(b_end)

        blocks[b_start] = CFGBlock(
            start_pc=b_start,
            end_pc=b_end,
            insn_count=(b_end - b_start) // 4,
            succs=succs,
            is_jump_table_dispatch=is_jt,
        )

    # Step 1b: Connect indirect jump-table (`br xN`) blocks to their case target blocks.
    # Any non-entry block with in_degree == 0 in a function containing a jump-table `br`
    # is an indirect jump target of the preceding `br` dispatch block.
    if br_blocks:
        in_degree: dict[int, int] = {b_pc: 0 for b_pc in blocks}
        for bi in blocks.values():
            for s in bi.succs:
                if s in in_degree:
                    in_degree[s] += 1

        orphan_targets = sorted(
            b_pc for b_pc, deg in in_degree.items() if b_pc != entry_pc and deg == 0
        )
        for jt_pc in br_blocks:
            jt_block = blocks[jt_pc]
            # Find ADR base inside the jump-table block if present
            adr_base = jt_block.end_pc
            for pc in range(jt_block.start_pc, jt_block.end_pc, 4):
                mnem, ops = insn_by_pc.get(pc, ("", []))
                if mnem == "adr" and len(ops) >= 2:
                    cand = parse_target_pc(pc, ops[1])
                    if entry_pc <= cand < end_pc:
                        adr_base = cand
                        break
            targets = [t for t in orphan_targets if t >= adr_base]
            if not targets and jt_block.end_pc in blocks:
                targets = [jt_block.end_pc]
            for t in targets:
                if t not in jt_block.succs:
                    jt_block.succs.append(t)

    # Step 2: Identify true loop back-edges via CFG dominance (plus DFS cycle fallback)
    reachable, dom = compute_dominators(entry_pc, blocks)

    # Also detect any retreating edges in DFS tree in case of irreducible loops
    dfs_back_edges: set[tuple[int, int]] = set()
    dfs_vis: set[int] = set()
    on_stack: set[int] = set()

    def dfs_back(u: int):
        dfs_vis.add(u)
        on_stack.add(u)
        for v in blocks[u].succs:
            if v not in blocks:
                continue
            if v in on_stack:
                dfs_back_edges.add((u, v))
            elif v not in dfs_vis:
                dfs_back(v)
        on_stack.remove(u)

    if entry_pc in blocks:
        dfs_back(entry_pc)

    # Build reverse DAG adjacency for natural loop body discovery
    rev_preds: dict[int, list[int]] = {b_pc: [] for b_pc in blocks}
    for b_pc, bi in blocks.items():
        for s in bi.succs:
            if s in rev_preds:
                rev_preds[s].append(b_pc)

    back_edges = 0
    loop_nodes_by_hdr: dict[int, set[int]] = {}
    for b_pc, bi in blocks.items():
        for s in bi.succs:
            if s not in blocks:
                continue
            is_dom_back = (b_pc in reachable and s in dom.get(b_pc, set()))
            is_dfs_back = (b_pc, s) in dfs_back_edges
            if is_dom_back or is_dfs_back:
                bi.back_edge_succs.add(s)
                back_edges += 1
                hdr = blocks[s]
                hdr.is_loop_header = True
                # Collect natural loop nodes via backward BFS from b_pc stopping at s
                lnodes = loop_nodes_by_hdr.setdefault(s, {s})
                work = [b_pc]
                while work:
                    curr = work.pop()
                    if curr not in lnodes:
                        lnodes.add(curr)
                        for p in rev_preds.get(curr, []):
                            if p not in lnodes:
                                work.append(p)

    for hdr_pc, lnodes in loop_nodes_by_hdr.items():
        body_insns = sum(blocks[n].insn_count for n in lnodes if n in blocks)
        blocks[hdr_pc].loop_body_insns = min(body_insns, 160)

    # Step 3: Iterative fixed-point relaxation over all non-back-edge DAG transitions
    changed = True
    passes = 0
    sorted_pcs_rev = sorted(blocks.keys(), reverse=True)
    while changed and passes < 128:
        changed = False
        passes += 1
        for b_pc in sorted_pcs_rev:
            bi = blocks[b_pc]
            max_succ = 0
            sum_succ = 0
            cnt_succ = 0
            for s in bi.succs:
                if s not in bi.back_edge_succs and s in blocks:
                    s_bi = blocks[s]
                    max_succ = max(max_succ, s_bi.longest_remaining_insns)
                    sum_succ += s_bi.common_remaining_insns
                    cnt_succ += 1

            loop_bonus_long = (bi.loop_body_insns * 3) if bi.is_loop_header else 0
            loop_bonus_common = bi.loop_body_insns if bi.is_loop_header else 0
            new_long = bi.insn_count + loop_bonus_long + max_succ
            new_comm = bi.insn_count + loop_bonus_common + (sum_succ // cnt_succ if cnt_succ else 0)
            if new_long != bi.longest_remaining_insns or new_comm != bi.common_remaining_insns:
                bi.longest_remaining_insns = new_long
                bi.common_remaining_insns = new_comm
                changed = True

    metrics = FunctionMetrics(
        name=fn_name,
        entry_pc=entry_pc,
        static_insns=len(insns),
        basic_blocks=len(blocks),
        back_edges=back_edges,
        longest_path_insns=blocks[entry_pc].longest_remaining_insns if entry_pc in blocks else len(insns),
        common_path_insns=blocks[entry_pc].common_remaining_insns if entry_pc in blocks else len(insns) // 2,
    )
    return metrics, blocks


def _infer_num_args_read(insns: list[tuple[int, str, list[str]]], call_idx: int) -> int:
    """Scan backwards in the current block before `bl` to estimate how many X0..X7 args are set."""
    max_arg = 1
    arg_reg_re = re.compile(r"^[xw]([0-7])$")
    for back in range(1, 16):
        if call_idx - back < 0:
            break
        _, bmnem, bops = insns[call_idx - back]
        if bmnem in ("bl", "blr", "b", "ret", "br") or bmnem.startswith("b.") or bmnem in ("cbz", "cbnz", "tbz", "tbnz"):
            break
        if bops:
            m = arg_reg_re.match(bops[0])
            if m:
                max_arg = max(max_arg, int(m.group(1)) + 1)
    return max_arg


def _detect_memcpy_pattern(insns: list[tuple[int, str, list[str]]], call_idx: int) -> bool:
    """Detect `(dst_ptr, src_ptr, const_size)` setup followed by post-call loads from `dst_ptr`."""
    dst_src_reg = None
    has_x1_ptr = False
    has_w2_const = False
    for back in range(1, 10):
        if call_idx - back < 0:
            break
        _, bmnem, bops = insns[call_idx - back]
        if bmnem in ("bl", "blr", "b", "ret", "br") or bmnem.startswith("b."):
            break
        if bmnem in ("mov", "add") and len(bops) >= 2:
            if bops[0] == "x0" and bops[1].startswith("x"):
                dst_src_reg = bops[1]
            elif bops[0] == "x1" and (bops[1] == "sp" or bops[1].startswith("x")):
                has_x1_ptr = True
            elif bops[0] in ("w2", "x2") and bops[1].startswith("#"):
                has_w2_const = True

    if not (dst_src_reg and has_x1_ptr and has_w2_const):
        return False

    # Check if caller subsequently loads from `[dst_src_reg, ...]`
    for fwd in range(1, 20):
        if call_idx + fwd >= len(insns):
            break
        _, fmnem, fops = insns[call_idx + fwd]
        if fmnem in ("bl", "blr", "ret"):
            break
        if fmnem.startswith("ldr") and len(fops) >= 2 and f"[{dst_src_reg}" in fops[1]:
            return True
    return False


def analyze_callees(
    functions: dict[str, list[tuple[int, str, list[str]]]],
    fn_cfgs: dict[str, dict[int, CFGBlock]],
    sample_ll_path: Path | None = None,
) -> list[CalleeClassification]:
    internal_names = set(functions.keys())
    stub_map: dict[str, CalleeClassification] = {}

    for fn_name, insns in functions.items():
        cfg = fn_cfgs.get(fn_name, {})
        entry_pc = insns[0][0] if insns else 0
        end_pc = insns[-1][0] + 4 if insns else 0

        # Map each instruction PC to its containing basic block for path-length queries
        block_Starts = sorted(cfg.keys())

        def remaining_len_at(pc_val: int) -> int:
            if pc_val in cfg:
                return cfg[pc_val].longest_remaining_insns
            for bs in reversed(block_Starts):
                if bs <= pc_val < cfg[bs].end_pc:
                    return cfg[bs].longest_remaining_insns
            return 0

        for i, (pc, mnem, ops) in enumerate(insns):
            if mnem not in ("bl", "b") or not ops:
                continue

            target_pc = parse_target_pc(pc, ops[0])
            if mnem == "b" and (entry_pc <= target_pc < end_pc):
                continue

            if target_pc:
                target_sym = f"f_{target_pc:x}"
            else:
                target_sym = ops[0].lstrip("#")
                if target_sym.startswith("0x"):
                    try:
                        target_pc = int(target_sym, 16)
                        target_sym = f"f_{target_pc:x}"
                    except ValueError:
                        pass

            if target_sym in internal_names or (target_pc and f"f_{target_pc:x}" in internal_names):
                continue

            if target_sym not in stub_map:
                stub_map[target_sym] = CalleeClassification(sym_name=target_sym, target_pc=target_pc)
            sc = stub_map[target_sym]
            sc.num_args_read = max(sc.num_args_read, _infer_num_args_read(insns, i))

            if _detect_memcpy_pattern(insns, i):
                sc.kind = StubKind.MEMORY_COPY
                sc.reason = f"Copies X2 bytes from src X1 to dst X0 (read after call at 0x{pc:x})"
                continue

            # Track X0 usage up to 12 instructions forward
            x0_aliases = {"x0", "w0"}
            cmp_imm: int | None = None
            for fwd in range(1, 13):
                if i + fwd >= len(insns):
                    break
                fpc, fmnem, fops = insns[i + fwd]
                if fmnem in ("bl", "blr", "b", "ret", "br"):
                    break

                if fmnem == "mov" and len(fops) >= 2:
                    rd, rm = fops[0], fops[1]
                    if rm in x0_aliases:
                        x0_aliases.add(rd)
                        x0_aliases.add("w" + rd[1:] if rd.startswith("x") else "x" + rd[1:])
                    else:
                        x0_aliases.discard(rd)
                    continue

                if fmnem in ("cmp", "subs") and len(fops) >= 2 and fops[0] in x0_aliases:
                    imm_s = fops[-1].lstrip("#")
                    try:
                        cmp_imm = int(imm_s, 0)
                    except ValueError:
                        cmp_imm = 0
                    continue

                if fmnem in ("tst", "ands") and len(fops) >= 2 and fops[0] in x0_aliases:
                    imm_s = fops[-1].lstrip("#")
                    try:
                        cmp_imm = int(imm_s, 0)
                    except ValueError:
                        cmp_imm = 1
                    continue

                if fmnem.startswith("b.") and cmp_imm is not None and fops:
                    cond = fmnem[2:]
                    taken_pc = parse_target_pc(fpc, fops[-1])
                    fall_pc = fpc + 4
                    taken_prefers = remaining_len_at(taken_pc) >= remaining_len_at(fall_pc)
                    val_eq = cmp_imm
                    val_ne = (cmp_imm + 1) if cmp_imm != 0 else 1
                    take_val = val_eq if cond in ("eq", "hs", "cs", "ge", "le", "ls") else val_ne
                    fall_val = val_ne if take_val == val_eq else val_eq
                    sc.kind = StubKind.BRANCH_SENSITIVE
                    sc.longest_path_ret = take_val if taken_prefers else fall_val
                    sc.alt_branch_ret = fall_val if taken_prefers else take_val
                    sc.reason = f"CMP+{fmnem.upper()} on X0 at 0x{fpc:x}"
                    break

                if fmnem in ("cbz", "cbnz") and fops and fops[0] in x0_aliases:
                    is_cbnz = (fmnem == "cbnz")
                    taken_pc = parse_target_pc(fpc, fops[-1])
                    fall_pc = fpc + 4
                    taken_prefers = remaining_len_at(taken_pc) >= remaining_len_at(fall_pc)
                    take_val = 1 if is_cbnz else 0
                    fall_val = 0 if is_cbnz else 1
                    sc.kind = StubKind.BRANCH_SENSITIVE
                    sc.longest_path_ret = take_val if taken_prefers else fall_val
                    sc.alt_branch_ret = fall_val if taken_prefers else take_val
                    sc.reason = f"{fmnem.upper()} on return register {fops[0]} at 0x{fpc:x}"
                    break

                if fmnem in ("tbz", "tbnz") and len(fops) >= 2 and fops[0] in x0_aliases:
                    bit = int(fops[1].lstrip("#"))
                    is_tbnz = (fmnem == "tbnz")
                    mask = 1 << bit
                    taken_pc = parse_target_pc(fpc, fops[-1])
                    fall_pc = fpc + 4
                    taken_prefers = remaining_len_at(taken_pc) >= remaining_len_at(fall_pc)
                    take_val = mask if is_tbnz else 0
                    fall_val = 0 if is_tbnz else mask
                    sc.kind = StubKind.BRANCH_SENSITIVE
                    sc.longest_path_ret = take_val if taken_prefers else fall_val
                    sc.alt_branch_ret = fall_val if taken_prefers else take_val
                    sc.reason = f"{fmnem.upper()} bit #{bit} at 0x{fpc:x}"
                    break

                if fmnem in ("ldr", "str") and len(fops) >= 2:
                    base_reg = re.search(r"\[(x\d+|w\d+)", fops[1])
                    if base_reg and base_reg.group(1) in x0_aliases:
                        sc.kind = StubKind.POINTER_ALLOC
                        sc.returns_ptr_on_nonzero = True
                        sc.longest_path_ret = 0x804000000
                        sc.reason = f"Return value dereferenced as pointer at 0x{fpc:x}"
                        break

    # Discover any additional declared external symbols from sample.ll
    if sample_ll_path and sample_ll_path.is_file():
        builtin_rt = {
            "fnprof_hit", "rt_dispatch", "rt_svc", "rt_brk", "rt_udf", "rt_ticks", "totk_drs_enabled",
            "guest_alloc", "clobber_caller_saved", "stub_reset_state", "stub_set_bench_mode",
            "stub_set_branch_policy", "stub_get_trace_hash", "stub_get_call_count", "stub_get_heap_ptr",
        }
        ll_text = sample_ll_path.read_text()
        decl_re = re.compile(r"^\s*declare\s+(?:dso_local\s+)?[\w\s\*]+\s+@([a-zA-Z0-9_]+)\s*\(")
        for line in ll_text.splitlines():
            m = decl_re.match(line)
            if m:
                sym = m.group(1)
                if (
                    sym.startswith("llvm.")
                    or sym.startswith("rt_")
                    or sym.startswith("simd_")
                    or sym in internal_names
                    or sym in builtin_rt
                ):
                    continue
                if sym not in stub_map:
                    target_pc = 0
                    if sym.startswith("f_"):
                        try:
                            target_pc = int(sym[2:], 16)
                        except ValueError:
                            pass
                    stub_map[sym] = CalleeClassification(
                        sym_name=sym,
                        target_pc=target_pc,
                        kind=StubKind.CONSTANT_ZERO,
                        reason="Discovered from sample.ll external declaration",
                    )

    # Assign policy bits
    policy_bit = 0
    stubs = list(stub_map.values())
    for s in stubs:
        if s.kind == StubKind.BRANCH_SENSITIVE:
            s.policy_bit = policy_bit
            policy_bit += 1
        elif not s.reason:
            s.reason = "Return value X0 unread/overwritten -> constant 0"

    return stubs


def generate_auto_stubs_c(sample_id: str, stubs: list[CalleeClassification], out_path: Path):
    lines = [
        f"// Automatically synthesized branch-aware and constant runtime stubs",
        f"// Generated by UltraTears Python Stub Analyzer for sample: {sample_id}\n",
        "#include <stdint.h>",
        "#include <stdlib.h>",
        "#include <string.h>",
        '#include "cpu.h"\n',
        "volatile int g_fnprof = 0;",
        "uint64_t g_icache_pc[65536];",
        "void* g_icache_fn[65536];\n",
        "uint64_t g_stub_heap_ptr = 0x804000100ULL;",
        "uint64_t g_stub_heap_end = 0x804200000ULL;",
        "uint64_t g_stub_call_count = 0;",
        "int g_bench_mode = 0;",
        "uint32_t g_stub_branch_policy = 0;\n",
        "void stub_set_bench_mode(int m) { g_bench_mode = m; }",
        "void stub_set_branch_policy(uint32_t mask) { g_stub_branch_policy = mask; }\n",
        "uint64_t g_stub_trace_hash = 0xCBF29CE484222325ULL;",
        "uint32_t g_stub_rng_state = 0x12345678u;\n",
    ]

    for s in stubs:
        if s.kind == StubKind.BRANCH_SENSITIVE:
            lines.append(f"static uint32_t s_loop_bound_{s.sym_name} = 0;")
    lines.append("")

    lines += [
        "void stub_reset_state(uint32_t seed) {",
        "    if (g_icache_pc[0] == 0) memset(g_icache_pc, 0xFF, sizeof(g_icache_pc));",
        "    g_stub_heap_ptr = 0x804000100ULL;",
        "    g_stub_call_count = 0;",
        "    g_stub_trace_hash = 0xCBF29CE484222325ULL;",
        "    g_stub_rng_state = seed ? seed : 0x12345678u;",
    ]
    for s in stubs:
        if s.kind == StubKind.BRANCH_SENSITIVE:
            lines.append(f"    s_loop_bound_{s.sym_name} = 0;")
    lines += [
        "}\n",
        "uint64_t stub_get_trace_hash(void) { return g_stub_trace_hash; }",
        "uint64_t stub_get_call_count(void) { return g_stub_call_count; }",
        "uint64_t stub_get_heap_ptr(void)   { return g_stub_heap_ptr; }\n",
        "static inline void clobber_caller_saved(Cpu* c, uint64_t tag, int args) {",
        "    (void)args;",
        "    g_stub_call_count++;",
        "    if (g_bench_mode) return;",
        "    for (int r = 1; r <= 17; ++r) c->x[r] ^= (tag + r);",
        "}\n",
        "static uint64_t guest_alloc(uint64_t sz) {",
        "    sz = (sz + 15ULL) & ~15ULL;",
        "    if (g_stub_heap_ptr + sz > g_stub_heap_end) return 0x803954000ULL;",
        "    uint64_t p = g_stub_heap_ptr; g_stub_heap_ptr += sz;",
        "    uint64_t* q = (uint64_t*)p;",
        "    for (uint64_t i = 0; i < sz / 8; ++i) q[i] = 0x803954000ULL;",
        "    return p;",
        "}\n",
        "void fnprof_hit(uint64_t a, uint64_t b, uint64_t c) { (void)a; (void)b; (void)c; }",
        "void rt_dispatch(Cpu* c) { c->x[0] = guest_alloc(64); }",
        "void rt_svc(Cpu* c, uint32_t imm, uint64_t pc) { (void)c; (void)imm; (void)pc; }",
        "void rt_brk(Cpu* c, uint32_t imm, uint64_t pc) { (void)c; (void)imm; (void)pc; abort(); }",
        "void rt_udf(Cpu* c, uint64_t pc) { (void)c; (void)pc; abort(); }",
        "uint64_t rt_ticks(void) { return 1000ULL + g_stub_call_count; }",
        "int32_t totk_drs_enabled(void) { return 0; }\n",
    ]

    for s in stubs:
        lines.append(f"// [{s.kind.value}] {s.sym_name}: {s.reason}")
        lines.append(f"void {s.sym_name}(Cpu* c) {{")
        tag = f"0x{s.target_pc:x}ULL" if s.target_pc else "0xABCDEF00ULL"
        if s.kind == StubKind.MEMORY_COPY:
            lines.append("    uint64_t dst = c->x[0], src = c->x[1], len = c->x[2] & 0xFFFFFFFFULL;")
            lines.append("    if (dst >= 0x800000000ULL && dst + len <= 0x810000000ULL &&")
            lines.append("        src >= 0x800000000ULL && src + len <= 0x810000000ULL && len <= 4096ULL) {")
            lines.append("        memcpy((void*)(uintptr_t)dst, (const void*)(uintptr_t)src, (size_t)len);")
            lines.append("    }")
            lines.append(f"    clobber_caller_saved(c, {tag}, {s.num_args_read});")
            lines.append("    c->x[0] = dst;")
        elif s.kind == StubKind.POINTER_ALLOC:
            lines.append(f"    clobber_caller_saved(c, {tag}, {s.num_args_read});")
            lines.append("    c->x[0] = guest_alloc(128);")
        elif s.kind == StubKind.BRANCH_SENSITIVE:
            lines.append(f"    clobber_caller_saved(c, {tag}, {s.num_args_read});")
            mask = f"0x{1 << s.policy_bit:x}u" if s.policy_bit >= 0 else "0x1u"
            is_cbz = s.reason.startswith(("CBZ", "CBNZ"))
            alt_expr = "guest_alloc(128)" if (is_cbz and s.alt_branch_ret == 1) else f"0x{s.alt_branch_ret:x}ULL"
            long_expr = "guest_alloc(128)" if (is_cbz and s.longest_path_ret == 1) else f"0x{s.longest_path_ret:x}ULL"
            lines.append(f"    if (++s_loop_bound_{s.sym_name} > 100) {{")
            lines.append(f"        c->x[0] = {alt_expr};")
            lines.append("        return;")
            lines.append("    }")
            lines.append(f"    c->x[0] = (g_stub_branch_policy & {mask}) ? {alt_expr} : {long_expr};")
        else:
            lines.append(f"    clobber_caller_saved(c, {tag}, {s.num_args_read});")
            lines.append("    c->x[0] = 0;")
        lines.append("}\n")

    out_path.write_text("\n".join(lines))


def generate_stub_analysis_md(
    sample_id: str,
    metrics: list[FunctionMetrics],
    fn_cfgs: dict[str, dict[int, CFGBlock]],
    stubs: list[CalleeClassification],
    out_path: Path,
):
    """Generates comprehensive STUB_ANALYSIS.md including accurate Mermaid CFG diagrams."""
    lines = [
        f"# Automated Stub & Static CFG Longest-Path Analysis (`{sample_id}`)\n",
        "## 1. Function Static CFG & Path Length Summary\n",
        "| Function | Entry PC | Static ARM64 Insns | Basic Blocks | Loop Back-Edges | Est. Common Path (ARM64 Insns) | Est. Longest Path (ARM64 Insns) |",
        "| :--- | :--- | ---: | ---: | ---: | ---: | ---: |",
    ]
    for fm in metrics:
        lines.append(
            f"| `{fm.name}` | `0x{fm.entry_pc:x}` | {fm.static_insns} | {fm.basic_blocks} | {fm.back_edges} | {fm.common_path_insns} | {fm.longest_path_insns} |"
        )
    lines.append("")

    lines.append("## 2. Function Control Flow Graphs (CFGs)\n")
    for fm in metrics:
        cfg = fn_cfgs.get(fm.name, {})
        # Recover estimated longest and common executed paths
        longest_blocks = set()
        common_blocks = set()
        curr = fm.entry_pc
        while curr in cfg and cfg[curr].succs:
            longest_blocks.add(curr)
            cands = [s for s in cfg[curr].succs if s not in cfg[curr].back_edge_succs and s in cfg]
            if not cands:
                break
            curr = max(cands, key=lambda s: cfg[s].longest_remaining_insns)
        longest_blocks.add(curr)

        curr = fm.entry_pc
        while curr in cfg and cfg[curr].succs:
            common_blocks.add(curr)
            cands = [s for s in cfg[curr].succs if s not in cfg[curr].back_edge_succs and s in cfg]
            if not cands:
                break
            curr = min(cands, key=lambda s: abs(cfg[s].common_remaining_insns - (cfg[curr].common_remaining_insns - cfg[curr].insn_count)))
        common_blocks.add(curr)

        lines.append(f"### Function `{fm.name}` (`0x{fm.entry_pc:x}` – {fm.static_insns} insns, {fm.basic_blocks} blocks)\n")
        lines.append("```mermaid")
        lines.append("flowchart TD")
        for b_pc in sorted(cfg.keys()):
            bi = cfg[b_pc]
            node_id = f"B_{b_pc:x}"
            node_label = f"\"0x{b_pc:x}..0x{bi.end_pc:x}\\n({bi.insn_count} insns"
            if bi.is_loop_header:
                node_label += ", loop hdr"
            if bi.is_jump_table_dispatch:
                node_label += ", switch"
            node_label += ")\""
            lines.append(f"    {node_id}[{node_label}]")

        for b_pc in sorted(cfg.keys()):
            bi = cfg[b_pc]
            node_id = f"B_{b_pc:x}"
            if not bi.succs:
                lines.append(f"    {node_id} --> EXIT_{b_pc:x}[\"return\"]")
            else:
                for s in bi.succs:
                    succ_id = f"B_{s:x}"
                    if s in bi.back_edge_succs:
                        lines.append(f"    {node_id} -. \"loop back\" .-> {succ_id}")
                    elif bi.is_jump_table_dispatch:
                        lines.append(f"    {node_id} -- \"case\" --> {succ_id}")
                    elif len(bi.succs) > 1:
                        if s == bi.end_pc:
                            lines.append(f"    {node_id} -- \"fallthrough\" --> {succ_id}")
                        else:
                            lines.append(f"    {node_id} -- \"taken\" --> {succ_id}")
                    else:
                        lines.append(f"    {node_id} --> {succ_id}")

        # Highlight longest and common execution paths using direct style statements
        # for broad renderer compatibility (GitHub Flavored Markdown, Mermaid CLI, VS Code preview)
        lines.append("    %% Path Highlighting")
        for b_pc in sorted(cfg.keys()):
            is_l = b_pc in longest_blocks
            is_c = b_pc in common_blocks
            if is_l and is_c:
                lines.append(f"    style B_{b_pc:x} fill:#e8f5e9,stroke:#2e7d32,stroke-width:3px,color:#1b5e20")
            elif is_l:
                lines.append(f"    style B_{b_pc:x} fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c")
            elif is_c:
                lines.append(f"    style B_{b_pc:x} fill:#e1f5fe,stroke:#0288d1,stroke-width:2px,color:#01579b")
        lines.append("```\n")

    n_bz = sum(1 for s in stubs if s.kind == StubKind.BRANCH_SENSITIVE)
    n_ptr = sum(1 for s in stubs if s.kind == StubKind.POINTER_ALLOC)
    n_mcpy = sum(1 for s in stubs if s.kind == StubKind.MEMORY_COPY)
    n_c0 = sum(1 for s in stubs if s.kind == StubKind.CONSTANT_ZERO)
    lines += [
        f"## 3. External Callee Classification ({len(stubs)} total: {n_c0} constant-zero, {n_ptr} pointer-alloc, {n_mcpy} memory-copy, {n_bz} branch-sensitive)\n",
        "| External Symbol | Classification | Args Read | Longest-Path Return (`X0`) | Alt-Branch Return (`X0`) | Post-Call Analysis |",
        "| :--- | :--- | ---: | :--- | :--- | :--- |",
    ]
    for s in stubs:
        if s.kind == StubKind.BRANCH_SENSITIVE:
            kstr = "**BRANCH_SENSITIVE**"
            lret = f"`0x{s.longest_path_ret:x}`"
            aret = f"`0x{s.alt_branch_ret:x}`"
        elif s.kind == StubKind.POINTER_ALLOC:
            kstr = "`POINTER_ALLOC`"
            lret = "`guest_alloc()`"
            aret = "`0x0`"
        elif s.kind == StubKind.MEMORY_COPY:
            kstr = "`MEMORY_COPY`"
            lret = "`dst (X0)`"
            aret = "`dst (X0)`"
        else:
            kstr = "`CONSTANT_ZERO`"
            lret = f"`0x{s.longest_path_ret:x}`"
            aret = f"`0x{s.alt_branch_ret:x}`"
        lines.append(f"| `{s.sym_name}` | {kstr} | {s.num_args_read} | {lret} | {aret} | {s.reason} |")

    lines.append("")
    out_path.write_text("\n".join(lines))


def process_sample(sdir: Path):
    asm_file = sdir / "sample_arm64.asm"
    if not asm_file.is_file():
        print(f"Skipping {sdir}: {asm_file} not found", file=sys.stderr)
        return

    sample_ll = sdir / "sample.ll"
    asm_text = asm_file.read_text()
    functions = parse_arm64_asm(asm_text)

    fn_cfgs = {}
    metrics = []
    for fn_name, insns in functions.items():
        fm, cfg = build_cfg_and_solve_paths(fn_name, insns, sample_ll)
        metrics.append(fm)
        fn_cfgs[fn_name] = cfg

    stubs = analyze_callees(functions, fn_cfgs, sample_ll)
    generate_auto_stubs_c(sdir.name, stubs, sdir / "auto_stubs.c")
    generate_stub_analysis_md(sdir.name, metrics, fn_cfgs, stubs, sdir / "STUB_ANALYSIS.md")

    # Emit machine-readable stub_analysis.json for benchmark harness ingestion
    analysis_json = {
        "sample_id": sdir.name,
        "total_arm64_insns": sum(fm.static_insns for fm in metrics),
        "total_common_path_insns": sum(fm.common_path_insns for fm in metrics),
        "total_longest_path_insns": sum(fm.longest_path_insns for fm in metrics),
        "functions": [
            {
                "name": fm.name,
                "entry_pc": fm.entry_pc,
                "static_insns": fm.static_insns,
                "basic_blocks": fm.basic_blocks,
                "back_edges": fm.back_edges,
                "common_path_insns": fm.common_path_insns,
                "longest_path_insns": fm.longest_path_insns,
            }
            for fm in metrics
        ],
        "num_branch_sensitive": sum(1 for s in stubs if s.kind == StubKind.BRANCH_SENSITIVE),
        "num_pointer_alloc": sum(1 for s in stubs if s.kind == StubKind.POINTER_ALLOC),
        "num_memory_copy": sum(1 for s in stubs if s.kind == StubKind.MEMORY_COPY),
        "num_constant_zero": sum(1 for s in stubs if s.kind == StubKind.CONSTANT_ZERO),
        "external_stubs": [s.sym_name for s in stubs],
    }
    (sdir / "stub_analysis.json").write_text(json.dumps(analysis_json, indent=2))
    print(
        f"Generated auto_stubs.c, STUB_ANALYSIS.md, and stub_analysis.json for {sdir.name} "
        f"({len(stubs)} external callees analyzed)"
    )


def main():
    parser = argparse.ArgumentParser(description="Analyze external callees and generate auto stubs.")
    parser.add_argument("sample_dirs", type=Path, nargs="+", help="Path(s) to benchmark sample directory")
    args = parser.parse_args()

    for sdir in args.sample_dirs:
        process_sample(sdir)


if __name__ == "__main__":
    main()
