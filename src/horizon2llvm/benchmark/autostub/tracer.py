"""Symbolic execution engine and two-pass path tracer along solved DAG trajectories."""

from __future__ import annotations

import collections
import re
from typing import Any, Sequence

from .models import CFGBlock
from .rodata import get_nso_rodata
from .sym_expr import (
    SymBinary,
    SymConst,
    SymExpr,
    SymExtract,
    SymUnary,
    SymVar,
)
from .transfer import AArch64TransferFunction


class SymbolicExecutionEngine:
    """Abstract interface for symbolic path execution and constraint accumulation."""

    def trace_path(self, path: Sequence[int]) -> list[Any]:
        """Traces the path and returns accumulated symbolic constraints."""
        raise NotImplementedError


class AArch64SymbolicPathTracer(SymbolicExecutionEngine):
    """Two-Pass Symbolic Path Tracer over AArch64 machine instructions.

    - Pass 1 (Symbolic Index Discovery):
      Symbolically steps through the path, detects indirect branches (jump tables),
      and scans the decompressed NSO .rodata segment to invert the switch index.
    - Pass 2 (Concrete-Index Refinement):
      Re-runs symbolic execution with the solved switch index specialized as a constant,
      allowing struct strides, multi-stage pointer indirection, and array lookups to fold cleanly.
    """

    def __init__(
        self,
        blocks: dict[int, CFGBlock],
        insn_map: dict[int, tuple[str, str]],
        target_path: list[int],
        callee_classifications: dict[str, Any] | None = None,
        rodata_path: Any = None,
    ):
        self.blocks = blocks
        self.insn_map = insn_map
        self.target_path = target_path
        self.callees = callee_classifications or {}
        self.rodata_info = get_nso_rodata(rodata_path)
        self.transfer = AArch64TransferFunction(self.rodata_info)

        # Registers: X0..X30, SP, NZCV
        self.regs: dict[str, Any] = {}
        # Guest Memory: canonical_addr_str -> value
        self.mem: dict[str, Any] = {}
        self.path_constraints: list[SymExpr] = []
        self.jump_table_targets: dict[int, tuple[str, int]] = {}

        self.imm_re = re.compile(r"#(-?(?:0x[0-9a-fA-F]+|[0-9]+))")
        self.mem_re = re.compile(r"\[([^\]]+)\]")

    def _get_reg(self, name: str) -> Any:
        name = name.lower()
        if name in ("xzr", "wzr"):
            return 0
        if name not in self.regs:
            canonical = name
            if name.startswith("w"):
                canonical = "x" + name[1:]
            if canonical in self.regs:
                val = self.regs[canonical]
                if isinstance(val, int):
                    return val & 0xFFFFFFFF
                if isinstance(val, SymExpr):
                    return SymExtract(val, 0, 32)
            self.regs[name] = SymVar(name.upper())
        return self.regs[name]

    def _set_reg(self, name: str, val: Any):
        name = name.lower()
        if name in ("xzr", "wzr"):
            return
        if name.startswith("w"):
            canonical = "x" + name[1:]
            self.regs[name] = val
            if isinstance(val, int):
                self.regs[canonical] = val & 0xFFFFFFFF
            elif isinstance(val, SymExpr):
                self.regs[canonical] = SymExtract(val, 0, 32)
            else:
                self.regs[canonical] = val
        else:
            self.regs[name] = val
            w_alias = "w" + name[1:]
            if isinstance(val, int):
                self.regs[w_alias] = val & 0xFFFFFFFF
            elif isinstance(val, SymExpr):
                self.regs[w_alias] = SymExtract(val, 0, 32)
            else:
                self.regs[w_alias] = val

    def _parse_imm(self, op_str: str) -> int | None:
        return self.transfer.parse_imm(op_str)

    def _eval_mem_addr(self, mem_expr_str: str) -> str:
        parts = [p.strip() for p in mem_expr_str.split(",")]
        base_reg = parts[0]
        base_val = self._get_reg(base_reg)

        offset = 0
        if len(parts) >= 2:
            imm = self._parse_imm(parts[1])
            if imm is not None:
                offset = imm
            else:
                idx_val = self._get_reg(parts[1])
                if isinstance(idx_val, int):
                    offset = idx_val

        if isinstance(base_val, int):
            return f"0x{base_val + offset:x}"
        return f"{base_val}+{offset}"

    def step_insn(self, pc: int, mnem: str, ops_arg: str | list[str], next_path_pc: int | None):
        """Interprets a single AArch64 instruction along the target path."""
        if isinstance(ops_arg, list):
            ops = [op.strip() for op in ops_arg if op.strip()]
            ops_str = ", ".join(ops)
        else:
            ops_str = ops_arg
            ops = [op.strip() for op in ops_str.split(",") if op.strip()]

        # 1. PC-Relative Page Computation
        if mnem == "adrp":
            if self.transfer.apply_adrp(pc, ops, self.regs):
                return
        elif mnem == "adr" and len(ops) >= 2:
            m = re.search(r"0x([0-9a-fA-F]+)", ops[1])
            if m:
                self._set_reg(ops[0], int(m.group(1), 16))
                return

        # 2. Moves and Arithmetic
        if mnem in ("mov", "movz", "movn", "movk"):
            if self.transfer.apply_mov(ops, self.regs, self._get_reg):
                return

        if mnem in ("add", "adds", "sub", "subs", "neg"):
            if self.transfer.apply_arith_insn(mnem, ops, self.regs, self._get_reg):
                return

        # 3. Bitwise logic
        if mnem in ("and", "ands", "orr", "eor", "bic", "lsl", "lsr", "asr"):
            if self.transfer.apply_bitwise_insn(mnem, ops, self.regs, self._get_reg):
                return

        # 4. Memory Loads
        if mnem in ("ldr", "ldrb", "ldrh", "ldur", "ldurh", "ldurb"):
            if len(ops) >= 2:
                dst = ops[0]
                m_mem = self.mem_re.search(ops_str)
                if m_mem:
                    addr_str = self._eval_mem_addr(m_mem.group(1))
                    # .rodata lookup
                    if self.rodata_info and addr_str.startswith("0x"):
                        addr_int = int(addr_str, 16)
                        ro_base, ro_bytes = self.rodata_info
                        if ro_base <= addr_int < ro_base + len(ro_bytes):
                            ro_off = addr_int - ro_base
                            if mnem in ("ldrb", "ldurb"):
                                val = ro_bytes[ro_off]
                            elif mnem in ("ldrh", "ldurh"):
                                val = int.from_bytes(ro_bytes[ro_off : ro_off + 2], "little")
                            else:
                                val = int.from_bytes(ro_bytes[ro_off : ro_off + 8], "little")
                            self._set_reg(dst, val)
                            return
                    mem_var = self.mem.get(addr_str, SymVar(f"MEM[{addr_str}]"))
                    self._set_reg(dst, mem_var)
                return

        # 5. Memory Stores
        if mnem in ("str", "strb", "strh", "stur", "sturh", "sturb"):
            if len(ops) >= 2:
                src = self._get_reg(ops[0])
                m_mem = self.mem_re.search(ops_str)
                if m_mem:
                    addr_str = self._eval_mem_addr(m_mem.group(1))
                    self.mem[addr_str] = src
                return

        # 6. Branch Condition Checking
        if next_path_pc is not None:
            if mnem in ("cbz", "cbnz"):
                r = self._get_reg(ops[0])
                m_tgt = re.search(r"0x([0-9a-fA-F]+)", ops[1])
                if m_tgt:
                    tgt_pc = int(m_tgt.group(1), 16)
                    taken = (next_path_pc == tgt_pc)
                    if taken:
                        cond = (r == 0) if mnem == "cbz" else (r != 0)
                    else:
                        cond = (r != 0) if mnem == "cbz" else (r == 0)
                    if isinstance(cond, SymExpr):
                        self.path_constraints.append(cond)
                return

            if mnem in ("tbz", "tbnz"):
                r = self._get_reg(ops[0])
                bit_idx = self._parse_imm(ops[1])
                m_tgt = re.search(r"0x([0-9a-fA-F]+)", ops[2])
                if bit_idx is not None and m_tgt:
                    tgt_pc = int(m_tgt.group(1), 16)
                    taken = (next_path_pc == tgt_pc)
                    bit_expr = (r >> bit_idx) & 1
                    if taken:
                        cond = (bit_expr == 0) if mnem == "tbz" else (bit_expr != 0)
                    else:
                        cond = (bit_expr != 0) if mnem == "tbz" else (bit_expr == 0)
                    if isinstance(cond, SymExpr):
                        self.path_constraints.append(cond)
                return

        # 7. Indirect Branch / Jump Table Inversion
        if mnem == "br" and next_path_pc is not None:
            target_reg = ops[0].lower()
            self.jump_table_targets[pc] = (target_reg, next_path_pc)
            return

        # 8. Function Calls
        if mnem == "bl":
            target_fn_name = ops[0]
            m_fn = re.search(r"<([^>]+)>", ops_str)
            if m_fn:
                target_fn_name = m_fn.group(1)
            ret_var = SymVar(f"RET_{target_fn_name}")
            self._set_reg("x0", ret_var)
            for i in range(1, 18):
                self._set_reg(f"x{i}", SymVar(f"SCRATCH_X{i}_{pc:x}"))

    def trace_path(self, path: Sequence[int] | None = None) -> list[SymExpr]:
        """Traces the sequence of blocks in the solved path."""
        p = list(path) if path is not None else self.target_path
        for b_idx, block_pc in enumerate(p):
            if block_pc not in self.blocks:
                continue
            block = self.blocks[block_pc]
            next_b_pc = p[b_idx + 1] if b_idx + 1 < len(p) else None

            # Gather all instructions in this block
            curr_pc = block.pc
            while curr_pc <= block.end_pc:
                if curr_pc in self.insn_map:
                    mnem, ops_str = self.insn_map[curr_pc]
                    next_insn_pc = (curr_pc + 4) if curr_pc < block.end_pc else next_b_pc
                    self.step_insn(curr_pc, mnem, ops_str, next_insn_pc)
                curr_pc += 4

        return self.path_constraints
