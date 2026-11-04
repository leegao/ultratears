"""Pure-Python Symbolic AST expressions and Bit-Vector / Interval SMT Solver."""

from __future__ import annotations

from typing import Any


class SymExpr:
    """Base class for symbolic expressions in 64-bit integer bit-vector logic."""

    def evaluate(self, env: dict[str, int]) -> int | None:
        raise NotImplementedError

    def get_vars(self) -> set[str]:
        raise NotImplementedError

    def __add__(self, other: Any) -> SymExpr:
        return SymBinary("+", self, _to_sym(other))

    def __sub__(self, other: Any) -> SymExpr:
        return SymBinary("-", self, _to_sym(other))

    def __and__(self, other: Any) -> SymExpr:
        return SymBinary("&", self, _to_sym(other))

    def __or__(self, other: Any) -> SymExpr:
        return SymBinary("|", self, _to_sym(other))

    def __xor__(self, other: Any) -> SymExpr:
        return SymBinary("^", self, _to_sym(other))

    def __lshift__(self, other: Any) -> SymExpr:
        return SymBinary("<<", self, _to_sym(other))

    def __rshift__(self, other: Any) -> SymExpr:
        return SymBinary(">>", self, _to_sym(other))

    def __eq__(self, other: Any) -> SymExpr:  # type: ignore[override]
        return SymBinary("==", self, _to_sym(other))

    def __ne__(self, other: Any) -> SymExpr:  # type: ignore[override]
        return SymBinary("!=", self, _to_sym(other))


def _to_sym(v: Any) -> SymExpr:
    if isinstance(v, SymExpr):
        return v
    if isinstance(v, int):
        return SymConst(v)
    raise TypeError(f"Cannot convert {type(v)} to SymExpr")


class SymConst(SymExpr):
    def __init__(self, val: int, bits: int = 64):
        self.val = val & ((1 << bits) - 1)
        self.bits = bits

    def evaluate(self, env: dict[str, int]) -> int:
        return self.val

    def get_vars(self) -> set[str]:
        return set()

    def __repr__(self) -> str:
        return f"0x{self.val:x}" if self.val > 9 else str(self.val)


class SymVar(SymExpr):
    def __init__(self, name: str, bits: int = 64):
        self.name = name
        self.bits = bits

    def evaluate(self, env: dict[str, int]) -> int | None:
        return env.get(self.name)

    def get_vars(self) -> set[str]:
        return {self.name}

    def __repr__(self) -> str:
        return self.name


class SymUnary(SymExpr):
    def __init__(self, op: str, expr: SymExpr):
        self.op = op
        self.expr = expr

    def evaluate(self, env: dict[str, int]) -> int | None:
        v = self.expr.evaluate(env)
        if v is None:
            return None
        if self.op == "~":
            return (~v) & 0xFFFFFFFFFFFFFFFF
        if self.op == "-":
            return (-v) & 0xFFFFFFFFFFFFFFFF
        if self.op == "!":
            return 1 if v == 0 else 0
        return None

    def get_vars(self) -> set[str]:
        return self.expr.get_vars()

    def __repr__(self) -> str:
        return f"({self.op}{self.expr})"


class SymBinary(SymExpr):
    def __init__(self, op: str, lhs: SymExpr, rhs: SymExpr):
        self.op = op
        self.lhs = lhs
        self.rhs = rhs

    def evaluate(self, env: dict[str, int]) -> int | None:
        l = self.lhs.evaluate(env)
        r = self.rhs.evaluate(env)
        if l is None or r is None:
            return None
        mask = 0xFFFFFFFFFFFFFFFF
        if self.op == "+":
            return (l + r) & mask
        if self.op == "-":
            return (l - r) & mask
        if self.op == "&":
            return l & r
        if self.op == "|":
            return l | r
        if self.op == "^":
            return l ^ r
        if self.op == "<<":
            return (l << (r & 63)) & mask
        if self.op == ">>":
            return (l >> (r & 63)) & mask
        if self.op == "==":
            return 1 if l == r else 0
        if self.op == "!=":
            return 1 if l != r else 0
        if self.op == "<":
            return 1 if l < r else 0
        if self.op == "<=":
            return 1 if l <= r else 0
        if self.op == ">":
            return 1 if l > r else 0
        if self.op == ">=":
            return 1 if l >= r else 0
        return None

    def get_vars(self) -> set[str]:
        return self.lhs.get_vars() | self.rhs.get_vars()

    def __repr__(self) -> str:
        return f"({self.lhs} {self.op} {self.rhs})"


