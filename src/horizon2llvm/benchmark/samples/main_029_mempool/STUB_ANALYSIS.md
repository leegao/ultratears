# Automated Stub & Static CFG Longest-Path Analysis (`main_029_mempool`)

## 1. Function Static CFG & Path Length Summary

| Function | Entry PC | Static ARM64 Insns | Basic Blocks | Loop Back-Edges | Est. Common Path (ARM64 Insns) | Est. Longest Path (ARM64 Insns) | CP-SAT Verified Longest |
| :--- | :--- | ---: | ---: | ---: | ---: | ---: | ---: |
| `f_800079d20` | `0x800079d20` | 710 | 200 | 9 | 39 | 274 | 274 |

## 2. Function Control Flow Graphs (CFGs)

### Function `f_800079d20` (`0x800079d20` – 710 insns, 200 blocks)

```mermaid
flowchart TD
    B_800079d20["0x800079d20..0x800079d58\n(14 insns)"]
    B_800079d58["0x800079d58..0x800079d60\n(2 insns)"]
    B_800079d60["0x800079d60..0x800079d78\n(6 insns)"]
    B_800079d78["0x800079d78..0x800079d84\n(3 insns)"]
    B_800079d84["0x800079d84..0x800079d88\n(1 insns)"]
    B_800079d88["0x800079d88..0x800079db4\n(11 insns)"]
    B_800079db4["0x800079db4..0x800079dc0\n(3 insns)"]
    B_800079dc0["0x800079dc0..0x800079ddc\n(7 insns)"]
    B_800079ddc["0x800079ddc..0x800079de8\n(3 insns)"]
    B_800079de8["0x800079de8..0x800079dec\n(1 insns)"]
    B_800079dec["0x800079dec..0x800079df0\n(1 insns)"]
    B_800079df0["0x800079df0..0x800079df4\n(1 insns)"]
    B_800079df4["0x800079df4..0x800079e18\n(9 insns)"]
    B_800079e18["0x800079e18..0x800079e28\n(4 insns)"]
    B_800079e28["0x800079e28..0x800079e38\n(4 insns)"]
    B_800079e38["0x800079e38..0x800079e5c\n(9 insns)"]
    B_800079e5c["0x800079e5c..0x800079e6c\n(4 insns)"]
    B_800079e6c["0x800079e6c..0x800079e74\n(2 insns)"]
    B_800079e74["0x800079e74..0x800079e80\n(3 insns)"]
    B_800079e80["0x800079e80..0x800079e8c\n(3 insns)"]
    B_800079e8c["0x800079e8c..0x800079eb0\n(9 insns)"]
    B_800079eb0["0x800079eb0..0x800079eb8\n(2 insns)"]
    B_800079eb8["0x800079eb8..0x800079ec0\n(2 insns)"]
    B_800079ec0["0x800079ec0..0x800079ec4\n(1 insns)"]
    B_800079ec4["0x800079ec4..0x800079ed0\n(3 insns, loop hdr)"]
    B_800079ed0["0x800079ed0..0x800079ee4\n(5 insns)"]
    B_800079ee4["0x800079ee4..0x800079ee8\n(1 insns)"]
    B_800079ee8["0x800079ee8..0x800079f14\n(11 insns)"]
    B_800079f14["0x800079f14..0x800079f1c\n(2 insns)"]
    B_800079f1c["0x800079f1c..0x800079f20\n(1 insns)"]
    B_800079f20["0x800079f20..0x800079f2c\n(3 insns)"]
    B_800079f2c["0x800079f2c..0x800079f48\n(7 insns)"]
    B_800079f48["0x800079f48..0x800079f54\n(3 insns)"]
    B_800079f54["0x800079f54..0x800079f5c\n(2 insns)"]
    B_800079f5c["0x800079f5c..0x800079f60\n(1 insns)"]
    B_800079f60["0x800079f60..0x800079f68\n(2 insns)"]
    B_800079f68["0x800079f68..0x800079f94\n(11 insns, switch)"]
    B_800079f94["0x800079f94..0x800079f98\n(1 insns)"]
    B_800079f98["0x800079f98..0x800079fa0\n(2 insns)"]
    B_800079fa0["0x800079fa0..0x800079fac\n(3 insns)"]
    B_800079fac["0x800079fac..0x800079fb4\n(2 insns)"]
    B_800079fb4["0x800079fb4..0x800079fcc\n(6 insns)"]
    B_800079fcc["0x800079fcc..0x800079fd0\n(1 insns)"]
    B_800079fd0["0x800079fd0..0x800079fe4\n(5 insns)"]
    B_800079fe4["0x800079fe4..0x80007a010\n(11 insns)"]
    B_80007a010["0x80007a010..0x80007a014\n(1 insns)"]
    B_80007a014["0x80007a014..0x80007a01c\n(2 insns)"]
    B_80007a01c["0x80007a01c..0x80007a024\n(2 insns)"]
    B_80007a024["0x80007a024..0x80007a044\n(8 insns)"]
    B_80007a044["0x80007a044..0x80007a078\n(13 insns)"]
    B_80007a078["0x80007a078..0x80007a084\n(3 insns)"]
    B_80007a084["0x80007a084..0x80007a08c\n(2 insns)"]
    B_80007a08c["0x80007a08c..0x80007a09c\n(4 insns)"]
    B_80007a09c["0x80007a09c..0x80007a0a0\n(1 insns)"]
    B_80007a0a0["0x80007a0a0..0x80007a0ac\n(3 insns, loop hdr)"]
    B_80007a0ac["0x80007a0ac..0x80007a0d0\n(9 insns)"]
    B_80007a0d0["0x80007a0d0..0x80007a104\n(13 insns)"]
    B_80007a104["0x80007a104..0x80007a110\n(3 insns)"]
    B_80007a110["0x80007a110..0x80007a11c\n(3 insns)"]
    B_80007a11c["0x80007a11c..0x80007a130\n(5 insns)"]
    B_80007a130["0x80007a130..0x80007a138\n(2 insns)"]
    B_80007a138["0x80007a138..0x80007a140\n(2 insns)"]
    B_80007a140["0x80007a140..0x80007a148\n(2 insns)"]
    B_80007a148["0x80007a148..0x80007a158\n(4 insns)"]
    B_80007a158["0x80007a158..0x80007a174\n(7 insns)"]
    B_80007a174["0x80007a174..0x80007a184\n(4 insns)"]
    B_80007a184["0x80007a184..0x80007a188\n(1 insns)"]
    B_80007a188["0x80007a188..0x80007a19c\n(5 insns)"]
    B_80007a19c["0x80007a19c..0x80007a1ac\n(4 insns)"]
    B_80007a1ac["0x80007a1ac..0x80007a1c0\n(5 insns)"]
    B_80007a1c0["0x80007a1c0..0x80007a1c4\n(1 insns)"]
    B_80007a1c4["0x80007a1c4..0x80007a1c8\n(1 insns)"]
    B_80007a1c8["0x80007a1c8..0x80007a1cc\n(1 insns)"]
    B_80007a1cc["0x80007a1cc..0x80007a1d8\n(3 insns, loop hdr)"]
    B_80007a1d8["0x80007a1d8..0x80007a1e0\n(2 insns)"]
    B_80007a1e0["0x80007a1e0..0x80007a1f4\n(5 insns)"]
    B_80007a1f4["0x80007a1f4..0x80007a208\n(5 insns)"]
    B_80007a208["0x80007a208..0x80007a210\n(2 insns)"]
    B_80007a210["0x80007a210..0x80007a214\n(1 insns)"]
    B_80007a214["0x80007a214..0x80007a23c\n(10 insns)"]
    B_80007a23c["0x80007a23c..0x80007a268\n(11 insns)"]
    B_80007a268["0x80007a268..0x80007a26c\n(1 insns)"]
    B_80007a26c["0x80007a26c..0x80007a270\n(1 insns)"]
    B_80007a270["0x80007a270..0x80007a278\n(2 insns)"]
    B_80007a278["0x80007a278..0x80007a298\n(8 insns)"]
    B_80007a298["0x80007a298..0x80007a2a0\n(2 insns)"]
    B_80007a2a0["0x80007a2a0..0x80007a2b0\n(4 insns)"]
    B_80007a2b0["0x80007a2b0..0x80007a2c4\n(5 insns)"]
    B_80007a2c4["0x80007a2c4..0x80007a2d8\n(5 insns)"]
    B_80007a2d8["0x80007a2d8..0x80007a2dc\n(1 insns)"]
    B_80007a2dc["0x80007a2dc..0x80007a2e4\n(2 insns)"]
    B_80007a2e4["0x80007a2e4..0x80007a2f8\n(5 insns)"]
    B_80007a2f8["0x80007a2f8..0x80007a308\n(4 insns)"]
    B_80007a308["0x80007a308..0x80007a31c\n(5 insns)"]
    B_80007a31c["0x80007a31c..0x80007a324\n(2 insns)"]
    B_80007a324["0x80007a324..0x80007a328\n(1 insns)"]
    B_80007a328["0x80007a328..0x80007a330\n(2 insns)"]
    B_80007a330["0x80007a330..0x80007a340\n(4 insns)"]
    B_80007a340["0x80007a340..0x80007a350\n(4 insns)"]
    B_80007a350["0x80007a350..0x80007a358\n(2 insns)"]
    B_80007a358["0x80007a358..0x80007a35c\n(1 insns)"]
    B_80007a35c["0x80007a35c..0x80007a360\n(1 insns)"]
    B_80007a360["0x80007a360..0x80007a368\n(2 insns)"]
    B_80007a368["0x80007a368..0x80007a378\n(4 insns)"]
    B_80007a378["0x80007a378..0x80007a37c\n(1 insns)"]
    B_80007a37c["0x80007a37c..0x80007a384\n(2 insns)"]
    B_80007a384["0x80007a384..0x80007a390\n(3 insns)"]
    B_80007a390["0x80007a390..0x80007a3a4\n(5 insns)"]
    B_80007a3a4["0x80007a3a4..0x80007a3ac\n(2 insns)"]
    B_80007a3ac["0x80007a3ac..0x80007a3b4\n(2 insns)"]
    B_80007a3b4["0x80007a3b4..0x80007a3b8\n(1 insns)"]
    B_80007a3b8["0x80007a3b8..0x80007a3c4\n(3 insns, loop hdr)"]
    B_80007a3c4["0x80007a3c4..0x80007a3c8\n(1 insns)"]
    B_80007a3c8["0x80007a3c8..0x80007a3d4\n(3 insns)"]
    B_80007a3d4["0x80007a3d4..0x80007a3d8\n(1 insns)"]
    B_80007a3d8["0x80007a3d8..0x80007a3ec\n(5 insns)"]
    B_80007a3ec["0x80007a3ec..0x80007a3f0\n(1 insns)"]
    B_80007a3f0["0x80007a3f0..0x80007a3f4\n(1 insns)"]
    B_80007a3f4["0x80007a3f4..0x80007a410\n(7 insns)"]
    B_80007a410["0x80007a410..0x80007a414\n(1 insns)"]
    B_80007a414["0x80007a414..0x80007a41c\n(2 insns)"]
    B_80007a41c["0x80007a41c..0x80007a424\n(2 insns)"]
    B_80007a424["0x80007a424..0x80007a428\n(1 insns)"]
    B_80007a428["0x80007a428..0x80007a430\n(2 insns)"]
    B_80007a430["0x80007a430..0x80007a45c\n(11 insns)"]
    B_80007a45c["0x80007a45c..0x80007a46c\n(4 insns)"]
    B_80007a46c["0x80007a46c..0x80007a470\n(1 insns)"]
    B_80007a470["0x80007a470..0x80007a484\n(5 insns)"]
    B_80007a484["0x80007a484..0x80007a48c\n(2 insns)"]
    B_80007a48c["0x80007a48c..0x80007a4b0\n(9 insns)"]
    B_80007a4b0["0x80007a4b0..0x80007a4c4\n(5 insns)"]
    B_80007a4c4["0x80007a4c4..0x80007a4c8\n(1 insns)"]
    B_80007a4c8["0x80007a4c8..0x80007a4d4\n(3 insns)"]
    B_80007a4d4["0x80007a4d4..0x80007a4ec\n(6 insns)"]
    B_80007a4ec["0x80007a4ec..0x80007a4f0\n(1 insns)"]
    B_80007a4f0["0x80007a4f0..0x80007a4fc\n(3 insns)"]
    B_80007a4fc["0x80007a4fc..0x80007a504\n(2 insns)"]
    B_80007a504["0x80007a504..0x80007a51c\n(6 insns)"]
    B_80007a51c["0x80007a51c..0x80007a520\n(1 insns)"]
    B_80007a520["0x80007a520..0x80007a528\n(2 insns)"]
    B_80007a528["0x80007a528..0x80007a530\n(2 insns)"]
    B_80007a530["0x80007a530..0x80007a54c\n(7 insns)"]
    B_80007a54c["0x80007a54c..0x80007a550\n(1 insns)"]
    B_80007a550["0x80007a550..0x80007a558\n(2 insns)"]
    B_80007a558["0x80007a558..0x80007a55c\n(1 insns)"]
    B_80007a55c["0x80007a55c..0x80007a56c\n(4 insns)"]
    B_80007a56c["0x80007a56c..0x80007a574\n(2 insns)"]
    B_80007a574["0x80007a574..0x80007a578\n(1 insns)"]
    B_80007a578["0x80007a578..0x80007a584\n(3 insns, loop hdr)"]
    B_80007a584["0x80007a584..0x80007a588\n(1 insns)"]
    B_80007a588["0x80007a588..0x80007a594\n(3 insns)"]
    B_80007a594["0x80007a594..0x80007a598\n(1 insns)"]
    B_80007a598["0x80007a598..0x80007a5ac\n(5 insns)"]
    B_80007a5ac["0x80007a5ac..0x80007a5b0\n(1 insns)"]
    B_80007a5b0["0x80007a5b0..0x80007a5b4\n(1 insns)"]
    B_80007a5b4["0x80007a5b4..0x80007a5dc\n(10 insns, loop hdr)"]
    B_80007a5dc["0x80007a5dc..0x80007a5e0\n(1 insns)"]
    B_80007a5e0["0x80007a5e0..0x80007a5f4\n(5 insns)"]
    B_80007a5f4["0x80007a5f4..0x80007a5f8\n(1 insns)"]
    B_80007a5f8["0x80007a5f8..0x80007a600\n(2 insns)"]
    B_80007a600["0x80007a600..0x80007a61c\n(7 insns)"]
    B_80007a61c["0x80007a61c..0x80007a640\n(9 insns)"]
    B_80007a640["0x80007a640..0x80007a644\n(1 insns)"]
    B_80007a644["0x80007a644..0x80007a64c\n(2 insns)"]
    B_80007a64c["0x80007a64c..0x80007a66c\n(8 insns)"]
    B_80007a66c["0x80007a66c..0x80007a674\n(2 insns)"]
    B_80007a674["0x80007a674..0x80007a678\n(1 insns)"]
    B_80007a678["0x80007a678..0x80007a684\n(3 insns, loop hdr)"]
    B_80007a684["0x80007a684..0x80007a698\n(5 insns)"]
    B_80007a698["0x80007a698..0x80007a69c\n(1 insns)"]
    B_80007a69c["0x80007a69c..0x80007a6c0\n(9 insns)"]
    B_80007a6c0["0x80007a6c0..0x80007a6c4\n(1 insns)"]
    B_80007a6c4["0x80007a6c4..0x80007a6d0\n(3 insns)"]
    B_80007a6d0["0x80007a6d0..0x80007a6d8\n(2 insns)"]
    B_80007a6d8["0x80007a6d8..0x80007a6f4\n(7 insns)"]
    B_80007a6f4["0x80007a6f4..0x80007a6fc\n(2 insns)"]
    B_80007a6fc["0x80007a6fc..0x80007a708\n(3 insns)"]
    B_80007a708["0x80007a708..0x80007a714\n(3 insns)"]
    B_80007a714["0x80007a714..0x80007a71c\n(2 insns)"]
    B_80007a71c["0x80007a71c..0x80007a720\n(1 insns)"]
    B_80007a720["0x80007a720..0x80007a72c\n(3 insns, loop hdr)"]
    B_80007a72c["0x80007a72c..0x80007a740\n(5 insns)"]
    B_80007a740["0x80007a740..0x80007a744\n(1 insns)"]
    B_80007a744["0x80007a744..0x80007a768\n(9 insns)"]
    B_80007a768["0x80007a768..0x80007a76c\n(1 insns)"]
    B_80007a76c["0x80007a76c..0x80007a778\n(3 insns)"]
    B_80007a778["0x80007a778..0x80007a780\n(2 insns)"]
    B_80007a780["0x80007a780..0x80007a784\n(1 insns)"]
    B_80007a784["0x80007a784..0x80007a790\n(3 insns, loop hdr)"]
    B_80007a790["0x80007a790..0x80007a7bc\n(11 insns)"]
    B_80007a7bc["0x80007a7bc..0x80007a7d0\n(5 insns)"]
    B_80007a7d0["0x80007a7d0..0x80007a7d4\n(1 insns)"]
    B_80007a7d4["0x80007a7d4..0x80007a7e0\n(3 insns)"]
    B_80007a7e0["0x80007a7e0..0x80007a7e4\n(1 insns)"]
    B_80007a7e4["0x80007a7e4..0x80007a7ec\n(2 insns)"]
    B_80007a7ec["0x80007a7ec..0x80007a7f4\n(2 insns)"]
    B_80007a7f4["0x80007a7f4..0x80007a7f8\n(1 insns)"]
    B_80007a7f8["0x80007a7f8..0x80007a800\n(2 insns)"]
    B_80007a800["0x80007a800..0x80007a814\n(5 insns)"]
    B_80007a814["0x80007a814..0x80007a838\n(9 insns)"]
    B_800079d20 -- "taken" --> B_80007a214
    B_800079d20 -- "fallthrough" --> B_800079d58
    B_800079d58 -- "taken" --> B_80007a23c
    B_800079d58 -- "fallthrough" --> B_800079d60
    B_800079d60 -- "taken" --> B_800079e18
    B_800079d60 -- "fallthrough" --> B_800079d78
    B_800079d78 -- "taken" --> B_80007a2a0
    B_800079d78 -- "fallthrough" --> B_800079d84
    B_800079d84 --> B_800079d88
    B_800079d88 -- "taken" --> B_80007a26c
    B_800079d88 -- "fallthrough" --> B_800079db4
    B_800079db4 -- "taken" --> B_80007a2b0
    B_800079db4 -- "fallthrough" --> B_800079dc0
    B_800079dc0 -- "taken" --> B_800079f94
    B_800079dc0 -- "fallthrough" --> B_800079ddc
    B_800079ddc -- "taken" --> B_800079f94
    B_800079ddc -- "fallthrough" --> B_800079de8
    B_800079de8 --> B_800079dec
    B_800079dec -- "taken" --> B_800079fa0
    B_800079dec -- "fallthrough" --> B_800079df0
    B_800079df0 -- "taken" --> B_80007a4f0
    B_800079df0 -- "fallthrough" --> B_800079df4
    B_800079df4 --> EXIT_800079df4["return"]
    B_800079e18 -- "taken" --> B_800079ee8
    B_800079e18 -- "fallthrough" --> B_800079e28
    B_800079e28 -- "taken" --> B_800079f68
    B_800079e28 -- "fallthrough" --> B_800079e38
    B_800079e38 -- "taken" --> B_80007a35c
    B_800079e38 -- "fallthrough" --> B_800079e5c
    B_800079e5c -- "taken" --> B_80007a378
    B_800079e5c -- "fallthrough" --> B_800079e6c
    B_800079e6c -- "taken" --> B_800079f60
    B_800079e6c -- "fallthrough" --> B_800079e74
    B_800079e74 --> B_800079e80
    B_800079e80 -- "taken" --> B_80007a1ac
    B_800079e80 -- "fallthrough" --> B_800079e8c
    B_800079e8c -- "taken" --> B_80007a084
    B_800079e8c -- "fallthrough" --> B_800079eb0
    B_800079eb0 -- "taken" --> B_80007a7e0
    B_800079eb0 -- "fallthrough" --> B_800079eb8
    B_800079eb8 -- "taken" --> B_80007a3ac
    B_800079eb8 -- "fallthrough" --> B_800079ec0
    B_800079ec0 --> B_800079ec4
    B_800079ec4 -- "taken" --> B_80007a3f4
    B_800079ec4 -- "fallthrough" --> B_800079ed0
    B_800079ed0 -. "loop back" .-> B_800079ec4
    B_800079ed0 -- "fallthrough" --> B_800079ee4
    B_800079ee4 --> B_80007a7e0
    B_800079ee8 -- "taken" --> B_80007a54c
    B_800079ee8 -- "fallthrough" --> B_800079f14
    B_800079f14 -- "taken" --> B_80007a55c
    B_800079f14 -- "fallthrough" --> B_800079f1c
    B_800079f1c --> B_800079f20
    B_800079f20 -- "taken" --> B_80007a1e0
    B_800079f20 -- "fallthrough" --> B_800079f2c
    B_800079f2c -- "taken" --> B_80007a324
    B_800079f2c -- "fallthrough" --> B_800079f48
    B_800079f48 -- "taken" --> B_80007a324
    B_800079f48 -- "fallthrough" --> B_800079f54
    B_800079f54 -- "taken" --> B_800079df4
    B_800079f54 -- "fallthrough" --> B_800079f5c
    B_800079f5c --> B_80007a4f0
    B_800079f60 --> B_800079e80
    B_800079f68 -- "case" --> B_800079f94
    B_800079f94 -- "taken" --> B_800079fa0
    B_800079f94 -- "fallthrough" --> B_800079f98
    B_800079f98 -- "taken" --> B_80007a2f8
    B_800079f98 -- "fallthrough" --> B_800079fa0
    B_800079fa0 -- "taken" --> B_800079df0
    B_800079fa0 -- "fallthrough" --> B_800079fac
    B_800079fac -- "taken" --> B_800079df0
    B_800079fac -- "fallthrough" --> B_800079fb4
    B_800079fb4 -- "taken" --> B_800079fd0
    B_800079fb4 -- "fallthrough" --> B_800079fcc
    B_800079fcc -- "taken" --> B_800079fe4
    B_800079fcc -- "fallthrough" --> B_800079fd0
    B_800079fd0 --> B_800079fe4
    B_800079fe4 -- "taken" --> B_80007a5f8
    B_800079fe4 -- "fallthrough" --> B_80007a010
    B_80007a010 --> B_80007a014
    B_80007a014 -- "taken" --> B_80007a644
    B_80007a014 -- "fallthrough" --> B_80007a01c
    B_80007a01c --> B_80007a024
    B_80007a024 -- "taken" --> B_80007a1cc
    B_80007a024 -- "fallthrough" --> B_80007a044
    B_80007a044 -- "taken" --> B_800079df0
    B_80007a044 -- "fallthrough" --> B_80007a078
    B_80007a078 --> B_800079df0
    B_80007a084 -- "taken" --> B_80007a7e0
    B_80007a084 -- "fallthrough" --> B_80007a08c
    B_80007a08c -- "taken" --> B_80007a66c
    B_80007a08c -- "fallthrough" --> B_80007a09c
    B_80007a09c --> B_80007a0a0
    B_80007a0a0 -- "taken" --> B_80007a5e0
    B_80007a0a0 -- "fallthrough" --> B_80007a0ac
    B_80007a0ac -- "taken" --> B_80007a5e0
    B_80007a0ac -- "fallthrough" --> B_80007a0d0
    B_80007a0d0 -- "taken" --> B_80007a64c
    B_80007a0d0 -- "fallthrough" --> B_80007a104
    B_80007a104 -- "taken" --> B_80007a11c
    B_80007a104 -- "fallthrough" --> B_80007a110
    B_80007a110 --> B_80007a11c
    B_80007a11c -- "taken" --> B_80007a138
    B_80007a11c -- "fallthrough" --> B_80007a130
    B_80007a130 --> B_80007a138
    B_80007a138 -- "taken" --> B_80007a148
    B_80007a138 -- "fallthrough" --> B_80007a140
    B_80007a140 --> B_80007a148
    B_80007a148 --> B_80007a158
    B_80007a158 -- "taken" --> B_80007a6d8
    B_80007a158 -- "fallthrough" --> B_80007a174
    B_80007a174 -- "taken" --> B_80007a188
    B_80007a174 -- "fallthrough" --> B_80007a184
    B_80007a184 --> B_80007a188
    B_80007a188 -- "taken" --> B_80007a6f4
    B_80007a188 -- "fallthrough" --> B_80007a19c
    B_80007a19c --> B_80007a48c
    B_80007a1ac -- "taken" --> B_80007a708
    B_80007a1ac -- "fallthrough" --> B_80007a1c0
    B_80007a1c0 --> B_80007a1c4
    B_80007a1c4 -- "taken" --> B_80007a4d4
    B_80007a1c4 -- "fallthrough" --> B_80007a1c8
    B_80007a1c8 --> B_80007a7e0
    B_80007a1cc -. "loop back" .-> B_80007a1cc
    B_80007a1cc -- "fallthrough" --> B_80007a1d8
    B_80007a1d8 --> B_80007a044
    B_80007a1e0 -- "taken" --> B_80007a7f4
    B_80007a1e0 -- "fallthrough" --> B_80007a1f4
    B_80007a1f4 -- "taken" --> B_80007a7f4
    B_80007a1f4 -- "fallthrough" --> B_80007a208
    B_80007a208 -- "taken" --> B_800079df4
    B_80007a208 -- "fallthrough" --> B_80007a210
    B_80007a210 --> B_80007a4f0
    B_80007a214 --> EXIT_80007a214["return"]
    B_80007a23c -- "taken" --> B_800079d60
    B_80007a23c -- "fallthrough" --> B_80007a268
    B_80007a268 --> B_80007a3a4
    B_80007a26c -- "taken" --> B_80007a298
    B_80007a26c -- "fallthrough" --> B_80007a270
    B_80007a270 -- "taken" --> B_80007a298
    B_80007a270 -- "fallthrough" --> B_80007a278
    B_80007a278 --> B_80007a298
    B_80007a298 --> B_800079df0
    B_80007a2a0 --> B_800079d88
    B_80007a2b0 -- "taken" --> B_80007a2d8
    B_80007a2b0 -- "fallthrough" --> B_80007a2c4
    B_80007a2c4 -- "taken" --> B_80007a31c
    B_80007a2c4 -- "fallthrough" --> B_80007a2d8
    B_80007a2d8 -- "taken" --> B_800079fa0
    B_80007a2d8 -- "fallthrough" --> B_80007a2dc
    B_80007a2dc -- "taken" --> B_800079fa0
    B_80007a2dc -- "fallthrough" --> B_80007a2e4
    B_80007a2e4 --> B_80007a308
    B_80007a2f8 --> B_80007a308
    B_80007a308 --> B_800079fa0
    B_80007a31c --> B_800079dec
    B_80007a324 -- "taken" --> B_80007a350
    B_80007a324 -- "fallthrough" --> B_80007a328
    B_80007a328 -- "taken" --> B_80007a350
    B_80007a328 -- "fallthrough" --> B_80007a330
    B_80007a330 --> B_80007a340
    B_80007a340 --> B_80007a350
    B_80007a350 -- "taken" --> B_800079df4
    B_80007a350 -- "fallthrough" --> B_80007a358
    B_80007a358 --> B_80007a4f0
    B_80007a35c -- "taken" --> B_80007a3a4
    B_80007a35c -- "fallthrough" --> B_80007a360
    B_80007a360 -- "taken" --> B_80007a3a4
    B_80007a360 -- "fallthrough" --> B_80007a368
    B_80007a368 --> B_80007a390
    B_80007a378 -- "taken" --> B_80007a3a4
    B_80007a378 -- "fallthrough" --> B_80007a37c
    B_80007a37c -- "taken" --> B_80007a3a4
    B_80007a37c -- "fallthrough" --> B_80007a384
    B_80007a384 --> B_80007a390
    B_80007a390 --> B_80007a3a4
    B_80007a3a4 --> B_800079df4
    B_80007a3ac -- "taken" --> B_80007a56c
    B_80007a3ac -- "fallthrough" --> B_80007a3b4
    B_80007a3b4 --> B_80007a3b8
    B_80007a3b8 -- "taken" --> B_80007a3d8
    B_80007a3b8 -- "fallthrough" --> B_80007a3c4
    B_80007a3c4 -- "taken" --> B_80007a3d4
    B_80007a3c4 -- "fallthrough" --> B_80007a3c8
    B_80007a3c8 -- "taken" --> B_80007a3d8
    B_80007a3c8 -- "fallthrough" --> B_80007a3d4
    B_80007a3d4 --> B_80007a3d8
    B_80007a3d8 -. "loop back" .-> B_80007a3b8
    B_80007a3d8 -- "fallthrough" --> B_80007a3ec
    B_80007a3ec -- "taken" --> B_80007a7e0
    B_80007a3ec -- "fallthrough" --> B_80007a3f0
    B_80007a3f0 --> B_80007a3f4
    B_80007a3f4 -- "taken" --> B_80007a4fc
    B_80007a3f4 -- "fallthrough" --> B_80007a410
    B_80007a410 --> B_80007a414
    B_80007a414 -- "taken" --> B_80007a424
    B_80007a414 -- "fallthrough" --> B_80007a41c
    B_80007a41c --> B_80007a424
    B_80007a424 -- "taken" --> B_80007a430
    B_80007a424 -- "fallthrough" --> B_80007a428
    B_80007a428 --> B_80007a430
    B_80007a430 -- "taken" --> B_80007a530
    B_80007a430 -- "fallthrough" --> B_80007a45c
    B_80007a45c -- "taken" --> B_80007a470
    B_80007a45c -- "fallthrough" --> B_80007a46c
    B_80007a46c --> B_80007a470
    B_80007a470 -- "taken" --> B_80007a520
    B_80007a470 -- "fallthrough" --> B_80007a484
    B_80007a484 --> B_80007a48c
    B_80007a48c -- "taken" --> B_80007a504
    B_80007a48c -- "fallthrough" --> B_80007a4b0
    B_80007a4b0 -- "taken" --> B_80007a4c8
    B_80007a4b0 -- "fallthrough" --> B_80007a4c4
    B_80007a4c4 --> B_80007a4c8
    B_80007a4c8 --> B_80007a4d4
    B_80007a4d4 --> B_80007a4ec
    B_80007a4ec -- "taken" --> B_800079df4
    B_80007a4ec -- "fallthrough" --> B_80007a4f0
    B_80007a4f0 --> B_800079df4
    B_80007a4fc --> B_80007a414
    B_80007a504 -- "taken" --> B_80007a4c4
    B_80007a504 -- "fallthrough" --> B_80007a51c
    B_80007a51c --> B_80007a4c8
    B_80007a520 -- "taken" --> B_80007a4d4
    B_80007a520 -- "fallthrough" --> B_80007a528
    B_80007a528 --> B_80007a4d4
    B_80007a530 --> B_80007a470
    B_80007a54c -- "taken" --> B_80007a3a4
    B_80007a54c -- "fallthrough" --> B_80007a550
    B_80007a550 -- "taken" --> B_80007a384
    B_80007a550 -- "fallthrough" --> B_80007a558
    B_80007a558 --> B_80007a3a4
    B_80007a55c --> B_800079f20
    B_80007a56c -- "taken" --> B_80007a5b0
    B_80007a56c -- "fallthrough" --> B_80007a574
    B_80007a574 --> B_80007a578
    B_80007a578 -- "taken" --> B_80007a598
    B_80007a578 -- "fallthrough" --> B_80007a584
    B_80007a584 -- "taken" --> B_80007a594
    B_80007a584 -- "fallthrough" --> B_80007a588
    B_80007a588 -- "taken" --> B_80007a598
    B_80007a588 -- "fallthrough" --> B_80007a594
    B_80007a594 --> B_80007a598
    B_80007a598 -. "loop back" .-> B_80007a578
    B_80007a598 -- "fallthrough" --> B_80007a5ac
    B_80007a5ac --> B_80007a3ec
    B_80007a5b0 --> B_80007a5b4
    B_80007a5b4 -. "loop back" .-> B_80007a5b4
    B_80007a5b4 -- "fallthrough" --> B_80007a5dc
    B_80007a5dc --> B_80007a3ec
    B_80007a5e0 -. "loop back" .-> B_80007a0a0
    B_80007a5e0 -- "fallthrough" --> B_80007a5f4
    B_80007a5f4 --> B_80007a7e0
    B_80007a5f8 -- "taken" --> B_80007a298
    B_80007a5f8 -- "fallthrough" --> B_80007a600
    B_80007a600 -- "taken" --> B_80007a298
    B_80007a600 -- "fallthrough" --> B_80007a61c
    B_80007a61c -- "taken" --> B_800079df0
    B_80007a61c -- "fallthrough" --> B_80007a640
    B_80007a640 --> B_80007a014
    B_80007a644 --> B_80007a024
    B_80007a64c --> B_80007a158
    B_80007a66c -- "taken" --> B_80007a714
    B_80007a66c -- "fallthrough" --> B_80007a674
    B_80007a674 --> B_80007a678
    B_80007a678 -- "taken" --> B_80007a69c
    B_80007a678 -- "fallthrough" --> B_80007a684
    B_80007a684 -. "loop back" .-> B_80007a678
    B_80007a684 -- "fallthrough" --> B_80007a698
    B_80007a698 --> B_80007a7d0
    B_80007a69c -- "taken" --> B_80007a684
    B_80007a69c -- "fallthrough" --> B_80007a6c0
    B_80007a6c0 -- "taken" --> B_80007a6d0
    B_80007a6c0 -- "fallthrough" --> B_80007a6c4
    B_80007a6c4 -- "taken" --> B_80007a684
    B_80007a6c4 -- "fallthrough" --> B_80007a6d0
    B_80007a6d0 --> B_80007a684
    B_80007a6d8 --> B_80007a188
    B_80007a6f4 -- "taken" --> B_80007a4d4
    B_80007a6f4 -- "fallthrough" --> B_80007a6fc
    B_80007a6fc --> B_80007a4d4
    B_80007a708 --> B_80007a1c4
    B_80007a714 -- "taken" --> B_80007a780
    B_80007a714 -- "fallthrough" --> B_80007a71c
    B_80007a71c --> B_80007a720
    B_80007a720 -- "taken" --> B_80007a744
    B_80007a720 -- "fallthrough" --> B_80007a72c
    B_80007a72c -. "loop back" .-> B_80007a720
    B_80007a72c -- "fallthrough" --> B_80007a740
    B_80007a740 --> B_80007a7d0
    B_80007a744 -- "taken" --> B_80007a72c
    B_80007a744 -- "fallthrough" --> B_80007a768
    B_80007a768 -- "taken" --> B_80007a778
    B_80007a768 -- "fallthrough" --> B_80007a76c
    B_80007a76c -- "taken" --> B_80007a72c
    B_80007a76c -- "fallthrough" --> B_80007a778
    B_80007a778 --> B_80007a72c
    B_80007a780 --> B_80007a784
    B_80007a784 -- "taken" --> B_80007a7bc
    B_80007a784 -- "fallthrough" --> B_80007a790
    B_80007a790 --> B_80007a7bc
    B_80007a7bc -. "loop back" .-> B_80007a784
    B_80007a7bc -- "fallthrough" --> B_80007a7d0
    B_80007a7d0 -- "taken" --> B_80007a7e0
    B_80007a7d0 -- "fallthrough" --> B_80007a7d4
    B_80007a7d4 --> B_80007a0d0
    B_80007a7e0 -- "taken" --> B_80007a7ec
    B_80007a7e0 -- "fallthrough" --> B_80007a7e4
    B_80007a7e4 -- "taken" --> B_80007a814
    B_80007a7e4 -- "fallthrough" --> B_80007a7ec
    B_80007a7ec --> B_80007a4ec
    B_80007a7f4 -- "taken" --> B_80007a350
    B_80007a7f4 -- "fallthrough" --> B_80007a7f8
    B_80007a7f8 -- "taken" --> B_80007a350
    B_80007a7f8 -- "fallthrough" --> B_80007a800
    B_80007a800 --> B_80007a340
    B_80007a814 --> B_80007a7ec
    %% Path Highlighting
    style B_800079d20 fill:#e8f5e9,stroke:#2e7d32,stroke-width:3px,color:#1b5e20
    style B_800079d58 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800079d60 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800079df4 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800079e18 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800079e28 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800079e38 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800079e5c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800079e6c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800079e74 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800079e80 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800079e8c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80007a084 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80007a08c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80007a0d0 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80007a104 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80007a110 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80007a11c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80007a130 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80007a138 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80007a140 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80007a148 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80007a158 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80007a188 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80007a19c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80007a214 fill:#e1f5fe,stroke:#0288d1,stroke-width:2px,color:#01579b
    style B_80007a23c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80007a48c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80007a4c4 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80007a4c8 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80007a4d4 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80007a4ec fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80007a4f0 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80007a504 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80007a66c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80007a6d8 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80007a714 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80007a71c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80007a720 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80007a72c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80007a740 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80007a744 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80007a768 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80007a76c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80007a778 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80007a7d0 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80007a7d4 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
```

