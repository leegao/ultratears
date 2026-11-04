# Automated Stub & Static CFG Longest-Path Analysis (`main_105_alloc`)

## 1. Function Static CFG & Path Length Summary

| Function | Entry PC | Static ARM64 Insns | Basic Blocks | Loop Back-Edges | Est. Common Path (ARM64 Insns) | Est. Longest Path (ARM64 Insns) | CP-SAT Verified Longest |
| :--- | :--- | ---: | ---: | ---: | ---: | ---: | ---: |
| `f_8001a1590` | `0x8001a1590` | 715 | 193 | 9 | 49 | 393 | 393 |

## 2. Function Control Flow Graphs (CFGs)

### Function `f_8001a1590` (`0x8001a1590` – 715 insns, 193 blocks)

```mermaid
flowchart TD
    B_8001a1590["0x8001a1590..0x8001a15c8\n(14 insns)"]
    B_8001a15c8["0x8001a15c8..0x8001a15d0\n(2 insns)"]
    B_8001a15d0["0x8001a15d0..0x8001a15e8\n(6 insns)"]
    B_8001a15e8["0x8001a15e8..0x8001a15f4\n(3 insns)"]
    B_8001a15f4["0x8001a15f4..0x8001a15f8\n(1 insns)"]
    B_8001a15f8["0x8001a15f8..0x8001a1624\n(11 insns)"]
    B_8001a1624["0x8001a1624..0x8001a1630\n(3 insns)"]
    B_8001a1630["0x8001a1630..0x8001a164c\n(7 insns)"]
    B_8001a164c["0x8001a164c..0x8001a1658\n(3 insns)"]
    B_8001a1658["0x8001a1658..0x8001a165c\n(1 insns)"]
    B_8001a165c["0x8001a165c..0x8001a1660\n(1 insns)"]
    B_8001a1660["0x8001a1660..0x8001a1664\n(1 insns)"]
    B_8001a1664["0x8001a1664..0x8001a1688\n(9 insns)"]
    B_8001a1688["0x8001a1688..0x8001a1698\n(4 insns)"]
    B_8001a1698["0x8001a1698..0x8001a16c4\n(11 insns)"]
    B_8001a16c4["0x8001a16c4..0x8001a16cc\n(2 insns)"]
    B_8001a16cc["0x8001a16cc..0x8001a16d0\n(1 insns)"]
    B_8001a16d0["0x8001a16d0..0x8001a16dc\n(3 insns)"]
    B_8001a16dc["0x8001a16dc..0x8001a16f8\n(7 insns)"]
    B_8001a16f8["0x8001a16f8..0x8001a1704\n(3 insns)"]
    B_8001a1704["0x8001a1704..0x8001a170c\n(2 insns)"]
    B_8001a170c["0x8001a170c..0x8001a1710\n(1 insns)"]
    B_8001a1710["0x8001a1710..0x8001a1720\n(4 insns)"]
    B_8001a1720["0x8001a1720..0x8001a1744\n(9 insns)"]
    B_8001a1744["0x8001a1744..0x8001a1754\n(4 insns)"]
    B_8001a1754["0x8001a1754..0x8001a175c\n(2 insns)"]
    B_8001a175c["0x8001a175c..0x8001a1768\n(3 insns)"]
    B_8001a1768["0x8001a1768..0x8001a1774\n(3 insns)"]
    B_8001a1774["0x8001a1774..0x8001a1798\n(9 insns)"]
    B_8001a1798["0x8001a1798..0x8001a17a0\n(2 insns)"]
    B_8001a17a0["0x8001a17a0..0x8001a17a8\n(2 insns)"]
    B_8001a17a8["0x8001a17a8..0x8001a17ac\n(1 insns)"]
    B_8001a17ac["0x8001a17ac..0x8001a17b8\n(3 insns)"]
    B_8001a17b8["0x8001a17b8..0x8001a17dc\n(9 insns)"]
    B_8001a17dc["0x8001a17dc..0x8001a17e4\n(2 insns)"]
    B_8001a17e4["0x8001a17e4..0x8001a17e8\n(1 insns)"]
    B_8001a17e8["0x8001a17e8..0x8001a17f0\n(2 insns)"]
    B_8001a17f0["0x8001a17f0..0x8001a181c\n(11 insns)"]
    B_8001a181c["0x8001a181c..0x8001a182c\n(4 insns)"]
    B_8001a182c["0x8001a182c..0x8001a1830\n(1 insns)"]
    B_8001a1830["0x8001a1830..0x8001a1844\n(5 insns)"]
    B_8001a1844["0x8001a1844..0x8001a184c\n(2 insns)"]
    B_8001a184c["0x8001a184c..0x8001a1870\n(9 insns)"]
    B_8001a1870["0x8001a1870..0x8001a1884\n(5 insns)"]
    B_8001a1884["0x8001a1884..0x8001a1888\n(1 insns)"]
    B_8001a1888["0x8001a1888..0x8001a1894\n(3 insns)"]
    B_8001a1894["0x8001a1894..0x8001a18ac\n(6 insns)"]
    B_8001a18ac["0x8001a18ac..0x8001a18b0\n(1 insns)"]
    B_8001a18b0["0x8001a18b0..0x8001a18bc\n(3 insns)"]
    B_8001a18bc["0x8001a18bc..0x8001a18c4\n(2 insns)"]
    B_8001a18c4["0x8001a18c4..0x8001a18f0\n(11 insns, switch)"]
    B_8001a18f0["0x8001a18f0..0x8001a1904\n(5 insns, loop hdr)"]
    B_8001a1904["0x8001a1904..0x8001a1908\n(1 insns)"]
    B_8001a1908["0x8001a1908..0x8001a1920\n(6 insns)"]
    B_8001a1920["0x8001a1920..0x8001a1924\n(1 insns)"]
    B_8001a1924["0x8001a1924..0x8001a192c\n(2 insns)"]
    B_8001a192c["0x8001a192c..0x8001a193c\n(4 insns)"]
    B_8001a193c["0x8001a193c..0x8001a1940\n(1 insns)"]
    B_8001a1940["0x8001a1940..0x8001a194c\n(3 insns, loop hdr)"]
    B_8001a194c["0x8001a194c..0x8001a1970\n(9 insns)"]
    B_8001a1970["0x8001a1970..0x8001a19a4\n(13 insns)"]
    B_8001a19a4["0x8001a19a4..0x8001a19b0\n(3 insns)"]
    B_8001a19b0["0x8001a19b0..0x8001a19bc\n(3 insns)"]
    B_8001a19bc["0x8001a19bc..0x8001a19d0\n(5 insns)"]
    B_8001a19d0["0x8001a19d0..0x8001a19d8\n(2 insns)"]
    B_8001a19d8["0x8001a19d8..0x8001a19e0\n(2 insns)"]
    B_8001a19e0["0x8001a19e0..0x8001a19e8\n(2 insns)"]
    B_8001a19e8["0x8001a19e8..0x8001a19f8\n(4 insns)"]
    B_8001a19f8["0x8001a19f8..0x8001a1a14\n(7 insns)"]
    B_8001a1a14["0x8001a1a14..0x8001a1a24\n(4 insns)"]
    B_8001a1a24["0x8001a1a24..0x8001a1a28\n(1 insns)"]
    B_8001a1a28["0x8001a1a28..0x8001a1a3c\n(5 insns)"]
    B_8001a1a3c["0x8001a1a3c..0x8001a1a4c\n(4 insns)"]
    B_8001a1a4c["0x8001a1a4c..0x8001a1a60\n(5 insns)"]
    B_8001a1a60["0x8001a1a60..0x8001a1a74\n(5 insns)"]
    B_8001a1a74["0x8001a1a74..0x8001a1a7c\n(2 insns)"]
    B_8001a1a7c["0x8001a1a7c..0x8001a1a80\n(1 insns)"]
    B_8001a1a80["0x8001a1a80..0x8001a1a84\n(1 insns)"]
    B_8001a1a84["0x8001a1a84..0x8001a1a8c\n(2 insns)"]
    B_8001a1a8c["0x8001a1a8c..0x8001a1a98\n(3 insns)"]
    B_8001a1a98["0x8001a1a98..0x8001a1aa0\n(2 insns)"]
    B_8001a1aa0["0x8001a1aa0..0x8001a1ab8\n(6 insns)"]
    B_8001a1ab8["0x8001a1ab8..0x8001a1abc\n(1 insns)"]
    B_8001a1abc["0x8001a1abc..0x8001a1ad0\n(5 insns)"]
    B_8001a1ad0["0x8001a1ad0..0x8001a1afc\n(11 insns)"]
    B_8001a1afc["0x8001a1afc..0x8001a1b00\n(1 insns)"]
    B_8001a1b00["0x8001a1b00..0x8001a1b08\n(2 insns)"]
    B_8001a1b08["0x8001a1b08..0x8001a1b10\n(2 insns)"]
    B_8001a1b10["0x8001a1b10..0x8001a1b30\n(8 insns)"]
    B_8001a1b30["0x8001a1b30..0x8001a1b64\n(13 insns)"]
    B_8001a1b64["0x8001a1b64..0x8001a1b70\n(3 insns)"]
    B_8001a1b70["0x8001a1b70..0x8001a1b78\n(2 insns)"]
    B_8001a1b78["0x8001a1b78..0x8001a1b80\n(2 insns)"]
    B_8001a1b80["0x8001a1b80..0x8001a1b8c\n(3 insns, loop hdr)"]
    B_8001a1b8c["0x8001a1b8c..0x8001a1b94\n(2 insns)"]
    B_8001a1b94["0x8001a1b94..0x8001a1ba4\n(4 insns)"]
    B_8001a1ba4["0x8001a1ba4..0x8001a1bbc\n(6 insns)"]
    B_8001a1bbc["0x8001a1bbc..0x8001a1bc0\n(1 insns)"]
    B_8001a1bc0["0x8001a1bc0..0x8001a1bc8\n(2 insns)"]
    B_8001a1bc8["0x8001a1bc8..0x8001a1bcc\n(1 insns)"]
    B_8001a1bcc["0x8001a1bcc..0x8001a1bf8\n(11 insns)"]
    B_8001a1bf8["0x8001a1bf8..0x8001a1bfc\n(1 insns)"]
    B_8001a1bfc["0x8001a1bfc..0x8001a1c04\n(2 insns)"]
    B_8001a1c04["0x8001a1c04..0x8001a1c10\n(3 insns)"]
    B_8001a1c10["0x8001a1c10..0x8001a1c38\n(10 insns)"]
    B_8001a1c38["0x8001a1c38..0x8001a1c48\n(4 insns)"]
    B_8001a1c48["0x8001a1c48..0x8001a1c4c\n(1 insns)"]
    B_8001a1c4c["0x8001a1c4c..0x8001a1c54\n(2 insns)"]
    B_8001a1c54["0x8001a1c54..0x8001a1c74\n(8 insns)"]
    B_8001a1c74["0x8001a1c74..0x8001a1c7c\n(2 insns)"]
    B_8001a1c7c["0x8001a1c7c..0x8001a1c94\n(6 insns)"]
    B_8001a1c94["0x8001a1c94..0x8001a1ca8\n(5 insns)"]
    B_8001a1ca8["0x8001a1ca8..0x8001a1cb0\n(2 insns)"]
    B_8001a1cb0["0x8001a1cb0..0x8001a1cb8\n(2 insns)"]
    B_8001a1cb8["0x8001a1cb8..0x8001a1ce0\n(10 insns)"]
    B_8001a1ce0["0x8001a1ce0..0x8001a1d0c\n(11 insns)"]
    B_8001a1d0c["0x8001a1d0c..0x8001a1d10\n(1 insns)"]
    B_8001a1d10["0x8001a1d10..0x8001a1d18\n(2 insns)"]
    B_8001a1d18["0x8001a1d18..0x8001a1d28\n(4 insns)"]
    B_8001a1d28["0x8001a1d28..0x8001a1d38\n(4 insns)"]
    B_8001a1d38["0x8001a1d38..0x8001a1d40\n(2 insns)"]
    B_8001a1d40["0x8001a1d40..0x8001a1d44\n(1 insns)"]
    B_8001a1d44["0x8001a1d44..0x8001a1d48\n(1 insns)"]
    B_8001a1d48["0x8001a1d48..0x8001a1d50\n(2 insns)"]
    B_8001a1d50["0x8001a1d50..0x8001a1d5c\n(3 insns)"]
    B_8001a1d5c["0x8001a1d5c..0x8001a1d70\n(5 insns)"]
    B_8001a1d70["0x8001a1d70..0x8001a1d78\n(2 insns)"]
    B_8001a1d78["0x8001a1d78..0x8001a1d84\n(3 insns)"]
    B_8001a1d84["0x8001a1d84..0x8001a1d88\n(1 insns)"]
    B_8001a1d88["0x8001a1d88..0x8001a1d90\n(2 insns)"]
    B_8001a1d90["0x8001a1d90..0x8001a1da0\n(4 insns)"]
    B_8001a1da0["0x8001a1da0..0x8001a1dac\n(3 insns)"]
    B_8001a1dac["0x8001a1dac..0x8001a1db0\n(1 insns)"]
    B_8001a1db0["0x8001a1db0..0x8001a1dbc\n(3 insns, loop hdr)"]
    B_8001a1dbc["0x8001a1dbc..0x8001a1dc0\n(1 insns)"]
    B_8001a1dc0["0x8001a1dc0..0x8001a1dcc\n(3 insns)"]
    B_8001a1dcc["0x8001a1dcc..0x8001a1dd0\n(1 insns)"]
    B_8001a1dd0["0x8001a1dd0..0x8001a1de4\n(5 insns)"]
    B_8001a1de4["0x8001a1de4..0x8001a1de8\n(1 insns)"]
    B_8001a1de8["0x8001a1de8..0x8001a1df0\n(2 insns)"]
    B_8001a1df0["0x8001a1df0..0x8001a1e00\n(4 insns)"]
    B_8001a1e00["0x8001a1e00..0x8001a1e08\n(2 insns)"]
    B_8001a1e08["0x8001a1e08..0x8001a1e0c\n(1 insns)"]
    B_8001a1e0c["0x8001a1e0c..0x8001a1e18\n(3 insns, loop hdr)"]
    B_8001a1e18["0x8001a1e18..0x8001a1e1c\n(1 insns)"]
    B_8001a1e1c["0x8001a1e1c..0x8001a1e28\n(3 insns)"]
    B_8001a1e28["0x8001a1e28..0x8001a1e2c\n(1 insns)"]
    B_8001a1e2c["0x8001a1e2c..0x8001a1e40\n(5 insns)"]
    B_8001a1e40["0x8001a1e40..0x8001a1e44\n(1 insns)"]
    B_8001a1e44["0x8001a1e44..0x8001a1e48\n(1 insns)"]
    B_8001a1e48["0x8001a1e48..0x8001a1e70\n(10 insns, loop hdr)"]
    B_8001a1e70["0x8001a1e70..0x8001a1e74\n(1 insns)"]
    B_8001a1e74["0x8001a1e74..0x8001a1e88\n(5 insns)"]
    B_8001a1e88["0x8001a1e88..0x8001a1e8c\n(1 insns)"]
    B_8001a1e8c["0x8001a1e8c..0x8001a1e90\n(1 insns)"]
    B_8001a1e90["0x8001a1e90..0x8001a1e98\n(2 insns)"]
    B_8001a1e98["0x8001a1e98..0x8001a1ea0\n(2 insns)"]
    B_8001a1ea0["0x8001a1ea0..0x8001a1ea4\n(1 insns)"]
    B_8001a1ea4["0x8001a1ea4..0x8001a1eac\n(2 insns)"]
    B_8001a1eac["0x8001a1eac..0x8001a1ec0\n(5 insns)"]
    B_8001a1ec0["0x8001a1ec0..0x8001a1ecc\n(3 insns)"]
    B_8001a1ecc["0x8001a1ecc..0x8001a1ed0\n(1 insns)"]
    B_8001a1ed0["0x8001a1ed0..0x8001a1edc\n(3 insns, loop hdr)"]
    B_8001a1edc["0x8001a1edc..0x8001a1ef0\n(5 insns)"]
    B_8001a1ef0["0x8001a1ef0..0x8001a1ef4\n(1 insns)"]
    B_8001a1ef4["0x8001a1ef4..0x8001a1f18\n(9 insns)"]
    B_8001a1f18["0x8001a1f18..0x8001a1f1c\n(1 insns)"]
    B_8001a1f1c["0x8001a1f1c..0x8001a1f28\n(3 insns)"]
    B_8001a1f28["0x8001a1f28..0x8001a1f30\n(2 insns)"]
    B_8001a1f30["0x8001a1f30..0x8001a1f50\n(8 insns)"]
    B_8001a1f50["0x8001a1f50..0x8001a1f68\n(6 insns)"]
    B_8001a1f68["0x8001a1f68..0x8001a1f70\n(2 insns)"]
    B_8001a1f70["0x8001a1f70..0x8001a1f74\n(1 insns)"]
    B_8001a1f74["0x8001a1f74..0x8001a1f80\n(3 insns, loop hdr)"]
    B_8001a1f80["0x8001a1f80..0x8001a1f94\n(5 insns)"]
    B_8001a1f94["0x8001a1f94..0x8001a1f98\n(1 insns)"]
    B_8001a1f98["0x8001a1f98..0x8001a1fbc\n(9 insns)"]
    B_8001a1fbc["0x8001a1fbc..0x8001a1fc0\n(1 insns)"]
    B_8001a1fc0["0x8001a1fc0..0x8001a1fcc\n(3 insns)"]
    B_8001a1fcc["0x8001a1fcc..0x8001a1fd4\n(2 insns)"]
    B_8001a1fd4["0x8001a1fd4..0x8001a1fdc\n(2 insns)"]
    B_8001a1fdc["0x8001a1fdc..0x8001a1ff8\n(7 insns)"]
    B_8001a1ff8["0x8001a1ff8..0x8001a201c\n(9 insns)"]
    B_8001a201c["0x8001a201c..0x8001a2020\n(1 insns)"]
    B_8001a2020["0x8001a2020..0x8001a2028\n(2 insns)"]
    B_8001a2028["0x8001a2028..0x8001a202c\n(1 insns)"]
    B_8001a202c["0x8001a202c..0x8001a2038\n(3 insns, loop hdr)"]
    B_8001a2038["0x8001a2038..0x8001a2064\n(11 insns)"]
    B_8001a2064["0x8001a2064..0x8001a2078\n(5 insns)"]
    B_8001a2078["0x8001a2078..0x8001a207c\n(1 insns)"]
    B_8001a207c["0x8001a207c..0x8001a2088\n(3 insns)"]
    B_8001a2088["0x8001a2088..0x8001a20b0\n(10 insns)"]
    B_8001a20b0["0x8001a20b0..0x8001a20bc\n(3 insns)"]
    B_8001a1590 -- "taken" --> B_8001a1c10
    B_8001a1590 -- "fallthrough" --> B_8001a15c8
    B_8001a15c8 -- "taken" --> B_8001a1bcc
    B_8001a15c8 -- "fallthrough" --> B_8001a15d0
    B_8001a15d0 -- "taken" --> B_8001a1688
    B_8001a15d0 -- "fallthrough" --> B_8001a15e8
    B_8001a15e8 -- "taken" --> B_8001a1c38
    B_8001a15e8 -- "fallthrough" --> B_8001a15f4
    B_8001a15f4 --> B_8001a15f8
    B_8001a15f8 -- "taken" --> B_8001a1c48
    B_8001a15f8 -- "fallthrough" --> B_8001a1624
    B_8001a1624 -- "taken" --> B_8001a1c7c
    B_8001a1624 -- "fallthrough" --> B_8001a1630
    B_8001a1630 -- "taken" --> B_8001a1a80
    B_8001a1630 -- "fallthrough" --> B_8001a164c
    B_8001a164c -- "taken" --> B_8001a1a80
    B_8001a164c -- "fallthrough" --> B_8001a1658
    B_8001a1658 --> B_8001a165c
    B_8001a165c -- "taken" --> B_8001a1a8c
    B_8001a165c -- "fallthrough" --> B_8001a1660
    B_8001a1660 -- "taken" --> B_8001a18b0
    B_8001a1660 -- "fallthrough" --> B_8001a1664
    B_8001a1664 --> EXIT_8001a1664["return"]
    B_8001a1688 -- "taken" --> B_8001a1710
    B_8001a1688 -- "fallthrough" --> B_8001a1698
    B_8001a1698 -- "taken" --> B_8001a1d44
    B_8001a1698 -- "fallthrough" --> B_8001a16c4
    B_8001a16c4 -- "taken" --> B_8001a1b94
    B_8001a16c4 -- "fallthrough" --> B_8001a16cc
    B_8001a16cc --> B_8001a16d0
    B_8001a16d0 -- "taken" --> B_8001a1a4c
    B_8001a16d0 -- "fallthrough" --> B_8001a16dc
    B_8001a16dc -- "taken" --> B_8001a1d0c
    B_8001a16dc -- "fallthrough" --> B_8001a16f8
    B_8001a16f8 -- "taken" --> B_8001a1d0c
    B_8001a16f8 -- "fallthrough" --> B_8001a1704
    B_8001a1704 -- "taken" --> B_8001a1664
    B_8001a1704 -- "fallthrough" --> B_8001a170c
    B_8001a170c --> B_8001a18b0
    B_8001a1710 -- "taken" --> B_8001a18c4
    B_8001a1710 -- "fallthrough" --> B_8001a1720
    B_8001a1720 -- "taken" --> B_8001a1d84
    B_8001a1720 -- "fallthrough" --> B_8001a1744
    B_8001a1744 -- "taken" --> B_8001a1d44
    B_8001a1744 -- "fallthrough" --> B_8001a1754
    B_8001a1754 -- "taken" --> B_8001a18bc
    B_8001a1754 -- "fallthrough" --> B_8001a175c
    B_8001a175c --> B_8001a1768
    B_8001a1768 -- "taken" --> B_8001a1ba4
    B_8001a1768 -- "fallthrough" --> B_8001a1774
    B_8001a1774 -- "taken" --> B_8001a1924
    B_8001a1774 -- "fallthrough" --> B_8001a1798
    B_8001a1798 -- "taken" --> B_8001a1e88
    B_8001a1798 -- "fallthrough" --> B_8001a17a0
    B_8001a17a0 -- "taken" --> B_8001a1da0
    B_8001a17a0 -- "fallthrough" --> B_8001a17a8
    B_8001a17a8 --> B_8001a17ac
    B_8001a17ac -. "loop back" .-> B_8001a18f0
    B_8001a17ac -- "fallthrough" --> B_8001a17b8
    B_8001a17b8 -- "taken" --> B_8001a17e4
    B_8001a17b8 -- "fallthrough" --> B_8001a17dc
    B_8001a17dc --> B_8001a17e4
    B_8001a17e4 -- "taken" --> B_8001a17f0
    B_8001a17e4 -- "fallthrough" --> B_8001a17e8
    B_8001a17e8 --> B_8001a17f0
    B_8001a17f0 -- "taken" --> B_8001a1df0
    B_8001a17f0 -- "fallthrough" --> B_8001a181c
    B_8001a181c -- "taken" --> B_8001a1830
    B_8001a181c -- "fallthrough" --> B_8001a182c
    B_8001a182c --> B_8001a1830
    B_8001a1830 -- "taken" --> B_8001a1b70
    B_8001a1830 -- "fallthrough" --> B_8001a1844
    B_8001a1844 --> B_8001a184c
    B_8001a184c -- "taken" --> B_8001a1908
    B_8001a184c -- "fallthrough" --> B_8001a1870
    B_8001a1870 -- "taken" --> B_8001a1888
    B_8001a1870 -- "fallthrough" --> B_8001a1884
    B_8001a1884 --> B_8001a1888
    B_8001a1888 --> B_8001a1894
    B_8001a1894 --> B_8001a18ac
    B_8001a18ac -- "taken" --> B_8001a1664
    B_8001a18ac -- "fallthrough" --> B_8001a18b0
    B_8001a18b0 --> B_8001a1664
    B_8001a18bc --> B_8001a1768
    B_8001a18c4 -- "case" --> B_8001a18f0
    B_8001a18f0 -- "taken" --> B_8001a17ac
    B_8001a18f0 -- "fallthrough" --> B_8001a1904
    B_8001a1904 --> B_8001a1e88
    B_8001a1908 -- "taken" --> B_8001a1884
    B_8001a1908 -- "fallthrough" --> B_8001a1920
    B_8001a1920 --> B_8001a1888
    B_8001a1924 -- "taken" --> B_8001a1e88
    B_8001a1924 -- "fallthrough" --> B_8001a192c
    B_8001a192c -- "taken" --> B_8001a1ec0
    B_8001a192c -- "fallthrough" --> B_8001a193c
    B_8001a193c --> B_8001a1940
    B_8001a1940 -- "taken" --> B_8001a1e74
    B_8001a1940 -- "fallthrough" --> B_8001a194c
    B_8001a194c -- "taken" --> B_8001a1e74
    B_8001a194c -- "fallthrough" --> B_8001a1970
    B_8001a1970 -- "taken" --> B_8001a1f30
    B_8001a1970 -- "fallthrough" --> B_8001a19a4
    B_8001a19a4 -- "taken" --> B_8001a19bc
    B_8001a19a4 -- "fallthrough" --> B_8001a19b0
    B_8001a19b0 --> B_8001a19bc
    B_8001a19bc -- "taken" --> B_8001a19d8
    B_8001a19bc -- "fallthrough" --> B_8001a19d0
    B_8001a19d0 --> B_8001a19d8
    B_8001a19d8 -- "taken" --> B_8001a19e8
    B_8001a19d8 -- "fallthrough" --> B_8001a19e0
    B_8001a19e0 --> B_8001a19e8
    B_8001a19e8 --> B_8001a19f8
    B_8001a19f8 -- "taken" --> B_8001a1f50
    B_8001a19f8 -- "fallthrough" --> B_8001a1a14
    B_8001a1a14 -- "taken" --> B_8001a1a28
    B_8001a1a14 -- "fallthrough" --> B_8001a1a24
    B_8001a1a24 --> B_8001a1a28
    B_8001a1a28 -- "taken" --> B_8001a1bfc
    B_8001a1a28 -- "fallthrough" --> B_8001a1a3c
    B_8001a1a3c --> B_8001a184c
    B_8001a1a4c -- "taken" --> B_8001a1ea0
    B_8001a1a4c -- "fallthrough" --> B_8001a1a60
    B_8001a1a60 -- "taken" --> B_8001a1ea0
    B_8001a1a60 -- "fallthrough" --> B_8001a1a74
    B_8001a1a74 -- "taken" --> B_8001a1664
    B_8001a1a74 -- "fallthrough" --> B_8001a1a7c
    B_8001a1a7c --> B_8001a18b0
    B_8001a1a80 -- "taken" --> B_8001a1a8c
    B_8001a1a80 -- "fallthrough" --> B_8001a1a84
    B_8001a1a84 -- "taken" --> B_8001a1ce0
    B_8001a1a84 -- "fallthrough" --> B_8001a1a8c
    B_8001a1a8c -- "taken" --> B_8001a1660
    B_8001a1a8c -- "fallthrough" --> B_8001a1a98
    B_8001a1a98 -- "taken" --> B_8001a1660
    B_8001a1a98 -- "fallthrough" --> B_8001a1aa0
    B_8001a1aa0 -- "taken" --> B_8001a1abc
    B_8001a1aa0 -- "fallthrough" --> B_8001a1ab8
    B_8001a1ab8 -- "taken" --> B_8001a1ad0
    B_8001a1ab8 -- "fallthrough" --> B_8001a1abc
    B_8001a1abc --> B_8001a1ad0
    B_8001a1ad0 -- "taken" --> B_8001a1fd4
    B_8001a1ad0 -- "fallthrough" --> B_8001a1afc
    B_8001a1afc --> B_8001a1b00
    B_8001a1b00 -- "taken" --> B_8001a2020
    B_8001a1b00 -- "fallthrough" --> B_8001a1b08
    B_8001a1b08 --> B_8001a1b10
    B_8001a1b10 -- "taken" --> B_8001a1b80
    B_8001a1b10 -- "fallthrough" --> B_8001a1b30
    B_8001a1b30 -- "taken" --> B_8001a1660
    B_8001a1b30 -- "fallthrough" --> B_8001a1b64
    B_8001a1b64 --> B_8001a1660
    B_8001a1b70 -- "taken" --> B_8001a1894
    B_8001a1b70 -- "fallthrough" --> B_8001a1b78
    B_8001a1b78 --> B_8001a1894
    B_8001a1b80 -. "loop back" .-> B_8001a1b80
    B_8001a1b80 -- "fallthrough" --> B_8001a1b8c
    B_8001a1b8c --> B_8001a1b30
    B_8001a1b94 --> B_8001a16d0
    B_8001a1ba4 -- "taken" --> B_8001a20b0
    B_8001a1ba4 -- "fallthrough" --> B_8001a1bbc
    B_8001a1bbc --> B_8001a1bc0
    B_8001a1bc0 -- "taken" --> B_8001a1894
    B_8001a1bc0 -- "fallthrough" --> B_8001a1bc8
    B_8001a1bc8 --> B_8001a1e8c
    B_8001a1bcc -- "taken" --> B_8001a15d0
    B_8001a1bcc -- "fallthrough" --> B_8001a1bf8
    B_8001a1bf8 --> B_8001a1d70
    B_8001a1bfc -- "taken" --> B_8001a1894
    B_8001a1bfc -- "fallthrough" --> B_8001a1c04
    B_8001a1c04 --> B_8001a1894
    B_8001a1c10 --> EXIT_8001a1c10["return"]
    B_8001a1c38 --> B_8001a15f8
    B_8001a1c48 -- "taken" --> B_8001a1c74
    B_8001a1c48 -- "fallthrough" --> B_8001a1c4c
    B_8001a1c4c -- "taken" --> B_8001a1c74
    B_8001a1c4c -- "fallthrough" --> B_8001a1c54
    B_8001a1c54 --> B_8001a1c74
    B_8001a1c74 --> B_8001a1660
    B_8001a1c7c -- "taken" --> B_8001a1ca8
    B_8001a1c7c -- "fallthrough" --> B_8001a1c94
    B_8001a1c94 -- "taken" --> B_8001a1d78
    B_8001a1c94 -- "fallthrough" --> B_8001a1ca8
    B_8001a1ca8 -- "taken" --> B_8001a1a8c
    B_8001a1ca8 -- "fallthrough" --> B_8001a1cb0
    B_8001a1cb0 -- "taken" --> B_8001a1a8c
    B_8001a1cb0 -- "fallthrough" --> B_8001a1cb8
    B_8001a1cb8 --> B_8001a1a8c
    B_8001a1ce0 --> B_8001a1a8c
    B_8001a1d0c -- "taken" --> B_8001a1d38
    B_8001a1d0c -- "fallthrough" --> B_8001a1d10
    B_8001a1d10 -- "taken" --> B_8001a1d38
    B_8001a1d10 -- "fallthrough" --> B_8001a1d18
    B_8001a1d18 --> B_8001a1d28
    B_8001a1d28 --> B_8001a1d38
    B_8001a1d38 -- "taken" --> B_8001a1664
    B_8001a1d38 -- "fallthrough" --> B_8001a1d40
    B_8001a1d40 --> B_8001a18b0
    B_8001a1d44 -- "taken" --> B_8001a1d70
    B_8001a1d44 -- "fallthrough" --> B_8001a1d48
    B_8001a1d48 -- "taken" --> B_8001a1d70
    B_8001a1d48 -- "fallthrough" --> B_8001a1d50
    B_8001a1d50 --> B_8001a1d5c
    B_8001a1d5c --> B_8001a1d70
    B_8001a1d70 --> B_8001a1664
    B_8001a1d78 --> B_8001a165c
    B_8001a1d84 -- "taken" --> B_8001a1d70
    B_8001a1d84 -- "fallthrough" --> B_8001a1d88
    B_8001a1d88 -- "taken" --> B_8001a1d70
    B_8001a1d88 -- "fallthrough" --> B_8001a1d90
    B_8001a1d90 --> B_8001a1d5c
    B_8001a1da0 -- "taken" --> B_8001a1e00
    B_8001a1da0 -- "fallthrough" --> B_8001a1dac
    B_8001a1dac --> B_8001a1db0
    B_8001a1db0 -- "taken" --> B_8001a1dd0
    B_8001a1db0 -- "fallthrough" --> B_8001a1dbc
    B_8001a1dbc -- "taken" --> B_8001a1dcc
    B_8001a1dbc -- "fallthrough" --> B_8001a1dc0
    B_8001a1dc0 -- "taken" --> B_8001a1dd0
    B_8001a1dc0 -- "fallthrough" --> B_8001a1dcc
    B_8001a1dcc --> B_8001a1dd0
    B_8001a1dd0 -. "loop back" .-> B_8001a1db0
    B_8001a1dd0 -- "fallthrough" --> B_8001a1de4
    B_8001a1de4 -- "taken" --> B_8001a1e8c
    B_8001a1de4 -- "fallthrough" --> B_8001a1de8
    B_8001a1de8 --> B_8001a17b8
    B_8001a1df0 --> B_8001a1830
    B_8001a1e00 -- "taken" --> B_8001a1e44
    B_8001a1e00 -- "fallthrough" --> B_8001a1e08
    B_8001a1e08 --> B_8001a1e0c
    B_8001a1e0c -- "taken" --> B_8001a1e2c
    B_8001a1e0c -- "fallthrough" --> B_8001a1e18
    B_8001a1e18 -- "taken" --> B_8001a1e28
    B_8001a1e18 -- "fallthrough" --> B_8001a1e1c
    B_8001a1e1c -- "taken" --> B_8001a1e2c
    B_8001a1e1c -- "fallthrough" --> B_8001a1e28
    B_8001a1e28 --> B_8001a1e2c
    B_8001a1e2c -. "loop back" .-> B_8001a1e0c
    B_8001a1e2c -- "fallthrough" --> B_8001a1e40
    B_8001a1e40 --> B_8001a1de4
    B_8001a1e44 --> B_8001a1e48
    B_8001a1e48 -. "loop back" .-> B_8001a1e48
    B_8001a1e48 -- "fallthrough" --> B_8001a1e70
    B_8001a1e70 --> B_8001a1de4
    B_8001a1e74 -. "loop back" .-> B_8001a1940
    B_8001a1e74 -- "fallthrough" --> B_8001a1e88
    B_8001a1e88 --> B_8001a1e8c
    B_8001a1e8c -- "taken" --> B_8001a1e98
    B_8001a1e8c -- "fallthrough" --> B_8001a1e90
    B_8001a1e90 -- "taken" --> B_8001a2088
    B_8001a1e90 -- "fallthrough" --> B_8001a1e98
    B_8001a1e98 --> B_8001a18ac
    B_8001a1ea0 -- "taken" --> B_8001a1d38
    B_8001a1ea0 -- "fallthrough" --> B_8001a1ea4
    B_8001a1ea4 -- "taken" --> B_8001a1d38
    B_8001a1ea4 -- "fallthrough" --> B_8001a1eac
    B_8001a1eac --> B_8001a1d28
    B_8001a1ec0 -- "taken" --> B_8001a1f68
    B_8001a1ec0 -- "fallthrough" --> B_8001a1ecc
    B_8001a1ecc --> B_8001a1ed0
    B_8001a1ed0 -- "taken" --> B_8001a1ef4
    B_8001a1ed0 -- "fallthrough" --> B_8001a1edc
    B_8001a1edc -. "loop back" .-> B_8001a1ed0
    B_8001a1edc -- "fallthrough" --> B_8001a1ef0
    B_8001a1ef0 --> B_8001a2078
    B_8001a1ef4 -- "taken" --> B_8001a1edc
    B_8001a1ef4 -- "fallthrough" --> B_8001a1f18
    B_8001a1f18 -- "taken" --> B_8001a1f28
    B_8001a1f18 -- "fallthrough" --> B_8001a1f1c
    B_8001a1f1c -- "taken" --> B_8001a1edc
    B_8001a1f1c -- "fallthrough" --> B_8001a1f28
    B_8001a1f28 --> B_8001a1edc
    B_8001a1f30 --> B_8001a19f8
    B_8001a1f50 --> B_8001a1a28
    B_8001a1f68 -- "taken" --> B_8001a2028
    B_8001a1f68 -- "fallthrough" --> B_8001a1f70
    B_8001a1f70 --> B_8001a1f74
    B_8001a1f74 -- "taken" --> B_8001a1f98
    B_8001a1f74 -- "fallthrough" --> B_8001a1f80
    B_8001a1f80 -. "loop back" .-> B_8001a1f74
    B_8001a1f80 -- "fallthrough" --> B_8001a1f94
    B_8001a1f94 --> B_8001a2078
    B_8001a1f98 -- "taken" --> B_8001a1f80
    B_8001a1f98 -- "fallthrough" --> B_8001a1fbc
    B_8001a1fbc -- "taken" --> B_8001a1fcc
    B_8001a1fbc -- "fallthrough" --> B_8001a1fc0
    B_8001a1fc0 -- "taken" --> B_8001a1f80
    B_8001a1fc0 -- "fallthrough" --> B_8001a1fcc
    B_8001a1fcc --> B_8001a1f80
    B_8001a1fd4 -- "taken" --> B_8001a1c74
    B_8001a1fd4 -- "fallthrough" --> B_8001a1fdc
    B_8001a1fdc -- "taken" --> B_8001a1c74
    B_8001a1fdc -- "fallthrough" --> B_8001a1ff8
    B_8001a1ff8 -- "taken" --> B_8001a1660
    B_8001a1ff8 -- "fallthrough" --> B_8001a201c
    B_8001a201c --> B_8001a1b00
    B_8001a2020 --> B_8001a1b10
    B_8001a2028 --> B_8001a202c
    B_8001a202c -- "taken" --> B_8001a2064
    B_8001a202c -- "fallthrough" --> B_8001a2038
    B_8001a2038 --> B_8001a2064
    B_8001a2064 -. "loop back" .-> B_8001a202c
    B_8001a2064 -- "fallthrough" --> B_8001a2078
    B_8001a2078 -- "taken" --> B_8001a1e8c
    B_8001a2078 -- "fallthrough" --> B_8001a207c
    B_8001a207c --> B_8001a1970
    B_8001a2088 --> B_8001a1e98
    B_8001a20b0 --> B_8001a1bc0
    %% Path Highlighting
    style B_8001a1590 fill:#e8f5e9,stroke:#2e7d32,stroke-width:3px,color:#1b5e20
    style B_8001a15c8 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001a15d0 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001a1664 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001a1688 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001a1710 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001a17ac fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001a17b8 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001a17dc fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001a17e4 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001a17e8 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001a17f0 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001a181c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001a182c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001a1830 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001a1844 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001a184c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001a1884 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001a1888 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001a1894 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001a18ac fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001a18b0 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001a18c4 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001a18f0 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001a1908 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001a1bcc fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001a1c10 fill:#e1f5fe,stroke:#0288d1,stroke-width:2px,color:#01579b
```

