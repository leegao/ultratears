# Automated Stub & Static CFG Longest-Path Analysis (`main_123_animblend`)

## 1. Function Static CFG & Path Length Summary

| Function | Entry PC | Static ARM64 Insns | Basic Blocks | Loop Back-Edges | Est. Common Path (ARM64 Insns) | Est. Longest Path (ARM64 Insns) | CP-SAT Verified Longest |
| :--- | :--- | ---: | ---: | ---: | ---: | ---: | ---: |
| `f_8001e1eb4` | `0x8001e1eb4` | 973 | 219 | 13 | 87 | 891 | 891 |

## 2. Function Control Flow Graphs (CFGs)

### Function `f_8001e1eb4` (`0x8001e1eb4` – 973 insns, 219 blocks)

```mermaid
flowchart TD
    B_8001e1eb4["0x8001e1eb4..0x8001e1ebc\n(2 insns)"]
    B_8001e1ebc["0x8001e1ebc..0x8001e1efc\n(16 insns)"]
    B_8001e1efc["0x8001e1efc..0x8001e1f18\n(7 insns)"]
    B_8001e1f18["0x8001e1f18..0x8001e1f1c\n(1 insns)"]
    B_8001e1f1c["0x8001e1f1c..0x8001e1f24\n(2 insns)"]
    B_8001e1f24["0x8001e1f24..0x8001e1f4c\n(10 insns)"]
    B_8001e1f4c["0x8001e1f4c..0x8001e1f50\n(1 insns)"]
    B_8001e1f50["0x8001e1f50..0x8001e1f68\n(6 insns)"]
    B_8001e1f68["0x8001e1f68..0x8001e1f7c\n(5 insns)"]
    B_8001e1f7c["0x8001e1f7c..0x8001e1f9c\n(8 insns)"]
    B_8001e1f9c["0x8001e1f9c..0x8001e1fb8\n(7 insns)"]
    B_8001e1fb8["0x8001e1fb8..0x8001e1fc0\n(2 insns)"]
    B_8001e1fc0["0x8001e1fc0..0x8001e1fd4\n(5 insns)"]
    B_8001e1fd4["0x8001e1fd4..0x8001e1fd8\n(1 insns)"]
    B_8001e1fd8["0x8001e1fd8..0x8001e1fe4\n(3 insns)"]
    B_8001e1fe4["0x8001e1fe4..0x8001e1fe8\n(1 insns)"]
    B_8001e1fe8["0x8001e1fe8..0x8001e1ff4\n(3 insns)"]
    B_8001e1ff4["0x8001e1ff4..0x8001e1ffc\n(2 insns)"]
    B_8001e1ffc["0x8001e1ffc..0x8001e2000\n(1 insns)"]
    B_8001e2000["0x8001e2000..0x8001e2008\n(2 insns)"]
    B_8001e2008["0x8001e2008..0x8001e2014\n(3 insns)"]
    B_8001e2014["0x8001e2014..0x8001e2028\n(5 insns)"]
    B_8001e2028["0x8001e2028..0x8001e202c\n(1 insns)"]
    B_8001e202c["0x8001e202c..0x8001e2034\n(2 insns, loop hdr)"]
    B_8001e2034["0x8001e2034..0x8001e2038\n(1 insns)"]
    B_8001e2038["0x8001e2038..0x8001e203c\n(1 insns)"]
    B_8001e203c["0x8001e203c..0x8001e2048\n(3 insns, loop hdr)"]
    B_8001e2048["0x8001e2048..0x8001e2050\n(2 insns)"]
    B_8001e2050["0x8001e2050..0x8001e2054\n(1 insns)"]
    B_8001e2054["0x8001e2054..0x8001e205c\n(2 insns)"]
    B_8001e205c["0x8001e205c..0x8001e2064\n(2 insns)"]
    B_8001e2064["0x8001e2064..0x8001e206c\n(2 insns)"]
    B_8001e206c["0x8001e206c..0x8001e2074\n(2 insns)"]
    B_8001e2074["0x8001e2074..0x8001e209c\n(10 insns)"]
    B_8001e209c["0x8001e209c..0x8001e20a4\n(2 insns)"]
    B_8001e20a4["0x8001e20a4..0x8001e20c0\n(7 insns)"]
    B_8001e20c0["0x8001e20c0..0x8001e20c4\n(1 insns)"]
    B_8001e20c4["0x8001e20c4..0x8001e2184\n(48 insns)"]
    B_8001e2184["0x8001e2184..0x8001e2188\n(1 insns)"]
    B_8001e2188["0x8001e2188..0x8001e21b0\n(10 insns)"]
    B_8001e21b0["0x8001e21b0..0x8001e21bc\n(3 insns)"]
    B_8001e21bc["0x8001e21bc..0x8001e2228\n(27 insns)"]
    B_8001e2228["0x8001e2228..0x8001e2230\n(2 insns)"]
    B_8001e2230["0x8001e2230..0x8001e2248\n(6 insns)"]
    B_8001e2248["0x8001e2248..0x8001e224c\n(1 insns)"]
    B_8001e224c["0x8001e224c..0x8001e2264\n(6 insns)"]
    B_8001e2264["0x8001e2264..0x8001e2268\n(1 insns)"]
    B_8001e2268["0x8001e2268..0x8001e227c\n(5 insns)"]
    B_8001e227c["0x8001e227c..0x8001e22ac\n(12 insns)"]
    B_8001e22ac["0x8001e22ac..0x8001e22c4\n(6 insns)"]
    B_8001e22c4["0x8001e22c4..0x8001e22cc\n(2 insns)"]
    B_8001e22cc["0x8001e22cc..0x8001e22d4\n(2 insns)"]
    B_8001e22d4["0x8001e22d4..0x8001e22ec\n(6 insns)"]
    B_8001e22ec["0x8001e22ec..0x8001e22f0\n(1 insns)"]
    B_8001e22f0["0x8001e22f0..0x8001e2328\n(14 insns)"]
    B_8001e2328["0x8001e2328..0x8001e2344\n(7 insns)"]
    B_8001e2344["0x8001e2344..0x8001e2348\n(1 insns)"]
    B_8001e2348["0x8001e2348..0x8001e2360\n(6 insns)"]
    B_8001e2360["0x8001e2360..0x8001e2368\n(2 insns)"]
    B_8001e2368["0x8001e2368..0x8001e2380\n(6 insns)"]
    B_8001e2380["0x8001e2380..0x8001e2394\n(5 insns)"]
    B_8001e2394["0x8001e2394..0x8001e239c\n(2 insns)"]
    B_8001e239c["0x8001e239c..0x8001e23a4\n(2 insns)"]
    B_8001e23a4["0x8001e23a4..0x8001e23b4\n(4 insns)"]
    B_8001e23b4["0x8001e23b4..0x8001e23d0\n(7 insns)"]
    B_8001e23d0["0x8001e23d0..0x8001e23e8\n(6 insns)"]
    B_8001e23e8["0x8001e23e8..0x8001e23fc\n(5 insns)"]
    B_8001e23fc["0x8001e23fc..0x8001e2400\n(1 insns)"]
    B_8001e2400["0x8001e2400..0x8001e2418\n(6 insns)"]
    B_8001e2418["0x8001e2418..0x8001e241c\n(1 insns)"]
    B_8001e241c["0x8001e241c..0x8001e2420\n(1 insns)"]
    B_8001e2420["0x8001e2420..0x8001e242c\n(3 insns)"]
    B_8001e242c["0x8001e242c..0x8001e2434\n(2 insns)"]
    B_8001e2434["0x8001e2434..0x8001e2440\n(3 insns)"]
    B_8001e2440["0x8001e2440..0x8001e2448\n(2 insns)"]
    B_8001e2448["0x8001e2448..0x8001e2450\n(2 insns)"]
    B_8001e2450["0x8001e2450..0x8001e24f8\n(42 insns)"]
    B_8001e24f8["0x8001e24f8..0x8001e2500\n(2 insns)"]
    B_8001e2500["0x8001e2500..0x8001e2504\n(1 insns)"]
    B_8001e2504["0x8001e2504..0x8001e251c\n(6 insns)"]
    B_8001e251c["0x8001e251c..0x8001e2520\n(1 insns)"]
    B_8001e2520["0x8001e2520..0x8001e2538\n(6 insns)"]
    B_8001e2538["0x8001e2538..0x8001e2550\n(6 insns)"]
    B_8001e2550["0x8001e2550..0x8001e2574\n(9 insns)"]
    B_8001e2574["0x8001e2574..0x8001e257c\n(2 insns)"]
    B_8001e257c["0x8001e257c..0x8001e2590\n(5 insns)"]
    B_8001e2590["0x8001e2590..0x8001e2594\n(1 insns)"]
    B_8001e2594["0x8001e2594..0x8001e25a0\n(3 insns)"]
    B_8001e25a0["0x8001e25a0..0x8001e25a4\n(1 insns)"]
    B_8001e25a4["0x8001e25a4..0x8001e25b0\n(3 insns)"]
    B_8001e25b0["0x8001e25b0..0x8001e25b8\n(2 insns)"]
    B_8001e25b8["0x8001e25b8..0x8001e25bc\n(1 insns)"]
    B_8001e25bc["0x8001e25bc..0x8001e25c4\n(2 insns)"]
    B_8001e25c4["0x8001e25c4..0x8001e25c8\n(1 insns)"]
    B_8001e25c8["0x8001e25c8..0x8001e25cc\n(1 insns)"]
    B_8001e25cc["0x8001e25cc..0x8001e25d4\n(2 insns)"]
    B_8001e25d4["0x8001e25d4..0x8001e25dc\n(2 insns)"]
    B_8001e25dc["0x8001e25dc..0x8001e25e4\n(2 insns)"]
    B_8001e25e4["0x8001e25e4..0x8001e25f4\n(4 insns, loop hdr)"]
    B_8001e25f4["0x8001e25f4..0x8001e2600\n(3 insns, loop hdr)"]
    B_8001e2600["0x8001e2600..0x8001e2608\n(2 insns)"]
    B_8001e2608["0x8001e2608..0x8001e260c\n(1 insns)"]
    B_8001e260c["0x8001e260c..0x8001e2614\n(2 insns)"]
    B_8001e2614["0x8001e2614..0x8001e261c\n(2 insns)"]
    B_8001e261c["0x8001e261c..0x8001e2658\n(15 insns)"]
    B_8001e2658["0x8001e2658..0x8001e2680\n(10 insns)"]
    B_8001e2680["0x8001e2680..0x8001e269c\n(7 insns)"]
    B_8001e269c["0x8001e269c..0x8001e26a4\n(2 insns)"]
    B_8001e26a4["0x8001e26a4..0x8001e26c8\n(9 insns)"]
    B_8001e26c8["0x8001e26c8..0x8001e26e0\n(6 insns)"]
    B_8001e26e0["0x8001e26e0..0x8001e26f0\n(4 insns)"]
    B_8001e26f0["0x8001e26f0..0x8001e2700\n(4 insns)"]
    B_8001e2700["0x8001e2700..0x8001e271c\n(7 insns)"]
    B_8001e271c["0x8001e271c..0x8001e2728\n(3 insns)"]
    B_8001e2728["0x8001e2728..0x8001e2754\n(11 insns)"]
    B_8001e2754["0x8001e2754..0x8001e2758\n(1 insns)"]
    B_8001e2758["0x8001e2758..0x8001e275c\n(1 insns)"]
    B_8001e275c["0x8001e275c..0x8001e2760\n(1 insns)"]
    B_8001e2760["0x8001e2760..0x8001e2768\n(2 insns)"]
    B_8001e2768["0x8001e2768..0x8001e2774\n(3 insns, loop hdr)"]
    B_8001e2774["0x8001e2774..0x8001e2780\n(3 insns)"]
    B_8001e2780["0x8001e2780..0x8001e2784\n(1 insns)"]
    B_8001e2784["0x8001e2784..0x8001e2794\n(4 insns)"]
    B_8001e2794["0x8001e2794..0x8001e27a4\n(4 insns)"]
    B_8001e27a4["0x8001e27a4..0x8001e27b0\n(3 insns)"]
    B_8001e27b0["0x8001e27b0..0x8001e27b8\n(2 insns)"]
    B_8001e27b8["0x8001e27b8..0x8001e27c0\n(2 insns)"]
    B_8001e27c0["0x8001e27c0..0x8001e27c8\n(2 insns)"]
    B_8001e27c8["0x8001e27c8..0x8001e27d4\n(3 insns)"]
    B_8001e27d4["0x8001e27d4..0x8001e27d8\n(1 insns)"]
    B_8001e27d8["0x8001e27d8..0x8001e27e0\n(2 insns)"]
    B_8001e27e0["0x8001e27e0..0x8001e27e8\n(2 insns)"]
    B_8001e27e8["0x8001e27e8..0x8001e27f8\n(4 insns, loop hdr)"]
    B_8001e27f8["0x8001e27f8..0x8001e27fc\n(1 insns)"]
    B_8001e27fc["0x8001e27fc..0x8001e281c\n(8 insns)"]
    B_8001e281c["0x8001e281c..0x8001e2834\n(6 insns)"]
    B_8001e2834["0x8001e2834..0x8001e283c\n(2 insns)"]
    B_8001e283c["0x8001e283c..0x8001e2848\n(3 insns)"]
    B_8001e2848["0x8001e2848..0x8001e2858\n(4 insns)"]
    B_8001e2858["0x8001e2858..0x8001e2884\n(11 insns)"]
    B_8001e2884["0x8001e2884..0x8001e2890\n(3 insns)"]
    B_8001e2890["0x8001e2890..0x8001e28a0\n(4 insns)"]
    B_8001e28a0["0x8001e28a0..0x8001e28b0\n(4 insns)"]
    B_8001e28b0["0x8001e28b0..0x8001e28bc\n(3 insns)"]
    B_8001e28bc["0x8001e28bc..0x8001e28c8\n(3 insns)"]
    B_8001e28c8["0x8001e28c8..0x8001e28d8\n(4 insns, loop hdr)"]
    B_8001e28d8["0x8001e28d8..0x8001e28dc\n(1 insns)"]
    B_8001e28dc["0x8001e28dc..0x8001e28e4\n(2 insns)"]
    B_8001e28e4["0x8001e28e4..0x8001e28f0\n(3 insns)"]
    B_8001e28f0["0x8001e28f0..0x8001e28f4\n(1 insns)"]
    B_8001e28f4["0x8001e28f4..0x8001e2904\n(4 insns)"]
    B_8001e2904["0x8001e2904..0x8001e290c\n(2 insns)"]
    B_8001e290c["0x8001e290c..0x8001e2920\n(5 insns)"]
    B_8001e2920["0x8001e2920..0x8001e292c\n(3 insns)"]
    B_8001e292c["0x8001e292c..0x8001e2938\n(3 insns)"]
    B_8001e2938["0x8001e2938..0x8001e2950\n(6 insns)"]
    B_8001e2950["0x8001e2950..0x8001e295c\n(3 insns)"]
    B_8001e295c["0x8001e295c..0x8001e2988\n(11 insns)"]
    B_8001e2988["0x8001e2988..0x8001e2994\n(3 insns)"]
    B_8001e2994["0x8001e2994..0x8001e29a0\n(3 insns)"]
    B_8001e29a0["0x8001e29a0..0x8001e29ac\n(3 insns)"]
    B_8001e29ac["0x8001e29ac..0x8001e29b4\n(2 insns)"]
    B_8001e29b4["0x8001e29b4..0x8001e29c0\n(3 insns)"]
    B_8001e29c0["0x8001e29c0..0x8001e29d8\n(6 insns, loop hdr)"]
    B_8001e29d8["0x8001e29d8..0x8001e29dc\n(1 insns)"]
    B_8001e29dc["0x8001e29dc..0x8001e29e8\n(3 insns)"]
    B_8001e29e8["0x8001e29e8..0x8001e2a00\n(6 insns)"]
    B_8001e2a00["0x8001e2a00..0x8001e2a04\n(1 insns)"]
    B_8001e2a04["0x8001e2a04..0x8001e2a24\n(8 insns)"]
    B_8001e2a24["0x8001e2a24..0x8001e2a50\n(11 insns)"]
    B_8001e2a50["0x8001e2a50..0x8001e2a60\n(4 insns)"]
    B_8001e2a60["0x8001e2a60..0x8001e2a68\n(2 insns)"]
    B_8001e2a68["0x8001e2a68..0x8001e2a7c\n(5 insns)"]
    B_8001e2a7c["0x8001e2a7c..0x8001e2aa0\n(9 insns)"]
    B_8001e2aa0["0x8001e2aa0..0x8001e2aa8\n(2 insns)"]
    B_8001e2aa8["0x8001e2aa8..0x8001e2ae4\n(15 insns)"]
    B_8001e2ae4["0x8001e2ae4..0x8001e2b0c\n(10 insns)"]
    B_8001e2b0c["0x8001e2b0c..0x8001e2b24\n(6 insns)"]
    B_8001e2b24["0x8001e2b24..0x8001e2b40\n(7 insns)"]
    B_8001e2b40["0x8001e2b40..0x8001e2b4c\n(3 insns)"]
    B_8001e2b4c["0x8001e2b4c..0x8001e2b50\n(1 insns)"]
    B_8001e2b50["0x8001e2b50..0x8001e2b5c\n(3 insns)"]
    B_8001e2b5c["0x8001e2b5c..0x8001e2b64\n(2 insns)"]
    B_8001e2b64["0x8001e2b64..0x8001e2b7c\n(6 insns)"]
    B_8001e2b7c["0x8001e2b7c..0x8001e2b8c\n(4 insns)"]
    B_8001e2b8c["0x8001e2b8c..0x8001e2b9c\n(4 insns)"]
    B_8001e2b9c["0x8001e2b9c..0x8001e2bac\n(4 insns)"]
    B_8001e2bac["0x8001e2bac..0x8001e2bb8\n(3 insns)"]
    B_8001e2bb8["0x8001e2bb8..0x8001e2bc4\n(3 insns)"]
    B_8001e2bc4["0x8001e2bc4..0x8001e2bfc\n(14 insns)"]
    B_8001e2bfc["0x8001e2bfc..0x8001e2c10\n(5 insns)"]
    B_8001e2c10["0x8001e2c10..0x8001e2c18\n(2 insns)"]
    B_8001e2c18["0x8001e2c18..0x8001e2c2c\n(5 insns)"]
    B_8001e2c2c["0x8001e2c2c..0x8001e2c44\n(6 insns)"]
    B_8001e2c44["0x8001e2c44..0x8001e2c4c\n(2 insns)"]
    B_8001e2c4c["0x8001e2c4c..0x8001e2c88\n(15 insns)"]
    B_8001e2c88["0x8001e2c88..0x8001e2c90\n(2 insns)"]
    B_8001e2c90["0x8001e2c90..0x8001e2c98\n(2 insns)"]
    B_8001e2c98["0x8001e2c98..0x8001e2ca0\n(2 insns)"]
    B_8001e2ca0["0x8001e2ca0..0x8001e2ca8\n(2 insns)"]
    B_8001e2ca8["0x8001e2ca8..0x8001e2cb8\n(4 insns)"]
    B_8001e2cb8["0x8001e2cb8..0x8001e2cc0\n(2 insns)"]
    B_8001e2cc0["0x8001e2cc0..0x8001e2cd0\n(4 insns)"]
    B_8001e2cd0["0x8001e2cd0..0x8001e2cf8\n(10 insns)"]
    B_8001e2cf8["0x8001e2cf8..0x8001e2d44\n(19 insns)"]
    B_8001e2d44["0x8001e2d44..0x8001e2d60\n(7 insns)"]
    B_8001e2d60["0x8001e2d60..0x8001e2d64\n(1 insns)"]
    B_8001e2d64["0x8001e2d64..0x8001e2d6c\n(2 insns)"]
    B_8001e2d6c["0x8001e2d6c..0x8001e2d74\n(2 insns)"]
    B_8001e2d74["0x8001e2d74..0x8001e2d88\n(5 insns)"]
    B_8001e2d88["0x8001e2d88..0x8001e2d94\n(3 insns)"]
    B_8001e2d94["0x8001e2d94..0x8001e2da0\n(3 insns, loop hdr)"]
    B_8001e2da0["0x8001e2da0..0x8001e2dac\n(3 insns)"]
    B_8001e2dac["0x8001e2dac..0x8001e2db0\n(1 insns)"]
    B_8001e2db0["0x8001e2db0..0x8001e2dbc\n(3 insns)"]
    B_8001e2dbc["0x8001e2dbc..0x8001e2dcc\n(4 insns)"]
    B_8001e2dcc["0x8001e2dcc..0x8001e2dd8\n(3 insns, loop hdr)"]
    B_8001e2dd8["0x8001e2dd8..0x8001e2de4\n(3 insns)"]
    B_8001e2de4["0x8001e2de4..0x8001e2de8\n(1 insns)"]
    B_8001e1eb4 -- "taken" --> B_8001e2834
    B_8001e1eb4 -- "fallthrough" --> B_8001e1ebc
    B_8001e1ebc -- "taken" --> B_8001e283c
    B_8001e1ebc -- "fallthrough" --> B_8001e1efc
    B_8001e1efc -- "taken" --> B_8001e2848
    B_8001e1efc -- "fallthrough" --> B_8001e1f18
    B_8001e1f18 -- "taken" --> B_8001e2858
    B_8001e1f18 -- "fallthrough" --> B_8001e1f1c
    B_8001e1f1c --> B_8001e1f24
    B_8001e1f24 -- "taken" --> B_8001e2890
    B_8001e1f24 -- "fallthrough" --> B_8001e1f4c
    B_8001e1f4c --> B_8001e1f50
    B_8001e1f50 -- "taken" --> B_8001e28a0
    B_8001e1f50 -- "fallthrough" --> B_8001e1f68
    B_8001e1f68 --> B_8001e1f7c
    B_8001e1f7c -- "taken" --> B_8001e28b0
    B_8001e1f7c -- "fallthrough" --> B_8001e1f9c
    B_8001e1f9c -- "taken" --> B_8001e27fc
    B_8001e1f9c -- "fallthrough" --> B_8001e1fb8
    B_8001e1fb8 -- "taken" --> B_8001e27fc
    B_8001e1fb8 -- "fallthrough" --> B_8001e1fc0
    B_8001e1fc0 -- "taken" --> B_8001e28bc
    B_8001e1fc0 -- "fallthrough" --> B_8001e1fd4
    B_8001e1fd4 --> B_8001e1fd8
    B_8001e1fd8 -- "taken" --> B_8001e1fe8
    B_8001e1fd8 -- "fallthrough" --> B_8001e1fe4
    B_8001e1fe4 --> B_8001e1fe8
    B_8001e1fe8 -- "taken" --> B_8001e28c8
    B_8001e1fe8 -- "fallthrough" --> B_8001e1ff4
    B_8001e1ff4 -- "taken" --> B_8001e28dc
    B_8001e1ff4 -- "fallthrough" --> B_8001e1ffc
    B_8001e1ffc --> B_8001e2000
    B_8001e2000 -- "taken" --> B_8001e28e4
    B_8001e2000 -- "fallthrough" --> B_8001e2008
    B_8001e2008 -- "taken" --> B_8001e2dcc
    B_8001e2008 -- "fallthrough" --> B_8001e2014
    B_8001e2014 -- "taken" --> B_8001e29c0
    B_8001e2014 -- "fallthrough" --> B_8001e2028
    B_8001e2028 --> B_8001e202c
    B_8001e202c -- "taken" --> B_8001e27c0
    B_8001e202c -- "fallthrough" --> B_8001e2034
    B_8001e2034 --> B_8001e2038
    B_8001e2038 --> B_8001e203c
    B_8001e203c -. "loop back" .-> B_8001e202c
    B_8001e203c -- "fallthrough" --> B_8001e2048
    B_8001e2048 -. "loop back" .-> B_8001e203c
    B_8001e2048 -- "fallthrough" --> B_8001e2050
    B_8001e2050 -- "taken" --> B_8001e205c
    B_8001e2050 -- "fallthrough" --> B_8001e2054
    B_8001e2054 --> B_8001e205c
    B_8001e205c -- "taken" --> B_8001e206c
    B_8001e205c -- "fallthrough" --> B_8001e2064
    B_8001e2064 --> B_8001e206c
    B_8001e206c --> B_8001e2074
    B_8001e2074 -- "taken" --> B_8001e28f4
    B_8001e2074 -- "fallthrough" --> B_8001e209c
    B_8001e209c -- "taken" --> B_8001e2904
    B_8001e209c -- "fallthrough" --> B_8001e20a4
    B_8001e20a4 -- "taken" --> B_8001e2920
    B_8001e20a4 -- "fallthrough" --> B_8001e20c0
    B_8001e20c0 --> B_8001e20c4
    B_8001e20c4 -- "taken" --> B_8001e292c
    B_8001e20c4 -- "fallthrough" --> B_8001e2184
    B_8001e2184 --> B_8001e2188
    B_8001e2188 -- "taken" --> B_8001e21bc
    B_8001e2188 -- "fallthrough" --> B_8001e21b0
    B_8001e21b0 --> B_8001e21bc
    B_8001e21bc -- "taken" --> B_8001e2230
    B_8001e21bc -- "fallthrough" --> B_8001e2228
    B_8001e2228 --> B_8001e2230
    B_8001e2230 -- "taken" --> B_8001e2938
    B_8001e2230 -- "fallthrough" --> B_8001e2248
    B_8001e2248 --> B_8001e224c
    B_8001e224c -- "taken" --> B_8001e2950
    B_8001e224c -- "fallthrough" --> B_8001e2264
    B_8001e2264 --> B_8001e2268
    B_8001e2268 -- "taken" --> B_8001e295c
    B_8001e2268 -- "fallthrough" --> B_8001e227c
    B_8001e227c -- "taken" --> B_8001e2658
    B_8001e227c -- "fallthrough" --> B_8001e22ac
    B_8001e22ac -- "taken" --> B_8001e2988
    B_8001e22ac -- "fallthrough" --> B_8001e22c4
    B_8001e22c4 -- "taken" --> B_8001e2538
    B_8001e22c4 -- "fallthrough" --> B_8001e22cc
    B_8001e22cc -- "taken" --> B_8001e2538
    B_8001e22cc -- "fallthrough" --> B_8001e22d4
    B_8001e22d4 -- "taken" --> B_8001e29dc
    B_8001e22d4 -- "fallthrough" --> B_8001e22ec
    B_8001e22ec --> B_8001e22f0
    B_8001e22f0 -- "taken" --> B_8001e29e8
    B_8001e22f0 -- "fallthrough" --> B_8001e2328
    B_8001e2328 -- "taken" --> B_8001e2a04
    B_8001e2328 -- "fallthrough" --> B_8001e2344
    B_8001e2344 -- "taken" --> B_8001e2a60
    B_8001e2344 -- "fallthrough" --> B_8001e2348
    B_8001e2348 -- "taken" --> B_8001e2a50
    B_8001e2348 -- "fallthrough" --> B_8001e2360
    B_8001e2360 -- "taken" --> B_8001e2a68
    B_8001e2360 -- "fallthrough" --> B_8001e2368
    B_8001e2368 -- "taken" --> B_8001e23a4
    B_8001e2368 -- "fallthrough" --> B_8001e2380
    B_8001e2380 -- "taken" --> B_8001e23a4
    B_8001e2380 -- "fallthrough" --> B_8001e2394
    B_8001e2394 -- "taken" --> B_8001e2ae4
    B_8001e2394 -- "fallthrough" --> B_8001e239c
    B_8001e239c --> B_8001e23a4
    B_8001e23a4 -- "taken" --> B_8001e2538
    B_8001e23a4 -- "fallthrough" --> B_8001e23b4
    B_8001e23b4 -- "taken" --> B_8001e2538
    B_8001e23b4 -- "fallthrough" --> B_8001e23d0
    B_8001e23d0 -- "taken" --> B_8001e26e0
    B_8001e23d0 -- "fallthrough" --> B_8001e23e8
    B_8001e23e8 -- "taken" --> B_8001e2784
    B_8001e23e8 -- "fallthrough" --> B_8001e23fc
    B_8001e23fc --> B_8001e2400
    B_8001e2400 -- "taken" --> B_8001e27b0
    B_8001e2400 -- "fallthrough" --> B_8001e2418
    B_8001e2418 --> B_8001e241c
    B_8001e241c -- "taken" --> B_8001e2c18
    B_8001e241c -- "fallthrough" --> B_8001e2420
    B_8001e2420 -- "taken" --> B_8001e2b50
    B_8001e2420 -- "fallthrough" --> B_8001e242c
    B_8001e242c -- "taken" --> B_8001e2c4c
    B_8001e242c -- "fallthrough" --> B_8001e2434
    B_8001e2434 -- "taken" --> B_8001e2b5c
    B_8001e2434 -- "fallthrough" --> B_8001e2440
    B_8001e2440 -- "taken" --> B_8001e2c18
    B_8001e2440 -- "fallthrough" --> B_8001e2448
    B_8001e2448 -- "taken" --> B_8001e2c18
    B_8001e2448 -- "fallthrough" --> B_8001e2450
    B_8001e2450 -- "taken" --> B_8001e2ca0
    B_8001e2450 -- "fallthrough" --> B_8001e24f8
    B_8001e24f8 -- "taken" --> B_8001e2504
    B_8001e24f8 -- "fallthrough" --> B_8001e2500
    B_8001e2500 --> B_8001e2504
    B_8001e2504 -- "taken" --> B_8001e2ca8
    B_8001e2504 -- "fallthrough" --> B_8001e251c
    B_8001e251c -- "taken" --> B_8001e2c18
    B_8001e251c -- "fallthrough" --> B_8001e2520
    B_8001e2520 --> B_8001e2538
    B_8001e2538 -- "taken" --> B_8001e2994
    B_8001e2538 -- "fallthrough" --> B_8001e2550
    B_8001e2550 -- "taken" --> B_8001e281c
    B_8001e2550 -- "fallthrough" --> B_8001e2574
    B_8001e2574 -- "taken" --> B_8001e281c
    B_8001e2574 -- "fallthrough" --> B_8001e257c
    B_8001e257c -- "taken" --> B_8001e29a0
    B_8001e257c -- "fallthrough" --> B_8001e2590
    B_8001e2590 --> B_8001e2594
    B_8001e2594 -- "taken" --> B_8001e27d8
    B_8001e2594 -- "fallthrough" --> B_8001e25a0
    B_8001e25a0 --> B_8001e25a4
    B_8001e25a4 -- "taken" --> B_8001e27e8
    B_8001e25a4 -- "fallthrough" --> B_8001e25b0
    B_8001e25b0 -- "taken" --> B_8001e29ac
    B_8001e25b0 -- "fallthrough" --> B_8001e25b8
    B_8001e25b8 --> B_8001e25bc
    B_8001e25bc -- "taken" --> B_8001e29b4
    B_8001e25bc -- "fallthrough" --> B_8001e25c4
    B_8001e25c4 --> B_8001e25c8
    B_8001e25c8 -- "taken" --> B_8001e2760
    B_8001e25c8 -- "fallthrough" --> B_8001e25cc
    B_8001e25cc -- "taken" --> B_8001e25dc
    B_8001e25cc -- "fallthrough" --> B_8001e25d4
    B_8001e25d4 --> B_8001e25dc
    B_8001e25dc --> B_8001e25e4
    B_8001e25e4 --> B_8001e25f4
    B_8001e25f4 -. "loop back" .-> B_8001e25e4
    B_8001e25f4 -- "fallthrough" --> B_8001e2600
    B_8001e2600 -. "loop back" .-> B_8001e25f4
    B_8001e2600 -- "fallthrough" --> B_8001e2608
    B_8001e2608 -- "taken" --> B_8001e2614
    B_8001e2608 -- "fallthrough" --> B_8001e260c
    B_8001e260c --> B_8001e2614
    B_8001e2614 --> B_8001e261c
    B_8001e261c --> EXIT_8001e261c["return"]
    B_8001e2658 -- "taken" --> B_8001e2aa8
    B_8001e2658 -- "fallthrough" --> B_8001e2680
    B_8001e2680 -- "taken" --> B_8001e27e0
    B_8001e2680 -- "fallthrough" --> B_8001e269c
    B_8001e269c --> B_8001e26a4
    B_8001e26a4 --> B_8001e26c8
    B_8001e26c8 --> B_8001e22ac
    B_8001e26e0 -- "taken" --> B_8001e27b8
    B_8001e26e0 -- "fallthrough" --> B_8001e26f0
    B_8001e26f0 -- "taken" --> B_8001e2cc0
    B_8001e26f0 -- "fallthrough" --> B_8001e2700
    B_8001e2700 -- "taken" --> B_8001e2cb8
    B_8001e2700 -- "fallthrough" --> B_8001e271c
    B_8001e271c -- "taken" --> B_8001e2cb8
    B_8001e271c -- "fallthrough" --> B_8001e2728
    B_8001e2728 --> B_8001e2754
    B_8001e2754 --> B_8001e2758
    B_8001e2758 -- "taken" --> B_8001e2520
    B_8001e2758 -- "fallthrough" --> B_8001e275c
    B_8001e275c --> B_8001e2538
    B_8001e2760 -- "taken" --> B_8001e2d94
    B_8001e2760 -- "fallthrough" --> B_8001e2768
    B_8001e2768 -- "taken" --> B_8001e27c8
    B_8001e2768 -- "fallthrough" --> B_8001e2774
    B_8001e2774 -- "taken" --> B_8001e261c
    B_8001e2774 -- "fallthrough" --> B_8001e2780
    B_8001e2780 -. "loop back" .-> B_8001e2768
    B_8001e2784 -- "taken" --> B_8001e2d64
    B_8001e2784 -- "fallthrough" --> B_8001e2794
    B_8001e2794 -- "taken" --> B_8001e2d6c
    B_8001e2794 -- "fallthrough" --> B_8001e27a4
    B_8001e27a4 --> B_8001e2400
    B_8001e27b0 --> B_8001e241c
    B_8001e27b8 --> B_8001e23e8
    B_8001e27c0 --> B_8001e2038
    B_8001e27c8 -- "taken" --> B_8001e25cc
    B_8001e27c8 -- "fallthrough" --> B_8001e27d4
    B_8001e27d4 -. "loop back" .-> B_8001e2768
    B_8001e27d8 --> B_8001e25a4
    B_8001e27e0 --> B_8001e26a4
    B_8001e27e8 -- "taken" --> B_8001e261c
    B_8001e27e8 -- "fallthrough" --> B_8001e27f8
    B_8001e27f8 -. "loop back" .-> B_8001e27e8
    B_8001e27fc --> B_8001e1fe8
    B_8001e281c --> B_8001e25a4
    B_8001e2834 --> EXIT_8001e2834["return"]
    B_8001e283c --> B_8001e1f24
    B_8001e2848 -- "taken" --> B_8001e1f1c
    B_8001e2848 -- "fallthrough" --> B_8001e2858
    B_8001e2858 -- "taken" --> B_8001e1f1c
    B_8001e2858 -- "fallthrough" --> B_8001e2884
    B_8001e2884 --> B_8001e1f1c
    B_8001e2890 --> B_8001e1f50
    B_8001e28a0 --> B_8001e1f7c
    B_8001e28b0 --> B_8001e2074
    B_8001e28bc --> B_8001e1fd8
    B_8001e28c8 -- "taken" --> B_8001e206c
    B_8001e28c8 -- "fallthrough" --> B_8001e28d8
    B_8001e28d8 -. "loop back" .-> B_8001e28c8
    B_8001e28dc --> B_8001e2000
    B_8001e28e4 -- "taken" --> B_8001e2014
    B_8001e28e4 -- "fallthrough" --> B_8001e28f0
    B_8001e28f0 --> B_8001e2008
    B_8001e28f4 --> B_8001e22ac
    B_8001e2904 -- "taken" --> B_8001e22ac
    B_8001e2904 -- "fallthrough" --> B_8001e290c
    B_8001e290c --> B_8001e22ac
    B_8001e2920 --> B_8001e20c4
    B_8001e292c --> B_8001e2188
    B_8001e2938 --> B_8001e224c
    B_8001e2950 --> B_8001e2268
    B_8001e295c --> B_8001e227c
    B_8001e2988 --> B_8001e2538
    B_8001e2994 --> B_8001e261c
    B_8001e29a0 --> B_8001e2594
    B_8001e29ac --> B_8001e25bc
    B_8001e29b4 --> B_8001e25c8
    B_8001e29c0 -- "taken" --> B_8001e2028
    B_8001e29c0 -- "fallthrough" --> B_8001e29d8
    B_8001e29d8 -. "loop back" .-> B_8001e29c0
    B_8001e29dc --> B_8001e22f0
    B_8001e29e8 -- "taken" --> B_8001e23a4
    B_8001e29e8 -- "fallthrough" --> B_8001e2a00
    B_8001e2a00 --> B_8001e2328
    B_8001e2a04 -- "taken" --> B_8001e2344
    B_8001e2a04 -- "fallthrough" --> B_8001e2a24
    B_8001e2a24 --> B_8001e2344
    B_8001e2a50 -- "taken" --> B_8001e2368
    B_8001e2a50 -- "fallthrough" --> B_8001e2a60
    B_8001e2a60 --> B_8001e2368
    B_8001e2a68 -- "taken" --> B_8001e2aa0
    B_8001e2a68 -- "fallthrough" --> B_8001e2a7c
    B_8001e2a7c --> B_8001e2aa0
    B_8001e2aa0 --> B_8001e2368
    B_8001e2aa8 --> B_8001e26c8
    B_8001e2ae4 -- "taken" --> B_8001e2cf8
    B_8001e2ae4 -- "fallthrough" --> B_8001e2b0c
    B_8001e2b0c -- "taken" --> B_8001e2cf8
    B_8001e2b0c -- "fallthrough" --> B_8001e2b24
    B_8001e2b24 -- "taken" --> B_8001e23a4
    B_8001e2b24 -- "fallthrough" --> B_8001e2b40
    B_8001e2b40 -- "taken" --> B_8001e239c
    B_8001e2b40 -- "fallthrough" --> B_8001e2b4c
    B_8001e2b4c --> B_8001e23a4
    B_8001e2b50 -- "taken" --> B_8001e2c18
    B_8001e2b50 -- "fallthrough" --> B_8001e2b5c
    B_8001e2b5c -- "taken" --> B_8001e2c18
    B_8001e2b5c -- "fallthrough" --> B_8001e2b64
    B_8001e2b64 -- "taken" --> B_8001e2c2c
    B_8001e2b64 -- "fallthrough" --> B_8001e2b7c
    B_8001e2b7c -- "taken" --> B_8001e2c2c
    B_8001e2b7c -- "fallthrough" --> B_8001e2b8c
    B_8001e2b8c -- "taken" --> B_8001e2c2c
    B_8001e2b8c -- "fallthrough" --> B_8001e2b9c
    B_8001e2b9c -- "taken" --> B_8001e2c2c
    B_8001e2b9c -- "fallthrough" --> B_8001e2bac
    B_8001e2bac -- "taken" --> B_8001e2c2c
    B_8001e2bac -- "fallthrough" --> B_8001e2bb8
    B_8001e2bb8 -- "taken" --> B_8001e2bfc
    B_8001e2bb8 -- "fallthrough" --> B_8001e2bc4
    B_8001e2bc4 --> B_8001e2bfc
    B_8001e2bfc -- "taken" --> B_8001e2c2c
    B_8001e2bfc -- "fallthrough" --> B_8001e2c10
    B_8001e2c10 --> B_8001e2520
    B_8001e2c18 --> B_8001e2754
    B_8001e2c2c -- "taken" --> B_8001e2db0
    B_8001e2c2c -- "fallthrough" --> B_8001e2c44
    B_8001e2c44 --> B_8001e251c
    B_8001e2c4c -- "taken" --> B_8001e251c
    B_8001e2c4c -- "fallthrough" --> B_8001e2c88
    B_8001e2c88 -- "taken" --> B_8001e251c
    B_8001e2c88 -- "fallthrough" --> B_8001e2c90
    B_8001e2c90 --> B_8001e2c98
    B_8001e2c98 --> B_8001e251c
    B_8001e2ca0 --> B_8001e2504
    B_8001e2ca8 --> B_8001e251c
    B_8001e2cb8 --> B_8001e2758
    B_8001e2cc0 -- "taken" --> B_8001e2700
    B_8001e2cc0 -- "fallthrough" --> B_8001e2cd0
    B_8001e2cd0 --> B_8001e2700
    B_8001e2cf8 -- "taken" --> B_8001e2d74
    B_8001e2cf8 -- "fallthrough" --> B_8001e2d44
    B_8001e2d44 -- "taken" --> B_8001e239c
    B_8001e2d44 -- "fallthrough" --> B_8001e2d60
    B_8001e2d60 --> B_8001e23a4
    B_8001e2d64 --> B_8001e2400
    B_8001e2d6c --> B_8001e2400
    B_8001e2d74 --> B_8001e23a4
    B_8001e2d88 -- "taken" --> B_8001e25cc
    B_8001e2d88 -. "loop back" .-> B_8001e2d94
    B_8001e2d94 -- "taken" --> B_8001e2d88
    B_8001e2d94 -- "fallthrough" --> B_8001e2da0
    B_8001e2da0 -- "taken" --> B_8001e261c
    B_8001e2da0 -- "fallthrough" --> B_8001e2dac
    B_8001e2dac -. "loop back" .-> B_8001e2d94
    B_8001e2db0 --> B_8001e2c98
    B_8001e2dbc -- "taken" --> B_8001e2014
    B_8001e2dbc -. "loop back" .-> B_8001e2dcc
    B_8001e2dcc -- "taken" --> B_8001e2dbc
    B_8001e2dcc -- "fallthrough" --> B_8001e2dd8
    B_8001e2dd8 -- "taken" --> B_8001e206c
    B_8001e2dd8 -- "fallthrough" --> B_8001e2de4
    B_8001e2de4 -. "loop back" .-> B_8001e2dcc
    %% Path Highlighting
    style B_8001e1eb4 fill:#e8f5e9,stroke:#2e7d32,stroke-width:3px,color:#1b5e20
    style B_8001e1ebc fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e1efc fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e1f1c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e1f24 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e1f50 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e1f68 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e1f7c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e1f9c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e1fb8 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e1fc0 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e1fd8 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e1fe4 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e1fe8 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e1ff4 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e2000 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e2008 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e2014 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e2028 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e202c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e2038 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e203c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e2048 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e2050 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e2054 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e205c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e2064 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e206c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e2074 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e209c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e20a4 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e20c4 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e2188 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e21b0 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e21bc fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e2228 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e2230 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e224c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e2268 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e227c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e22ac fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e22c4 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e22cc fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e22d4 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e22f0 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e2328 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e2344 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e2348 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e2360 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e2368 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e2380 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e2394 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e239c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e23a4 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e23b4 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e23d0 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e23e8 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e2400 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e241c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e2420 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e242c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e2434 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e2440 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e2448 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e2450 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e24f8 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e2500 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e2504 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e251c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e2520 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e2538 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e2550 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e2574 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e257c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e2594 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e25a4 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e25b0 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e25bc fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e25c8 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e25cc fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e25d4 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e25dc fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e25e4 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e25f4 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e2600 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e2608 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e260c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e2614 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e261c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e2658 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e2680 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e26a4 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e26c8 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e26e0 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e2754 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e2758 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e2760 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e2768 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e2784 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e2794 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e27a4 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e27b0 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e27b8 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e27c0 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e27c8 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e27d8 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e27e0 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e2834 fill:#e1f5fe,stroke:#0288d1,stroke-width:2px,color:#01579b
    style B_8001e2848 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e2858 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e2884 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e2890 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e28bc fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e28dc fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e28e4 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e28f0 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e2920 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e292c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e2938 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e2950 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e295c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e29a0 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e29ac fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e29b4 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e29c0 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e29dc fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e29e8 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e2a00 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e2a04 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e2a24 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e2a68 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e2a7c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e2aa0 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e2ae4 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e2b0c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e2c18 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e2ca8 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e2cf8 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e2d44 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e2dbc fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001e2dcc fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
```

