# Benchmark Sample Bringup Guide (`harness_bringup.md`)

This guide outlines the end-to-end workflow for extracting, analyzing, synthesizing stubs for, and benchmarking new guest ARM64 code slices in UltraTears.

---

## 1. Directory Structure

All benchmark sample suites reside in `src/horizon2llvm/benchmark/samples/<sample_id>/`:

```
src/horizon2llvm/benchmark/samples/<sample_id>/
├── sample.ll             # Unlowered LLVM IR slice extracted from lifter
├── sample_arm64.asm      # Disassembled reference AArch64 assembly
├── auto_stubs.c          # Synthesized C runtime stubs & call-site branch policies
├── STUB_ANALYSIS.md      # Auto-generated report with Mermaid CFG flowcharts & analysis
├── stub_analysis.json    # Machine-readable CFG complexity & stub metrics
└── results/              # (Generated during benchmark runs)
    ├── pass_*.ll         # Layered IR per pass
    ├── pass_*.o          # Object code per pass
    ├── pass_*.asm        # Disassembled x86-64 assembly per pass
    └── BENCHMARK_REPORT.md
```

---

## 2. Step-by-Step Bringup Workflow

### Step 1: Identify and Extract Candidates via `tools/analyze_nso.py`
Profile candidate functions by call-graph PageRank, loop intensity, and instruction count:
```bash
python3 tools/analyze_nso.py data/exefs/main --top 20
```
Pick a cluster of hot functions or a representative engine subsystem (e.g., dispatchers, memory allocators, physics kernels, spatial hashing).

### Step 2: Extract Reference Assembly (`sample_arm64.asm`) and IR (`sample.ll`)
Extract the raw machine instructions and unlowered LLVM IR slice using `horizon2llvm`:
```bash
build/tools/horizon2llvm data/exefs/main \
  --dump-chunk <chunk_id> \
  --out-dir src/horizon2llvm/benchmark/samples/<sample_id>
```
The generated `sample.ll` preserves original function entries and attaches LLVM named metadata:
```llvm
!ultratears.chunk = !{!0}
!0 = !{!"sample_id", i32 432, i32 5, i64 34367585280, i64 34367590736}
```

### Step 3: Synthesize Stubs & Reconstruct CFG via `stub_analyzer.py`
Run the unified Python stub analyzer on the new sample directory:
```bash
python3 src/horizon2llvm/benchmark/stub_analyzer.py src/horizon2llvm/benchmark/samples/<sample_id>
```
This automatically performs:
1. **Instruction Parsing**: Parses mnemonics (`bl`, `cbz`, `tbz`, `b.cond`, `ret`) from `sample_arm64.asm`.
2. **CFG Reconstruction**: Discovers basic block boundaries and detects loop back-edges.
3. **Iterative Fixed-Point DAG Relaxation**: Computes static instruction bounds for:
   - **Longest Path**: $\text{Len}(B) + \text{LoopBonus} + \max \text{succ}$
   - **Common Path**: $\text{Len}(B) + \text{LoopBonus} + \text{avg } \text{succ}$
4. **Callee Classification**:
   - `CONSTANT_ZERO`: Callee return in `X0` unused or overwritten.
   - `POINTER_ALLOC`: Dereferenced pointer return; stubs allocate from bump heap.
   - `BRANCH_SENSITIVE`: Return value tested by immediate conditional branch.
5. **Artifact Generation**:
   - `auto_stubs.c`: Self-contained C implementation with loop bounded execution ($N \le 100$).
   - `STUB_ANALYSIS.md`: Markdown documentation containing Mermaid `flowchart TD` diagrams for each function.
   - `stub_analysis.json`: Ingestible metadata consumed by `GenericSampleHarness` in C++.

### Step 4: Differential Equivalence Fuzzing
Before benchmarking, verify that unlowered IR and lowered passes execute identically without crashing:
```bash
build/tools/lifter_fuzz --sample-dir src/horizon2llvm/benchmark/samples/<sample_id> --fuzz-iters 100
```
Or via the Python driver:
```bash
python3 src/horizon2llvm/bench_perf.py --fuzz-only --sample-dir <sample_id> --fuzz-iters 100
```

### Step 5: Benchmarking & Report Generation
Run layered latency timing and code generation analysis:
```bash
python3 src/horizon2llvm/bench_perf.py \
  --sample-dir <sample_id> \
  --compact-layers \
  --bench-iters 1000
```
Inspect the generated `results/BENCHMARK_REPORT.md` for:
- Static x86-to-ARM64 instruction expansion ratios across passes.
- Host RSP stack spill counts and guest CPU register caching efficiency.
- Microarchitectural common and longest path latency percentiles (p50, p75, p90).

---

## 3. Demand-Paged Memory Virtualization & Latency Measurement

UltraTears uses demand-paged memory virtualization (`MAP_PRIVATE | MAP_ANONYMOUS | MAP_FIXED`) mapped at `GUEST_BASE = 0x800000000` (80 MiB):
- Unmapped memory accesses trigger a `SIGSEGV` handled by `install_segv_handler()`, which on-demand maps zeroed $64\,\text{KiB}$ pages via `mmap`.
- **Pre-faulting**: Because a Linux hardware page-fault trap and kernel context switch take $2\text{--}10\,\mu\text{s}$ (skewing sub-100ns execution latencies), the benchmark harness runs 600 untimed dry-run iterations before entering the timing loop.
- **Fault Contamination Guard**: `g_timed_mode_active` monitors active page faults. If any unexpected page fault occurs during a timed batch, `get_timed_fault_count()` discards the batch to guarantee nanosecond-accurate execution timings.
