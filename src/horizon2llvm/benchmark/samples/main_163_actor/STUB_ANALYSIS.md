# Automated Stub & Static CFG Longest-Path Analysis (`main_163_actor`)

## 1. Function Static CFG & Path Length Summary

| Function | Entry PC | Static ARM64 Insns | Basic Blocks | Loop Back-Edges | Est. Common Path (ARM64 Insns) | Est. Longest Path (ARM64 Insns) |
| :--- | :--- | ---: | ---: | ---: | ---: | ---: |
| `f_80029e418` | `0x80029e418` | 974 | 177 | 25 | 63 | 1832 |

## 2. Function Control Flow Graphs (CFGs)

### Function `f_80029e418` (`0x80029e418` – 974 insns, 177 blocks)

```mermaid
flowchart TD
    B_80029e418["0x80029e418..0x80029e424\n(3 insns)"]
    B_80029e424["0x80029e424..0x80029e45c\n(14 insns)"]
    B_80029e45c["0x80029e45c..0x80029e478\n(7 insns)"]
    B_80029e478["0x80029e478..0x80029e480\n(2 insns)"]
    B_80029e480["0x80029e480..0x80029e48c\n(3 insns, loop hdr)"]
    B_80029e48c["0x80029e48c..0x80029e494\n(2 insns)"]
    B_80029e494["0x80029e494..0x80029e4c4\n(12 insns)"]
    B_80029e4c4["0x80029e4c4..0x80029e4cc\n(2 insns)"]
    B_80029e4cc["0x80029e4cc..0x80029e4d8\n(3 insns)"]
    B_80029e4d8["0x80029e4d8..0x80029e4ec\n(5 insns)"]
    B_80029e4ec["0x80029e4ec..0x80029e504\n(6 insns, loop hdr)"]
    B_80029e504["0x80029e504..0x80029e50c\n(2 insns)"]
    B_80029e50c["0x80029e50c..0x80029e51c\n(4 insns)"]
    B_80029e51c["0x80029e51c..0x80029e52c\n(4 insns)"]
    B_80029e52c["0x80029e52c..0x80029e534\n(2 insns)"]
    B_80029e534["0x80029e534..0x80029e53c\n(2 insns)"]
    B_80029e53c["0x80029e53c..0x80029e548\n(3 insns)"]
    B_80029e548["0x80029e548..0x80029e54c\n(1 insns)"]
    B_80029e54c["0x80029e54c..0x80029e560\n(5 insns)"]
    B_80029e560["0x80029e560..0x80029e568\n(2 insns)"]
    B_80029e568["0x80029e568..0x80029e56c\n(1 insns)"]
    B_80029e56c["0x80029e56c..0x80029e57c\n(4 insns, loop hdr)"]
    B_80029e57c["0x80029e57c..0x80029e598\n(7 insns)"]
    B_80029e598["0x80029e598..0x80029e5b0\n(6 insns)"]
    B_80029e5b0["0x80029e5b0..0x80029e5b8\n(2 insns)"]
    B_80029e5b8["0x80029e5b8..0x80029e5c4\n(3 insns)"]
    B_80029e5c4["0x80029e5c4..0x80029e5fc\n(14 insns)"]
    B_80029e5fc["0x80029e5fc..0x80029e608\n(3 insns, loop hdr)"]
    B_80029e608["0x80029e608..0x80029e610\n(2 insns)"]
    B_80029e610["0x80029e610..0x80029e66c\n(23 insns)"]
    B_80029e66c["0x80029e66c..0x80029e678\n(3 insns)"]
    B_80029e678["0x80029e678..0x80029e684\n(3 insns)"]
    B_80029e684["0x80029e684..0x80029e690\n(3 insns)"]
    B_80029e690["0x80029e690..0x80029e694\n(1 insns)"]
    B_80029e694["0x80029e694..0x80029e698\n(1 insns)"]
    B_80029e698["0x80029e698..0x80029e6bc\n(9 insns)"]
    B_80029e6bc["0x80029e6bc..0x80029e6c8\n(3 insns)"]
    B_80029e6c8["0x80029e6c8..0x80029e6e4\n(7 insns)"]
    B_80029e6e4["0x80029e6e4..0x80029e708\n(9 insns, loop hdr)"]
    B_80029e708["0x80029e708..0x80029e718\n(4 insns, switch)"]
    B_80029e718["0x80029e718..0x80029e740\n(10 insns)"]
    B_80029e740["0x80029e740..0x80029e75c\n(7 insns)"]
    B_80029e75c["0x80029e75c..0x80029e774\n(6 insns, loop hdr)"]
    B_80029e774["0x80029e774..0x80029e784\n(4 insns, loop hdr)"]
    B_80029e784["0x80029e784..0x80029e788\n(1 insns)"]
    B_80029e788["0x80029e788..0x80029e790\n(2 insns)"]
    B_80029e790["0x80029e790..0x80029e7a4\n(5 insns)"]
    B_80029e7a4["0x80029e7a4..0x80029e7a8\n(1 insns)"]
    B_80029e7a8["0x80029e7a8..0x80029e7b0\n(2 insns, loop hdr)"]
    B_80029e7b0["0x80029e7b0..0x80029e7c0\n(4 insns)"]
    B_80029e7c0["0x80029e7c0..0x80029e7c4\n(1 insns)"]
    B_80029e7c4["0x80029e7c4..0x80029e7d0\n(3 insns)"]
    B_80029e7d0["0x80029e7d0..0x80029e7e4\n(5 insns)"]
    B_80029e7e4["0x80029e7e4..0x80029e7f8\n(5 insns)"]
    B_80029e7f8["0x80029e7f8..0x80029e804\n(3 insns)"]
    B_80029e804["0x80029e804..0x80029e808\n(1 insns)"]
    B_80029e808["0x80029e808..0x80029e830\n(10 insns)"]
    B_80029e830["0x80029e830..0x80029e84c\n(7 insns)"]
    B_80029e84c["0x80029e84c..0x80029e864\n(6 insns, loop hdr)"]
    B_80029e864["0x80029e864..0x80029e874\n(4 insns, loop hdr)"]
    B_80029e874["0x80029e874..0x80029e878\n(1 insns)"]
    B_80029e878["0x80029e878..0x80029e880\n(2 insns)"]
    B_80029e880["0x80029e880..0x80029e894\n(5 insns)"]
    B_80029e894["0x80029e894..0x80029e898\n(1 insns)"]
    B_80029e898["0x80029e898..0x80029e8a4\n(3 insns)"]
    B_80029e8a4["0x80029e8a4..0x80029e8bc\n(6 insns)"]
    B_80029e8bc["0x80029e8bc..0x80029e8e4\n(10 insns)"]
    B_80029e8e4["0x80029e8e4..0x80029e904\n(8 insns)"]
    B_80029e904["0x80029e904..0x80029e90c\n(2 insns)"]
    B_80029e90c["0x80029e90c..0x80029e910\n(1 insns, loop hdr)"]
    B_80029e910["0x80029e910..0x80029e920\n(4 insns, loop hdr)"]
    B_80029e920["0x80029e920..0x80029e924\n(1 insns)"]
    B_80029e924["0x80029e924..0x80029e930\n(3 insns)"]
    B_80029e930["0x80029e930..0x80029e934\n(1 insns)"]
    B_80029e934["0x80029e934..0x80029e940\n(3 insns)"]
    B_80029e940["0x80029e940..0x80029e95c\n(7 insns)"]
    B_80029e95c["0x80029e95c..0x80029e96c\n(4 insns)"]
    B_80029e96c["0x80029e96c..0x80029e994\n(10 insns)"]
    B_80029e994["0x80029e994..0x80029e9b0\n(7 insns)"]
    B_80029e9b0["0x80029e9b0..0x80029e9c8\n(6 insns, loop hdr)"]
    B_80029e9c8["0x80029e9c8..0x80029e9d8\n(4 insns, loop hdr)"]
    B_80029e9d8["0x80029e9d8..0x80029e9dc\n(1 insns)"]
    B_80029e9dc["0x80029e9dc..0x80029e9e4\n(2 insns)"]
    B_80029e9e4["0x80029e9e4..0x80029e9e8\n(1 insns)"]
    B_80029e9e8["0x80029e9e8..0x80029e9f4\n(3 insns)"]
    B_80029e9f4["0x80029e9f4..0x80029ea0c\n(6 insns)"]
    B_80029ea0c["0x80029ea0c..0x80029ea10\n(1 insns, loop hdr)"]
    B_80029ea10["0x80029ea10..0x80029ea20\n(4 insns, loop hdr)"]
    B_80029ea20["0x80029ea20..0x80029ea24\n(1 insns)"]
    B_80029ea24["0x80029ea24..0x80029ea30\n(3 insns)"]
    B_80029ea30["0x80029ea30..0x80029ea3c\n(3 insns)"]
    B_80029ea3c["0x80029ea3c..0x80029ea54\n(6 insns)"]
    B_80029ea54["0x80029ea54..0x80029ea58\n(1 insns)"]
    B_80029ea58["0x80029ea58..0x80029ea6c\n(5 insns)"]
    B_80029ea6c["0x80029ea6c..0x80029ea78\n(3 insns)"]
    B_80029ea78["0x80029ea78..0x80029ea7c\n(1 insns)"]
    B_80029ea7c["0x80029ea7c..0x80029ea98\n(7 insns)"]
    B_80029ea98["0x80029ea98..0x80029eaa0\n(2 insns)"]
    B_80029eaa0["0x80029eaa0..0x80029eaa4\n(1 insns)"]
    B_80029eaa4["0x80029eaa4..0x80029eab4\n(4 insns, loop hdr)"]
    B_80029eab4["0x80029eab4..0x80029eac0\n(3 insns)"]
    B_80029eac0["0x80029eac0..0x80029eac4\n(1 insns)"]
    B_80029eac4["0x80029eac4..0x80029ead0\n(3 insns, loop hdr)"]
    B_80029ead0["0x80029ead0..0x80029eadc\n(3 insns, loop hdr)"]
    B_80029eadc["0x80029eadc..0x80029eae4\n(2 insns)"]
    B_80029eae4["0x80029eae4..0x80029eae8\n(1 insns)"]
    B_80029eae8["0x80029eae8..0x80029eaf8\n(4 insns)"]
    B_80029eaf8["0x80029eaf8..0x80029eb08\n(4 insns)"]
    B_80029eb08["0x80029eb08..0x80029eb10\n(2 insns)"]
    B_80029eb10["0x80029eb10..0x80029eb20\n(4 insns)"]
    B_80029eb20["0x80029eb20..0x80029eb28\n(2 insns)"]
    B_80029eb28["0x80029eb28..0x80029eb30\n(2 insns)"]
    B_80029eb30["0x80029eb30..0x80029eb44\n(5 insns)"]
    B_80029eb44["0x80029eb44..0x80029eb48\n(1 insns)"]
    B_80029eb48["0x80029eb48..0x80029eb64\n(7 insns)"]
    B_80029eb64["0x80029eb64..0x80029eb78\n(5 insns)"]
    B_80029eb78["0x80029eb78..0x80029eb84\n(3 insns)"]
    B_80029eb84["0x80029eb84..0x80029eb90\n(3 insns)"]
    B_80029eb90["0x80029eb90..0x80029eba8\n(6 insns)"]
    B_80029eba8["0x80029eba8..0x80029ebac\n(1 insns)"]
    B_80029ebac["0x80029ebac..0x80029ebf0\n(17 insns)"]
    B_80029ebf0["0x80029ebf0..0x80029ebf8\n(2 insns)"]
    B_80029ebf8["0x80029ebf8..0x80029ec00\n(2 insns)"]
    B_80029ec00["0x80029ec00..0x80029ec14\n(5 insns)"]
    B_80029ec14["0x80029ec14..0x80029ec18\n(1 insns)"]
    B_80029ec18["0x80029ec18..0x80029ec38\n(8 insns)"]
    B_80029ec38["0x80029ec38..0x80029ec5c\n(9 insns)"]
    B_80029ec5c["0x80029ec5c..0x80029ec68\n(3 insns)"]
    B_80029ec68["0x80029ec68..0x80029ec74\n(3 insns, loop hdr)"]
    B_80029ec74["0x80029ec74..0x80029ec80\n(3 insns, loop hdr)"]
    B_80029ec80["0x80029ec80..0x80029ec8c\n(3 insns)"]
    B_80029ec8c["0x80029ec8c..0x80029ec90\n(1 insns)"]
    B_80029ec90["0x80029ec90..0x80029ec98\n(2 insns)"]
    B_80029ec98["0x80029ec98..0x80029ecac\n(5 insns)"]
    B_80029ecac["0x80029ecac..0x80029ecf0\n(17 insns)"]
    B_80029ecf0["0x80029ecf0..0x80029ed34\n(17 insns)"]
    B_80029ed34["0x80029ed34..0x80029ed78\n(17 insns)"]
    B_80029ed78["0x80029ed78..0x80029edc4\n(19 insns)"]
    B_80029edc4["0x80029edc4..0x80029ee08\n(17 insns)"]
    B_80029ee08["0x80029ee08..0x80029ee4c\n(17 insns)"]
    B_80029ee4c["0x80029ee4c..0x80029ee98\n(19 insns)"]
    B_80029ee98["0x80029ee98..0x80029eee4\n(19 insns)"]
    B_80029eee4["0x80029eee4..0x80029ef34\n(20 insns)"]
    B_80029ef34["0x80029ef34..0x80029ef88\n(21 insns)"]
    B_80029ef88["0x80029ef88..0x80029ef94\n(3 insns)"]
    B_80029ef94["0x80029ef94..0x80029efd8\n(17 insns)"]
    B_80029efd8["0x80029efd8..0x80029f024\n(19 insns)"]
    B_80029f024["0x80029f024..0x80029f06c\n(18 insns)"]
    B_80029f06c["0x80029f06c..0x80029f080\n(5 insns)"]
    B_80029f080["0x80029f080..0x80029f0c4\n(17 insns)"]
    B_80029f0c4["0x80029f0c4..0x80029f0cc\n(2 insns)"]
    B_80029f0cc["0x80029f0cc..0x80029f110\n(17 insns)"]
    B_80029f110["0x80029f110..0x80029f120\n(4 insns)"]
    B_80029f120["0x80029f120..0x80029f148\n(10 insns)"]
    B_80029f148["0x80029f148..0x80029f150\n(2 insns)"]
    B_80029f150["0x80029f150..0x80029f170\n(8 insns)"]
    B_80029f170["0x80029f170..0x80029f194\n(9 insns)"]
    B_80029f194["0x80029f194..0x80029f1b8\n(9 insns)"]
    B_80029f1b8["0x80029f1b8..0x80029f200\n(18 insns)"]
    B_80029f200["0x80029f200..0x80029f20c\n(3 insns, loop hdr)"]
    B_80029f20c["0x80029f20c..0x80029f218\n(3 insns)"]
    B_80029f218["0x80029f218..0x80029f21c\n(1 insns)"]
    B_80029f21c["0x80029f21c..0x80029f220\n(1 insns)"]
    B_80029f220["0x80029f220..0x80029f238\n(6 insns)"]
    B_80029f238["0x80029f238..0x80029f250\n(6 insns)"]
    B_80029f250["0x80029f250..0x80029f27c\n(11 insns)"]
    B_80029f27c["0x80029f27c..0x80029f280\n(1 insns)"]
    B_80029f280["0x80029f280..0x80029f288\n(2 insns)"]
    B_80029f288["0x80029f288..0x80029f294\n(3 insns)"]
    B_80029f294["0x80029f294..0x80029f298\n(1 insns)"]
    B_80029f298["0x80029f298..0x80029f2c0\n(10 insns)"]
    B_80029f2c0["0x80029f2c0..0x80029f2d4\n(5 insns)"]
    B_80029f2d4["0x80029f2d4..0x80029f2f8\n(9 insns)"]
    B_80029f2f8["0x80029f2f8..0x80029f338\n(16 insns)"]
    B_80029f338["0x80029f338..0x80029f344\n(3 insns, loop hdr)"]
    B_80029f344["0x80029f344..0x80029f34c\n(2 insns)"]
    B_80029f34c["0x80029f34c..0x80029f350\n(1 insns)"]
    B_80029e418 -- "taken" --> B_80029ec90
    B_80029e418 -- "fallthrough" --> B_80029e424
    B_80029e424 -- "taken" --> B_80029e694
    B_80029e424 -- "fallthrough" --> B_80029e45c
    B_80029e45c -- "taken" --> B_80029e494
    B_80029e45c -- "fallthrough" --> B_80029e478
    B_80029e478 --> B_80029e480
    B_80029e480 -. "loop back" .-> B_80029e480
    B_80029e480 -- "fallthrough" --> B_80029e48c
    B_80029e48c --> B_80029e494
    B_80029e494 -- "taken" --> B_80029ea58
    B_80029e494 -- "fallthrough" --> B_80029e4c4
    B_80029e4c4 -- "taken" --> B_80029ea58
    B_80029e4c4 -- "fallthrough" --> B_80029e4cc
    B_80029e4cc -- "taken" --> B_80029e5c4
    B_80029e4cc -- "fallthrough" --> B_80029e4d8
    B_80029e4d8 --> B_80029e4ec
    B_80029e4ec -- "taken" --> B_80029e51c
    B_80029e4ec -- "fallthrough" --> B_80029e504
    B_80029e504 -- "taken" --> B_80029e51c
    B_80029e504 -- "fallthrough" --> B_80029e50c
    B_80029e50c --> B_80029e51c
    B_80029e51c -- "taken" --> B_80029e57c
    B_80029e51c -- "fallthrough" --> B_80029e52c
    B_80029e52c -- "taken" --> B_80029ebf0
    B_80029e52c -- "fallthrough" --> B_80029e534
    B_80029e534 -- "taken" --> B_80029e57c
    B_80029e534 -- "fallthrough" --> B_80029e53c
    B_80029e53c -- "taken" --> B_80029ec18
    B_80029e53c -- "fallthrough" --> B_80029e548
    B_80029e548 -- "taken" --> B_80029ebf0
    B_80029e548 -- "fallthrough" --> B_80029e54c
    B_80029e54c -- "taken" --> B_80029ebf0
    B_80029e54c -- "fallthrough" --> B_80029e560
    B_80029e560 -- "taken" --> B_80029e57c
    B_80029e560 -- "fallthrough" --> B_80029e568
    B_80029e568 --> B_80029e56c
    B_80029e56c -. "loop back" .-> B_80029e56c
    B_80029e56c -- "fallthrough" --> B_80029e57c
    B_80029e57c -- "taken" --> B_80029ec5c
    B_80029e57c -- "fallthrough" --> B_80029e598
    B_80029e598 -- "taken" --> B_80029ebf8
    B_80029e598 -- "fallthrough" --> B_80029e5b0
    B_80029e5b0 -- "taken" --> B_80029ebf8
    B_80029e5b0 -- "fallthrough" --> B_80029e5b8
    B_80029e5b8 -. "loop back" .-> B_80029e4ec
    B_80029e5b8 -- "fallthrough" --> B_80029e5c4
    B_80029e5c4 --> B_80029e5fc
    B_80029e5fc -- "taken" --> B_80029e610
    B_80029e5fc -- "fallthrough" --> B_80029e608
    B_80029e608 -- "taken" --> B_80029eb08
    B_80029e608 -- "fallthrough" --> B_80029e610
    B_80029e610 -- "taken" --> B_80029e684
    B_80029e610 -- "fallthrough" --> B_80029e66c
    B_80029e66c -- "taken" --> B_80029eae8
    B_80029e66c -- "fallthrough" --> B_80029e678
    B_80029e678 -- "taken" --> B_80029e6bc
    B_80029e678 -- "fallthrough" --> B_80029e684
    B_80029e684 -- "taken" --> B_80029ec98
    B_80029e684 -- "fallthrough" --> B_80029e690
    B_80029e690 -- "taken" --> B_80029eaf8
    B_80029e690 -- "fallthrough" --> B_80029e694
    B_80029e694 --> B_80029e698
    B_80029e698 --> EXIT_80029e698["return"]
    B_80029e6bc -- "taken" --> B_80029e684
    B_80029e6bc -- "fallthrough" --> B_80029e6c8
    B_80029e6c8 --> B_80029e6e4
    B_80029e6e4 -- "taken" --> B_80029e7f8
    B_80029e6e4 -- "fallthrough" --> B_80029e708
    B_80029e708 -- "case" --> B_80029e718
    B_80029e708 -- "case" --> B_80029e808
    B_80029e708 -- "case" --> B_80029e8bc
    B_80029e708 -- "case" --> B_80029e96c
    B_80029e708 -- "case" --> B_80029eb48
    B_80029e708 -- "case" --> B_80029ebac
    B_80029e708 -- "case" --> B_80029ecac
    B_80029e708 -- "case" --> B_80029ecf0
    B_80029e708 -- "case" --> B_80029ed34
    B_80029e708 -- "case" --> B_80029ed78
    B_80029e708 -- "case" --> B_80029edc4
    B_80029e708 -- "case" --> B_80029ee08
    B_80029e708 -- "case" --> B_80029ee4c
    B_80029e708 -- "case" --> B_80029ee98
    B_80029e708 -- "case" --> B_80029eee4
    B_80029e708 -- "case" --> B_80029ef34
    B_80029e708 -- "case" --> B_80029efd8
    B_80029e708 -- "case" --> B_80029f024
    B_80029e708 -- "case" --> B_80029f080
    B_80029e708 -- "case" --> B_80029f0cc
    B_80029e718 -- "taken" --> B_80029e7f8
    B_80029e718 -- "fallthrough" --> B_80029e740
    B_80029e740 --> B_80029e75c
    B_80029e75c -- "taken" --> B_80029e7c4
    B_80029e75c -- "fallthrough" --> B_80029e774
    B_80029e774 -- "taken" --> B_80029e790
    B_80029e774 -- "fallthrough" --> B_80029e784
    B_80029e784 -- "taken" --> B_80029e7c4
    B_80029e784 -- "fallthrough" --> B_80029e788
    B_80029e788 -. "loop back" .-> B_80029e774
    B_80029e788 -- "fallthrough" --> B_80029e790
    B_80029e790 -. "loop back" .-> B_80029e75c
    B_80029e790 -- "fallthrough" --> B_80029e7a4
    B_80029e7a4 --> B_80029e7f8
    B_80029e7a8 -- "taken" --> B_80029f294
    B_80029e7a8 -- "fallthrough" --> B_80029e7b0
    B_80029e7b0 -. "loop back" .-> B_80029e7a8
    B_80029e7b0 -- "fallthrough" --> B_80029e7c0
    B_80029e7c0 --> B_80029f298
    B_80029e7c4 -- "taken" --> B_80029e7f8
    B_80029e7c4 -- "fallthrough" --> B_80029e7d0
    B_80029e7d0 --> B_80029e7e4
    B_80029e7e4 --> B_80029e7f8
    B_80029e7f8 -. "loop back" .-> B_80029e6e4
    B_80029e7f8 -- "fallthrough" --> B_80029e804
    B_80029e804 --> B_80029e684
    B_80029e808 -- "taken" --> B_80029e7f8
    B_80029e808 -- "fallthrough" --> B_80029e830
    B_80029e830 --> B_80029e84c
    B_80029e84c -- "taken" --> B_80029e898
    B_80029e84c -- "fallthrough" --> B_80029e864
    B_80029e864 -- "taken" --> B_80029e880
    B_80029e864 -- "fallthrough" --> B_80029e874
    B_80029e874 -- "taken" --> B_80029e898
    B_80029e874 -- "fallthrough" --> B_80029e878
    B_80029e878 -. "loop back" .-> B_80029e864
    B_80029e878 -- "fallthrough" --> B_80029e880
    B_80029e880 -. "loop back" .-> B_80029e84c
    B_80029e880 -- "fallthrough" --> B_80029e894
    B_80029e894 --> B_80029e7f8
    B_80029e898 -- "taken" --> B_80029e7f8
    B_80029e898 -- "fallthrough" --> B_80029e8a4
    B_80029e8a4 --> B_80029e7e4
    B_80029e8bc -- "taken" --> B_80029e7f8
    B_80029e8bc -- "fallthrough" --> B_80029e8e4
    B_80029e8e4 -- "taken" --> B_80029f148
    B_80029e8e4 -- "fallthrough" --> B_80029e904
    B_80029e904 --> B_80029e90c
    B_80029e90c --> B_80029e910
    B_80029e910 -- "taken" --> B_80029eb84
    B_80029e910 -- "fallthrough" --> B_80029e920
    B_80029e920 -- "taken" --> B_80029e934
    B_80029e920 -- "fallthrough" --> B_80029e924
    B_80029e924 -. "loop back" .-> B_80029e910
    B_80029e924 -- "fallthrough" --> B_80029e930
    B_80029e930 --> B_80029eb84
    B_80029e934 -- "taken" --> B_80029e7f8
    B_80029e934 -- "fallthrough" --> B_80029e940
    B_80029e940 --> B_80029e95c
    B_80029e95c --> B_80029e7f8
    B_80029e96c -- "taken" --> B_80029e7f8
    B_80029e96c -- "fallthrough" --> B_80029e994
    B_80029e994 --> B_80029e9b0
    B_80029e9b0 -- "taken" --> B_80029e9e8
    B_80029e9b0 -- "fallthrough" --> B_80029e9c8
    B_80029e9c8 -- "taken" --> B_80029ec00
    B_80029e9c8 -- "fallthrough" --> B_80029e9d8
    B_80029e9d8 -- "taken" --> B_80029e9e8
    B_80029e9d8 -- "fallthrough" --> B_80029e9dc
    B_80029e9dc -. "loop back" .-> B_80029e9c8
    B_80029e9dc -- "fallthrough" --> B_80029e9e4
    B_80029e9e4 --> B_80029ec00
    B_80029e9e8 -- "taken" --> B_80029e7f8
    B_80029e9e8 -- "fallthrough" --> B_80029e9f4
    B_80029e9f4 --> B_80029e7e4
    B_80029ea0c --> B_80029ea10
    B_80029ea10 -- "taken" --> B_80029ea30
    B_80029ea10 -- "fallthrough" --> B_80029ea20
    B_80029ea20 -- "taken" --> B_80029f220
    B_80029ea20 -- "fallthrough" --> B_80029ea24
    B_80029ea24 -. "loop back" .-> B_80029ea10
    B_80029ea24 -- "fallthrough" --> B_80029ea30
    B_80029ea30 -- "taken" --> B_80029e7f8
    B_80029ea30 -- "fallthrough" --> B_80029ea3c
    B_80029ea3c -. "loop back" .-> B_80029ea0c
    B_80029ea3c -- "fallthrough" --> B_80029ea54
    B_80029ea54 --> B_80029f220
    B_80029ea58 -- "taken" --> B_80029eab4
    B_80029ea58 -- "fallthrough" --> B_80029ea6c
    B_80029ea6c -- "taken" --> B_80029f110
    B_80029ea6c -- "fallthrough" --> B_80029ea78
    B_80029ea78 -- "taken" --> B_80029f0c4
    B_80029ea78 -- "fallthrough" --> B_80029ea7c
    B_80029ea7c -- "taken" --> B_80029f0c4
    B_80029ea7c -- "fallthrough" --> B_80029ea98
    B_80029ea98 -- "taken" --> B_80029eab4
    B_80029ea98 -- "fallthrough" --> B_80029eaa0
    B_80029eaa0 --> B_80029eaa4
    B_80029eaa4 -. "loop back" .-> B_80029eaa4
    B_80029eaa4 -- "fallthrough" --> B_80029eab4
    B_80029eab4 -- "taken" --> B_80029e4cc
    B_80029eab4 -- "fallthrough" --> B_80029eac0
    B_80029eac0 --> B_80029eac4
    B_80029eac4 -- "taken" --> B_80029f2d4
    B_80029eac4 -- "fallthrough" --> B_80029ead0
    B_80029ead0 -. "loop back" .-> B_80029eac4
    B_80029ead0 -- "fallthrough" --> B_80029eadc
    B_80029eadc -- "taken" --> B_80029e4cc
    B_80029eadc -- "fallthrough" --> B_80029eae4
    B_80029eae4 -. "loop back" .-> B_80029ead0
    B_80029eae8 --> B_80029e678
    B_80029eaf8 --> B_80029e694
    B_80029eb08 -- "taken" --> B_80029e610
    B_80029eb08 -- "fallthrough" --> B_80029eb10
    B_80029eb10 -- "taken" --> B_80029e610
    B_80029eb10 -- "fallthrough" --> B_80029eb20
    B_80029eb20 -- "taken" --> B_80029e610
    B_80029eb20 -- "fallthrough" --> B_80029eb28
    B_80029eb28 -- "taken" --> B_80029f150
    B_80029eb28 -- "fallthrough" --> B_80029eb30
    B_80029eb30 -. "loop back" .-> B_80029e5fc
    B_80029eb30 -- "fallthrough" --> B_80029eb44
    B_80029eb44 --> B_80029e610
    B_80029eb48 -- "taken" --> B_80029e7f8
    B_80029eb48 -- "fallthrough" --> B_80029eb64
    B_80029eb64 -- "taken" --> B_80029f21c
    B_80029eb64 -- "fallthrough" --> B_80029eb78
    B_80029eb78 --> B_80029ea0c
    B_80029eb84 -- "taken" --> B_80029e7f8
    B_80029eb84 -- "fallthrough" --> B_80029eb90
    B_80029eb90 -. "loop back" .-> B_80029e90c
    B_80029eb90 -- "fallthrough" --> B_80029eba8
    B_80029eba8 --> B_80029e934
    B_80029ebac --> B_80029e7f8
    B_80029ebf0 --> B_80029e57c
    B_80029ebf8 --> B_80029e698
    B_80029ec00 -. "loop back" .-> B_80029e9b0
    B_80029ec00 -- "fallthrough" --> B_80029ec14
    B_80029ec14 --> B_80029e7f8
    B_80029ec18 -- "taken" --> B_80029e548
    B_80029ec18 -- "fallthrough" --> B_80029ec38
    B_80029ec38 --> B_80029e548
    B_80029ec5c --> B_80029ec68
    B_80029ec68 -- "taken" --> B_80029f194
    B_80029ec68 -- "fallthrough" --> B_80029ec74
    B_80029ec74 -. "loop back" .-> B_80029ec68
    B_80029ec74 -- "fallthrough" --> B_80029ec80
    B_80029ec80 -- "taken" --> B_80029e598
    B_80029ec80 -- "fallthrough" --> B_80029ec8c
    B_80029ec8c -. "loop back" .-> B_80029ec74
    B_80029ec90 --> EXIT_80029ec90["return"]
    B_80029ec98 --> B_80029e690
    B_80029ecac --> B_80029e7f8
    B_80029ecf0 --> B_80029e7f8
    B_80029ed34 --> B_80029e7f8
    B_80029ed78 --> B_80029e7f8
    B_80029edc4 --> B_80029e7f8
    B_80029ee08 --> B_80029e7f8
    B_80029ee4c --> B_80029e7f8
    B_80029ee98 --> B_80029e7f8
    B_80029eee4 --> B_80029e7f8
    B_80029ef34 -- "taken" --> B_80029e7f8
    B_80029ef34 -- "fallthrough" --> B_80029ef88
    B_80029ef88 -- "taken" --> B_80029e7f8
    B_80029ef88 -- "fallthrough" --> B_80029ef94
    B_80029ef94 --> B_80029e7f8
    B_80029efd8 --> B_80029e7f8
    B_80029f024 -- "taken" --> B_80029e7f8
    B_80029f024 -- "fallthrough" --> B_80029f06c
    B_80029f06c --> B_80029e7f8
    B_80029f080 --> B_80029e7f8
    B_80029f0c4 --> B_80029eab4
    B_80029f0cc --> B_80029e7f8
    B_80029f110 -- "taken" --> B_80029ea78
    B_80029f110 -- "fallthrough" --> B_80029f120
    B_80029f120 --> B_80029ea78
    B_80029f148 --> B_80029e934
    B_80029f150 -- "taken" --> B_80029eb30
    B_80029f150 -- "fallthrough" --> B_80029f170
    B_80029f170 --> B_80029eb30
    B_80029f194 -- "taken" --> B_80029f200
    B_80029f194 -- "fallthrough" --> B_80029f1b8
    B_80029f1b8 --> B_80029f200
    B_80029f200 -. "loop back" .-> B_80029ec68
    B_80029f200 -- "fallthrough" --> B_80029f20c
    B_80029f20c -- "taken" --> B_80029e598
    B_80029f20c -- "fallthrough" --> B_80029f218
    B_80029f218 -. "loop back" .-> B_80029f200
    B_80029f21c --> B_80029f220
    B_80029f220 -- "taken" --> B_80029e7f8
    B_80029f220 -- "fallthrough" --> B_80029f238
    B_80029f238 -- "taken" --> B_80029e7f8
    B_80029f238 -- "fallthrough" --> B_80029f250
    B_80029f250 -- "taken" --> B_80029f2c0
    B_80029f250 -- "fallthrough" --> B_80029f27c
    B_80029f27c -- "taken" --> B_80029f294
    B_80029f27c -- "fallthrough" --> B_80029f280
    B_80029f280 -- "taken" --> B_80029f298
    B_80029f280 -- "fallthrough" --> B_80029f288
    B_80029f288 --> B_80029e7a8
    B_80029f294 --> B_80029f298
    B_80029f298 --> B_80029f2c0
    B_80029f2c0 --> B_80029e95c
    B_80029f2d4 -- "taken" --> B_80029f338
    B_80029f2d4 -- "fallthrough" --> B_80029f2f8
    B_80029f2f8 --> B_80029f338
    B_80029f338 -. "loop back" .-> B_80029eac4
    B_80029f338 -- "fallthrough" --> B_80029f344
    B_80029f344 -- "taken" --> B_80029e4cc
    B_80029f344 -- "fallthrough" --> B_80029f34c
    B_80029f34c -. "loop back" .-> B_80029f338
    %% Path Highlighting
    style B_80029e418 fill:#e8f5e9,stroke:#2e7d32,stroke-width:3px,color:#1b5e20
    style B_80029e424 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80029e45c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80029e478 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80029e480 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80029e48c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80029e494 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80029e4c4 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80029e4cc fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80029e4d8 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80029e4ec fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80029e504 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80029e50c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80029e51c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80029e52c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80029e534 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80029e53c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80029e548 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80029e54c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80029e560 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80029e568 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80029e56c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80029e57c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80029e598 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80029e5b0 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80029e5b8 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80029e5c4 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80029e5fc fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80029e608 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80029e610 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80029e66c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80029e678 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80029e684 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80029e690 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80029e694 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80029e698 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80029e6bc fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80029e6c8 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80029e6e4 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80029e708 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80029e7a8 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80029e7b0 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80029e7c0 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80029e7f8 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80029e804 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80029e95c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80029ea0c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80029ea10 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80029ea20 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80029ea24 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80029ea30 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80029ea3c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80029ea54 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80029ea58 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80029ea6c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80029ea78 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80029ea7c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80029ea98 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80029eaa0 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80029eaa4 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80029eab4 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80029eac0 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80029eac4 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80029eae8 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80029eaf8 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80029eb08 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80029eb10 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80029eb20 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80029eb28 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80029eb30 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80029eb44 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80029eb48 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80029eb64 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80029eb78 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80029ec18 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80029ec38 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80029ec5c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80029ec68 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80029ec90 fill:#e1f5fe,stroke:#0288d1,stroke-width:2px,color:#01579b
    style B_80029ec98 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80029f110 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80029f120 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80029f150 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80029f170 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80029f194 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80029f1b8 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80029f200 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80029f20c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80029f220 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80029f238 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80029f250 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80029f27c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80029f280 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80029f288 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80029f298 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80029f2c0 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80029f2d4 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80029f2f8 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80029f338 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80029f344 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
```

