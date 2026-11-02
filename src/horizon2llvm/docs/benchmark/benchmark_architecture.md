# UltraTears Layered Per-Pass Benchmark Suite: Architecture & Design

## 1. Executive Overview

The UltraTears lifter lowers Nintendo Switch AArch64 machine code (from Horizon NSO binaries) into optimized x86-64 native code across a sequence of 23 distinct transformation passes (Layers 01 through 23).

The **Layered Per-Pass Benchmark Suite** evaluates compiler correctness, static microarchitectural path latency, and empirical execution throughput at every individual pass boundary. The system is split into two cleanly separated tiers:
1. **High-Performance C++ Core (`lifter_benchmark`)**: Manages guest virtual memory arenas, loads compiled layer shared objects (`lib_<sample>_<layer>.so`), drives lockstep rotating micro-batch executions, records nanosecond-resolution timings, and emits structured machine-readable JSON reports.
2. **Python Orchestrator (`bench_perf.py`)**: Traverses sample benchmark suites, coordinates multi-pass runs across layer ranges, handles process isolation and timeouts, aggregates microarchitectural metrics, and synthesizes publication-grade markdown reports (`MASTER_BENCHMARK_SUMMARY.md`).

---

## 2. Memory Arenas & Virtual Address Space Layout

Nintendo Switch 64-bit binaries (Horizon OS) assume userland text and data sections mapped at virtual addresses starting at `0x800000000` (32 GiB offset). To eliminate pointer translation and coordinate translation overhead at runtime, the benchmark suite pre-maps a 32 GiB fixed anonymous region:

| Arena Name | Virtual Address Range | Size | Purpose |
| :--- | :--- | ---: | :--- |
| `GUEST_BASE` | `0x800000000` – `0x804000000` | 64 MiB | Mapped NSO `.text`, `.rodata`, and `.data` image with applied relocations. |
| `HEAP_BASE` | `0x804000000` – `0x804200000` | 2 MiB | Bump-allocated heap used by `guest_alloc()` for runtime external callee stubs. |
| `STACK_BASE` | `0x804200000` – `0x804240000` | 256 KiB | Guest thread execution stack (`Cpu::sp` initialized at `STACK_BASE + 0x3E000`). |
| `OBJ_BASE` | `0x804240000` – `0x804400000` | 1.75 MiB | Isolated 256 KiB per-function object pools containing acyclic synthetic node graphs. |
| `GLOBALS_BASE` | `0x804400000` – `0x804600000` | 2 MiB | Mock Horizon OS global variables, thread-local storage (`tpidr_el0`), and TLS fast paths. |

---

## 3. Fault-Tolerant Execution & Zero-Overhead SEGV Handler

Benchmarking partially lowered functions or synthetic inputs requires resilience against out-of-bounds pointer dereferences, uninitialized object fields, or missing OS service tables.

### 3.1 Normal-Path Latency vs Page Fault Trap Penalty
- **Normal Path (0.0 ns Overhead)**:
  `install_segv_handler` installs POSIX signal handlers (`SIGSEGV`, `SIGBUS`) via `sigaction()`. Modern x86-64 MMUs perform hardware virtual memory address translation via hardware page tables. In the normal path (accesses within mapped arenas), zero host instructions, zero signal checks, and zero branch instructions are executed.
- **Trap Penalty & Kernel Context Switch Warning**:
  If an unmapped page fault occurs, taking a hardware trap into the kernel, pushing the signal frame, switching from Ring 3 to Ring 0, executing `mmap(MAP_FIXED)`, and returning via `sigreturn` costs **2,000 to 10,000 nanoseconds** (2–10 $\mu$s).
  Since our benchmarked subroutines execute in **20 to 200 nanoseconds**, hitting even a single page fault during a timed measurement completely skews the benchmark to measure the kernel trap and context switch rather than compiler code quality.

### 3.2 Countermeasures: Dry-Run Pre-Faulting & Contamination Rejection
To ensure pure user-space execution latency is measured without kernel context switches:
1. **Pre-Fault Dry-Run Warmup**: The harness executes a 600-iteration dry-run warmup loop before activating the benchmark timer. Any demand pages accessed by the rotating synthetic states are allocated and populated during this untimed phase.
2. **Real-Time Fault Detection**: During timed micro-batches, `set_timed_exec_active(true)` tracks any hardware fault via atomic counter `g_timed_fault_count`. If a page fault or signal occurs during a timed batch (`get_timed_fault_count() > 0`), the batch is immediately discarded from the percentile statistics.
3. **Crash Containment (`siglongjmp`)**: If an unrecoverable fault occurs outside the demand-paged arenas (e.g. invalid instruction `SIGILL`), `run_guest_fn_safely` traps via `siglongjmp` to return an execution failure safely without crashing the runner process.

---

## 4. IR Chunking & LLVM Named Metadata Serialization Contract

Functions extracted from the full NSO binary for benchmarking are serialized into unlowered LLVM reference files (`sample.ll`).

### 4.1 LLVM-IR Named Metadata (`!ultratears.chunk`)
Module-level chunk identity and PC boundaries are encoded as standard LLVM named metadata nodes at the tail of the module:

```llvm
!ultratears.chunk = !{!0}
!0 = !{!"main_432", i64 5, i64 34367912960, i64 34367918592}
```

**Compiler Properties**:
- **Automatic Target Elision**: During lowering to target assembly or machine code (`.s` or `.o`), LLVM's CodeGen backend automatically elides custom named metadata without generating any target machine instructions or rodata entries.
- **Preservation Across Passes**: Standard LLVM IR parsers and optimization passes preserve named metadata across intermediate transformation layers.
- **Legacy Fallback**: The raw parser (`parse_raw_ll`) supports both `!ultratears.chunk` metadata nodes and legacy `; UltraTears chunk ` comment headers for backward compatibility.

### 4.2 Raw Text Parsing (`parse_raw_ll`) vs `llvm::parseIR`
The benchmark harness parses `sample.ll` using `parse_raw_ll` rather than LLVM's built-in `llvm::parseIR`:
1. **Preservation of Lifter Comments**: LLVM's IR parser strips comment lines. UltraTears emits critical metadata comments such as `; @pc <hex> word <hex>` (disassembled ARM64 machine words) and `; @jt_targets [ ... ]` (jump table jump targets). These are required by the static CFG analyzer to compute path metrics.
2. **Intermediate Unlowered Dialect**: Reference `sample.ll` contains custom lifter intrinsics and unlowered guest CPU state references that are not valid standard LLVM IR until Pass 01–23 lowering passes run.

---

## 5. Dynamic Module Pipeline & Execution Lifecycle

For each optimization layer:
1. `bench_perf.py` compiles the layer's unlowered IR through the requested pass pipeline into an optimized `.o` file.
2. The layer `.o` is linked with `auto_stubs.o` (synthesized callee stubs) and `simd_rt.o` into `/tmp/lib_<sample>_<layer>.so`.
3. `lifter_benchmark` loads the shared object using `dlopen()`, resolves entry points via `dlsym()`, and queries the static interface contract (`stub_reset_state`, `stub_set_bench_mode`, `stub_set_branch_policy`).
4. Timed lockstep execution runs across rotating synthetic CPU states, recording microarchitectural p50, p75, and p90 execution latencies.