## 3. External Callee Classification (18 total: 12 constant-zero, 2 pointer-alloc, 0 memory-copy, 4 branch-sensitive)

| External Symbol | Classification | Args Read | Longest-Path Return (`X0`) | Alt-Branch Return (`X0`) | Post-Call Analysis |
| :--- | :--- | ---: | :--- | :--- | :--- |
| `f_802ba3ac0` | **BRANCH_SENSITIVE** | 2 | `0x1` | `0x0` | CBZ on return register x0 at 0x8001e2570 |
| `f_802ba49e0` | `CONSTANT_ZERO` | 2 | `0x0` | `0x1` | Return value X0 unread/overwritten -> constant 0 |
| `f_802ba4060` | `CONSTANT_ZERO` | 2 | `0x0` | `0x1` | Return value X0 unread/overwritten -> constant 0 |
| `f_802ba5ac0` | `CONSTANT_ZERO` | 2 | `0x0` | `0x1` | Return value X0 unread/overwritten -> constant 0 |
| `f_802ba4070` | `POINTER_ALLOC` | 2 | `guest_alloc()` | `0x0` | Return value dereferenced as pointer at 0x8001e2400 |
| `f_8001e2de8` | `POINTER_ALLOC` | 2 | `guest_alloc()` | `0x0` | Return value dereferenced as pointer at 0x8001e20b0 |
| `f_8001e2dec` | `CONSTANT_ZERO` | 2 | `0x0` | `0x1` | Return value X0 unread/overwritten -> constant 0 |
| `f_8001e2df0` | **BRANCH_SENSITIVE** | 5 | `0x1` | `0x0` | CBNZ on return register x22 at 0x8001e2758 |
| `f_802ba4920` | `CONSTANT_ZERO` | 2 | `0x0` | `0x1` | Return value X0 unread/overwritten -> constant 0 |
| `f_802ba47e0` | **BRANCH_SENSITIVE** | 2 | `0x1` | `0x0` | TBZ bit #0 at 0x8001e28ec |
| `f_802a620a4` | `CONSTANT_ZERO` | 3 | `0x0` | `0x1` | Return value X0 unread/overwritten -> constant 0 |
| `f_802a731ec` | `CONSTANT_ZERO` | 2 | `0x0` | `0x1` | Return value X0 unread/overwritten -> constant 0 |
| `f_802ba5ab0` | `CONSTANT_ZERO` | 2 | `0x0` | `0x1` | Return value X0 unread/overwritten -> constant 0 |
| `f_802ba39a0` | **BRANCH_SENSITIVE** | 2 | `0x1` | `0x0` | CBZ on return register w0 at 0x8001e2ccc |
| `f_802ba39b0` | `CONSTANT_ZERO` | 2 | `0x0` | `0x1` | Return value X0 unread/overwritten -> constant 0 |
| `f_80187cb80` | `CONSTANT_ZERO` | 2 | `0x0` | `0x1` | Return value X0 unread/overwritten -> constant 0 |
| `f_80028d6d4` | `CONSTANT_ZERO` | 2 | `0x0` | `0x1` | Return value X0 unread/overwritten -> constant 0 |
| `f_8029927f4` | `CONSTANT_ZERO` | 5 | `0x0` | `0x1` | Return value X0 unread/overwritten -> constant 0 |

