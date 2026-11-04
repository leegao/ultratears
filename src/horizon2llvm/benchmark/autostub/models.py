"""Data structures and classifications for automated stub and path parameter analysis."""

from __future__ import annotations

from dataclasses import dataclass, field
from enum import Enum
from typing import Any


class StubKind(Enum):
    CONSTANT_ZERO = "CONSTANT_ZERO"
    POINTER_ALLOC = "POINTER_ALLOC"
    MEMORY_COPY = "MEMORY_COPY"
    BRANCH_SENSITIVE = "BRANCH_SENSITIVE"


@dataclass
class CalleeClassification:
    sym_name: str
    target_pc: int
    kind: StubKind
    num_args_read: int
    returns_ptr_on_nonzero: bool = False
    longest_path_ret: int = 0
    alt_branch_ret: int = 1
    policy_bit: int = -1
    reason: str = ""


@dataclass
class FunctionMetrics:
    name: str
    entry_pc: int
    end_pc: int
    num_arm64_insns: int
    num_blocks: int
    num_edges: int
    has_loops: bool
    est_longest_path_insns: int
    est_common_path_insns: int
    num_callees: int
    num_branch_sensitive: int
    callees: list[CalleeClassification] = field(default_factory=list)


@dataclass
class CFGBlock:
    pc: int
    end_pc: int
    insn_count: int
    successors: list[int] = field(default_factory=list)
    predecessors: list[int] = field(default_factory=list)
    is_loop_header: bool = False
    loop_body_size: int = 0
    is_exit: bool = False
    terminated_by_blr: bool = False
    terminated_by_br: bool = False
    words: list[int] = field(default_factory=list)


@dataclass
class LoopInfo:
    header_pc: int
    back_edge_srcs: list[int]
    body_blocks: set[int]
    insn_count: int


@dataclass
class SolvedPathParam:
    name: str
    target: str
    value: int
    comment: str = ""


@dataclass
class SolvedFunctionPathParams:
    fn_name: str
    path_kind: str  # "longest" or "common"
    path_insns: int
    num_blocks: int
    c_statements: list[str] = field(default_factory=list)
    params: list[SolvedPathParam] = field(default_factory=list)
    branch_policy_val: int = 0
    num_constraints: int = 0
    num_refutations: int = 0
