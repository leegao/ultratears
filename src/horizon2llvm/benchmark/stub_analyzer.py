#!/usr/bin/env python3
"""Automated External Callee, Branch Sensitivity & Constraint-Solved Path Parameter Analyzer.

Parses disassembled ARM64 assembly (sample_arm64.asm) and optional LLVM IR (sample.ll),
reconstructs function CFGs (including jump-table switches), identifies true loop back-edges
via CFG dominance, solves longest finite and common static execution paths over the resulting DAG
using a multi-backend Constraint Solver (OR-Tools CP-SAT, SciPy HiGHS MILP, and a Python-native
Symbolic Bit-Vector/Interval SMT solver), symbolically traces path predicates along both the
longest finite path and the representative common path, solves for concrete entry registers
(X0..X7), guest arena memory fields, and external callee return values (X0) + branch policy
bitmasks, and synthesizes auto_stubs.c, STUB_ANALYSIS.md, and stub_analysis.json.
"""

from __future__ import annotations

import argparse
from pathlib import Path
import re
import sys

from autostub import (
    AArch64PathParameterSolver,
    AArch64SymbolicPathTracer,
    AArch64TransferFunction,
    AbstractPathParameterSolver,
    AbstractTransferFunction,
    CFGBlock,
    CalleeClassification,
    FunctionMetrics,
    KNOWN_ALLOC_PCS,
    LoopInfo,
    PurePythonSymSolver,
    SolvedFunctionPathParams,
    SolvedPathParam,
    StubKind,
    SymBinary,
    SymConcat,
    SymConst,
    SymExpr,
    SymExtract,
    SymbolicExecutionEngine,
    SymUnary,
    SymVar,
    analyze_callees,
    build_cfg_dag,
    compute_dominators,
    decompress_lz4_block,
    detect_natural_loops,
    generate_auto_stubs_c,
    generate_stub_analysis_json,
    generate_stub_analysis_md,
    get_default_solver_backend,
    get_nso_rodata,
    parse_arm64_asm,
    parse_target_pc,
    reconstruct_cfg,
    set_default_solver_backend,
    solve_dag_paths_via_constraint_solver,
)


def analyze_sample_directory(
    sample_dir: Path,
    exefs_main_path: Path | None = None,
    solver_backend: str | None = None,
) -> int:
    """Analyzes a benchmark sample directory and generates stubs/reports."""
    asm_path = sample_dir / "sample_arm64.asm"
    if not asm_path.is_file():
        print(f"Error: {asm_path} not found", file=sys.stderr)
        return 1

    sample_id = sample_dir.name
    fns_asm = parse_arm64_asm(asm_path.read_text())
    if not fns_asm:
        print(f"Error: no functions parsed from {asm_path}", file=sys.stderr)
        return 1

    ll_path = sample_dir / "sample.ll"
    metrics: list[FunctionMetrics] = []
    fn_cfgs: dict[str, dict[int, CFGBlock]] = {}
    dag_succs_map: dict[str, dict[int, list[int]]] = {}
    solved_paths: dict[str, tuple[int, list[int], int, list[int]]] = {}

    for fn_name, insns in fns_asm.items():
        if not insns:
            continue
        entry_pc = insns[0][0]
        blocks = reconstruct_cfg(insns)
        fn_cfgs[fn_name] = blocks
        dag_succs, w_long, w_comm = build_cfg_dag(blocks, entry_pc)
        dag_succs_map[fn_name] = dag_succs
        solved_paths[fn_name] = solve_dag_paths_via_constraint_solver(
            blocks, dag_succs, w_long, w_comm, entry_pc, solver_backend=solver_backend
        )

    stubs_list = analyze_callees(
        fns_asm,
        fn_cfgs,
        sample_ll_path=ll_path if ll_path.is_file() else None,
        dag_succs_map=dag_succs_map,
    )
    callee_map = {c.sym_name: c for c in stubs_list}

    solver = AArch64PathParameterSolver(exefs_main_path)
    all_solved_params: list[tuple[SolvedFunctionPathParams, SolvedFunctionPathParams]] = []

    for fn_name, insns in fns_asm.items():
        if not insns:
            continue
        entry_pc = insns[0][0]
        end_pc = insns[-1][0]
        blocks = fn_cfgs[fn_name]
        insn_map = {pc: (mnem, ops) for pc, mnem, ops in insns}
        l_len, l_path, c_len, c_path = solved_paths[fn_name]

        long_params = solver.solve_parameters(fn_name, "longest", l_path, blocks, insn_map, callee_map)
        comm_params = solver.solve_parameters(fn_name, "common", c_path, blocks, insn_map, callee_map)
        all_solved_params.append((long_params, comm_params))

        loops = detect_natural_loops(blocks, entry_pc)
        num_edges = sum(len(b.successors) for b in blocks.values())

        # Determine which callees are invoked by this function
        fn_callee_syms: set[str] = set()
        for pc, mnem, ops in insns:
            if mnem in ("bl", "b") and ops:
                tpc = parse_target_pc(pc, ops[0])
                tsym = f"f_{tpc:x}" if tpc else ops[0].lstrip("#")
                if tsym in callee_map:
                    fn_callee_syms.add(tsym)
        fn_callees = [callee_map[s] for s in sorted(fn_callee_syms)]
        b_sens_count = sum(1 for c in fn_callees if c.kind == StubKind.BRANCH_SENSITIVE)

        metrics.append(
            FunctionMetrics(
                name=fn_name,
                entry_pc=entry_pc,
                end_pc=end_pc,
                num_arm64_insns=len(insns),
                num_blocks=len(blocks),
                num_edges=num_edges,
                has_loops=bool(loops),
                est_longest_path_insns=l_len,
                est_common_path_insns=c_len,
                num_callees=len(fn_callees),
                num_branch_sensitive=b_sens_count,
                callees=fn_callees,
            )
        )

    auto_stubs_path = sample_dir / "auto_stubs.c"
    analysis_md_path = sample_dir / "STUB_ANALYSIS.md"
    analysis_json_path = sample_dir / "stub_analysis.json"

    generate_auto_stubs_c(stubs_list, ll_path, list(fns_asm.keys()), all_solved_params, auto_stubs_path)
    generate_stub_analysis_md(sample_id, metrics, fn_cfgs, stubs_list, all_solved_params, analysis_md_path)
    generate_stub_analysis_json(sample_id, metrics, stubs_list, all_solved_params, analysis_json_path)

    print(f"Generated auto_stubs.c, STUB_ANALYSIS.md, and stub_analysis.json for {sample_id}")
    return 0


def main() -> int:
    parser = argparse.ArgumentParser(description="Automated External Callee & Path Constraint Solver")
    parser.add_argument("sample_dir", type=Path, help="Path to sample directory (containing sample_arm64.asm)")
    parser.add_argument("--exefs-main", type=Path, default=None, help="Path to data/exefs/main executable")
    parser.add_argument(
        "--solver-backend",
        type=str,
        default="auto",
        choices=["auto", "cp_sat", "milp", "dp"],
        help="Solver backend for DAG path formulation (default: auto)",
    )
    args = parser.parse_args()

    set_default_solver_backend(args.solver_backend)
    return analyze_sample_directory(args.sample_dir, args.exefs_main, args.solver_backend)


if __name__ == "__main__":
    sys.exit(main())