## 4. Constraint-Solved Parameters for Maximal Finite & Common Paths

### Function `f_8001e1eb4` (`0x8001e1eb4`) — Solver Backend: `OR-Tools CP-SAT MaxSAT (OPTIMAL) + Native BV Solver`

| Parameter / Attribute | Maximal Finite Path (`path_mode = 0`) | Common Path (`path_mode = 1`) |
| :--- | :--- | :--- |
| **Static ARM64 Instructions** | **891 insns** (140 basic blocks) | **87 insns** (17 basic blocks) |
| **Path Predicates Solved** | 92 branch/switch constraints | 11 branch/switch constraints |
| **`g_stub_branch_policy`** | `0x0` | `0xf` |
| **Entry Register `X0`** | `fbase + 0x1000` | `fbase + 0x1000` |
| **Entry Register `X1`** | `fbase + 0x2000` | `fbase + 0x2000` |
| **Stub Return `f_8001e2de8` (`X0`)** | `guest_alloc(128)` | `guest_alloc(128)` |
| **Stub Return `f_8001e2dec` (`X0`)** | `0x0` | `0x0` |
| **Stub Return `f_8001e2df0` (`X0`)** | `0x1 (policy bit #1=0)` | `0x0 (policy bit #1=1)` |
| **Stub Return `f_80028d6d4` (`X0`)** | `0x0` | `0x0` |
| **Stub Return `f_80187cb80` (`X0`)** | `0x0` | `0x0` |
| **Stub Return `f_8029927f4` (`X0`)** | `0x0` | `0x0` |
| **Stub Return `f_802a620a4` (`X0`)** | `0x0` | `0x0` |
| **Stub Return `f_802a731ec` (`X0`)** | `0x0` | `0x0` |
| **Stub Return `f_802ba39a0` (`X0`)** | `0x1 (policy bit #3=0)` | `0x0 (policy bit #3=1)` |
| **Stub Return `f_802ba39b0` (`X0`)** | `0x0` | `0x0` |
| **Stub Return `f_802ba3ac0` (`X0`)** | `0x1 (policy bit #0=0)` | `0x0 (policy bit #0=1)` |
| **Stub Return `f_802ba4060` (`X0`)** | `0x0` | `0x0` |
| **Stub Return `f_802ba4070` (`X0`)** | `guest_alloc(128)` | `guest_alloc(128)` |
| **Stub Return `f_802ba47e0` (`X0`)** | `0x1 (policy bit #2=0)` | `0x0 (policy bit #2=1)` |
| **Stub Return `f_802ba4920` (`X0`)** | `0x0` | `0x0` |
| **Stub Return `f_802ba49e0` (`X0`)** | `0x0` | `0x0` |
| **Stub Return `f_802ba5ab0` (`X0`)** | `0x0` | `0x0` |
| **Stub Return `f_802ba5ac0` (`X0`)** | `0x0` | `0x0` |

