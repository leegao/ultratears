# Automated Stub & Static CFG Longest-Path Analysis (`main_435_dispatch`)

## 1. Function Static CFG & Path Length Summary

| Function | Entry PC | Static ARM64 Insns | Basic Blocks | Loop Back-Edges | Est. Common Path (ARM64 Insns) | Est. Longest Path (ARM64 Insns) | CP-SAT Verified Longest |
| :--- | :--- | ---: | ---: | ---: | ---: | ---: | ---: |
| `f_8007821c0` | `0x8007821c0` | 4049 | 243 | 39 | 5776 | 7264 | 7264 |

## 2. Function Control Flow Graphs (CFGs)

### Function `f_8007821c0` (`0x8007821c0` – 4049 insns, 243 blocks)

```mermaid
flowchart TD
    B_8007821c0["0x8007821c0..0x800783f04\n(1873 insns)"]
    B_800783f04["0x800783f04..0x800783f10\n(3 insns, loop hdr)"]
    B_800783f10["0x800783f10..0x800783f2c\n(7 insns)"]
    B_800783f2c["0x800783f2c..0x800783f30\n(1 insns)"]
    B_800783f30["0x800783f30..0x800783f40\n(4 insns)"]
    B_800783f40["0x800783f40..0x800783f4c\n(3 insns, loop hdr)"]
    B_800783f4c["0x800783f4c..0x800783f50\n(1 insns)"]
    B_800783f50["0x800783f50..0x800783f54\n(1 insns)"]
    B_800783f54["0x800783f54..0x800783f58\n(1 insns)"]
    B_800783f58["0x800783f58..0x800783f64\n(3 insns)"]
    B_800783f64["0x800783f64..0x800783f94\n(12 insns)"]
    B_800783f94["0x800783f94..0x800783fa0\n(3 insns)"]
    B_800783fa0["0x800783fa0..0x800783fac\n(3 insns, loop hdr)"]
    B_800783fac["0x800783fac..0x800783fb0\n(1 insns)"]
    B_800783fb0["0x800783fb0..0x800783fe4\n(13 insns)"]
    B_800783fe4["0x800783fe4..0x800783ff4\n(4 insns)"]
    B_800783ff4["0x800783ff4..0x800783ff8\n(1 insns)"]
    B_800783ff8["0x800783ff8..0x800784000\n(2 insns)"]
    B_800784000["0x800784000..0x800784014\n(5 insns)"]
    B_800784014["0x800784014..0x800784020\n(3 insns)"]
    B_800784020["0x800784020..0x80078402c\n(3 insns, loop hdr)"]
    B_80078402c["0x80078402c..0x800784030\n(1 insns)"]
    B_800784030["0x800784030..0x800784040\n(4 insns)"]
    B_800784040["0x800784040..0x800784044\n(1 insns)"]
    B_800784044["0x800784044..0x80078404c\n(2 insns)"]
    B_80078404c["0x80078404c..0x800784058\n(3 insns, loop hdr)"]
    B_800784058["0x800784058..0x80078405c\n(1 insns)"]
    B_80078405c["0x80078405c..0x80078408c\n(12 insns)"]
    B_80078408c["0x80078408c..0x800784dcc\n(848 insns)"]
    B_800784dcc["0x800784dcc..0x800784dd4\n(2 insns)"]
    B_800784dd4["0x800784dd4..0x800784de0\n(3 insns, loop hdr)"]
    B_800784de0["0x800784de0..0x800784de4\n(1 insns)"]
    B_800784de4["0x800784de4..0x800784e60\n(31 insns)"]
    B_800784e60["0x800784e60..0x800784e68\n(2 insns)"]
    B_800784e68["0x800784e68..0x800784e74\n(3 insns, loop hdr)"]
    B_800784e74["0x800784e74..0x800784e78\n(1 insns)"]
    B_800784e78["0x800784e78..0x800784ee4\n(27 insns)"]
    B_800784ee4["0x800784ee4..0x800784ef0\n(3 insns)"]
    B_800784ef0["0x800784ef0..0x800784efc\n(3 insns, loop hdr)"]
    B_800784efc["0x800784efc..0x800784f00\n(1 insns)"]
    B_800784f00["0x800784f00..0x800784f6c\n(27 insns)"]
    B_800784f6c["0x800784f6c..0x800784f78\n(3 insns)"]
    B_800784f78["0x800784f78..0x800784f84\n(3 insns, loop hdr)"]
    B_800784f84["0x800784f84..0x800784f88\n(1 insns)"]
    B_800784f88["0x800784f88..0x8007850c0\n(78 insns)"]
    B_8007850c0["0x8007850c0..0x8007850cc\n(3 insns)"]
    B_8007850cc["0x8007850cc..0x8007850d8\n(3 insns, loop hdr)"]
    B_8007850d8["0x8007850d8..0x8007850dc\n(1 insns)"]
    B_8007850dc["0x8007850dc..0x800785144\n(26 insns)"]
    B_800785144["0x800785144..0x80078514c\n(2 insns)"]
    B_80078514c["0x80078514c..0x800785158\n(3 insns, loop hdr)"]
    B_800785158["0x800785158..0x80078515c\n(1 insns)"]
    B_80078515c["0x80078515c..0x8007851c4\n(26 insns)"]
    B_8007851c4["0x8007851c4..0x8007851cc\n(2 insns)"]
    B_8007851cc["0x8007851cc..0x8007851d8\n(3 insns, loop hdr)"]
    B_8007851d8["0x8007851d8..0x8007851dc\n(1 insns)"]
    B_8007851dc["0x8007851dc..0x800785244\n(26 insns)"]
    B_800785244["0x800785244..0x80078524c\n(2 insns)"]
    B_80078524c["0x80078524c..0x800785258\n(3 insns, loop hdr)"]
    B_800785258["0x800785258..0x80078525c\n(1 insns)"]
    B_80078525c["0x80078525c..0x800785388\n(75 insns)"]
    B_800785388["0x800785388..0x800785398\n(4 insns)"]
    B_800785398["0x800785398..0x8007853a4\n(3 insns, loop hdr)"]
    B_8007853a4["0x8007853a4..0x8007853a8\n(1 insns)"]
    B_8007853a8["0x8007853a8..0x800785410\n(26 insns)"]
    B_800785410["0x800785410..0x800785418\n(2 insns)"]
    B_800785418["0x800785418..0x800785424\n(3 insns, loop hdr)"]
    B_800785424["0x800785424..0x800785428\n(1 insns)"]
    B_800785428["0x800785428..0x800785498\n(28 insns)"]
    B_800785498["0x800785498..0x8007854a0\n(2 insns)"]
    B_8007854a0["0x8007854a0..0x8007854ac\n(3 insns, loop hdr)"]
    B_8007854ac["0x8007854ac..0x8007854b0\n(1 insns)"]
    B_8007854b0["0x8007854b0..0x800785520\n(28 insns)"]
    B_800785520["0x800785520..0x800785528\n(2 insns)"]
    B_800785528["0x800785528..0x800785534\n(3 insns, loop hdr)"]
    B_800785534["0x800785534..0x800785538\n(1 insns)"]
    B_800785538["0x800785538..0x8007855a8\n(28 insns)"]
    B_8007855a8["0x8007855a8..0x8007855b0\n(2 insns)"]
    B_8007855b0["0x8007855b0..0x8007855bc\n(3 insns, loop hdr)"]
    B_8007855bc["0x8007855bc..0x8007855c0\n(1 insns)"]
    B_8007855c0["0x8007855c0..0x800785630\n(28 insns)"]
    B_800785630["0x800785630..0x800785638\n(2 insns)"]
    B_800785638["0x800785638..0x800785644\n(3 insns, loop hdr)"]
    B_800785644["0x800785644..0x800785648\n(1 insns)"]
    B_800785648["0x800785648..0x8007856b4\n(27 insns)"]
    B_8007856b4["0x8007856b4..0x8007856bc\n(2 insns)"]
    B_8007856bc["0x8007856bc..0x8007856c8\n(3 insns, loop hdr)"]
    B_8007856c8["0x8007856c8..0x8007856cc\n(1 insns)"]
    B_8007856cc["0x8007856cc..0x800785738\n(27 insns)"]
    B_800785738["0x800785738..0x800785740\n(2 insns)"]
    B_800785740["0x800785740..0x80078574c\n(3 insns, loop hdr)"]
    B_80078574c["0x80078574c..0x800785750\n(1 insns)"]
    B_800785750["0x800785750..0x8007857b4\n(25 insns)"]
    B_8007857b4["0x8007857b4..0x8007857bc\n(2 insns)"]
    B_8007857bc["0x8007857bc..0x8007857c8\n(3 insns, loop hdr)"]
    B_8007857c8["0x8007857c8..0x8007857d0\n(2 insns)"]
    B_8007857d0["0x8007857d0..0x800785960\n(100 insns)"]
    B_800785960["0x800785960..0x800785964\n(1 insns)"]
    B_800785964["0x800785964..0x80078596c\n(2 insns)"]
    B_80078596c["0x80078596c..0x800785974\n(2 insns)"]
    B_800785974["0x800785974..0x80078597c\n(2 insns, loop hdr)"]
    B_80078597c["0x80078597c..0x80078598c\n(4 insns)"]
    B_80078598c["0x80078598c..0x8007859a4\n(6 insns)"]
    B_8007859a4["0x8007859a4..0x8007859b0\n(3 insns)"]
    B_8007859b0["0x8007859b0..0x8007859b4\n(1 insns)"]
    B_8007859b4["0x8007859b4..0x800785aa8\n(61 insns)"]
    B_800785aa8["0x800785aa8..0x800785aac\n(1 insns)"]
    B_800785aac["0x800785aac..0x800785ab4\n(2 insns)"]
    B_800785ab4["0x800785ab4..0x800785abc\n(2 insns)"]
    B_800785abc["0x800785abc..0x800785ac4\n(2 insns, loop hdr)"]
    B_800785ac4["0x800785ac4..0x800785ad4\n(4 insns)"]
    B_800785ad4["0x800785ad4..0x800785aec\n(6 insns)"]
    B_800785aec["0x800785aec..0x800785af8\n(3 insns)"]
    B_800785af8["0x800785af8..0x800785afc\n(1 insns)"]
    B_800785afc["0x800785afc..0x800785b38\n(15 insns)"]
    B_800785b38["0x800785b38..0x800785b4c\n(5 insns)"]
    B_800785b4c["0x800785b4c..0x800785b54\n(2 insns)"]
    B_800785b54["0x800785b54..0x800785b60\n(3 insns, loop hdr)"]
    B_800785b60["0x800785b60..0x800785b68\n(2 insns)"]
    B_800785b68["0x800785b68..0x800785b84\n(7 insns)"]
    B_800785b84["0x800785b84..0x800785b9c\n(6 insns)"]
    B_800785b9c["0x800785b9c..0x800785ba4\n(2 insns, loop hdr)"]
    B_800785ba4["0x800785ba4..0x800785bac\n(2 insns)"]
    B_800785bac["0x800785bac..0x800785bbc\n(4 insns)"]
    B_800785bbc["0x800785bbc..0x800785bcc\n(4 insns, loop hdr)"]
    B_800785bcc["0x800785bcc..0x800785bd0\n(1 insns)"]
    B_800785bd0["0x800785bd0..0x800785bd8\n(2 insns)"]
    B_800785bd8["0x800785bd8..0x800785bec\n(5 insns)"]
    B_800785bec["0x800785bec..0x800785bf0\n(1 insns)"]
    B_800785bf0["0x800785bf0..0x800785bf4\n(1 insns)"]
    B_800785bf4["0x800785bf4..0x800785c00\n(3 insns)"]
    B_800785c00["0x800785c00..0x800785c44\n(17 insns)"]
    B_800785c44["0x800785c44..0x800785c58\n(5 insns)"]
    B_800785c58["0x800785c58..0x800785c60\n(2 insns)"]
    B_800785c60["0x800785c60..0x800785c6c\n(3 insns, loop hdr)"]
    B_800785c6c["0x800785c6c..0x800785c74\n(2 insns)"]
    B_800785c74["0x800785c74..0x800785c88\n(5 insns)"]
    B_800785c88["0x800785c88..0x800785ca0\n(6 insns)"]
    B_800785ca0["0x800785ca0..0x800785ca8\n(2 insns, loop hdr)"]
    B_800785ca8["0x800785ca8..0x800785cb0\n(2 insns)"]
    B_800785cb0["0x800785cb0..0x800785cc0\n(4 insns)"]
    B_800785cc0["0x800785cc0..0x800785cd0\n(4 insns, loop hdr)"]
    B_800785cd0["0x800785cd0..0x800785cd4\n(1 insns)"]
    B_800785cd4["0x800785cd4..0x800785cdc\n(2 insns)"]
    B_800785cdc["0x800785cdc..0x800785cf0\n(5 insns)"]
    B_800785cf0["0x800785cf0..0x800785cf4\n(1 insns)"]
    B_800785cf4["0x800785cf4..0x800785cf8\n(1 insns)"]
    B_800785cf8["0x800785cf8..0x800785d04\n(3 insns)"]
    B_800785d04["0x800785d04..0x8007871a0\n(1319 insns)"]
    B_8007871a0["0x8007871a0..0x800787204\n(25 insns, loop hdr)"]
    B_800787204["0x800787204..0x800787210\n(3 insns)"]
    B_800787210["0x800787210..0x80078721c\n(3 insns, loop hdr)"]
    B_80078721c["0x80078721c..0x800787220\n(1 insns)"]
    B_800787220["0x800787220..0x800787270\n(20 insns)"]
    B_800787270["0x800787270..0x800787274\n(1 insns)"]
    B_800787274["0x800787274..0x80078727c\n(2 insns)"]
    B_80078727c["0x80078727c..0x800787284\n(2 insns)"]
    B_800787284["0x800787284..0x80078728c\n(2 insns, loop hdr)"]
    B_80078728c["0x80078728c..0x80078729c\n(4 insns)"]
    B_80078729c["0x80078729c..0x8007872b8\n(7 insns)"]
    B_8007872b8["0x8007872b8..0x8007872c0\n(2 insns)"]
    B_8007872c0["0x8007872c0..0x8007872e8\n(10 insns)"]
    B_8007872e8["0x8007872e8..0x8007872ec\n(1 insns)"]
    B_8007872ec["0x8007872ec..0x8007872f4\n(2 insns)"]
    B_8007872f4["0x8007872f4..0x8007872fc\n(2 insns)"]
    B_8007872fc["0x8007872fc..0x800787310\n(5 insns)"]
    B_800787310["0x800787310..0x800787324\n(5 insns)"]
    B_800787324["0x800787324..0x800787350\n(11 insns)"]
    B_800787350["0x800787350..0x8007873b4\n(25 insns, loop hdr)"]
    B_8007873b4["0x8007873b4..0x8007873c0\n(3 insns)"]
    B_8007873c0["0x8007873c0..0x8007873cc\n(3 insns, loop hdr)"]
    B_8007873cc["0x8007873cc..0x8007873d0\n(1 insns)"]
    B_8007873d0["0x8007873d0..0x800787424\n(21 insns)"]
    B_800787424["0x800787424..0x800787428\n(1 insns)"]
    B_800787428["0x800787428..0x800787430\n(2 insns)"]
    B_800787430["0x800787430..0x800787438\n(2 insns)"]
    B_800787438["0x800787438..0x800787440\n(2 insns, loop hdr)"]
    B_800787440["0x800787440..0x800787450\n(4 insns)"]
    B_800787450["0x800787450..0x80078746c\n(7 insns)"]
    B_80078746c["0x80078746c..0x800787470\n(1 insns)"]
    B_800787470["0x800787470..0x800787498\n(10 insns)"]
    B_800787498["0x800787498..0x80078749c\n(1 insns)"]
    B_80078749c["0x80078749c..0x8007874a4\n(2 insns)"]
    B_8007874a4["0x8007874a4..0x8007874ac\n(2 insns)"]
    B_8007874ac["0x8007874ac..0x8007874c0\n(5 insns)"]
    B_8007874c0["0x8007874c0..0x8007874d4\n(5 insns)"]
    B_8007874d4["0x8007874d4..0x800787500\n(11 insns)"]
    B_800787500["0x800787500..0x800787518\n(6 insns, loop hdr)"]
    B_800787518["0x800787518..0x800787520\n(2 insns)"]
    B_800787520["0x800787520..0x800787548\n(10 insns)"]
    B_800787548["0x800787548..0x800787550\n(2 insns)"]
    B_800787550["0x800787550..0x80078755c\n(3 insns, loop hdr)"]
    B_80078755c["0x80078755c..0x800787560\n(1 insns)"]
    B_800787560["0x800787560..0x8007875b8\n(22 insns)"]
    B_8007875b8["0x8007875b8..0x8007875bc\n(1 insns)"]
    B_8007875bc["0x8007875bc..0x8007875c4\n(2 insns)"]
    B_8007875c4["0x8007875c4..0x8007875cc\n(2 insns)"]
    B_8007875cc["0x8007875cc..0x8007875d4\n(2 insns, loop hdr)"]
    B_8007875d4["0x8007875d4..0x8007875e4\n(4 insns)"]
    B_8007875e4["0x8007875e4..0x800787608\n(9 insns)"]
    B_800787608["0x800787608..0x800787610\n(2 insns)"]
    B_800787610["0x800787610..0x800787618\n(2 insns)"]
    B_800787618["0x800787618..0x800787640\n(10 insns)"]
    B_800787640["0x800787640..0x800787644\n(1 insns)"]
    B_800787644["0x800787644..0x800787648\n(1 insns)"]
    B_800787648["0x800787648..0x80078764c\n(1 insns)"]
    B_80078764c["0x80078764c..0x800787658\n(3 insns)"]
    B_800787658["0x800787658..0x800787738\n(56 insns)"]
    B_800787738["0x800787738..0x800787750\n(6 insns)"]
    B_800787750["0x800787750..0x80078789c\n(83 insns)"]
    B_80078789c["0x80078789c..0x8007878b0\n(5 insns)"]
    B_8007878b0["0x8007878b0..0x8007878c4\n(5 insns)"]
    B_8007878c4["0x8007878c4..0x8007878d4\n(4 insns)"]
    B_8007878d4["0x8007878d4..0x8007878e4\n(4 insns)"]
    B_8007878e4["0x8007878e4..0x8007878f8\n(5 insns)"]
    B_8007878f8["0x8007878f8..0x800787900\n(2 insns)"]
    B_800787900["0x800787900..0x800787908\n(2 insns)"]
    B_800787908["0x800787908..0x800787910\n(2 insns)"]
    B_800787910["0x800787910..0x80078791c\n(3 insns)"]
    B_80078791c["0x80078791c..0x800787924\n(2 insns)"]
    B_800787924["0x800787924..0x800787934\n(4 insns)"]
    B_800787934["0x800787934..0x800787948\n(5 insns)"]
    B_800787948["0x800787948..0x800787958\n(4 insns)"]
    B_800787958["0x800787958..0x80078796c\n(5 insns)"]
    B_80078796c["0x80078796c..0x80078797c\n(4 insns)"]
    B_80078797c["0x80078797c..0x800787990\n(5 insns)"]
    B_800787990["0x800787990..0x8007879a0\n(4 insns)"]
    B_8007879a0["0x8007879a0..0x8007879b4\n(5 insns)"]
    B_8007879b4["0x8007879b4..0x8007879c4\n(4 insns)"]
    B_8007879c4["0x8007879c4..0x8007879d8\n(5 insns)"]
    B_8007879d8["0x8007879d8..0x8007879e8\n(4 insns)"]
    B_8007879e8["0x8007879e8..0x8007879fc\n(5 insns)"]
    B_8007879fc["0x8007879fc..0x800787a04\n(2 insns)"]
    B_800787a04["0x800787a04..0x800787a0c\n(2 insns)"]
    B_800787a0c["0x800787a0c..0x800787a14\n(2 insns)"]
    B_800787a14["0x800787a14..0x800787a1c\n(2 insns)"]
    B_800787a1c["0x800787a1c..0x800787a24\n(2 insns)"]
    B_800787a24["0x800787a24..0x800787a30\n(3 insns)"]
    B_800787a30["0x800787a30..0x800787a38\n(2 insns)"]
    B_800787a38["0x800787a38..0x800787a40\n(2 insns)"]
    B_800787a40["0x800787a40..0x800787a4c\n(3 insns)"]
    B_800787a4c["0x800787a4c..0x800787a54\n(2 insns)"]
    B_800787a54["0x800787a54..0x800787a5c\n(2 insns)"]
    B_8007821c0 --> B_800783f04
    B_800783f04 -- "taken" --> B_800784000
    B_800783f04 -- "fallthrough" --> B_800783f10
    B_800783f10 -- "taken" --> B_800784040
    B_800783f10 -- "fallthrough" --> B_800783f2c
    B_800783f2c -- "taken" --> B_800783f50
    B_800783f2c -- "fallthrough" --> B_800783f30
    B_800783f30 --> B_800783f40
    B_800783f40 -. "loop back" .-> B_800783f40
    B_800783f40 -- "fallthrough" --> B_800783f4c
    B_800783f4c --> B_800783f50
    B_800783f50 --> B_800783f54
    B_800783f54 --> B_800783f58
    B_800783f58 -- "taken" --> B_800783ff8
    B_800783f58 -- "fallthrough" --> B_800783f64
    B_800783f64 -- "taken" --> B_800783fb0
    B_800783f64 -- "fallthrough" --> B_800783f94
    B_800783f94 --> B_800783fa0
    B_800783fa0 -. "loop back" .-> B_800783fa0
    B_800783fa0 -- "fallthrough" --> B_800783fac
    B_800783fac --> B_800783fb0
    B_800783fb0 --> B_800783fe4
    B_800783fe4 -. "loop back" .-> B_800783f04
    B_800783fe4 -- "fallthrough" --> B_800783ff4
    B_800783ff4 --> B_80078408c
    B_800783ff8 --> B_800783fe4
    B_800784000 -- "taken" --> B_800784030
    B_800784000 -- "fallthrough" --> B_800784014
    B_800784014 --> B_800784020
    B_800784020 -. "loop back" .-> B_800784020
    B_800784020 -- "fallthrough" --> B_80078402c
    B_80078402c --> B_800784030
    B_800784030 --> B_800783f58
    B_800784040 -- "taken" --> B_80078405c
    B_800784040 -- "fallthrough" --> B_800784044
    B_800784044 --> B_80078404c
    B_80078404c -. "loop back" .-> B_80078404c
    B_80078404c -- "fallthrough" --> B_800784058
    B_800784058 --> B_80078405c
    B_80078405c --> B_800783f54
    B_80078408c -- "taken" --> B_800784de4
    B_80078408c -- "fallthrough" --> B_800784dcc
    B_800784dcc --> B_800784dd4
    B_800784dd4 -. "loop back" .-> B_800784dd4
    B_800784dd4 -- "fallthrough" --> B_800784de0
    B_800784de0 --> B_800784de4
    B_800784de4 -- "taken" --> B_800784e78
    B_800784de4 -- "fallthrough" --> B_800784e60
    B_800784e60 --> B_800784e68
    B_800784e68 -. "loop back" .-> B_800784e68
    B_800784e68 -- "fallthrough" --> B_800784e74
    B_800784e74 --> B_800784e78
    B_800784e78 -- "taken" --> B_8007878f8
    B_800784e78 -- "fallthrough" --> B_800784ee4
    B_800784ee4 --> B_800784ef0
    B_800784ef0 -. "loop back" .-> B_800784ef0
    B_800784ef0 -- "fallthrough" --> B_800784efc
    B_800784efc --> B_800784f00
    B_800784f00 -- "taken" --> B_800787900
    B_800784f00 -- "fallthrough" --> B_800784f6c
    B_800784f6c --> B_800784f78
    B_800784f78 -. "loop back" .-> B_800784f78
    B_800784f78 -- "fallthrough" --> B_800784f84
    B_800784f84 --> B_800784f88
    B_800784f88 -- "taken" --> B_800787908
    B_800784f88 -- "fallthrough" --> B_8007850c0
    B_8007850c0 --> B_8007850cc
    B_8007850cc -. "loop back" .-> B_8007850cc
    B_8007850cc -- "fallthrough" --> B_8007850d8
    B_8007850d8 --> B_8007850dc
    B_8007850dc -- "taken" --> B_80078515c
    B_8007850dc -- "fallthrough" --> B_800785144
    B_800785144 --> B_80078514c
    B_80078514c -. "loop back" .-> B_80078514c
    B_80078514c -- "fallthrough" --> B_800785158
    B_800785158 --> B_80078515c
    B_80078515c -- "taken" --> B_8007851dc
    B_80078515c -- "fallthrough" --> B_8007851c4
    B_8007851c4 --> B_8007851cc
    B_8007851cc -. "loop back" .-> B_8007851cc
    B_8007851cc -- "fallthrough" --> B_8007851d8
    B_8007851d8 --> B_8007851dc
    B_8007851dc -- "taken" --> B_80078525c
    B_8007851dc -- "fallthrough" --> B_800785244
    B_800785244 --> B_80078524c
    B_80078524c -. "loop back" .-> B_80078524c
    B_80078524c -- "fallthrough" --> B_800785258
    B_800785258 --> B_80078525c
    B_80078525c -- "taken" --> B_800787910
    B_80078525c -- "fallthrough" --> B_800785388
    B_800785388 --> B_800785398
    B_800785398 -. "loop back" .-> B_800785398
    B_800785398 -- "fallthrough" --> B_8007853a4
    B_8007853a4 --> B_8007853a8
    B_8007853a8 -- "taken" --> B_800785428
    B_8007853a8 -- "fallthrough" --> B_800785410
    B_800785410 --> B_800785418
    B_800785418 -. "loop back" .-> B_800785418
    B_800785418 -- "fallthrough" --> B_800785424
    B_800785424 --> B_800785428
    B_800785428 -- "taken" --> B_8007854b0
    B_800785428 -- "fallthrough" --> B_800785498
    B_800785498 --> B_8007854a0
    B_8007854a0 -. "loop back" .-> B_8007854a0
    B_8007854a0 -- "fallthrough" --> B_8007854ac
    B_8007854ac --> B_8007854b0
    B_8007854b0 -- "taken" --> B_800785538
    B_8007854b0 -- "fallthrough" --> B_800785520
    B_800785520 --> B_800785528
    B_800785528 -. "loop back" .-> B_800785528
    B_800785528 -- "fallthrough" --> B_800785534
    B_800785534 --> B_800785538
    B_800785538 -- "taken" --> B_8007855c0
    B_800785538 -- "fallthrough" --> B_8007855a8
    B_8007855a8 --> B_8007855b0
    B_8007855b0 -. "loop back" .-> B_8007855b0
    B_8007855b0 -- "fallthrough" --> B_8007855bc
    B_8007855bc --> B_8007855c0
    B_8007855c0 -- "taken" --> B_800785648
    B_8007855c0 -- "fallthrough" --> B_800785630
    B_800785630 --> B_800785638
    B_800785638 -. "loop back" .-> B_800785638
    B_800785638 -- "fallthrough" --> B_800785644
    B_800785644 --> B_800785648
    B_800785648 -- "taken" --> B_8007856cc
    B_800785648 -- "fallthrough" --> B_8007856b4
    B_8007856b4 --> B_8007856bc
    B_8007856bc -. "loop back" .-> B_8007856bc
    B_8007856bc -- "fallthrough" --> B_8007856c8
    B_8007856c8 --> B_8007856cc
    B_8007856cc -- "taken" --> B_800785750
    B_8007856cc -- "fallthrough" --> B_800785738
    B_800785738 --> B_800785740
    B_800785740 -. "loop back" .-> B_800785740
    B_800785740 -- "fallthrough" --> B_80078574c
    B_80078574c --> B_800785750
    B_800785750 -- "taken" --> B_80078791c
    B_800785750 -- "fallthrough" --> B_8007857b4
    B_8007857b4 --> B_8007857bc
    B_8007857bc -. "loop back" .-> B_8007857bc
    B_8007857bc -- "fallthrough" --> B_8007857c8
    B_8007857c8 --> B_8007857d0
    B_8007857d0 -- "taken" --> B_8007859b4
    B_8007857d0 -- "fallthrough" --> B_800785960
    B_800785960 -- "taken" --> B_800787a14
    B_800785960 -- "fallthrough" --> B_800785964
    B_800785964 -- "taken" --> B_80078598c
    B_800785964 -- "fallthrough" --> B_80078596c
    B_80078596c --> B_800785974
    B_800785974 -- "taken" --> B_800787a14
    B_800785974 -- "fallthrough" --> B_80078597c
    B_80078597c -. "loop back" .-> B_800785974
    B_80078597c -- "fallthrough" --> B_80078598c
    B_80078598c -- "taken" --> B_8007859b0
    B_80078598c -- "fallthrough" --> B_8007859a4
    B_8007859a4 --> B_8007859b0
    B_8007859b0 --> B_8007859b4
    B_8007859b4 -- "taken" --> B_800785afc
    B_8007859b4 -- "fallthrough" --> B_800785aa8
    B_800785aa8 -- "taken" --> B_800787a1c
    B_800785aa8 -- "fallthrough" --> B_800785aac
    B_800785aac -- "taken" --> B_800785ad4
    B_800785aac -- "fallthrough" --> B_800785ab4
    B_800785ab4 --> B_800785abc
    B_800785abc -- "taken" --> B_800787a1c
    B_800785abc -- "fallthrough" --> B_800785ac4
    B_800785ac4 -. "loop back" .-> B_800785abc
    B_800785ac4 -- "fallthrough" --> B_800785ad4
    B_800785ad4 -- "taken" --> B_800785af8
    B_800785ad4 -- "fallthrough" --> B_800785aec
    B_800785aec --> B_800785af8
    B_800785af8 --> B_800785afc
    B_800785afc -- "taken" --> B_800787924
    B_800785afc -- "fallthrough" --> B_800785b38
    B_800785b38 -- "taken" --> B_800787a30
    B_800785b38 -- "fallthrough" --> B_800785b4c
    B_800785b4c --> B_800785b54
    B_800785b54 -- "taken" --> B_800787a24
    B_800785b54 -- "fallthrough" --> B_800785b60
    B_800785b60 -- "taken" --> B_800787948
    B_800785b60 -- "fallthrough" --> B_800785b68
    B_800785b68 -- "taken" --> B_800785bf4
    B_800785b68 -- "fallthrough" --> B_800785b84
    B_800785b84 --> B_800785b9c
    B_800785b9c -- "taken" --> B_800787a38
    B_800785b9c -- "fallthrough" --> B_800785ba4
    B_800785ba4 --> B_800785bac
    B_800785bac -- "taken" --> B_800785bf0
    B_800785bac -- "fallthrough" --> B_800785bbc
    B_800785bbc -- "taken" --> B_800785bd8
    B_800785bbc -- "fallthrough" --> B_800785bcc
    B_800785bcc -- "taken" --> B_800785bf0
    B_800785bcc -- "fallthrough" --> B_800785bd0
    B_800785bd0 -. "loop back" .-> B_800785bbc
    B_800785bd0 -- "fallthrough" --> B_800785bd8
    B_800785bd8 -. "loop back" .-> B_800785b9c
    B_800785bd8 -- "fallthrough" --> B_800785bec
    B_800785bec --> B_800785bf4
    B_800785bf0 --> B_800785bf4
    B_800785bf4 -- "taken" --> B_80078796c
    B_800785bf4 -- "fallthrough" --> B_800785c00
    B_800785c00 -- "taken" --> B_800787990
    B_800785c00 -- "fallthrough" --> B_800785c44
    B_800785c44 -- "taken" --> B_800787a4c
    B_800785c44 -- "fallthrough" --> B_800785c58
    B_800785c58 --> B_800785c60
    B_800785c60 -- "taken" --> B_800787a40
    B_800785c60 -- "fallthrough" --> B_800785c6c
    B_800785c6c -- "taken" --> B_8007879b4
    B_800785c6c -- "fallthrough" --> B_800785c74
    B_800785c74 -- "taken" --> B_800785cf8
    B_800785c74 -- "fallthrough" --> B_800785c88
    B_800785c88 --> B_800785ca0
    B_800785ca0 -- "taken" --> B_800787a54
    B_800785ca0 -- "fallthrough" --> B_800785ca8
    B_800785ca8 --> B_800785cb0
    B_800785cb0 -- "taken" --> B_800785cf4
    B_800785cb0 -- "fallthrough" --> B_800785cc0
    B_800785cc0 -- "taken" --> B_800785cdc
    B_800785cc0 -- "fallthrough" --> B_800785cd0
    B_800785cd0 -- "taken" --> B_800785cf4
    B_800785cd0 -- "fallthrough" --> B_800785cd4
    B_800785cd4 -. "loop back" .-> B_800785cc0
    B_800785cd4 -- "fallthrough" --> B_800785cdc
    B_800785cdc -. "loop back" .-> B_800785ca0
    B_800785cdc -- "fallthrough" --> B_800785cf0
    B_800785cf0 --> B_800785cf8
    B_800785cf4 --> B_800785cf8
    B_800785cf8 -- "taken" --> B_8007879d8
    B_800785cf8 -- "fallthrough" --> B_800785d04
    B_800785d04 --> B_8007871a0
    B_8007871a0 -- "taken" --> B_800787220
    B_8007871a0 -- "fallthrough" --> B_800787204
    B_800787204 --> B_800787210
    B_800787210 -. "loop back" .-> B_800787210
    B_800787210 -- "fallthrough" --> B_80078721c
    B_80078721c --> B_800787220
    B_800787220 -- "taken" --> B_8007872c0
    B_800787220 -- "fallthrough" --> B_800787270
    B_800787270 -- "taken" --> B_800787a04
    B_800787270 -- "fallthrough" --> B_800787274
    B_800787274 -- "taken" --> B_80078729c
    B_800787274 -- "fallthrough" --> B_80078727c
    B_80078727c --> B_800787284
    B_800787284 -- "taken" --> B_800787a04
    B_800787284 -- "fallthrough" --> B_80078728c
    B_80078728c -. "loop back" .-> B_800787284
    B_80078728c -- "fallthrough" --> B_80078729c
    B_80078729c -- "taken" --> B_8007872ec
    B_80078729c -- "fallthrough" --> B_8007872b8
    B_8007872b8 --> B_8007872c0
    B_8007872c0 -. "loop back" .-> B_8007871a0
    B_8007872c0 -- "fallthrough" --> B_8007872e8
    B_8007872e8 --> B_800787324
    B_8007872ec -- "taken" --> B_800787310
    B_8007872ec -- "fallthrough" --> B_8007872f4
    B_8007872f4 -- "taken" --> B_8007878d4
    B_8007872f4 -- "fallthrough" --> B_8007872fc
    B_8007872fc --> B_8007872b8
    B_800787310 --> B_8007872b8
    B_800787324 --> B_800787350
    B_800787350 -- "taken" --> B_8007873d0
    B_800787350 -- "fallthrough" --> B_8007873b4
    B_8007873b4 --> B_8007873c0
    B_8007873c0 -. "loop back" .-> B_8007873c0
    B_8007873c0 -- "fallthrough" --> B_8007873cc
    B_8007873cc --> B_8007873d0
    B_8007873d0 -- "taken" --> B_800787470
    B_8007873d0 -- "fallthrough" --> B_800787424
    B_800787424 -- "taken" --> B_800787a0c
    B_800787424 -- "fallthrough" --> B_800787428
    B_800787428 -- "taken" --> B_800787450
    B_800787428 -- "fallthrough" --> B_800787430
    B_800787430 --> B_800787438
    B_800787438 -- "taken" --> B_800787a0c
    B_800787438 -- "fallthrough" --> B_800787440
    B_800787440 -. "loop back" .-> B_800787438
    B_800787440 -- "fallthrough" --> B_800787450
    B_800787450 -- "taken" --> B_80078749c
    B_800787450 -- "fallthrough" --> B_80078746c
    B_80078746c --> B_800787470
    B_800787470 -. "loop back" .-> B_800787350
    B_800787470 -- "fallthrough" --> B_800787498
    B_800787498 --> B_8007874d4
    B_80078749c -- "taken" --> B_8007874c0
    B_80078749c -- "fallthrough" --> B_8007874a4
    B_8007874a4 -- "taken" --> B_8007878e4
    B_8007874a4 -- "fallthrough" --> B_8007874ac
    B_8007874ac --> B_80078746c
    B_8007874c0 --> B_80078746c
    B_8007874d4 --> B_800787500
    B_800787500 -- "taken" --> B_80078764c
    B_800787500 -- "fallthrough" --> B_800787518
    B_800787518 --> B_800787520
    B_800787520 -- "taken" --> B_800787560
    B_800787520 -- "fallthrough" --> B_800787548
    B_800787548 --> B_800787550
    B_800787550 -. "loop back" .-> B_800787550
    B_800787550 -- "fallthrough" --> B_80078755c
    B_80078755c --> B_800787560
    B_800787560 -- "taken" --> B_800787618
    B_800787560 -- "fallthrough" --> B_8007875b8
    B_8007875b8 -- "taken" --> B_8007879fc
    B_8007875b8 -- "fallthrough" --> B_8007875bc
    B_8007875bc -- "taken" --> B_8007875e4
    B_8007875bc -- "fallthrough" --> B_8007875c4
    B_8007875c4 --> B_8007875cc
    B_8007875cc -- "taken" --> B_8007879fc
    B_8007875cc -- "fallthrough" --> B_8007875d4
    B_8007875d4 -. "loop back" .-> B_8007875cc
    B_8007875d4 -- "fallthrough" --> B_8007875e4
    B_8007875e4 -- "taken" --> B_800787644
    B_8007875e4 -- "fallthrough" --> B_800787608
    B_800787608 --> B_800787610
    B_800787610 --> B_800787618
    B_800787618 -. "loop back" .-> B_800787500
    B_800787618 -- "fallthrough" --> B_800787640
    B_800787640 --> B_800787658
    B_800787644 -- "taken" --> B_800787610
    B_800787644 -- "fallthrough" --> B_800787648
    B_800787648 --> B_8007878c4
    B_80078764c --> B_800787520
    B_800787658 -- "taken" --> B_80078789c
    B_800787658 -- "fallthrough" --> B_800787738
    B_800787738 --> B_800787750
    B_800787750 --> EXIT_800787750["return"]
    B_80078789c -- "taken" --> B_800787750
    B_80078789c -- "fallthrough" --> B_8007878b0
    B_8007878b0 --> B_800787750
    B_8007878c4 --> B_800787610
    B_8007878d4 --> B_8007872b8
    B_8007878e4 --> B_80078746c
    B_8007878f8 --> B_800784f00
    B_800787900 --> B_800784f88
    B_800787908 --> B_8007850dc
    B_800787910 --> B_8007853a8
    B_80078791c --> B_8007857d0
    B_800787924 -- "taken" --> B_800785b38
    B_800787924 -- "fallthrough" --> B_800787934
    B_800787934 --> B_800785b38
    B_800787948 -- "taken" --> B_800785b68
    B_800787948 -- "fallthrough" --> B_800787958
    B_800787958 --> B_800785b68
    B_80078796c -- "taken" --> B_800785c00
    B_80078796c -- "fallthrough" --> B_80078797c
    B_80078797c --> B_800785c00
    B_800787990 -- "taken" --> B_800785c44
    B_800787990 -- "fallthrough" --> B_8007879a0
    B_8007879a0 --> B_800785c44
    B_8007879b4 -- "taken" --> B_800785c74
    B_8007879b4 -- "fallthrough" --> B_8007879c4
    B_8007879c4 --> B_800785c74
    B_8007879d8 -- "taken" --> B_800785d04
    B_8007879d8 -- "fallthrough" --> B_8007879e8
    B_8007879e8 --> B_800785d04
    B_8007879fc --> B_8007875e4
    B_800787a04 --> B_80078729c
    B_800787a0c --> B_800787450
    B_800787a14 --> B_80078598c
    B_800787a1c --> B_800785ad4
    B_800787a24 -. "loop back" .-> B_800785b54
    B_800787a24 -- "fallthrough" --> B_800787a30
    B_800787a30 --> B_800785b60
    B_800787a38 --> B_800785bac
    B_800787a40 -. "loop back" .-> B_800785c60
    B_800787a40 -- "fallthrough" --> B_800787a4c
    B_800787a4c --> B_800785c6c
    B_800787a54 --> B_800785cb0
    %% Path Highlighting
    style B_8007821c0 fill:#e8f5e9,stroke:#2e7d32,stroke-width:3px,color:#1b5e20
    style B_800783f04 fill:#e8f5e9,stroke:#2e7d32,stroke-width:3px,color:#1b5e20
    style B_800783f10 fill:#e8f5e9,stroke:#2e7d32,stroke-width:3px,color:#1b5e20
    style B_800783f54 fill:#e8f5e9,stroke:#2e7d32,stroke-width:3px,color:#1b5e20
    style B_800783f58 fill:#e8f5e9,stroke:#2e7d32,stroke-width:3px,color:#1b5e20
    style B_800783f64 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800783f94 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800783fa0 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800783fac fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800783fb0 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800783fe4 fill:#e8f5e9,stroke:#2e7d32,stroke-width:3px,color:#1b5e20
    style B_800783ff4 fill:#e8f5e9,stroke:#2e7d32,stroke-width:3px,color:#1b5e20
    style B_800783ff8 fill:#e1f5fe,stroke:#0288d1,stroke-width:2px,color:#01579b
    style B_800784040 fill:#e8f5e9,stroke:#2e7d32,stroke-width:3px,color:#1b5e20
    style B_800784044 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80078404c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800784058 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80078405c fill:#e8f5e9,stroke:#2e7d32,stroke-width:3px,color:#1b5e20
    style B_80078408c fill:#e8f5e9,stroke:#2e7d32,stroke-width:3px,color:#1b5e20
    style B_800784dcc fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800784dd4 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800784de0 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800784de4 fill:#e8f5e9,stroke:#2e7d32,stroke-width:3px,color:#1b5e20
    style B_800784e60 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800784e68 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800784e74 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800784e78 fill:#e8f5e9,stroke:#2e7d32,stroke-width:3px,color:#1b5e20
    style B_800784ee4 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800784ef0 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800784efc fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800784f00 fill:#e8f5e9,stroke:#2e7d32,stroke-width:3px,color:#1b5e20
    style B_800784f6c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800784f78 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800784f84 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800784f88 fill:#e8f5e9,stroke:#2e7d32,stroke-width:3px,color:#1b5e20
    style B_8007850c0 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8007850cc fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8007850d8 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8007850dc fill:#e8f5e9,stroke:#2e7d32,stroke-width:3px,color:#1b5e20
    style B_800785144 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80078514c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800785158 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80078515c fill:#e8f5e9,stroke:#2e7d32,stroke-width:3px,color:#1b5e20
    style B_8007851c4 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8007851cc fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8007851d8 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8007851dc fill:#e8f5e9,stroke:#2e7d32,stroke-width:3px,color:#1b5e20
    style B_800785244 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80078524c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800785258 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80078525c fill:#e8f5e9,stroke:#2e7d32,stroke-width:3px,color:#1b5e20
    style B_800785388 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800785398 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8007853a4 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8007853a8 fill:#e8f5e9,stroke:#2e7d32,stroke-width:3px,color:#1b5e20
    style B_800785410 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800785418 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800785424 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800785428 fill:#e8f5e9,stroke:#2e7d32,stroke-width:3px,color:#1b5e20
    style B_800785498 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8007854a0 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8007854ac fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8007854b0 fill:#e8f5e9,stroke:#2e7d32,stroke-width:3px,color:#1b5e20
    style B_800785520 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800785528 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800785534 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800785538 fill:#e8f5e9,stroke:#2e7d32,stroke-width:3px,color:#1b5e20
    style B_8007855a8 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8007855b0 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8007855bc fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8007855c0 fill:#e8f5e9,stroke:#2e7d32,stroke-width:3px,color:#1b5e20
    style B_800785630 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800785638 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800785644 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800785648 fill:#e8f5e9,stroke:#2e7d32,stroke-width:3px,color:#1b5e20
    style B_8007856b4 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8007856bc fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8007856c8 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8007856cc fill:#e8f5e9,stroke:#2e7d32,stroke-width:3px,color:#1b5e20
    style B_800785738 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800785740 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80078574c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800785750 fill:#e8f5e9,stroke:#2e7d32,stroke-width:3px,color:#1b5e20
    style B_8007857b4 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8007857bc fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8007857c8 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8007857d0 fill:#e8f5e9,stroke:#2e7d32,stroke-width:3px,color:#1b5e20
    style B_800785960 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800785964 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80078596c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800785974 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80078597c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80078598c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8007859a4 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8007859b0 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8007859b4 fill:#e8f5e9,stroke:#2e7d32,stroke-width:3px,color:#1b5e20
    style B_800785aa8 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800785aac fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800785ab4 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800785abc fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800785ac4 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800785ad4 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800785aec fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800785af8 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800785afc fill:#e8f5e9,stroke:#2e7d32,stroke-width:3px,color:#1b5e20
    style B_800785b38 fill:#e8f5e9,stroke:#2e7d32,stroke-width:3px,color:#1b5e20
    style B_800785b4c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800785b54 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800785b60 fill:#e8f5e9,stroke:#2e7d32,stroke-width:3px,color:#1b5e20
    style B_800785b68 fill:#e8f5e9,stroke:#2e7d32,stroke-width:3px,color:#1b5e20
    style B_800785b84 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800785b9c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800785bac fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800785bbc fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800785bcc fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800785bd0 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800785bd8 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800785bec fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800785bf4 fill:#e8f5e9,stroke:#2e7d32,stroke-width:3px,color:#1b5e20
    style B_800785c00 fill:#e8f5e9,stroke:#2e7d32,stroke-width:3px,color:#1b5e20
    style B_800785c44 fill:#e8f5e9,stroke:#2e7d32,stroke-width:3px,color:#1b5e20
    style B_800785c58 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800785c60 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800785c6c fill:#e8f5e9,stroke:#2e7d32,stroke-width:3px,color:#1b5e20
    style B_800785c74 fill:#e8f5e9,stroke:#2e7d32,stroke-width:3px,color:#1b5e20
    style B_800785c88 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800785ca0 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800785cb0 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800785cc0 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800785cd0 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800785cd4 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800785cdc fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800785cf0 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800785cf8 fill:#e8f5e9,stroke:#2e7d32,stroke-width:3px,color:#1b5e20
    style B_800785d04 fill:#e8f5e9,stroke:#2e7d32,stroke-width:3px,color:#1b5e20
    style B_8007871a0 fill:#e8f5e9,stroke:#2e7d32,stroke-width:3px,color:#1b5e20
    style B_800787204 fill:#e8f5e9,stroke:#2e7d32,stroke-width:3px,color:#1b5e20
    style B_800787210 fill:#e8f5e9,stroke:#2e7d32,stroke-width:3px,color:#1b5e20
    style B_80078721c fill:#e8f5e9,stroke:#2e7d32,stroke-width:3px,color:#1b5e20
    style B_800787220 fill:#e8f5e9,stroke:#2e7d32,stroke-width:3px,color:#1b5e20
    style B_800787270 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800787274 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80078727c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800787284 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80078728c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80078729c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8007872b8 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8007872c0 fill:#e8f5e9,stroke:#2e7d32,stroke-width:3px,color:#1b5e20
    style B_8007872e8 fill:#e8f5e9,stroke:#2e7d32,stroke-width:3px,color:#1b5e20
    style B_8007872ec fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8007872f4 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8007872fc fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800787324 fill:#e8f5e9,stroke:#2e7d32,stroke-width:3px,color:#1b5e20
    style B_800787350 fill:#e8f5e9,stroke:#2e7d32,stroke-width:3px,color:#1b5e20
    style B_8007873b4 fill:#e8f5e9,stroke:#2e7d32,stroke-width:3px,color:#1b5e20
    style B_8007873c0 fill:#e8f5e9,stroke:#2e7d32,stroke-width:3px,color:#1b5e20
    style B_8007873cc fill:#e8f5e9,stroke:#2e7d32,stroke-width:3px,color:#1b5e20
    style B_8007873d0 fill:#e8f5e9,stroke:#2e7d32,stroke-width:3px,color:#1b5e20
    style B_800787424 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800787428 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800787430 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800787438 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800787440 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800787450 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80078746c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800787470 fill:#e8f5e9,stroke:#2e7d32,stroke-width:3px,color:#1b5e20
    style B_800787498 fill:#e8f5e9,stroke:#2e7d32,stroke-width:3px,color:#1b5e20
    style B_80078749c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8007874a4 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8007874d4 fill:#e8f5e9,stroke:#2e7d32,stroke-width:3px,color:#1b5e20
    style B_800787500 fill:#e8f5e9,stroke:#2e7d32,stroke-width:3px,color:#1b5e20
    style B_800787520 fill:#e8f5e9,stroke:#2e7d32,stroke-width:3px,color:#1b5e20
    style B_800787548 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800787550 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80078755c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800787560 fill:#e8f5e9,stroke:#2e7d32,stroke-width:3px,color:#1b5e20
    style B_8007875b8 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8007875bc fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8007875c4 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8007875cc fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8007875d4 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8007875e4 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800787610 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800787618 fill:#e8f5e9,stroke:#2e7d32,stroke-width:3px,color:#1b5e20
    style B_800787640 fill:#e8f5e9,stroke:#2e7d32,stroke-width:3px,color:#1b5e20
    style B_800787644 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800787648 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80078764c fill:#e8f5e9,stroke:#2e7d32,stroke-width:3px,color:#1b5e20
    style B_800787658 fill:#e8f5e9,stroke:#2e7d32,stroke-width:3px,color:#1b5e20
    style B_800787738 fill:#e1f5fe,stroke:#0288d1,stroke-width:2px,color:#01579b
    style B_800787750 fill:#e8f5e9,stroke:#2e7d32,stroke-width:3px,color:#1b5e20
    style B_80078789c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8007878b0 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8007878c4 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8007878e4 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8007878f8 fill:#e1f5fe,stroke:#0288d1,stroke-width:2px,color:#01579b
    style B_800787900 fill:#e1f5fe,stroke:#0288d1,stroke-width:2px,color:#01579b
    style B_800787908 fill:#e1f5fe,stroke:#0288d1,stroke-width:2px,color:#01579b
    style B_800787910 fill:#e1f5fe,stroke:#0288d1,stroke-width:2px,color:#01579b
    style B_80078791c fill:#e1f5fe,stroke:#0288d1,stroke-width:2px,color:#01579b
    style B_800787924 fill:#e8f5e9,stroke:#2e7d32,stroke-width:3px,color:#1b5e20
    style B_800787934 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800787948 fill:#e8f5e9,stroke:#2e7d32,stroke-width:3px,color:#1b5e20
    style B_800787958 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80078796c fill:#e8f5e9,stroke:#2e7d32,stroke-width:3px,color:#1b5e20
    style B_80078797c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800787990 fill:#e8f5e9,stroke:#2e7d32,stroke-width:3px,color:#1b5e20
    style B_8007879a0 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8007879b4 fill:#e8f5e9,stroke:#2e7d32,stroke-width:3px,color:#1b5e20
    style B_8007879c4 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8007879d8 fill:#e8f5e9,stroke:#2e7d32,stroke-width:3px,color:#1b5e20
    style B_8007879e8 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800787a24 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800787a30 fill:#e8f5e9,stroke:#2e7d32,stroke-width:3px,color:#1b5e20
    style B_800787a38 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800787a40 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800787a4c fill:#e8f5e9,stroke:#2e7d32,stroke-width:3px,color:#1b5e20
    style B_800787a54 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
```

