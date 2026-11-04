"""Callee analysis and stub classification for benchmark samples."""

from __future__ import annotations

from pathlib import Path
import re
from typing import Sequence

from .cfg import parse_target_pc
from .models import CFGBlock, CalleeClassification, StubKind
from .param_solver import KNOWN_ALLOC_PCS


def _infer_num_args_read(insns: list[tuple[int, str, list[str]]], call_idx: int) -> int:
    """Scan backwards in the current block before `bl` to estimate how many X0..X7 args are set."""
    max_arg = 1
    arg_reg_re = re.compile(r"^[xw]([0-7])$")
    for back in range(1, 16):
        if call_idx - back < 0:
            break
        _, bmnem, bops = insns[call_idx - back]
        if (
            bmnem in ("bl", "blr", "b", "ret", "br")
            or bmnem.startswith("b.")
            or bmnem in ("cbz", "cbnz", "tbz", "tbnz")
        ):
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
    dag_succs_map: dict[str, dict[int, list[int]]] | None = None,
) -> list[CalleeClassification]:
    """Inspects callers of external functions and classifies stub behaviors.

    Identifies:
    1. Known guest memory allocators (KNOWN_ALLOC_PCS).
    2. Memcpy routines (X0=dst, X1=src, X2=len).
    3. Branch-sensitive functions where X0 controls a conditional jump.
    4. Pointer-returning functions where X0 is subsequently dereferenced.
    5. Constant-0 functions (untested/unused return values).
    """
    internal_names = set(functions.keys())
    stub_map: dict[str, CalleeClassification] = {}

    for fn_name, insns in functions.items():
        cfg = fn_cfgs.get(fn_name, {})
        entry_pc = insns[0][0] if insns else 0
        end_pc = insns[-1][0] + 4 if insns else 0
        block_starts = sorted(cfg.keys())

        # Precompute remaining DAG lengths for path preference decisions
        dag_succs = dag_succs_map.get(fn_name, {}) if dag_succs_map else {}
        memo_rem: dict[int, int] = {}

        def get_remaining_len(u: int) -> int:
            if u in memo_rem:
                return memo_rem[u]
            b = cfg.get(u)
            cnt = b.insn_count if b else 0
            succs = dag_succs.get(u, []) if dag_succs else (b.successors if b else [])
            max_s = max((get_remaining_len(s) for s in succs), default=0)
            memo_rem[u] = cnt + max_s
            return memo_rem[u]

        def remaining_len_at(pc_val: int) -> int:
            if pc_val in cfg:
                return get_remaining_len(pc_val)
            for bs in reversed(block_starts):
                if bs <= pc_val < cfg[bs].end_pc:
                    return get_remaining_len(bs)
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
                else:
                    # Clean symbol if needed
                    clean_m = re.search(r"([a-zA-Z0-9_]+)", target_sym)
                    if clean_m:
                        target_sym = clean_m.group(1)

            if target_sym in internal_names or (target_pc and f"f_{target_pc:x}" in internal_names):
                continue

            if target_sym not in stub_map:
                stub_map[target_sym] = CalleeClassification(
                    sym_name=target_sym,
                    target_pc=target_pc,
                    kind=StubKind.CONSTANT_ZERO,
                    num_args_read=1,
                )
            sc = stub_map[target_sym]
            sc.num_args_read = max(sc.num_args_read, _infer_num_args_read(insns, i))

            if target_pc in KNOWN_ALLOC_PCS:
                sc.kind = StubKind.POINTER_ALLOC
                sc.returns_ptr_on_nonzero = True
                sc.longest_path_ret = 0x804000000
                sc.reason = "Well-known guest memory allocator entry point"
                continue

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
                    is_cbnz = fmnem == "cbnz"
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
                    is_tbnz = fmnem == "tbnz"
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
            "fnprof_hit",
            "rt_dispatch",
            "rt_svc",
            "rt_brk",
            "rt_udf",
            "rt_ticks",
            "totk_drs_enabled",
            "guest_alloc",
            "clobber_caller_saved",
            "stub_reset_state",
            "stub_set_bench_mode",
            "stub_set_branch_policy",
            "stub_get_trace_hash",
            "stub_get_call_count",
            "stub_get_heap_ptr",
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
