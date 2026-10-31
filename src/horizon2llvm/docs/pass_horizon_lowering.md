# Pass 9: `HorizonLoweringPass` (`horizon-lowering-pass`)

- **Implementation File**: `src/horizon2llvm/lowering/pass_horizon_lowering.cpp`
- **Header Declaration**: `src/horizon2llvm/passes.hpp` (`ultrs::passes::HorizonLoweringPass`)
- **Pipeline Stage**: Stage II — Switch-Specific, x86-64 Devirtualization & ARM64-ism Deconstruction (Pass 9 of 23)
- **Default Tier**: Tier 0 (Required; always enabled)

## 1. What Problem It Is Solving

Nintendo Switch executables running on the Horizon OS kernel execute privileged or system-level AArch64 instructions (`SVC #imm` kernel syscalls, `MRS` / `MSR` system register reads/writes for `TPIDRRO_EL0`, `TPIDR_EL0`, `CNTFRQ_EL0`, `CNTPCT_EL0`, `FPCR`, `FPSR`, `NZCV`, `DC ZVA` cache-line zeroing, `CLREX` exclusive monitor clearing, `DMB`/`DSB`/`ISB` memory barriers, and `BRK`/`UDF` traps). Additionally, in a static recompiler where guest registers live in `Cpu* %c` and guest pointers are converted via `inttoptr i64 %addr to ptr`, LLVM's alias analysis conservatively assumes every guest memory `load` or `store` (`OpTag::GuestMemLoad` / `OpTag::GuestMemStore`) might alias `Cpu* %c`!

## 2. Why That Problem Is Important

- **Virtualization of Horizon OS & System Registers**: On a desktop x86-64 or ARM64 host OS (Linux/Windows/macOS), user-mode code cannot execute guest `SVC` instructions or read guest `TPIDRRO_EL0` hardware system registers directly. Lowering `OpTag::Horizon*` tags into structured accesses to `Cpu* %c` fields (`c->tpidrro`, `c->tpidr`, `c->fpcr`, `c->fpsr`) and host runtime calls (`@rt_svc`, `@rt_cntpct`, `@rt_trap`) cleanly virtualizes the Horizon OS userland environment.
- **Performance (Disambiguating `Cpu* %c` from Guest Memory via Scoped NoAlias Metadata)**: Without explicit alias metadata, any guest memory store (`STR X0, [X1]`) could theoretically overwrite `Cpu* %c` in LLVM's alias model, forcing LLVM's backend to reload `Cpu* %c` fields after every guest memory store. Attaching `!alias.scope !4, !noalias !3` (`ultratears.aa.guest_mem` vs `ultratears.aa.cpu_state`) proves to LLVM that guest memory accesses never alias `Cpu* %c`.

## 3. How the Pass Solves That Problem at a High Level

1. **System Instruction Lowering (`OpTag::Horizon*`)**:
   - **`OpTag::HorizonMrs`**:
     - `sysreg == 0x5E03` (`TPIDRRO_EL0`): Emits `GEP %c, 288` + `load i64` with `!alias.scope !3, !noalias !4`.
     - `sysreg == 0x5E02` (`TPIDR_EL0`): Emits `GEP %c, 280` + `load i64`.
     - `sysreg == 0x5F00` (`CNTFRQ_EL0`): Emits constant `19200000` (`19.2 MHz`, the Nintendo Switch system timer frequency).
     - `sysreg == 0x5F01` / `0x5F02` (`CNTPCT_EL0` / `CNTVCT_EL0`): Emits `call i64 @rt_cntpct()`.
     - `sysreg == 0x5A20` (`FPCR`): Emits `GEP %c, 272` + `load i32` + `zext i32 to i64`.
     - `sysreg == 0x5A21` (`FPSR`): Emits `GEP %c, 276` + `load i32` + `zext i32 to i64`.
     - `sysreg == 0x5A10` (`NZCV`): Emits `GEP %c, 264` + `load i32` + `zext i32 to i64`.
   - **`OpTag::HorizonMsr`**:
     - `TPIDR_EL0` (`0x5E02`): Stores `i64` to `c + 280`.
     - `FPCR` (`0x5A20`): Truncates to `i32` and stores to `c + 272`.
     - `FPSR` (`0x5A21`): Truncates to `i32` and stores to `c + 276`.
   - **`OpTag::HorizonDcZva`**: Emits `@llvm.memset.p0.i64(ptr align 64 %p, i8 0, i64 64, i1 false)` to zero a 64-byte cache line at `%addr & ~63`.
   - **`OpTag::HorizonBarrier`**: Lowers `CLREX` (`imm == 0`) to `store i64 0, ptr (c + 296)` (`c->excl_addr = 0`) and `DMB`/`DSB` (`imm == 1`) to `fence seq_cst`.
   - **`OpTag::HorizonSvc` / `OpTag::HorizonTrap`**: Emits `call void @rt_svc(ptr %c, i32 <imm>)` or `call void @rt_trap(ptr %c, i32 <kind>, i32 <imm>, i64 <pc>)`.
