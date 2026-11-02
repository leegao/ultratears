# Automated Stub & Static CFG Longest-Path Analysis (`main_107_buddysplit`)

## 1. Function Static CFG & Path Length Summary

| Function | Entry PC | Static ARM64 Insns | Basic Blocks | Loop Back-Edges | Est. Common Path (ARM64 Insns) | Est. Longest Path (ARM64 Insns) |
| :--- | :--- | ---: | ---: | ---: | ---: | ---: |
| `f_8001a6094` | `0x8001a6094` | 735 | 196 | 9 | 26 | 292 |

## 2. Function Control Flow Graphs (CFGs)

### Function `f_8001a6094` (`0x8001a6094` – 735 insns, 196 blocks)

```mermaid
flowchart TD
    B_8001a6094["0x8001a6094..0x8001a609c\n(2 insns)"]
    B_8001a609c["0x8001a609c..0x8001a60e0\n(17 insns)"]
    B_8001a60e0["0x8001a60e0..0x8001a60e8\n(2 insns)"]
    B_8001a60e8["0x8001a60e8..0x8001a6100\n(6 insns)"]
    B_8001a6100["0x8001a6100..0x8001a610c\n(3 insns)"]
    B_8001a610c["0x8001a610c..0x8001a6110\n(1 insns)"]
    B_8001a6110["0x8001a6110..0x8001a6134\n(9 insns)"]
    B_8001a6134["0x8001a6134..0x8001a6140\n(3 insns)"]
    B_8001a6140["0x8001a6140..0x8001a615c\n(7 insns)"]
    B_8001a615c["0x8001a615c..0x8001a6168\n(3 insns)"]
    B_8001a6168["0x8001a6168..0x8001a616c\n(1 insns)"]
    B_8001a616c["0x8001a616c..0x8001a6170\n(1 insns)"]
    B_8001a6170["0x8001a6170..0x8001a6174\n(1 insns)"]
    B_8001a6174["0x8001a6174..0x8001a6178\n(1 insns)"]
    B_8001a6178["0x8001a6178..0x8001a6180\n(2 insns)"]
    B_8001a6180["0x8001a6180..0x8001a619c\n(7 insns)"]
    B_8001a619c["0x8001a619c..0x8001a61a0\n(1 insns)"]
    B_8001a61a0["0x8001a61a0..0x8001a61b0\n(4 insns)"]
    B_8001a61b0["0x8001a61b0..0x8001a61d4\n(9 insns)"]
    B_8001a61d4["0x8001a61d4..0x8001a61dc\n(2 insns)"]
    B_8001a61dc["0x8001a61dc..0x8001a61e0\n(1 insns)"]
    B_8001a61e0["0x8001a61e0..0x8001a61ec\n(3 insns)"]
    B_8001a61ec["0x8001a61ec..0x8001a6208\n(7 insns)"]
    B_8001a6208["0x8001a6208..0x8001a6214\n(3 insns)"]
    B_8001a6214["0x8001a6214..0x8001a621c\n(2 insns)"]
    B_8001a621c["0x8001a621c..0x8001a6220\n(1 insns)"]
    B_8001a6220["0x8001a6220..0x8001a6230\n(4 insns)"]
    B_8001a6230["0x8001a6230..0x8001a6254\n(9 insns)"]
    B_8001a6254["0x8001a6254..0x8001a625c\n(2 insns)"]
    B_8001a625c["0x8001a625c..0x8001a6268\n(3 insns)"]
    B_8001a6268["0x8001a6268..0x8001a6274\n(3 insns)"]
    B_8001a6274["0x8001a6274..0x8001a6298\n(9 insns)"]
    B_8001a6298["0x8001a6298..0x8001a62a0\n(2 insns)"]
    B_8001a62a0["0x8001a62a0..0x8001a62a8\n(2 insns)"]
    B_8001a62a8["0x8001a62a8..0x8001a62ac\n(1 insns)"]
    B_8001a62ac["0x8001a62ac..0x8001a62b8\n(3 insns, loop hdr)"]
    B_8001a62b8["0x8001a62b8..0x8001a62cc\n(5 insns)"]
    B_8001a62cc["0x8001a62cc..0x8001a62d0\n(1 insns)"]
    B_8001a62d0["0x8001a62d0..0x8001a62d4\n(1 insns)"]
    B_8001a62d4["0x8001a62d4..0x8001a62dc\n(2 insns)"]
    B_8001a62dc["0x8001a62dc..0x8001a62e4\n(2 insns)"]
    B_8001a62e4["0x8001a62e4..0x8001a62ec\n(2 insns)"]
    B_8001a62ec["0x8001a62ec..0x8001a62fc\n(4 insns)"]
    B_8001a62fc["0x8001a62fc..0x8001a6304\n(2 insns)"]
    B_8001a6304["0x8001a6304..0x8001a6330\n(11 insns)"]
    B_8001a6330["0x8001a6330..0x8001a6334\n(1 insns)"]
    B_8001a6334["0x8001a6334..0x8001a6338\n(1 insns)"]
    B_8001a6338["0x8001a6338..0x8001a6340\n(2 insns)"]
    B_8001a6340["0x8001a6340..0x8001a6348\n(2 insns)"]
    B_8001a6348["0x8001a6348..0x8001a6364\n(7 insns)"]
    B_8001a6364["0x8001a6364..0x8001a6368\n(1 insns)"]
    B_8001a6368["0x8001a6368..0x8001a637c\n(5 insns)"]
    B_8001a637c["0x8001a637c..0x8001a63a8\n(11 insns)"]
    B_8001a63a8["0x8001a63a8..0x8001a63ac\n(1 insns)"]
    B_8001a63ac["0x8001a63ac..0x8001a63b4\n(2 insns)"]
    B_8001a63b4["0x8001a63b4..0x8001a63bc\n(2 insns)"]
    B_8001a63bc["0x8001a63bc..0x8001a63e0\n(9 insns)"]
    B_8001a63e0["0x8001a63e0..0x8001a6414\n(13 insns)"]
    B_8001a6414["0x8001a6414..0x8001a6420\n(3 insns)"]
    B_8001a6420["0x8001a6420..0x8001a642c\n(3 insns, loop hdr)"]
    B_8001a642c["0x8001a642c..0x8001a6434\n(2 insns)"]
    B_8001a6434["0x8001a6434..0x8001a6448\n(5 insns)"]
    B_8001a6448["0x8001a6448..0x8001a645c\n(5 insns)"]
    B_8001a645c["0x8001a645c..0x8001a6464\n(2 insns)"]
    B_8001a6464["0x8001a6464..0x8001a6468\n(1 insns)"]
    B_8001a6468["0x8001a6468..0x8001a6478\n(4 insns)"]
    B_8001a6478["0x8001a6478..0x8001a647c\n(1 insns)"]
    B_8001a647c["0x8001a647c..0x8001a6484\n(2 insns)"]
    B_8001a6484["0x8001a6484..0x8001a64a4\n(8 insns)"]
    B_8001a64a4["0x8001a64a4..0x8001a64ac\n(2 insns)"]
    B_8001a64ac["0x8001a64ac..0x8001a64bc\n(4 insns)"]
    B_8001a64bc["0x8001a64bc..0x8001a64d4\n(6 insns)"]
    B_8001a64d4["0x8001a64d4..0x8001a64e8\n(5 insns)"]
    B_8001a64e8["0x8001a64e8..0x8001a64f0\n(2 insns)"]
    B_8001a64f0["0x8001a64f0..0x8001a64f8\n(2 insns)"]
    B_8001a64f8["0x8001a64f8..0x8001a6520\n(10 insns)"]
    B_8001a6520["0x8001a6520..0x8001a654c\n(11 insns)"]
    B_8001a654c["0x8001a654c..0x8001a6550\n(1 insns)"]
    B_8001a6550["0x8001a6550..0x8001a6558\n(2 insns)"]
    B_8001a6558["0x8001a6558..0x8001a6568\n(4 insns)"]
    B_8001a6568["0x8001a6568..0x8001a6578\n(4 insns)"]
    B_8001a6578["0x8001a6578..0x8001a6580\n(2 insns)"]
    B_8001a6580["0x8001a6580..0x8001a6584\n(1 insns)"]
    B_8001a6584["0x8001a6584..0x8001a6590\n(3 insns)"]
    B_8001a6590["0x8001a6590..0x8001a6594\n(1 insns)"]
    B_8001a6594["0x8001a6594..0x8001a659c\n(2 insns)"]
    B_8001a659c["0x8001a659c..0x8001a65c0\n(9 insns)"]
    B_8001a65c0["0x8001a65c0..0x8001a65d0\n(4 insns)"]
    B_8001a65d0["0x8001a65d0..0x8001a65e8\n(6 insns)"]
    B_8001a65e8["0x8001a65e8..0x8001a65ec\n(1 insns)"]
    B_8001a65ec["0x8001a65ec..0x8001a65f4\n(2 insns)"]
    B_8001a65f4["0x8001a65f4..0x8001a65f8\n(1 insns)"]
    B_8001a65f8["0x8001a65f8..0x8001a6604\n(3 insns)"]
    B_8001a6604["0x8001a6604..0x8001a6614\n(4 insns)"]
    B_8001a6614["0x8001a6614..0x8001a6618\n(1 insns)"]
    B_8001a6618["0x8001a6618..0x8001a6628\n(4 insns, loop hdr)"]
    B_8001a6628["0x8001a6628..0x8001a6644\n(7 insns)"]
    B_8001a6644["0x8001a6644..0x8001a6648\n(1 insns)"]
    B_8001a6648["0x8001a6648..0x8001a6670\n(10 insns)"]
    B_8001a6670["0x8001a6670..0x8001a66a8\n(14 insns)"]
    B_8001a66a8["0x8001a66a8..0x8001a66b8\n(4 insns)"]
    B_8001a66b8["0x8001a66b8..0x8001a66c8\n(4 insns)"]
    B_8001a66c8["0x8001a66c8..0x8001a66e0\n(6 insns)"]
    B_8001a66e0["0x8001a66e0..0x8001a66e8\n(2 insns)"]
    B_8001a66e8["0x8001a66e8..0x8001a66f0\n(2 insns)"]
    B_8001a66f0["0x8001a66f0..0x8001a66f8\n(2 insns)"]
    B_8001a66f8["0x8001a66f8..0x8001a6708\n(4 insns)"]
    B_8001a6708["0x8001a6708..0x8001a6728\n(8 insns)"]
    B_8001a6728["0x8001a6728..0x8001a6738\n(4 insns)"]
    B_8001a6738["0x8001a6738..0x8001a673c\n(1 insns)"]
    B_8001a673c["0x8001a673c..0x8001a6750\n(5 insns)"]
    B_8001a6750["0x8001a6750..0x8001a6784\n(13 insns)"]
    B_8001a6784["0x8001a6784..0x8001a679c\n(6 insns)"]
    B_8001a679c["0x8001a679c..0x8001a67a0\n(1 insns)"]
    B_8001a67a0["0x8001a67a0..0x8001a67ac\n(3 insns)"]
    B_8001a67ac["0x8001a67ac..0x8001a67b4\n(2 insns)"]
    B_8001a67b4["0x8001a67b4..0x8001a67c0\n(3 insns)"]
    B_8001a67c0["0x8001a67c0..0x8001a67c4\n(1 insns)"]
    B_8001a67c4["0x8001a67c4..0x8001a67d0\n(3 insns, loop hdr)"]
    B_8001a67d0["0x8001a67d0..0x8001a67d4\n(1 insns)"]
    B_8001a67d4["0x8001a67d4..0x8001a67e0\n(3 insns)"]
    B_8001a67e0["0x8001a67e0..0x8001a67e4\n(1 insns)"]
    B_8001a67e4["0x8001a67e4..0x8001a67f8\n(5 insns)"]
    B_8001a67f8["0x8001a67f8..0x8001a67fc\n(1 insns)"]
    B_8001a67fc["0x8001a67fc..0x8001a6800\n(1 insns)"]
    B_8001a6800["0x8001a6800..0x8001a6824\n(9 insns)"]
    B_8001a6824["0x8001a6824..0x8001a682c\n(2 insns)"]
    B_8001a682c["0x8001a682c..0x8001a6830\n(1 insns)"]
    B_8001a6830["0x8001a6830..0x8001a6838\n(2 insns)"]
    B_8001a6838["0x8001a6838..0x8001a6864\n(11 insns)"]
    B_8001a6864["0x8001a6864..0x8001a6874\n(4 insns)"]
    B_8001a6874["0x8001a6874..0x8001a6878\n(1 insns)"]
    B_8001a6878["0x8001a6878..0x8001a688c\n(5 insns)"]
    B_8001a688c["0x8001a688c..0x8001a68b8\n(11 insns)"]
    B_8001a68b8["0x8001a68b8..0x8001a68cc\n(5 insns)"]
    B_8001a68cc["0x8001a68cc..0x8001a68d0\n(1 insns)"]
    B_8001a68d0["0x8001a68d0..0x8001a68dc\n(3 insns)"]
    B_8001a68dc["0x8001a68dc..0x8001a68f4\n(6 insns)"]
    B_8001a68f4["0x8001a68f4..0x8001a68f8\n(1 insns)"]
    B_8001a68f8["0x8001a68f8..0x8001a6904\n(3 insns)"]
    B_8001a6904["0x8001a6904..0x8001a690c\n(2 insns)"]
    B_8001a690c["0x8001a690c..0x8001a6914\n(2 insns)"]
    B_8001a6914["0x8001a6914..0x8001a692c\n(6 insns)"]
    B_8001a692c["0x8001a692c..0x8001a6930\n(1 insns)"]
    B_8001a6930["0x8001a6930..0x8001a6940\n(4 insns)"]
    B_8001a6940["0x8001a6940..0x8001a6948\n(2 insns)"]
    B_8001a6948["0x8001a6948..0x8001a694c\n(1 insns)"]
    B_8001a694c["0x8001a694c..0x8001a6958\n(3 insns, loop hdr)"]
    B_8001a6958["0x8001a6958..0x8001a695c\n(1 insns)"]
    B_8001a695c["0x8001a695c..0x8001a6968\n(3 insns)"]
    B_8001a6968["0x8001a6968..0x8001a696c\n(1 insns)"]
    B_8001a696c["0x8001a696c..0x8001a6980\n(5 insns)"]
    B_8001a6980["0x8001a6980..0x8001a6984\n(1 insns)"]
    B_8001a6984["0x8001a6984..0x8001a6998\n(5 insns)"]
    B_8001a6998["0x8001a6998..0x8001a699c\n(1 insns)"]
    B_8001a699c["0x8001a699c..0x8001a69a0\n(1 insns)"]
    B_8001a69a0["0x8001a69a0..0x8001a69c8\n(10 insns, loop hdr)"]
    B_8001a69c8["0x8001a69c8..0x8001a69cc\n(1 insns)"]
    B_8001a69cc["0x8001a69cc..0x8001a69d4\n(2 insns)"]
    B_8001a69d4["0x8001a69d4..0x8001a69e4\n(4 insns)"]
    B_8001a69e4["0x8001a69e4..0x8001a69ec\n(2 insns)"]
    B_8001a69ec["0x8001a69ec..0x8001a6a0c\n(8 insns)"]
    B_8001a6a0c["0x8001a6a0c..0x8001a6a2c\n(8 insns)"]
    B_8001a6a2c["0x8001a6a2c..0x8001a6a30\n(1 insns)"]
    B_8001a6a30["0x8001a6a30..0x8001a6a38\n(2 insns)"]
    B_8001a6a38["0x8001a6a38..0x8001a6a3c\n(1 insns)"]
    B_8001a6a3c["0x8001a6a3c..0x8001a6a44\n(2 insns)"]
    B_8001a6a44["0x8001a6a44..0x8001a6a58\n(5 insns)"]
    B_8001a6a58["0x8001a6a58..0x8001a6a64\n(3 insns)"]
    B_8001a6a64["0x8001a6a64..0x8001a6a8c\n(10 insns)"]
    B_8001a6a8c["0x8001a6a8c..0x8001a6ab4\n(10 insns)"]
    B_8001a6ab4["0x8001a6ab4..0x8001a6abc\n(2 insns)"]
    B_8001a6abc["0x8001a6abc..0x8001a6ac0\n(1 insns)"]
    B_8001a6ac0["0x8001a6ac0..0x8001a6acc\n(3 insns, loop hdr)"]
    B_8001a6acc["0x8001a6acc..0x8001a6ae0\n(5 insns)"]
    B_8001a6ae0["0x8001a6ae0..0x8001a6ae4\n(1 insns)"]
    B_8001a6ae4["0x8001a6ae4..0x8001a6b08\n(9 insns)"]
    B_8001a6b08["0x8001a6b08..0x8001a6b10\n(2 insns)"]
    B_8001a6b10["0x8001a6b10..0x8001a6b20\n(4 insns)"]
    B_8001a6b20["0x8001a6b20..0x8001a6b28\n(2 insns)"]
    B_8001a6b28["0x8001a6b28..0x8001a6b30\n(2 insns)"]
    B_8001a6b30["0x8001a6b30..0x8001a6b38\n(2 insns)"]
    B_8001a6b38["0x8001a6b38..0x8001a6b3c\n(1 insns)"]
    B_8001a6b3c["0x8001a6b3c..0x8001a6b48\n(3 insns, loop hdr)"]
    B_8001a6b48["0x8001a6b48..0x8001a6b5c\n(5 insns)"]
    B_8001a6b5c["0x8001a6b5c..0x8001a6b60\n(1 insns)"]
    B_8001a6b60["0x8001a6b60..0x8001a6b84\n(9 insns)"]
    B_8001a6b84["0x8001a6b84..0x8001a6b8c\n(2 insns)"]
    B_8001a6b8c["0x8001a6b8c..0x8001a6b9c\n(4 insns)"]
    B_8001a6b9c["0x8001a6b9c..0x8001a6ba4\n(2 insns)"]
    B_8001a6ba4["0x8001a6ba4..0x8001a6ba8\n(1 insns)"]
    B_8001a6ba8["0x8001a6ba8..0x8001a6bb4\n(3 insns, loop hdr)"]
    B_8001a6bb4["0x8001a6bb4..0x8001a6be8\n(13 insns)"]
    B_8001a6be8["0x8001a6be8..0x8001a6bfc\n(5 insns)"]
    B_8001a6bfc["0x8001a6bfc..0x8001a6c04\n(2 insns)"]
    B_8001a6c04["0x8001a6c04..0x8001a6c10\n(3 insns)"]
    B_8001a6094 -- "taken" --> B_8001a619c
    B_8001a6094 -- "fallthrough" --> B_8001a609c
    B_8001a609c -- "taken" --> B_8001a6468
    B_8001a609c -- "fallthrough" --> B_8001a60e0
    B_8001a60e0 -- "taken" --> B_8001a6304
    B_8001a60e0 -- "fallthrough" --> B_8001a60e8
    B_8001a60e8 -- "taken" --> B_8001a61a0
    B_8001a60e8 -- "fallthrough" --> B_8001a6100
    B_8001a6100 -- "taken" --> B_8001a64ac
    B_8001a6100 -- "fallthrough" --> B_8001a610c
    B_8001a610c --> B_8001a6110
    B_8001a6110 -- "taken" --> B_8001a6478
    B_8001a6110 -- "fallthrough" --> B_8001a6134
    B_8001a6134 -- "taken" --> B_8001a64bc
    B_8001a6134 -- "fallthrough" --> B_8001a6140
    B_8001a6140 -- "taken" --> B_8001a6334
    B_8001a6140 -- "fallthrough" --> B_8001a615c
    B_8001a615c -- "taken" --> B_8001a6334
    B_8001a615c -- "fallthrough" --> B_8001a6168
    B_8001a6168 --> B_8001a616c
    B_8001a616c -- "taken" --> B_8001a6340
    B_8001a616c -- "fallthrough" --> B_8001a6170
    B_8001a6170 -- "taken" --> B_8001a68f8
    B_8001a6170 -- "fallthrough" --> B_8001a6174
    B_8001a6174 -- "taken" --> B_8001a6180
    B_8001a6174 -- "fallthrough" --> B_8001a6178
    B_8001a6178 --> B_8001a6180
    B_8001a6180 --> B_8001a619c
    B_8001a619c --> EXIT_8001a619c["return"]
    B_8001a61a0 -- "taken" --> B_8001a6220
    B_8001a61a0 -- "fallthrough" --> B_8001a61b0
    B_8001a61b0 -- "taken" --> B_8001a6590
    B_8001a61b0 -- "fallthrough" --> B_8001a61d4
    B_8001a61d4 -- "taken" --> B_8001a65c0
    B_8001a61d4 -- "fallthrough" --> B_8001a61dc
    B_8001a61dc --> B_8001a61e0
    B_8001a61e0 -- "taken" --> B_8001a6434
    B_8001a61e0 -- "fallthrough" --> B_8001a61ec
    B_8001a61ec -- "taken" --> B_8001a654c
    B_8001a61ec -- "fallthrough" --> B_8001a6208
    B_8001a6208 -- "taken" --> B_8001a654c
    B_8001a6208 -- "fallthrough" --> B_8001a6214
    B_8001a6214 -- "taken" --> B_8001a6174
    B_8001a6214 -- "fallthrough" --> B_8001a621c
    B_8001a621c --> B_8001a68f8
    B_8001a6220 -- "taken" --> B_8001a62ec
    B_8001a6220 -- "fallthrough" --> B_8001a6230
    B_8001a6230 -- "taken" --> B_8001a6590
    B_8001a6230 -- "fallthrough" --> B_8001a6254
    B_8001a6254 -- "taken" --> B_8001a62e4
    B_8001a6254 -- "fallthrough" --> B_8001a625c
    B_8001a625c --> B_8001a6268
    B_8001a6268 -- "taken" --> B_8001a65d0
    B_8001a6268 -- "fallthrough" --> B_8001a6274
    B_8001a6274 -- "taken" --> B_8001a65f8
    B_8001a6274 -- "fallthrough" --> B_8001a6298
    B_8001a6298 -- "taken" --> B_8001a62cc
    B_8001a6298 -- "fallthrough" --> B_8001a62a0
    B_8001a62a0 -- "taken" --> B_8001a67b4
    B_8001a62a0 -- "fallthrough" --> B_8001a62a8
    B_8001a62a8 --> B_8001a62ac
    B_8001a62ac -- "taken" --> B_8001a6800
    B_8001a62ac -- "fallthrough" --> B_8001a62b8
    B_8001a62b8 -. "loop back" .-> B_8001a62ac
    B_8001a62b8 -- "fallthrough" --> B_8001a62cc
    B_8001a62cc --> B_8001a62d0
    B_8001a62d0 -- "taken" --> B_8001a62dc
    B_8001a62d0 -- "fallthrough" --> B_8001a62d4
    B_8001a62d4 -- "taken" --> B_8001a6a8c
    B_8001a62d4 -- "fallthrough" --> B_8001a62dc
    B_8001a62dc --> B_8001a68f4
    B_8001a62e4 --> B_8001a6268
    B_8001a62ec --> B_8001a62fc
    B_8001a62fc --> B_8001a6174
    B_8001a6304 -- "taken" --> B_8001a60e8
    B_8001a6304 -- "fallthrough" --> B_8001a6330
    B_8001a6330 --> B_8001a6180
    B_8001a6334 -- "taken" --> B_8001a6340
    B_8001a6334 -- "fallthrough" --> B_8001a6338
    B_8001a6338 -- "taken" --> B_8001a6520
    B_8001a6338 -- "fallthrough" --> B_8001a6340
    B_8001a6340 -- "taken" --> B_8001a64a4
    B_8001a6340 -- "fallthrough" --> B_8001a6348
    B_8001a6348 -- "taken" --> B_8001a6368
    B_8001a6348 -- "fallthrough" --> B_8001a6364
    B_8001a6364 -- "taken" --> B_8001a637c
    B_8001a6364 -- "fallthrough" --> B_8001a6368
    B_8001a6368 --> B_8001a637c
    B_8001a637c -- "taken" --> B_8001a69e4
    B_8001a637c -- "fallthrough" --> B_8001a63a8
    B_8001a63a8 --> B_8001a63ac
    B_8001a63ac -- "taken" --> B_8001a6a30
    B_8001a63ac -- "fallthrough" --> B_8001a63b4
    B_8001a63b4 --> B_8001a63bc
    B_8001a63bc -- "taken" --> B_8001a6420
    B_8001a63bc -- "fallthrough" --> B_8001a63e0
    B_8001a63e0 -- "taken" --> B_8001a6170
    B_8001a63e0 -- "fallthrough" --> B_8001a6414
    B_8001a6414 --> B_8001a6170
    B_8001a6420 -. "loop back" .-> B_8001a6420
    B_8001a6420 -- "fallthrough" --> B_8001a642c
    B_8001a642c --> B_8001a63e0
    B_8001a6434 -- "taken" --> B_8001a6a38
    B_8001a6434 -- "fallthrough" --> B_8001a6448
    B_8001a6448 -- "taken" --> B_8001a6a38
    B_8001a6448 -- "fallthrough" --> B_8001a645c
    B_8001a645c -- "taken" --> B_8001a6174
    B_8001a645c -- "fallthrough" --> B_8001a6464
    B_8001a6464 --> B_8001a68f8
    B_8001a6468 --> B_8001a62fc
    B_8001a6478 -- "taken" --> B_8001a64a4
    B_8001a6478 -- "fallthrough" --> B_8001a647c
    B_8001a647c -- "taken" --> B_8001a64a4
    B_8001a647c -- "fallthrough" --> B_8001a6484
    B_8001a6484 --> B_8001a64a4
    B_8001a64a4 --> B_8001a6170
    B_8001a64ac --> B_8001a6110
    B_8001a64bc -- "taken" --> B_8001a64e8
    B_8001a64bc -- "fallthrough" --> B_8001a64d4
    B_8001a64d4 -- "taken" --> B_8001a6584
    B_8001a64d4 -- "fallthrough" --> B_8001a64e8
    B_8001a64e8 -- "taken" --> B_8001a6340
    B_8001a64e8 -- "fallthrough" --> B_8001a64f0
    B_8001a64f0 -- "taken" --> B_8001a6340
    B_8001a64f0 -- "fallthrough" --> B_8001a64f8
    B_8001a64f8 --> B_8001a6340
    B_8001a6520 --> B_8001a6340
    B_8001a654c -- "taken" --> B_8001a6578
    B_8001a654c -- "fallthrough" --> B_8001a6550
    B_8001a6550 -- "taken" --> B_8001a6578
    B_8001a6550 -- "fallthrough" --> B_8001a6558
    B_8001a6558 --> B_8001a6568
    B_8001a6568 --> B_8001a6578
    B_8001a6578 -- "taken" --> B_8001a6174
    B_8001a6578 -- "fallthrough" --> B_8001a6580
    B_8001a6580 --> B_8001a68f8
    B_8001a6584 --> B_8001a616c
    B_8001a6590 -- "taken" --> B_8001a6180
    B_8001a6590 -- "fallthrough" --> B_8001a6594
    B_8001a6594 -- "taken" --> B_8001a6180
    B_8001a6594 -- "fallthrough" --> B_8001a659c
    B_8001a659c --> B_8001a6180
    B_8001a65c0 --> B_8001a61e0
    B_8001a65d0 -- "taken" --> B_8001a6a58
    B_8001a65d0 -- "fallthrough" --> B_8001a65e8
    B_8001a65e8 --> B_8001a65ec
    B_8001a65ec -- "taken" --> B_8001a68dc
    B_8001a65ec -- "fallthrough" --> B_8001a65f4
    B_8001a65f4 --> B_8001a62d0
    B_8001a65f8 -- "taken" --> B_8001a62d0
    B_8001a65f8 -- "fallthrough" --> B_8001a6604
    B_8001a6604 -- "taken" --> B_8001a6ab4
    B_8001a6604 -- "fallthrough" --> B_8001a6614
    B_8001a6614 --> B_8001a6618
    B_8001a6618 -- "taken" --> B_8001a6648
    B_8001a6618 -- "fallthrough" --> B_8001a6628
    B_8001a6628 -. "loop back" .-> B_8001a6618
    B_8001a6628 -- "fallthrough" --> B_8001a6644
    B_8001a6644 --> B_8001a62d0
    B_8001a6648 -- "taken" --> B_8001a6628
    B_8001a6648 -- "fallthrough" --> B_8001a6670
    B_8001a6670 -- "taken" --> B_8001a6a64
    B_8001a6670 -- "fallthrough" --> B_8001a66a8
    B_8001a66a8 -- "taken" --> B_8001a66c8
    B_8001a66a8 -- "fallthrough" --> B_8001a66b8
    B_8001a66b8 --> B_8001a66c8
    B_8001a66c8 -- "taken" --> B_8001a66e8
    B_8001a66c8 -- "fallthrough" --> B_8001a66e0
    B_8001a66e0 --> B_8001a66e8
    B_8001a66e8 -- "taken" --> B_8001a66f8
    B_8001a66e8 -- "fallthrough" --> B_8001a66f0
    B_8001a66f0 --> B_8001a66f8
    B_8001a66f8 --> B_8001a6708
    B_8001a6708 -- "taken" --> B_8001a6b28
    B_8001a6708 -- "fallthrough" --> B_8001a6728
    B_8001a6728 -- "taken" --> B_8001a673c
    B_8001a6728 -- "fallthrough" --> B_8001a6738
    B_8001a6738 --> B_8001a673c
    B_8001a673c -- "taken" --> B_8001a69cc
    B_8001a673c -- "fallthrough" --> B_8001a6750
    B_8001a6750 -- "taken" --> B_8001a6984
    B_8001a6750 -- "fallthrough" --> B_8001a6784
    B_8001a6784 -- "taken" --> B_8001a67a0
    B_8001a6784 -- "fallthrough" --> B_8001a679c
    B_8001a679c --> B_8001a67a0
    B_8001a67a0 --> B_8001a67ac
    B_8001a67ac --> B_8001a68dc
    B_8001a67b4 -- "taken" --> B_8001a6940
    B_8001a67b4 -- "fallthrough" --> B_8001a67c0
    B_8001a67c0 --> B_8001a67c4
    B_8001a67c4 -- "taken" --> B_8001a67e4
    B_8001a67c4 -- "fallthrough" --> B_8001a67d0
    B_8001a67d0 -- "taken" --> B_8001a67e0
    B_8001a67d0 -- "fallthrough" --> B_8001a67d4
    B_8001a67d4 -- "taken" --> B_8001a67e4
    B_8001a67d4 -- "fallthrough" --> B_8001a67e0
    B_8001a67e0 --> B_8001a67e4
    B_8001a67e4 -. "loop back" .-> B_8001a67c4
    B_8001a67e4 -- "fallthrough" --> B_8001a67f8
    B_8001a67f8 -- "taken" --> B_8001a62d0
    B_8001a67f8 -- "fallthrough" --> B_8001a67fc
    B_8001a67fc --> B_8001a6800
    B_8001a6800 -- "taken" --> B_8001a682c
    B_8001a6800 -- "fallthrough" --> B_8001a6824
    B_8001a6824 --> B_8001a682c
    B_8001a682c -- "taken" --> B_8001a6838
    B_8001a682c -- "fallthrough" --> B_8001a6830
    B_8001a6830 --> B_8001a6838
    B_8001a6838 -- "taken" --> B_8001a6930
    B_8001a6838 -- "fallthrough" --> B_8001a6864
    B_8001a6864 -- "taken" --> B_8001a6878
    B_8001a6864 -- "fallthrough" --> B_8001a6874
    B_8001a6874 --> B_8001a6878
    B_8001a6878 -- "taken" --> B_8001a6904
    B_8001a6878 -- "fallthrough" --> B_8001a688c
    B_8001a688c -- "taken" --> B_8001a6914
    B_8001a688c -- "fallthrough" --> B_8001a68b8
    B_8001a68b8 -- "taken" --> B_8001a68d0
    B_8001a68b8 -- "fallthrough" --> B_8001a68cc
    B_8001a68cc --> B_8001a68d0
    B_8001a68d0 --> B_8001a68dc
    B_8001a68dc --> B_8001a68f4
    B_8001a68f4 -- "taken" --> B_8001a6174
    B_8001a68f4 -- "fallthrough" --> B_8001a68f8
    B_8001a68f8 --> B_8001a6174
    B_8001a6904 -- "taken" --> B_8001a68dc
    B_8001a6904 -- "fallthrough" --> B_8001a690c
    B_8001a690c --> B_8001a68dc
    B_8001a6914 -- "taken" --> B_8001a68cc
    B_8001a6914 -- "fallthrough" --> B_8001a692c
    B_8001a692c --> B_8001a68d0
    B_8001a6930 --> B_8001a6878
    B_8001a6940 -- "taken" --> B_8001a699c
    B_8001a6940 -- "fallthrough" --> B_8001a6948
    B_8001a6948 --> B_8001a694c
    B_8001a694c -- "taken" --> B_8001a696c
    B_8001a694c -- "fallthrough" --> B_8001a6958
    B_8001a6958 -- "taken" --> B_8001a6968
    B_8001a6958 -- "fallthrough" --> B_8001a695c
    B_8001a695c -- "taken" --> B_8001a696c
    B_8001a695c -- "fallthrough" --> B_8001a6968
    B_8001a6968 --> B_8001a696c
    B_8001a696c -. "loop back" .-> B_8001a694c
    B_8001a696c -- "fallthrough" --> B_8001a6980
    B_8001a6980 --> B_8001a67f8
    B_8001a6984 -- "taken" --> B_8001a679c
    B_8001a6984 -- "fallthrough" --> B_8001a6998
    B_8001a6998 --> B_8001a67a0
    B_8001a699c --> B_8001a69a0
    B_8001a69a0 -. "loop back" .-> B_8001a69a0
    B_8001a69a0 -- "fallthrough" --> B_8001a69c8
    B_8001a69c8 --> B_8001a67f8
    B_8001a69cc -- "taken" --> B_8001a67ac
    B_8001a69cc -- "fallthrough" --> B_8001a69d4
    B_8001a69d4 --> B_8001a68dc
    B_8001a69e4 -- "taken" --> B_8001a64a4
    B_8001a69e4 -- "fallthrough" --> B_8001a69ec
    B_8001a69ec -- "taken" --> B_8001a64a4
    B_8001a69ec -- "fallthrough" --> B_8001a6a0c
    B_8001a6a0c -- "taken" --> B_8001a6170
    B_8001a6a0c -- "fallthrough" --> B_8001a6a2c
    B_8001a6a2c --> B_8001a63ac
    B_8001a6a30 --> B_8001a63bc
    B_8001a6a38 -- "taken" --> B_8001a6578
    B_8001a6a38 -- "fallthrough" --> B_8001a6a3c
    B_8001a6a3c -- "taken" --> B_8001a6578
    B_8001a6a3c -- "fallthrough" --> B_8001a6a44
    B_8001a6a44 --> B_8001a6568
    B_8001a6a58 --> B_8001a65ec
    B_8001a6a64 --> B_8001a6708
    B_8001a6a8c --> B_8001a62dc
    B_8001a6ab4 -- "taken" --> B_8001a6b30
    B_8001a6ab4 -- "fallthrough" --> B_8001a6abc
    B_8001a6abc --> B_8001a6ac0
    B_8001a6ac0 -- "taken" --> B_8001a6ae4
    B_8001a6ac0 -- "fallthrough" --> B_8001a6acc
    B_8001a6acc -. "loop back" .-> B_8001a6ac0
    B_8001a6acc -- "fallthrough" --> B_8001a6ae0
    B_8001a6ae0 --> B_8001a6bfc
    B_8001a6ae4 -- "taken" --> B_8001a6acc
    B_8001a6ae4 -- "fallthrough" --> B_8001a6b08
    B_8001a6b08 -- "taken" --> B_8001a6b20
    B_8001a6b08 -- "fallthrough" --> B_8001a6b10
    B_8001a6b10 -- "taken" --> B_8001a6acc
    B_8001a6b10 -- "fallthrough" --> B_8001a6b20
    B_8001a6b20 --> B_8001a6acc
    B_8001a6b28 --> B_8001a673c
    B_8001a6b30 -- "taken" --> B_8001a6ba4
    B_8001a6b30 -- "fallthrough" --> B_8001a6b38
    B_8001a6b38 --> B_8001a6b3c
    B_8001a6b3c -- "taken" --> B_8001a6b60
    B_8001a6b3c -- "fallthrough" --> B_8001a6b48
    B_8001a6b48 -. "loop back" .-> B_8001a6b3c
    B_8001a6b48 -- "fallthrough" --> B_8001a6b5c
    B_8001a6b5c --> B_8001a6bfc
    B_8001a6b60 -- "taken" --> B_8001a6b48
    B_8001a6b60 -- "fallthrough" --> B_8001a6b84
    B_8001a6b84 -- "taken" --> B_8001a6b9c
    B_8001a6b84 -- "fallthrough" --> B_8001a6b8c
    B_8001a6b8c -- "taken" --> B_8001a6b48
    B_8001a6b8c -- "fallthrough" --> B_8001a6b9c
    B_8001a6b9c --> B_8001a6b48
    B_8001a6ba4 --> B_8001a6ba8
    B_8001a6ba8 -- "taken" --> B_8001a6be8
    B_8001a6ba8 -- "fallthrough" --> B_8001a6bb4
    B_8001a6bb4 --> B_8001a6be8
    B_8001a6be8 -. "loop back" .-> B_8001a6ba8
    B_8001a6be8 -- "fallthrough" --> B_8001a6bfc
    B_8001a6bfc -- "taken" --> B_8001a62d0
    B_8001a6bfc -- "fallthrough" --> B_8001a6c04
    B_8001a6c04 --> B_8001a6670
    %% Path Highlighting
    style B_8001a6094 fill:#e8f5e9,stroke:#2e7d32,stroke-width:3px,color:#1b5e20
    style B_8001a609c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001a60e0 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001a60e8 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001a6174 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001a6178 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001a6180 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001a619c fill:#e8f5e9,stroke:#2e7d32,stroke-width:3px,color:#1b5e20
    style B_8001a61a0 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001a6220 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001a6230 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001a6254 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001a625c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001a6268 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001a6274 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001a6304 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001a65f8 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001a6604 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001a6670 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001a66a8 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001a66b8 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001a66c8 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001a66e0 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001a66e8 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001a66f0 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001a66f8 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001a6708 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001a6728 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001a6738 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001a673c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001a6750 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001a6784 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001a679c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001a67a0 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001a67ac fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001a68dc fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001a68f4 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001a68f8 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001a6ab4 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001a6b30 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001a6b38 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001a6b3c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001a6b48 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001a6b5c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001a6b60 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001a6b84 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001a6b8c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001a6b9c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001a6bfc fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001a6c04 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
```

