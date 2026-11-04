"""Abstract interpretation transfer functions for machine instruction semantics.

Extracts operational semantics into an extensible hierarchy where simple/default
abstract interpretations (arithmetic, bitwise logic, moves) are handled by a base
class, and architecture-specific or non-trivial semantics (PC-relative addressing,
indirect jump tables, guest memory dereferencing) are provided as overrides.
"""

from __future__ import annotations

import re
from typing import Any, Protocol

from .sym_expr import SymBinary, SymConst, SymExpr, SymUnary, SymVar


class AbstractState(Protocol):
    """Protocol for abstract machine execution state."""
    regs: dict[str, Any]
    mem: dict[str, Any]
    path_constraints: list[Any]


class AbstractTransferFunction:
    """Base abstract transfer function with default interpretations for simple operations."""

    def eval_binary_arith(self, op: str, a: Any, b: Any, bits: int = 64) -> Any:
        """Default abstract interpretation for two-argument arithmetic."""
        mask = (1 << bits) - 1
        if isinstance(a, int) and isinstance(b, int):
            if op == "+":
                return (a + b) & mask
            if op == "-":
                return (a - b) & mask
            if op == "*":
                return (a * b) & mask
        if isinstance(a, (int, SymExpr)) and isinstance(b, (int, SymExpr)):
            if op in ("+", "-"):
                return SymBinary(op, _ensure_sym(a, bits), _ensure_sym(b, bits))
        return None

    def eval_bitwise(self, op: str, a: Any, b: Any, bits: int = 64) -> Any:
        """Default abstract interpretation for bitwise logic."""
        mask = (1 << bits) - 1
        if isinstance(a, int) and isinstance(b, int):
            if op == "&":
                return a & b
            if op == "|":
                return a | b
            if op == "^":
                return a ^ b
            if op == "bic":
                return a & (~b & mask)
        if isinstance(a, (int, SymExpr)) and isinstance(b, (int, SymExpr)):
            if op in ("&", "|", "^"):
                return SymBinary(op, _ensure_sym(a, bits), _ensure_sym(b, bits))
            if op == "bic":
                return SymBinary("&", _ensure_sym(a, bits), SymUnary("~", _ensure_sym(b, bits)))
        return None

    def eval_shift(self, op: str, val: Any, shift_amount: int, bits: int = 64) -> Any:
        """Default abstract interpretation for bitwise shift operations."""
        mask = (1 << bits) - 1
        if isinstance(val, int):
            if op in ("lsl", "<<"):
                return (val << shift_amount) & mask
            if op in ("lsr", ">>"):
                return (val & mask) >> shift_amount
            if op == "asr":
                sign_bit = 1 << (bits - 1)
                if val & sign_bit:
                    return ((val - (1 << bits)) >> shift_amount) & mask
                return (val & mask) >> shift_amount
        if isinstance(val, SymExpr):
            if op in ("lsl", "<<"):
                return SymBinary("<<", val, SymConst(shift_amount, bits))
            if op in ("lsr", ">>"):
                return SymBinary(">>", val, SymConst(shift_amount, bits))
        return None


def _ensure_sym(v: Any, bits: int = 64) -> SymExpr:
    if isinstance(v, SymExpr):
        return v
    return SymConst(int(v), bits)


class AArch64TransferFunction(AbstractTransferFunction):
    """Specialized AArch64 transfer function handling architecture-specific instructions."""

    def __init__(self, rodata_info: tuple[int, bytes] | None = None):
        self.rodata_info = rodata_info
        self.imm_re = re.compile(r"#(-?(?:0x[0-9a-fA-F]+|[0-9]+))")

    def parse_imm(self, op_str: str) -> int | None:
        m = self.imm_re.search(op_str)
        if not m:
            return None
        val_s = m.group(1)
        return int(val_s, 16) if val_s.startswith(("0x", "-0x")) else int(val_s)

    def apply_adrp(self, pc: int, ops: list[str], regs: dict[str, Any]) -> bool:
        """Evaluates ADRP: computes base page address."""
        if len(ops) >= 2:
            dst = ops[0]
            imm = self.parse_imm(ops[1])
            if imm is not None:
                page_base = (pc & ~0xFFF) + (imm << 12)
                regs[dst] = page_base
                return True
        return False

    def apply_mov(self, ops: list[str], regs: dict[str, Any], get_reg_fn: Any) -> bool:
        """Evaluates MOV / MOVZ / MOVN / MOVK."""
        if len(ops) >= 2:
            dst = ops[0]
            src = ops[1]
            imm = self.parse_imm(src)
            if imm is not None:
                regs[dst] = imm
                return True
            regs[dst] = get_reg_fn(src)
            return True
        return False

    def apply_arith_insn(self, mnem: str, ops: list[str], regs: dict[str, Any], get_reg_fn: Any) -> bool:
        """Evaluates ADD, SUB, NEG, etc."""
        if not ops:
            return False
        dst = ops[0]
        is_32 = dst.startswith("w")
        bits = 32 if is_32 else 64

        if mnem in ("add", "adds") and len(ops) >= 3:
            r1 = get_reg_fn(ops[1])
            imm = self.parse_imm(ops[2])
            r2 = imm if imm is not None else get_reg_fn(ops[2])
            res = self.eval_binary_arith("+", r1, r2, bits)
            if res is not None:
                regs[dst] = res
                return True

        if mnem in ("sub", "subs") and len(ops) >= 3:
            r1 = get_reg_fn(ops[1])
            imm = self.parse_imm(ops[2])
            r2 = imm if imm is not None else get_reg_fn(ops[2])
            res = self.eval_binary_arith("-", r1, r2, bits)
            if res is not None:
                regs[dst] = res
                return True

        if mnem == "neg" and len(ops) >= 2:
            src = get_reg_fn(ops[1])
            if isinstance(src, int):
                regs[dst] = (-src) & ((1 << bits) - 1)
                return True
            if isinstance(src, SymExpr):
                regs[dst] = SymUnary("-", src)
                return True

        return False

    def apply_bitwise_insn(self, mnem: str, ops: list[str], regs: dict[str, Any], get_reg_fn: Any) -> bool:
        """Evaluates AND, ORR, EOR, BIC, LSL, LSR, ASR."""
        if len(ops) < 2:
            return False
        dst = ops[0]
        is_32 = dst.startswith("w")
        bits = 32 if is_32 else 64

        if mnem in ("and", "ands", "orr", "eor", "bic") and len(ops) >= 3:
            r1 = get_reg_fn(ops[1])
            imm = self.parse_imm(ops[2])
            r2 = imm if imm is not None else get_reg_fn(ops[2])
            op_char = {"and": "&", "ands": "&", "orr": "|", "eor": "^", "bic": "bic"}[mnem]
            res = self.eval_bitwise(op_char, r1, r2, bits)
            if res is not None:
                regs[dst] = res
                return True

        if mnem in ("lsl", "lsr", "asr") and len(ops) >= 3:
            r1 = get_reg_fn(ops[1])
            imm = self.parse_imm(ops[2])
            if imm is not None:
                res = self.eval_shift(mnem, r1, imm, bits)
                if res is not None:
                    regs[dst] = res
                    return True

        return False
