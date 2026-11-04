"""DAG path constraint modeling and multi-backend solver (CP-SAT / MILP / DP).

Reduces longest-path and common-path optimization over the acyclic CFG DAG
to network flow constraint problems with user-configurable solver selection.
"""

from __future__ import annotations

import collections
from typing import Sequence

from .models import CFGBlock

# Global default solver backend: 'auto', 'cp_sat', 'milp', or 'dp'
_DEFAULT_SOLVER_BACKEND = "auto"


def set_default_solver_backend(backend: str) -> None:
    """Sets the preferred solver backend ('auto', 'cp_sat', 'milp', or 'dp')."""
    global _DEFAULT_SOLVER_BACKEND
    if backend.lower() in ("auto", "cp_sat", "ortools", "milp", "scipy", "dp"):
        _DEFAULT_SOLVER_BACKEND = backend.lower()
    else:
        raise ValueError(f"Unknown solver backend '{backend}'; expected auto, cp_sat, milp, or dp")


def get_default_solver_backend() -> str:
    """Returns the current default solver backend."""
    return _DEFAULT_SOLVER_BACKEND


def solve_dag_paths_via_constraint_solver(
    blocks: dict[int, CFGBlock],
    dag_succs: dict[int, list[int]],
    w_long: dict[int, int],
    w_comm: dict[int, int],
    entry_pc: int,
    solver_backend: str | None = None,
) -> tuple[int, list[int], int, list[int]]:
    """Solves the Maximal Finite Path and Representative Common Path over the CFG DAG.

    Args:
        blocks: CFG basic blocks.
        dag_succs: Outgoing edges in the acyclic DAG.
        w_long: Block weights for longest-path objective.
        w_comm: Block weights for common-path objective.
        entry_pc: Entry basic block address.
        solver_backend: Solver selection ('auto', 'cp_sat', 'milp', or 'dp').
            Defaults to the global configuration.

    Returns:
        (longest_len, longest_path_nodes, common_len, common_path_nodes)
    """
    if not blocks or entry_pc not in blocks:
        return 0, [], 0, []

    # Filter reachable nodes in DAG from entry_pc
    reachable: set[int] = set()
    queue = collections.deque([entry_pc])
    while queue:
        curr = queue.popleft()
        if curr not in reachable:
            reachable.add(curr)
            for s in dag_succs.get(curr, []):
                queue.append(s)

    nodes = sorted(reachable)
    edges = [(u, v) for u in nodes for v in dag_succs.get(u, []) if v in reachable]

    # Predecessor mapping
    dag_preds: dict[int, list[int]] = collections.defaultdict(list)
    for u, v in edges:
        dag_preds[v].append(u)

    terminal_nodes = [u for u in nodes if not dag_succs.get(u)]

    backend = (solver_backend or _DEFAULT_SOLVER_BACKEND).lower()

    # Determine candidate order based on user preference
    candidates: list[str] = []
    if backend in ("cp_sat", "ortools"):
        candidates = ["ortools"]
    elif backend in ("milp", "scipy"):
        candidates = ["scipy"]
    elif backend == "dp":
        candidates = ["dp"]
    else:  # 'auto'
        candidates = ["ortools", "scipy", "dp"]

    # 1. OR-Tools CP-SAT Solver
    if "ortools" in candidates:
        try:
            from ortools.sat.python import cp_model as _ortools_cp_model

            model = _ortools_cp_model.CpModel()
            edge_vars: dict[tuple[int, int], Any] = {}
            for u, v in edges:
                edge_vars[(u, v)] = model.NewBoolVar(f"e_{u:x}_{v:x}")

            node_vars: dict[int, Any] = {}
            for u in nodes:
                node_vars[u] = model.NewBoolVar(f"n_{u:x}")

            # Source: exactly one outgoing edge
            out_entry = [edge_vars[(entry_pc, v)] for v in dag_succs.get(entry_pc, []) if (entry_pc, v) in edge_vars]
            if out_entry:
                model.Add(sum(out_entry) == 1)
            model.Add(node_vars[entry_pc] == 1)

            # Sinks: total outgoing edges from all terminals == 1
            exit_in_vars: list[Any] = []
            for t in terminal_nodes:
                exit_in_vars.append(node_vars[t])
            if exit_in_vars:
                model.Add(sum(exit_in_vars) == 1)

            # Intermediate node flow conservation
            for u in nodes:
                if u == entry_pc:
                    continue
                in_e = [edge_vars[(p, u)] for p in dag_preds.get(u, []) if (p, u) in edge_vars]
                out_e = [edge_vars[(u, s)] for s in dag_succs.get(u, []) if (u, s) in edge_vars]
                if in_e:
                    model.Add(sum(in_e) == node_vars[u])
                else:
                    model.Add(node_vars[u] == 0)

                if out_e:
                    model.Add(sum(out_e) == node_vars[u])
                else:
                    pass

            # Objective A: Maximal Path
            model.Maximize(sum(w_long.get(u, 1) * node_vars[u] for u in nodes))

            solver = _ortools_cp_model.CpSolver()
            solver.parameters.max_time_in_seconds = 2.0
            status = solver.Solve(model)

            if status in (_ortools_cp_model.OPTIMAL, _ortools_cp_model.FEASIBLE):
                longest_path: list[int] = []
                curr = entry_pc
                longest_path.append(curr)
                visited_p: set[int] = {curr}
                while True:
                    next_node = None
                    for s in dag_succs.get(curr, []):
                        if (curr, s) in edge_vars and solver.Value(edge_vars[(curr, s)]) == 1:
                            next_node = s
                            break
                    if next_node is None or next_node in visited_p:
                        break
                    longest_path.append(next_node)
                    visited_p.add(next_node)
                    curr = next_node

                l_len = sum(blocks[u].insn_count for u in longest_path if u in blocks)

                # Objective B: Common Path (Min distance to median)
                model_comm = _ortools_cp_model.CpModel()
                e_comm = {k: model_comm.NewBoolVar(f"ec_{k[0]:x}_{k[1]:x}") for k in edges}
                n_comm = {u: model_comm.NewBoolVar(f"nc_{u:x}") for u in nodes}

                out_e_comm = [e_comm[(entry_pc, v)] for v in dag_succs.get(entry_pc, []) if (entry_pc, v) in e_comm]
                if out_e_comm:
                    model_comm.Add(sum(out_e_comm) == 1)
                model_comm.Add(n_comm[entry_pc] == 1)

                exits_comm = [n_comm[t] for t in terminal_nodes]
                if exits_comm:
                    model_comm.Add(sum(exits_comm) == 1)

                for u in nodes:
                    if u == entry_pc:
                        continue
                    in_c = [e_comm[(p, u)] for p in dag_preds.get(u, []) if (p, u) in e_comm]
                    out_c = [e_comm[(u, s)] for s in dag_succs.get(u, []) if (u, s) in e_comm]
                    if in_c:
                        model_comm.Add(sum(in_c) == n_comm[u])
                    else:
                        model_comm.Add(n_comm[u] == 0)
                    if out_c:
                        model_comm.Add(sum(out_c) == n_comm[u])

                target_mid = max(1, l_len // 3)
                tot_c = sum(w_comm.get(u, 1) * n_comm[u] for u in nodes)
                diff = model_comm.NewIntVar(0, 100000, "diff")
                model_comm.Add(tot_c - target_mid <= diff)
                model_comm.Add(target_mid - tot_c <= diff)
                model_comm.Minimize(diff)

                s_comm = _ortools_cp_model.CpSolver()
                s_comm.parameters.max_time_in_seconds = 2.0
                if s_comm.Solve(model_comm) in (_ortools_cp_model.OPTIMAL, _ortools_cp_model.FEASIBLE):
                    common_path: list[int] = []
                    curr = entry_pc
                    common_path.append(curr)
                    vis_c: set[int] = {curr}
                    while True:
                        next_n = None
                        for s in dag_succs.get(curr, []):
                            if (curr, s) in e_comm and s_comm.Value(e_comm[(curr, s)]) == 1:
                                next_n = s
                                break
                        if next_n is None or next_n in vis_c:
                            break
                        common_path.append(next_n)
                        vis_c.add(next_n)
                        curr = next_n
                    c_len = sum(blocks[u].insn_count for u in common_path if u in blocks)
                    return l_len, longest_path, c_len, common_path
        except Exception:
            pass

    # 2. SciPy HiGHS MILP Solver
    if "scipy" in candidates:
        try:
            import numpy as np
            from scipy.optimize import milp, LinearConstraint

            edge_idx = {e: i for i, e in enumerate(edges)}
            num_e = len(edges)
            if num_e > 0:
                c_obj = np.zeros(num_e)
                for u, v in edges:
                    c_obj[edge_idx[(u, v)]] = -float(w_long.get(v, 1))

                constraints = []
                entry_edges = [edge_idx[(entry_pc, v)] for v in dag_succs.get(entry_pc, []) if (entry_pc, v) in edge_idx]
                if entry_edges:
                    row = np.zeros(num_e)
                    for e_i in entry_edges:
                        row[e_i] = 1.0
                    constraints.append(LinearConstraint(row, 1.0, 1.0))

                for u in nodes:
                    if u == entry_pc or u in terminal_nodes:
                        continue
                    in_edges = [edge_idx[(p, u)] for p in dag_preds.get(u, []) if (p, u) in edge_idx]
                    out_edges = [edge_idx[(u, s)] for s in dag_succs.get(u, []) if (u, s) in edge_idx]
                    if in_edges and out_edges:
                        row = np.zeros(num_e)
                        for ie in in_edges:
                            row[ie] = 1.0
                        for oe in out_edges:
                            row[oe] = -1.0
                        constraints.append(LinearConstraint(row, 0.0, 0.0))

                integrality = np.ones(num_e)
                res = milp(c=c_obj, integrality=integrality, constraints=constraints)
                if res.success:
                    x = res.x
                    longest_path = [entry_pc]
                    curr = entry_pc
                    vis_m = {curr}
                    while True:
                        next_n = None
                        for s in dag_succs.get(curr, []):
                            e = (curr, s)
                            if e in edge_idx and x[edge_idx[e]] > 0.5:
                                next_n = s
                                break
                        if next_n is None or next_n in vis_m:
                            break
                        longest_path.append(next_n)
                        vis_m.add(next_n)
                        curr = next_n

                    l_len = sum(blocks[u].insn_count for u in longest_path if u in blocks)
                    c_len = max(1, l_len // 3)
                    comm_path = longest_path[: max(1, len(longest_path) // 3)]
                    return l_len, longest_path, c_len, comm_path
        except Exception:
            pass

    # 3. Pure-Python Reverse-Topological DP Fallback
    in_degree: dict[int, int] = {u: len(dag_preds.get(u, [])) for u in nodes}
    topo_order: list[int] = []
    zero_in = collections.deque([u for u in nodes if in_degree[u] == 0])

    while zero_in:
        u = zero_in.popleft()
        topo_order.append(u)
        for v in dag_succs.get(u, []):
            if v in in_degree:
                in_degree[v] -= 1
                if in_degree[v] == 0:
                    zero_in.append(v)

    # Longest path via reverse topological DP
    dist: dict[int, int] = {u: -10**9 for u in nodes}
    next_node_map: dict[int, int | None] = {u: None for u in nodes}
    dist[entry_pc] = w_long.get(entry_pc, 1)

    for u in topo_order:
        if dist[u] <= -10**8:
            continue
        for v in dag_succs.get(u, []):
            cost = dist[u] + w_long.get(v, 1)
            if cost > dist[v]:
                dist[v] = cost
                next_node_map[u] = v

    # Common path via reverse topological DP
    dist_c: dict[int, int] = {u: -10**9 for u in nodes}
    next_node_comm: dict[int, int | None] = {u: None for u in nodes}
    dist_c[entry_pc] = w_comm.get(entry_pc, 1)

    for u in topo_order:
        if dist_c[u] <= -10**8:
            continue
        for v in dag_succs.get(u, []):
            cost = dist_c[u] + w_comm.get(v, 1)
            if cost > dist_c[v]:
                dist_c[v] = cost
                next_node_comm[u] = v

    def reconstruct(n_map: dict[int, int | None]) -> list[int]:
        path = [entry_pc]
        c = entry_pc
        seen = {c}
        while n_map.get(c) is not None:
            c = n_map[c]  # type: ignore
            if c in seen:
                break
            path.append(c)
            seen.add(c)
        return path

    longest_path = reconstruct(next_node_map)
    common_path = reconstruct(next_node_comm)

    l_len = sum(blocks[u].insn_count for u in longest_path if u in blocks)
    c_len = sum(blocks[u].insn_count for u in common_path if u in blocks)

    return l_len, longest_path, c_len, common_path