## 3. External Callee Classification (8 total: 7 constant-zero, 0 pointer-alloc, 0 memory-copy, 1 branch-sensitive)

| External Symbol | Classification | Args Read | Longest-Path Return (`X0`) | Alt-Branch Return (`X0`) | Post-Call Analysis |
| :--- | :--- | ---: | :--- | :--- | :--- |
| `f_802ba4060` | `CONSTANT_ZERO` | 2 | `0x0` | `0x1` | Return value X0 unread/overwritten -> constant 0 |
| `f_802ba4070` | `CONSTANT_ZERO` | 2 | `0x0` | `0x1` | Return value X0 unread/overwritten -> constant 0 |
| `f_80007a838` | `CONSTANT_ZERO` | 3 | `0x0` | `0x1` | Return value X0 unread/overwritten -> constant 0 |
| `f_80017c9c8` | **BRANCH_SENSITIVE** | 2 | `0x0` | `0x1` | CBNZ on return register x0 at 0x8001a1bc4 |
| `f_802ba3ac0` | `CONSTANT_ZERO` | 2 | `0x0` | `0x1` | Return value X0 unread/overwritten -> constant 0 |
| `f_800099ce0` | `CONSTANT_ZERO` | 2 | `0x0` | `0x1` | Return value X0 unread/overwritten -> constant 0 |
| `f_8027a9c88` | `CONSTANT_ZERO` | 2 | `0x0` | `0x1` | Return value X0 unread/overwritten -> constant 0 |
| `f_80017cbe0` | `CONSTANT_ZERO` | 3 | `0x0` | `0x1` | Return value X0 unread/overwritten -> constant 0 |

