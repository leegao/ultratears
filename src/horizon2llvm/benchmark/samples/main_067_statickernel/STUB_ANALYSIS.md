# Automated Stub & Static CFG Longest-Path Analysis (`main_067_statickernel`)

## 1. Function Static CFG & Path Length Summary

| Function | Entry PC | Static ARM64 Insns | Basic Blocks | Loop Back-Edges | Est. Common Path (ARM64 Insns) | Est. Longest Path (ARM64 Insns) |
| :--- | :--- | ---: | ---: | ---: | ---: | ---: |
| `f_8001161d0` | `0x8001161d0` | 1410 | 111 | 3 | 131 | 513 |

## 2. Function Control Flow Graphs (CFGs)

### Function `f_8001161d0` (`0x8001161d0` – 1410 insns, 111 blocks)

```mermaid
flowchart TD
    B_8001161d0["0x8001161d0..0x80011620c\n(15 insns)"]
    B_80011620c["0x80011620c..0x80011621c\n(4 insns)"]
    B_80011621c["0x80011621c..0x800116224\n(2 insns)"]
    B_800116224["0x800116224..0x800116228\n(1 insns)"]
    B_800116228["0x800116228..0x800116240\n(6 insns)"]
    B_800116240["0x800116240..0x8001162ec\n(43 insns)"]
    B_8001162ec["0x8001162ec..0x80011631c\n(12 insns, switch)"]
    B_80011631c["0x80011631c..0x800116320\n(1 insns)"]
    B_800116320["0x800116320..0x800116324\n(1 insns)"]
    B_800116324["0x800116324..0x80011632c\n(2 insns)"]
    B_80011632c["0x80011632c..0x80011648c\n(88 insns)"]
    B_80011648c["0x80011648c..0x8001164a0\n(5 insns)"]
    B_8001164a0["0x8001164a0..0x8001164dc\n(15 insns)"]
    B_8001164dc["0x8001164dc..0x80011651c\n(16 insns)"]
    B_80011651c["0x80011651c..0x800116640\n(73 insns)"]
    B_800116640["0x800116640..0x800116680\n(16 insns)"]
    B_800116680["0x800116680..0x8001167d4\n(85 insns)"]
    B_8001167d4["0x8001167d4..0x8001168b4\n(56 insns)"]
    B_8001168b4["0x8001168b4..0x800116988\n(53 insns)"]
    B_800116988["0x800116988..0x8001169d4\n(19 insns)"]
    B_8001169d4["0x8001169d4..0x8001169e4\n(4 insns)"]
    B_8001169e4["0x8001169e4..0x8001169fc\n(6 insns)"]
    B_8001169fc["0x8001169fc..0x800116a3c\n(16 insns)"]
    B_800116a3c["0x800116a3c..0x800116b4c\n(68 insns)"]
    B_800116b4c["0x800116b4c..0x800116b58\n(3 insns)"]
    B_800116b58["0x800116b58..0x800116b94\n(15 insns)"]
    B_800116b94["0x800116b94..0x800116bd8\n(17 insns)"]
    B_800116bd8["0x800116bd8..0x800116c64\n(35 insns)"]
    B_800116c64["0x800116c64..0x800116ca0\n(15 insns)"]
    B_800116ca0["0x800116ca0..0x800116d38\n(38 insns)"]
    B_800116d38["0x800116d38..0x800116d78\n(16 insns)"]
    B_800116d78["0x800116d78..0x800116df4\n(31 insns)"]
    B_800116df4["0x800116df4..0x800116e30\n(15 insns)"]
    B_800116e30["0x800116e30..0x800116e70\n(16 insns)"]
    B_800116e70["0x800116e70..0x800116ee8\n(30 insns)"]
    B_800116ee8["0x800116ee8..0x800116f24\n(15 insns)"]
    B_800116f24["0x800116f24..0x800116f5c\n(14 insns)"]
    B_800116f5c["0x800116f5c..0x800116f64\n(2 insns)"]
    B_800116f64["0x800116f64..0x800116fd0\n(27 insns)"]
    B_800116fd0["0x800116fd0..0x800116fd4\n(1 insns)"]
    B_800116fd4["0x800116fd4..0x800117000\n(11 insns)"]
    B_800117000["0x800117000..0x800117004\n(1 insns)"]
    B_800117004["0x800117004..0x800117014\n(4 insns)"]
    B_800117014["0x800117014..0x80011701c\n(2 insns)"]
    B_80011701c["0x80011701c..0x800117050\n(13 insns)"]
    B_800117050["0x800117050..0x800117058\n(2 insns)"]
    B_800117058["0x800117058..0x800117060\n(2 insns)"]
    B_800117060["0x800117060..0x80011706c\n(3 insns)"]
    B_80011706c["0x80011706c..0x80011707c\n(4 insns)"]
    B_80011707c["0x80011707c..0x800117098\n(7 insns)"]
    B_800117098["0x800117098..0x8001170a8\n(4 insns)"]
    B_8001170a8["0x8001170a8..0x8001170d8\n(12 insns)"]
    B_8001170d8["0x8001170d8..0x8001170e8\n(4 insns, loop hdr)"]
    B_8001170e8["0x8001170e8..0x800117100\n(6 insns)"]
    B_800117100["0x800117100..0x800117104\n(1 insns)"]
    B_800117104["0x800117104..0x800117128\n(9 insns)"]
    B_800117128["0x800117128..0x800117130\n(2 insns)"]
    B_800117130["0x800117130..0x80011713c\n(3 insns)"]
    B_80011713c["0x80011713c..0x800117140\n(1 insns)"]
    B_800117140["0x800117140..0x800117150\n(4 insns)"]
    B_800117150["0x800117150..0x800117158\n(2 insns)"]
    B_800117158["0x800117158..0x800117168\n(4 insns, loop hdr)"]
    B_800117168["0x800117168..0x800117174\n(3 insns)"]
    B_800117174["0x800117174..0x800117180\n(3 insns)"]
    B_800117180["0x800117180..0x800117190\n(4 insns)"]
    B_800117190["0x800117190..0x800117194\n(1 insns)"]
    B_800117194["0x800117194..0x8001171a4\n(4 insns)"]
    B_8001171a4["0x8001171a4..0x8001171c4\n(8 insns)"]
    B_8001171c4["0x8001171c4..0x8001171d0\n(3 insns)"]
    B_8001171d0["0x8001171d0..0x800117278\n(42 insns)"]
    B_800117278["0x800117278..0x80011728c\n(5 insns)"]
    B_80011728c["0x80011728c..0x8001172c0\n(13 insns)"]
    B_8001172c0["0x8001172c0..0x8001172f0\n(12 insns)"]
    B_8001172f0["0x8001172f0..0x8001172f8\n(2 insns)"]
    B_8001172f8["0x8001172f8..0x8001172fc\n(1 insns)"]
    B_8001172fc["0x8001172fc..0x800117308\n(3 insns)"]
    B_800117308["0x800117308..0x800117314\n(3 insns)"]
    B_800117314["0x800117314..0x800117320\n(3 insns)"]
    B_800117320["0x800117320..0x80011732c\n(3 insns)"]
    B_80011732c["0x80011732c..0x800117338\n(3 insns)"]
    B_800117338["0x800117338..0x800117344\n(3 insns)"]
    B_800117344["0x800117344..0x800117350\n(3 insns)"]
    B_800117350["0x800117350..0x80011735c\n(3 insns)"]
    B_80011735c["0x80011735c..0x800117364\n(2 insns)"]
    B_800117364["0x800117364..0x800117448\n(57 insns)"]
    B_800117448["0x800117448..0x80011745c\n(5 insns)"]
    B_80011745c["0x80011745c..0x800117468\n(3 insns)"]
    B_800117468["0x800117468..0x800117490\n(10 insns)"]
    B_800117490["0x800117490..0x8001174cc\n(15 insns)"]
    B_8001174cc["0x8001174cc..0x8001174d4\n(2 insns)"]
    B_8001174d4["0x8001174d4..0x8001174e4\n(4 insns)"]
    B_8001174e4["0x8001174e4..0x8001174f4\n(4 insns)"]
    B_8001174f4["0x8001174f4..0x800117504\n(4 insns)"]
    B_800117504["0x800117504..0x800117510\n(3 insns)"]
    B_800117510["0x800117510..0x800117594\n(33 insns)"]
    B_800117594["0x800117594..0x80011763c\n(42 insns)"]
    B_80011763c["0x80011763c..0x800117644\n(2 insns)"]
    B_800117644["0x800117644..0x800117660\n(7 insns)"]
    B_800117660["0x800117660..0x80011767c\n(7 insns)"]
    B_80011767c["0x80011767c..0x800117684\n(2 insns)"]
    B_800117684["0x800117684..0x80011769c\n(6 insns)"]
    B_80011769c["0x80011769c..0x800117784\n(58 insns)"]
    B_800117784["0x800117784..0x800117798\n(5 insns)"]
    B_800117798["0x800117798..0x8001177a0\n(2 insns)"]
    B_8001177a0["0x8001177a0..0x8001177a8\n(2 insns)"]
    B_8001177a8["0x8001177a8..0x8001177b0\n(2 insns)"]
    B_8001177b0["0x8001177b0..0x8001177b8\n(2 insns)"]
    B_8001177b8["0x8001177b8..0x8001177c0\n(2 insns)"]
    B_8001177c0["0x8001177c0..0x8001177c8\n(2 insns)"]
    B_8001177c8["0x8001177c8..0x8001177d0\n(2 insns)"]
    B_8001177d0["0x8001177d0..0x8001177d8\n(2 insns)"]
    B_8001161d0 -- "taken" --> B_80011621c
    B_8001161d0 -- "fallthrough" --> B_80011620c
    B_80011620c -- "taken" --> B_80011648c
    B_80011620c -- "fallthrough" --> B_80011621c
    B_80011621c -- "taken" --> B_800117798
    B_80011621c -- "fallthrough" --> B_800116224
    B_800116224 --> B_800116228
    B_800116228 -- "taken" --> B_80011763c
    B_800116228 -- "fallthrough" --> B_800116240
    B_800116240 -- "taken" --> B_800116fd4
    B_800116240 -- "fallthrough" --> B_8001162ec
    B_8001162ec -- "case" --> B_80011631c
    B_8001162ec -- "case" --> B_8001164a0
    B_8001162ec -- "case" --> B_8001164dc
    B_8001162ec -- "case" --> B_80011651c
    B_8001162ec -- "case" --> B_800116640
    B_8001162ec -- "case" --> B_800116680
    B_8001162ec -- "case" --> B_8001167d4
    B_8001162ec -- "case" --> B_8001168b4
    B_8001162ec -- "case" --> B_8001169e4
    B_8001162ec -- "case" --> B_8001169fc
    B_8001162ec -- "case" --> B_800116a3c
    B_8001162ec -- "case" --> B_800116b58
    B_8001162ec -- "case" --> B_800116c64
    B_8001162ec -- "case" --> B_800116ca0
    B_8001162ec -- "case" --> B_800116d38
    B_8001162ec -- "case" --> B_800116d78
    B_8001162ec -- "case" --> B_800116df4
    B_8001162ec -- "case" --> B_800116e30
    B_8001162ec -- "case" --> B_800116e70
    B_8001162ec -- "case" --> B_800116ee8
    B_8001162ec -- "case" --> B_8001171d0
    B_8001162ec -- "case" --> B_800117364
    B_8001162ec -- "case" --> B_8001174d4
    B_8001162ec -- "case" --> B_8001174e4
    B_8001162ec -- "case" --> B_8001174f4
    B_8001162ec -- "case" --> B_800117504
    B_8001162ec -- "case" --> B_800117644
    B_8001162ec -- "case" --> B_800117660
    B_8001162ec -- "case" --> B_800117684
    B_8001162ec -- "case" --> B_80011769c
    B_8001162ec -- "case" --> B_800117784
    B_80011631c --> B_800116320
    B_800116320 --> B_800116324
    B_800116324 --> B_80011632c
    B_80011632c --> B_800116fd0
    B_80011648c --> B_800116228
    B_8001164a0 --> B_800116f24
    B_8001164dc --> B_800116f24
    B_80011651c --> B_8001169d4
    B_800116640 --> B_800116b94
    B_800116680 --> B_800116fd4
    B_8001167d4 --> B_800116988
    B_8001168b4 --> B_800116988
    B_800116988 --> B_8001169d4
    B_8001169d4 --> B_800116fd4
    B_8001169e4 --> B_800116fd4
    B_8001169fc --> B_800116f24
    B_800116a3c --> B_800116b4c
    B_800116b4c --> B_800116fd4
    B_800116b58 --> B_800116b94
    B_800116b94 -- "taken" --> B_800116b4c
    B_800116b94 -- "fallthrough" --> B_800116bd8
    B_800116bd8 --> B_800116fd4
    B_800116c64 --> B_800116f24
    B_800116ca0 --> B_800116f64
    B_800116d38 --> B_800116f24
    B_800116d78 --> B_800116f64
    B_800116df4 --> B_800116f24
    B_800116e30 --> B_800116f24
    B_800116e70 --> B_800116f5c
    B_800116ee8 --> B_800116f24
    B_800116f24 --> B_800116f5c
    B_800116f5c --> B_800116f64
    B_800116f64 --> B_800116fd0
    B_800116fd0 --> B_800116fd4
    B_800116fd4 -- "taken" --> B_80011767c
    B_800116fd4 -- "fallthrough" --> B_800117000
    B_800117000 -- "taken" --> B_8001171a4
    B_800117000 -- "fallthrough" --> B_800117004
    B_800117004 -- "taken" --> B_8001171a4
    B_800117004 -- "fallthrough" --> B_800117014
    B_800117014 -- "taken" --> B_8001171c4
    B_800117014 -- "fallthrough" --> B_80011701c
    B_80011701c -- "taken" --> B_8001171a4
    B_80011701c -- "fallthrough" --> B_800117050
    B_800117050 -- "taken" --> B_8001171a4
    B_800117050 -- "fallthrough" --> B_800117058
    B_800117058 -- "taken" --> B_8001171a4
    B_800117058 -- "fallthrough" --> B_800117060
    B_800117060 -- "taken" --> B_8001171a4
    B_800117060 -- "fallthrough" --> B_80011706c
    B_80011706c -- "taken" --> B_8001171a4
    B_80011706c -- "fallthrough" --> B_80011707c
    B_80011707c -- "taken" --> B_8001171a4
    B_80011707c -- "fallthrough" --> B_800117098
    B_800117098 -- "taken" --> B_8001171a4
    B_800117098 -- "fallthrough" --> B_8001170a8
    B_8001170a8 --> B_8001170d8
    B_8001170d8 -. "loop back" .-> B_8001170d8
    B_8001170d8 -- "fallthrough" --> B_8001170e8
    B_8001170e8 -- "taken" --> B_8001174cc
    B_8001170e8 -- "fallthrough" --> B_800117100
    B_800117100 --> B_800117104
    B_800117104 -- "taken" --> B_800117140
    B_800117104 -- "fallthrough" --> B_800117128
    B_800117128 -- "taken" --> B_800117194
    B_800117128 -- "fallthrough" --> B_800117130
    B_800117130 -- "taken" --> B_800117150
    B_800117130 -- "fallthrough" --> B_80011713c
    B_80011713c --> B_80011745c
    B_800117140 --> B_800117150
    B_800117150 --> B_800117158
    B_800117158 -. "loop back" .-> B_800117158
    B_800117158 -- "fallthrough" --> B_800117168
    B_800117168 -- "taken" --> B_800117180
    B_800117168 -- "fallthrough" --> B_800117174
    B_800117174 --> B_800117180
    B_800117180 -. "loop back" .-> B_8001170d8
    B_800117180 -- "fallthrough" --> B_800117190
    B_800117190 --> B_8001171a4
    B_800117194 --> B_800117150
    B_8001171a4 --> EXIT_8001171a4["return"]
    B_8001171c4 --> B_80011701c
    B_8001171d0 -- "taken" --> B_800117468
    B_8001171d0 -- "fallthrough" --> B_800117278
    B_800117278 --> B_80011728c
    B_80011728c -- "taken" --> B_800117490
    B_80011728c -- "fallthrough" --> B_8001172c0
    B_8001172c0 --> B_8001172f0
    B_8001172f0 -- "taken" --> B_8001172fc
    B_8001172f0 -- "fallthrough" --> B_8001172f8
    B_8001172f8 --> B_8001172fc
    B_8001172fc -- "taken" --> B_8001177a0
    B_8001172fc -- "fallthrough" --> B_800117308
    B_800117308 -- "taken" --> B_8001177a8
    B_800117308 -- "fallthrough" --> B_800117314
    B_800117314 -- "taken" --> B_8001177b0
    B_800117314 -- "fallthrough" --> B_800117320
    B_800117320 -- "taken" --> B_8001177b8
    B_800117320 -- "fallthrough" --> B_80011732c
    B_80011732c -- "taken" --> B_8001177c0
    B_80011732c -- "fallthrough" --> B_800117338
    B_800117338 -- "taken" --> B_8001177c8
    B_800117338 -- "fallthrough" --> B_800117344
    B_800117344 -- "taken" --> B_8001177d0
    B_800117344 -- "fallthrough" --> B_800117350
    B_800117350 -- "taken" --> B_800116fd0
    B_800117350 -- "fallthrough" --> B_80011735c
    B_80011735c --> B_800116fd0
    B_800117364 --> B_800117448
    B_800117448 --> B_800116fd4
    B_80011745c --> B_800117150
    B_800117468 --> B_80011728c
    B_800117490 --> B_8001172f0
    B_8001174cc --> B_800117104
    B_8001174d4 --> B_800117510
    B_8001174e4 --> B_800117510
    B_8001174f4 --> B_800117510
    B_800117504 --> B_800117510
    B_800117510 -- "taken" --> B_800116fd4
    B_800117510 -- "fallthrough" --> B_800117594
    B_800117594 --> B_800116fd4
    B_80011763c --> B_800116240
    B_800117644 --> B_800116fd4
    B_800117660 --> B_800116fd4
    B_80011767c --> B_800117000
    B_800117684 --> B_800116fd4
    B_80011769c --> B_800117448
    B_800117784 --> B_800116fd4
    B_800117798 --> B_800116228
    B_8001177a0 --> B_800117308
    B_8001177a8 --> B_800117314
    B_8001177b0 --> B_800117320
    B_8001177b8 --> B_80011732c
    B_8001177c0 --> B_800117338
    B_8001177c8 --> B_800117344
    B_8001177d0 --> B_800117350
    %% Path Highlighting
    style B_8001161d0 fill:#e8f5e9,stroke:#2e7d32,stroke-width:3px,color:#1b5e20
    style B_80011620c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80011621c fill:#e1f5fe,stroke:#0288d1,stroke-width:2px,color:#01579b
    style B_800116224 fill:#e1f5fe,stroke:#0288d1,stroke-width:2px,color:#01579b
    style B_800116228 fill:#e8f5e9,stroke:#2e7d32,stroke-width:3px,color:#1b5e20
    style B_800116240 fill:#e8f5e9,stroke:#2e7d32,stroke-width:3px,color:#1b5e20
    style B_8001162ec fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80011648c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800116fd0 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800116fd4 fill:#e8f5e9,stroke:#2e7d32,stroke-width:3px,color:#1b5e20
    style B_800117000 fill:#e8f5e9,stroke:#2e7d32,stroke-width:3px,color:#1b5e20
    style B_800117004 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800117014 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80011701c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800117050 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800117058 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800117060 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80011706c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80011707c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800117098 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001170a8 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001170d8 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001170e8 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800117104 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800117128 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800117130 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80011713c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800117150 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800117158 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800117168 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800117174 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800117180 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800117190 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001171a4 fill:#e8f5e9,stroke:#2e7d32,stroke-width:3px,color:#1b5e20
    style B_8001171c4 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001171d0 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80011728c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001172f0 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001172f8 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001172fc fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800117308 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800117314 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800117320 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80011732c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800117338 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800117344 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800117350 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80011735c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80011745c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800117468 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800117490 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001174cc fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80011763c fill:#e8f5e9,stroke:#2e7d32,stroke-width:3px,color:#1b5e20
    style B_80011767c fill:#e8f5e9,stroke:#2e7d32,stroke-width:3px,color:#1b5e20
    style B_8001177a0 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001177a8 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001177b0 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001177b8 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001177c0 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001177c8 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001177d0 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
```