## 3. External Callee Classification (8 total: 7 constant-zero, 0 pointer-alloc, 0 memory-copy, 1 branch-sensitive)

| External Symbol | Classification | Args Read | Longest-Path Return (`X0`) | Alt-Branch Return (`X0`) | Post-Call Analysis |
| :--- | :--- | ---: | :--- | :--- | :--- |
| `f_802ba4060` | `CONSTANT_ZERO` | 2 | `0x0` | `0x1` | Return value X0 unread/overwritten -> constant 0 |
| `f_80007a838` | `CONSTANT_ZERO` | 3 | `0x0` | `0x1` | Return value X0 unread/overwritten -> constant 0 |
| `f_802ba4070` | `CONSTANT_ZERO` | 2 | `0x0` | `0x1` | Return value X0 unread/overwritten -> constant 0 |
| `f_80017c9c8` | **BRANCH_SENSITIVE** | 2 | `0x0` | `0x1` | CBNZ on return register x0 at 0x80007a1c4 |
| `f_800099ce0` | `CONSTANT_ZERO` | 2 | `0x0` | `0x1` | Return value X0 unread/overwritten -> constant 0 |
| `f_802ba3ac0` | `CONSTANT_ZERO` | 2 | `0x0` | `0x1` | Return value X0 unread/overwritten -> constant 0 |
| `f_8027a9c88` | `CONSTANT_ZERO` | 2 | `0x0` | `0x1` | Return value X0 unread/overwritten -> constant 0 |
| `f_80017cbe0` | `CONSTANT_ZERO` | 3 | `0x0` | `0x1` | Return value X0 unread/overwritten -> constant 0 |