## 3. External Callee Classification (8 total: 7 constant-zero, 0 pointer-alloc, 0 memory-copy, 1 branch-sensitive)

| External Symbol | Classification | Args Read | Longest-Path Return (`X0`) | Alt-Branch Return (`X0`) | Post-Call Analysis |
| :--- | :--- | ---: | :--- | :--- | :--- |
| `f_802ba4060` | `CONSTANT_ZERO` | 2 | `0x0` | `0x1` | Return value X0 unread/overwritten -> constant 0 |
| `f_802ba3ac0` | `CONSTANT_ZERO` | 2 | `0x0` | `0x1` | Return value X0 unread/overwritten -> constant 0 |
| `f_80007a838` | `CONSTANT_ZERO` | 3 | `0x0` | `0x1` | Return value X0 unread/overwritten -> constant 0 |
| `f_802ba4070` | `CONSTANT_ZERO` | 2 | `0x0` | `0x1` | Return value X0 unread/overwritten -> constant 0 |
| `f_800099ce0` | `CONSTANT_ZERO` | 2 | `0x0` | `0x1` | Return value X0 unread/overwritten -> constant 0 |
| `f_80017c9c8` | **BRANCH_SENSITIVE** | 2 | `0x0` | `0x1` | CBNZ on return register x0 at 0x8001a65f0 |
| `f_8027a9c88` | `CONSTANT_ZERO` | 2 | `0x0` | `0x1` | Return value X0 unread/overwritten -> constant 0 |
| `f_80017cbe0` | `CONSTANT_ZERO` | 3 | `0x0` | `0x1` | Return value X0 unread/overwritten -> constant 0 |
