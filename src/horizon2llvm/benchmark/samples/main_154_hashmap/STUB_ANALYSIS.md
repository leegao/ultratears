# Automated Stub & Static CFG Longest-Path Analysis (`main_154_hashmap`)

## 1. Function Static CFG & Path Length Summary

| Function | Entry PC | Static ARM64 Insns | Basic Blocks | Loop Back-Edges | Est. Common Path (ARM64 Insns) | Est. Longest Path (ARM64 Insns) |
| :--- | :--- | ---: | ---: | ---: | ---: | ---: |
| `f_8002688c8` | `0x8002688c8` | 1522 | 167 | 4 | 139 | 1500 |

## 2. Function Control Flow Graphs (CFGs)

### Function `f_8002688c8` (`0x8002688c8` – 1522 insns, 167 blocks)

```mermaid
flowchart TD
    B_8002688c8["0x8002688c8..0x800268914\n(19 insns)"]
    B_800268914["0x800268914..0x800268930\n(7 insns)"]
    B_800268930["0x800268930..0x800268940\n(4 insns)"]
    B_800268940["0x800268940..0x80026896c\n(11 insns)"]
    B_80026896c["0x80026896c..0x800268980\n(5 insns, loop hdr)"]
    B_800268980["0x800268980..0x800268988\n(2 insns)"]
    B_800268988["0x800268988..0x8002689a0\n(6 insns, loop hdr)"]
    B_8002689a0["0x8002689a0..0x8002689a4\n(1 insns)"]
    B_8002689a4["0x8002689a4..0x8002689ac\n(2 insns)"]
    B_8002689ac["0x8002689ac..0x8002689bc\n(4 insns)"]
    B_8002689bc["0x8002689bc..0x8002689c0\n(1 insns)"]
    B_8002689c0["0x8002689c0..0x8002689d0\n(4 insns)"]
    B_8002689d0["0x8002689d0..0x8002689d4\n(1 insns)"]
    B_8002689d4["0x8002689d4..0x8002689e4\n(4 insns)"]
    B_8002689e4["0x8002689e4..0x8002689e8\n(1 insns)"]
    B_8002689e8["0x8002689e8..0x8002689f0\n(2 insns)"]
    B_8002689f0["0x8002689f0..0x800268a0c\n(7 insns)"]
    B_800268a0c["0x800268a0c..0x800268a18\n(3 insns)"]
    B_800268a18["0x800268a18..0x800268a28\n(4 insns)"]
    B_800268a28["0x800268a28..0x800268a2c\n(1 insns)"]
    B_800268a2c["0x800268a2c..0x800268a44\n(6 insns)"]
    B_800268a44["0x800268a44..0x800268a64\n(8 insns)"]
    B_800268a64["0x800268a64..0x800268a6c\n(2 insns)"]
    B_800268a6c["0x800268a6c..0x800268a74\n(2 insns)"]
    B_800268a74["0x800268a74..0x800268a98\n(9 insns)"]
    B_800268a98["0x800268a98..0x800268aa0\n(2 insns)"]
    B_800268aa0["0x800268aa0..0x800268ab4\n(5 insns)"]
    B_800268ab4["0x800268ab4..0x800268abc\n(2 insns)"]
    B_800268abc["0x800268abc..0x800268acc\n(4 insns)"]
    B_800268acc["0x800268acc..0x800268af0\n(9 insns)"]
    B_800268af0["0x800268af0..0x800268b00\n(4 insns)"]
    B_800268b00["0x800268b00..0x800268b08\n(2 insns)"]
    B_800268b08["0x800268b08..0x800268b10\n(2 insns)"]
    B_800268b10["0x800268b10..0x800268b18\n(2 insns)"]
    B_800268b18["0x800268b18..0x800268b28\n(4 insns)"]
    B_800268b28["0x800268b28..0x800268b2c\n(1 insns)"]
    B_800268b2c["0x800268b2c..0x800268b3c\n(4 insns)"]
    B_800268b3c["0x800268b3c..0x800268b44\n(2 insns)"]
    B_800268b44["0x800268b44..0x800268b4c\n(2 insns)"]
    B_800268b4c["0x800268b4c..0x800268b54\n(2 insns)"]
    B_800268b54["0x800268b54..0x800268b64\n(4 insns)"]
    B_800268b64["0x800268b64..0x800268b68\n(1 insns)"]
    B_800268b68["0x800268b68..0x800268b78\n(4 insns)"]
    B_800268b78["0x800268b78..0x800268b80\n(2 insns)"]
    B_800268b80["0x800268b80..0x800268b88\n(2 insns)"]
    B_800268b88["0x800268b88..0x800268b90\n(2 insns)"]
    B_800268b90["0x800268b90..0x800268ba0\n(4 insns)"]
    B_800268ba0["0x800268ba0..0x800268ba4\n(1 insns)"]
    B_800268ba4["0x800268ba4..0x800268bb4\n(4 insns)"]
    B_800268bb4["0x800268bb4..0x800268bbc\n(2 insns)"]
    B_800268bbc["0x800268bbc..0x800268bc4\n(2 insns)"]
    B_800268bc4["0x800268bc4..0x800268bcc\n(2 insns)"]
    B_800268bcc["0x800268bcc..0x800268bdc\n(4 insns)"]
    B_800268bdc["0x800268bdc..0x800268be0\n(1 insns)"]
    B_800268be0["0x800268be0..0x800268bf0\n(4 insns)"]
    B_800268bf0["0x800268bf0..0x800268bf8\n(2 insns)"]
    B_800268bf8["0x800268bf8..0x800268c00\n(2 insns)"]
    B_800268c00["0x800268c00..0x800268c08\n(2 insns)"]
    B_800268c08["0x800268c08..0x800268c10\n(2 insns)"]
    B_800268c10["0x800268c10..0x800268c20\n(4 insns)"]
    B_800268c20["0x800268c20..0x800268c28\n(2 insns)"]
    B_800268c28["0x800268c28..0x800268c3c\n(5 insns)"]
    B_800268c3c["0x800268c3c..0x800268c40\n(1 insns)"]
    B_800268c40["0x800268c40..0x800268c50\n(4 insns)"]
    B_800268c50["0x800268c50..0x800268c60\n(4 insns)"]
    B_800268c60["0x800268c60..0x800268c70\n(4 insns)"]
    B_800268c70["0x800268c70..0x800268c94\n(9 insns)"]
    B_800268c94["0x800268c94..0x800268c98\n(1 insns)"]
    B_800268c98["0x800268c98..0x800268cb4\n(7 insns)"]
    B_800268cb4["0x800268cb4..0x800268cbc\n(2 insns)"]
    B_800268cbc["0x800268cbc..0x800268cd4\n(6 insns)"]
    B_800268cd4["0x800268cd4..0x800268cd8\n(1 insns)"]
    B_800268cd8["0x800268cd8..0x800268cec\n(5 insns)"]
    B_800268cec["0x800268cec..0x800268cf8\n(3 insns)"]
    B_800268cf8["0x800268cf8..0x800268d00\n(2 insns)"]
    B_800268d00["0x800268d00..0x800268d04\n(1 insns)"]
    B_800268d04["0x800268d04..0x800268d1c\n(6 insns)"]
    B_800268d1c["0x800268d1c..0x800268d30\n(5 insns)"]
    B_800268d30["0x800268d30..0x800268d40\n(4 insns, loop hdr)"]
    B_800268d40["0x800268d40..0x800268d48\n(2 insns)"]
    B_800268d48["0x800268d48..0x800268d54\n(3 insns)"]
    B_800268d54["0x800268d54..0x800268d5c\n(2 insns)"]
    B_800268d5c["0x800268d5c..0x800268d6c\n(4 insns, loop hdr)"]
    B_800268d6c["0x800268d6c..0x800268d70\n(1 insns)"]
    B_800268d70["0x800268d70..0x800268d78\n(2 insns)"]
    B_800268d78["0x800268d78..0x800268d84\n(3 insns)"]
    B_800268d84["0x800268d84..0x800268d88\n(1 insns)"]
    B_800268d88["0x800268d88..0x800268d94\n(3 insns)"]
    B_800268d94["0x800268d94..0x800268d98\n(1 insns)"]
    B_800268d98["0x800268d98..0x800268da4\n(3 insns)"]
    B_800268da4["0x800268da4..0x800268db0\n(3 insns)"]
    B_800268db0["0x800268db0..0x800268e14\n(25 insns)"]
    B_800268e14["0x800268e14..0x800268e18\n(1 insns)"]
    B_800268e18["0x800268e18..0x800268e7c\n(25 insns)"]
    B_800268e7c["0x800268e7c..0x800268e80\n(1 insns)"]
    B_800268e80["0x800268e80..0x800268ec4\n(17 insns)"]
    B_800268ec4["0x800268ec4..0x800268ec8\n(1 insns)"]
    B_800268ec8["0x800268ec8..0x800268f24\n(23 insns)"]
    B_800268f24["0x800268f24..0x800268f28\n(1 insns)"]
    B_800268f28["0x800268f28..0x800268f84\n(23 insns)"]
    B_800268f84["0x800268f84..0x800268f88\n(1 insns)"]
    B_800268f88["0x800268f88..0x800268f90\n(2 insns)"]
    B_800268f90["0x800268f90..0x800268fa0\n(4 insns)"]
    B_800268fa0["0x800268fa0..0x800268fa4\n(1 insns)"]
    B_800268fa4["0x800268fa4..0x800268fc0\n(7 insns)"]
    B_800268fc0["0x800268fc0..0x800268fcc\n(3 insns)"]
    B_800268fcc["0x800268fcc..0x800268fe4\n(6 insns)"]
    B_800268fe4["0x800268fe4..0x800269048\n(25 insns)"]
    B_800269048["0x800269048..0x800269070\n(10 insns)"]
    B_800269070["0x800269070..0x80026909c\n(11 insns)"]
    B_80026909c["0x80026909c..0x8002690c8\n(11 insns)"]
    B_8002690c8["0x8002690c8..0x8002690cc\n(1 insns)"]
    B_8002690cc["0x8002690cc..0x8002690d8\n(3 insns)"]
    B_8002690d8["0x8002690d8..0x8002690e4\n(3 insns)"]
    B_8002690e4["0x8002690e4..0x8002690f0\n(3 insns)"]
    B_8002690f0["0x8002690f0..0x800269120\n(12 insns)"]
    B_800269120["0x800269120..0x800269178\n(22 insns)"]
    B_800269178["0x800269178..0x8002691a0\n(10 insns)"]
    B_8002691a0["0x8002691a0..0x8002691d8\n(14 insns)"]
    B_8002691d8["0x8002691d8..0x8002691e0\n(2 insns)"]
    B_8002691e0["0x8002691e0..0x800269204\n(9 insns)"]
    B_800269204["0x800269204..0x800269230\n(11 insns)"]
    B_800269230["0x800269230..0x800269240\n(4 insns)"]
    B_800269240["0x800269240..0x800269260\n(8 insns)"]
    B_800269260["0x800269260..0x8002692d4\n(29 insns)"]
    B_8002692d4["0x8002692d4..0x80026930c\n(14 insns)"]
    B_80026930c["0x80026930c..0x80026934c\n(16 insns)"]
    B_80026934c["0x80026934c..0x8002693a4\n(22 insns)"]
    B_8002693a4["0x8002693a4..0x800269404\n(24 insns)"]
    B_800269404["0x800269404..0x80026945c\n(22 insns)"]
    B_80026945c["0x80026945c..0x8002694bc\n(24 insns)"]
    B_8002694bc["0x8002694bc..0x800269514\n(22 insns)"]
    B_800269514["0x800269514..0x800269574\n(24 insns)"]
    B_800269574["0x800269574..0x8002695cc\n(22 insns)"]
    B_8002695cc["0x8002695cc..0x80026962c\n(24 insns)"]
    B_80026962c["0x80026962c..0x800269684\n(22 insns)"]
    B_800269684["0x800269684..0x8002696e4\n(24 insns)"]
    B_8002696e4["0x8002696e4..0x80026973c\n(22 insns)"]
    B_80026973c["0x80026973c..0x80026979c\n(24 insns)"]
    B_80026979c["0x80026979c..0x8002697f4\n(22 insns)"]
    B_8002697f4["0x8002697f4..0x800269854\n(24 insns)"]
    B_800269854["0x800269854..0x8002698ac\n(22 insns)"]
    B_8002698ac["0x8002698ac..0x80026990c\n(24 insns)"]
    B_80026990c["0x80026990c..0x800269964\n(22 insns)"]
    B_800269964["0x800269964..0x8002699c4\n(24 insns)"]
    B_8002699c4["0x8002699c4..0x800269a1c\n(22 insns)"]
    B_800269a1c["0x800269a1c..0x800269a7c\n(24 insns)"]
    B_800269a7c["0x800269a7c..0x800269ac4\n(18 insns)"]
    B_800269ac4["0x800269ac4..0x800269b14\n(20 insns)"]
    B_800269b14["0x800269b14..0x800269b54\n(16 insns)"]
    B_800269b54["0x800269b54..0x800269b9c\n(18 insns)"]
    B_800269b9c["0x800269b9c..0x800269bd4\n(14 insns)"]
    B_800269bd4["0x800269bd4..0x800269c14\n(16 insns)"]
    B_800269c14["0x800269c14..0x800269c6c\n(22 insns)"]
    B_800269c6c["0x800269c6c..0x800269ccc\n(24 insns)"]
    B_800269ccc["0x800269ccc..0x800269d24\n(22 insns)"]
    B_800269d24["0x800269d24..0x800269d84\n(24 insns)"]
    B_800269d84["0x800269d84..0x800269ddc\n(22 insns)"]
    B_800269ddc["0x800269ddc..0x800269e3c\n(24 insns)"]
    B_800269e3c["0x800269e3c..0x800269e94\n(22 insns)"]
    B_800269e94["0x800269e94..0x800269ef4\n(24 insns)"]
    B_800269ef4["0x800269ef4..0x800269f4c\n(22 insns)"]
    B_800269f4c["0x800269f4c..0x800269fac\n(24 insns)"]
    B_800269fac["0x800269fac..0x80026a004\n(22 insns)"]
    B_80026a004["0x80026a004..0x80026a064\n(24 insns)"]
    B_80026a064["0x80026a064..0x80026a088\n(9 insns)"]
    B_80026a088["0x80026a088..0x80026a090\n(2 insns)"]
    B_8002688c8 -- "taken" --> B_80026909c
    B_8002688c8 -- "fallthrough" --> B_800268914
    B_800268914 --> B_800268930
    B_800268930 -- "taken" --> B_800268d94
    B_800268930 -- "fallthrough" --> B_800268940
    B_800268940 --> B_80026896c
    B_80026896c -- "taken" --> B_8002689f0
    B_80026896c -- "fallthrough" --> B_800268980
    B_800268980 --> B_800268988
    B_800268988 -- "taken" --> B_800268d88
    B_800268988 -- "fallthrough" --> B_8002689a0
    B_8002689a0 -- "taken" --> B_8002689f0
    B_8002689a0 -- "fallthrough" --> B_8002689a4
    B_8002689a4 -- "taken" --> B_800268d88
    B_8002689a4 -- "fallthrough" --> B_8002689ac
    B_8002689ac -- "taken" --> B_800268d88
    B_8002689ac -- "fallthrough" --> B_8002689bc
    B_8002689bc -- "taken" --> B_8002689f0
    B_8002689bc -- "fallthrough" --> B_8002689c0
    B_8002689c0 -- "taken" --> B_800268d88
    B_8002689c0 -- "fallthrough" --> B_8002689d0
    B_8002689d0 -- "taken" --> B_8002689f0
    B_8002689d0 -- "fallthrough" --> B_8002689d4
    B_8002689d4 -- "taken" --> B_800268d88
    B_8002689d4 -- "fallthrough" --> B_8002689e4
    B_8002689e4 -- "taken" --> B_8002689f0
    B_8002689e4 -- "fallthrough" --> B_8002689e8
    B_8002689e8 -. "loop back" .-> B_800268988
    B_8002689f0 -- "taken" --> B_800268a98
    B_8002689f0 -- "fallthrough" --> B_800268a0c
    B_800268a0c -- "taken" --> B_800268c10
    B_800268a0c -- "fallthrough" --> B_800268a18
    B_800268a18 -- "taken" --> B_800268a2c
    B_800268a18 -- "fallthrough" --> B_800268a28
    B_800268a28 -- "taken" --> B_800268f88
    B_800268a28 -- "fallthrough" --> B_800268a2c
    B_800268a2c --> B_800268a44
    B_800268a44 -- "taken" --> B_800268a6c
    B_800268a44 -- "fallthrough" --> B_800268a64
    B_800268a64 --> B_800268a6c
    B_800268a6c -- "taken" --> B_800268cec
    B_800268a6c -- "fallthrough" --> B_800268a74
    B_800268a74 --> EXIT_800268a74["return"]
    B_800268a98 -- "taken" --> B_800268c08
    B_800268a98 -- "fallthrough" --> B_800268aa0
    B_800268aa0 -- "taken" --> B_800269260
    B_800268aa0 -- "fallthrough" --> B_800268ab4
    B_800268ab4 --> B_800268abc
    B_800268abc -- "taken" --> B_8002692d4
    B_800268abc -- "fallthrough" --> B_800268acc
    B_800268acc -- "taken" --> B_800268b18
    B_800268acc -- "fallthrough" --> B_800268af0
    B_800268af0 -- "taken" --> B_800268f28
    B_800268af0 -- "fallthrough" --> B_800268b00
    B_800268b00 -- "taken" --> B_80026962c
    B_800268b00 -- "fallthrough" --> B_800268b08
    B_800268b08 -- "taken" --> B_8002696e4
    B_800268b08 -- "fallthrough" --> B_800268b10
    B_800268b10 -- "taken" --> B_80026979c
    B_800268b10 -- "fallthrough" --> B_800268b18
    B_800268b18 -- "taken" --> B_80026934c
    B_800268b18 -- "fallthrough" --> B_800268b28
    B_800268b28 -- "taken" --> B_800268b54
    B_800268b28 -- "fallthrough" --> B_800268b2c
    B_800268b2c -- "taken" --> B_800268ec8
    B_800268b2c -- "fallthrough" --> B_800268b3c
    B_800268b3c -- "taken" --> B_800269854
    B_800268b3c -- "fallthrough" --> B_800268b44
    B_800268b44 -- "taken" --> B_80026990c
    B_800268b44 -- "fallthrough" --> B_800268b4c
    B_800268b4c -- "taken" --> B_8002699c4
    B_800268b4c -- "fallthrough" --> B_800268b54
    B_800268b54 -- "taken" --> B_800269404
    B_800268b54 -- "fallthrough" --> B_800268b64
    B_800268b64 -- "taken" --> B_800268b90
    B_800268b64 -- "fallthrough" --> B_800268b68
    B_800268b68 -- "taken" --> B_800268db0
    B_800268b68 -- "fallthrough" --> B_800268b78
    B_800268b78 -- "taken" --> B_800269e3c
    B_800268b78 -- "fallthrough" --> B_800268b80
    B_800268b80 -- "taken" --> B_800269ef4
    B_800268b80 -- "fallthrough" --> B_800268b88
    B_800268b88 -- "taken" --> B_800269fac
    B_800268b88 -- "fallthrough" --> B_800268b90
    B_800268b90 -- "taken" --> B_8002694bc
    B_800268b90 -- "fallthrough" --> B_800268ba0
    B_800268ba0 -- "taken" --> B_800268bcc
    B_800268ba0 -- "fallthrough" --> B_800268ba4
    B_800268ba4 -- "taken" --> B_800268e18
    B_800268ba4 -- "fallthrough" --> B_800268bb4
    B_800268bb4 -- "taken" --> B_800269c14
    B_800268bb4 -- "fallthrough" --> B_800268bbc
    B_800268bbc -- "taken" --> B_800269ccc
    B_800268bbc -- "fallthrough" --> B_800268bc4
    B_800268bc4 -- "taken" --> B_800269d84
    B_800268bc4 -- "fallthrough" --> B_800268bcc
    B_800268bcc -- "taken" --> B_800269574
    B_800268bcc -- "fallthrough" --> B_800268bdc
    B_800268bdc -- "taken" --> B_800268c08
    B_800268bdc -- "fallthrough" --> B_800268be0
    B_800268be0 -- "taken" --> B_800268e80
    B_800268be0 -- "fallthrough" --> B_800268bf0
    B_800268bf0 -- "taken" --> B_800269a7c
    B_800268bf0 -- "fallthrough" --> B_800268bf8
    B_800268bf8 -- "taken" --> B_800269b14
    B_800268bf8 -- "fallthrough" --> B_800268c00
    B_800268c00 -- "taken" --> B_800269b9c
    B_800268c00 -- "fallthrough" --> B_800268c08
    B_800268c08 --> B_800268a0c
    B_800268c10 -- "taken" --> B_8002690e4
    B_800268c10 -- "fallthrough" --> B_800268c20
    B_800268c20 --> B_800268c28
    B_800268c28 -- "taken" --> B_800269048
    B_800268c28 -- "fallthrough" --> B_800268c3c
    B_800268c3c -- "taken" --> B_8002690f0
    B_800268c3c -- "fallthrough" --> B_800268c40
    B_800268c40 -- "taken" --> B_800269120
    B_800268c40 -- "fallthrough" --> B_800268c50
    B_800268c50 -- "taken" --> B_800269178
    B_800268c50 -- "fallthrough" --> B_800268c60
    B_800268c60 -- "taken" --> B_8002691e0
    B_800268c60 -- "fallthrough" --> B_800268c70
    B_800268c70 --> B_800268c94
    B_800268c94 -- "taken" --> B_800269204
    B_800268c94 -- "fallthrough" --> B_800268c98
    B_800268c98 --> B_800268cb4
    B_800268cb4 -- "taken" --> B_800268cd8
    B_800268cb4 -- "fallthrough" --> B_800268cbc
    B_800268cbc -- "taken" --> B_800268fcc
    B_800268cbc -- "fallthrough" --> B_800268cd4
    B_800268cd4 --> B_800268cd8
    B_800268cd8 -- "taken" --> B_800268a74
    B_800268cd8 -- "fallthrough" --> B_800268cec
    B_800268cec --> B_800268cf8
    B_800268cf8 -- "taken" --> B_800268d04
    B_800268cf8 -- "fallthrough" --> B_800268d00
    B_800268d00 -- "taken" --> B_80026a064
    B_800268d00 -- "fallthrough" --> B_800268d04
    B_800268d04 -- "taken" --> B_800268a74
    B_800268d04 -- "fallthrough" --> B_800268d1c
    B_800268d1c --> B_800268d30
    B_800268d30 -- "taken" --> B_800268d78
    B_800268d30 -- "fallthrough" --> B_800268d40
    B_800268d40 -- "taken" --> B_800268d78
    B_800268d40 -- "fallthrough" --> B_800268d48
    B_800268d48 -- "taken" --> B_8002690c8
    B_800268d48 -- "fallthrough" --> B_800268d54
    B_800268d54 --> B_800268d5c
    B_800268d5c -- "taken" --> B_800268d78
    B_800268d5c -- "fallthrough" --> B_800268d6c
    B_800268d6c -- "taken" --> B_8002690c8
    B_800268d6c -- "fallthrough" --> B_800268d70
    B_800268d70 -. "loop back" .-> B_800268d5c
    B_800268d70 -- "fallthrough" --> B_800268d78
    B_800268d78 -. "loop back" .-> B_800268d30
    B_800268d78 -- "fallthrough" --> B_800268d84
    B_800268d84 --> B_800268a74
    B_800268d88 -. "loop back" .-> B_80026896c
    B_800268d88 -- "fallthrough" --> B_800268d94
    B_800268d94 -- "taken" --> B_800268fe4
    B_800268d94 -- "fallthrough" --> B_800268d98
    B_800268d98 --> B_800268da4
    B_800268da4 --> B_800268a44
    B_800268db0 -- "taken" --> B_800268b90
    B_800268db0 -- "fallthrough" --> B_800268e14
    B_800268e14 --> B_800268a18
    B_800268e18 -- "taken" --> B_800268bcc
    B_800268e18 -- "fallthrough" --> B_800268e7c
    B_800268e7c --> B_800268a18
    B_800268e80 -- "taken" --> B_800268c08
    B_800268e80 -- "fallthrough" --> B_800268ec4
    B_800268ec4 --> B_800268a18
    B_800268ec8 -- "taken" --> B_800268b54
    B_800268ec8 -- "fallthrough" --> B_800268f24
    B_800268f24 --> B_800268a18
    B_800268f28 -- "taken" --> B_800268b18
    B_800268f28 -- "fallthrough" --> B_800268f84
    B_800268f84 --> B_800268a18
    B_800268f88 --> B_800268f90
    B_800268f90 -- "taken" --> B_800268c28
    B_800268f90 -- "fallthrough" --> B_800268fa0
    B_800268fa0 -- "taken" --> B_800268c28
    B_800268fa0 -- "fallthrough" --> B_800268fa4
    B_800268fa4 --> B_800268fc0
    B_800268fc0 --> B_800268a74
    B_800268fcc --> B_800268cd8
    B_800268fe4 --> B_800268da4
    B_800269048 -- "taken" --> B_800268c3c
    B_800269048 -- "fallthrough" --> B_800269070
    B_800269070 --> B_800268c3c
    B_80026909c --> B_800268930
    B_8002690c8 -- "taken" --> B_8002690d8
    B_8002690c8 -- "fallthrough" --> B_8002690cc
    B_8002690cc --> B_8002690d8
    B_8002690d8 --> B_800268fc0
    B_8002690e4 --> B_800268f90
    B_8002690f0 --> B_8002691a0
    B_800269120 --> B_800269178
    B_800269178 --> B_8002691a0
    B_8002691a0 -- "taken" --> B_800268a74
    B_8002691a0 -- "fallthrough" --> B_8002691d8
    B_8002691d8 --> B_800268cf8
    B_8002691e0 --> B_800268c94
    B_800269204 -- "taken" --> B_80026a088
    B_800269204 -- "fallthrough" --> B_800269230
    B_800269230 --> B_800269240
    B_800269240 --> B_800268cb4
    B_800269260 --> B_800268abc
    B_8002692d4 -- "taken" --> B_800268acc
    B_8002692d4 -- "fallthrough" --> B_80026930c
    B_80026930c --> B_800268acc
    B_80026934c -- "taken" --> B_800268b28
    B_80026934c -- "fallthrough" --> B_8002693a4
    B_8002693a4 --> B_800268b28
    B_800269404 -- "taken" --> B_800268b64
    B_800269404 -- "fallthrough" --> B_80026945c
    B_80026945c --> B_800268b64
    B_8002694bc -- "taken" --> B_800268ba0
    B_8002694bc -- "fallthrough" --> B_800269514
    B_800269514 --> B_800268ba0
    B_800269574 -- "taken" --> B_800268bdc
    B_800269574 -- "fallthrough" --> B_8002695cc
    B_8002695cc --> B_800268bdc
    B_80026962c -- "taken" --> B_800268b08
    B_80026962c -- "fallthrough" --> B_800269684
    B_800269684 --> B_800268b08
    B_8002696e4 -- "taken" --> B_800268b10
    B_8002696e4 -- "fallthrough" --> B_80026973c
    B_80026973c --> B_800268b10
    B_80026979c -- "taken" --> B_800268b18
    B_80026979c -- "fallthrough" --> B_8002697f4
    B_8002697f4 --> B_800268b18
    B_800269854 -- "taken" --> B_800268b44
    B_800269854 -- "fallthrough" --> B_8002698ac
    B_8002698ac --> B_800268b44
    B_80026990c -- "taken" --> B_800268b4c
    B_80026990c -- "fallthrough" --> B_800269964
    B_800269964 --> B_800268b4c
    B_8002699c4 -- "taken" --> B_800268b54
    B_8002699c4 -- "fallthrough" --> B_800269a1c
    B_800269a1c --> B_800268b54
    B_800269a7c -- "taken" --> B_800268bf8
    B_800269a7c -- "fallthrough" --> B_800269ac4
    B_800269ac4 --> B_800268bf8
    B_800269b14 -- "taken" --> B_800268c00
    B_800269b14 -- "fallthrough" --> B_800269b54
    B_800269b54 --> B_800268c00
    B_800269b9c -- "taken" --> B_800268c08
    B_800269b9c -- "fallthrough" --> B_800269bd4
    B_800269bd4 --> B_800268c08
    B_800269c14 -- "taken" --> B_800268bbc
    B_800269c14 -- "fallthrough" --> B_800269c6c
    B_800269c6c --> B_800268bbc
    B_800269ccc -- "taken" --> B_800268bc4
    B_800269ccc -- "fallthrough" --> B_800269d24
    B_800269d24 --> B_800268bc4
    B_800269d84 -- "taken" --> B_800268bcc
    B_800269d84 -- "fallthrough" --> B_800269ddc
    B_800269ddc --> B_800268bcc
    B_800269e3c -- "taken" --> B_800268b80
    B_800269e3c -- "fallthrough" --> B_800269e94
    B_800269e94 --> B_800268b80
    B_800269ef4 -- "taken" --> B_800268b88
    B_800269ef4 -- "fallthrough" --> B_800269f4c
    B_800269f4c --> B_800268b88
    B_800269fac -- "taken" --> B_800268b90
    B_800269fac -- "fallthrough" --> B_80026a004
    B_80026a004 --> B_800268b90
    B_80026a064 --> B_800268fc0
    B_80026a088 --> B_800269240
    %% Path Highlighting
    style B_8002688c8 fill:#e8f5e9,stroke:#2e7d32,stroke-width:3px,color:#1b5e20
    style B_800268930 fill:#e8f5e9,stroke:#2e7d32,stroke-width:3px,color:#1b5e20
    style B_800268940 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80026896c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800268980 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800268988 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8002689a0 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8002689a4 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8002689ac fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8002689bc fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8002689c0 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8002689d0 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8002689d4 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8002689e4 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8002689f0 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800268a0c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800268a44 fill:#e1f5fe,stroke:#0288d1,stroke-width:2px,color:#01579b
    style B_800268a6c fill:#e1f5fe,stroke:#0288d1,stroke-width:2px,color:#01579b
    style B_800268a74 fill:#e8f5e9,stroke:#2e7d32,stroke-width:3px,color:#1b5e20
    style B_800268a98 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800268aa0 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800268abc fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800268acc fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800268af0 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800268b00 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800268b08 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800268b10 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800268b18 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800268b28 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800268b2c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800268b3c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800268b44 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800268b4c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800268b54 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800268b64 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800268b68 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800268b78 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800268b80 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800268b88 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800268b90 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800268ba0 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800268ba4 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800268bb4 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800268bbc fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800268bc4 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800268bcc fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800268bdc fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800268be0 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800268bf0 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800268bf8 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800268c00 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800268c08 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800268c10 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800268c28 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800268c3c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800268c40 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800268c50 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800268c60 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800268c94 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800268cb4 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800268cbc fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800268cd8 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800268cec fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800268cf8 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800268d00 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800268d04 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800268d1c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800268d30 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800268d40 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800268d48 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800268d54 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800268d5c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800268d6c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800268d94 fill:#e1f5fe,stroke:#0288d1,stroke-width:2px,color:#01579b
    style B_800268da4 fill:#e1f5fe,stroke:#0288d1,stroke-width:2px,color:#01579b
    style B_800268f90 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800268fa0 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800268fc0 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800268fcc fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800268fe4 fill:#e1f5fe,stroke:#0288d1,stroke-width:2px,color:#01579b
    style B_800269048 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800269070 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80026909c fill:#e8f5e9,stroke:#2e7d32,stroke-width:3px,color:#1b5e20
    style B_8002690c8 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8002690cc fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8002690d8 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8002690e4 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8002691e0 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800269204 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800269230 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800269240 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800269260 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8002692d4 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80026930c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80026934c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8002693a4 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800269404 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80026945c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8002694bc fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800269514 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800269574 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8002695cc fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80026962c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800269684 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8002696e4 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80026973c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80026979c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8002697f4 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800269854 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8002698ac fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80026990c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800269964 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8002699c4 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800269a1c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800269a7c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800269ac4 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800269b14 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800269b54 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800269b9c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800269bd4 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800269c14 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800269c6c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800269ccc fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800269d24 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800269d84 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800269ddc fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800269e3c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800269e94 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800269ef4 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800269f4c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_800269fac fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_80026a004 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
```

## 3. External Callee Classification (5 total: 4 constant-zero, 0 pointer-alloc, 0 memory-copy, 1 branch-sensitive)

| External Symbol | Classification | Args Read | Longest-Path Return (`X0`) | Alt-Branch Return (`X0`) | Post-Call Analysis |
| :--- | :--- | ---: | :--- | :--- | :--- |
| `f_800099860` | `CONSTANT_ZERO` | 3 | `0x0` | `0x1` | Return value X0 unread/overwritten -> constant 0 |
| `f_802ba39a0` | **BRANCH_SENSITIVE** | 5 | `0x1` | `0x0` | CBZ on return register w0 at 0x800269bd0 |
| `f_802ba39b0` | `CONSTANT_ZERO` | 2 | `0x0` | `0x1` | Return value X0 unread/overwritten -> constant 0 |
| `f_800605f9c` | `CONSTANT_ZERO` | 3 | `0x0` | `0x1` | Return value X0 unread/overwritten -> constant 0 |
| `f_8023974b0` | `CONSTANT_ZERO` | 6 | `0x0` | `0x1` | Return value X0 unread/overwritten -> constant 0 |
