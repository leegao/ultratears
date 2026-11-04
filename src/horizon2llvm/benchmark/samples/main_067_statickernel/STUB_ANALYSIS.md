# Static Control-Flow & Stub Analysis Report: `main_067_statickernel`

## 1. Function Complexity & CFG Topology

| Function | Entry PC | ARM64 Insns | Basic Blocks | Edges | Has Loops | Longest DAG Path | Common Path | Callees |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| `f_8001161d0` | `0x8001161d0` | 1410 | 108 | 143 | True | 200 insns | 79 insns | 8 |

## 2. External Callee Classification & Stub Strategy

| Callee Symbol | Target PC | Classification | Args Read | Longest Path Ret | Alt Branch Ret | Policy Bit | Reason |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| `f_8001177d8` | `0x8001177d8` | `CONSTANT_ZERO` | 3 | `0x0` | `0x1` | N/A | Return value X0 unread/overwritten -> constant 0 |
| `f_800117868` | `0x800117868` | `CONSTANT_ZERO` | 3 | `0x0` | `0x1` | N/A | Return value X0 unread/overwritten -> constant 0 |
| `f_802ba41d0` | `0x802ba41d0` | `MEMORY_COPY` | 3 | `0x0` | `0x1` | N/A | Copies X2 bytes from src X1 to dst X0 (read after call at 0x800117034) |
| `f_8000ef570` | `0x8000ef570` | `BRANCH_SENSITIVE` | 1 | `0x1` | `0x0` | Bit 0 | TBNZ bit #0 at 0x800117274 |
| `f_802843244` | `0x802843244` | `CONSTANT_ZERO` | 1 | `0x0` | `0x1` | N/A | Return value X0 unread/overwritten -> constant 0 |
| `f_802844c70` | `0x802844c70` | `CONSTANT_ZERO` | 4 | `0x0` | `0x1` | N/A | Return value X0 unread/overwritten -> constant 0 |
| `f_802844d84` | `0x802844d84` | `CONSTANT_ZERO` | 3 | `0x0` | `0x1` | N/A | Return value X0 unread/overwritten -> constant 0 |
| `f_802855d74` | `0x802855d74` | `CONSTANT_ZERO` | 3 | `0x0` | `0x1` | N/A | Return value X0 unread/overwritten -> constant 0 |