class SymExtract(SymExpr):
    def __init__(self, expr: SymExpr, lsb: int, width: int):
        self.expr = expr
        self.lsb = lsb
        self.width = width

    def evaluate(self, env: dict[str, int]) -> int | None:
        v = self.expr.evaluate(env)
        if v is None:
            return None
        return (v >> self.lsb) & ((1 << self.width) - 1)

    def get_vars(self) -> set[str]:
        return self.expr.get_vars()

    def __repr__(self) -> str:
        return f"{self.expr}[{self.lsb+self.width-1}:{self.lsb}]"


class SymConcat(SymExpr):
    def __init__(self, high: SymExpr, low: SymExpr, low_width: int):
        self.high = high
        self.low = low
        self.low_width = low_width

    def evaluate(self, env: dict[str, int]) -> int | None:
        h = self.high.evaluate(env)
        l = self.low.evaluate(env)
        if h is None or l is None:
            return None
        return (h << self.low_width) | (l & ((1 << self.low_width) - 1))

    def get_vars(self) -> set[str]:
        return self.high.get_vars() | self.low.get_vars()

    def __repr__(self) -> str:
        return f"Concat({self.high}, {self.low})"


class PurePythonSymSolver:
    """Interval domain propagation solver for bit-vector path constraints."""

    def __init__(self):
        self.domains: dict[str, tuple[int, int]] = {}
        self.known_masks: dict[str, tuple[int, int]] = {}  # var -> (zeros_mask, ones_mask)
        self.constraints: list[SymExpr] = []

    def add(self, expr: SymExpr):
        self.constraints.append(expr)
        self._propagate(expr)

    def _propagate(self, expr: SymExpr):
        if isinstance(expr, SymBinary):
            op = expr.op
            l, r = expr.lhs, expr.rhs
            if op == "==" and isinstance(l, SymVar) and isinstance(r, SymConst):
                self.domains[l.name] = (r.val, r.val)
                self.known_masks[l.name] = (~r.val & 0xFFFFFFFFFFFFFFFF, r.val)
            elif op == "==" and isinstance(r, SymVar) and isinstance(l, SymConst):
                self.domains[r.name] = (l.val, l.val)
                self.known_masks[r.name] = (~l.val & 0xFFFFFFFFFFFFFFFF, l.val)
            elif op == "<=" and isinstance(l, SymVar) and isinstance(r, SymConst):
                lo, _ = self.domains.get(l.name, (0, 0xFFFFFFFFFFFFFFFF))
                self.domains[l.name] = (lo, min(self.domains.get(l.name, (0, r.val))[1], r.val))
            elif op == ">=" and isinstance(l, SymVar) and isinstance(r, SymConst):
                _, hi = self.domains.get(l.name, (0, 0xFFFFFFFFFFFFFFFF))
                self.domains[l.name] = (max(self.domains.get(l.name, (r.val, 0xFFFFFFFFFFFFFFFF))[0], r.val), hi)
            elif op == "==" and isinstance(l, SymBinary) and l.op == "&" and isinstance(l.lhs, SymVar) and isinstance(l.rhs, SymConst) and isinstance(r, SymConst):
                var_name = l.lhs.name
                mask_val = l.rhs.val
                target_val = r.val
                z_m, o_m = self.known_masks.get(var_name, (0, 0))
                self.known_masks[var_name] = (z_m | (mask_val & ~target_val), o_m | (mask_val & target_val))

    def solve(self, primary_vars: Sequence[str]) -> dict[str, int]:
        env: dict[str, int] = {}
        for var in primary_vars:
            if var in self.domains:
                lo, hi = self.domains[var]
                env[var] = lo if lo <= hi else hi
            elif var in self.known_masks:
                _, o_m = self.known_masks[var]
                env[var] = o_m
            else:
                env[var] = 0

        # Validate constraints and refine
        for c in self.constraints:
            val = c.evaluate(env)
            if val is not None and val == 0:
                cvars = c.get_vars()
                for v in cvars:
                    if v in self.domains:
                        lo, hi = self.domains[v]
                        env[v] = hi
        return env
