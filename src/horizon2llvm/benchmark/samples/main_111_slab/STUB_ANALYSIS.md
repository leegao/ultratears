# Automated Stub & Static CFG Longest-Path Analysis (`main_111_slab`)

## 1. Function Static CFG & Path Length Summary

| Function | Entry PC | Static ARM64 Insns | Basic Blocks | Loop Back-Edges | Est. Common Path (ARM64 Insns) | Est. Longest Path (ARM64 Insns) |
| :--- | :--- | ---: | ---: | ---: | ---: | ---: |
| `f_8001bbb90` | `0x8001bbb90` | 1476 | 181 | 4 | 146 | 1400 |

## 2. Function Control Flow Graphs (CFGs)

### Function `f_8001bbb90` (`0x8001bbb90` – 1476 insns, 181 blocks)

```mermaid
flowchart TD
    B_8001bbb90["0x8001bbb90..0x8001bbbdc\n(19 insns)"]
    B_8001bbbdc["0x8001bbbdc..0x8001bbbf8\n(7 insns)"]
    B_8001bbbf8["0x8001bbbf8..0x8001bbc08\n(4 insns)"]
    B_8001bbc08["0x8001bbc08..0x8001bbc34\n(11 insns)"]
    B_8001bbc34["0x8001bbc34..0x8001bbc48\n(5 insns, loop hdr)"]
    B_8001bbc48["0x8001bbc48..0x8001bbc50\n(2 insns)"]
    B_8001bbc50["0x8001bbc50..0x8001bbc68\n(6 insns, loop hdr)"]
    B_8001bbc68["0x8001bbc68..0x8001bbc6c\n(1 insns)"]
    B_8001bbc6c["0x8001bbc6c..0x8001bbc74\n(2 insns)"]
    B_8001bbc74["0x8001bbc74..0x8001bbc84\n(4 insns)"]
    B_8001bbc84["0x8001bbc84..0x8001bbc88\n(1 insns)"]
    B_8001bbc88["0x8001bbc88..0x8001bbc98\n(4 insns)"]
    B_8001bbc98["0x8001bbc98..0x8001bbc9c\n(1 insns)"]
    B_8001bbc9c["0x8001bbc9c..0x8001bbcac\n(4 insns)"]
    B_8001bbcac["0x8001bbcac..0x8001bbcb0\n(1 insns)"]
    B_8001bbcb0["0x8001bbcb0..0x8001bbcb8\n(2 insns)"]
    B_8001bbcb8["0x8001bbcb8..0x8001bbcc0\n(2 insns)"]
    B_8001bbcc0["0x8001bbcc0..0x8001bbccc\n(3 insns)"]
    B_8001bbccc["0x8001bbccc..0x8001bbcd8\n(3 insns)"]
    B_8001bbcd8["0x8001bbcd8..0x8001bbcdc\n(1 insns)"]
    B_8001bbcdc["0x8001bbcdc..0x8001bbcec\n(4 insns)"]
    B_8001bbcec["0x8001bbcec..0x8001bbcf8\n(3 insns)"]
    B_8001bbcf8["0x8001bbcf8..0x8001bbd08\n(4 insns)"]
    B_8001bbd08["0x8001bbd08..0x8001bbd24\n(7 insns)"]
    B_8001bbd24["0x8001bbd24..0x8001bbd30\n(3 insns)"]
    B_8001bbd30["0x8001bbd30..0x8001bbd48\n(6 insns)"]
    B_8001bbd48["0x8001bbd48..0x8001bbd4c\n(1 insns)"]
    B_8001bbd4c["0x8001bbd4c..0x8001bbd70\n(9 insns)"]
    B_8001bbd70["0x8001bbd70..0x8001bbd78\n(2 insns)"]
    B_8001bbd78["0x8001bbd78..0x8001bbd80\n(2 insns)"]
    B_8001bbd80["0x8001bbd80..0x8001bbda4\n(9 insns)"]
    B_8001bbda4["0x8001bbda4..0x8001bbdb0\n(3 insns)"]
    B_8001bbdb0["0x8001bbdb0..0x8001bbdbc\n(3 insns)"]
    B_8001bbdbc["0x8001bbdbc..0x8001bbdc4\n(2 insns)"]
    B_8001bbdc4["0x8001bbdc4..0x8001bbdd8\n(5 insns)"]
    B_8001bbdd8["0x8001bbdd8..0x8001bbe00\n(10 insns)"]
    B_8001bbe00["0x8001bbe00..0x8001bbe10\n(4 insns)"]
    B_8001bbe10["0x8001bbe10..0x8001bbe18\n(2 insns)"]
    B_8001bbe18["0x8001bbe18..0x8001bbe20\n(2 insns)"]
    B_8001bbe20["0x8001bbe20..0x8001bbe28\n(2 insns)"]
    B_8001bbe28["0x8001bbe28..0x8001bbe74\n(19 insns)"]
    B_8001bbe74["0x8001bbe74..0x8001bbecc\n(22 insns)"]
    B_8001bbecc["0x8001bbecc..0x8001bbedc\n(4 insns)"]
    B_8001bbedc["0x8001bbedc..0x8001bbee4\n(2 insns)"]
    B_8001bbee4["0x8001bbee4..0x8001bbef8\n(5 insns)"]
    B_8001bbef8["0x8001bbef8..0x8001bbefc\n(1 insns)"]
    B_8001bbefc["0x8001bbefc..0x8001bbf0c\n(4 insns)"]
    B_8001bbf0c["0x8001bbf0c..0x8001bbf1c\n(4 insns)"]
    B_8001bbf1c["0x8001bbf1c..0x8001bbf2c\n(4 insns)"]
    B_8001bbf2c["0x8001bbf2c..0x8001bbf50\n(9 insns)"]
    B_8001bbf50["0x8001bbf50..0x8001bbf54\n(1 insns)"]
    B_8001bbf54["0x8001bbf54..0x8001bbf58\n(1 insns)"]
    B_8001bbf58["0x8001bbf58..0x8001bbf60\n(2 insns)"]
    B_8001bbf60["0x8001bbf60..0x8001bbf78\n(6 insns)"]
    B_8001bbf78["0x8001bbf78..0x8001bbf7c\n(1 insns)"]
    B_8001bbf7c["0x8001bbf7c..0x8001bbf90\n(5 insns)"]
    B_8001bbf90["0x8001bbf90..0x8001bbf98\n(2 insns)"]
    B_8001bbf98["0x8001bbf98..0x8001bbf9c\n(1 insns)"]
    B_8001bbf9c["0x8001bbf9c..0x8001bbfb8\n(7 insns)"]
    B_8001bbfb8["0x8001bbfb8..0x8001bbfc0\n(2 insns)"]
    B_8001bbfc0["0x8001bbfc0..0x8001bbfec\n(11 insns)"]
    B_8001bbfec["0x8001bbfec..0x8001bc000\n(5 insns)"]
    B_8001bc000["0x8001bc000..0x8001bc028\n(10 insns)"]
    B_8001bc028["0x8001bc028..0x8001bc034\n(3 insns)"]
    B_8001bc034["0x8001bc034..0x8001bc03c\n(2 insns)"]
    B_8001bc03c["0x8001bc03c..0x8001bc04c\n(4 insns)"]
    B_8001bc04c["0x8001bc04c..0x8001bc050\n(1 insns)"]
    B_8001bc050["0x8001bc050..0x8001bc06c\n(7 insns)"]
    B_8001bc06c["0x8001bc06c..0x8001bc078\n(3 insns)"]
    B_8001bc078["0x8001bc078..0x8001bc0dc\n(25 insns)"]
    B_8001bc0dc["0x8001bc0dc..0x8001bc0ec\n(4 insns)"]
    B_8001bc0ec["0x8001bc0ec..0x8001bc0f0\n(1 insns)"]
    B_8001bc0f0["0x8001bc0f0..0x8001bc100\n(4 insns)"]
    B_8001bc100["0x8001bc100..0x8001bc108\n(2 insns)"]
    B_8001bc108["0x8001bc108..0x8001bc110\n(2 insns)"]
    B_8001bc110["0x8001bc110..0x8001bc118\n(2 insns)"]
    B_8001bc118["0x8001bc118..0x8001bc128\n(4 insns)"]
    B_8001bc128["0x8001bc128..0x8001bc12c\n(1 insns)"]
    B_8001bc12c["0x8001bc12c..0x8001bc13c\n(4 insns)"]
    B_8001bc13c["0x8001bc13c..0x8001bc144\n(2 insns)"]
    B_8001bc144["0x8001bc144..0x8001bc14c\n(2 insns)"]
    B_8001bc14c["0x8001bc14c..0x8001bc154\n(2 insns)"]
    B_8001bc154["0x8001bc154..0x8001bc1a0\n(19 insns)"]
    B_8001bc1a0["0x8001bc1a0..0x8001bc1f8\n(22 insns)"]
    B_8001bc1f8["0x8001bc1f8..0x8001bc25c\n(25 insns)"]
    B_8001bc25c["0x8001bc25c..0x8001bc26c\n(4 insns)"]
    B_8001bc26c["0x8001bc26c..0x8001bc270\n(1 insns)"]
    B_8001bc270["0x8001bc270..0x8001bc280\n(4 insns)"]
    B_8001bc280["0x8001bc280..0x8001bc288\n(2 insns)"]
    B_8001bc288["0x8001bc288..0x8001bc290\n(2 insns)"]
    B_8001bc290["0x8001bc290..0x8001bc298\n(2 insns)"]
    B_8001bc298["0x8001bc298..0x8001bc2e4\n(19 insns)"]
    B_8001bc2e4["0x8001bc2e4..0x8001bc33c\n(22 insns)"]
    B_8001bc33c["0x8001bc33c..0x8001bc3a0\n(25 insns)"]
    B_8001bc3a0["0x8001bc3a0..0x8001bc3b0\n(4 insns)"]
    B_8001bc3b0["0x8001bc3b0..0x8001bc3b4\n(1 insns)"]
    B_8001bc3b4["0x8001bc3b4..0x8001bc3c4\n(4 insns)"]
    B_8001bc3c4["0x8001bc3c4..0x8001bc404\n(16 insns)"]
    B_8001bc404["0x8001bc404..0x8001bc40c\n(2 insns)"]
    B_8001bc40c["0x8001bc40c..0x8001bc414\n(2 insns)"]
    B_8001bc414["0x8001bc414..0x8001bc41c\n(2 insns)"]
    B_8001bc41c["0x8001bc41c..0x8001bc424\n(2 insns)"]
    B_8001bc424["0x8001bc424..0x8001bc448\n(9 insns)"]
    B_8001bc448["0x8001bc448..0x8001bc47c\n(13 insns)"]
    B_8001bc47c["0x8001bc47c..0x8001bc4e0\n(25 insns)"]
    B_8001bc4e0["0x8001bc4e0..0x8001bc4e4\n(1 insns)"]
    B_8001bc4e4["0x8001bc4e4..0x8001bc500\n(7 insns)"]
    B_8001bc500["0x8001bc500..0x8001bc514\n(5 insns)"]
    B_8001bc514["0x8001bc514..0x8001bc534\n(8 insns)"]
    B_8001bc534["0x8001bc534..0x8001bc550\n(7 insns)"]
    B_8001bc550["0x8001bc550..0x8001bc568\n(6 insns)"]
    B_8001bc568["0x8001bc568..0x8001bc578\n(4 insns, loop hdr)"]
    B_8001bc578["0x8001bc578..0x8001bc580\n(2 insns)"]
    B_8001bc580["0x8001bc580..0x8001bc58c\n(3 insns)"]
    B_8001bc58c["0x8001bc58c..0x8001bc590\n(1 insns)"]
    B_8001bc590["0x8001bc590..0x8001bc59c\n(3 insns)"]
    B_8001bc59c["0x8001bc59c..0x8001bc5a4\n(2 insns)"]
    B_8001bc5a4["0x8001bc5a4..0x8001bc5c4\n(8 insns)"]
    B_8001bc5c4["0x8001bc5c4..0x8001bc5e4\n(8 insns)"]
    B_8001bc5e4["0x8001bc5e4..0x8001bc5ec\n(2 insns)"]
    B_8001bc5ec["0x8001bc5ec..0x8001bc5fc\n(4 insns, loop hdr)"]
    B_8001bc5fc["0x8001bc5fc..0x8001bc608\n(3 insns)"]
    B_8001bc608["0x8001bc608..0x8001bc60c\n(1 insns)"]
    B_8001bc60c["0x8001bc60c..0x8001bc618\n(3 insns)"]
    B_8001bc618["0x8001bc618..0x8001bc638\n(8 insns)"]
    B_8001bc638["0x8001bc638..0x8001bc654\n(7 insns)"]
    B_8001bc654["0x8001bc654..0x8001bc670\n(7 insns, switch)"]
    B_8001bc670["0x8001bc670..0x8001bc678\n(2 insns)"]
    B_8001bc678["0x8001bc678..0x8001bc680\n(2 insns)"]
    B_8001bc680["0x8001bc680..0x8001bc6cc\n(19 insns)"]
    B_8001bc6cc["0x8001bc6cc..0x8001bc724\n(22 insns)"]
    B_8001bc724["0x8001bc724..0x8001bc72c\n(2 insns)"]
    B_8001bc72c["0x8001bc72c..0x8001bc740\n(5 insns)"]
    B_8001bc740["0x8001bc740..0x8001bc7a0\n(24 insns)"]
    B_8001bc7a0["0x8001bc7a0..0x8001bc7cc\n(11 insns)"]
    B_8001bc7cc["0x8001bc7cc..0x8001bc804\n(14 insns)"]
    B_8001bc804["0x8001bc804..0x8001bc824\n(8 insns)"]
    B_8001bc824["0x8001bc824..0x8001bc870\n(19 insns)"]
    B_8001bc870["0x8001bc870..0x8001bc8c8\n(22 insns)"]
    B_8001bc8c8["0x8001bc8c8..0x8001bc914\n(19 insns)"]
    B_8001bc914["0x8001bc914..0x8001bc96c\n(22 insns)"]
    B_8001bc96c["0x8001bc96c..0x8001bc994\n(10 insns)"]
    B_8001bc994["0x8001bc994..0x8001bc9f4\n(24 insns)"]
    B_8001bc9f4["0x8001bc9f4..0x8001bca14\n(8 insns)"]
    B_8001bca14["0x8001bca14..0x8001bca50\n(15 insns)"]
    B_8001bca50["0x8001bca50..0x8001bca5c\n(3 insns)"]
    B_8001bca5c["0x8001bca5c..0x8001bca80\n(9 insns)"]
    B_8001bca80["0x8001bca80..0x8001bcacc\n(19 insns)"]
    B_8001bcacc["0x8001bcacc..0x8001bcb24\n(22 insns)"]
    B_8001bcb24["0x8001bcb24..0x8001bcb70\n(19 insns)"]
    B_8001bcb70["0x8001bcb70..0x8001bcbc8\n(22 insns)"]
    B_8001bcbc8["0x8001bcbc8..0x8001bcc14\n(19 insns)"]
    B_8001bcc14["0x8001bcc14..0x8001bcc6c\n(22 insns)"]
    B_8001bcc6c["0x8001bcc6c..0x8001bccb8\n(19 insns)"]
    B_8001bccb8["0x8001bccb8..0x8001bcd10\n(22 insns)"]
    B_8001bcd10["0x8001bcd10..0x8001bcd5c\n(19 insns)"]
    B_8001bcd5c["0x8001bcd5c..0x8001bcdb4\n(22 insns)"]
    B_8001bcdb4["0x8001bcdb4..0x8001bce00\n(19 insns)"]
    B_8001bce00["0x8001bce00..0x8001bce58\n(22 insns)"]
    B_8001bce58["0x8001bce58..0x8001bcea4\n(19 insns)"]
    B_8001bcea4["0x8001bcea4..0x8001bcefc\n(22 insns)"]
    B_8001bcefc["0x8001bcefc..0x8001bcf48\n(19 insns)"]
    B_8001bcf48["0x8001bcf48..0x8001bcfa0\n(22 insns)"]
    B_8001bcfa0["0x8001bcfa0..0x8001bcfec\n(19 insns)"]
    B_8001bcfec["0x8001bcfec..0x8001bd044\n(22 insns)"]
    B_8001bd044["0x8001bd044..0x8001bd090\n(19 insns)"]
    B_8001bd090["0x8001bd090..0x8001bd0e8\n(22 insns)"]
    B_8001bd0e8["0x8001bd0e8..0x8001bd11c\n(13 insns)"]
    B_8001bd11c["0x8001bd11c..0x8001bd160\n(17 insns)"]
    B_8001bd160["0x8001bd160..0x8001bd18c\n(11 insns)"]
    B_8001bd18c["0x8001bd18c..0x8001bd1c8\n(15 insns)"]
    B_8001bd1c8["0x8001bd1c8..0x8001bd1d0\n(2 insns)"]
    B_8001bd1d0["0x8001bd1d0..0x8001bd1d4\n(1 insns)"]
    B_8001bd1d4["0x8001bd1d4..0x8001bd1dc\n(2 insns)"]
    B_8001bd1dc["0x8001bd1dc..0x8001bd1e0\n(1 insns)"]
    B_8001bd1e0["0x8001bd1e0..0x8001bd200\n(8 insns)"]
    B_8001bd200["0x8001bd200..0x8001bd22c\n(11 insns)"]
    B_8001bd22c["0x8001bd22c..0x8001bd270\n(17 insns)"]
    B_8001bd270["0x8001bd270..0x8001bd288\n(6 insns)"]
    B_8001bd288["0x8001bd288..0x8001bd298\n(4 insns)"]
    B_8001bd298["0x8001bd298..0x8001bd2a0\n(2 insns)"]
    B_8001bbb90 -- "taken" --> B_8001bc804
    B_8001bbb90 -- "fallthrough" --> B_8001bbbdc
    B_8001bbbdc --> B_8001bbbf8
    B_8001bbbf8 -- "taken" --> B_8001bbccc
    B_8001bbbf8 -- "fallthrough" --> B_8001bbc08
    B_8001bbc08 --> B_8001bbc34
    B_8001bbc34 -- "taken" --> B_8001bbd08
    B_8001bbc34 -- "fallthrough" --> B_8001bbc48
    B_8001bbc48 --> B_8001bbc50
    B_8001bbc50 -- "taken" --> B_8001bbcc0
    B_8001bbc50 -- "fallthrough" --> B_8001bbc68
    B_8001bbc68 -- "taken" --> B_8001bbd08
    B_8001bbc68 -- "fallthrough" --> B_8001bbc6c
    B_8001bbc6c -- "taken" --> B_8001bbcc0
    B_8001bbc6c -- "fallthrough" --> B_8001bbc74
    B_8001bbc74 -- "taken" --> B_8001bbcc0
    B_8001bbc74 -- "fallthrough" --> B_8001bbc84
    B_8001bbc84 -- "taken" --> B_8001bbd08
    B_8001bbc84 -- "fallthrough" --> B_8001bbc88
    B_8001bbc88 -- "taken" --> B_8001bbcc0
    B_8001bbc88 -- "fallthrough" --> B_8001bbc98
    B_8001bbc98 -- "taken" --> B_8001bbd08
    B_8001bbc98 -- "fallthrough" --> B_8001bbc9c
    B_8001bbc9c -- "taken" --> B_8001bbcc0
    B_8001bbc9c -- "fallthrough" --> B_8001bbcac
    B_8001bbcac -- "taken" --> B_8001bbd08
    B_8001bbcac -- "fallthrough" --> B_8001bbcb0
    B_8001bbcb0 -. "loop back" .-> B_8001bbc50
    B_8001bbcb8 --> B_8001bbcc0
    B_8001bbcc0 -. "loop back" .-> B_8001bbc34
    B_8001bbcc0 -- "fallthrough" --> B_8001bbccc
    B_8001bbccc -- "taken" --> B_8001bd22c
    B_8001bbccc -- "fallthrough" --> B_8001bbcd8
    B_8001bbcd8 --> B_8001bbcdc
    B_8001bbcdc -- "taken" --> B_8001bd270
    B_8001bbcdc -- "fallthrough" --> B_8001bbcec
    B_8001bbcec --> B_8001bbcf8
    B_8001bbcf8 --> B_8001bbd4c
    B_8001bbd08 -- "taken" --> B_8001bbda4
    B_8001bbd08 -- "fallthrough" --> B_8001bbd24
    B_8001bbd24 -- "taken" --> B_8001bbecc
    B_8001bbd24 -- "fallthrough" --> B_8001bbd30
    B_8001bbd30 -- "taken" --> B_8001bbd4c
    B_8001bbd30 -- "fallthrough" --> B_8001bbd48
    B_8001bbd48 -- "taken" --> B_8001bc034
    B_8001bbd48 -- "fallthrough" --> B_8001bbd4c
    B_8001bbd4c -- "taken" --> B_8001bbd78
    B_8001bbd4c -- "fallthrough" --> B_8001bbd70
    B_8001bbd70 --> B_8001bbd78
    B_8001bbd78 -- "taken" --> B_8001bbf90
    B_8001bbd78 -- "fallthrough" --> B_8001bbd80
    B_8001bbd80 --> EXIT_8001bbd80["return"]
    B_8001bbda4 -- "taken" --> B_8001bc404
    B_8001bbda4 -- "fallthrough" --> B_8001bbdb0
    B_8001bbdb0 -- "taken" --> B_8001bc740
    B_8001bbdb0 -- "fallthrough" --> B_8001bbdbc
    B_8001bbdbc --> B_8001bbdc4
    B_8001bbdc4 -- "taken" --> B_8001bc7a0
    B_8001bbdc4 -- "fallthrough" --> B_8001bbdd8
    B_8001bbdd8 -- "taken" --> B_8001bc0dc
    B_8001bbdd8 -- "fallthrough" --> B_8001bbe00
    B_8001bbe00 -- "taken" --> B_8001bc078
    B_8001bbe00 -- "fallthrough" --> B_8001bbe10
    B_8001bbe10 -- "taken" --> B_8001bcd10
    B_8001bbe10 -- "fallthrough" --> B_8001bbe18
    B_8001bbe18 -- "taken" --> B_8001bcdb4
    B_8001bbe18 -- "fallthrough" --> B_8001bbe20
    B_8001bbe20 -- "taken" --> B_8001bc0dc
    B_8001bbe20 -- "fallthrough" --> B_8001bbe28
    B_8001bbe28 -- "taken" --> B_8001bc0dc
    B_8001bbe28 -- "fallthrough" --> B_8001bbe74
    B_8001bbe74 --> B_8001bc0dc
    B_8001bbecc -- "taken" --> B_8001bc60c
    B_8001bbecc -- "fallthrough" --> B_8001bbedc
    B_8001bbedc --> B_8001bbee4
    B_8001bbee4 -- "taken" --> B_8001bc5a4
    B_8001bbee4 -- "fallthrough" --> B_8001bbef8
    B_8001bbef8 -- "taken" --> B_8001bc96c
    B_8001bbef8 -- "fallthrough" --> B_8001bbefc
    B_8001bbefc -- "taken" --> B_8001bc994
    B_8001bbefc -- "fallthrough" --> B_8001bbf0c
    B_8001bbf0c -- "taken" --> B_8001bc9f4
    B_8001bbf0c -- "fallthrough" --> B_8001bbf1c
    B_8001bbf1c -- "taken" --> B_8001bca5c
    B_8001bbf1c -- "fallthrough" --> B_8001bbf2c
    B_8001bbf2c --> B_8001bbf50
    B_8001bbf50 -- "taken" --> B_8001bc618
    B_8001bbf50 -- "fallthrough" --> B_8001bbf54
    B_8001bbf54 --> B_8001bbf58
    B_8001bbf58 -- "taken" --> B_8001bbf7c
    B_8001bbf58 -- "fallthrough" --> B_8001bbf60
    B_8001bbf60 -- "taken" --> B_8001bc514
    B_8001bbf60 -- "fallthrough" --> B_8001bbf78
    B_8001bbf78 --> B_8001bbf7c
    B_8001bbf7c -- "taken" --> B_8001bbd80
    B_8001bbf7c -- "fallthrough" --> B_8001bbf90
    B_8001bbf90 -- "taken" --> B_8001bc534
    B_8001bbf90 -- "fallthrough" --> B_8001bbf98
    B_8001bbf98 -- "taken" --> B_8001bc534
    B_8001bbf98 -- "fallthrough" --> B_8001bbf9c
    B_8001bbf9c -- "taken" --> B_8001bbfc0
    B_8001bbf9c -- "fallthrough" --> B_8001bbfb8
    B_8001bbfb8 --> B_8001bbfc0
    B_8001bbfc0 -- "taken" --> B_8001bc000
    B_8001bbfc0 -- "fallthrough" --> B_8001bbfec
    B_8001bbfec --> B_8001bc000
    B_8001bc000 -- "taken" --> B_8001bc4e4
    B_8001bc000 -- "fallthrough" --> B_8001bc028
    B_8001bc028 --> B_8001bc06c
    B_8001bc034 --> B_8001bc03c
    B_8001bc03c -- "taken" --> B_8001bbee4
    B_8001bc03c -- "fallthrough" --> B_8001bc04c
    B_8001bc04c -- "taken" --> B_8001bbee4
    B_8001bc04c -- "fallthrough" --> B_8001bc050
    B_8001bc050 --> B_8001bc06c
    B_8001bc06c --> B_8001bbd80
    B_8001bc078 -- "taken" --> B_8001bbd30
    B_8001bc078 -- "fallthrough" --> B_8001bc0dc
    B_8001bc0dc -- "taken" --> B_8001bc680
    B_8001bc0dc -- "fallthrough" --> B_8001bc0ec
    B_8001bc0ec -- "taken" --> B_8001bc118
    B_8001bc0ec -- "fallthrough" --> B_8001bc0f0
    B_8001bc0f0 -- "taken" --> B_8001bc47c
    B_8001bc0f0 -- "fallthrough" --> B_8001bc100
    B_8001bc100 -- "taken" --> B_8001bca80
    B_8001bc100 -- "fallthrough" --> B_8001bc108
    B_8001bc108 -- "taken" --> B_8001bcb24
    B_8001bc108 -- "fallthrough" --> B_8001bc110
    B_8001bc110 -- "taken" --> B_8001bcbc8
    B_8001bc110 -- "fallthrough" --> B_8001bc118
    B_8001bc118 -- "taken" --> B_8001bc824
    B_8001bc118 -- "fallthrough" --> B_8001bc128
    B_8001bc128 -- "taken" --> B_8001bc25c
    B_8001bc128 -- "fallthrough" --> B_8001bc12c
    B_8001bc12c -- "taken" --> B_8001bc1f8
    B_8001bc12c -- "fallthrough" --> B_8001bc13c
    B_8001bc13c -- "taken" --> B_8001bce58
    B_8001bc13c -- "fallthrough" --> B_8001bc144
    B_8001bc144 -- "taken" --> B_8001bcefc
    B_8001bc144 -- "fallthrough" --> B_8001bc14c
    B_8001bc14c -- "taken" --> B_8001bc25c
    B_8001bc14c -- "fallthrough" --> B_8001bc154
    B_8001bc154 -- "taken" --> B_8001bc25c
    B_8001bc154 -- "fallthrough" --> B_8001bc1a0
    B_8001bc1a0 --> B_8001bc25c
    B_8001bc1f8 -- "taken" --> B_8001bbd30
    B_8001bc1f8 -- "fallthrough" --> B_8001bc25c
    B_8001bc25c -- "taken" --> B_8001bc8c8
    B_8001bc25c -- "fallthrough" --> B_8001bc26c
    B_8001bc26c -- "taken" --> B_8001bc3a0
    B_8001bc26c -- "fallthrough" --> B_8001bc270
    B_8001bc270 -- "taken" --> B_8001bc33c
    B_8001bc270 -- "fallthrough" --> B_8001bc280
    B_8001bc280 -- "taken" --> B_8001bcfa0
    B_8001bc280 -- "fallthrough" --> B_8001bc288
    B_8001bc288 -- "taken" --> B_8001bd044
    B_8001bc288 -- "fallthrough" --> B_8001bc290
    B_8001bc290 -- "taken" --> B_8001bc3a0
    B_8001bc290 -- "fallthrough" --> B_8001bc298
    B_8001bc298 -- "taken" --> B_8001bc3a0
    B_8001bc298 -- "fallthrough" --> B_8001bc2e4
    B_8001bc2e4 --> B_8001bc3a0
    B_8001bc33c -- "taken" --> B_8001bbd30
    B_8001bc33c -- "fallthrough" --> B_8001bc3a0
    B_8001bc3a0 -- "taken" --> B_8001bcc6c
    B_8001bc3a0 -- "fallthrough" --> B_8001bc3b0
    B_8001bc3b0 -- "taken" --> B_8001bc404
    B_8001bc3b0 -- "fallthrough" --> B_8001bc3b4
    B_8001bc3b4 -- "taken" --> B_8001bc40c
    B_8001bc3b4 -- "fallthrough" --> B_8001bc3c4
    B_8001bc3c4 -- "taken" --> B_8001bbd30
    B_8001bc3c4 -- "fallthrough" --> B_8001bc404
    B_8001bc404 --> B_8001bbd24
    B_8001bc40c -- "taken" --> B_8001bd0e8
    B_8001bc40c -- "fallthrough" --> B_8001bc414
    B_8001bc414 -- "taken" --> B_8001bd160
    B_8001bc414 -- "fallthrough" --> B_8001bc41c
    B_8001bc41c -- "taken" --> B_8001bc404
    B_8001bc41c -- "fallthrough" --> B_8001bc424
    B_8001bc424 -- "taken" --> B_8001bc404
    B_8001bc424 -- "fallthrough" --> B_8001bc448
    B_8001bc448 --> B_8001bc404
    B_8001bc47c -- "taken" --> B_8001bc118
    B_8001bc47c -- "fallthrough" --> B_8001bc4e0
    B_8001bc4e0 --> B_8001bbd30
    B_8001bc4e4 -- "taken" --> B_8001bd1c8
    B_8001bc4e4 -- "fallthrough" --> B_8001bc500
    B_8001bc500 --> B_8001bc028
    B_8001bc514 --> B_8001bbf7c
    B_8001bc534 -- "taken" --> B_8001bbd80
    B_8001bc534 -- "fallthrough" --> B_8001bc550
    B_8001bc550 --> B_8001bc568
    B_8001bc568 -- "taken" --> B_8001bc5fc
    B_8001bc568 -- "fallthrough" --> B_8001bc578
    B_8001bc578 -- "taken" --> B_8001bc5fc
    B_8001bc578 -- "fallthrough" --> B_8001bc580
    B_8001bc580 -- "taken" --> B_8001bc5e4
    B_8001bc580 -- "fallthrough" --> B_8001bc58c
    B_8001bc58c -- "taken" --> B_8001bc59c
    B_8001bc58c -- "fallthrough" --> B_8001bc590
    B_8001bc590 --> B_8001bc59c
    B_8001bc59c --> B_8001bc06c
    B_8001bc5a4 -- "taken" --> B_8001bbef8
    B_8001bc5a4 -- "fallthrough" --> B_8001bc5c4
    B_8001bc5c4 --> B_8001bbef8
    B_8001bc5e4 --> B_8001bc5ec
    B_8001bc5ec -- "taken" --> B_8001bd1d0
    B_8001bc5ec -- "fallthrough" --> B_8001bc5fc
    B_8001bc5fc -. "loop back" .-> B_8001bc568
    B_8001bc5fc -- "fallthrough" --> B_8001bc608
    B_8001bc608 --> B_8001bbd80
    B_8001bc60c --> B_8001bc03c
    B_8001bc618 -- "taken" --> B_8001bc724
    B_8001bc618 -- "fallthrough" --> B_8001bc638
    B_8001bc638 -- "taken" --> B_8001bc724
    B_8001bc638 -- "fallthrough" --> B_8001bc654
    B_8001bc654 -- "case" --> B_8001bc670
    B_8001bc654 -- "case" --> B_8001bc72c
    B_8001bc654 -- "case" --> B_8001bd1e0
    B_8001bc654 -- "case" --> B_8001bd200
    B_8001bc670 --> B_8001bc678
    B_8001bc678 --> B_8001bbf58
    B_8001bc680 -- "taken" --> B_8001bc0ec
    B_8001bc680 -- "fallthrough" --> B_8001bc6cc
    B_8001bc6cc --> B_8001bc0ec
    B_8001bc724 --> B_8001bbf58
    B_8001bc72c --> B_8001bc678
    B_8001bc740 --> B_8001bbdc4
    B_8001bc7a0 -- "taken" --> B_8001bbdd8
    B_8001bc7a0 -- "fallthrough" --> B_8001bc7cc
    B_8001bc7cc --> B_8001bbdd8
    B_8001bc804 --> B_8001bbbf8
    B_8001bc824 -- "taken" --> B_8001bc128
    B_8001bc824 -- "fallthrough" --> B_8001bc870
    B_8001bc870 --> B_8001bc128
    B_8001bc8c8 -- "taken" --> B_8001bc26c
    B_8001bc8c8 -- "fallthrough" --> B_8001bc914
    B_8001bc914 --> B_8001bc26c
    B_8001bc96c --> B_8001bca14
    B_8001bc994 --> B_8001bc9f4
    B_8001bc9f4 --> B_8001bca14
    B_8001bca14 -- "taken" --> B_8001bbd80
    B_8001bca14 -- "fallthrough" --> B_8001bca50
    B_8001bca50 --> B_8001bbf90
    B_8001bca5c --> B_8001bbf50
    B_8001bca80 -- "taken" --> B_8001bc108
    B_8001bca80 -- "fallthrough" --> B_8001bcacc
    B_8001bcacc --> B_8001bc108
    B_8001bcb24 -- "taken" --> B_8001bc110
    B_8001bcb24 -- "fallthrough" --> B_8001bcb70
    B_8001bcb70 --> B_8001bc110
    B_8001bcbc8 -- "taken" --> B_8001bc118
    B_8001bcbc8 -- "fallthrough" --> B_8001bcc14
    B_8001bcc14 --> B_8001bc118
    B_8001bcc6c -- "taken" --> B_8001bc3b0
    B_8001bcc6c -- "fallthrough" --> B_8001bccb8
    B_8001bccb8 --> B_8001bc3b0
    B_8001bcd10 -- "taken" --> B_8001bbe18
    B_8001bcd10 -- "fallthrough" --> B_8001bcd5c
    B_8001bcd5c --> B_8001bbe18
    B_8001bcdb4 -- "taken" --> B_8001bbe20
    B_8001bcdb4 -- "fallthrough" --> B_8001bce00
    B_8001bce00 --> B_8001bbe20
    B_8001bce58 -- "taken" --> B_8001bc144
    B_8001bce58 -- "fallthrough" --> B_8001bcea4
    B_8001bcea4 --> B_8001bc144
    B_8001bcefc -- "taken" --> B_8001bc14c
    B_8001bcefc -- "fallthrough" --> B_8001bcf48
    B_8001bcf48 --> B_8001bc14c
    B_8001bcfa0 -- "taken" --> B_8001bc288
    B_8001bcfa0 -- "fallthrough" --> B_8001bcfec
    B_8001bcfec --> B_8001bc288
    B_8001bd044 -- "taken" --> B_8001bc290
    B_8001bd044 -- "fallthrough" --> B_8001bd090
    B_8001bd090 --> B_8001bc290
    B_8001bd0e8 -- "taken" --> B_8001bc414
    B_8001bd0e8 -- "fallthrough" --> B_8001bd11c
    B_8001bd11c --> B_8001bc414
    B_8001bd160 -- "taken" --> B_8001bc41c
    B_8001bd160 -- "fallthrough" --> B_8001bd18c
    B_8001bd18c --> B_8001bc41c
    B_8001bd1c8 --> B_8001bc028
    B_8001bd1d0 -- "taken" --> B_8001bc58c
    B_8001bd1d0 -- "fallthrough" --> B_8001bd1d4
    B_8001bd1d4 -. "loop back" .-> B_8001bc5ec
    B_8001bd1d4 -- "fallthrough" --> B_8001bd1dc
    B_8001bd1dc --> B_8001bc5fc
    B_8001bd1e0 --> B_8001bbf58
    B_8001bd200 --> B_8001bbf58
    B_8001bd22c --> B_8001bbcdc
    B_8001bd270 -- "taken" --> B_8001bd298
    B_8001bd270 -- "fallthrough" --> B_8001bd288
    B_8001bd288 --> B_8001bd298
    B_8001bd298 --> B_8001bbcf8
    %% Path Highlighting
    style B_8001bbb90 fill:#e8f5e9,stroke:#2e7d32,stroke-width:3px,color:#1b5e20
    style B_8001bbbdc fill:#e1f5fe,stroke:#0288d1,stroke-width:2px,color:#01579b
    style B_8001bbbf8 fill:#e8f5e9,stroke:#2e7d32,stroke-width:3px,color:#1b5e20
    style B_8001bbc08 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001bbc34 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001bbc48 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001bbc50 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001bbc68 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001bbc6c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001bbc74 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001bbc84 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001bbc88 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001bbc98 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001bbc9c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001bbcac fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001bbccc fill:#e1f5fe,stroke:#0288d1,stroke-width:2px,color:#01579b
    style B_8001bbcdc fill:#e1f5fe,stroke:#0288d1,stroke-width:2px,color:#01579b
    style B_8001bbcec fill:#e1f5fe,stroke:#0288d1,stroke-width:2px,color:#01579b
    style B_8001bbcf8 fill:#e1f5fe,stroke:#0288d1,stroke-width:2px,color:#01579b
    style B_8001bbd08 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001bbd24 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001bbd30 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001bbd48 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001bbd4c fill:#e1f5fe,stroke:#0288d1,stroke-width:2px,color:#01579b
    style B_8001bbd78 fill:#e1f5fe,stroke:#0288d1,stroke-width:2px,color:#01579b
    style B_8001bbd80 fill:#e8f5e9,stroke:#2e7d32,stroke-width:3px,color:#1b5e20
    style B_8001bbda4 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001bbdb0 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001bbdc4 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001bbdd8 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001bbe00 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001bbe10 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001bbe18 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001bbe20 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001bbe28 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001bbe74 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001bbee4 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001bbef8 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001bbefc fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001bbf0c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001bbf1c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001bbf50 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001bbf58 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001bbf60 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001bbf7c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001bbf90 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001bbf98 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001bc034 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001bc03c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001bc04c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001bc06c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001bc0dc fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001bc0ec fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001bc0f0 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001bc100 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001bc108 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001bc110 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001bc118 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001bc128 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001bc12c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001bc13c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001bc144 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001bc14c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001bc154 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001bc1a0 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001bc25c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001bc26c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001bc270 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001bc280 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001bc288 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001bc290 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001bc298 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001bc2e4 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001bc3a0 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001bc3b0 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001bc3b4 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001bc404 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001bc40c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001bc414 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001bc41c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001bc424 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001bc448 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001bc514 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001bc534 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001bc550 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001bc568 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001bc578 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001bc580 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001bc58c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001bc590 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001bc59c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001bc5a4 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001bc5c4 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001bc5e4 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001bc5ec fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001bc618 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001bc638 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001bc654 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001bc680 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001bc6cc fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001bc740 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001bc7a0 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001bc7cc fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001bc804 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001bc824 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001bc870 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001bc8c8 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001bc914 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001bca5c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001bca80 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001bcacc fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001bcb24 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001bcb70 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001bcbc8 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001bcc14 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001bcc6c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001bccb8 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001bcd10 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001bcd5c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001bcdb4 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001bce00 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001bce58 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001bcea4 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001bcefc fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001bcf48 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001bcfa0 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001bcfec fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001bd044 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001bd090 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001bd0e8 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001bd11c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001bd160 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001bd18c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001bd1d0 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001bd200 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001bd22c fill:#e1f5fe,stroke:#0288d1,stroke-width:2px,color:#01579b
```

## 3. External Callee Classification (3 total: 2 constant-zero, 0 pointer-alloc, 0 memory-copy, 1 branch-sensitive)

| External Symbol | Classification | Args Read | Longest-Path Return (`X0`) | Alt-Branch Return (`X0`) | Post-Call Analysis |
| :--- | :--- | ---: | :--- | :--- | :--- |
| `f_802ba39a0` | **BRANCH_SENSITIVE** | 5 | `0x1` | `0x0` | CBZ on return register w0 at 0x8001bd284 |
| `f_802ba39b0` | `CONSTANT_ZERO` | 2 | `0x0` | `0x1` | Return value X0 unread/overwritten -> constant 0 |
| `f_800099860` | `CONSTANT_ZERO` | 3 | `0x0` | `0x1` | Return value X0 unread/overwritten -> constant 0 |