## 3. External Callee Classification (10 total: 9 constant-zero, 0 pointer-alloc, 0 memory-copy, 1 branch-sensitive)

| External Symbol | Classification | Args Read | Longest-Path Return (`X0`) | Alt-Branch Return (`X0`) | Post-Call Analysis |
| :--- | :--- | ---: | :--- | :--- | :--- |
| `f_802ba4180` | `CONSTANT_ZERO` | 3 | `0x0` | `0x1` | Return value X0 unread/overwritten -> constant 0 |
| `f_8000113c0` | `CONSTANT_ZERO` | 4 | `0x0` | `0x1` | Return value X0 unread/overwritten -> constant 0 |
| `f_800125710` | `CONSTANT_ZERO` | 3 | `0x0` | `0x1` | Return value X0 unread/overwritten -> constant 0 |
| `f_802ba41d0` | `CONSTANT_ZERO` | 3 | `0x0` | `0x1` | Return value X0 unread/overwritten -> constant 0 |
| `f_8003f99f8` | `CONSTANT_ZERO` | 3 | `0x0` | `0x1` | Return value X0 unread/overwritten -> constant 0 |
| `f_800393950` | `CONSTANT_ZERO` | 2 | `0x0` | `0x1` | Return value X0 unread/overwritten -> constant 0 |
| `f_802ba39a0` | **BRANCH_SENSITIVE** | 2 | `0x1` | `0x0` | CBZ on return register w0 at 0x8007879e4 |
| `f_800787a5c` | `CONSTANT_ZERO` | 2 | `0x0` | `0x1` | Return value X0 unread/overwritten -> constant 0 |
| `f_802ba39b0` | `CONSTANT_ZERO` | 2 | `0x0` | `0x1` | Return value X0 unread/overwritten -> constant 0 |
| `f_800787af0` | `CONSTANT_ZERO` | 2 | `0x0` | `0x1` | Return value X0 unread/overwritten -> constant 0 |