2. **Scoped Alias Metadata Injection**: Appends `, !alias.scope !4, !noalias !3` to every `OpTag::GuestMemLoad` and `OpTag::GuestMemStore` instruction that does not already carry `!alias.scope`.

## 4. Detailed Technical Implementation Details

- **`PassLLVMBuilder` Lowering**: Every system register `GEP`, `load`, `store`, `trunc`, `zext`, `fence seq_cst`, `@llvm.memset.p0.i64`, and `@rt_*` call is constructed via `PassLLVMBuilder` (`src/horizon2llvm/lowering/pass_horizon_lowering.cpp`).
- **Module Metadata Definitions**: Sets `M.needs_noalias_md = true`, which causes `Module::serialize()` to emit the metadata domain `!0 = !{!"ultratears.aa.domain"}`, `!1 = !{!1, !0, !"ultratears.aa.cpu_state"}`, and `!2 = !{!2, !0, !"ultratears.aa.guest_mem"}`.

## 5. End-to-End Walkthrough of Representative `llvm::ir` Snippets

### Input AArch64 Instructions
```arm64
0x800100000: d53bd068    mrs x8, tpidrro_el0
0x800100004: d5033bbf    dmb ish
0x800100008: d4000001    svc #0
```

### Lifted LLVM IR Before `HorizonLoweringPass`
```llvm
  ; @pc 0x800100000 (word=0xd53bd068)
  ; OpTag::HorizonMrs (sysreg=0x5e03, dst=%t1)
  ; @pc 0x800100004 (word=0xd5033bbf)
  ; OpTag::HorizonBarrier (imm=1)
  ; @pc 0x800100008 (word=0xd4000001)
  ; OpTag::HorizonSvc (imm=0, pc=0x800100008)
```

### Lowered LLVM IR After `HorizonLoweringPass`
```llvm
  ; @pc 0x800100000 (word=0xd53bd068)
  %mrs_tp.p = getelementptr inbounds i8, ptr %c, i64 288
  %t1 = load i64, ptr %mrs_tp.p, align 8, !alias.scope !3, !noalias !4
  ...
  ; @pc 0x800100004 (word=0xd5033bbf)
  fence seq_cst
  ; @pc 0x800100008 (word=0xd4000001)
  %svc_pc.p = getelementptr inbounds i8, ptr %c, i64 256
  store i64 34359803912, ptr %svc_pc.p, align 8, !alias.scope !3, !noalias !4
  call void @rt_svc(ptr %c, i32 0)
```

## 6. Other Passes That Rely On or Interact With This Pass

- **`HorizonTLSAndSpinWaitPass` (Pass 10, Downstream)**: Inspects the `MRS TPIDRRO_EL0` loads lowered by Pass 9 and hoists repeated TLS base loads to the function `entry` block.
- **`GuestStackAndAlignmentPass` (Pass 11, Downstream)**: Refines the `!alias.scope !4` metadata attached by Pass 9 into `!alias.scope !6` (`ultratears.aa.guest_stack`) for `SP`-derived stack accesses.
- **`CpuStatePromotionPass` (Pass 21, Downstream)**: Treats `OpTag::HorizonSvc` as a full call barrier that flushes and reloads guest registers around the kernel syscall.
