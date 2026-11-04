"""AArch64 Control-Flow Graph (CFG) reconstruction, dominance, and DAG reduction."""

from __future__ import annotations

import collections
from pathlib import Path
import re
from typing import Sequence

from .models import CFGBlock, LoopInfo


def parse_arm64_asm(asm_text: str) -> dict[str, list[tuple[int, str, list[str]]]]:
    """Parse disassembled ARM64 text into {fn_name: [(pc, mnemonic, operands)]}."""
    functions: dict[str, list[tuple[int, str, list[str]]]] = {}
    current_fn = ""
    line_re = re.compile(r"^\s*0x([0-9a-fA-F]+):\s+([0-9a-fA-F]{8})\s+(\w+(?:\.\w+)?)\s*(.*)$")
    fn_hdr_re = re.compile(r"^; Function (f_[0-9a-fA-F]+)")
    label_re = re.compile(r"^(f_[0-9a-fA-F]+):")

    for raw_line in asm_text.splitlines():
        line = raw_line.strip()
        m_fn = fn_hdr_re.match(line) or label_re.match(line)
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
    """Parses relative (#offset) or absolute (0x...) branch targets."""
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
        for v in blocks[u].successors:
            if v in blocks and v not in visited:
                dfs(v)
        rpo.append(u)

    if entry_pc in blocks:
        dfs(entry_pc)
    rpo.reverse()

    preds: dict[int, list[int]] = {u: [] for u in reachable}
    for u in reachable:
        for v in blocks[u].successors:
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


def detect_natural_loops(blocks: dict[int, CFGBlock], entry_pc: int) -> list[LoopInfo]:
    """Detects natural loops via dominance and back-edge analysis."""
    reachable, dom = compute_dominators(entry_pc, blocks)
    header_to_backs: dict[int, list[int]] = collections.defaultdict(list)

    for src_pc in reachable:
        for succ_pc in blocks[src_pc].successors:
            if succ_pc in dom.get(src_pc, set()):
                header_to_backs[succ_pc].append(src_pc)

    loops: list[LoopInfo] = []
    for h_pc, backs in header_to_backs.items():
        body: set[int] = {h_pc}
        stack = list(backs)
        while stack:
            n = stack.pop()
            if n not in body:
                body.add(n)
                if n in blocks:
                    for p in blocks[n].predecessors:
                        stack.append(p)
        insn_total = sum(blocks[b].insn_count for b in body if b in blocks)
        loops.append(LoopInfo(header_pc=h_pc, back_edge_srcs=backs, body_blocks=body, insn_count=insn_total))

    return loops


def reconstruct_cfg(
    insns: list[tuple[int, str, list[str]]],
    sample_ll_path: Path | None = None,
) -> dict[int, CFGBlock]:
    """Reconstructs basic blocks and CFG edges from sequential instructions."""
    if not insns:
        return {}

    entry_pc = insns[0][0]
    end_pc = insns[-1][0] + 4
    insn_by_pc = {pc: (mnem, ops) for pc, mnem, ops in insns}

    # Step 1: Discover basic block start PCs from ARM64 branches and sample.ll labels
    block_starts = {entry_pc} | extract_ll_block_pcs(sample_ll_path, entry_pc, end_pc)
    for pc, mnem, ops in insns:
        if mnem == "b" or mnem.startswith("b.") or mnem in ("cbz", "cbnz", "tbz", "tbnz"):
            t_pc = parse_target_pc(pc, ops[-1]) if ops else 0
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

    for i, b_pc in enumerate(sorted_starts):
        next_start = sorted_starts[i + 1] if i + 1 < len(sorted_starts) else end_pc
        b_end = next_start - 4
        insn_count = (next_start - b_pc) // 4
        last_mnem, last_ops = insn_by_pc.get(b_end, ("", []))

        succs: list[int] = []
        is_exit = False
        is_blr = (last_mnem == "blr")
        is_br = (last_mnem == "br")

        if last_mnem == "ret":
            is_exit = True
        elif last_mnem == "b":
            t_pc = parse_target_pc(b_end, last_ops[-1]) if last_ops else 0
            if entry_pc <= t_pc < end_pc:
                succs.append(t_pc)
            else:
                is_exit = True
        elif last_mnem.startswith("b.") or last_mnem in ("cbz", "cbnz", "tbz", "tbnz"):
            t_pc = parse_target_pc(b_end, last_ops[-1]) if last_ops else 0
            if entry_pc <= t_pc < end_pc:
                succs.append(t_pc)
            if next_start < end_pc:
                succs.append(next_start)
        elif last_mnem == "br":
            is_exit = True
        else:
            if next_start < end_pc:
                succs.append(next_start)
            else:
                is_exit = True

        blocks[b_pc] = CFGBlock(
            pc=b_pc,
            end_pc=b_end,
            insn_count=insn_count,
            successors=succs,
            predecessors=[],
            is_exit=is_exit,
            terminated_by_blr=is_blr,
            terminated_by_br=is_br,
        )

    for b in blocks.values():
        for s in b.successors:
            if s in blocks:
                blocks[s].predecessors.append(b.pc)

    return blocks


def build_cfg_dag(
    blocks: dict[int, CFGBlock], entry_pc: int
) -> tuple[dict[int, list[int]], dict[int, int], dict[int, int]]:
    """Removes loop back-edges to produce an acyclic DAG."""
    loops = detect_natural_loops(blocks, entry_pc)
    back_edges: set[tuple[int, int]] = set()
    for l in loops:
        for b in l.back_edge_srcs:
            back_edges.add((b, l.header_pc))

    visited: set[int] = set()
    rec_stack: set[int] = set()

    def dfs(u: int):
        visited.add(u)
        rec_stack.add(u)
        if u in blocks:
            for v in blocks[u].successors:
                if v in rec_stack:
                    back_edges.add((u, v))
                elif v not in visited:
                    dfs(v)
        rec_stack.remove(u)

    dfs(entry_pc)

    dag_succs: dict[int, list[int]] = {}
    for u, b in blocks.items():
        dag_succs[u] = [v for v in b.successors if (u, v) not in back_edges and v in blocks]

    loop_hdr_map = {l.header_pc: l.insn_count for l in loops}
    w_long: dict[int, int] = {}
    w_comm: dict[int, int] = {}

    for u, b in blocks.items():
        base = b.insn_count
        hdr_mult = loop_hdr_map.get(u, 0)
        w_long[u] = base + min(hdr_mult * 3, 160)
        w_comm[u] = base + min(hdr_mult, 40)

    return dag_succs, w_long, w_comm
