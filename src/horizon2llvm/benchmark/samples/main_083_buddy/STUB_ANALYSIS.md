# Automated Stub & Static CFG Longest-Path Analysis (`main_083_buddy`)

## 1. Function Static CFG & Path Length Summary

| Function | Entry PC | Static ARM64 Insns | Basic Blocks | Loop Back-Edges | Est. Common Path (ARM64 Insns) | Est. Longest Path (ARM64 Insns) |
| :--- | :--- | ---: | ---: | ---: | ---: | ---: |
| `f_80015f120` | `0x80015f120` | 1188 | 187 | 5 | 113 | 1118 |

## 2. Function Control Flow Graphs (CFGs)

### Function `f_80015f120` (`0x80015f120` – 1188 insns, 187 blocks)

```mermaid
flowchart TD
    B_80015f120["0x80015f120..0x80015f16c\n(19 insns)"]
    B_80015f16c["0x80015f16c..0x80015f188\n(7 insns)"]
    B_80015f188["0x80015f188..0x80015f194\n(3 insns)"]
    B_80015f194["0x80015f194..0x80015f1c0\n(11 insns)"]
    B_80015f1c0["0x80015f1c0..0x80015f1d4\n(5 insns, loop hdr)"]
    B_80015f1d4["0x80015f1d4..0x80015f1dc\n(2 insns)"]
    B_80015f1dc["0x80015f1dc..0x80015f1f4\n(6 insns, loop hdr)"]
    B_80015f1f4["0x80015f1f4..0x80015f1f8\n(1 insns)"]
    B_80015f1f8["0x80015f1f8..0x80015f200\n(2 insns)"]
    B_80015f200["0x80015f200..0x80015f210\n(4 insns)"]
    B_80015f210["0x80015f210..0x80015f214\n(1 insns)"]
    B_80015f214["0x80015f214..0x80015f224\n(4 insns)"]
    B_80015f224["0x80015f224..0x80015f228\n(1 insns)"]
    B_80015f228["0x80015f228..0x80015f238\n(4 insns)"]
    B_80015f238["0x80015f238..0x80015f23c\n(1 insns)"]
    B_80015f23c["0x80015f23c..0x80015f244\n(2 insns)"]
    B_80015f244["0x80015f244..0x80015f250\n(3 insns)"]
    B_80015f250["0x80015f250..0x80015f254\n(1 insns)"]
    B_80015f254["0x80015f254..0x80015f290\n(15 insns)"]
    B_80015f290["0x80015f290..0x80015f2a0\n(4 insns)"]
    B_80015f2a0["0x80015f2a0..0x80015f2c0\n(8 insns)"]
    B_80015f2c0["0x80015f2c0..0x80015f2cc\n(3 insns)"]
    B_80015f2cc["0x80015f2cc..0x80015f2dc\n(4 insns)"]
    B_80015f2dc["0x80015f2dc..0x80015f2e0\n(1 insns)"]
    B_80015f2e0["0x80015f2e0..0x80015f310\n(12 insns)"]
    B_80015f310["0x80015f310..0x80015f338\n(10 insns)"]
    B_80015f338["0x80015f338..0x80015f348\n(4 insns)"]
    B_80015f348["0x80015f348..0x80015f350\n(2 insns)"]
    B_80015f350["0x80015f350..0x80015f364\n(5 insns)"]
    B_80015f364["0x80015f364..0x80015f368\n(1 insns)"]
    B_80015f368["0x80015f368..0x80015f378\n(4 insns)"]
    B_80015f378["0x80015f378..0x80015f388\n(4 insns)"]
    B_80015f388["0x80015f388..0x80015f398\n(4 insns)"]
    B_80015f398["0x80015f398..0x80015f3bc\n(9 insns)"]
    B_80015f3bc["0x80015f3bc..0x80015f3c0\n(1 insns)"]
    B_80015f3c0["0x80015f3c0..0x80015f3c8\n(2 insns)"]
    B_80015f3c8["0x80015f3c8..0x80015f3cc\n(1 insns)"]
    B_80015f3cc["0x80015f3cc..0x80015f3d4\n(2 insns)"]
    B_80015f3d4["0x80015f3d4..0x80015f3ec\n(6 insns)"]
    B_80015f3ec["0x80015f3ec..0x80015f3fc\n(4 insns)"]
    B_80015f3fc["0x80015f3fc..0x80015f400\n(1 insns)"]
    B_80015f400["0x80015f400..0x80015f410\n(4 insns)"]
    B_80015f410["0x80015f410..0x80015f414\n(1 insns)"]
    B_80015f414["0x80015f414..0x80015f428\n(5 insns)"]
    B_80015f428["0x80015f428..0x80015f42c\n(1 insns)"]
    B_80015f42c["0x80015f42c..0x80015f434\n(2 insns)"]
    B_80015f434["0x80015f434..0x80015f43c\n(2 insns)"]
    B_80015f43c["0x80015f43c..0x80015f468\n(11 insns)"]
    B_80015f468["0x80015f468..0x80015f47c\n(5 insns)"]
    B_80015f47c["0x80015f47c..0x80015f4a4\n(10 insns)"]
    B_80015f4a4["0x80015f4a4..0x80015f4c0\n(7 insns)"]
    B_80015f4c0["0x80015f4c0..0x80015f4d0\n(4 insns)"]
    B_80015f4d0["0x80015f4d0..0x80015f4dc\n(3 insns)"]
    B_80015f4dc["0x80015f4dc..0x80015f4e8\n(3 insns)"]
    B_80015f4e8["0x80015f4e8..0x80015f4f4\n(3 insns)"]
    B_80015f4f4["0x80015f4f4..0x80015f4fc\n(2 insns)"]
    B_80015f4fc["0x80015f4fc..0x80015f50c\n(4 insns)"]
    B_80015f50c["0x80015f50c..0x80015f518\n(3 insns)"]
    B_80015f518["0x80015f518..0x80015f528\n(4 insns)"]
    B_80015f528["0x80015f528..0x80015f538\n(4 insns)"]
    B_80015f538["0x80015f538..0x80015f548\n(4 insns)"]
    B_80015f548["0x80015f548..0x80015f558\n(4 insns)"]
    B_80015f558["0x80015f558..0x80015f580\n(10 insns)"]
    B_80015f580["0x80015f580..0x80015f5b8\n(14 insns)"]
    B_80015f5b8["0x80015f5b8..0x80015f5f8\n(16 insns)"]
    B_80015f5f8["0x80015f5f8..0x80015f608\n(4 insns)"]
    B_80015f608["0x80015f608..0x80015f60c\n(1 insns)"]
    B_80015f60c["0x80015f60c..0x80015f61c\n(4 insns)"]
    B_80015f61c["0x80015f61c..0x80015f62c\n(4 insns)"]
    B_80015f62c["0x80015f62c..0x80015f63c\n(4 insns)"]
    B_80015f63c["0x80015f63c..0x80015f64c\n(4 insns)"]
    B_80015f64c["0x80015f64c..0x80015f674\n(10 insns)"]
    B_80015f674["0x80015f674..0x80015f6ac\n(14 insns)"]
    B_80015f6ac["0x80015f6ac..0x80015f6ec\n(16 insns)"]
    B_80015f6ec["0x80015f6ec..0x80015f6fc\n(4 insns)"]
    B_80015f6fc["0x80015f6fc..0x80015f700\n(1 insns)"]
    B_80015f700["0x80015f700..0x80015f710\n(4 insns)"]
    B_80015f710["0x80015f710..0x80015f720\n(4 insns)"]
    B_80015f720["0x80015f720..0x80015f730\n(4 insns)"]
    B_80015f730["0x80015f730..0x80015f740\n(4 insns)"]
    B_80015f740["0x80015f740..0x80015f768\n(10 insns)"]
    B_80015f768["0x80015f768..0x80015f7a0\n(14 insns)"]
    B_80015f7a0["0x80015f7a0..0x80015f7e0\n(16 insns)"]
    B_80015f7e0["0x80015f7e0..0x80015f7f0\n(4 insns)"]
    B_80015f7f0["0x80015f7f0..0x80015f7f4\n(1 insns)"]
    B_80015f7f4["0x80015f7f4..0x80015f804\n(4 insns)"]
    B_80015f804["0x80015f804..0x80015f814\n(4 insns)"]
    B_80015f814["0x80015f814..0x80015f824\n(4 insns)"]
    B_80015f824["0x80015f824..0x80015f834\n(4 insns)"]
    B_80015f834["0x80015f834..0x80015f85c\n(10 insns)"]
    B_80015f85c["0x80015f85c..0x80015f894\n(14 insns)"]
    B_80015f894["0x80015f894..0x80015f8d4\n(16 insns)"]
    B_80015f8d4["0x80015f8d4..0x80015f8e4\n(4 insns)"]
    B_80015f8e4["0x80015f8e4..0x80015f8e8\n(1 insns)"]
    B_80015f8e8["0x80015f8e8..0x80015f8f8\n(4 insns)"]
    B_80015f8f8["0x80015f8f8..0x80015f908\n(4 insns)"]
    B_80015f908["0x80015f908..0x80015f918\n(4 insns)"]
    B_80015f918["0x80015f918..0x80015f928\n(4 insns)"]
    B_80015f928["0x80015f928..0x80015f930\n(2 insns)"]
    B_80015f930["0x80015f930..0x80015f964\n(13 insns)"]
    B_80015f964["0x80015f964..0x80015f968\n(1 insns)"]
    B_80015f968["0x80015f968..0x80015f978\n(4 insns)"]
    B_80015f978["0x80015f978..0x80015f988\n(4 insns)"]
    B_80015f988["0x80015f988..0x80015f990\n(2 insns)"]
    B_80015f990["0x80015f990..0x80015f9a0\n(4 insns)"]
    B_80015f9a0["0x80015f9a0..0x80015f9a4\n(1 insns)"]
    B_80015f9a4["0x80015f9a4..0x80015f9c8\n(9 insns)"]
    B_80015f9c8["0x80015f9c8..0x80015f9d0\n(2 insns, loop hdr)"]
    B_80015f9d0["0x80015f9d0..0x80015f9e8\n(6 insns)"]
    B_80015f9e8["0x80015f9e8..0x80015f9f0\n(2 insns)"]
    B_80015f9f0["0x80015f9f0..0x80015f9fc\n(3 insns)"]
    B_80015f9fc["0x80015f9fc..0x80015fa04\n(2 insns)"]
    B_80015fa04["0x80015fa04..0x80015fa0c\n(2 insns)"]
    B_80015fa0c["0x80015fa0c..0x80015fa1c\n(4 insns)"]
    B_80015fa1c["0x80015fa1c..0x80015fa24\n(2 insns)"]
    B_80015fa24["0x80015fa24..0x80015fa2c\n(2 insns)"]
    B_80015fa2c["0x80015fa2c..0x80015fa4c\n(8 insns)"]
    B_80015fa4c["0x80015fa4c..0x80015fa68\n(7 insns)"]
    B_80015fa68["0x80015fa68..0x80015fa84\n(7 insns, switch)"]
    B_80015fa84["0x80015fa84..0x80015fa90\n(3 insns)"]
    B_80015fa90["0x80015fa90..0x80015fa9c\n(3 insns)"]
    B_80015fa9c["0x80015fa9c..0x80015faa4\n(2 insns)"]
    B_80015faa4["0x80015faa4..0x80015fab8\n(5 insns)"]
    B_80015fab8["0x80015fab8..0x80015fae4\n(11 insns)"]
    B_80015fae4["0x80015fae4..0x80015fb04\n(8 insns)"]
    B_80015fb04["0x80015fb04..0x80015fb24\n(8 insns)"]
    B_80015fb24["0x80015fb24..0x80015fb44\n(8 insns)"]
    B_80015fb44["0x80015fb44..0x80015fba4\n(24 insns)"]
    B_80015fba4["0x80015fba4..0x80015fbac\n(2 insns)"]
    B_80015fbac["0x80015fbac..0x80015fbfc\n(20 insns)"]
    B_80015fbfc["0x80015fbfc..0x80015fc58\n(23 insns)"]
    B_80015fc58["0x80015fc58..0x80015fc5c\n(1 insns)"]
    B_80015fc5c["0x80015fc5c..0x80015fc70\n(5 insns)"]
    B_80015fc70["0x80015fc70..0x80015fccc\n(23 insns)"]
    B_80015fccc["0x80015fccc..0x80015fcec\n(8 insns)"]
    B_80015fcec["0x80015fcec..0x80015fd1c\n(12 insns)"]
    B_80015fd1c["0x80015fd1c..0x80015fd44\n(10 insns)"]
    B_80015fd44["0x80015fd44..0x80015fd7c\n(14 insns)"]
    B_80015fd7c["0x80015fd7c..0x80015fda4\n(10 insns)"]
    B_80015fda4["0x80015fda4..0x80015fddc\n(14 insns)"]
    B_80015fddc["0x80015fddc..0x80015fe04\n(10 insns)"]
    B_80015fe04["0x80015fe04..0x80015fe3c\n(14 insns)"]
    B_80015fe3c["0x80015fe3c..0x80015fe64\n(10 insns)"]
    B_80015fe64["0x80015fe64..0x80015fe9c\n(14 insns)"]
    B_80015fe9c["0x80015fe9c..0x80015fec4\n(10 insns)"]
    B_80015fec4["0x80015fec4..0x80015fefc\n(14 insns)"]
    B_80015fefc["0x80015fefc..0x80015ff24\n(10 insns)"]
    B_80015ff24["0x80015ff24..0x80015ff5c\n(14 insns)"]
    B_80015ff5c["0x80015ff5c..0x80015ff84\n(10 insns)"]
    B_80015ff84["0x80015ff84..0x80015ffbc\n(14 insns)"]
    B_80015ffbc["0x80015ffbc..0x80015ffe4\n(10 insns)"]
    B_80015ffe4["0x80015ffe4..0x80016001c\n(14 insns)"]
    B_80016001c["0x80016001c..0x800160044\n(10 insns)"]
    B_800160044["0x800160044..0x80016007c\n(14 insns)"]
    B_80016007c["0x80016007c..0x8001600a4\n(10 insns)"]
    B_8001600a4["0x8001600a4..0x8001600dc\n(14 insns)"]
    B_8001600dc["0x8001600dc..0x800160104\n(10 insns)"]
    B_800160104["0x800160104..0x80016013c\n(14 insns)"]
    B_80016013c["0x80016013c..0x800160164\n(10 insns)"]
    B_800160164["0x800160164..0x80016019c\n(14 insns)"]
    B_80016019c["0x80016019c..0x8001601bc\n(8 insns)"]
    B_8001601bc["0x8001601bc..0x8001601ec\n(12 insns)"]
    B_8001601ec["0x8001601ec..0x80016020c\n(8 insns)"]
    B_80016020c["0x80016020c..0x80016023c\n(12 insns)"]
    B_80016023c["0x80016023c..0x80016025c\n(8 insns)"]
    B_80016025c["0x80016025c..0x80016028c\n(12 insns)"]
    B_80016028c["0x80016028c..0x8001602b0\n(9 insns)"]
    B_8001602b0["0x8001602b0..0x8001602b8\n(2 insns)"]
    B_8001602b8["0x8001602b8..0x8001602f0\n(14 insns)"]
    B_8001602f0["0x8001602f0..0x8001602f8\n(2 insns)"]
    B_8001602f8["0x8001602f8..0x800160300\n(2 insns)"]
    B_800160300["0x800160300..0x800160308\n(2 insns)"]
    B_800160308["0x800160308..0x800160318\n(4 insns)"]
    B_800160318["0x800160318..0x800160328\n(4 insns, loop hdr)"]
    B_800160328["0x800160328..0x800160330\n(2 insns)"]
    B_800160330["0x800160330..0x80016033c\n(3 insns)"]
    B_80016033c["0x80016033c..0x800160340\n(1 insns)"]
    B_800160340["0x800160340..0x800160348\n(2 insns)"]
    B_800160348["0x800160348..0x800160350\n(2 insns)"]
    B_800160350["0x800160350..0x800160358\n(2 insns)"]
    B_800160358["0x800160358..0x800160378\n(8 insns)"]
    B_800160378["0x800160378..0x800160384\n(3 insns)"]
    B_800160384["0x800160384..0x800160394\n(4 insns, loop hdr)"]
    B_800160394["0x800160394..0x800160398\n(1 insns)"]
    B_800160398["0x800160398..0x8001603a0\n(2 insns)"]
    B_8001603a0["0x8001603a0..0x8001603ac\n(3 insns)"]
    B_8001603ac["0x8001603ac..0x8001603b0\n(1 insns)"]
    B_80015f120 -- "taken" --> B_80015fb24
    B_80015f120 -- "fallthrough" --> B_80015f16c
    B_80015f16c --> B_80015f188
    B_80015f188 -- "taken" --> B_80015f250
    B_80015f188 -- "fallthrough" --> B_80015f194
    B_80015f194 --> B_80015f1c0
    B_80015f1c0 -- "taken" --> B_80015f2a0
    B_80015f1c0 -- "fallthrough" --> B_80015f1d4
    B_80015f1d4 --> B_80015f1dc
    B_80015f1dc -- "taken" --> B_80015f244
    B_80015f1dc -- "fallthrough" --> B_80015f1f4
    B_80015f1f4 -- "taken" --> B_80015f2a0
    B_80015f1f4 -- "fallthrough" --> B_80015f1f8
    B_80015f1f8 -- "taken" --> B_80015f244
    B_80015f1f8 -- "fallthrough" --> B_80015f200
    B_80015f200 -- "taken" --> B_80015f244
    B_80015f200 -- "fallthrough" --> B_80015f210
    B_80015f210 -- "taken" --> B_80015f2a0
    B_80015f210 -- "fallthrough" --> B_80015f214
    B_80015f214 -- "taken" --> B_80015f244
    B_80015f214 -- "fallthrough" --> B_80015f224
    B_80015f224 -- "taken" --> B_80015f2a0
    B_80015f224 -- "fallthrough" --> B_80015f228
    B_80015f228 -- "taken" --> B_80015f244
    B_80015f228 -- "fallthrough" --> B_80015f238
    B_80015f238 -- "taken" --> B_80015f2a0
    B_80015f238 -- "fallthrough" --> B_80015f23c
    B_80015f23c -. "loop back" .-> B_80015f1dc
    B_80015f244 -. "loop back" .-> B_80015f1c0
    B_80015f244 -- "fallthrough" --> B_80015f250
    B_80015f250 -- "taken" --> B_80015f290
    B_80015f250 -- "fallthrough" --> B_80015f254
    B_80015f254 --> B_80015f290
    B_80015f290 --> B_80015fa24
    B_80015f2a0 -- "taken" --> B_80015f4dc
    B_80015f2a0 -- "fallthrough" --> B_80015f2c0
    B_80015f2c0 -- "taken" --> B_80015f338
    B_80015f2c0 -- "fallthrough" --> B_80015f2cc
    B_80015f2cc -- "taken" --> B_80015f2e0
    B_80015f2cc -- "fallthrough" --> B_80015f2dc
    B_80015f2dc -- "taken" --> B_80015f988
    B_80015f2dc -- "fallthrough" --> B_80015f2e0
    B_80015f2e0 -- "taken" --> B_80015f410
    B_80015f2e0 -- "fallthrough" --> B_80015f310
    B_80015f310 --> EXIT_80015f310["return"]
    B_80015f338 -- "taken" --> B_80015fa90
    B_80015f338 -- "fallthrough" --> B_80015f348
    B_80015f348 --> B_80015f350
    B_80015f350 -- "taken" --> B_80015fae4
    B_80015f350 -- "fallthrough" --> B_80015f364
    B_80015f364 -- "taken" --> B_80015fb44
    B_80015f364 -- "fallthrough" --> B_80015f368
    B_80015f368 -- "taken" --> B_80015fbac
    B_80015f368 -- "fallthrough" --> B_80015f378
    B_80015f378 -- "taken" --> B_80015fbfc
    B_80015f378 -- "fallthrough" --> B_80015f388
    B_80015f388 -- "taken" --> B_80015fc5c
    B_80015f388 -- "fallthrough" --> B_80015f398
    B_80015f398 --> B_80015f3bc
    B_80015f3bc -- "taken" --> B_80015fa2c
    B_80015f3bc -- "fallthrough" --> B_80015f3c0
    B_80015f3c0 --> B_80015f3c8
    B_80015f3c8 --> B_80015f3cc
    B_80015f3cc -- "taken" --> B_80015f400
    B_80015f3cc -- "fallthrough" --> B_80015f3d4
    B_80015f3d4 -- "taken" --> B_80015f3fc
    B_80015f3d4 -- "fallthrough" --> B_80015f3ec
    B_80015f3ec -- "taken" --> B_80015f968
    B_80015f3ec -- "fallthrough" --> B_80015f3fc
    B_80015f3fc --> B_80015f400
    B_80015f400 -- "taken" --> B_80015f310
    B_80015f400 -- "fallthrough" --> B_80015f410
    B_80015f410 --> B_80015f414
    B_80015f414 -- "taken" --> B_800160300
    B_80015f414 -- "fallthrough" --> B_80015f428
    B_80015f428 -- "taken" --> B_800160300
    B_80015f428 -- "fallthrough" --> B_80015f42c
    B_80015f42c -- "taken" --> B_80015f43c
    B_80015f42c -- "fallthrough" --> B_80015f434
    B_80015f434 --> B_80015f43c
    B_80015f43c -- "taken" --> B_80015f47c
    B_80015f43c -- "fallthrough" --> B_80015f468
    B_80015f468 --> B_80015f47c
    B_80015f47c -- "taken" --> B_800160350
    B_80015f47c -- "fallthrough" --> B_80015f4a4
    B_80015f4a4 -- "taken" --> B_800160350
    B_80015f4a4 -- "fallthrough" --> B_80015f4c0
    B_80015f4c0 --> B_80015f4d0
    B_80015f4d0 --> B_80015fa24
    B_80015f4dc -- "taken" --> B_80015f928
    B_80015f4dc -- "fallthrough" --> B_80015f4e8
    B_80015f4e8 -- "taken" --> B_80015fc70
    B_80015f4e8 -- "fallthrough" --> B_80015f4f4
    B_80015f4f4 --> B_80015f4fc
    B_80015f4fc -- "taken" --> B_80015fccc
    B_80015f4fc -- "fallthrough" --> B_80015f50c
    B_80015f50c -- "taken" --> B_80015f5f8
    B_80015f50c -- "fallthrough" --> B_80015f518
    B_80015f518 -- "taken" --> B_80015f5b8
    B_80015f518 -- "fallthrough" --> B_80015f528
    B_80015f528 -- "taken" --> B_80015fe9c
    B_80015f528 -- "fallthrough" --> B_80015f538
    B_80015f538 -- "taken" --> B_80015fefc
    B_80015f538 -- "fallthrough" --> B_80015f548
    B_80015f548 -- "taken" --> B_80015f5f8
    B_80015f548 -- "fallthrough" --> B_80015f558
    B_80015f558 -- "taken" --> B_80015f5f8
    B_80015f558 -- "fallthrough" --> B_80015f580
    B_80015f580 --> B_80015f5f8
    B_80015f5b8 -- "taken" --> B_80015f2cc
    B_80015f5b8 -- "fallthrough" --> B_80015f5f8
    B_80015f5f8 -- "taken" --> B_80015fd1c
    B_80015f5f8 -- "fallthrough" --> B_80015f608
    B_80015f608 -- "taken" --> B_80015f6ec
    B_80015f608 -- "fallthrough" --> B_80015f60c
    B_80015f60c -- "taken" --> B_80015f6ac
    B_80015f60c -- "fallthrough" --> B_80015f61c
    B_80015f61c -- "taken" --> B_80015ff5c
    B_80015f61c -- "fallthrough" --> B_80015f62c
    B_80015f62c -- "taken" --> B_80015ffbc
    B_80015f62c -- "fallthrough" --> B_80015f63c
    B_80015f63c -- "taken" --> B_80015f6ec
    B_80015f63c -- "fallthrough" --> B_80015f64c
    B_80015f64c -- "taken" --> B_80015f6ec
    B_80015f64c -- "fallthrough" --> B_80015f674
    B_80015f674 --> B_80015f6ec
    B_80015f6ac -- "taken" --> B_80015f2cc
    B_80015f6ac -- "fallthrough" --> B_80015f6ec
    B_80015f6ec -- "taken" --> B_80015fd7c
    B_80015f6ec -- "fallthrough" --> B_80015f6fc
    B_80015f6fc -- "taken" --> B_80015f7e0
    B_80015f6fc -- "fallthrough" --> B_80015f700
    B_80015f700 -- "taken" --> B_80015f7a0
    B_80015f700 -- "fallthrough" --> B_80015f710
    B_80015f710 -- "taken" --> B_8001600dc
    B_80015f710 -- "fallthrough" --> B_80015f720
    B_80015f720 -- "taken" --> B_80016013c
    B_80015f720 -- "fallthrough" --> B_80015f730
    B_80015f730 -- "taken" --> B_80015f7e0
    B_80015f730 -- "fallthrough" --> B_80015f740
    B_80015f740 -- "taken" --> B_80015f7e0
    B_80015f740 -- "fallthrough" --> B_80015f768
    B_80015f768 --> B_80015f7e0
    B_80015f7a0 -- "taken" --> B_80015f2cc
    B_80015f7a0 -- "fallthrough" --> B_80015f7e0
    B_80015f7e0 -- "taken" --> B_80015fddc
    B_80015f7e0 -- "fallthrough" --> B_80015f7f0
    B_80015f7f0 -- "taken" --> B_80015f8d4
    B_80015f7f0 -- "fallthrough" --> B_80015f7f4
    B_80015f7f4 -- "taken" --> B_80015f894
    B_80015f7f4 -- "fallthrough" --> B_80015f804
    B_80015f804 -- "taken" --> B_80016001c
    B_80015f804 -- "fallthrough" --> B_80015f814
    B_80015f814 -- "taken" --> B_80016007c
    B_80015f814 -- "fallthrough" --> B_80015f824
    B_80015f824 -- "taken" --> B_80015f8d4
    B_80015f824 -- "fallthrough" --> B_80015f834
    B_80015f834 -- "taken" --> B_80015f8d4
    B_80015f834 -- "fallthrough" --> B_80015f85c
    B_80015f85c --> B_80015f8d4
    B_80015f894 -- "taken" --> B_80015f2cc
    B_80015f894 -- "fallthrough" --> B_80015f8d4
    B_80015f8d4 -- "taken" --> B_80015fe3c
    B_80015f8d4 -- "fallthrough" --> B_80015f8e4
    B_80015f8e4 -- "taken" --> B_80015f928
    B_80015f8e4 -- "fallthrough" --> B_80015f8e8
    B_80015f8e8 -- "taken" --> B_80015f930
    B_80015f8e8 -- "fallthrough" --> B_80015f8f8
    B_80015f8f8 -- "taken" --> B_80016019c
    B_80015f8f8 -- "fallthrough" --> B_80015f908
    B_80015f908 -- "taken" --> B_8001601ec
    B_80015f908 -- "fallthrough" --> B_80015f918
    B_80015f918 -- "taken" --> B_80016023c
    B_80015f918 -- "fallthrough" --> B_80015f928
    B_80015f928 --> B_80015f2c0
    B_80015f930 -- "taken" --> B_80015f2cc
    B_80015f930 -- "fallthrough" --> B_80015f964
    B_80015f964 --> B_80015f928
    B_80015f968 -- "taken" --> B_80015f3fc
    B_80015f968 -- "fallthrough" --> B_80015f978
    B_80015f978 --> B_80015f400
    B_80015f988 --> B_80015f990
    B_80015f990 -- "taken" --> B_80015f350
    B_80015f990 -- "fallthrough" --> B_80015f9a0
    B_80015f9a0 -- "taken" --> B_80015f350
    B_80015f9a0 -- "fallthrough" --> B_80015f9a4
    B_80015f9a4 -- "taken" --> B_8001602f0
    B_80015f9a4 -- "fallthrough" --> B_80015f9c8
    B_80015f9c8 -- "taken" --> B_80015fa0c
    B_80015f9c8 -- "fallthrough" --> B_80015f9d0
    B_80015f9d0 -- "taken" --> B_80016028c
    B_80015f9d0 -- "fallthrough" --> B_80015f9e8
    B_80015f9e8 -- "taken" --> B_8001602b0
    B_80015f9e8 -- "fallthrough" --> B_80015f9f0
    B_80015f9f0 -- "taken" --> B_8001602b8
    B_80015f9f0 -- "fallthrough" --> B_80015f9fc
    B_80015f9fc --> B_80015fa04
    B_80015fa04 -- "taken" --> B_8001602f8
    B_80015fa04 -- "fallthrough" --> B_80015fa0c
    B_80015fa0c -- "taken" --> B_8001602f8
    B_80015fa0c -- "fallthrough" --> B_80015fa1c
    B_80015fa1c --> B_80015fa24
    B_80015fa24 --> B_80015f310
    B_80015fa2c -- "taken" --> B_80015fa9c
    B_80015fa2c -- "fallthrough" --> B_80015fa4c
    B_80015fa4c -- "taken" --> B_80015fa9c
    B_80015fa4c -- "fallthrough" --> B_80015fa68
    B_80015fa68 -- "case" --> B_80015fa84
    B_80015fa68 -- "case" --> B_80015faa4
    B_80015fa68 -- "case" --> B_80015fab8
    B_80015fa68 -- "case" --> B_800160358
    B_80015fa84 --> B_80015f3c8
    B_80015fa90 --> B_80015f990
    B_80015fa9c --> B_80015f3cc
    B_80015faa4 --> B_80015f3c8
    B_80015fab8 --> B_80015f3cc
    B_80015fae4 -- "taken" --> B_80015f364
    B_80015fae4 -- "fallthrough" --> B_80015fb04
    B_80015fb04 --> B_80015f364
    B_80015fb24 --> B_80015f188
    B_80015fb44 -- "taken" --> B_80015f310
    B_80015fb44 -- "fallthrough" --> B_80015fba4
    B_80015fba4 --> B_80015f414
    B_80015fbac --> B_80015fbfc
    B_80015fbfc -- "taken" --> B_80015f310
    B_80015fbfc -- "fallthrough" --> B_80015fc58
    B_80015fc58 --> B_80015f414
    B_80015fc5c --> B_80015f3bc
    B_80015fc70 --> B_80015f4fc
    B_80015fccc -- "taken" --> B_80015f50c
    B_80015fccc -- "fallthrough" --> B_80015fcec
    B_80015fcec --> B_80015f50c
    B_80015fd1c -- "taken" --> B_80015f608
    B_80015fd1c -- "fallthrough" --> B_80015fd44
    B_80015fd44 --> B_80015f608
    B_80015fd7c -- "taken" --> B_80015f6fc
    B_80015fd7c -- "fallthrough" --> B_80015fda4
    B_80015fda4 --> B_80015f6fc
    B_80015fddc -- "taken" --> B_80015f7f0
    B_80015fddc -- "fallthrough" --> B_80015fe04
    B_80015fe04 --> B_80015f7f0
    B_80015fe3c -- "taken" --> B_80015f8e4
    B_80015fe3c -- "fallthrough" --> B_80015fe64
    B_80015fe64 --> B_80015f8e4
    B_80015fe9c -- "taken" --> B_80015f538
    B_80015fe9c -- "fallthrough" --> B_80015fec4
    B_80015fec4 --> B_80015f538
    B_80015fefc -- "taken" --> B_80015f548
    B_80015fefc -- "fallthrough" --> B_80015ff24
    B_80015ff24 --> B_80015f548
    B_80015ff5c -- "taken" --> B_80015f62c
    B_80015ff5c -- "fallthrough" --> B_80015ff84
    B_80015ff84 --> B_80015f62c
    B_80015ffbc -- "taken" --> B_80015f63c
    B_80015ffbc -- "fallthrough" --> B_80015ffe4
    B_80015ffe4 --> B_80015f63c
    B_80016001c -- "taken" --> B_80015f814
    B_80016001c -- "fallthrough" --> B_800160044
    B_800160044 --> B_80015f814
    B_80016007c -- "taken" --> B_80015f824
    B_80016007c -- "fallthrough" --> B_8001600a4
    B_8001600a4 --> B_80015f824
    B_8001600dc -- "taken" --> B_80015f720
    B_8001600dc -- "fallthrough" --> B_800160104
    B_800160104 --> B_80015f720
    B_80016013c -- "taken" --> B_80015f730
    B_80016013c -- "fallthrough" --> B_800160164
    B_800160164 --> B_80015f730
    B_80016019c -- "taken" --> B_80015f908
    B_80016019c -- "fallthrough" --> B_8001601bc
    B_8001601bc --> B_80015f908
    B_8001601ec -- "taken" --> B_80015f918
    B_8001601ec -- "fallthrough" --> B_80016020c
    B_80016020c --> B_80015f918
    B_80016023c -- "taken" --> B_80015f928
    B_80016023c -- "fallthrough" --> B_80016025c
    B_80016025c --> B_80015f928
    B_80016028c -. "loop back" .-> B_80015f9c8
    B_8001602b0 -- "taken" --> B_80015fa04
    B_8001602b0 -- "fallthrough" --> B_8001602b8
    B_8001602b8 --> B_8001602f0
    B_8001602f0 --> B_8001602f8
    B_8001602f8 --> B_80015fa24
    B_800160300 -- "taken" --> B_80015f310
    B_800160300 -- "fallthrough" --> B_800160308
    B_800160308 --> B_800160318
    B_800160318 -- "taken" --> B_8001603a0
    B_800160318 -- "fallthrough" --> B_800160328
    B_800160328 -- "taken" --> B_8001603a0
    B_800160328 -- "fallthrough" --> B_800160330
    B_800160330 -- "taken" --> B_800160378
    B_800160330 -- "fallthrough" --> B_80016033c
    B_80016033c -- "taken" --> B_800160348
    B_80016033c -- "fallthrough" --> B_800160340
    B_800160340 --> B_800160348
    B_800160348 --> B_80015fa24
    B_800160350 --> B_80015f4d0
    B_800160358 --> B_80015f3cc
    B_800160378 --> B_800160384
    B_800160384 -- "taken" --> B_8001603a0
    B_800160384 -- "fallthrough" --> B_800160394
    B_800160394 -- "taken" --> B_80016033c
    B_800160394 -- "fallthrough" --> B_800160398
    B_800160398 -. "loop back" .-> B_800160384
    B_800160398 -- "fallthrough" --> B_8001603a0
    B_8001603a0 -. "loop back" .-> B_800160318
    B_8001603a0 -- "fallthrough" --> B_8001603ac
    B_8001603ac --> B_80015f310
    %% Path Highlighting
    style B_80015f120 fill:#e8f5e9,stroke:#2e7d32,stroke-width:3px,color:#1b5e20
    style B_80015f16c fill:#e1f5fe,stroke:#0288d1,stroke-width:2px,color:#01579b
    style B_80015f188 fill:#e8f5e9,stroke:#2e7d32,stroke-width:3px,color:#1b5e20
    style B_80015f194 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80015f1c0 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80015f1d4 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80015f1dc fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80015f1f4 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80015f1f8 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80015f200 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80015f210 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80015f214 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80015f224 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80015f228 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80015f238 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80015f250 fill:#e1f5fe,stroke:#0288d1,stroke-width:2px,color:#01579b
    style B_80015f290 fill:#e1f5fe,stroke:#0288d1,stroke-width:2px,color:#01579b
    style B_80015f2a0 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80015f2c0 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80015f310 fill:#e8f5e9,stroke:#2e7d32,stroke-width:3px,color:#1b5e20
    style B_80015f338 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80015f350 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80015f364 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80015f368 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80015f378 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80015f388 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80015f398 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80015f3bc fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80015f3cc fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80015f3d4 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80015f3ec fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80015f400 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80015f410 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80015f414 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80015f428 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80015f4dc fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80015f4e8 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80015f4fc fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80015f50c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80015f518 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80015f528 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80015f538 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80015f548 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80015f558 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80015f580 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80015f5f8 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80015f608 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80015f60c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80015f61c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80015f62c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80015f63c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80015f64c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80015f674 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80015f6ec fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80015f6fc fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80015f700 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80015f710 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80015f720 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80015f730 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80015f740 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80015f768 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80015f7e0 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80015f7f0 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80015f7f4 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80015f804 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80015f814 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80015f824 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80015f834 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80015f85c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80015f8d4 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80015f8e4 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80015f8e8 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80015f8f8 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80015f908 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80015f918 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80015f928 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80015f968 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80015f978 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80015f990 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80015f9a0 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80015fa24 fill:#e8f5e9,stroke:#2e7d32,stroke-width:3px,color:#1b5e20
    style B_80015fa2c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80015fa4c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80015fa68 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80015fa90 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80015fab8 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80015fae4 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80015fb04 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80015fb24 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80015fc70 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80015fccc fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80015fcec fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80015fd1c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80015fd44 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80015fd7c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80015fda4 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80015fddc fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80015fe04 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80015fe3c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80015fe64 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80015fe9c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80015fec4 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80015fefc fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80015ff24 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80015ff5c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80015ff84 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80015ffbc fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80015ffe4 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80016001c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800160044 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80016007c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001600a4 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001600dc fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800160104 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80016013c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800160164 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80016019c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001601bc fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001601ec fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80016020c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80016023c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80016025c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800160300 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800160308 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800160318 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800160328 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800160330 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80016033c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800160340 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800160348 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800160378 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800160384 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800160394 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
```

## 3. External Callee Classification (3 total: 2 constant-zero, 0 pointer-alloc, 0 memory-copy, 1 branch-sensitive)

| External Symbol | Classification | Args Read | Longest-Path Return (`X0`) | Alt-Branch Return (`X0`) | Post-Call Analysis |
| :--- | :--- | ---: | :--- | :--- | :--- |
| `f_800099860` | `CONSTANT_ZERO` | 3 | `0x0` | `0x1` | Return value X0 unread/overwritten -> constant 0 |
| `f_802ba39a0` | **BRANCH_SENSITIVE** | 5 | `0x1` | `0x0` | CBZ on return register w0 at 0x800160258 |
| `f_802ba39b0` | `CONSTANT_ZERO` | 2 | `0x0` | `0x1` | Return value X0 unread/overwritten -> constant 0 |
