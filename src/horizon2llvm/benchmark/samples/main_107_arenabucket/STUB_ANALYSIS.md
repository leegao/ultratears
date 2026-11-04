# Automated Stub & Static CFG Longest-Path Analysis (`main_107_arenabucket`)

## 1. Function Static CFG & Path Length Summary

| Function | Entry PC | Static ARM64 Insns | Basic Blocks | Loop Back-Edges | Est. Common Path (ARM64 Insns) | Est. Longest Path (ARM64 Insns) | CP-SAT Verified Longest |
| :--- | :--- | ---: | ---: | ---: | ---: | ---: | ---: |
| `f_8001a6c10` | `0x8001a6c10` | 707 | 192 | 9 | 39 | 275 | 275 |

## 2. Function Control Flow Graphs (CFGs)

### Function `f_8001a6c10` (`0x8001a6c10` – 707 insns, 192 blocks)

```mermaid
flowchart TD
    B_8001a6c10["0x8001a6c10..0x8001a6c48\n(14 insns)"]
    B_8001a6c48["0x8001a6c48..0x8001a6c50\n(2 insns)"]
    B_8001a6c50["0x8001a6c50..0x8001a6c68\n(6 insns)"]
    B_8001a6c68["0x8001a6c68..0x8001a6c74\n(3 insns)"]
    B_8001a6c74["0x8001a6c74..0x8001a6c78\n(1 insns)"]
    B_8001a6c78["0x8001a6c78..0x8001a6ca4\n(11 insns)"]
    B_8001a6ca4["0x8001a6ca4..0x8001a6cb0\n(3 insns)"]
    B_8001a6cb0["0x8001a6cb0..0x8001a6ccc\n(7 insns)"]
    B_8001a6ccc["0x8001a6ccc..0x8001a6cd8\n(3 insns)"]
    B_8001a6cd8["0x8001a6cd8..0x8001a6cdc\n(1 insns)"]
    B_8001a6cdc["0x8001a6cdc..0x8001a6ce0\n(1 insns)"]
    B_8001a6ce0["0x8001a6ce0..0x8001a6ce4\n(1 insns)"]
    B_8001a6ce4["0x8001a6ce4..0x8001a6d08\n(9 insns)"]
    B_8001a6d08["0x8001a6d08..0x8001a6d18\n(4 insns)"]
    B_8001a6d18["0x8001a6d18..0x8001a6d28\n(4 insns)"]
    B_8001a6d28["0x8001a6d28..0x8001a6d4c\n(9 insns)"]
    B_8001a6d4c["0x8001a6d4c..0x8001a6d5c\n(4 insns)"]
    B_8001a6d5c["0x8001a6d5c..0x8001a6d64\n(2 insns)"]
    B_8001a6d64["0x8001a6d64..0x8001a6d68\n(1 insns)"]
    B_8001a6d68["0x8001a6d68..0x8001a6d74\n(3 insns)"]
    B_8001a6d74["0x8001a6d74..0x8001a6d98\n(9 insns)"]
    B_8001a6d98["0x8001a6d98..0x8001a6da0\n(2 insns)"]
    B_8001a6da0["0x8001a6da0..0x8001a6da8\n(2 insns)"]
    B_8001a6da8["0x8001a6da8..0x8001a6dac\n(1 insns)"]
    B_8001a6dac["0x8001a6dac..0x8001a6db8\n(3 insns, loop hdr)"]
    B_8001a6db8["0x8001a6db8..0x8001a6dd4\n(7 insns)"]
    B_8001a6dd4["0x8001a6dd4..0x8001a6dd8\n(1 insns)"]
    B_8001a6dd8["0x8001a6dd8..0x8001a6de0\n(2 insns)"]
    B_8001a6de0["0x8001a6de0..0x8001a6de8\n(2 insns)"]
    B_8001a6de8["0x8001a6de8..0x8001a6dec\n(1 insns)"]
    B_8001a6dec["0x8001a6dec..0x8001a6df4\n(2 insns)"]
    B_8001a6df4["0x8001a6df4..0x8001a6e20\n(11 insns)"]
    B_8001a6e20["0x8001a6e20..0x8001a6e30\n(4 insns)"]
    B_8001a6e30["0x8001a6e30..0x8001a6e34\n(1 insns)"]
    B_8001a6e34["0x8001a6e34..0x8001a6e48\n(5 insns)"]
    B_8001a6e48["0x8001a6e48..0x8001a6e50\n(2 insns)"]
    B_8001a6e50["0x8001a6e50..0x8001a6e74\n(9 insns)"]
    B_8001a6e74["0x8001a6e74..0x8001a6e88\n(5 insns)"]
    B_8001a6e88["0x8001a6e88..0x8001a6e8c\n(1 insns)"]
    B_8001a6e8c["0x8001a6e8c..0x8001a6e98\n(3 insns)"]
    B_8001a6e98["0x8001a6e98..0x8001a6eb4\n(7 insns)"]
    B_8001a6eb4["0x8001a6eb4..0x8001a6ec0\n(3 insns)"]
    B_8001a6ec0["0x8001a6ec0..0x8001a6eec\n(11 insns, switch)"]
    B_8001a6eec["0x8001a6eec..0x8001a6f18\n(11 insns)"]
    B_8001a6f18["0x8001a6f18..0x8001a6f20\n(2 insns)"]
    B_8001a6f20["0x8001a6f20..0x8001a6f24\n(1 insns)"]
    B_8001a6f24["0x8001a6f24..0x8001a6f30\n(3 insns)"]
    B_8001a6f30["0x8001a6f30..0x8001a6f4c\n(7 insns)"]
    B_8001a6f4c["0x8001a6f4c..0x8001a6f58\n(3 insns)"]
    B_8001a6f58["0x8001a6f58..0x8001a6f60\n(2 insns)"]
    B_8001a6f60["0x8001a6f60..0x8001a6f70\n(4 insns)"]
    B_8001a6f70["0x8001a6f70..0x8001a6f78\n(2 insns)"]
    B_8001a6f78["0x8001a6f78..0x8001a6f88\n(4 insns)"]
    B_8001a6f88["0x8001a6f88..0x8001a6f8c\n(1 insns)"]
    B_8001a6f8c["0x8001a6f8c..0x8001a6f98\n(3 insns, loop hdr)"]
    B_8001a6f98["0x8001a6f98..0x8001a6fbc\n(9 insns)"]
    B_8001a6fbc["0x8001a6fbc..0x8001a6ff0\n(13 insns)"]
    B_8001a6ff0["0x8001a6ff0..0x8001a6ffc\n(3 insns)"]
    B_8001a6ffc["0x8001a6ffc..0x8001a7008\n(3 insns)"]
    B_8001a7008["0x8001a7008..0x8001a701c\n(5 insns)"]
    B_8001a701c["0x8001a701c..0x8001a7024\n(2 insns)"]
    B_8001a7024["0x8001a7024..0x8001a702c\n(2 insns)"]
    B_8001a702c["0x8001a702c..0x8001a7034\n(2 insns)"]
    B_8001a7034["0x8001a7034..0x8001a7044\n(4 insns)"]
    B_8001a7044["0x8001a7044..0x8001a7060\n(7 insns)"]
    B_8001a7060["0x8001a7060..0x8001a7070\n(4 insns)"]
    B_8001a7070["0x8001a7070..0x8001a7074\n(1 insns)"]
    B_8001a7074["0x8001a7074..0x8001a7088\n(5 insns)"]
    B_8001a7088["0x8001a7088..0x8001a7098\n(4 insns)"]
    B_8001a7098["0x8001a7098..0x8001a70ac\n(5 insns)"]
    B_8001a70ac["0x8001a70ac..0x8001a70b0\n(1 insns)"]
    B_8001a70b0["0x8001a70b0..0x8001a70b8\n(2 insns)"]
    B_8001a70b8["0x8001a70b8..0x8001a70d0\n(6 insns)"]
    B_8001a70d0["0x8001a70d0..0x8001a70d4\n(1 insns)"]
    B_8001a70d4["0x8001a70d4..0x8001a70dc\n(2 insns)"]
    B_8001a70dc["0x8001a70dc..0x8001a70e4\n(2 insns)"]
    B_8001a70e4["0x8001a70e4..0x8001a70e8\n(1 insns)"]
    B_8001a70e8["0x8001a70e8..0x8001a70f0\n(2 insns)"]
    B_8001a70f0["0x8001a70f0..0x8001a70fc\n(3 insns)"]
    B_8001a70fc["0x8001a70fc..0x8001a7104\n(2 insns)"]
    B_8001a7104["0x8001a7104..0x8001a711c\n(6 insns)"]
    B_8001a711c["0x8001a711c..0x8001a7120\n(1 insns)"]
    B_8001a7120["0x8001a7120..0x8001a7134\n(5 insns)"]
    B_8001a7134["0x8001a7134..0x8001a7160\n(11 insns)"]
    B_8001a7160["0x8001a7160..0x8001a7164\n(1 insns)"]
    B_8001a7164["0x8001a7164..0x8001a716c\n(2 insns)"]
    B_8001a716c["0x8001a716c..0x8001a7174\n(2 insns)"]
    B_8001a7174["0x8001a7174..0x8001a7194\n(8 insns)"]
    B_8001a7194["0x8001a7194..0x8001a71a0\n(3 insns, loop hdr)"]
    B_8001a71a0["0x8001a71a0..0x8001a71a4\n(1 insns)"]
    B_8001a71a4["0x8001a71a4..0x8001a71d8\n(13 insns)"]
    B_8001a71d8["0x8001a71d8..0x8001a71e4\n(3 insns)"]
    B_8001a71e4["0x8001a71e4..0x8001a7210\n(11 insns)"]
    B_8001a7210["0x8001a7210..0x8001a7214\n(1 insns)"]
    B_8001a7214["0x8001a7214..0x8001a7224\n(4 insns)"]
    B_8001a7224["0x8001a7224..0x8001a7238\n(5 insns)"]
    B_8001a7238["0x8001a7238..0x8001a724c\n(5 insns)"]
    B_8001a724c["0x8001a724c..0x8001a7254\n(2 insns)"]
    B_8001a7254["0x8001a7254..0x8001a727c\n(10 insns)"]
    B_8001a727c["0x8001a727c..0x8001a728c\n(4 insns)"]
    B_8001a728c["0x8001a728c..0x8001a7290\n(1 insns)"]
    B_8001a7290["0x8001a7290..0x8001a7298\n(2 insns)"]
    B_8001a7298["0x8001a7298..0x8001a72ac\n(5 insns)"]
    B_8001a72ac["0x8001a72ac..0x8001a72b4\n(2 insns)"]
    B_8001a72b4["0x8001a72b4..0x8001a72cc\n(6 insns)"]
    B_8001a72cc["0x8001a72cc..0x8001a72e0\n(5 insns)"]
    B_8001a72e0["0x8001a72e0..0x8001a72e8\n(2 insns)"]
    B_8001a72e8["0x8001a72e8..0x8001a72f0\n(2 insns)"]
    B_8001a72f0["0x8001a72f0..0x8001a7318\n(10 insns)"]
    B_8001a7318["0x8001a7318..0x8001a7344\n(11 insns)"]
    B_8001a7344["0x8001a7344..0x8001a7348\n(1 insns)"]
    B_8001a7348["0x8001a7348..0x8001a7350\n(2 insns)"]
    B_8001a7350["0x8001a7350..0x8001a735c\n(3 insns)"]
    B_8001a735c["0x8001a735c..0x8001a7370\n(5 insns)"]
    B_8001a7370["0x8001a7370..0x8001a7378\n(2 insns)"]
    B_8001a7378["0x8001a7378..0x8001a737c\n(1 insns)"]
    B_8001a737c["0x8001a737c..0x8001a7384\n(2 insns)"]
    B_8001a7384["0x8001a7384..0x8001a7394\n(4 insns)"]
    B_8001a7394["0x8001a7394..0x8001a739c\n(2 insns)"]
    B_8001a739c["0x8001a739c..0x8001a73a8\n(3 insns)"]
    B_8001a73a8["0x8001a73a8..0x8001a73ac\n(1 insns)"]
    B_8001a73ac["0x8001a73ac..0x8001a73b4\n(2 insns)"]
    B_8001a73b4["0x8001a73b4..0x8001a73c4\n(4 insns)"]
    B_8001a73c4["0x8001a73c4..0x8001a73dc\n(6 insns)"]
    B_8001a73dc["0x8001a73dc..0x8001a73e0\n(1 insns)"]
    B_8001a73e0["0x8001a73e0..0x8001a73e8\n(2 insns)"]
    B_8001a73e8["0x8001a73e8..0x8001a73ec\n(1 insns)"]
    B_8001a73ec["0x8001a73ec..0x8001a73f8\n(3 insns)"]
    B_8001a73f8["0x8001a73f8..0x8001a73fc\n(1 insns)"]
    B_8001a73fc["0x8001a73fc..0x8001a7408\n(3 insns, loop hdr)"]
    B_8001a7408["0x8001a7408..0x8001a740c\n(1 insns)"]
    B_8001a740c["0x8001a740c..0x8001a7418\n(3 insns)"]
    B_8001a7418["0x8001a7418..0x8001a741c\n(1 insns)"]
    B_8001a741c["0x8001a741c..0x8001a7430\n(5 insns)"]
    B_8001a7430["0x8001a7430..0x8001a7434\n(1 insns)"]
    B_8001a7434["0x8001a7434..0x8001a743c\n(2 insns)"]
    B_8001a743c["0x8001a743c..0x8001a744c\n(4 insns)"]
    B_8001a744c["0x8001a744c..0x8001a7458\n(3 insns)"]
    B_8001a7458["0x8001a7458..0x8001a7460\n(2 insns)"]
    B_8001a7460["0x8001a7460..0x8001a7464\n(1 insns)"]
    B_8001a7464["0x8001a7464..0x8001a7470\n(3 insns, loop hdr)"]
    B_8001a7470["0x8001a7470..0x8001a7474\n(1 insns)"]
    B_8001a7474["0x8001a7474..0x8001a7480\n(3 insns)"]
    B_8001a7480["0x8001a7480..0x8001a7484\n(1 insns)"]
    B_8001a7484["0x8001a7484..0x8001a7498\n(5 insns)"]
    B_8001a7498["0x8001a7498..0x8001a749c\n(1 insns)"]
    B_8001a749c["0x8001a749c..0x8001a74a0\n(1 insns)"]
    B_8001a74a0["0x8001a74a0..0x8001a74c8\n(10 insns, loop hdr)"]
    B_8001a74c8["0x8001a74c8..0x8001a74cc\n(1 insns)"]
    B_8001a74cc["0x8001a74cc..0x8001a74e0\n(5 insns)"]
    B_8001a74e0["0x8001a74e0..0x8001a74e4\n(1 insns)"]
    B_8001a74e4["0x8001a74e4..0x8001a74e8\n(1 insns)"]
    B_8001a74e8["0x8001a74e8..0x8001a74f0\n(2 insns)"]
    B_8001a74f0["0x8001a74f0..0x8001a74f8\n(2 insns)"]
    B_8001a74f8["0x8001a74f8..0x8001a7504\n(3 insns)"]
    B_8001a7504["0x8001a7504..0x8001a7508\n(1 insns)"]
    B_8001a7508["0x8001a7508..0x8001a7514\n(3 insns, loop hdr)"]
    B_8001a7514["0x8001a7514..0x8001a7528\n(5 insns)"]
    B_8001a7528["0x8001a7528..0x8001a752c\n(1 insns)"]
    B_8001a752c["0x8001a752c..0x8001a7550\n(9 insns)"]
    B_8001a7550["0x8001a7550..0x8001a7554\n(1 insns)"]
    B_8001a7554["0x8001a7554..0x8001a7560\n(3 insns)"]
    B_8001a7560["0x8001a7560..0x8001a7568\n(2 insns)"]
    B_8001a7568["0x8001a7568..0x8001a7588\n(8 insns)"]
    B_8001a7588["0x8001a7588..0x8001a75a0\n(6 insns)"]
    B_8001a75a0["0x8001a75a0..0x8001a75a8\n(2 insns)"]
    B_8001a75a8["0x8001a75a8..0x8001a75b4\n(3 insns)"]
    B_8001a75b4["0x8001a75b4..0x8001a75bc\n(2 insns)"]
    B_8001a75bc["0x8001a75bc..0x8001a75c0\n(1 insns)"]
    B_8001a75c0["0x8001a75c0..0x8001a75cc\n(3 insns, loop hdr)"]
    B_8001a75cc["0x8001a75cc..0x8001a75e0\n(5 insns)"]
    B_8001a75e0["0x8001a75e0..0x8001a75e4\n(1 insns)"]
    B_8001a75e4["0x8001a75e4..0x8001a7608\n(9 insns)"]
    B_8001a7608["0x8001a7608..0x8001a760c\n(1 insns)"]
    B_8001a760c["0x8001a760c..0x8001a7618\n(3 insns)"]
    B_8001a7618["0x8001a7618..0x8001a7620\n(2 insns)"]
    B_8001a7620["0x8001a7620..0x8001a7624\n(1 insns)"]
    B_8001a7624["0x8001a7624..0x8001a7630\n(3 insns, loop hdr)"]
    B_8001a7630["0x8001a7630..0x8001a765c\n(11 insns)"]
    B_8001a765c["0x8001a765c..0x8001a7670\n(5 insns)"]
    B_8001a7670["0x8001a7670..0x8001a7674\n(1 insns)"]
    B_8001a7674["0x8001a7674..0x8001a7680\n(3 insns)"]
    B_8001a7680["0x8001a7680..0x8001a7688\n(2 insns)"]
    B_8001a7688["0x8001a7688..0x8001a76a4\n(7 insns)"]
    B_8001a76a4["0x8001a76a4..0x8001a76c8\n(9 insns)"]
    B_8001a76c8["0x8001a76c8..0x8001a76cc\n(1 insns)"]
    B_8001a76cc["0x8001a76cc..0x8001a76d4\n(2 insns)"]
    B_8001a76d4["0x8001a76d4..0x8001a76e0\n(3 insns)"]
    B_8001a76e0["0x8001a76e0..0x8001a76e4\n(1 insns)"]
    B_8001a76e4["0x8001a76e4..0x8001a76ec\n(2 insns)"]
    B_8001a76ec["0x8001a76ec..0x8001a7700\n(5 insns)"]
    B_8001a7700["0x8001a7700..0x8001a771c\n(7 insns)"]
    B_8001a6c10 -- "taken" --> B_8001a7254
    B_8001a6c10 -- "fallthrough" --> B_8001a6c48
    B_8001a6c48 -- "taken" --> B_8001a71e4
    B_8001a6c48 -- "fallthrough" --> B_8001a6c50
    B_8001a6c50 -- "taken" --> B_8001a6d08
    B_8001a6c50 -- "fallthrough" --> B_8001a6c68
    B_8001a6c68 -- "taken" --> B_8001a727c
    B_8001a6c68 -- "fallthrough" --> B_8001a6c74
    B_8001a6c74 --> B_8001a6c78
    B_8001a6c78 -- "taken" --> B_8001a728c
    B_8001a6c78 -- "fallthrough" --> B_8001a6ca4
    B_8001a6ca4 -- "taken" --> B_8001a72b4
    B_8001a6ca4 -- "fallthrough" --> B_8001a6cb0
    B_8001a6cb0 -- "taken" --> B_8001a70e4
    B_8001a6cb0 -- "fallthrough" --> B_8001a6ccc
    B_8001a6ccc -- "taken" --> B_8001a70e4
    B_8001a6ccc -- "fallthrough" --> B_8001a6cd8
    B_8001a6cd8 --> B_8001a6cdc
    B_8001a6cdc -- "taken" --> B_8001a70f0
    B_8001a6cdc -- "fallthrough" --> B_8001a6ce0
    B_8001a6ce0 -- "taken" --> B_8001a6eb4
    B_8001a6ce0 -- "fallthrough" --> B_8001a6ce4
    B_8001a6ce4 --> EXIT_8001a6ce4["return"]
    B_8001a6d08 -- "taken" --> B_8001a6eec
    B_8001a6d08 -- "fallthrough" --> B_8001a6d18
    B_8001a6d18 -- "taken" --> B_8001a6ec0
    B_8001a6d18 -- "fallthrough" --> B_8001a6d28
    B_8001a6d28 -- "taken" --> B_8001a73a8
    B_8001a6d28 -- "fallthrough" --> B_8001a6d4c
    B_8001a6d4c -- "taken" --> B_8001a7344
    B_8001a6d4c -- "fallthrough" --> B_8001a6d5c
    B_8001a6d5c -- "taken" --> B_8001a6f60
    B_8001a6d5c -- "fallthrough" --> B_8001a6d64
    B_8001a6d64 --> B_8001a6d68
    B_8001a6d68 -- "taken" --> B_8001a73c4
    B_8001a6d68 -- "fallthrough" --> B_8001a6d74
    B_8001a6d74 -- "taken" --> B_8001a6f70
    B_8001a6d74 -- "fallthrough" --> B_8001a6d98
    B_8001a6d98 -- "taken" --> B_8001a74e0
    B_8001a6d98 -- "fallthrough" --> B_8001a6da0
    B_8001a6da0 -- "taken" --> B_8001a73ec
    B_8001a6da0 -- "fallthrough" --> B_8001a6da8
    B_8001a6da8 --> B_8001a6dac
    B_8001a6dac -- "taken" --> B_8001a7098
    B_8001a6dac -- "fallthrough" --> B_8001a6db8
    B_8001a6db8 -- "taken" --> B_8001a70b0
    B_8001a6db8 -- "fallthrough" --> B_8001a6dd4
    B_8001a6dd4 --> B_8001a6dd8
    B_8001a6dd8 -- "taken" --> B_8001a6de8
    B_8001a6dd8 -- "fallthrough" --> B_8001a6de0
    B_8001a6de0 --> B_8001a6de8
    B_8001a6de8 -- "taken" --> B_8001a6df4
    B_8001a6de8 -- "fallthrough" --> B_8001a6dec
    B_8001a6dec --> B_8001a6df4
    B_8001a6df4 -- "taken" --> B_8001a743c
    B_8001a6df4 -- "fallthrough" --> B_8001a6e20
    B_8001a6e20 -- "taken" --> B_8001a6e34
    B_8001a6e20 -- "fallthrough" --> B_8001a6e30
    B_8001a6e30 --> B_8001a6e34
    B_8001a6e34 -- "taken" --> B_8001a70d4
    B_8001a6e34 -- "fallthrough" --> B_8001a6e48
    B_8001a6e48 --> B_8001a6e50
    B_8001a6e50 -- "taken" --> B_8001a70b8
    B_8001a6e50 -- "fallthrough" --> B_8001a6e74
    B_8001a6e74 -- "taken" --> B_8001a6e8c
    B_8001a6e74 -- "fallthrough" --> B_8001a6e88
    B_8001a6e88 --> B_8001a6e8c
    B_8001a6e8c --> B_8001a6e98
    B_8001a6e98 -- "taken" --> B_8001a6ce4
    B_8001a6e98 -- "fallthrough" --> B_8001a6eb4
    B_8001a6eb4 --> B_8001a6ce4
    B_8001a6ec0 -- "case" --> B_8001a6eec
    B_8001a6eec -- "taken" --> B_8001a7344
    B_8001a6eec -- "fallthrough" --> B_8001a6f18
    B_8001a6f18 -- "taken" --> B_8001a7214
    B_8001a6f18 -- "fallthrough" --> B_8001a6f20
    B_8001a6f20 --> B_8001a6f24
    B_8001a6f24 -- "taken" --> B_8001a7224
    B_8001a6f24 -- "fallthrough" --> B_8001a6f30
    B_8001a6f30 -- "taken" --> B_8001a7378
    B_8001a6f30 -- "fallthrough" --> B_8001a6f4c
    B_8001a6f4c -- "taken" --> B_8001a7378
    B_8001a6f4c -- "fallthrough" --> B_8001a6f58
    B_8001a6f58 --> B_8001a6ce0
    B_8001a6f60 --> B_8001a6d68
    B_8001a6f70 -- "taken" --> B_8001a74e0
    B_8001a6f70 -- "fallthrough" --> B_8001a6f78
    B_8001a6f78 -- "taken" --> B_8001a74f8
    B_8001a6f78 -- "fallthrough" --> B_8001a6f88
    B_8001a6f88 --> B_8001a6f8c
    B_8001a6f8c -- "taken" --> B_8001a74cc
    B_8001a6f8c -- "fallthrough" --> B_8001a6f98
    B_8001a6f98 -- "taken" --> B_8001a74cc
    B_8001a6f98 -- "fallthrough" --> B_8001a6fbc
    B_8001a6fbc -- "taken" --> B_8001a7568
    B_8001a6fbc -- "fallthrough" --> B_8001a6ff0
    B_8001a6ff0 -- "taken" --> B_8001a7008
    B_8001a6ff0 -- "fallthrough" --> B_8001a6ffc
    B_8001a6ffc --> B_8001a7008
    B_8001a7008 -- "taken" --> B_8001a7024
    B_8001a7008 -- "fallthrough" --> B_8001a701c
    B_8001a701c --> B_8001a7024
    B_8001a7024 -- "taken" --> B_8001a7034
    B_8001a7024 -- "fallthrough" --> B_8001a702c
    B_8001a702c --> B_8001a7034
    B_8001a7034 --> B_8001a7044
    B_8001a7044 -- "taken" --> B_8001a7588
    B_8001a7044 -- "fallthrough" --> B_8001a7060
    B_8001a7060 -- "taken" --> B_8001a7074
    B_8001a7060 -- "fallthrough" --> B_8001a7070
    B_8001a7070 --> B_8001a7074
    B_8001a7074 -- "taken" --> B_8001a75a0
    B_8001a7074 -- "fallthrough" --> B_8001a7088
    B_8001a7088 --> B_8001a6e50
    B_8001a7098 -. "loop back" .-> B_8001a6dac
    B_8001a7098 -- "fallthrough" --> B_8001a70ac
    B_8001a70ac --> B_8001a74e0
    B_8001a70b0 --> B_8001a6dd8
    B_8001a70b8 -- "taken" --> B_8001a6e88
    B_8001a70b8 -- "fallthrough" --> B_8001a70d0
    B_8001a70d0 --> B_8001a6e8c
    B_8001a70d4 -- "taken" --> B_8001a6e98
    B_8001a70d4 -- "fallthrough" --> B_8001a70dc
    B_8001a70dc --> B_8001a6e98
    B_8001a70e4 -- "taken" --> B_8001a70f0
    B_8001a70e4 -- "fallthrough" --> B_8001a70e8
    B_8001a70e8 -- "taken" --> B_8001a7318
    B_8001a70e8 -- "fallthrough" --> B_8001a70f0
    B_8001a70f0 -- "taken" --> B_8001a6ce0
    B_8001a70f0 -- "fallthrough" --> B_8001a70fc
    B_8001a70fc -- "taken" --> B_8001a6ce0
    B_8001a70fc -- "fallthrough" --> B_8001a7104
    B_8001a7104 -- "taken" --> B_8001a7120
    B_8001a7104 -- "fallthrough" --> B_8001a711c
    B_8001a711c -- "taken" --> B_8001a7134
    B_8001a711c -- "fallthrough" --> B_8001a7120
    B_8001a7120 --> B_8001a7134
    B_8001a7134 -- "taken" --> B_8001a7680
    B_8001a7134 -- "fallthrough" --> B_8001a7160
    B_8001a7160 --> B_8001a7164
    B_8001a7164 -- "taken" --> B_8001a76cc
    B_8001a7164 -- "fallthrough" --> B_8001a716c
    B_8001a716c --> B_8001a7174
    B_8001a7174 -- "taken" --> B_8001a71a4
    B_8001a7174 -- "fallthrough" --> B_8001a7194
    B_8001a7194 -. "loop back" .-> B_8001a7194
    B_8001a7194 -- "fallthrough" --> B_8001a71a0
    B_8001a71a0 --> B_8001a71a4
    B_8001a71a4 -- "taken" --> B_8001a6ce0
    B_8001a71a4 -- "fallthrough" --> B_8001a71d8
    B_8001a71d8 --> B_8001a6ce0
    B_8001a71e4 -- "taken" --> B_8001a6c50
    B_8001a71e4 -- "fallthrough" --> B_8001a7210
    B_8001a7210 --> B_8001a7370
    B_8001a7214 --> B_8001a6f24
    B_8001a7224 -- "taken" --> B_8001a76e0
    B_8001a7224 -- "fallthrough" --> B_8001a7238
    B_8001a7238 -- "taken" --> B_8001a76e0
    B_8001a7238 -- "fallthrough" --> B_8001a724c
    B_8001a724c --> B_8001a6ce0
    B_8001a7254 --> EXIT_8001a7254["return"]
    B_8001a727c --> B_8001a6c78
    B_8001a728c -- "taken" --> B_8001a74f0
    B_8001a728c -- "fallthrough" --> B_8001a7290
    B_8001a7290 -- "taken" --> B_8001a74f0
    B_8001a7290 -- "fallthrough" --> B_8001a7298
    B_8001a7298 --> B_8001a72ac
    B_8001a72ac --> B_8001a739c
    B_8001a72b4 -- "taken" --> B_8001a72e0
    B_8001a72b4 -- "fallthrough" --> B_8001a72cc
    B_8001a72cc -- "taken" --> B_8001a744c
    B_8001a72cc -- "fallthrough" --> B_8001a72e0
    B_8001a72e0 -- "taken" --> B_8001a70f0
    B_8001a72e0 -- "fallthrough" --> B_8001a72e8
    B_8001a72e8 -- "taken" --> B_8001a70f0
    B_8001a72e8 -- "fallthrough" --> B_8001a72f0
    B_8001a72f0 --> B_8001a70f0
    B_8001a7318 --> B_8001a70f0
    B_8001a7344 -- "taken" --> B_8001a7370
    B_8001a7344 -- "fallthrough" --> B_8001a7348
    B_8001a7348 -- "taken" --> B_8001a7370
    B_8001a7348 -- "fallthrough" --> B_8001a7350
    B_8001a7350 --> B_8001a735c
    B_8001a735c --> B_8001a7370
    B_8001a7370 --> B_8001a6ce4
    B_8001a7378 -- "taken" --> B_8001a74f0
    B_8001a7378 -- "fallthrough" --> B_8001a737c
    B_8001a737c -- "taken" --> B_8001a74f0
    B_8001a737c -- "fallthrough" --> B_8001a7384
    B_8001a7384 --> B_8001a7394
    B_8001a7394 --> B_8001a739c
    B_8001a739c --> B_8001a74f0
    B_8001a73a8 -- "taken" --> B_8001a7370
    B_8001a73a8 -- "fallthrough" --> B_8001a73ac
    B_8001a73ac -- "taken" --> B_8001a7370
    B_8001a73ac -- "fallthrough" --> B_8001a73b4
    B_8001a73b4 --> B_8001a735c
    B_8001a73c4 -- "taken" --> B_8001a76d4
    B_8001a73c4 -- "fallthrough" --> B_8001a73dc
    B_8001a73dc --> B_8001a73e0
    B_8001a73e0 -- "taken" --> B_8001a6e98
    B_8001a73e0 -- "fallthrough" --> B_8001a73e8
    B_8001a73e8 --> B_8001a74e4
    B_8001a73ec -- "taken" --> B_8001a7458
    B_8001a73ec -- "fallthrough" --> B_8001a73f8
    B_8001a73f8 --> B_8001a73fc
    B_8001a73fc -- "taken" --> B_8001a741c
    B_8001a73fc -- "fallthrough" --> B_8001a7408
    B_8001a7408 -- "taken" --> B_8001a7418
    B_8001a7408 -- "fallthrough" --> B_8001a740c
    B_8001a740c -- "taken" --> B_8001a741c
    B_8001a740c -- "fallthrough" --> B_8001a7418
    B_8001a7418 --> B_8001a741c
    B_8001a741c -. "loop back" .-> B_8001a73fc
    B_8001a741c -- "fallthrough" --> B_8001a7430
    B_8001a7430 -- "taken" --> B_8001a74e4
    B_8001a7430 -- "fallthrough" --> B_8001a7434
    B_8001a7434 --> B_8001a6db8
    B_8001a743c --> B_8001a6e34
    B_8001a744c --> B_8001a6cdc
    B_8001a7458 -- "taken" --> B_8001a749c
    B_8001a7458 -- "fallthrough" --> B_8001a7460
    B_8001a7460 --> B_8001a7464
    B_8001a7464 -- "taken" --> B_8001a7484
    B_8001a7464 -- "fallthrough" --> B_8001a7470
    B_8001a7470 -- "taken" --> B_8001a7480
    B_8001a7470 -- "fallthrough" --> B_8001a7474
    B_8001a7474 -- "taken" --> B_8001a7484
    B_8001a7474 -- "fallthrough" --> B_8001a7480
    B_8001a7480 --> B_8001a7484
    B_8001a7484 -. "loop back" .-> B_8001a7464
    B_8001a7484 -- "fallthrough" --> B_8001a7498
    B_8001a7498 --> B_8001a7430
    B_8001a749c --> B_8001a74a0
    B_8001a74a0 -. "loop back" .-> B_8001a74a0
    B_8001a74a0 -- "fallthrough" --> B_8001a74c8
    B_8001a74c8 --> B_8001a7430
    B_8001a74cc -. "loop back" .-> B_8001a6f8c
    B_8001a74cc -- "fallthrough" --> B_8001a74e0
    B_8001a74e0 --> B_8001a74e4
    B_8001a74e4 -- "taken" --> B_8001a74f0
    B_8001a74e4 -- "fallthrough" --> B_8001a74e8
    B_8001a74e8 -- "taken" --> B_8001a7700
    B_8001a74e8 -- "fallthrough" --> B_8001a74f0
    B_8001a74f0 --> B_8001a6ce0
    B_8001a74f8 -- "taken" --> B_8001a75b4
    B_8001a74f8 -- "fallthrough" --> B_8001a7504
    B_8001a7504 --> B_8001a7508
    B_8001a7508 -- "taken" --> B_8001a752c
    B_8001a7508 -- "fallthrough" --> B_8001a7514
    B_8001a7514 -. "loop back" .-> B_8001a7508
    B_8001a7514 -- "fallthrough" --> B_8001a7528
    B_8001a7528 --> B_8001a7670
    B_8001a752c -- "taken" --> B_8001a7514
    B_8001a752c -- "fallthrough" --> B_8001a7550
    B_8001a7550 -- "taken" --> B_8001a7560
    B_8001a7550 -- "fallthrough" --> B_8001a7554
    B_8001a7554 -- "taken" --> B_8001a7514
    B_8001a7554 -- "fallthrough" --> B_8001a7560
    B_8001a7560 --> B_8001a7514
    B_8001a7568 --> B_8001a7044
    B_8001a7588 --> B_8001a7074
    B_8001a75a0 -- "taken" --> B_8001a6e98
    B_8001a75a0 -- "fallthrough" --> B_8001a75a8
    B_8001a75a8 --> B_8001a6e98
    B_8001a75b4 -- "taken" --> B_8001a7620
    B_8001a75b4 -- "fallthrough" --> B_8001a75bc
    B_8001a75bc --> B_8001a75c0
    B_8001a75c0 -- "taken" --> B_8001a75e4
    B_8001a75c0 -- "fallthrough" --> B_8001a75cc
    B_8001a75cc -. "loop back" .-> B_8001a75c0
    B_8001a75cc -- "fallthrough" --> B_8001a75e0
    B_8001a75e0 --> B_8001a7670
    B_8001a75e4 -- "taken" --> B_8001a75cc
    B_8001a75e4 -- "fallthrough" --> B_8001a7608
    B_8001a7608 -- "taken" --> B_8001a7618
    B_8001a7608 -- "fallthrough" --> B_8001a760c
    B_8001a760c -- "taken" --> B_8001a75cc
    B_8001a760c -- "fallthrough" --> B_8001a7618
    B_8001a7618 --> B_8001a75cc
    B_8001a7620 --> B_8001a7624
    B_8001a7624 -- "taken" --> B_8001a765c
    B_8001a7624 -- "fallthrough" --> B_8001a7630
    B_8001a7630 --> B_8001a765c
    B_8001a765c -. "loop back" .-> B_8001a7624
    B_8001a765c -- "fallthrough" --> B_8001a7670
    B_8001a7670 -- "taken" --> B_8001a74e4
    B_8001a7670 -- "fallthrough" --> B_8001a7674
    B_8001a7674 --> B_8001a6fbc
    B_8001a7680 -- "taken" --> B_8001a74f0
    B_8001a7680 -- "fallthrough" --> B_8001a7688
    B_8001a7688 -- "taken" --> B_8001a74f0
    B_8001a7688 -- "fallthrough" --> B_8001a76a4
    B_8001a76a4 -- "taken" --> B_8001a6ce0
    B_8001a76a4 -- "fallthrough" --> B_8001a76c8
    B_8001a76c8 --> B_8001a7164
    B_8001a76cc --> B_8001a7174
    B_8001a76d4 --> B_8001a73e0
    B_8001a76e0 -- "taken" --> B_8001a74f0
    B_8001a76e0 -- "fallthrough" --> B_8001a76e4
    B_8001a76e4 -- "taken" --> B_8001a74f0
    B_8001a76e4 -- "fallthrough" --> B_8001a76ec
    B_8001a76ec --> B_8001a7394
    B_8001a7700 --> B_8001a72ac
    %% Path Highlighting
    style B_8001a6c10 fill:#e8f5e9,stroke:#2e7d32,stroke-width:3px,color:#1b5e20
    style B_8001a6c48 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001a6c50 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001a6ce4 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001a6d08 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001a6d18 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001a6d28 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001a6d4c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001a6d5c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001a6d68 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001a6d74 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001a6e50 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001a6e88 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001a6e8c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001a6e98 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001a6eb4 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001a6f60 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001a6f70 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001a6f78 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001a6fbc fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001a6ff0 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001a6ffc fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001a7008 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001a701c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001a7024 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001a702c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001a7034 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001a7044 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001a7074 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001a7088 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001a70b8 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001a71e4 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001a7254 fill:#e1f5fe,stroke:#0288d1,stroke-width:2px,color:#01579b
    style B_8001a74f8 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001a7588 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001a75b4 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001a75bc fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001a75c0 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001a75cc fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001a75e0 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001a75e4 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001a7608 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001a760c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001a7618 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001a7670 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001a7674 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
```