## 4. Constraint-Solved Parameters for Maximal Finite & Common Paths

### Function `f_8007821c0` (`0x8007821c0`) — Solver Backend: `OR-Tools CP-SAT MaxSAT (OPTIMAL) + Native BV Solver`

| Parameter / Attribute | Maximal Finite Path (`path_mode = 0`) | Common Path (`path_mode = 1`) |
| :--- | :--- | :--- |
| **Static ARM64 Instructions** | **7264 insns** (211 basic blocks) | **5776 insns** (112 basic blocks) |
| **Path Predicates Solved** | 121 branch/switch constraints | 69 branch/switch constraints |
| **`g_stub_branch_policy`** | `0x0` | `0x0` |
| **Entry Register `X0`** | `fbase + 0x1000` | `fbase + 0x1000` |
| **Entry Register `X1`** | `fbase + 0x2000` | `fbase + 0x2000` |
| **Stub Return `f_8000113c0` (`X0`)** | `0x0` | `0x0` |
| **Stub Return `f_800125710` (`X0`)** | `0x0` | `0x0` |
| **Stub Return `f_800393950` (`X0`)** | `0x0` | `0x0` |
| **Stub Return `f_8003f99f8` (`X0`)** | `0x0` | `0x0` |
| **Stub Return `f_800787a5c` (`X0`)** | `0x0` | `0x0` |
| **Stub Return `f_800787af0` (`X0`)** | `0x0` | `0x0` |
| **Stub Return `f_802ba39a0` (`X0`)** | `0x1 (policy bit #0=0)` | `0x1 (policy bit #0=0)` |
| **Stub Return `f_802ba39b0` (`X0`)** | `0x0` | `0x0` |
| **Stub Return `f_802ba4180` (`X0`)** | `0x0` | `0x0` |
| **Stub Return `f_802ba41d0` (`X0`)** | `0x0` | `0x0` |

