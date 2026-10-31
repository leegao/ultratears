# Pass 11: `GuestStackAndAlignmentPass` (`guest-stack-alignment-pass`)

- **Implementation File**: `src/horizon2llvm/lowering/pass_guest_stack_alignment.cpp`
- **Header Declaration**: `src/horizon2llvm/passes.hpp` (`ultrs::passes::GuestStackAndAlignmentPass`)
- **Pipeline Stage**: Stage II — Switch-Specific, x86-64 Devirtualization & ARM64-ism Deconstruction (Pass 11 of 23)
- **Default Tier**: Tier 1 (Safe Local; enabled by default)

## 1. What Problem It Is Solving

Because arbitrary guest pointers in AArch64 can theoretically be unaligned, the baseline lifter conservatively emits `align 1` on all non-atomic `OpTag::GuestMemLoad` and `OpTag::GuestMemStore` instructions (`load i64, ptr %p, align 1`), and `HorizonLoweringPass` (Pass 9) places all guest memory accesses in a single alias domain (`!alias.scope !4`, `ultratears.aa.guest_mem`).

Previously, `GuestStackAndAlignmentPass` tracked alignment and stack provenance only within a single basic block starting from `SP` (`arch_reg == 31`), resetting all other registers at basic block boundaries and call sites. However, in `main_432` (`f_80077bc00`, `f_80077be18`, `f_80077c0e4`, `f_80077c180`), the prologue initializes the AAPCS64 frame pointer `X29` from `SP + aligned_const` (e.g., `add x29, sp, #352` in `f_80077c180`), and subsequent basic blocks access local variables and 48-byte search keys via negative unscaled offsets from `X29` (`ldur x16, [x29, #-64..-24]`, `stp x9, x8, [x29, #-64]`, `stp xzr, xzr, [x29, #-112]`). Because `X29` alignment and stack provenance were lost across basic blocks and calls, 64 frame-pointer stack accesses in `f_80077c180` remained `align 1, !alias.scope !4`.

## 2. Why That Problem Is Important

- **Inter-Block Frame Pointer (`X29`) Stack Disambiguation & Alignment**: Propagating `X29`'s stack provenance (`!alias.scope !6`) and 16-byte alignment across all basic blocks and call boundaries upgrades 64 frame-pointer memory operations in `f_80077c180` from `align 1, !alias.scope !4` to `align 8`/`align 16, !alias.scope !6`.
- **Enabling Paired Store Coalescing & LLVM Vectorization**: Upgrading `[x29, #-112]` (`stp xzr, xzr, [x29, #-112]`) and `[x29, #-64..-24]` to `align 8` allows `AArch64IdiomDeconstructPass` (Pass 12) and LLVM's backend to emit aligned 128-bit vector stores and reduces stack spills in `main_432` from 108 to 80.

## 3. How the Pass Solves That Problem at a High Level

1. **Function-Level Prologue Scan for Frame Pointer (`X29`) Invariance**:
   - Scans the prologue block (`entry` / `L_<entry_pc>`) before the first call/branch to determine if `X29` (`arch_reg == 29`) is derived from `SP` (`arch_reg == 31`) via `ADD`/`SUB`/`OR` and computes its alignment `pro_align[29] = gcd(16, offset)`.
   - Verifies that no non-return basic block after the prologue overwrites `X29` (`clobbered_mid_fn == false`; epilogue blocks ending in `ret void` restore `X29` right before returning).
   - Seeds `func_inv_stack_align[29] = pro_align[29]` alongside `func_inv_stack_align[31] = 16`.
2. **Per-Block Alignment & Stack Provenance Propagation**:
   - Initializes `gpr_align` and `gpr_stack` from `func_inv_stack_align` at the start of every basic block and re-seeds them after every call (`DirectCall`, `IndirectCall`, `HorizonSvc`), since both `SP` (`31`) and `X29` (`29`) are AAPCS64 callee-saved invariants.
   - Propagates alignment (`std::gcd(a0, a1)`) and stack provenance through `add`, `sub`, and `or` (`MOV`) instructions.
   - Upgrades `, align 1` to `, align <min(natural_align, proven_align)>` and `, !alias.scope !4` to `, !alias.scope !6` on all stack-derived `GuestMemLoad` and `GuestMemStore` instructions.

## 4. Detailed Technical Implementation Details

- **Handling Negative `LDUR` / `STUR` Offsets**: In `AArch64ToLLVMLifter`, negative unscaled offsets (`ldur x16, [x29, #-64]`) are represented as `add i64 %x29, -64` (`const_u64 = 0xFFFFFFFFFFFFFFC0ULL`). `const_align(v)` computes `lsb = v & (~v + 1ULL)`, which for `-64` yields `64` (`min(16, 64) = 16`), preserving full 16/8-byte alignment on negative frame-pointer offsets.

## 5. End-to-End Walkthrough of Representative `llvm::ir` Snippets

### Input AArch64 Instructions (`f_80077c180` in `main_432_arm64.asm`)
```arm64
; Prologue in L_80077c180:
0x80077c180: d10743ff    sub  sp, sp, #464
0x80077c194: 910583fd    add  x29, sp, #352     ; X29 = SP + 352 (16-byte aligned!)
...
; Red-black tree search loop in L_80077c47c (12 basic blocks later, after 6 BL calls):
0x80077c47c: f85c03b0    ldur x16, [x29, #-64]
```

### Lifted LLVM IR Before Inter-Block `X29` Propagation
```llvm
L_80077c47c:
  ; @pc 0x80077c47c word 0xf85c03b0
  %r781 = load i64, ptr %loc_x29, align 8
  %t782 = add i64 %r781, -64
  %gmp783 = inttoptr i64 %t782 to ptr
  %gml784 = load i64, ptr %gmp783, align 1, !alias.scope !4, !noalias !3
```

### Lowered LLVM IR After Inter-Block `X29` Propagation in `GuestStackAndAlignmentPass`
```llvm
L_80077c47c:
  ; @pc 0x80077c47c word 0xf85c03b0
  %r781 = load i64, ptr %loc_x29, align 8
  %t782 = add i64 %r781, -64
  %gmp783 = inttoptr i64 %t782 to ptr
  %gml784 = load i64, ptr %gmp783, align 8, !alias.scope !6, !noalias !3
```

## 6. Other Passes That Rely On or Interact With This Pass

- **`HorizonLoweringPass` (Pass 9, Upstream)**: Attaches initial `!alias.scope !4, !noalias !3` metadata.
- **`AArch64IdiomDeconstructPass` (Pass 12, Downstream)**: Uses `inst.align_bytes` and `inst.is_stack_access` computed by Pass 11 when coalescing paired `STP` zero/constant stores on `[sp, ...]` and `[x29, ...]`.