## 3. External Callee Classification (8 total: 7 constant-zero, 0 pointer-alloc, 0 memory-copy, 1 branch-sensitive)

| External Symbol | Classification | Args Read | Longest-Path Return (`X0`) | Alt-Branch Return (`X0`) | Post-Call Analysis |
| :--- | :--- | ---: | :--- | :--- | :--- |
| `f_802ba4070` | `CONSTANT_ZERO` | 2 | `0x0` | `0x1` | Return value X0 unread/overwritten -> constant 0 |
| `f_802ba4060` | `CONSTANT_ZERO` | 2 | `0x0` | `0x1` | Return value X0 unread/overwritten -> constant 0 |
| `f_80007a838` | `CONSTANT_ZERO` | 3 | `0x0` | `0x1` | Return value X0 unread/overwritten -> constant 0 |
| `f_802ba3ac0` | `CONSTANT_ZERO` | 2 | `0x0` | `0x1` | Return value X0 unread/overwritten -> constant 0 |
| `f_800099ce0` | `CONSTANT_ZERO` | 2 | `0x0` | `0x1` | Return value X0 unread/overwritten -> constant 0 |
| `f_80017c9c8` | **BRANCH_SENSITIVE** | 2 | `0x0` | `0x1` | CBNZ on return register x0 at 0x8001a73e4 |
| `f_8027a9c88` | `CONSTANT_ZERO` | 2 | `0x0` | `0x1` | Return value X0 unread/overwritten -> constant 0 |
| `f_80017cbe0` | `CONSTANT_ZERO` | 3 | `0x0` | `0x1` | Return value X0 unread/overwritten -> constant 0 |