#### Extracted Maximal-Path Predicate Constraints:

- `0x8001e1eb8: bit #3 of MEM[X0+0x118] == 0`
- `0x8001e1ef8: MEM[MEM[X0+0x0]+0x60] eq MEM[GLOBAL+0x80394ba40]`
- `0x8001e1f14: MEM[MEM[X0+0x0]+0x18] ne MEM[GLOBAL+0x80394b898]`
- `0x8001e2854: bit #0 of X0 == 1 -> X0 |= 0x1`
- `0x8001e2880: MEM[X0+0x68] != NULL (valid 64-bit pointer)`
- `0x8001e1f48: MEM[MEM[X0+0x0]+0x20] ne MEM[GLOBAL+0x80394ba38]`
- `0x8001e1f64: MEM[MEM[MEM[MEM[MEM[GLOBAL+0x80394bac0]+0x0]+0xc8]+0x0]+0x30] eq MEM[GLOBAL+0x8039769c8]`
- `0x8001e1f98: MEM[MEM[MEM[OBJ_ANON+0x0]+0x0]+0x18] eq MEM[GLOBAL+0x803976998]`
- `0x8001e1fb4: RET_f_802ba3ac0 ne 0`
- `0x8001e1fbc: MEM[RET_f_802ba3ac0+0x30] != NULL (valid 64-bit pointer)`
- `0x8001e1fd0: MEM[MEM[MEM[RET_f_802ba3ac0+0x28]+0x0]+0x60] ne MEM[GLOBAL+0x80394cef8]`
- `0x8001e1ff0: RET_f_802ba49e0 ne MEM[MEM[OBJ_ANON+0x0]+0xb0]`
- `0x8001e1ff8: MEM[RET_f_802ba3ac0+0x28] gt 16`
- `0x8001e2004: MEM[RET_f_802ba3ac0+0x28] ge 17`
- `0x8001e28ec: bit #0 of RET_f_802ba47e0 == 1 -> RET_f_802ba47e0 |= 0x1`
- `0x8001e2010: MEM[MEM[OBJ_ANON+0x0]+0xb0] eq 65536`
- `0x8001e2dd4: MEM[MEM[OBJ_ANON+0x0]+0xb0] ne MEM[MEM[OBJ_ANON+0x0]+0xb0]`
- `0x8001e2dc8: MEM[MEM[OBJ_ANON+0x0]+0xb0] ne 65536`
- `0x8001e2024: MEM[MEM[OBJ_ANON+0x0]+0xb0] hs 131072`
- `0x8001e29d4: MEM[MEM[OBJ_ANON+0x0]+0xb0] eq 0`
