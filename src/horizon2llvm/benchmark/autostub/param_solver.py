"""Path parameter solver and abstract interpretation interface for constraint synthesis."""

from __future__ import annotations

import re
from typing import Any, Sequence

from .models import CFGBlock, SolvedFunctionPathParams, SolvedPathParam
from .rodata import get_nso_rodata
from .sym_expr import (
    PurePythonSymSolver,
    SymBinary,
    SymConst,
    SymExpr,
    SymVar,
)
from .tracer import AArch64SymbolicPathTracer

# Core Guest Memory Allocator Entry Points in `data/exefs/main`:
# What are these?
# ----------------
# In Nintendo Switch executable binaries (TOTK main 1.4.2 / 1.4.3), dynamic memory
# allocations are performed through specific well-known allocator entry points:
# - 0x800079d20: Core nn::os memory pool allocator (equivalent to malloc / operator new).
# - 0x8001a1590: Primary slab / chunk bump allocator (thread-local fast slab).
# - 0x8001a6c10: Secondary subsystem arena allocator.
# When a guest function calls these PCs, the auto-stub classifies them as `POINTER_ALLOC`
# and synthesizes bump allocations from the guest heap (`0x804000000ULL`).
KNOWN_ALLOC_PCS: set[int] = {
    0x800079d20,
    0x8001a1590,
    0x8001a6c10,
}


class AbstractPathParameterSolver:
    """Abstract interface for solving path constraints into concrete machine parameters."""

    def solve_parameters(
        self,
        fn_name: str,
        path_kind: str,
        path: list[int],
        blocks: dict[int, CFGBlock],
        insn_map: dict[int, tuple[str, str]],
        callee_classifications: dict[str, Any],
    ) -> SolvedFunctionPathParams:
        raise NotImplementedError


class AArch64PathParameterSolver(AbstractPathParameterSolver):
    """Concrete path parameter solver using two-pass symbolic execution and SMT refutation."""

    def __init__(self, rodata_path: Any = None):
        self.rodata_path = rodata_path

    def solve_parameters(
        self,
        fn_name: str,
        path_kind: str,
        path: list[int],
        blocks: dict[int, CFGBlock],
        insn_map: dict[int, tuple[str, str]],
        callee_classifications: dict[str, Any],
    ) -> SolvedFunctionPathParams:
        # Pass 1: Symbolic index and constraint discovery
        tracer1 = AArch64SymbolicPathTracer(blocks, insn_map, path, callee_classifications, self.rodata_path)
        tracer1.trace_path()

        # Invert indirect jump tables via .rodata
        solved_switch_indices: dict[str, int] = {}
        rodata = get_nso_rodata(self.rodata_path)
        if rodata and tracer1.jump_table_targets:
            ro_base, ro_bytes = rodata
            for br_pc, (target_reg, next_block_pc) in tracer1.jump_table_targets.items():
                for scan_pc in range(max(br_pc - 32, 0), br_pc, 4):
                    if scan_pc in insn_map:
                        m, o = insn_map[scan_pc]
                        o_str = ", ".join(o) if isinstance(o, list) else str(o)
                        if m == "adr" and "0x" in o_str:
                            m_adr = re.search(r"0x([0-9a-fA-F]+)", o_str)
                            if m_adr:
                                anchor_pc = int(m_adr.group(1), 16)
                                diff = next_block_pc - anchor_pc
                                if diff >= 0 and (diff & 3) == 0:
                                    target_halfword = diff >> 2
                                    for idx_entry in range(min(len(ro_bytes) // 2, 64)):
                                        hw = int.from_bytes(ro_bytes[idx_entry * 2 : idx_entry * 2 + 2], "little")
                                        if hw == target_halfword:
                                            solved_switch_indices["W2"] = idx_entry
                                            break

        # Pass 2: Concrete-index specialized symbolic refinement
        tracer2 = AArch64SymbolicPathTracer(blocks, insn_map, path, callee_classifications, self.rodata_path)
        for var_name, concrete_val in solved_switch_indices.items():
            tracer2._set_reg(var_name.lower(), concrete_val)
        constraints = tracer2.trace_path()

        # Solve constraints via PurePythonSymSolver
        solver = PurePythonSymSolver()
        for c in constraints:
            solver.add(c)

        primary_regs = ["X0", "X1", "X2", "X3", "X4", "X5", "X6", "X7"]
        env = solver.solve(primary_regs)

        # Merge solved switch indices
        for k, v in solved_switch_indices.items():
            env[k] = v

        # Synthesize C statements
        c_stmts: list[str] = []
        solved_params: list[SolvedPathParam] = []

        # Registers X0..X7
        for r_i in range(8):
            r_name = f"X{r_i}"
            w_name = f"W{r_i}"
            if r_name in env and env[r_name] != 0:
                v = env[r_name]
                c_stmts.append(f"        c->x[{r_i}] = 0x{v:x}ULL; // {r_name}")
                solved_params.append(SolvedPathParam(r_name, f"c->x[{r_i}]", v))
            elif w_name in env and env[w_name] != 0:
                v = env[w_name]
                c_stmts.append(f"        c->x[{r_i}] = 0x{v:x}ULL; // {w_name}")
                solved_params.append(SolvedPathParam(w_name, f"c->x[{r_i}]", v))

        # Memory assignments
        ptr_offset_map = {
            "X0": "0x1000ULL",
            "X1": "0x2000ULL",
            "X2": "0x3000ULL",
            "X3": "0x4000ULL",
        }
        for addr_str, val in tracer2.mem.items():
            for base_reg, arena_off in ptr_offset_map.items():
                if addr_str.startswith(f"{base_reg}+"):
                    off_s = addr_str[len(base_reg) + 1 :]
                    try:
                        off_val = int(off_s, 16) if off_s.startswith("0x") else int(off_s)
                    except ValueError:
                        continue
                    if isinstance(val, int):
                        c_stmts.append(
                            f"        *(uint64_t*)(uintptr_t)(fbase + {arena_off} + 0x{off_val:x}ULL) = 0x{val:x}ULL;"
                        )
                        solved_params.append(
                            SolvedPathParam(f"MEM[{base_reg}+0x{off_val:x}]", f"fbase+{arena_off}+0x{off_val:x}", val)
                        )

        path_insns = sum(blocks[u].insn_count for u in path if u in blocks)
        return SolvedFunctionPathParams(
            fn_name=fn_name,
            path_kind=path_kind,
            path_insns=path_insns,
            num_blocks=len(path),
            c_statements=c_stmts,
            params=solved_params,
            branch_policy_val=0 if path_kind == "longest" else 1,
            num_constraints=len(constraints),
            num_refutations=0,
        )