## 4. Constraint-Solved Parameters for Maximal Finite & Common Paths

### Function `f_800079d20` (`0x800079d20`) — Solver Backend: `OR-Tools CP-SAT MaxSAT (OPTIMAL) + Native BV Solver`

| Parameter / Attribute | Maximal Finite Path (`path_mode = 0`) | Common Path (`path_mode = 1`) |
| :--- | :--- | :--- |
| **Static ARM64 Instructions** | **274 insns** (46 basic blocks) | **39 insns** (6 basic blocks) |
| **Path Predicates Solved** | 30 branch/switch constraints | 3 branch/switch constraints |
| **`g_stub_branch_policy`** | `0x0` | `0x1` |
| **Entry Register `X0`** | `fbase + 0x1000` | `fbase + 0x1000` |
| **Entry Register `X1`** | `fbase + 0x2000` | `fbase + 0x2000` |
| **Stub Return `f_80007a838` (`X0`)** | `0x0` | `0x0` |
| **Stub Return `f_800099ce0` (`X0`)** | `0x0` | `0x0` |
| **Stub Return `f_80017c9c8` (`X0`)** | `0x0 (policy bit #0=0)` | `0x1 (policy bit #0=1)` |
| **Stub Return `f_80017cbe0` (`X0`)** | `0x0` | `0x0` |
| **Stub Return `f_8027a9c88` (`X0`)** | `0x0` | `0x0` |
| **Stub Return `f_802ba3ac0` (`X0`)** | `0x0` | `0x0` |
| **Stub Return `f_802ba4060` (`X0`)** | `0x0` | `0x0` |
| **Stub Return `f_802ba4070` (`X0`)** | `0x0` | `0x0` |

