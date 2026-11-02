# Automated Stub & Static CFG Longest-Path Analysis (`main_121_ringbuf`)

## 1. Function Static CFG & Path Length Summary

| Function | Entry PC | Static ARM64 Insns | Basic Blocks | Loop Back-Edges | Est. Common Path (ARM64 Insns) | Est. Longest Path (ARM64 Insns) |
| :--- | :--- | ---: | ---: | ---: | ---: | ---: |
| `f_8001da280` | `0x8001da280` | 842 | 146 | 5 | 139 | 793 |

## 2. Function Control Flow Graphs (CFGs)

### Function `f_8001da280` (`0x8001da280` – 842 insns, 146 blocks)

```mermaid
flowchart TD
    B_8001da280["0x8001da280..0x8001da2cc\n(19 insns)"]
    B_8001da2cc["0x8001da2cc..0x8001da2e8\n(7 insns)"]
    B_8001da2e8["0x8001da2e8..0x8001da2f8\n(4 insns)"]
    B_8001da2f8["0x8001da2f8..0x8001da324\n(11 insns)"]
    B_8001da324["0x8001da324..0x8001da338\n(5 insns, loop hdr)"]
    B_8001da338["0x8001da338..0x8001da340\n(2 insns)"]
    B_8001da340["0x8001da340..0x8001da358\n(6 insns, loop hdr)"]
    B_8001da358["0x8001da358..0x8001da35c\n(1 insns)"]
    B_8001da35c["0x8001da35c..0x8001da364\n(2 insns)"]
    B_8001da364["0x8001da364..0x8001da374\n(4 insns)"]
    B_8001da374["0x8001da374..0x8001da378\n(1 insns)"]
    B_8001da378["0x8001da378..0x8001da388\n(4 insns)"]
    B_8001da388["0x8001da388..0x8001da38c\n(1 insns)"]
    B_8001da38c["0x8001da38c..0x8001da39c\n(4 insns)"]
    B_8001da39c["0x8001da39c..0x8001da3a0\n(1 insns)"]
    B_8001da3a0["0x8001da3a0..0x8001da3a8\n(2 insns)"]
    B_8001da3a8["0x8001da3a8..0x8001da3b0\n(2 insns)"]
    B_8001da3b0["0x8001da3b0..0x8001da3bc\n(3 insns)"]
    B_8001da3bc["0x8001da3bc..0x8001da3c0\n(1 insns)"]
    B_8001da3c0["0x8001da3c0..0x8001da3c4\n(1 insns)"]
    B_8001da3c4["0x8001da3c4..0x8001da3d4\n(4 insns)"]
    B_8001da3d4["0x8001da3d4..0x8001da3e8\n(5 insns)"]
    B_8001da3e8["0x8001da3e8..0x8001da404\n(7 insns)"]
    B_8001da404["0x8001da404..0x8001da410\n(3 insns)"]
    B_8001da410["0x8001da410..0x8001da414\n(1 insns)"]
    B_8001da414["0x8001da414..0x8001da420\n(3 insns)"]
    B_8001da420["0x8001da420..0x8001da430\n(4 insns)"]
    B_8001da430["0x8001da430..0x8001da438\n(2 insns)"]
    B_8001da438["0x8001da438..0x8001da44c\n(5 insns)"]
    B_8001da44c["0x8001da44c..0x8001da450\n(1 insns)"]
    B_8001da450["0x8001da450..0x8001da460\n(4 insns)"]
    B_8001da460["0x8001da460..0x8001da470\n(4 insns)"]
    B_8001da470["0x8001da470..0x8001da480\n(4 insns)"]
    B_8001da480["0x8001da480..0x8001da4a4\n(9 insns)"]
    B_8001da4a4["0x8001da4a4..0x8001da4a8\n(1 insns)"]
    B_8001da4a8["0x8001da4a8..0x8001da4b8\n(4 insns)"]
    B_8001da4b8["0x8001da4b8..0x8001da4bc\n(1 insns)"]
    B_8001da4bc["0x8001da4bc..0x8001da4c4\n(2 insns)"]
    B_8001da4c4["0x8001da4c4..0x8001da4dc\n(6 insns)"]
    B_8001da4dc["0x8001da4dc..0x8001da4e0\n(1 insns)"]
    B_8001da4e0["0x8001da4e0..0x8001da4f4\n(5 insns)"]
    B_8001da4f4["0x8001da4f4..0x8001da518\n(9 insns)"]
    B_8001da518["0x8001da518..0x8001da528\n(4 insns)"]
    B_8001da528["0x8001da528..0x8001da530\n(2 insns)"]
    B_8001da530["0x8001da530..0x8001da540\n(4 insns)"]
    B_8001da540["0x8001da540..0x8001da548\n(2 insns)"]
    B_8001da548["0x8001da548..0x8001da594\n(19 insns)"]
    B_8001da594["0x8001da594..0x8001da5a4\n(4 insns)"]
    B_8001da5a4["0x8001da5a4..0x8001da5a8\n(1 insns)"]
    B_8001da5a8["0x8001da5a8..0x8001da5f4\n(19 insns)"]
    B_8001da5f4["0x8001da5f4..0x8001da604\n(4 insns)"]
    B_8001da604["0x8001da604..0x8001da608\n(1 insns)"]
    B_8001da608["0x8001da608..0x8001da654\n(19 insns)"]
    B_8001da654["0x8001da654..0x8001da664\n(4 insns)"]
    B_8001da664["0x8001da664..0x8001da668\n(1 insns)"]
    B_8001da668["0x8001da668..0x8001da6b4\n(19 insns)"]
    B_8001da6b4["0x8001da6b4..0x8001da6c4\n(4 insns)"]
    B_8001da6c4["0x8001da6c4..0x8001da6c8\n(1 insns)"]
    B_8001da6c8["0x8001da6c8..0x8001da708\n(16 insns)"]
    B_8001da708["0x8001da708..0x8001da720\n(6 insns)"]
    B_8001da720["0x8001da720..0x8001da724\n(1 insns)"]
    B_8001da724["0x8001da724..0x8001da748\n(9 insns)"]
    B_8001da748["0x8001da748..0x8001da750\n(2 insns)"]
    B_8001da750["0x8001da750..0x8001da758\n(2 insns)"]
    B_8001da758["0x8001da758..0x8001da760\n(2 insns)"]
    B_8001da760["0x8001da760..0x8001da764\n(1 insns)"]
    B_8001da764["0x8001da764..0x8001da780\n(7 insns)"]
    B_8001da780["0x8001da780..0x8001da788\n(2 insns)"]
    B_8001da788["0x8001da788..0x8001da7b4\n(11 insns)"]
    B_8001da7b4["0x8001da7b4..0x8001da7c8\n(5 insns)"]
    B_8001da7c8["0x8001da7c8..0x8001da7f0\n(10 insns)"]
    B_8001da7f0["0x8001da7f0..0x8001da80c\n(7 insns)"]
    B_8001da80c["0x8001da80c..0x8001da81c\n(4 insns)"]
    B_8001da81c["0x8001da81c..0x8001da828\n(3 insns)"]
    B_8001da828["0x8001da828..0x8001da830\n(2 insns)"]
    B_8001da830["0x8001da830..0x8001da840\n(4 insns)"]
    B_8001da840["0x8001da840..0x8001da844\n(1 insns)"]
    B_8001da844["0x8001da844..0x8001da85c\n(6 insns)"]
    B_8001da85c["0x8001da85c..0x8001da870\n(5 insns)"]
    B_8001da870["0x8001da870..0x8001da878\n(2 insns, loop hdr)"]
    B_8001da878["0x8001da878..0x8001da890\n(6 insns)"]
    B_8001da890["0x8001da890..0x8001da898\n(2 insns)"]
    B_8001da898["0x8001da898..0x8001da8a4\n(3 insns)"]
    B_8001da8a4["0x8001da8a4..0x8001da8ac\n(2 insns)"]
    B_8001da8ac["0x8001da8ac..0x8001da8b4\n(2 insns)"]
    B_8001da8b4["0x8001da8b4..0x8001da8b8\n(1 insns)"]
    B_8001da8b8["0x8001da8b8..0x8001da8c4\n(3 insns)"]
    B_8001da8c4["0x8001da8c4..0x8001da8d4\n(4 insns)"]
    B_8001da8d4["0x8001da8d4..0x8001da8e0\n(3 insns)"]
    B_8001da8e0["0x8001da8e0..0x8001da8ec\n(3 insns)"]
    B_8001da8ec["0x8001da8ec..0x8001da90c\n(8 insns)"]
    B_8001da90c["0x8001da90c..0x8001da928\n(7 insns)"]
    B_8001da928["0x8001da928..0x8001da944\n(7 insns, switch)"]
    B_8001da944["0x8001da944..0x8001da950\n(3 insns)"]
    B_8001da950["0x8001da950..0x8001da960\n(4 insns)"]
    B_8001da960["0x8001da960..0x8001da968\n(2 insns)"]
    B_8001da968["0x8001da968..0x8001da994\n(11 insns)"]
    B_8001da994["0x8001da994..0x8001da9b4\n(8 insns)"]
    B_8001da9b4["0x8001da9b4..0x8001da9d4\n(8 insns)"]
    B_8001da9d4["0x8001da9d4..0x8001da9e8\n(5 insns)"]
    B_8001da9e8["0x8001da9e8..0x8001daa14\n(11 insns)"]
    B_8001daa14["0x8001daa14..0x8001daa4c\n(14 insns)"]
    B_8001daa4c["0x8001daa4c..0x8001daa78\n(11 insns)"]
    B_8001daa78["0x8001daa78..0x8001daab0\n(14 insns)"]
    B_8001daab0["0x8001daab0..0x8001daad0\n(8 insns)"]
    B_8001daad0["0x8001daad0..0x8001dab34\n(25 insns)"]
    B_8001dab34["0x8001dab34..0x8001dab44\n(4 insns)"]
    B_8001dab44["0x8001dab44..0x8001dab94\n(20 insns)"]
    B_8001dab94["0x8001dab94..0x8001dabf0\n(23 insns)"]
    B_8001dabf0["0x8001dabf0..0x8001dabfc\n(3 insns)"]
    B_8001dabfc["0x8001dabfc..0x8001dac10\n(5 insns)"]
    B_8001dac10["0x8001dac10..0x8001dac24\n(5 insns)"]
    B_8001dac24["0x8001dac24..0x8001dac2c\n(2 insns)"]
    B_8001dac2c["0x8001dac2c..0x8001dac38\n(3 insns)"]
    B_8001dac38["0x8001dac38..0x8001dac5c\n(9 insns)"]
    B_8001dac5c["0x8001dac5c..0x8001dac64\n(2 insns)"]
    B_8001dac64["0x8001dac64..0x8001dac9c\n(14 insns)"]
    B_8001dac9c["0x8001dac9c..0x8001daca8\n(3 insns)"]
    B_8001daca8["0x8001daca8..0x8001dad10\n(26 insns)"]
    B_8001dad10["0x8001dad10..0x8001dad3c\n(11 insns)"]
    B_8001dad3c["0x8001dad3c..0x8001dad74\n(14 insns)"]
    B_8001dad74["0x8001dad74..0x8001dada0\n(11 insns)"]
    B_8001dada0["0x8001dada0..0x8001dadd8\n(14 insns)"]
    B_8001dadd8["0x8001dadd8..0x8001dae04\n(11 insns)"]
    B_8001dae04["0x8001dae04..0x8001dae3c\n(14 insns)"]
    B_8001dae3c["0x8001dae3c..0x8001dae48\n(3 insns)"]
    B_8001dae48["0x8001dae48..0x8001dae64\n(7 insns)"]
    B_8001dae64["0x8001dae64..0x8001dae78\n(5 insns)"]
    B_8001dae78["0x8001dae78..0x8001dae88\n(4 insns, loop hdr)"]
    B_8001dae88["0x8001dae88..0x8001dae90\n(2 insns)"]
    B_8001dae90["0x8001dae90..0x8001dae9c\n(3 insns)"]
    B_8001dae9c["0x8001dae9c..0x8001daea4\n(2 insns)"]
    B_8001daea4["0x8001daea4..0x8001daeb4\n(4 insns, loop hdr)"]
    B_8001daeb4["0x8001daeb4..0x8001daeb8\n(1 insns)"]
    B_8001daeb8["0x8001daeb8..0x8001daec0\n(2 insns)"]
    B_8001daec0["0x8001daec0..0x8001daecc\n(3 insns)"]
    B_8001daecc["0x8001daecc..0x8001daed0\n(1 insns)"]
    B_8001daed0["0x8001daed0..0x8001daed4\n(1 insns)"]
    B_8001daed4["0x8001daed4..0x8001daee0\n(3 insns)"]
    B_8001daee0["0x8001daee0..0x8001daee8\n(2 insns)"]
    B_8001daee8["0x8001daee8..0x8001daef0\n(2 insns)"]
    B_8001daef0["0x8001daef0..0x8001daf10\n(8 insns)"]
    B_8001daf10["0x8001daf10..0x8001daf64\n(21 insns)"]
    B_8001daf64["0x8001daf64..0x8001daf84\n(8 insns)"]
    B_8001daf84["0x8001daf84..0x8001daf94\n(4 insns)"]
    B_8001daf94["0x8001daf94..0x8001dafa8\n(5 insns)"]
    B_8001da280 -- "taken" --> B_8001daab0
    B_8001da280 -- "fallthrough" --> B_8001da2cc
    B_8001da2cc --> B_8001da2e8
    B_8001da2e8 -- "taken" --> B_8001da3bc
    B_8001da2e8 -- "fallthrough" --> B_8001da2f8
    B_8001da2f8 --> B_8001da324
    B_8001da324 -- "taken" --> B_8001da3e8
    B_8001da324 -- "fallthrough" --> B_8001da338
    B_8001da338 --> B_8001da340
    B_8001da340 -- "taken" --> B_8001da3b0
    B_8001da340 -- "fallthrough" --> B_8001da358
    B_8001da358 -- "taken" --> B_8001da3e8
    B_8001da358 -- "fallthrough" --> B_8001da35c
    B_8001da35c -- "taken" --> B_8001da3b0
    B_8001da35c -- "fallthrough" --> B_8001da364
    B_8001da364 -- "taken" --> B_8001da3b0
    B_8001da364 -- "fallthrough" --> B_8001da374
    B_8001da374 -- "taken" --> B_8001da3e8
    B_8001da374 -- "fallthrough" --> B_8001da378
    B_8001da378 -- "taken" --> B_8001da3b0
    B_8001da378 -- "fallthrough" --> B_8001da388
    B_8001da388 -- "taken" --> B_8001da3e8
    B_8001da388 -- "fallthrough" --> B_8001da38c
    B_8001da38c -- "taken" --> B_8001da3b0
    B_8001da38c -- "fallthrough" --> B_8001da39c
    B_8001da39c -- "taken" --> B_8001da3e8
    B_8001da39c -- "fallthrough" --> B_8001da3a0
    B_8001da3a0 -. "loop back" .-> B_8001da340
    B_8001da3a8 --> B_8001da3b0
    B_8001da3b0 -. "loop back" .-> B_8001da324
    B_8001da3b0 -- "fallthrough" --> B_8001da3bc
    B_8001da3bc -- "taken" --> B_8001daf10
    B_8001da3bc -- "fallthrough" --> B_8001da3c0
    B_8001da3c0 --> B_8001da3c4
    B_8001da3c4 -- "taken" --> B_8001daf64
    B_8001da3c4 -- "fallthrough" --> B_8001da3d4
    B_8001da3d4 --> B_8001da724
    B_8001da3e8 -- "taken" --> B_8001da414
    B_8001da3e8 -- "fallthrough" --> B_8001da404
    B_8001da404 -- "taken" --> B_8001da518
    B_8001da404 -- "fallthrough" --> B_8001da410
    B_8001da410 --> B_8001da414
    B_8001da414 -- "taken" --> B_8001da708
    B_8001da414 -- "fallthrough" --> B_8001da420
    B_8001da420 -- "taken" --> B_8001da8e0
    B_8001da420 -- "fallthrough" --> B_8001da430
    B_8001da430 --> B_8001da438
    B_8001da438 -- "taken" --> B_8001da994
    B_8001da438 -- "fallthrough" --> B_8001da44c
    B_8001da44c -- "taken" --> B_8001daad0
    B_8001da44c -- "fallthrough" --> B_8001da450
    B_8001da450 -- "taken" --> B_8001dab44
    B_8001da450 -- "fallthrough" --> B_8001da460
    B_8001da460 -- "taken" --> B_8001dab94
    B_8001da460 -- "fallthrough" --> B_8001da470
    B_8001da470 -- "taken" --> B_8001dabfc
    B_8001da470 -- "fallthrough" --> B_8001da480
    B_8001da480 --> B_8001da4a4
    B_8001da4a4 -- "taken" --> B_8001da8ec
    B_8001da4a4 -- "fallthrough" --> B_8001da4a8
    B_8001da4a8 --> B_8001da4b8
    B_8001da4b8 --> B_8001da4bc
    B_8001da4bc -- "taken" --> B_8001da4e0
    B_8001da4bc -- "fallthrough" --> B_8001da4c4
    B_8001da4c4 -- "taken" --> B_8001da950
    B_8001da4c4 -- "fallthrough" --> B_8001da4dc
    B_8001da4dc --> B_8001da4e0
    B_8001da4e0 -- "taken" --> B_8001da758
    B_8001da4e0 -- "fallthrough" --> B_8001da4f4
    B_8001da4f4 --> EXIT_8001da4f4["return"]
    B_8001da518 -- "taken" --> B_8001daca8
    B_8001da518 -- "fallthrough" --> B_8001da528
    B_8001da528 --> B_8001da530
    B_8001da530 -- "taken" --> B_8001dad10
    B_8001da530 -- "fallthrough" --> B_8001da540
    B_8001da540 -- "taken" --> B_8001da594
    B_8001da540 -- "fallthrough" --> B_8001da548
    B_8001da548 -- "taken" --> B_8001da708
    B_8001da548 -- "fallthrough" --> B_8001da594
    B_8001da594 -- "taken" --> B_8001da9e8
    B_8001da594 -- "fallthrough" --> B_8001da5a4
    B_8001da5a4 -- "taken" --> B_8001da5f4
    B_8001da5a4 -- "fallthrough" --> B_8001da5a8
    B_8001da5a8 -- "taken" --> B_8001da708
    B_8001da5a8 -- "fallthrough" --> B_8001da5f4
    B_8001da5f4 -- "taken" --> B_8001daa4c
    B_8001da5f4 -- "fallthrough" --> B_8001da604
    B_8001da604 -- "taken" --> B_8001da654
    B_8001da604 -- "fallthrough" --> B_8001da608
    B_8001da608 -- "taken" --> B_8001da708
    B_8001da608 -- "fallthrough" --> B_8001da654
    B_8001da654 -- "taken" --> B_8001dad74
    B_8001da654 -- "fallthrough" --> B_8001da664
    B_8001da664 -- "taken" --> B_8001da6b4
    B_8001da664 -- "fallthrough" --> B_8001da668
    B_8001da668 -- "taken" --> B_8001da708
    B_8001da668 -- "fallthrough" --> B_8001da6b4
    B_8001da6b4 -- "taken" --> B_8001dadd8
    B_8001da6b4 -- "fallthrough" --> B_8001da6c4
    B_8001da6c4 -- "taken" --> B_8001da410
    B_8001da6c4 -- "fallthrough" --> B_8001da6c8
    B_8001da6c8 -- "taken" --> B_8001da410
    B_8001da6c8 -- "fallthrough" --> B_8001da708
    B_8001da708 -- "taken" --> B_8001da724
    B_8001da708 -- "fallthrough" --> B_8001da720
    B_8001da720 -- "taken" --> B_8001da828
    B_8001da720 -- "fallthrough" --> B_8001da724
    B_8001da724 -- "taken" --> B_8001da750
    B_8001da724 -- "fallthrough" --> B_8001da748
    B_8001da748 --> B_8001da750
    B_8001da750 -- "taken" --> B_8001da4f4
    B_8001da750 -- "fallthrough" --> B_8001da758
    B_8001da758 -- "taken" --> B_8001dae48
    B_8001da758 -- "fallthrough" --> B_8001da760
    B_8001da760 -- "taken" --> B_8001dae48
    B_8001da760 -- "fallthrough" --> B_8001da764
    B_8001da764 -- "taken" --> B_8001da788
    B_8001da764 -- "fallthrough" --> B_8001da780
    B_8001da780 --> B_8001da788
    B_8001da788 -- "taken" --> B_8001da7c8
    B_8001da788 -- "fallthrough" --> B_8001da7b4
    B_8001da7b4 --> B_8001da7c8
    B_8001da7c8 -- "taken" --> B_8001da960
    B_8001da7c8 -- "fallthrough" --> B_8001da7f0
    B_8001da7f0 -- "taken" --> B_8001da960
    B_8001da7f0 -- "fallthrough" --> B_8001da80c
    B_8001da80c --> B_8001da81c
    B_8001da81c --> B_8001da8b8
    B_8001da828 --> B_8001da830
    B_8001da830 -- "taken" --> B_8001da438
    B_8001da830 -- "fallthrough" --> B_8001da840
    B_8001da840 -- "taken" --> B_8001da438
    B_8001da840 -- "fallthrough" --> B_8001da844
    B_8001da844 -- "taken" --> B_8001dac10
    B_8001da844 -- "fallthrough" --> B_8001da85c
    B_8001da85c -- "taken" --> B_8001dac9c
    B_8001da85c -- "fallthrough" --> B_8001da870
    B_8001da870 -- "taken" --> B_8001da8c4
    B_8001da870 -- "fallthrough" --> B_8001da878
    B_8001da878 -- "taken" --> B_8001dac38
    B_8001da878 -- "fallthrough" --> B_8001da890
    B_8001da890 -- "taken" --> B_8001dac5c
    B_8001da890 -- "fallthrough" --> B_8001da898
    B_8001da898 -- "taken" --> B_8001dac64
    B_8001da898 -- "fallthrough" --> B_8001da8a4
    B_8001da8a4 --> B_8001da8ac
    B_8001da8ac -- "taken" --> B_8001da8c4
    B_8001da8ac -- "fallthrough" --> B_8001da8b4
    B_8001da8b4 --> B_8001da8b8
    B_8001da8b8 --> B_8001da4f4
    B_8001da8c4 -- "taken" --> B_8001da8b4
    B_8001da8c4 -- "fallthrough" --> B_8001da8d4
    B_8001da8d4 --> B_8001da8b8
    B_8001da8e0 --> B_8001da830
    B_8001da8ec -- "taken" --> B_8001daee8
    B_8001da8ec -- "fallthrough" --> B_8001da90c
    B_8001da90c -- "taken" --> B_8001daee8
    B_8001da90c -- "fallthrough" --> B_8001da928
    B_8001da928 -- "case" --> B_8001da944
    B_8001da928 -- "case" --> B_8001da968
    B_8001da928 -- "case" --> B_8001da9d4
    B_8001da928 -- "case" --> B_8001daef0
    B_8001da944 --> B_8001da4b8
    B_8001da950 --> B_8001da4e0
    B_8001da960 --> B_8001da81c
    B_8001da968 --> B_8001da4bc
    B_8001da994 -- "taken" --> B_8001da44c
    B_8001da994 -- "fallthrough" --> B_8001da9b4
    B_8001da9b4 --> B_8001da44c
    B_8001da9d4 --> B_8001da4b8
    B_8001da9e8 -- "taken" --> B_8001da5a4
    B_8001da9e8 -- "fallthrough" --> B_8001daa14
    B_8001daa14 --> B_8001da5a4
    B_8001daa4c -- "taken" --> B_8001da604
    B_8001daa4c -- "fallthrough" --> B_8001daa78
    B_8001daa78 --> B_8001da604
    B_8001daab0 --> B_8001da2e8
    B_8001daad0 -- "taken" --> B_8001da4f4
    B_8001daad0 -- "fallthrough" --> B_8001dab34
    B_8001dab34 --> B_8001da758
    B_8001dab44 --> B_8001dab94
    B_8001dab94 -- "taken" --> B_8001da4f4
    B_8001dab94 -- "fallthrough" --> B_8001dabf0
    B_8001dabf0 --> B_8001da758
    B_8001dabfc --> B_8001da4a4
    B_8001dac10 -- "taken" --> B_8001da8b4
    B_8001dac10 -- "fallthrough" --> B_8001dac24
    B_8001dac24 -- "taken" --> B_8001dae3c
    B_8001dac24 -- "fallthrough" --> B_8001dac2c
    B_8001dac2c --> B_8001da8b8
    B_8001dac38 -. "loop back" .-> B_8001da870
    B_8001dac5c -- "taken" --> B_8001da8ac
    B_8001dac5c -- "fallthrough" --> B_8001dac64
    B_8001dac64 --> B_8001dac9c
    B_8001dac9c --> B_8001da8b4
    B_8001daca8 --> B_8001da530
    B_8001dad10 -- "taken" --> B_8001da540
    B_8001dad10 -- "fallthrough" --> B_8001dad3c
    B_8001dad3c --> B_8001da540
    B_8001dad74 -- "taken" --> B_8001da664
    B_8001dad74 -- "fallthrough" --> B_8001dada0
    B_8001dada0 --> B_8001da664
    B_8001dadd8 -- "taken" --> B_8001da6c4
    B_8001dadd8 -- "fallthrough" --> B_8001dae04
    B_8001dae04 --> B_8001da6c4
    B_8001dae3c --> B_8001da8b8
    B_8001dae48 -- "taken" --> B_8001da4f4
    B_8001dae48 -- "fallthrough" --> B_8001dae64
    B_8001dae64 --> B_8001dae78
    B_8001dae78 -- "taken" --> B_8001daec0
    B_8001dae78 -- "fallthrough" --> B_8001dae88
    B_8001dae88 -- "taken" --> B_8001daec0
    B_8001dae88 -- "fallthrough" --> B_8001dae90
    B_8001dae90 -- "taken" --> B_8001daed0
    B_8001dae90 -- "fallthrough" --> B_8001dae9c
    B_8001dae9c --> B_8001daea4
    B_8001daea4 -- "taken" --> B_8001daec0
    B_8001daea4 -- "fallthrough" --> B_8001daeb4
    B_8001daeb4 -- "taken" --> B_8001daed0
    B_8001daeb4 -- "fallthrough" --> B_8001daeb8
    B_8001daeb8 -. "loop back" .-> B_8001daea4
    B_8001daeb8 -- "fallthrough" --> B_8001daec0
    B_8001daec0 -. "loop back" .-> B_8001dae78
    B_8001daec0 -- "fallthrough" --> B_8001daecc
    B_8001daecc --> B_8001da4f4
    B_8001daed0 -- "taken" --> B_8001daee0
    B_8001daed0 -- "fallthrough" --> B_8001daed4
    B_8001daed4 --> B_8001daee0
    B_8001daee0 --> B_8001da8b8
    B_8001daee8 --> B_8001da4bc
    B_8001daef0 --> B_8001da4bc
    B_8001daf10 --> B_8001da3c4
    B_8001daf64 -- "taken" --> B_8001daf94
    B_8001daf64 -- "fallthrough" --> B_8001daf84
    B_8001daf84 --> B_8001daf94
    B_8001daf94 --> B_8001da724
    %% Path Highlighting
    style B_8001da280 fill:#e8f5e9,stroke:#2e7d32,stroke-width:3px,color:#1b5e20
    style B_8001da2cc fill:#e1f5fe,stroke:#0288d1,stroke-width:2px,color:#01579b
    style B_8001da2e8 fill:#e8f5e9,stroke:#2e7d32,stroke-width:3px,color:#1b5e20
    style B_8001da2f8 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001da324 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001da338 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001da340 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001da358 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001da35c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001da364 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001da374 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001da378 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001da388 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001da38c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001da39c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001da3bc fill:#e1f5fe,stroke:#0288d1,stroke-width:2px,color:#01579b
    style B_8001da3c4 fill:#e1f5fe,stroke:#0288d1,stroke-width:2px,color:#01579b
    style B_8001da3e8 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001da404 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001da410 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001da414 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001da438 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001da44c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001da450 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001da460 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001da470 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001da480 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001da4a4 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001da4bc fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001da4c4 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001da4e0 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001da4f4 fill:#e8f5e9,stroke:#2e7d32,stroke-width:3px,color:#1b5e20
    style B_8001da518 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001da530 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001da540 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001da548 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001da594 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001da5a4 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001da5a8 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001da5f4 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001da604 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001da608 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001da654 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001da664 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001da668 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001da6b4 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001da6c4 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001da6c8 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001da708 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001da720 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001da724 fill:#e1f5fe,stroke:#0288d1,stroke-width:2px,color:#01579b
    style B_8001da750 fill:#e1f5fe,stroke:#0288d1,stroke-width:2px,color:#01579b
    style B_8001da758 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001da760 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001da828 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001da830 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001da840 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001da8b8 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001da8ec fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001da90c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001da928 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001da950 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001da968 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001da994 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001da9b4 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001da9e8 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001daa14 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001daa4c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001daa78 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001daab0 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001daca8 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001dad10 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001dad3c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001dad74 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001dada0 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001dadd8 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001dae04 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001dae48 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001dae64 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001dae78 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001dae88 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001dae90 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001dae9c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001daea4 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001daeb4 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001daed0 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001daed4 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001daee0 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001daf10 fill:#e1f5fe,stroke:#0288d1,stroke-width:2px,color:#01579b
    style B_8001daf64 fill:#e1f5fe,stroke:#0288d1,stroke-width:2px,color:#01579b
    style B_8001daf94 fill:#e1f5fe,stroke:#0288d1,stroke-width:2px,color:#01579b
```

## 3. External Callee Classification (3 total: 2 constant-zero, 0 pointer-alloc, 0 memory-copy, 1 branch-sensitive)

| External Symbol | Classification | Args Read | Longest-Path Return (`X0`) | Alt-Branch Return (`X0`) | Post-Call Analysis |
| :--- | :--- | ---: | :--- | :--- | :--- |
| `f_802ba39a0` | **BRANCH_SENSITIVE** | 5 | `0x1` | `0x0` | CBZ on return register w0 at 0x8001daf80 |
| `f_802ba39b0` | `CONSTANT_ZERO` | 2 | `0x0` | `0x1` | Return value X0 unread/overwritten -> constant 0 |
| `f_800099860` | `CONSTANT_ZERO` | 3 | `0x0` | `0x1` | Return value X0 unread/overwritten -> constant 0 |