## 3. External Callee Classification (8 total: 6 constant-zero, 0 pointer-alloc, 1 memory-copy, 1 branch-sensitive)

| External Symbol | Classification | Args Read | Longest-Path Return (`X0`) | Alt-Branch Return (`X0`) | Post-Call Analysis |
| :--- | :--- | ---: | :--- | :--- | :--- |
| `f_8001177d8` | `CONSTANT_ZERO` | 3 | `0x0` | `0x1` | Return value X0 unread/overwritten -> constant 0 |
| `f_800117868` | `CONSTANT_ZERO` | 3 | `0x0` | `0x1` | Return value X0 unread/overwritten -> constant 0 |
| `f_802ba41d0` | `MEMORY_COPY` | 3 | `dst (X0)` | `dst (X0)` | Copies X2 bytes from src X1 to dst X0 (read after call at 0x800117034) |
| `f_8000ef570` | **BRANCH_SENSITIVE** | 2 | `0x1` | `0x0` | TBNZ bit #0 at 0x800117274 |
| `f_802843244` | `CONSTANT_ZERO` | 2 | `0x0` | `0x1` | Return value X0 unread/overwritten -> constant 0 |
| `f_802844c70` | `CONSTANT_ZERO` | 4 | `0x0` | `0x1` | Return value X0 unread/overwritten -> constant 0 |
| `f_802844d84` | `CONSTANT_ZERO` | 3 | `0x0` | `0x1` | Return value X0 unread/overwritten -> constant 0 |
| `f_802855d74` | `CONSTANT_ZERO` | 3 | `0x0` | `0x1` | Return value X0 unread/overwritten -> constant 0 |