## 3. External Callee Classification (28 total: 24 constant-zero, 0 pointer-alloc, 0 memory-copy, 4 branch-sensitive)

| External Symbol | Classification | Args Read | Longest-Path Return (`X0`) | Alt-Branch Return (`X0`) | Post-Call Analysis |
| :--- | :--- | ---: | :--- | :--- | :--- |
| `f_800079d20` | **BRANCH_SENSITIVE** | 4 | `0x1` | `0x0` | CBZ on return register x0 at 0x80029e474 |
| `f_8001a1590` | `CONSTANT_ZERO` | 3 | `0x0` | `0x1` | Return value X0 unread/overwritten -> constant 0 |
| `f_80029f350` | `CONSTANT_ZERO` | 2 | `0x0` | `0x1` | Return value X0 unread/overwritten -> constant 0 |
| `f_800315c14` | `CONSTANT_ZERO` | 2 | `0x0` | `0x1` | Return value X0 unread/overwritten -> constant 0 |
| `f_80029f86c` | `CONSTANT_ZERO` | 2 | `0x0` | `0x1` | Return value X0 unread/overwritten -> constant 0 |
| `f_8002a1318` | `CONSTANT_ZERO` | 2 | `0x0` | `0x1` | Return value X0 unread/overwritten -> constant 0 |
| `f_8002a58d8` | `CONSTANT_ZERO` | 3 | `0x0` | `0x1` | Return value X0 unread/overwritten -> constant 0 |
| `f_8002a7968` | `CONSTANT_ZERO` | 3 | `0x0` | `0x1` | Return value X0 unread/overwritten -> constant 0 |
| `f_802ba39a0` | **BRANCH_SENSITIVE** | 2 | `0x1` | `0x0` | CBZ on return register w8 at 0x80029f16c |
| `f_802ba39b0` | `CONSTANT_ZERO` | 2 | `0x0` | `0x1` | Return value X0 unread/overwritten -> constant 0 |
| `f_801d28ec0` | `CONSTANT_ZERO` | 3 | `0x0` | `0x1` | Return value X0 unread/overwritten -> constant 0 |
| `f_801d28f28` | `CONSTANT_ZERO` | 3 | `0x0` | `0x1` | Return value X0 unread/overwritten -> constant 0 |
| `f_801d28f90` | `CONSTANT_ZERO` | 3 | `0x0` | `0x1` | Return value X0 unread/overwritten -> constant 0 |
| `f_8002a77e8` | `CONSTANT_ZERO` | 2 | `0x0` | `0x1` | Return value X0 unread/overwritten -> constant 0 |
| `f_801d291c0` | `CONSTANT_ZERO` | 3 | `0x0` | `0x1` | Return value X0 unread/overwritten -> constant 0 |
| `f_801d29228` | `CONSTANT_ZERO` | 3 | `0x0` | `0x1` | Return value X0 unread/overwritten -> constant 0 |
| `f_801d29290` | `CONSTANT_ZERO` | 2 | `0x0` | `0x1` | Return value X0 unread/overwritten -> constant 0 |
| `f_801d29308` | `CONSTANT_ZERO` | 2 | `0x0` | `0x1` | Return value X0 unread/overwritten -> constant 0 |
| `f_802ba41d0` | `CONSTANT_ZERO` | 3 | `0x0` | `0x1` | Return value X0 unread/overwritten -> constant 0 |
| `f_801d29374` | `CONSTANT_ZERO` | 3 | `0x0` | `0x1` | Return value X0 unread/overwritten -> constant 0 |
| `f_801d2a318` | **BRANCH_SENSITIVE** | 4 | `0x0` | `0x80000000` | TBNZ bit #31 at 0x80029ef84 |
| `f_801d293c8` | `CONSTANT_ZERO` | 2 | `0x0` | `0x1` | Return value X0 unread/overwritten -> constant 0 |
| `f_801d2a554` | **BRANCH_SENSITIVE** | 4 | `0x0` | `0x80000000` | TBNZ bit #31 at 0x80029f068 |
| `f_801d2a5c8` | `CONSTANT_ZERO` | 3 | `0x0` | `0x1` | Return value X0 unread/overwritten -> constant 0 |
| `f_801d28d50` | `CONSTANT_ZERO` | 3 | `0x0` | `0x1` | Return value X0 unread/overwritten -> constant 0 |
| `f_801d290a0` | `CONSTANT_ZERO` | 3 | `0x0` | `0x1` | Return value X0 unread/overwritten -> constant 0 |
| `f_800193210` | `CONSTANT_ZERO` | 2 | `0x0` | `0x1` | Return value X0 unread/overwritten -> constant 0 |
| `f_8009c79d0` | `CONSTANT_ZERO` | 2 | `0x0` | `0x1` | Return value X0 unread/overwritten -> constant 0 |