#### Extracted Maximal-Path Predicate Constraints:

- `0x800784040: MEM[MEM[GLOBAL+0x8038f9a00]+0x0] ne 0`
- `0x800784054: MEM[MEM[GLOBAL+0x8038f9a00]+0x1] eq 0`
- `0x800783f90: MEM[GLOBAL+0x0] ne 0`
- `0x800783fa8: MEM[GLOBAL+0x1] eq 0`
- `0x800784dc8: MEM[GLOBAL+0x0] ne 0`
- `0x800784ddc: MEM[GLOBAL+0x1] eq 0`
- `0x800784e5c: MEM[GLOBAL+0x0] ne 0`
- `0x800784e70: MEM[GLOBAL+0x1] eq 0`
- `0x800784ee0: MEM[GLOBAL+0x0] ne 0`
- `0x800784ef8: MEM[GLOBAL+0x1] eq 0`
- `0x800784f68: MEM[GLOBAL+0x0] ne 0`
- `0x800784f80: MEM[GLOBAL+0x1] eq 0`
- `0x8007850bc: MEM[GLOBAL+0x0] ne 0`
- `0x8007850d4: MEM[GLOBAL+0x1] eq 0`
- `0x800785140: MEM[GLOBAL+0x0] ne 0`
- `0x800785154: MEM[GLOBAL+0x1] eq 0`
- `0x8007851c0: MEM[GLOBAL+0x0] ne 0`
- `0x8007851d4: MEM[GLOBAL+0x1] eq 0`
- `0x800785240: MEM[GLOBAL+0x0] ne 0`
- `0x800785254: MEM[GLOBAL+0x1] eq 0`
