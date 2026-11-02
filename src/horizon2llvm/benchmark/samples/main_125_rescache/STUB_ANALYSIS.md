# Automated Stub & Static CFG Longest-Path Analysis (`main_125_rescache`)

## 1. Function Static CFG & Path Length Summary

| Function | Entry PC | Static ARM64 Insns | Basic Blocks | Loop Back-Edges | Est. Common Path (ARM64 Insns) | Est. Longest Path (ARM64 Insns) |
| :--- | :--- | ---: | ---: | ---: | ---: | ---: |
| `f_8001ef59c` | `0x8001ef59c` | 682 | 142 | 5 | 136 | 670 |

## 2. Function Control Flow Graphs (CFGs)

### Function `f_8001ef59c` (`0x8001ef59c` – 682 insns, 142 blocks)

```mermaid
flowchart TD
    B_8001ef59c["0x8001ef59c..0x8001ef5ec\n(20 insns)"]
    B_8001ef5ec["0x8001ef5ec..0x8001ef608\n(7 insns)"]
    B_8001ef608["0x8001ef608..0x8001ef620\n(6 insns)"]
    B_8001ef620["0x8001ef620..0x8001ef654\n(13 insns)"]
    B_8001ef654["0x8001ef654..0x8001ef668\n(5 insns, loop hdr)"]
    B_8001ef668["0x8001ef668..0x8001ef670\n(2 insns)"]
    B_8001ef670["0x8001ef670..0x8001ef688\n(6 insns, loop hdr)"]
    B_8001ef688["0x8001ef688..0x8001ef68c\n(1 insns)"]
    B_8001ef68c["0x8001ef68c..0x8001ef694\n(2 insns)"]
    B_8001ef694["0x8001ef694..0x8001ef6a4\n(4 insns)"]
    B_8001ef6a4["0x8001ef6a4..0x8001ef6a8\n(1 insns)"]
    B_8001ef6a8["0x8001ef6a8..0x8001ef6b8\n(4 insns)"]
    B_8001ef6b8["0x8001ef6b8..0x8001ef6bc\n(1 insns)"]
    B_8001ef6bc["0x8001ef6bc..0x8001ef6cc\n(4 insns)"]
    B_8001ef6cc["0x8001ef6cc..0x8001ef6d0\n(1 insns)"]
    B_8001ef6d0["0x8001ef6d0..0x8001ef6d8\n(2 insns)"]
    B_8001ef6d8["0x8001ef6d8..0x8001ef6e4\n(3 insns)"]
    B_8001ef6e4["0x8001ef6e4..0x8001ef6e8\n(1 insns)"]
    B_8001ef6e8["0x8001ef6e8..0x8001ef72c\n(17 insns)"]
    B_8001ef72c["0x8001ef72c..0x8001ef748\n(7 insns)"]
    B_8001ef748["0x8001ef748..0x8001ef754\n(3 insns)"]
    B_8001ef754["0x8001ef754..0x8001ef758\n(1 insns)"]
    B_8001ef758["0x8001ef758..0x8001ef764\n(3 insns)"]
    B_8001ef764["0x8001ef764..0x8001ef77c\n(6 insns)"]
    B_8001ef77c["0x8001ef77c..0x8001ef788\n(3 insns)"]
    B_8001ef788["0x8001ef788..0x8001ef79c\n(5 insns)"]
    B_8001ef79c["0x8001ef79c..0x8001ef7a0\n(1 insns)"]
    B_8001ef7a0["0x8001ef7a0..0x8001ef7b0\n(4 insns)"]
    B_8001ef7b0["0x8001ef7b0..0x8001ef7c0\n(4 insns)"]
    B_8001ef7c0["0x8001ef7c0..0x8001ef7d0\n(4 insns)"]
    B_8001ef7d0["0x8001ef7d0..0x8001ef7f4\n(9 insns)"]
    B_8001ef7f4["0x8001ef7f4..0x8001ef7f8\n(1 insns)"]
    B_8001ef7f8["0x8001ef7f8..0x8001ef7fc\n(1 insns)"]
    B_8001ef7fc["0x8001ef7fc..0x8001ef824\n(10 insns)"]
    B_8001ef824["0x8001ef824..0x8001ef82c\n(2 insns)"]
    B_8001ef82c["0x8001ef82c..0x8001ef844\n(6 insns)"]
    B_8001ef844["0x8001ef844..0x8001ef848\n(1 insns)"]
    B_8001ef848["0x8001ef848..0x8001ef85c\n(5 insns)"]
    B_8001ef85c["0x8001ef85c..0x8001ef880\n(9 insns)"]
    B_8001ef880["0x8001ef880..0x8001ef88c\n(3 insns)"]
    B_8001ef88c["0x8001ef88c..0x8001ef894\n(2 insns)"]
    B_8001ef894["0x8001ef894..0x8001ef8a4\n(4 insns)"]
    B_8001ef8a4["0x8001ef8a4..0x8001ef8a8\n(1 insns)"]
    B_8001ef8a8["0x8001ef8a8..0x8001ef8c4\n(7 insns)"]
    B_8001ef8c4["0x8001ef8c4..0x8001ef8d4\n(4 insns)"]
    B_8001ef8d4["0x8001ef8d4..0x8001ef8d8\n(1 insns)"]
    B_8001ef8d8["0x8001ef8d8..0x8001ef8f4\n(7 insns)"]
    B_8001ef8f4["0x8001ef8f4..0x8001ef904\n(4 insns)"]
    B_8001ef904["0x8001ef904..0x8001ef908\n(1 insns)"]
    B_8001ef908["0x8001ef908..0x8001ef924\n(7 insns)"]
    B_8001ef924["0x8001ef924..0x8001ef934\n(4 insns)"]
    B_8001ef934["0x8001ef934..0x8001ef938\n(1 insns)"]
    B_8001ef938["0x8001ef938..0x8001ef954\n(7 insns)"]
    B_8001ef954["0x8001ef954..0x8001ef964\n(4 insns)"]
    B_8001ef964["0x8001ef964..0x8001ef968\n(1 insns)"]
    B_8001ef968["0x8001ef968..0x8001ef984\n(7 insns)"]
    B_8001ef984["0x8001ef984..0x8001ef998\n(5 insns)"]
    B_8001ef998["0x8001ef998..0x8001ef9a8\n(4 insns)"]
    B_8001ef9a8["0x8001ef9a8..0x8001ef9d4\n(11 insns)"]
    B_8001ef9d4["0x8001ef9d4..0x8001ef9dc\n(2 insns)"]
    B_8001ef9dc["0x8001ef9dc..0x8001ef9e4\n(2 insns)"]
    B_8001ef9e4["0x8001ef9e4..0x8001ef9ec\n(2 insns)"]
    B_8001ef9ec["0x8001ef9ec..0x8001ef9f4\n(2 insns)"]
    B_8001ef9f4["0x8001ef9f4..0x8001efa10\n(7 insns)"]
    B_8001efa10["0x8001efa10..0x8001efa18\n(2 insns)"]
    B_8001efa18["0x8001efa18..0x8001efa44\n(11 insns)"]
    B_8001efa44["0x8001efa44..0x8001efa58\n(5 insns)"]
    B_8001efa58["0x8001efa58..0x8001efa84\n(11 insns)"]
    B_8001efa84["0x8001efa84..0x8001efaa4\n(8 insns)"]
    B_8001efaa4["0x8001efaa4..0x8001efab4\n(4 insns)"]
    B_8001efab4["0x8001efab4..0x8001efac0\n(3 insns)"]
    B_8001efac0["0x8001efac0..0x8001efac8\n(2 insns)"]
    B_8001efac8["0x8001efac8..0x8001efae4\n(7 insns)"]
    B_8001efae4["0x8001efae4..0x8001efb08\n(9 insns)"]
    B_8001efb08["0x8001efb08..0x8001efb10\n(2 insns, loop hdr)"]
    B_8001efb10["0x8001efb10..0x8001efb28\n(6 insns)"]
    B_8001efb28["0x8001efb28..0x8001efb30\n(2 insns)"]
    B_8001efb30["0x8001efb30..0x8001efb3c\n(3 insns)"]
    B_8001efb3c["0x8001efb3c..0x8001efb44\n(2 insns)"]
    B_8001efb44["0x8001efb44..0x8001efb4c\n(2 insns)"]
    B_8001efb4c["0x8001efb4c..0x8001efb5c\n(4 insns)"]
    B_8001efb5c["0x8001efb5c..0x8001efb68\n(3 insns)"]
    B_8001efb68["0x8001efb68..0x8001efb74\n(3 insns)"]
    B_8001efb74["0x8001efb74..0x8001efb7c\n(2 insns)"]
    B_8001efb7c["0x8001efb7c..0x8001efb88\n(3 insns)"]
    B_8001efb88["0x8001efb88..0x8001efba8\n(8 insns)"]
    B_8001efba8["0x8001efba8..0x8001efbc4\n(7 insns)"]
    B_8001efbc4["0x8001efbc4..0x8001efbd0\n(3 insns)"]
    B_8001efbd0["0x8001efbd0..0x8001efbe8\n(6 insns, switch)"]
    B_8001efbe8["0x8001efbe8..0x8001efbf8\n(4 insns)"]
    B_8001efbf8["0x8001efbf8..0x8001efc00\n(2 insns)"]
    B_8001efc00["0x8001efc00..0x8001efc08\n(2 insns)"]
    B_8001efc08["0x8001efc08..0x8001efc20\n(6 insns)"]
    B_8001efc20["0x8001efc20..0x8001efc30\n(4 insns)"]
    B_8001efc30["0x8001efc30..0x8001efc40\n(4 insns, loop hdr)"]
    B_8001efc40["0x8001efc40..0x8001efc48\n(2 insns)"]
    B_8001efc48["0x8001efc48..0x8001efc54\n(3 insns)"]
    B_8001efc54["0x8001efc54..0x8001efc60\n(3 insns)"]
    B_8001efc60["0x8001efc60..0x8001efc6c\n(3 insns)"]
    B_8001efc6c["0x8001efc6c..0x8001efc74\n(2 insns)"]
    B_8001efc74["0x8001efc74..0x8001efc84\n(4 insns)"]
    B_8001efc84["0x8001efc84..0x8001efca4\n(8 insns)"]
    B_8001efca4["0x8001efca4..0x8001efcb4\n(4 insns)"]
    B_8001efcb4["0x8001efcb4..0x8001efcb8\n(1 insns)"]
    B_8001efcb8["0x8001efcb8..0x8001efcc8\n(4 insns)"]
    B_8001efcc8["0x8001efcc8..0x8001efcdc\n(5 insns)"]
    B_8001efcdc["0x8001efcdc..0x8001efd00\n(9 insns)"]
    B_8001efd00["0x8001efd00..0x8001efd48\n(18 insns)"]
    B_8001efd48["0x8001efd48..0x8001efd64\n(7 insns)"]
    B_8001efd64["0x8001efd64..0x8001efda0\n(15 insns)"]
    B_8001efda0["0x8001efda0..0x8001efda8\n(2 insns)"]
    B_8001efda8["0x8001efda8..0x8001efdb4\n(3 insns)"]
    B_8001efdb4["0x8001efdb4..0x8001efe00\n(19 insns)"]
    B_8001efe00["0x8001efe00..0x8001efe10\n(4 insns)"]
    B_8001efe10["0x8001efe10..0x8001efe38\n(10 insns)"]
    B_8001efe38["0x8001efe38..0x8001efe48\n(4 insns)"]
    B_8001efe48["0x8001efe48..0x8001efe70\n(10 insns)"]
    B_8001efe70["0x8001efe70..0x8001efe80\n(4 insns)"]
    B_8001efe80["0x8001efe80..0x8001efea8\n(10 insns)"]
    B_8001efea8["0x8001efea8..0x8001efeb8\n(4 insns)"]
    B_8001efeb8["0x8001efeb8..0x8001efee0\n(10 insns)"]
    B_8001efee0["0x8001efee0..0x8001efef0\n(4 insns)"]
    B_8001efef0["0x8001efef0..0x8001eff18\n(10 insns)"]
    B_8001eff18["0x8001eff18..0x8001eff20\n(2 insns)"]
    B_8001eff20["0x8001eff20..0x8001eff44\n(9 insns)"]
    B_8001eff44["0x8001eff44..0x8001eff4c\n(2 insns)"]
    B_8001eff4c["0x8001eff4c..0x8001eff54\n(2 insns)"]
    B_8001eff54["0x8001eff54..0x8001eff94\n(16 insns)"]
    B_8001eff94["0x8001eff94..0x8001eff98\n(1 insns)"]
    B_8001eff98["0x8001eff98..0x8001effa0\n(2 insns)"]
    B_8001effa0["0x8001effa0..0x8001effa8\n(2 insns)"]
    B_8001effa8["0x8001effa8..0x8001effb4\n(3 insns)"]
    B_8001effb4["0x8001effb4..0x8001effd4\n(8 insns)"]
    B_8001effd4["0x8001effd4..0x8001effe0\n(3 insns)"]
    B_8001effe0["0x8001effe0..0x8001efff0\n(4 insns, loop hdr)"]
    B_8001efff0["0x8001efff0..0x8001efff4\n(1 insns)"]
    B_8001efff4["0x8001efff4..0x8001efffc\n(2 insns)"]
    B_8001efffc["0x8001efffc..0x8001f0008\n(3 insns)"]
    B_8001f0008["0x8001f0008..0x8001f000c\n(1 insns)"]
    B_8001f000c["0x8001f000c..0x8001f0024\n(6 insns)"]
    B_8001f0024["0x8001f0024..0x8001f0038\n(5 insns)"]
    B_8001f0038["0x8001f0038..0x8001f0044\n(3 insns)"]
    B_8001ef59c -- "taken" --> B_8001efca4
    B_8001ef59c -- "fallthrough" --> B_8001ef5ec
    B_8001ef5ec --> B_8001ef608
    B_8001ef608 -- "taken" --> B_8001ef6e4
    B_8001ef608 -- "fallthrough" --> B_8001ef620
    B_8001ef620 --> B_8001ef654
    B_8001ef654 -- "taken" --> B_8001ef72c
    B_8001ef654 -- "fallthrough" --> B_8001ef668
    B_8001ef668 --> B_8001ef670
    B_8001ef670 -- "taken" --> B_8001ef6d8
    B_8001ef670 -- "fallthrough" --> B_8001ef688
    B_8001ef688 -- "taken" --> B_8001ef72c
    B_8001ef688 -- "fallthrough" --> B_8001ef68c
    B_8001ef68c -- "taken" --> B_8001ef6d8
    B_8001ef68c -- "fallthrough" --> B_8001ef694
    B_8001ef694 -- "taken" --> B_8001ef6d8
    B_8001ef694 -- "fallthrough" --> B_8001ef6a4
    B_8001ef6a4 -- "taken" --> B_8001ef72c
    B_8001ef6a4 -- "fallthrough" --> B_8001ef6a8
    B_8001ef6a8 -- "taken" --> B_8001ef6d8
    B_8001ef6a8 -- "fallthrough" --> B_8001ef6b8
    B_8001ef6b8 -- "taken" --> B_8001ef72c
    B_8001ef6b8 -- "fallthrough" --> B_8001ef6bc
    B_8001ef6bc -- "taken" --> B_8001ef6d8
    B_8001ef6bc -- "fallthrough" --> B_8001ef6cc
    B_8001ef6cc -- "taken" --> B_8001ef72c
    B_8001ef6cc -- "fallthrough" --> B_8001ef6d0
    B_8001ef6d0 -. "loop back" .-> B_8001ef670
    B_8001ef6d8 -. "loop back" .-> B_8001ef654
    B_8001ef6d8 -- "fallthrough" --> B_8001ef6e4
    B_8001ef6e4 -- "taken" --> B_8001efcb4
    B_8001ef6e4 -- "fallthrough" --> B_8001ef6e8
    B_8001ef6e8 --> B_8001efcb8
    B_8001ef72c -- "taken" --> B_8001ef758
    B_8001ef72c -- "fallthrough" --> B_8001ef748
    B_8001ef748 -- "taken" --> B_8001ef880
    B_8001ef748 -- "fallthrough" --> B_8001ef754
    B_8001ef754 --> B_8001ef758
    B_8001ef758 -- "taken" --> B_8001ef984
    B_8001ef758 -- "fallthrough" --> B_8001ef764
    B_8001ef764 -- "taken" --> B_8001efb7c
    B_8001ef764 -- "fallthrough" --> B_8001ef77c
    B_8001ef77c --> B_8001ef788
    B_8001ef788 -- "taken" --> B_8001efc74
    B_8001ef788 -- "fallthrough" --> B_8001ef79c
    B_8001ef79c -- "taken" --> B_8001efcdc
    B_8001ef79c -- "fallthrough" --> B_8001ef7a0
    B_8001ef7a0 -- "taken" --> B_8001efd00
    B_8001ef7a0 -- "fallthrough" --> B_8001ef7b0
    B_8001ef7b0 -- "taken" --> B_8001efd48
    B_8001ef7b0 -- "fallthrough" --> B_8001ef7c0
    B_8001ef7c0 -- "taken" --> B_8001efda8
    B_8001ef7c0 -- "fallthrough" --> B_8001ef7d0
    B_8001ef7d0 --> B_8001ef7f4
    B_8001ef7f4 -- "taken" --> B_8001efb88
    B_8001ef7f4 -- "fallthrough" --> B_8001ef7f8
    B_8001ef7f8 --> B_8001ef7fc
    B_8001ef7fc --> B_8001ef824
    B_8001ef824 -- "taken" --> B_8001ef848
    B_8001ef824 -- "fallthrough" --> B_8001ef82c
    B_8001ef82c -- "taken" --> B_8001efb74
    B_8001ef82c -- "fallthrough" --> B_8001ef844
    B_8001ef844 --> B_8001ef848
    B_8001ef848 -- "taken" --> B_8001ef9e4
    B_8001ef848 -- "fallthrough" --> B_8001ef85c
    B_8001ef85c --> EXIT_8001ef85c["return"]
    B_8001ef880 -- "taken" --> B_8001efdb4
    B_8001ef880 -- "fallthrough" --> B_8001ef88c
    B_8001ef88c --> B_8001ef894
    B_8001ef894 -- "taken" --> B_8001efe00
    B_8001ef894 -- "fallthrough" --> B_8001ef8a4
    B_8001ef8a4 -- "taken" --> B_8001ef8c4
    B_8001ef8a4 -- "fallthrough" --> B_8001ef8a8
    B_8001ef8a8 -- "taken" --> B_8001ef984
    B_8001ef8a8 -- "fallthrough" --> B_8001ef8c4
    B_8001ef8c4 -- "taken" --> B_8001efe38
    B_8001ef8c4 -- "fallthrough" --> B_8001ef8d4
    B_8001ef8d4 -- "taken" --> B_8001ef8f4
    B_8001ef8d4 -- "fallthrough" --> B_8001ef8d8
    B_8001ef8d8 -- "taken" --> B_8001ef984
    B_8001ef8d8 -- "fallthrough" --> B_8001ef8f4
    B_8001ef8f4 -- "taken" --> B_8001efe70
    B_8001ef8f4 -- "fallthrough" --> B_8001ef904
    B_8001ef904 -- "taken" --> B_8001ef924
    B_8001ef904 -- "fallthrough" --> B_8001ef908
    B_8001ef908 -- "taken" --> B_8001ef984
    B_8001ef908 -- "fallthrough" --> B_8001ef924
    B_8001ef924 -- "taken" --> B_8001efea8
    B_8001ef924 -- "fallthrough" --> B_8001ef934
    B_8001ef934 -- "taken" --> B_8001ef954
    B_8001ef934 -- "fallthrough" --> B_8001ef938
    B_8001ef938 -- "taken" --> B_8001ef984
    B_8001ef938 -- "fallthrough" --> B_8001ef954
    B_8001ef954 -- "taken" --> B_8001efee0
    B_8001ef954 -- "fallthrough" --> B_8001ef964
    B_8001ef964 -- "taken" --> B_8001ef754
    B_8001ef964 -- "fallthrough" --> B_8001ef968
    B_8001ef968 -- "taken" --> B_8001ef754
    B_8001ef968 -- "fallthrough" --> B_8001ef984
    B_8001ef984 -- "taken" --> B_8001efac0
    B_8001ef984 -- "fallthrough" --> B_8001ef998
    B_8001ef998 --> B_8001ef9a8
    B_8001ef9a8 -- "taken" --> B_8001ef9dc
    B_8001ef9a8 -- "fallthrough" --> B_8001ef9d4
    B_8001ef9d4 --> B_8001ef9dc
    B_8001ef9dc -- "taken" --> B_8001ef85c
    B_8001ef9dc -- "fallthrough" --> B_8001ef9e4
    B_8001ef9e4 -- "taken" --> B_8001efc08
    B_8001ef9e4 -- "fallthrough" --> B_8001ef9ec
    B_8001ef9ec -- "taken" --> B_8001efc08
    B_8001ef9ec -- "fallthrough" --> B_8001ef9f4
    B_8001ef9f4 -- "taken" --> B_8001efa18
    B_8001ef9f4 -- "fallthrough" --> B_8001efa10
    B_8001efa10 --> B_8001efa18
    B_8001efa18 -- "taken" --> B_8001efa58
    B_8001efa18 -- "fallthrough" --> B_8001efa44
    B_8001efa44 --> B_8001efa58
    B_8001efa58 -- "taken" --> B_8001effa0
    B_8001efa58 -- "fallthrough" --> B_8001efa84
    B_8001efa84 -- "taken" --> B_8001effa0
    B_8001efa84 -- "fallthrough" --> B_8001efaa4
    B_8001efaa4 --> B_8001efab4
    B_8001efab4 --> B_8001efb68
    B_8001efac0 --> B_8001efac8
    B_8001efac8 -- "taken" --> B_8001ef788
    B_8001efac8 -- "fallthrough" --> B_8001efae4
    B_8001efae4 -- "taken" --> B_8001eff18
    B_8001efae4 -- "fallthrough" --> B_8001efb08
    B_8001efb08 -- "taken" --> B_8001efb4c
    B_8001efb08 -- "fallthrough" --> B_8001efb10
    B_8001efb10 -- "taken" --> B_8001eff20
    B_8001efb10 -- "fallthrough" --> B_8001efb28
    B_8001efb28 -- "taken" --> B_8001eff44
    B_8001efb28 -- "fallthrough" --> B_8001efb30
    B_8001efb30 -- "taken" --> B_8001eff54
    B_8001efb30 -- "fallthrough" --> B_8001efb3c
    B_8001efb3c --> B_8001efb44
    B_8001efb44 -- "taken" --> B_8001eff98
    B_8001efb44 -- "fallthrough" --> B_8001efb4c
    B_8001efb4c -- "taken" --> B_8001eff98
    B_8001efb4c -- "fallthrough" --> B_8001efb5c
    B_8001efb5c --> B_8001efb68
    B_8001efb68 --> B_8001ef85c
    B_8001efb74 --> B_8001ef848
    B_8001efb7c --> B_8001efac8
    B_8001efb88 -- "taken" --> B_8001efc00
    B_8001efb88 -- "fallthrough" --> B_8001efba8
    B_8001efba8 -- "taken" --> B_8001ef7fc
    B_8001efba8 -- "fallthrough" --> B_8001efbc4
    B_8001efbc4 -- "taken" --> B_8001efc00
    B_8001efbc4 -- "fallthrough" --> B_8001efbd0
    B_8001efbd0 -- "case" --> B_8001efbe8
    B_8001efbd0 -- "case" --> B_8001effa8
    B_8001efbd0 -- "case" --> B_8001effb4
    B_8001efbe8 --> B_8001efbf8
    B_8001efbf8 --> B_8001ef824
    B_8001efc00 --> B_8001ef824
    B_8001efc08 -- "taken" --> B_8001ef85c
    B_8001efc08 -- "fallthrough" --> B_8001efc20
    B_8001efc20 --> B_8001efc30
    B_8001efc30 -- "taken" --> B_8001efffc
    B_8001efc30 -- "fallthrough" --> B_8001efc40
    B_8001efc40 -- "taken" --> B_8001efffc
    B_8001efc40 -- "fallthrough" --> B_8001efc48
    B_8001efc48 -- "taken" --> B_8001effd4
    B_8001efc48 -- "fallthrough" --> B_8001efc54
    B_8001efc54 -- "taken" --> B_8001efc6c
    B_8001efc54 -- "fallthrough" --> B_8001efc60
    B_8001efc60 --> B_8001efc6c
    B_8001efc6c --> B_8001efb68
    B_8001efc74 -- "taken" --> B_8001ef79c
    B_8001efc74 -- "fallthrough" --> B_8001efc84
    B_8001efc84 --> B_8001ef79c
    B_8001efca4 --> B_8001ef608
    B_8001efcb4 --> B_8001efcb8
    B_8001efcb8 -- "taken" --> B_8001f000c
    B_8001efcb8 -- "fallthrough" --> B_8001efcc8
    B_8001efcc8 --> B_8001ef9a8
    B_8001efcdc --> B_8001efd64
    B_8001efd00 --> B_8001efd48
    B_8001efd48 --> B_8001efd64
    B_8001efd64 -- "taken" --> B_8001ef85c
    B_8001efd64 -- "fallthrough" --> B_8001efda0
    B_8001efda0 --> B_8001ef9e4
    B_8001efda8 --> B_8001ef7f4
    B_8001efdb4 --> B_8001ef894
    B_8001efe00 -- "taken" --> B_8001ef8a4
    B_8001efe00 -- "fallthrough" --> B_8001efe10
    B_8001efe10 --> B_8001ef8a4
    B_8001efe38 -- "taken" --> B_8001ef8d4
    B_8001efe38 -- "fallthrough" --> B_8001efe48
    B_8001efe48 --> B_8001ef8d4
    B_8001efe70 -- "taken" --> B_8001ef904
    B_8001efe70 -- "fallthrough" --> B_8001efe80
    B_8001efe80 --> B_8001ef904
    B_8001efea8 -- "taken" --> B_8001ef934
    B_8001efea8 -- "fallthrough" --> B_8001efeb8
    B_8001efeb8 --> B_8001ef934
    B_8001efee0 -- "taken" --> B_8001ef964
    B_8001efee0 -- "fallthrough" --> B_8001efef0
    B_8001efef0 --> B_8001ef964
    B_8001eff18 --> B_8001eff94
    B_8001eff20 -. "loop back" .-> B_8001efb08
    B_8001eff44 -- "taken" --> B_8001eff54
    B_8001eff44 -- "fallthrough" --> B_8001eff4c
    B_8001eff4c --> B_8001efb44
    B_8001eff54 --> B_8001eff94
    B_8001eff94 --> B_8001eff98
    B_8001eff98 --> B_8001efb68
    B_8001effa0 --> B_8001efab4
    B_8001effa8 --> B_8001efbf8
    B_8001effb4 --> B_8001ef824
    B_8001effd4 --> B_8001effe0
    B_8001effe0 -- "taken" --> B_8001efffc
    B_8001effe0 -- "fallthrough" --> B_8001efff0
    B_8001efff0 -- "taken" --> B_8001efc54
    B_8001efff0 -- "fallthrough" --> B_8001efff4
    B_8001efff4 -. "loop back" .-> B_8001effe0
    B_8001efff4 -- "fallthrough" --> B_8001efffc
    B_8001efffc -. "loop back" .-> B_8001efc30
    B_8001efffc -- "fallthrough" --> B_8001f0008
    B_8001f0008 --> B_8001ef85c
    B_8001f000c -- "taken" --> B_8001f0038
    B_8001f000c -- "fallthrough" --> B_8001f0024
    B_8001f0024 --> B_8001f0038
    B_8001f0038 --> B_8001ef9a8
    %% Path Highlighting
    style B_8001ef59c fill:#e8f5e9,stroke:#2e7d32,stroke-width:3px,color:#1b5e20
    style B_8001ef5ec fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001ef608 fill:#e8f5e9,stroke:#2e7d32,stroke-width:3px,color:#1b5e20
    style B_8001ef620 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001ef654 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001ef668 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001ef670 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001ef688 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001ef68c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001ef694 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001ef6a4 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001ef6a8 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001ef6b8 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001ef6bc fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001ef6cc fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001ef6e4 fill:#e1f5fe,stroke:#0288d1,stroke-width:2px,color:#01579b
    style B_8001ef72c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001ef748 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001ef754 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001ef758 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001ef764 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001ef788 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001ef79c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001ef7a0 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001ef7b0 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001ef7c0 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001ef7d0 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001ef7f4 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001ef824 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001ef82c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001ef848 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001ef85c fill:#e8f5e9,stroke:#2e7d32,stroke-width:3px,color:#1b5e20
    style B_8001ef880 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001ef894 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001ef8a4 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001ef8a8 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001ef8c4 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001ef8d4 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001ef8d8 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001ef8f4 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001ef904 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001ef908 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001ef924 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001ef934 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001ef938 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001ef954 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001ef964 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001ef968 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001ef9a8 fill:#e1f5fe,stroke:#0288d1,stroke-width:2px,color:#01579b
    style B_8001ef9dc fill:#e1f5fe,stroke:#0288d1,stroke-width:2px,color:#01579b
    style B_8001ef9e4 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001ef9ec fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001efac8 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001efb68 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001efb74 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001efb7c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001efb88 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001efba8 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001efbc4 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001efbd0 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001efc08 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001efc20 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001efc30 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001efc40 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001efc48 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001efc54 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001efc60 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001efc6c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001efc74 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001efc84 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001efca4 fill:#e1f5fe,stroke:#0288d1,stroke-width:2px,color:#01579b
    style B_8001efcb4 fill:#e1f5fe,stroke:#0288d1,stroke-width:2px,color:#01579b
    style B_8001efcb8 fill:#e1f5fe,stroke:#0288d1,stroke-width:2px,color:#01579b
    style B_8001efdb4 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001efe00 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001efe10 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001efe38 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001efe48 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001efe70 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001efe80 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001efea8 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001efeb8 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001efee0 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001efef0 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001effb4 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001effd4 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001effe0 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001efff0 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8001f000c fill:#e1f5fe,stroke:#0288d1,stroke-width:2px,color:#01579b
    style B_8001f0038 fill:#e1f5fe,stroke:#0288d1,stroke-width:2px,color:#01579b
```

## 3. External Callee Classification (3 total: 2 constant-zero, 0 pointer-alloc, 0 memory-copy, 1 branch-sensitive)

| External Symbol | Classification | Args Read | Longest-Path Return (`X0`) | Alt-Branch Return (`X0`) | Post-Call Analysis |
| :--- | :--- | ---: | :--- | :--- | :--- |
| `f_800099860` | `CONSTANT_ZERO` | 3 | `0x0` | `0x1` | Return value X0 unread/overwritten -> constant 0 |
| `f_802ba39a0` | **BRANCH_SENSITIVE** | 2 | `0x1` | `0x0` | CBZ on return register w0 at 0x8001f0020 |
| `f_802ba39b0` | `CONSTANT_ZERO` | 2 | `0x0` | `0x1` | Return value X0 unread/overwritten -> constant 0 |