## 4. Constraint-Solved Parameters for Maximal Finite & Common Paths

### Function `f_8001a6c10` (`0x8001a6c10`) — Solver Backend: `OR-Tools CP-SAT MaxSAT (OPTIMAL) + Native BV Solver`

| Parameter / Attribute | Maximal Finite Path (`path_mode = 0`) | Common Path (`path_mode = 1`) |
| :--- | :--- | :--- |
| **Static ARM64 Instructions** | **275 insns** (45 basic blocks) | **39 insns** (6 basic blocks) |
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

- `0x8001a6c44: MEM[MEM[GLOBAL+0x80394ba80]+0x0] != NULL (valid 64-bit pointer)`
- `0x8001a6c4c: X1 eq 0`
- `0x8001a720c: MEM[OBJ_ANON+0x0] != NULL (valid 64-bit pointer)`
- `0x8001a6c64: MEM[MEM[MEM[OBJ_ANON+0x0]+0x0]+0x30] ne 34366074320`
- `0x8001a6d14: MEM[MEM[MEM[OBJ_ANON+0x0]+0x0]+0x30] ne 34361896524`
- `0x8001a6d24: MEM[MEM[MEM[OBJ_ANON+0x0]+0x0]+0x30] eq 34361295696`
- `0x8001a6d60: bit #0 of MEM[MEM[OBJ_ANON+0x0]+0xa8] == 1 -> MEM[MEM[OBJ_ANON+0x0]+0xa8] |= 0x1`
- `0x8001a6d70: bit #31 of MEM[MEM[OBJ_ANON+0x0]+0x80] == 0`
- `0x8001a6d94: MEM[MEM[OBJ_ANON+0x0]+0x80] hi 8`
- `0x8001a6f74: MEM[MEM[OBJ_ANON+0x0]+0xb8] ne MEM[MEM[OBJ_ANON+0x0]+0xc4]`
- `0x8001a6f84: MEM[MEM[OBJ_ANON+0x0]+0xac] ne 0`
- `0x8001a7500: MEM[MEM[OBJ_ANON+0x0]+0xac] ne 1`
- `0x8001a75b8: MEM[MEM[OBJ_ANON+0x0]+0xac] eq 2`
- `0x8001a7614: MEM[GLOBAL+0x18] lo MEM[OBJ_ANON+0x18]`
- `0x8001a75dc: MEM[OBJ_ANON+0x8] eq MEM[MEM[OBJ_ANON+0x0]+0xc4]`
- `0x8001a7670: MEM[MEM[OBJ_ANON+0x0]+0xb8] != NULL (valid 64-bit pointer)`
- `0x8001a7018: MEM[MEM[MEM[OBJ_ANON+0x0]+0xc4]+0x0] != NULL (valid 64-bit pointer)`
- `0x8001a7028: MEM[MEM[MEM[OBJ_ANON+0x0]+0xc4]+0x8] != NULL (valid 64-bit pointer)`
- `0x8001a705c: MEM[MEM[OBJ_ANON+0x0]+0x80] ne 1`
- `0x8001a7084: MEM[OBJ_ANON+0x18] hs 33`