## 4. Constraint-Solved Parameters for Maximal Finite & Common Paths

### Function `f_8001a1590` (`0x8001a1590`) — Solver Backend: `OR-Tools CP-SAT MaxSAT (OPTIMAL) + Native BV Solver`

| Parameter / Attribute | Maximal Finite Path (`path_mode = 0`) | Common Path (`path_mode = 1`) |
| :--- | :--- | :--- |
| **Static ARM64 Instructions** | **393 insns** (26 basic blocks) | **49 insns** (8 basic blocks) |
| **Path Predicates Solved** | 17 branch/switch constraints | 6 branch/switch constraints |
| **`g_stub_branch_policy`** | `0x0` | `0x1` |
| **Entry Register `X0`** | `fbase + 0x1000` | `fbase + 0x1000` |
| **Entry Register `X1`** | `fbase + 0x2000` | `fbase + 0x2000` |
| **Entry Register `X2`** | `0x0 (0)` | ``0x0`` |
| **Stub Return `f_80007a838` (`X0`)** | `0x0` | `0x0` |
| **Stub Return `f_800099ce0` (`X0`)** | `0x0` | `0x0` |
| **Stub Return `f_80017c9c8` (`X0`)** | `0x0 (policy bit #0=0)` | `0x1 (policy bit #0=1)` |
| **Stub Return `f_80017cbe0` (`X0`)** | `0x0` | `0x0` |
| **Stub Return `f_8027a9c88` (`X0`)** | `0x0` | `0x0` |
| **Stub Return `f_802ba3ac0` (`X0`)** | `0x0` | `0x0` |
| **Stub Return `f_802ba4060` (`X0`)** | `0x0` | `0x0` |
| **Stub Return `f_802ba4070` (`X0`)** | `0x0` | `0x0` |

