"""Automated external callee, branch sensitivity, and constraint-solved path parameter synthesis."""

from .models import (
    CFGBlock,
    CalleeClassification,
    FunctionMetrics,
    LoopInfo,
    SolvedFunctionPathParams,
    SolvedPathParam,
    StubKind,
)
from .rodata import decompress_lz4_block, get_nso_rodata
from .cfg import (
    build_cfg_dag,
    compute_dominators,
    detect_natural_loops,
    parse_arm64_asm,
    parse_target_pc,
    reconstruct_cfg,
)
from .solver import (
    get_default_solver_backend,
    set_default_solver_backend,
    solve_dag_paths_via_constraint_solver,
)
from .sym_expr import (
    PurePythonSymSolver,
    SymBinary,
    SymConcat,
    SymConst,
    SymExpr,
    SymExtract,
    SymUnary,
    SymVar,
)
from .transfer import (
    AArch64TransferFunction,
    AbstractTransferFunction,
)
from .tracer import (
    AArch64SymbolicPathTracer,
    SymbolicExecutionEngine,
)
from .param_solver import (
    AArch64PathParameterSolver,
    AbstractPathParameterSolver,
    KNOWN_ALLOC_PCS,
)
from .callees import analyze_callees
from .synthesizer import (
    generate_auto_stubs_c,
    generate_stub_analysis_json,
    generate_stub_analysis_md,
)

__all__ = [
    "CFGBlock",
    "CalleeClassification",
    "FunctionMetrics",
    "LoopInfo",
    "SolvedFunctionPathParams",
    "SolvedPathParam",
    "StubKind",
    "decompress_lz4_block",
    "get_nso_rodata",
    "parse_arm64_asm",
    "parse_target_pc",
    "reconstruct_cfg",
    "compute_dominators",
    "detect_natural_loops",
    "build_cfg_dag",
    "get_default_solver_backend",
    "set_default_solver_backend",
    "solve_dag_paths_via_constraint_solver",
    "SymExpr",
    "SymConst",
    "SymVar",
    "SymUnary",
    "SymBinary",
    "SymExtract",
    "SymConcat",
    "PurePythonSymSolver",
    "AbstractTransferFunction",
    "AArch64TransferFunction",
    "SymbolicExecutionEngine",
    "AArch64SymbolicPathTracer",
    "AbstractPathParameterSolver",
    "AArch64PathParameterSolver",
    "KNOWN_ALLOC_PCS",
    "analyze_callees",
    "generate_auto_stubs_c",
    "generate_stub_analysis_md",
    "generate_stub_analysis_json",
]