#### Extracted Maximal-Path Predicate Constraints:

- `0x800079d54: MEM[MEM[GLOBAL+0x80394ba80]+0x0] != NULL (valid 64-bit pointer)`
- `0x800079d5c: X0 eq 0`
- `0x80007a264: MEM[OBJ_ANON+0x0] != NULL (valid 64-bit pointer)`
- `0x800079d74: MEM[MEM[MEM[OBJ_ANON+0x0]+0x0]+0x30] ne 34366074320`
- `0x800079e24: MEM[MEM[MEM[OBJ_ANON+0x0]+0x0]+0x30] ne 34361896524`
- `0x800079e34: MEM[MEM[MEM[OBJ_ANON+0x0]+0x0]+0x30] eq 34361295696`
- `0x800079e70: bit #0 of MEM[MEM[OBJ_ANON+0x0]+0xa8] == 1 -> MEM[MEM[OBJ_ANON+0x0]+0xa8] |= 0x1`
- `0x800079e88: bit #31 of X12 == 0`
- `0x800079eac: X12 hi 8`
- `0x80007a088: MEM[MEM[OBJ_ANON+0x0]+0xb8] ne MEM[MEM[OBJ_ANON+0x0]+0xc4]`
- `0x80007a098: MEM[MEM[OBJ_ANON+0x0]+0xac] ne 0`
- `0x80007a670: MEM[MEM[OBJ_ANON+0x0]+0xac] ne 1`
- `0x80007a718: MEM[MEM[OBJ_ANON+0x0]+0xac] eq 2`
- `0x80007a774: MEM[GLOBAL+0x18] lo MEM[OBJ_ANON+0x18]`
- `0x80007a73c: MEM[OBJ_ANON+0x8] eq MEM[MEM[OBJ_ANON+0x0]+0xc4]`
- `0x80007a7d0: MEM[MEM[OBJ_ANON+0x0]+0xb8] != NULL (valid 64-bit pointer)`
- `0x80007a12c: MEM[MEM[MEM[OBJ_ANON+0x0]+0xc4]+0x0] != NULL (valid 64-bit pointer)`
- `0x80007a13c: MEM[MEM[MEM[OBJ_ANON+0x0]+0xc4]+0x8] != NULL (valid 64-bit pointer)`
- `0x80007a170: MEM[MEM[OBJ_ANON+0x0]+0x80] ne 1`
- `0x80007a198: MEM[OBJ_ANON+0x18] hs 33`