#### Extracted Maximal-Path Predicate Constraints:

- `0x8001a15c4: MEM[MEM[GLOBAL+0x80394ba80]+0x0] != NULL (valid 64-bit pointer)`
- `0x8001a15cc: X1 eq 0`
- `0x8001a1bf4: MEM[OBJ_ANON+0x0] != NULL (valid 64-bit pointer)`
- `0x8001a15e4: MEM[MEM[MEM[OBJ_ANON+0x0]+0x0]+0x30] ne 34366074320`
- `0x8001a1694: MEM[MEM[MEM[OBJ_ANON+0x0]+0x0]+0x30] ne 34361896524`
- `0x8001a171c: MEM[MEM[MEM[OBJ_ANON+0x0]+0x0]+0x30] ne 34361295696`
- `0x8001a1900: MEM[X10+0x80017c358] ne X11`
- `0x8001a17b4: MEM[MEM[X10+0x80017c358]+0x18] hs X23`
- `0x8001a17d8: MEM[MEM[X19+0xc4]+0x0] != NULL (valid 64-bit pointer)`
- `0x8001a17e4: MEM[MEM[X19+0xc4]+0x8] != NULL (valid 64-bit pointer)`
- `0x8001a1818: MEM[X19+0x80] eq 1`
- `0x8001a1828: MEM[X19+0xc8] != NULL (valid 64-bit pointer)`
- `0x8001a1840: MEM[MEM[X10+0x80017c358]+0x18] hs 33`
- `0x8001a186c: MEM[MEM[X19+0xc4]+0x8] != NULL (valid 64-bit pointer)`
- `0x8001a18ac: X22 ne 0`
