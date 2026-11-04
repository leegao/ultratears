# Automated Stub & Static CFG Longest-Path Analysis (`main_1163_spatialhash`)

## 1. Function Static CFG & Path Length Summary

| Function | Entry PC | Static ARM64 Insns | Basic Blocks | Loop Back-Edges | Est. Common Path (ARM64 Insns) | Est. Longest Path (ARM64 Insns) | CP-SAT Verified Longest |
| :--- | :--- | ---: | ---: | ---: | ---: | ---: | ---: |
| `f_8021c31d4` | `0x8021c31d4` | 1122 | 345 | 21 | 45 | 500 | 500 |

## 2. Function Control Flow Graphs (CFGs)

### Function `f_8021c31d4` (`0x8021c31d4` – 1122 insns, 345 blocks)

```mermaid
flowchart TD
    B_8021c31d4["0x8021c31d4..0x8021c3208\n(13 insns)"]
    B_8021c3208["0x8021c3208..0x8021c3214\n(3 insns)"]
    B_8021c3214["0x8021c3214..0x8021c321c\n(2 insns)"]
    B_8021c321c["0x8021c321c..0x8021c3224\n(2 insns)"]
    B_8021c3224["0x8021c3224..0x8021c322c\n(2 insns)"]
    B_8021c322c["0x8021c322c..0x8021c3238\n(3 insns)"]
    B_8021c3238["0x8021c3238..0x8021c3240\n(2 insns)"]
    B_8021c3240["0x8021c3240..0x8021c3258\n(6 insns)"]
    B_8021c3258["0x8021c3258..0x8021c3260\n(2 insns)"]
    B_8021c3260["0x8021c3260..0x8021c326c\n(3 insns)"]
    B_8021c326c["0x8021c326c..0x8021c327c\n(4 insns)"]
    B_8021c327c["0x8021c327c..0x8021c3284\n(2 insns)"]
    B_8021c3284["0x8021c3284..0x8021c328c\n(2 insns)"]
    B_8021c328c["0x8021c328c..0x8021c3294\n(2 insns)"]
    B_8021c3294["0x8021c3294..0x8021c32a0\n(3 insns)"]
    B_8021c32a0["0x8021c32a0..0x8021c32a8\n(2 insns)"]
    B_8021c32a8["0x8021c32a8..0x8021c32b0\n(2 insns)"]
    B_8021c32b0["0x8021c32b0..0x8021c32bc\n(3 insns)"]
    B_8021c32bc["0x8021c32bc..0x8021c32c8\n(3 insns)"]
    B_8021c32c8["0x8021c32c8..0x8021c32dc\n(5 insns)"]
    B_8021c32dc["0x8021c32dc..0x8021c32e8\n(3 insns)"]
    B_8021c32e8["0x8021c32e8..0x8021c32ec\n(1 insns)"]
    B_8021c32ec["0x8021c32ec..0x8021c32f4\n(2 insns)"]
    B_8021c32f4["0x8021c32f4..0x8021c3300\n(3 insns)"]
    B_8021c3300["0x8021c3300..0x8021c3318\n(6 insns, switch)"]
    B_8021c3318["0x8021c3318..0x8021c3328\n(4 insns)"]
    B_8021c3328["0x8021c3328..0x8021c3330\n(2 insns)"]
    B_8021c3330["0x8021c3330..0x8021c3340\n(4 insns)"]
    B_8021c3340["0x8021c3340..0x8021c3348\n(2 insns)"]
    B_8021c3348["0x8021c3348..0x8021c3350\n(2 insns)"]
    B_8021c3350["0x8021c3350..0x8021c3358\n(2 insns, loop hdr)"]
    B_8021c3358["0x8021c3358..0x8021c335c\n(1 insns)"]
    B_8021c335c["0x8021c335c..0x8021c3364\n(2 insns)"]
    B_8021c3364["0x8021c3364..0x8021c3368\n(1 insns)"]
    B_8021c3368["0x8021c3368..0x8021c3388\n(8 insns)"]
    B_8021c3388["0x8021c3388..0x8021c3390\n(2 insns)"]
    B_8021c3390["0x8021c3390..0x8021c3398\n(2 insns)"]
    B_8021c3398["0x8021c3398..0x8021c33a0\n(2 insns)"]
    B_8021c33a0["0x8021c33a0..0x8021c33d4\n(13 insns)"]
    B_8021c33d4["0x8021c33d4..0x8021c33e0\n(3 insns)"]
    B_8021c33e0["0x8021c33e0..0x8021c33ec\n(3 insns)"]
    B_8021c33ec["0x8021c33ec..0x8021c33f4\n(2 insns)"]
    B_8021c33f4["0x8021c33f4..0x8021c3408\n(5 insns)"]
    B_8021c3408["0x8021c3408..0x8021c3434\n(11 insns)"]
    B_8021c3434["0x8021c3434..0x8021c343c\n(2 insns)"]
    B_8021c343c["0x8021c343c..0x8021c344c\n(4 insns)"]
    B_8021c344c["0x8021c344c..0x8021c3454\n(2 insns)"]
    B_8021c3454["0x8021c3454..0x8021c3470\n(7 insns)"]
    B_8021c3470["0x8021c3470..0x8021c347c\n(3 insns)"]
    B_8021c347c["0x8021c347c..0x8021c3480\n(1 insns)"]
    B_8021c3480["0x8021c3480..0x8021c348c\n(3 insns)"]
    B_8021c348c["0x8021c348c..0x8021c3498\n(3 insns)"]
    B_8021c3498["0x8021c3498..0x8021c34a4\n(3 insns)"]
    B_8021c34a4["0x8021c34a4..0x8021c34ac\n(2 insns)"]
    B_8021c34ac["0x8021c34ac..0x8021c34b0\n(1 insns)"]
    B_8021c34b0["0x8021c34b0..0x8021c34c0\n(4 insns)"]
    B_8021c34c0["0x8021c34c0..0x8021c34d0\n(4 insns)"]
    B_8021c34d0["0x8021c34d0..0x8021c34d8\n(2 insns, loop hdr)"]
    B_8021c34d8["0x8021c34d8..0x8021c34e0\n(2 insns)"]
    B_8021c34e0["0x8021c34e0..0x8021c34f0\n(4 insns)"]
    B_8021c34f0["0x8021c34f0..0x8021c34f8\n(2 insns, loop hdr)"]
    B_8021c34f8["0x8021c34f8..0x8021c3500\n(2 insns)"]
    B_8021c3500["0x8021c3500..0x8021c3510\n(4 insns)"]
    B_8021c3510["0x8021c3510..0x8021c3518\n(2 insns, loop hdr)"]
    B_8021c3518["0x8021c3518..0x8021c3520\n(2 insns)"]
    B_8021c3520["0x8021c3520..0x8021c3528\n(2 insns)"]
    B_8021c3528["0x8021c3528..0x8021c3534\n(3 insns, loop hdr)"]
    B_8021c3534["0x8021c3534..0x8021c3538\n(1 insns)"]
    B_8021c3538["0x8021c3538..0x8021c3544\n(3 insns, loop hdr)"]
    B_8021c3544["0x8021c3544..0x8021c355c\n(6 insns)"]
    B_8021c355c["0x8021c355c..0x8021c3564\n(2 insns)"]
    B_8021c3564["0x8021c3564..0x8021c3574\n(4 insns)"]
    B_8021c3574["0x8021c3574..0x8021c357c\n(2 insns)"]
    B_8021c357c["0x8021c357c..0x8021c3588\n(3 insns, loop hdr)"]
    B_8021c3588["0x8021c3588..0x8021c3590\n(2 insns)"]
    B_8021c3590["0x8021c3590..0x8021c3598\n(2 insns)"]
    B_8021c3598["0x8021c3598..0x8021c35a4\n(3 insns, loop hdr)"]
    B_8021c35a4["0x8021c35a4..0x8021c35a8\n(1 insns)"]
    B_8021c35a8["0x8021c35a8..0x8021c35b4\n(3 insns, loop hdr)"]
    B_8021c35b4["0x8021c35b4..0x8021c35cc\n(6 insns)"]
    B_8021c35cc["0x8021c35cc..0x8021c35d4\n(2 insns)"]
    B_8021c35d4["0x8021c35d4..0x8021c35e4\n(4 insns)"]
    B_8021c35e4["0x8021c35e4..0x8021c35ec\n(2 insns)"]
    B_8021c35ec["0x8021c35ec..0x8021c35f8\n(3 insns, loop hdr)"]
    B_8021c35f8["0x8021c35f8..0x8021c3600\n(2 insns)"]
    B_8021c3600["0x8021c3600..0x8021c3608\n(2 insns)"]
    B_8021c3608["0x8021c3608..0x8021c3614\n(3 insns, loop hdr)"]
    B_8021c3614["0x8021c3614..0x8021c3618\n(1 insns)"]
    B_8021c3618["0x8021c3618..0x8021c3624\n(3 insns, loop hdr)"]
    B_8021c3624["0x8021c3624..0x8021c3638\n(5 insns)"]
    B_8021c3638["0x8021c3638..0x8021c3640\n(2 insns)"]
    B_8021c3640["0x8021c3640..0x8021c3650\n(4 insns)"]
    B_8021c3650["0x8021c3650..0x8021c3658\n(2 insns)"]
    B_8021c3658["0x8021c3658..0x8021c3664\n(3 insns, loop hdr)"]
    B_8021c3664["0x8021c3664..0x8021c3668\n(1 insns)"]
    B_8021c3668["0x8021c3668..0x8021c3674\n(3 insns)"]
    B_8021c3674["0x8021c3674..0x8021c367c\n(2 insns)"]
    B_8021c367c["0x8021c367c..0x8021c3688\n(3 insns, loop hdr)"]
    B_8021c3688["0x8021c3688..0x8021c368c\n(1 insns)"]
    B_8021c368c["0x8021c368c..0x8021c3698\n(3 insns, loop hdr)"]
    B_8021c3698["0x8021c3698..0x8021c36a0\n(2 insns)"]
    B_8021c36a0["0x8021c36a0..0x8021c36a8\n(2 insns)"]
    B_8021c36a8["0x8021c36a8..0x8021c36b4\n(3 insns, loop hdr)"]
    B_8021c36b4["0x8021c36b4..0x8021c36b8\n(1 insns)"]
    B_8021c36b8["0x8021c36b8..0x8021c36c4\n(3 insns, loop hdr)"]
    B_8021c36c4["0x8021c36c4..0x8021c36c8\n(1 insns)"]
    B_8021c36c8["0x8021c36c8..0x8021c36d0\n(2 insns)"]
    B_8021c36d0["0x8021c36d0..0x8021c36d4\n(1 insns)"]
    B_8021c36d4["0x8021c36d4..0x8021c36dc\n(2 insns)"]
    B_8021c36dc["0x8021c36dc..0x8021c36e4\n(2 insns)"]
    B_8021c36e4["0x8021c36e4..0x8021c36fc\n(6 insns)"]
    B_8021c36fc["0x8021c36fc..0x8021c3708\n(3 insns, loop hdr)"]
    B_8021c3708["0x8021c3708..0x8021c3710\n(2 insns)"]
    B_8021c3710["0x8021c3710..0x8021c3718\n(2 insns)"]
    B_8021c3718["0x8021c3718..0x8021c3720\n(2 insns)"]
    B_8021c3720["0x8021c3720..0x8021c3730\n(4 insns)"]
    B_8021c3730["0x8021c3730..0x8021c3738\n(2 insns)"]
    B_8021c3738["0x8021c3738..0x8021c3754\n(7 insns)"]
    B_8021c3754["0x8021c3754..0x8021c3760\n(3 insns)"]
    B_8021c3760["0x8021c3760..0x8021c3764\n(1 insns)"]
    B_8021c3764["0x8021c3764..0x8021c376c\n(2 insns)"]
    B_8021c376c["0x8021c376c..0x8021c377c\n(4 insns)"]
    B_8021c377c["0x8021c377c..0x8021c3784\n(2 insns)"]
    B_8021c3784["0x8021c3784..0x8021c37a0\n(7 insns)"]
    B_8021c37a0["0x8021c37a0..0x8021c37ac\n(3 insns)"]
    B_8021c37ac["0x8021c37ac..0x8021c37b0\n(1 insns)"]
    B_8021c37b0["0x8021c37b0..0x8021c37b8\n(2 insns)"]
    B_8021c37b8["0x8021c37b8..0x8021c37c8\n(4 insns)"]
    B_8021c37c8["0x8021c37c8..0x8021c37d0\n(2 insns)"]
    B_8021c37d0["0x8021c37d0..0x8021c37ec\n(7 insns)"]
    B_8021c37ec["0x8021c37ec..0x8021c37f8\n(3 insns)"]
    B_8021c37f8["0x8021c37f8..0x8021c37fc\n(1 insns)"]
    B_8021c37fc["0x8021c37fc..0x8021c3804\n(2 insns)"]
    B_8021c3804["0x8021c3804..0x8021c380c\n(2 insns)"]
    B_8021c380c["0x8021c380c..0x8021c381c\n(4 insns)"]
    B_8021c381c["0x8021c381c..0x8021c3824\n(2 insns)"]
    B_8021c3824["0x8021c3824..0x8021c3834\n(4 insns)"]
    B_8021c3834["0x8021c3834..0x8021c3850\n(7 insns)"]
    B_8021c3850["0x8021c3850..0x8021c3854\n(1 insns)"]
    B_8021c3854["0x8021c3854..0x8021c385c\n(2 insns)"]
    B_8021c385c["0x8021c385c..0x8021c3864\n(2 insns)"]
    B_8021c3864["0x8021c3864..0x8021c3874\n(4 insns)"]
    B_8021c3874["0x8021c3874..0x8021c387c\n(2 insns)"]
    B_8021c387c["0x8021c387c..0x8021c388c\n(4 insns)"]
    B_8021c388c["0x8021c388c..0x8021c38a8\n(7 insns)"]
    B_8021c38a8["0x8021c38a8..0x8021c38ac\n(1 insns)"]
    B_8021c38ac["0x8021c38ac..0x8021c38b4\n(2 insns)"]
    B_8021c38b4["0x8021c38b4..0x8021c38bc\n(2 insns)"]
    B_8021c38bc["0x8021c38bc..0x8021c38cc\n(4 insns)"]
    B_8021c38cc["0x8021c38cc..0x8021c38d4\n(2 insns)"]
    B_8021c38d4["0x8021c38d4..0x8021c38e4\n(4 insns)"]
    B_8021c38e4["0x8021c38e4..0x8021c3900\n(7 insns)"]
    B_8021c3900["0x8021c3900..0x8021c3904\n(1 insns)"]
    B_8021c3904["0x8021c3904..0x8021c390c\n(2 insns)"]
    B_8021c390c["0x8021c390c..0x8021c3914\n(2 insns)"]
    B_8021c3914["0x8021c3914..0x8021c3924\n(4 insns)"]
    B_8021c3924["0x8021c3924..0x8021c392c\n(2 insns)"]
    B_8021c392c["0x8021c392c..0x8021c393c\n(4 insns)"]
    B_8021c393c["0x8021c393c..0x8021c3958\n(7 insns)"]
    B_8021c3958["0x8021c3958..0x8021c395c\n(1 insns)"]
    B_8021c395c["0x8021c395c..0x8021c3964\n(2 insns)"]
    B_8021c3964["0x8021c3964..0x8021c396c\n(2 insns)"]
    B_8021c396c["0x8021c396c..0x8021c397c\n(4 insns)"]
    B_8021c397c["0x8021c397c..0x8021c3984\n(2 insns)"]
    B_8021c3984["0x8021c3984..0x8021c3994\n(4 insns)"]
    B_8021c3994["0x8021c3994..0x8021c39b0\n(7 insns)"]
    B_8021c39b0["0x8021c39b0..0x8021c39b4\n(1 insns)"]
    B_8021c39b4["0x8021c39b4..0x8021c39d0\n(7 insns)"]
    B_8021c39d0["0x8021c39d0..0x8021c39d8\n(2 insns)"]
    B_8021c39d8["0x8021c39d8..0x8021c39e8\n(4 insns)"]
    B_8021c39e8["0x8021c39e8..0x8021c39f0\n(2 insns)"]
    B_8021c39f0["0x8021c39f0..0x8021c39f8\n(2 insns)"]
    B_8021c39f8["0x8021c39f8..0x8021c3a10\n(6 insns)"]
    B_8021c3a10["0x8021c3a10..0x8021c3a14\n(1 insns)"]
    B_8021c3a14["0x8021c3a14..0x8021c3a24\n(4 insns)"]
    B_8021c3a24["0x8021c3a24..0x8021c3a3c\n(6 insns, switch)"]
    B_8021c3a3c["0x8021c3a3c..0x8021c3a54\n(6 insns)"]
    B_8021c3a54["0x8021c3a54..0x8021c3a60\n(3 insns, loop hdr)"]
    B_8021c3a60["0x8021c3a60..0x8021c3a68\n(2 insns)"]
    B_8021c3a68["0x8021c3a68..0x8021c3a70\n(2 insns)"]
    B_8021c3a70["0x8021c3a70..0x8021c3a88\n(6 insns)"]
    B_8021c3a88["0x8021c3a88..0x8021c3a94\n(3 insns, loop hdr)"]
    B_8021c3a94["0x8021c3a94..0x8021c3a9c\n(2 insns)"]
    B_8021c3a9c["0x8021c3a9c..0x8021c3aa4\n(2 insns)"]
    B_8021c3aa4["0x8021c3aa4..0x8021c3abc\n(6 insns)"]
    B_8021c3abc["0x8021c3abc..0x8021c3ac8\n(3 insns, loop hdr)"]
    B_8021c3ac8["0x8021c3ac8..0x8021c3ad0\n(2 insns)"]
    B_8021c3ad0["0x8021c3ad0..0x8021c3ad8\n(2 insns)"]
    B_8021c3ad8["0x8021c3ad8..0x8021c3ae0\n(2 insns)"]
    B_8021c3ae0["0x8021c3ae0..0x8021c3af0\n(4 insns)"]
    B_8021c3af0["0x8021c3af0..0x8021c3af8\n(2 insns)"]
    B_8021c3af8["0x8021c3af8..0x8021c3b00\n(2 insns)"]
    B_8021c3b00["0x8021c3b00..0x8021c3b18\n(6 insns)"]
    B_8021c3b18["0x8021c3b18..0x8021c3b1c\n(1 insns)"]
    B_8021c3b1c["0x8021c3b1c..0x8021c3b24\n(2 insns)"]
    B_8021c3b24["0x8021c3b24..0x8021c3b34\n(4 insns)"]
    B_8021c3b34["0x8021c3b34..0x8021c3b3c\n(2 insns)"]
    B_8021c3b3c["0x8021c3b3c..0x8021c3b44\n(2 insns)"]
    B_8021c3b44["0x8021c3b44..0x8021c3b5c\n(6 insns)"]
    B_8021c3b5c["0x8021c3b5c..0x8021c3b60\n(1 insns)"]
    B_8021c3b60["0x8021c3b60..0x8021c3b68\n(2 insns)"]
    B_8021c3b68["0x8021c3b68..0x8021c3b78\n(4 insns)"]
    B_8021c3b78["0x8021c3b78..0x8021c3b80\n(2 insns)"]
    B_8021c3b80["0x8021c3b80..0x8021c3b88\n(2 insns)"]
    B_8021c3b88["0x8021c3b88..0x8021c3ba0\n(6 insns)"]
    B_8021c3ba0["0x8021c3ba0..0x8021c3ba4\n(1 insns)"]
    B_8021c3ba4["0x8021c3ba4..0x8021c3bb4\n(4 insns)"]
    B_8021c3bb4["0x8021c3bb4..0x8021c3bd4\n(8 insns)"]
    B_8021c3bd4["0x8021c3bd4..0x8021c3be4\n(4 insns)"]
    B_8021c3be4["0x8021c3be4..0x8021c3c0c\n(10 insns)"]
    B_8021c3c0c["0x8021c3c0c..0x8021c3c1c\n(4 insns)"]
    B_8021c3c1c["0x8021c3c1c..0x8021c3c44\n(10 insns)"]
    B_8021c3c44["0x8021c3c44..0x8021c3c54\n(4 insns)"]
    B_8021c3c54["0x8021c3c54..0x8021c3c7c\n(10 insns)"]
    B_8021c3c7c["0x8021c3c7c..0x8021c3c8c\n(4 insns)"]
    B_8021c3c8c["0x8021c3c8c..0x8021c3cb4\n(10 insns)"]
    B_8021c3cb4["0x8021c3cb4..0x8021c3cc4\n(4 insns)"]
    B_8021c3cc4["0x8021c3cc4..0x8021c3cec\n(10 insns)"]
    B_8021c3cec["0x8021c3cec..0x8021c3cf4\n(2 insns)"]
    B_8021c3cf4["0x8021c3cf4..0x8021c3cfc\n(2 insns)"]
    B_8021c3cfc["0x8021c3cfc..0x8021c3d04\n(2 insns)"]
    B_8021c3d04["0x8021c3d04..0x8021c3d0c\n(2 insns)"]
    B_8021c3d0c["0x8021c3d0c..0x8021c3d18\n(3 insns)"]
    B_8021c3d18["0x8021c3d18..0x8021c3d4c\n(13 insns, switch)"]
    B_8021c3d4c["0x8021c3d4c..0x8021c3d58\n(3 insns)"]
    B_8021c3d58["0x8021c3d58..0x8021c3d60\n(2 insns)"]
    B_8021c3d60["0x8021c3d60..0x8021c3d7c\n(7 insns)"]
    B_8021c3d7c["0x8021c3d7c..0x8021c3d8c\n(4 insns)"]
    B_8021c3d8c["0x8021c3d8c..0x8021c3dac\n(8 insns)"]
    B_8021c3dac["0x8021c3dac..0x8021c3db4\n(2 insns)"]
    B_8021c3db4["0x8021c3db4..0x8021c3ddc\n(10 insns)"]
    B_8021c3ddc["0x8021c3ddc..0x8021c3dec\n(4 insns)"]
    B_8021c3dec["0x8021c3dec..0x8021c3df8\n(3 insns)"]
    B_8021c3df8["0x8021c3df8..0x8021c3e00\n(2 insns)"]
    B_8021c3e00["0x8021c3e00..0x8021c3e14\n(5 insns)"]
    B_8021c3e14["0x8021c3e14..0x8021c3e24\n(4 insns)"]
    B_8021c3e24["0x8021c3e24..0x8021c3e44\n(8 insns)"]
    B_8021c3e44["0x8021c3e44..0x8021c3e54\n(4 insns)"]
    B_8021c3e54["0x8021c3e54..0x8021c3e74\n(8 insns)"]
    B_8021c3e74["0x8021c3e74..0x8021c3e84\n(4 insns)"]
    B_8021c3e84["0x8021c3e84..0x8021c3e8c\n(2 insns)"]
    B_8021c3e8c["0x8021c3e8c..0x8021c3e98\n(3 insns)"]
    B_8021c3e98["0x8021c3e98..0x8021c3eb0\n(6 insns)"]
    B_8021c3eb0["0x8021c3eb0..0x8021c3eb8\n(2 insns)"]
    B_8021c3eb8["0x8021c3eb8..0x8021c3ec0\n(2 insns)"]
    B_8021c3ec0["0x8021c3ec0..0x8021c3ecc\n(3 insns)"]
    B_8021c3ecc["0x8021c3ecc..0x8021c3ed4\n(2 insns)"]
    B_8021c3ed4["0x8021c3ed4..0x8021c3edc\n(2 insns)"]
    B_8021c3edc["0x8021c3edc..0x8021c3ee8\n(3 insns)"]
    B_8021c3ee8["0x8021c3ee8..0x8021c3ef4\n(3 insns)"]
    B_8021c3ef4["0x8021c3ef4..0x8021c3f00\n(3 insns)"]
    B_8021c3f00["0x8021c3f00..0x8021c3f0c\n(3 insns)"]
    B_8021c3f0c["0x8021c3f0c..0x8021c3f14\n(2 insns)"]
    B_8021c3f14["0x8021c3f14..0x8021c3f20\n(3 insns)"]
    B_8021c3f20["0x8021c3f20..0x8021c3f34\n(5 insns)"]
    B_8021c3f34["0x8021c3f34..0x8021c3f3c\n(2 insns)"]
    B_8021c3f3c["0x8021c3f3c..0x8021c3f48\n(3 insns)"]
    B_8021c3f48["0x8021c3f48..0x8021c3f54\n(3 insns)"]
    B_8021c3f54["0x8021c3f54..0x8021c3f5c\n(2 insns)"]
    B_8021c3f5c["0x8021c3f5c..0x8021c3f68\n(3 insns)"]
    B_8021c3f68["0x8021c3f68..0x8021c3f74\n(3 insns)"]
    B_8021c3f74["0x8021c3f74..0x8021c3f7c\n(2 insns)"]
    B_8021c3f7c["0x8021c3f7c..0x8021c3f84\n(2 insns)"]
    B_8021c3f84["0x8021c3f84..0x8021c3f94\n(4 insns)"]
    B_8021c3f94["0x8021c3f94..0x8021c3f9c\n(2 insns)"]
    B_8021c3f9c["0x8021c3f9c..0x8021c3fb8\n(7 insns)"]
    B_8021c3fb8["0x8021c3fb8..0x8021c3fbc\n(1 insns)"]
    B_8021c3fbc["0x8021c3fbc..0x8021c3fcc\n(4 insns)"]
    B_8021c3fcc["0x8021c3fcc..0x8021c3fd4\n(2 insns)"]
    B_8021c3fd4["0x8021c3fd4..0x8021c3fdc\n(2 insns)"]
    B_8021c3fdc["0x8021c3fdc..0x8021c3ff4\n(6 insns)"]
    B_8021c3ff4["0x8021c3ff4..0x8021c3ffc\n(2 insns)"]
    B_8021c3ffc["0x8021c3ffc..0x8021c4004\n(2 insns)"]
    B_8021c4004["0x8021c4004..0x8021c4010\n(3 insns)"]
    B_8021c4010["0x8021c4010..0x8021c4018\n(2 insns)"]
    B_8021c4018["0x8021c4018..0x8021c4020\n(2 insns)"]
    B_8021c4020["0x8021c4020..0x8021c4028\n(2 insns)"]
    B_8021c4028["0x8021c4028..0x8021c4030\n(2 insns)"]
    B_8021c4030["0x8021c4030..0x8021c4040\n(4 insns)"]
    B_8021c4040["0x8021c4040..0x8021c4048\n(2 insns)"]
    B_8021c4048["0x8021c4048..0x8021c4064\n(7 insns)"]
    B_8021c4064["0x8021c4064..0x8021c4068\n(1 insns)"]
    B_8021c4068["0x8021c4068..0x8021c4070\n(2 insns)"]
    B_8021c4070["0x8021c4070..0x8021c4078\n(2 insns)"]
    B_8021c4078["0x8021c4078..0x8021c4088\n(4 insns)"]
    B_8021c4088["0x8021c4088..0x8021c4090\n(2 insns)"]
    B_8021c4090["0x8021c4090..0x8021c40ac\n(7 insns)"]
    B_8021c40ac["0x8021c40ac..0x8021c40b0\n(1 insns)"]
    B_8021c40b0["0x8021c40b0..0x8021c40c0\n(4 insns)"]
    B_8021c40c0["0x8021c40c0..0x8021c40c8\n(2 insns)"]
    B_8021c40c8["0x8021c40c8..0x8021c40cc\n(1 insns)"]
    B_8021c40cc["0x8021c40cc..0x8021c40d4\n(2 insns)"]
    B_8021c40d4["0x8021c40d4..0x8021c40ec\n(6 insns)"]
    B_8021c40ec["0x8021c40ec..0x8021c40f4\n(2 insns)"]
    B_8021c40f4["0x8021c40f4..0x8021c40fc\n(2 insns)"]
    B_8021c40fc["0x8021c40fc..0x8021c4108\n(3 insns)"]
    B_8021c4108["0x8021c4108..0x8021c4110\n(2 insns)"]
    B_8021c4110["0x8021c4110..0x8021c4114\n(1 insns)"]
    B_8021c4114["0x8021c4114..0x8021c4118\n(1 insns)"]
    B_8021c4118["0x8021c4118..0x8021c4124\n(3 insns)"]
    B_8021c4124["0x8021c4124..0x8021c412c\n(2 insns)"]
    B_8021c412c["0x8021c412c..0x8021c4134\n(2 insns)"]
    B_8021c4134["0x8021c4134..0x8021c4144\n(4 insns)"]
    B_8021c4144["0x8021c4144..0x8021c414c\n(2 insns)"]
    B_8021c414c["0x8021c414c..0x8021c4168\n(7 insns)"]
    B_8021c4168["0x8021c4168..0x8021c416c\n(1 insns)"]
    B_8021c416c["0x8021c416c..0x8021c4174\n(2 insns)"]
    B_8021c4174["0x8021c4174..0x8021c417c\n(2 insns)"]
    B_8021c417c["0x8021c417c..0x8021c418c\n(4 insns)"]
    B_8021c418c["0x8021c418c..0x8021c4194\n(2 insns)"]
    B_8021c4194["0x8021c4194..0x8021c41b0\n(7 insns)"]
    B_8021c41b0["0x8021c41b0..0x8021c41b4\n(1 insns)"]
    B_8021c41b4["0x8021c41b4..0x8021c41c8\n(5 insns)"]
    B_8021c41c8["0x8021c41c8..0x8021c41d4\n(3 insns)"]
    B_8021c41d4["0x8021c41d4..0x8021c41dc\n(2 insns)"]
    B_8021c41dc["0x8021c41dc..0x8021c41e4\n(2 insns)"]
    B_8021c41e4["0x8021c41e4..0x8021c4200\n(7 insns)"]
    B_8021c4200["0x8021c4200..0x8021c4208\n(2 insns)"]
    B_8021c4208["0x8021c4208..0x8021c4210\n(2 insns)"]
    B_8021c4210["0x8021c4210..0x8021c421c\n(3 insns)"]
    B_8021c421c["0x8021c421c..0x8021c4224\n(2 insns)"]
    B_8021c4224["0x8021c4224..0x8021c422c\n(2 insns)"]
    B_8021c422c["0x8021c422c..0x8021c423c\n(4 insns)"]
    B_8021c423c["0x8021c423c..0x8021c4244\n(2 insns)"]
    B_8021c4244["0x8021c4244..0x8021c424c\n(2 insns)"]
    B_8021c424c["0x8021c424c..0x8021c425c\n(4 insns)"]
    B_8021c425c["0x8021c425c..0x8021c4264\n(2 insns)"]
    B_8021c4264["0x8021c4264..0x8021c4288\n(9 insns)"]
    B_8021c4288["0x8021c4288..0x8021c428c\n(1 insns)"]
    B_8021c428c["0x8021c428c..0x8021c4294\n(2 insns)"]
    B_8021c4294["0x8021c4294..0x8021c429c\n(2 insns)"]
    B_8021c429c["0x8021c429c..0x8021c42ac\n(4 insns)"]
    B_8021c42ac["0x8021c42ac..0x8021c42b4\n(2 insns)"]
    B_8021c42b4["0x8021c42b4..0x8021c42d0\n(7 insns)"]
    B_8021c42d0["0x8021c42d0..0x8021c42d4\n(1 insns)"]
    B_8021c42d4["0x8021c42d4..0x8021c42dc\n(2 insns)"]
    B_8021c42dc["0x8021c42dc..0x8021c42e4\n(2 insns)"]
    B_8021c42e4["0x8021c42e4..0x8021c42f4\n(4 insns)"]
    B_8021c42f4["0x8021c42f4..0x8021c42fc\n(2 insns)"]
    B_8021c42fc["0x8021c42fc..0x8021c4318\n(7 insns)"]
    B_8021c4318["0x8021c4318..0x8021c431c\n(1 insns)"]
    B_8021c431c["0x8021c431c..0x8021c432c\n(4 insns)"]
    B_8021c432c["0x8021c432c..0x8021c433c\n(4 insns)"]
    B_8021c433c["0x8021c433c..0x8021c434c\n(4 insns)"]
    B_8021c434c["0x8021c434c..0x8021c435c\n(4 insns)"]
    B_8021c31d4 -- "taken" --> B_8021c36dc
    B_8021c31d4 -- "fallthrough" --> B_8021c3208
    B_8021c3208 -- "taken" --> B_8021c3364
    B_8021c3208 -- "fallthrough" --> B_8021c3214
    B_8021c3214 -- "taken" --> B_8021c3364
    B_8021c3214 -- "fallthrough" --> B_8021c321c
    B_8021c321c -- "taken" --> B_8021c3364
    B_8021c321c -- "fallthrough" --> B_8021c3224
    B_8021c3224 -- "taken" --> B_8021c3480
    B_8021c3224 -- "fallthrough" --> B_8021c322c
    B_8021c322c -- "taken" --> B_8021c3cec
    B_8021c322c -- "fallthrough" --> B_8021c3238
    B_8021c3238 -- "taken" --> B_8021c3258
    B_8021c3238 -- "fallthrough" --> B_8021c3240
    B_8021c3240 -- "taken" --> B_8021c3408
    B_8021c3240 -- "fallthrough" --> B_8021c3258
    B_8021c3258 -- "taken" --> B_8021c3d18
    B_8021c3258 -- "fallthrough" --> B_8021c3260
    B_8021c3260 -- "taken" --> B_8021c3d4c
    B_8021c3260 -- "fallthrough" --> B_8021c326c
    B_8021c326c -- "taken" --> B_8021c3d58
    B_8021c326c -- "fallthrough" --> B_8021c327c
    B_8021c327c -- "taken" --> B_8021c34c0
    B_8021c327c -- "fallthrough" --> B_8021c3284
    B_8021c3284 -- "taken" --> B_8021c34e0
    B_8021c3284 -- "fallthrough" --> B_8021c328c
    B_8021c328c -- "taken" --> B_8021c3500
    B_8021c328c -- "fallthrough" --> B_8021c3294
    B_8021c3294 -- "taken" --> B_8021c3dac
    B_8021c3294 -- "fallthrough" --> B_8021c32a0
    B_8021c32a0 -- "taken" --> B_8021c3ddc
    B_8021c32a0 -- "fallthrough" --> B_8021c32a8
    B_8021c32a8 -- "taken" --> B_8021c3dec
    B_8021c32a8 -- "fallthrough" --> B_8021c32b0
    B_8021c32b0 -- "taken" --> B_8021c39b4
    B_8021c32b0 -- "fallthrough" --> B_8021c32bc
    B_8021c32bc -- "taken" --> B_8021c33a0
    B_8021c32bc -- "fallthrough" --> B_8021c32c8
    B_8021c32c8 --> B_8021c32dc
    B_8021c32dc --> B_8021c32e8
    B_8021c32e8 --> B_8021c32ec
    B_8021c32ec -- "taken" --> B_8021c3388
    B_8021c32ec -- "fallthrough" --> B_8021c32f4
    B_8021c32f4 -- "taken" --> B_8021c33ec
    B_8021c32f4 -- "fallthrough" --> B_8021c3300
    B_8021c3300 -- "case" --> B_8021c3318
    B_8021c3300 -- "case" --> B_8021c3520
    B_8021c3300 -- "case" --> B_8021c3590
    B_8021c3300 -- "case" --> B_8021c3600
    B_8021c3300 -- "case" --> B_8021c3674
    B_8021c3300 -- "case" --> B_8021c36a0
    B_8021c3300 -- "case" --> B_8021c3a3c
    B_8021c3300 -- "case" --> B_8021c3a70
    B_8021c3300 -- "case" --> B_8021c3aa4
    B_8021c3300 -- "case" --> B_8021c431c
    B_8021c3300 -- "case" --> B_8021c432c
    B_8021c3300 -- "case" --> B_8021c433c
    B_8021c3300 -- "case" --> B_8021c434c
    B_8021c3318 -- "taken" --> B_8021c3e74
    B_8021c3318 -- "fallthrough" --> B_8021c3328
    B_8021c3328 -- "taken" --> B_8021c3e98
    B_8021c3328 -- "fallthrough" --> B_8021c3330
    B_8021c3330 -- "taken" --> B_8021c335c
    B_8021c3330 -- "fallthrough" --> B_8021c3340
    B_8021c3340 -- "taken" --> B_8021c335c
    B_8021c3340 -- "fallthrough" --> B_8021c3348
    B_8021c3348 -- "taken" --> B_8021c3358
    B_8021c3348 -- "fallthrough" --> B_8021c3350
    B_8021c3350 -- "taken" --> B_8021c3434
    B_8021c3350 -- "fallthrough" --> B_8021c3358
    B_8021c3358 --> B_8021c335c
    B_8021c335c --> B_8021c3364
    B_8021c3364 --> B_8021c3368
    B_8021c3368 --> EXIT_8021c3368["return"]
    B_8021c3388 -- "taken" --> B_8021c36d0
    B_8021c3388 -- "fallthrough" --> B_8021c3390
    B_8021c3390 -- "taken" --> B_8021c3364
    B_8021c3390 -- "fallthrough" --> B_8021c3398
    B_8021c3398 --> B_8021c36d4
    B_8021c33a0 --> B_8021c33d4
    B_8021c33d4 --> B_8021c33e0
    B_8021c33e0 --> B_8021c32ec
    B_8021c33ec -- "taken" --> B_8021c3364
    B_8021c33ec -- "fallthrough" --> B_8021c33f4
    B_8021c33f4 --> B_8021c3364
    B_8021c3408 --> EXIT_8021c3408["return"]
    B_8021c3434 -- "taken" --> B_8021c3358
    B_8021c3434 -- "fallthrough" --> B_8021c343c
    B_8021c343c -- "taken" --> B_8021c3358
    B_8021c343c -- "fallthrough" --> B_8021c344c
    B_8021c344c -- "taken" --> B_8021c3358
    B_8021c344c -- "fallthrough" --> B_8021c3454
    B_8021c3454 -- "taken" --> B_8021c3358
    B_8021c3454 -- "fallthrough" --> B_8021c3470
    B_8021c3470 -. "loop back" .-> B_8021c3350
    B_8021c3470 -- "fallthrough" --> B_8021c347c
    B_8021c347c --> B_8021c3358
    B_8021c3480 -- "taken" --> B_8021c3f00
    B_8021c3480 -- "fallthrough" --> B_8021c348c
    B_8021c348c -- "taken" --> B_8021c3f20
    B_8021c348c -- "fallthrough" --> B_8021c3498
    B_8021c3498 -- "taken" --> B_8021c3364
    B_8021c3498 -- "fallthrough" --> B_8021c34a4
    B_8021c34a4 -- "taken" --> B_8021c3364
    B_8021c34a4 -- "fallthrough" --> B_8021c34ac
    B_8021c34ac --> B_8021c34b0
    B_8021c34b0 --> B_8021c3364
    B_8021c34c0 -- "taken" --> B_8021c34d8
    B_8021c34c0 -- "fallthrough" --> B_8021c34d0
    B_8021c34d0 -- "taken" --> B_8021c3718
    B_8021c34d0 -- "fallthrough" --> B_8021c34d8
    B_8021c34d8 --> B_8021c32ec
    B_8021c34e0 -- "taken" --> B_8021c34f8
    B_8021c34e0 -- "fallthrough" --> B_8021c34f0
    B_8021c34f0 -- "taken" --> B_8021c3764
    B_8021c34f0 -- "fallthrough" --> B_8021c34f8
    B_8021c34f8 --> B_8021c32ec
    B_8021c3500 -- "taken" --> B_8021c3518
    B_8021c3500 -- "fallthrough" --> B_8021c3510
    B_8021c3510 -- "taken" --> B_8021c37b0
    B_8021c3510 -- "fallthrough" --> B_8021c3518
    B_8021c3518 --> B_8021c32ec
    B_8021c3520 --> B_8021c3528
    B_8021c3528 -- "taken" --> B_8021c37fc
    B_8021c3528 -- "fallthrough" --> B_8021c3534
    B_8021c3534 --> B_8021c3538
    B_8021c3538 -- "taken" --> B_8021c3f74
    B_8021c3538 -- "fallthrough" --> B_8021c3544
    B_8021c3544 -- "taken" --> B_8021c3fbc
    B_8021c3544 -- "fallthrough" --> B_8021c355c
    B_8021c355c -- "taken" --> B_8021c3fdc
    B_8021c355c -- "fallthrough" --> B_8021c3564
    B_8021c3564 -- "taken" --> B_8021c36d4
    B_8021c3564 -- "fallthrough" --> B_8021c3574
    B_8021c3574 -- "taken" --> B_8021c36d4
    B_8021c3574 -- "fallthrough" --> B_8021c357c
    B_8021c357c -- "taken" --> B_8021c4020
    B_8021c357c -- "fallthrough" --> B_8021c3588
    B_8021c3588 --> B_8021c36d4
    B_8021c3590 --> B_8021c3598
    B_8021c3598 -- "taken" --> B_8021c3854
    B_8021c3598 -- "fallthrough" --> B_8021c35a4
    B_8021c35a4 --> B_8021c35a8
    B_8021c35a8 -- "taken" --> B_8021c4068
    B_8021c35a8 -- "fallthrough" --> B_8021c35b4
    B_8021c35b4 -- "taken" --> B_8021c40b0
    B_8021c35b4 -- "fallthrough" --> B_8021c35cc
    B_8021c35cc -- "taken" --> B_8021c40d4
    B_8021c35cc -- "fallthrough" --> B_8021c35d4
    B_8021c35d4 -- "taken" --> B_8021c36d4
    B_8021c35d4 -- "fallthrough" --> B_8021c35e4
    B_8021c35e4 -- "taken" --> B_8021c36d4
    B_8021c35e4 -- "fallthrough" --> B_8021c35ec
    B_8021c35ec -- "taken" --> B_8021c4124
    B_8021c35ec -- "fallthrough" --> B_8021c35f8
    B_8021c35f8 --> B_8021c36d4
    B_8021c3600 --> B_8021c3608
    B_8021c3608 -- "taken" --> B_8021c38ac
    B_8021c3608 -- "fallthrough" --> B_8021c3614
    B_8021c3614 --> B_8021c3618
    B_8021c3618 -- "taken" --> B_8021c416c
    B_8021c3618 -- "fallthrough" --> B_8021c3624
    B_8021c3624 -- "taken" --> B_8021c41b4
    B_8021c3624 -- "fallthrough" --> B_8021c3638
    B_8021c3638 -- "taken" --> B_8021c41e4
    B_8021c3638 -- "fallthrough" --> B_8021c3640
    B_8021c3640 -- "taken" --> B_8021c3668
    B_8021c3640 -- "fallthrough" --> B_8021c3650
    B_8021c3650 -- "taken" --> B_8021c3668
    B_8021c3650 -- "fallthrough" --> B_8021c3658
    B_8021c3658 -- "taken" --> B_8021c423c
    B_8021c3658 -- "fallthrough" --> B_8021c3664
    B_8021c3664 --> B_8021c3668
    B_8021c3668 --> B_8021c3364
    B_8021c3674 --> B_8021c367c
    B_8021c367c -- "taken" --> B_8021c3904
    B_8021c367c -- "fallthrough" --> B_8021c3688
    B_8021c3688 --> B_8021c368c
    B_8021c368c -- "taken" --> B_8021c428c
    B_8021c368c -- "fallthrough" --> B_8021c3698
    B_8021c3698 --> B_8021c36c8
    B_8021c36a0 --> B_8021c36a8
    B_8021c36a8 -- "taken" --> B_8021c395c
    B_8021c36a8 -- "fallthrough" --> B_8021c36b4
    B_8021c36b4 --> B_8021c36b8
    B_8021c36b8 -- "taken" --> B_8021c42d4
    B_8021c36b8 -- "fallthrough" --> B_8021c36c4
    B_8021c36c4 --> B_8021c36c8
    B_8021c36c8 --> B_8021c3364
    B_8021c36d0 --> B_8021c36d4
    B_8021c36d4 --> B_8021c3364
    B_8021c36dc -- "taken" --> B_8021c3a14
    B_8021c36dc -- "fallthrough" --> B_8021c36e4
    B_8021c36e4 --> B_8021c36fc
    B_8021c36fc -- "taken" --> B_8021c3710
    B_8021c36fc -- "fallthrough" --> B_8021c3708
    B_8021c3708 -- "taken" --> B_8021c39d0
    B_8021c3708 -- "fallthrough" --> B_8021c3710
    B_8021c3710 --> B_8021c3364
    B_8021c3718 -- "taken" --> B_8021c34d8
    B_8021c3718 -- "fallthrough" --> B_8021c3720
    B_8021c3720 -- "taken" --> B_8021c34d8
    B_8021c3720 -- "fallthrough" --> B_8021c3730
    B_8021c3730 -- "taken" --> B_8021c34d8
    B_8021c3730 -- "fallthrough" --> B_8021c3738
    B_8021c3738 -- "taken" --> B_8021c34d8
    B_8021c3738 -- "fallthrough" --> B_8021c3754
    B_8021c3754 -. "loop back" .-> B_8021c34d0
    B_8021c3754 -- "fallthrough" --> B_8021c3760
    B_8021c3760 --> B_8021c34d8
    B_8021c3764 -- "taken" --> B_8021c34f8
    B_8021c3764 -- "fallthrough" --> B_8021c376c
    B_8021c376c -- "taken" --> B_8021c34f8
    B_8021c376c -- "fallthrough" --> B_8021c377c
    B_8021c377c -- "taken" --> B_8021c34f8
    B_8021c377c -- "fallthrough" --> B_8021c3784
    B_8021c3784 -- "taken" --> B_8021c34f8
    B_8021c3784 -- "fallthrough" --> B_8021c37a0
    B_8021c37a0 -. "loop back" .-> B_8021c34f0
    B_8021c37a0 -- "fallthrough" --> B_8021c37ac
    B_8021c37ac --> B_8021c34f8
    B_8021c37b0 -- "taken" --> B_8021c3518
    B_8021c37b0 -- "fallthrough" --> B_8021c37b8
    B_8021c37b8 -- "taken" --> B_8021c3518
    B_8021c37b8 -- "fallthrough" --> B_8021c37c8
    B_8021c37c8 -- "taken" --> B_8021c3518
    B_8021c37c8 -- "fallthrough" --> B_8021c37d0
    B_8021c37d0 -- "taken" --> B_8021c3518
    B_8021c37d0 -- "fallthrough" --> B_8021c37ec
    B_8021c37ec -. "loop back" .-> B_8021c3510
    B_8021c37ec -- "fallthrough" --> B_8021c37f8
    B_8021c37f8 --> B_8021c3518
    B_8021c37fc -- "taken" --> B_8021c3534
    B_8021c37fc -- "fallthrough" --> B_8021c3804
    B_8021c3804 -- "taken" --> B_8021c3534
    B_8021c3804 -- "fallthrough" --> B_8021c380c
    B_8021c380c -- "taken" --> B_8021c3534
    B_8021c380c -- "fallthrough" --> B_8021c381c
    B_8021c381c -- "taken" --> B_8021c3534
    B_8021c381c -- "fallthrough" --> B_8021c3824
    B_8021c3824 -- "taken" --> B_8021c3bd4
    B_8021c3824 -- "fallthrough" --> B_8021c3834
    B_8021c3834 -. "loop back" .-> B_8021c3528
    B_8021c3834 -- "fallthrough" --> B_8021c3850
    B_8021c3850 --> B_8021c3534
    B_8021c3854 -- "taken" --> B_8021c35a4
    B_8021c3854 -- "fallthrough" --> B_8021c385c
    B_8021c385c -- "taken" --> B_8021c35a4
    B_8021c385c -- "fallthrough" --> B_8021c3864
    B_8021c3864 -- "taken" --> B_8021c35a4
    B_8021c3864 -- "fallthrough" --> B_8021c3874
    B_8021c3874 -- "taken" --> B_8021c35a4
    B_8021c3874 -- "fallthrough" --> B_8021c387c
    B_8021c387c -- "taken" --> B_8021c3c0c
    B_8021c387c -- "fallthrough" --> B_8021c388c
    B_8021c388c -. "loop back" .-> B_8021c3598
    B_8021c388c -- "fallthrough" --> B_8021c38a8
    B_8021c38a8 --> B_8021c35a4
    B_8021c38ac -- "taken" --> B_8021c3614
    B_8021c38ac -- "fallthrough" --> B_8021c38b4
    B_8021c38b4 -- "taken" --> B_8021c3614
    B_8021c38b4 -- "fallthrough" --> B_8021c38bc
    B_8021c38bc -- "taken" --> B_8021c3614
    B_8021c38bc -- "fallthrough" --> B_8021c38cc
    B_8021c38cc -- "taken" --> B_8021c3614
    B_8021c38cc -- "fallthrough" --> B_8021c38d4
    B_8021c38d4 -- "taken" --> B_8021c3c44
    B_8021c38d4 -- "fallthrough" --> B_8021c38e4
    B_8021c38e4 -. "loop back" .-> B_8021c3608
    B_8021c38e4 -- "fallthrough" --> B_8021c3900
    B_8021c3900 --> B_8021c3614
    B_8021c3904 -- "taken" --> B_8021c3688
    B_8021c3904 -- "fallthrough" --> B_8021c390c
    B_8021c390c -- "taken" --> B_8021c3688
    B_8021c390c -- "fallthrough" --> B_8021c3914
    B_8021c3914 -- "taken" --> B_8021c3688
    B_8021c3914 -- "fallthrough" --> B_8021c3924
    B_8021c3924 -- "taken" --> B_8021c3688
    B_8021c3924 -- "fallthrough" --> B_8021c392c
    B_8021c392c -- "taken" --> B_8021c3c7c
    B_8021c392c -- "fallthrough" --> B_8021c393c
    B_8021c393c -. "loop back" .-> B_8021c367c
    B_8021c393c -- "fallthrough" --> B_8021c3958
    B_8021c3958 --> B_8021c3688
    B_8021c395c -- "taken" --> B_8021c36b4
    B_8021c395c -- "fallthrough" --> B_8021c3964
    B_8021c3964 -- "taken" --> B_8021c36b4
    B_8021c3964 -- "fallthrough" --> B_8021c396c
    B_8021c396c -- "taken" --> B_8021c36b4
    B_8021c396c -- "fallthrough" --> B_8021c397c
    B_8021c397c -- "taken" --> B_8021c36b4
    B_8021c397c -- "fallthrough" --> B_8021c3984
    B_8021c3984 -- "taken" --> B_8021c3cb4
    B_8021c3984 -- "fallthrough" --> B_8021c3994
    B_8021c3994 -. "loop back" .-> B_8021c36a8
    B_8021c3994 -- "fallthrough" --> B_8021c39b0
    B_8021c39b0 --> B_8021c36b4
    B_8021c39b4 --> B_8021c32dc
    B_8021c39d0 -- "taken" --> B_8021c3710
    B_8021c39d0 -- "fallthrough" --> B_8021c39d8
    B_8021c39d8 -- "taken" --> B_8021c3710
    B_8021c39d8 -- "fallthrough" --> B_8021c39e8
    B_8021c39e8 -- "taken" --> B_8021c3710
    B_8021c39e8 -- "fallthrough" --> B_8021c39f0
    B_8021c39f0 -- "taken" --> B_8021c3ba4
    B_8021c39f0 -- "fallthrough" --> B_8021c39f8
    B_8021c39f8 -. "loop back" .-> B_8021c36fc
    B_8021c39f8 -- "fallthrough" --> B_8021c3a10
    B_8021c3a10 --> B_8021c3710
    B_8021c3a14 -- "taken" --> B_8021c3364
    B_8021c3a14 -- "fallthrough" --> B_8021c3a24
    B_8021c3a24 -- "case" --> B_8021c3520
    B_8021c3a24 -- "case" --> B_8021c3590
    B_8021c3a24 -- "case" --> B_8021c3600
    B_8021c3a24 -- "case" --> B_8021c3674
    B_8021c3a24 -- "case" --> B_8021c36a0
    B_8021c3a24 -- "case" --> B_8021c3a3c
    B_8021c3a24 -- "case" --> B_8021c3a70
    B_8021c3a24 -- "case" --> B_8021c3aa4
    B_8021c3a24 -- "case" --> B_8021c431c
    B_8021c3a24 -- "case" --> B_8021c432c
    B_8021c3a24 -- "case" --> B_8021c433c
    B_8021c3a24 -- "case" --> B_8021c434c
    B_8021c3a3c --> B_8021c3a54
    B_8021c3a54 -- "taken" --> B_8021c3a68
    B_8021c3a54 -- "fallthrough" --> B_8021c3a60
    B_8021c3a60 -- "taken" --> B_8021c3b1c
    B_8021c3a60 -- "fallthrough" --> B_8021c3a68
    B_8021c3a68 --> B_8021c3364
    B_8021c3a70 --> B_8021c3a88
    B_8021c3a88 -- "taken" --> B_8021c3a9c
    B_8021c3a88 -- "fallthrough" --> B_8021c3a94
    B_8021c3a94 -- "taken" --> B_8021c3ad8
    B_8021c3a94 -- "fallthrough" --> B_8021c3a9c
    B_8021c3a9c --> B_8021c3364
    B_8021c3aa4 --> B_8021c3abc
    B_8021c3abc -- "taken" --> B_8021c3ad0
    B_8021c3abc -- "fallthrough" --> B_8021c3ac8
    B_8021c3ac8 -- "taken" --> B_8021c3b60
    B_8021c3ac8 -- "fallthrough" --> B_8021c3ad0
    B_8021c3ad0 --> B_8021c3364
    B_8021c3ad8 -- "taken" --> B_8021c3a9c
    B_8021c3ad8 -- "fallthrough" --> B_8021c3ae0
    B_8021c3ae0 -- "taken" --> B_8021c3a9c
    B_8021c3ae0 -- "fallthrough" --> B_8021c3af0
    B_8021c3af0 -- "taken" --> B_8021c3a9c
    B_8021c3af0 -- "fallthrough" --> B_8021c3af8
    B_8021c3af8 -- "taken" --> B_8021c3d7c
    B_8021c3af8 -- "fallthrough" --> B_8021c3b00
    B_8021c3b00 -. "loop back" .-> B_8021c3a88
    B_8021c3b00 -- "fallthrough" --> B_8021c3b18
    B_8021c3b18 --> B_8021c3a9c
    B_8021c3b1c -- "taken" --> B_8021c3a68
    B_8021c3b1c -- "fallthrough" --> B_8021c3b24
    B_8021c3b24 -- "taken" --> B_8021c3a68
    B_8021c3b24 -- "fallthrough" --> B_8021c3b34
    B_8021c3b34 -- "taken" --> B_8021c3a68
    B_8021c3b34 -- "fallthrough" --> B_8021c3b3c
    B_8021c3b3c -- "taken" --> B_8021c3e14
    B_8021c3b3c -- "fallthrough" --> B_8021c3b44
    B_8021c3b44 -. "loop back" .-> B_8021c3a54
    B_8021c3b44 -- "fallthrough" --> B_8021c3b5c
    B_8021c3b5c --> B_8021c3a68
    B_8021c3b60 -- "taken" --> B_8021c3ad0
    B_8021c3b60 -- "fallthrough" --> B_8021c3b68
    B_8021c3b68 -- "taken" --> B_8021c3ad0
    B_8021c3b68 -- "fallthrough" --> B_8021c3b78
    B_8021c3b78 -- "taken" --> B_8021c3ad0
    B_8021c3b78 -- "fallthrough" --> B_8021c3b80
    B_8021c3b80 -- "taken" --> B_8021c3e44
    B_8021c3b80 -- "fallthrough" --> B_8021c3b88
    B_8021c3b88 -. "loop back" .-> B_8021c3abc
    B_8021c3b88 -- "fallthrough" --> B_8021c3ba0
    B_8021c3ba0 --> B_8021c3ad0
    B_8021c3ba4 -- "taken" --> B_8021c39f8
    B_8021c3ba4 -- "fallthrough" --> B_8021c3bb4
    B_8021c3bb4 --> B_8021c39f8
    B_8021c3bd4 -- "taken" --> B_8021c3834
    B_8021c3bd4 -- "fallthrough" --> B_8021c3be4
    B_8021c3be4 --> B_8021c3834
    B_8021c3c0c -- "taken" --> B_8021c388c
    B_8021c3c0c -- "fallthrough" --> B_8021c3c1c
    B_8021c3c1c --> B_8021c388c
    B_8021c3c44 -- "taken" --> B_8021c38e4
    B_8021c3c44 -- "fallthrough" --> B_8021c3c54
    B_8021c3c54 --> B_8021c38e4
    B_8021c3c7c -- "taken" --> B_8021c393c
    B_8021c3c7c -- "fallthrough" --> B_8021c3c8c
    B_8021c3c8c --> B_8021c393c
    B_8021c3cb4 -- "taken" --> B_8021c3994
    B_8021c3cb4 -- "fallthrough" --> B_8021c3cc4
    B_8021c3cc4 --> B_8021c3994
    B_8021c3cec -- "taken" --> B_8021c3238
    B_8021c3cec -- "fallthrough" --> B_8021c3cf4
    B_8021c3cf4 -- "taken" --> B_8021c3ee8
    B_8021c3cf4 -- "fallthrough" --> B_8021c3cfc
    B_8021c3cfc -- "taken" --> B_8021c3ef4
    B_8021c3cfc -- "fallthrough" --> B_8021c3d04
    B_8021c3d04 -- "taken" --> B_8021c3258
    B_8021c3d04 -- "fallthrough" --> B_8021c3d0c
    B_8021c3d0c --> B_8021c3df8
    B_8021c3d18 -- "case" --> B_8021c431c
    B_8021c3d18 -- "case" --> B_8021c432c
    B_8021c3d18 -- "case" --> B_8021c433c
    B_8021c3d18 -- "case" --> B_8021c434c
    B_8021c3d4c --> B_8021c3364
    B_8021c3d58 -- "taken" --> B_8021c32dc
    B_8021c3d58 -- "fallthrough" --> B_8021c3d60
    B_8021c3d60 --> B_8021c33d4
    B_8021c3d7c -- "taken" --> B_8021c3b00
    B_8021c3d7c -- "fallthrough" --> B_8021c3d8c
    B_8021c3d8c --> B_8021c3b00
    B_8021c3dac -- "taken" --> B_8021c3e00
    B_8021c3dac -- "fallthrough" --> B_8021c3db4
    B_8021c3db4 --> B_8021c33e0
    B_8021c3ddc --> B_8021c3df8
    B_8021c3dec --> B_8021c3df8
    B_8021c3df8 --> B_8021c3364
    B_8021c3e00 --> B_8021c32e8
    B_8021c3e14 -- "taken" --> B_8021c3b44
    B_8021c3e14 -- "fallthrough" --> B_8021c3e24
    B_8021c3e24 --> B_8021c3b44
    B_8021c3e44 -- "taken" --> B_8021c3b88
    B_8021c3e44 -- "fallthrough" --> B_8021c3e54
    B_8021c3e54 --> B_8021c3b88
    B_8021c3e74 -- "taken" --> B_8021c335c
    B_8021c3e74 -- "fallthrough" --> B_8021c3e84
    B_8021c3e84 -- "taken" --> B_8021c335c
    B_8021c3e84 -- "fallthrough" --> B_8021c3e8c
    B_8021c3e8c --> B_8021c335c
    B_8021c3e98 -- "taken" --> B_8021c3ec0
    B_8021c3e98 -- "fallthrough" --> B_8021c3eb0
    B_8021c3eb0 -- "taken" --> B_8021c3ec0
    B_8021c3eb0 -- "fallthrough" --> B_8021c3eb8
    B_8021c3eb8 --> B_8021c3ec0
    B_8021c3ec0 -- "taken" --> B_8021c3edc
    B_8021c3ec0 -- "fallthrough" --> B_8021c3ecc
    B_8021c3ecc -- "taken" --> B_8021c3edc
    B_8021c3ecc -- "fallthrough" --> B_8021c3ed4
    B_8021c3ed4 --> B_8021c3edc
    B_8021c3edc --> B_8021c335c
    B_8021c3ee8 --> B_8021c3df8
    B_8021c3ef4 --> B_8021c3df8
    B_8021c3f00 -- "taken" --> B_8021c3364
    B_8021c3f00 -- "fallthrough" --> B_8021c3f0c
    B_8021c3f0c -- "taken" --> B_8021c3364
    B_8021c3f0c -- "fallthrough" --> B_8021c3f14
    B_8021c3f14 --> B_8021c34b0
    B_8021c3f20 -- "taken" --> B_8021c3f48
    B_8021c3f20 -- "fallthrough" --> B_8021c3f34
    B_8021c3f34 -- "taken" --> B_8021c3f48
    B_8021c3f34 -- "fallthrough" --> B_8021c3f3c
    B_8021c3f3c --> B_8021c3f48
    B_8021c3f48 -- "taken" --> B_8021c3f68
    B_8021c3f48 -- "fallthrough" --> B_8021c3f54
    B_8021c3f54 -- "taken" --> B_8021c3f68
    B_8021c3f54 -- "fallthrough" --> B_8021c3f5c
    B_8021c3f5c --> B_8021c3f68
    B_8021c3f68 --> B_8021c3368
    B_8021c3f74 -- "taken" --> B_8021c3544
    B_8021c3f74 -- "fallthrough" --> B_8021c3f7c
    B_8021c3f7c -- "taken" --> B_8021c3544
    B_8021c3f7c -- "fallthrough" --> B_8021c3f84
    B_8021c3f84 -- "taken" --> B_8021c3544
    B_8021c3f84 -- "fallthrough" --> B_8021c3f94
    B_8021c3f94 -- "taken" --> B_8021c3544
    B_8021c3f94 -- "fallthrough" --> B_8021c3f9c
    B_8021c3f9c -. "loop back" .-> B_8021c3538
    B_8021c3f9c -- "fallthrough" --> B_8021c3fb8
    B_8021c3fb8 --> B_8021c3544
    B_8021c3fbc -- "taken" --> B_8021c36d4
    B_8021c3fbc -- "fallthrough" --> B_8021c3fcc
    B_8021c3fcc -- "taken" --> B_8021c36d4
    B_8021c3fcc -- "fallthrough" --> B_8021c3fd4
    B_8021c3fd4 --> B_8021c40cc
    B_8021c3fdc -- "taken" --> B_8021c4004
    B_8021c3fdc -- "fallthrough" --> B_8021c3ff4
    B_8021c3ff4 -- "taken" --> B_8021c4004
    B_8021c3ff4 -- "fallthrough" --> B_8021c3ffc
    B_8021c3ffc --> B_8021c4004
    B_8021c4004 -- "taken" --> B_8021c4118
    B_8021c4004 -- "fallthrough" --> B_8021c4010
    B_8021c4010 -- "taken" --> B_8021c4118
    B_8021c4010 -- "fallthrough" --> B_8021c4018
    B_8021c4018 --> B_8021c4114
    B_8021c4020 -- "taken" --> B_8021c3588
    B_8021c4020 -- "fallthrough" --> B_8021c4028
    B_8021c4028 -- "taken" --> B_8021c3588
    B_8021c4028 -- "fallthrough" --> B_8021c4030
    B_8021c4030 -- "taken" --> B_8021c3588
    B_8021c4030 -- "fallthrough" --> B_8021c4040
    B_8021c4040 -- "taken" --> B_8021c3588
    B_8021c4040 -- "fallthrough" --> B_8021c4048
    B_8021c4048 -. "loop back" .-> B_8021c357c
    B_8021c4048 -- "fallthrough" --> B_8021c4064
    B_8021c4064 --> B_8021c3588
    B_8021c4068 -- "taken" --> B_8021c35b4
    B_8021c4068 -- "fallthrough" --> B_8021c4070
    B_8021c4070 -- "taken" --> B_8021c35b4
    B_8021c4070 -- "fallthrough" --> B_8021c4078
    B_8021c4078 -- "taken" --> B_8021c35b4
    B_8021c4078 -- "fallthrough" --> B_8021c4088
    B_8021c4088 -- "taken" --> B_8021c35b4
    B_8021c4088 -- "fallthrough" --> B_8021c4090
    B_8021c4090 -. "loop back" .-> B_8021c35a8
    B_8021c4090 -- "fallthrough" --> B_8021c40ac
    B_8021c40ac --> B_8021c35b4
    B_8021c40b0 -- "taken" --> B_8021c36d4
    B_8021c40b0 -- "fallthrough" --> B_8021c40c0
    B_8021c40c0 -- "taken" --> B_8021c36d4
    B_8021c40c0 -- "fallthrough" --> B_8021c40c8
    B_8021c40c8 --> B_8021c40cc
    B_8021c40cc --> B_8021c36d4
    B_8021c40d4 -- "taken" --> B_8021c40fc
    B_8021c40d4 -- "fallthrough" --> B_8021c40ec
    B_8021c40ec -- "taken" --> B_8021c40fc
    B_8021c40ec -- "fallthrough" --> B_8021c40f4
    B_8021c40f4 --> B_8021c40fc
    B_8021c40fc -- "taken" --> B_8021c4118
    B_8021c40fc -- "fallthrough" --> B_8021c4108
    B_8021c4108 -- "taken" --> B_8021c4118
    B_8021c4108 -- "fallthrough" --> B_8021c4110
    B_8021c4110 --> B_8021c4114
    B_8021c4114 --> B_8021c4118
    B_8021c4118 --> B_8021c36d4
    B_8021c4124 -- "taken" --> B_8021c35f8
    B_8021c4124 -- "fallthrough" --> B_8021c412c
    B_8021c412c -- "taken" --> B_8021c35f8
    B_8021c412c -- "fallthrough" --> B_8021c4134
    B_8021c4134 -- "taken" --> B_8021c35f8
    B_8021c4134 -- "fallthrough" --> B_8021c4144
    B_8021c4144 -- "taken" --> B_8021c35f8
    B_8021c4144 -- "fallthrough" --> B_8021c414c
    B_8021c414c -. "loop back" .-> B_8021c35ec
    B_8021c414c -- "fallthrough" --> B_8021c4168
    B_8021c4168 --> B_8021c35f8
    B_8021c416c -- "taken" --> B_8021c3624
    B_8021c416c -- "fallthrough" --> B_8021c4174
    B_8021c4174 -- "taken" --> B_8021c3624
    B_8021c4174 -- "fallthrough" --> B_8021c417c
    B_8021c417c -- "taken" --> B_8021c3624
    B_8021c417c -- "fallthrough" --> B_8021c418c
    B_8021c418c -- "taken" --> B_8021c3624
    B_8021c418c -- "fallthrough" --> B_8021c4194
    B_8021c4194 -. "loop back" .-> B_8021c3618
    B_8021c4194 -- "fallthrough" --> B_8021c41b0
    B_8021c41b0 --> B_8021c3624
    B_8021c41b4 -- "taken" --> B_8021c41dc
    B_8021c41b4 -- "fallthrough" --> B_8021c41c8
    B_8021c41c8 -- "taken" --> B_8021c3668
    B_8021c41c8 -- "fallthrough" --> B_8021c41d4
    B_8021c41d4 --> B_8021c41dc
    B_8021c41dc --> B_8021c3668
    B_8021c41e4 -- "taken" --> B_8021c4210
    B_8021c41e4 -- "fallthrough" --> B_8021c4200
    B_8021c4200 -- "taken" --> B_8021c4210
    B_8021c4200 -- "fallthrough" --> B_8021c4208
    B_8021c4208 --> B_8021c4210
    B_8021c4210 -- "taken" --> B_8021c422c
    B_8021c4210 -- "fallthrough" --> B_8021c421c
    B_8021c421c -- "taken" --> B_8021c422c
    B_8021c421c -- "fallthrough" --> B_8021c4224
    B_8021c4224 --> B_8021c422c
    B_8021c422c --> B_8021c3668
    B_8021c423c -- "taken" --> B_8021c3664
    B_8021c423c -- "fallthrough" --> B_8021c4244
    B_8021c4244 -- "taken" --> B_8021c3664
    B_8021c4244 -- "fallthrough" --> B_8021c424c
    B_8021c424c -- "taken" --> B_8021c3664
    B_8021c424c -- "fallthrough" --> B_8021c425c
    B_8021c425c -- "taken" --> B_8021c3664
    B_8021c425c -- "fallthrough" --> B_8021c4264
    B_8021c4264 -. "loop back" .-> B_8021c3658
    B_8021c4264 -- "fallthrough" --> B_8021c4288
    B_8021c4288 --> B_8021c3664
    B_8021c428c -- "taken" --> B_8021c3698
    B_8021c428c -- "fallthrough" --> B_8021c4294
    B_8021c4294 -- "taken" --> B_8021c3698
    B_8021c4294 -- "fallthrough" --> B_8021c429c
    B_8021c429c -- "taken" --> B_8021c3698
    B_8021c429c -- "fallthrough" --> B_8021c42ac
    B_8021c42ac -- "taken" --> B_8021c3698
    B_8021c42ac -- "fallthrough" --> B_8021c42b4
    B_8021c42b4 -. "loop back" .-> B_8021c368c
    B_8021c42b4 -- "fallthrough" --> B_8021c42d0
    B_8021c42d0 --> B_8021c3698
    B_8021c42d4 -- "taken" --> B_8021c36c4
    B_8021c42d4 -- "fallthrough" --> B_8021c42dc
    B_8021c42dc -- "taken" --> B_8021c36c4
    B_8021c42dc -- "fallthrough" --> B_8021c42e4
    B_8021c42e4 -- "taken" --> B_8021c36c4
    B_8021c42e4 -- "fallthrough" --> B_8021c42f4
    B_8021c42f4 -- "taken" --> B_8021c36c4
    B_8021c42f4 -- "fallthrough" --> B_8021c42fc
    B_8021c42fc -. "loop back" .-> B_8021c36b8
    B_8021c42fc -- "fallthrough" --> B_8021c4318
    B_8021c4318 --> B_8021c36c4
    B_8021c431c --> B_8021c3df8
    B_8021c432c --> B_8021c3df8
    B_8021c433c --> B_8021c3df8
    B_8021c434c --> B_8021c3df8
    %% Path Highlighting
    style B_8021c31d4 fill:#e8f5e9,stroke:#2e7d32,stroke-width:3px,color:#1b5e20
    style B_8021c3208 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8021c3214 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8021c321c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8021c3224 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8021c322c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8021c3238 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8021c3240 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8021c3258 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8021c3260 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8021c326c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8021c327c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8021c3284 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8021c328c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8021c32ec fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8021c32f4 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8021c3300 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8021c3364 fill:#e8f5e9,stroke:#2e7d32,stroke-width:3px,color:#1b5e20
    style B_8021c3368 fill:#e8f5e9,stroke:#2e7d32,stroke-width:3px,color:#1b5e20
    style B_8021c3500 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8021c3510 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8021c3518 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8021c3600 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8021c3608 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8021c3614 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8021c3618 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8021c3624 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8021c3638 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8021c3640 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8021c3650 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8021c3658 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8021c3664 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8021c3668 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8021c36dc fill:#e1f5fe,stroke:#0288d1,stroke-width:2px,color:#01579b
    style B_8021c37b0 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8021c37b8 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8021c37c8 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8021c37d0 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8021c37ec fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8021c37f8 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8021c38ac fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8021c38b4 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8021c38bc fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8021c38cc fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8021c38d4 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8021c38e4 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8021c3900 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8021c3a14 fill:#e1f5fe,stroke:#0288d1,stroke-width:2px,color:#01579b
    style B_8021c3c44 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8021c3c54 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8021c3cec fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8021c416c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8021c4174 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8021c417c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8021c418c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8021c4194 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8021c41b0 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8021c423c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8021c4244 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8021c424c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8021c425c fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8021c4264 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
    style B_8021c4288 fill:#ffeedd,stroke:#e65100,stroke-width:2px,color:#bf360c
```

## 3. External Callee Classification (21 total: 15 constant-zero, 5 pointer-alloc, 0 memory-copy, 1 branch-sensitive)

| External Symbol | Classification | Args Read | Longest-Path Return (`X0`) | Alt-Branch Return (`X0`) | Post-Call Analysis |
| :--- | :--- | ---: | :--- | :--- | :--- |
| `f_8006ad38c` | `CONSTANT_ZERO` | 3 | `0x0` | `0x1` | Return value X0 unread/overwritten -> constant 0 |
| `f_8006aec40` | `CONSTANT_ZERO` | 3 | `0x0` | `0x1` | Return value X0 unread/overwritten -> constant 0 |
| `f_8021a0e4c` | `CONSTANT_ZERO` | 2 | `0x0` | `0x1` | Return value X0 unread/overwritten -> constant 0 |
| `f_8021a5128` | `CONSTANT_ZERO` | 2 | `0x0` | `0x1` | Return value X0 unread/overwritten -> constant 0 |
| `f_802ba39a0` | **BRANCH_SENSITIVE** | 2 | `0x1` | `0x0` | CBZ on return register w0 at 0x8021c3e50 |
| `f_802ba39b0` | `CONSTANT_ZERO` | 2 | `0x0` | `0x1` | Return value X0 unread/overwritten -> constant 0 |
| `f_8021a52d0` | `CONSTANT_ZERO` | 2 | `0x0` | `0x1` | Return value X0 unread/overwritten -> constant 0 |
| `f_8021b69a4` | `CONSTANT_ZERO` | 3 | `0x0` | `0x1` | Return value X0 unread/overwritten -> constant 0 |
| `f_8021ac220` | `CONSTANT_ZERO` | 2 | `0x0` | `0x1` | Return value X0 unread/overwritten -> constant 0 |
| `f_8021ac1cc` | `POINTER_ALLOC` | 2 | `guest_alloc()` | `0x0` | Return value dereferenced as pointer at 0x8021c3df8 |
| `f_8021a1648` | `POINTER_ALLOC` | 2 | `guest_alloc()` | `0x0` | Return value dereferenced as pointer at 0x8021c3e90 |
| `f_8021a53d8` | `CONSTANT_ZERO` | 2 | `0x0` | `0x1` | Return value X0 unread/overwritten -> constant 0 |
| `f_8021a5354` | `CONSTANT_ZERO` | 2 | `0x0` | `0x1` | Return value X0 unread/overwritten -> constant 0 |
| `f_8021a4594` | `CONSTANT_ZERO` | 2 | `0x0` | `0x1` | Return value X0 unread/overwritten -> constant 0 |
| `f_8021a1390` | `POINTER_ALLOC` | 2 | `guest_alloc()` | `0x0` | Return value dereferenced as pointer at 0x8021c4000 |
| `f_8021a1408` | `POINTER_ALLOC` | 2 | `guest_alloc()` | `0x0` | Return value dereferenced as pointer at 0x8021c40cc |
| `f_8021a1318` | `POINTER_ALLOC` | 2 | `guest_alloc()` | `0x0` | Return value dereferenced as pointer at 0x8021c41d8 |
| `f_8021968bc` | `CONSTANT_ZERO` | 2 | `0x0` | `0x1` | Return value X0 unread/overwritten -> constant 0 |
| `f_80219699c` | `CONSTANT_ZERO` | 2 | `0x0` | `0x1` | Return value X0 unread/overwritten -> constant 0 |
| `f_802196a0c` | `CONSTANT_ZERO` | 2 | `0x0` | `0x1` | Return value X0 unread/overwritten -> constant 0 |
| `f_802196a7c` | `CONSTANT_ZERO` | 2 | `0x0` | `0x1` | Return value X0 unread/overwritten -> constant 0 |

## 4. Constraint-Solved Parameters for Maximal Finite & Common Paths

### Function `f_8021c31d4` (`0x8021c31d4`) — Solver Backend: `OR-Tools CP-SAT MaxSAT (OPTIMAL) + Native BV Solver`

| Parameter / Attribute | Maximal Finite Path (`path_mode = 0`) | Common Path (`path_mode = 1`) |
| :--- | :--- | :--- |
| **Static ARM64 Instructions** | **500 insns** (61 basic blocks) | **45 insns** (13 basic blocks) |
| **Path Predicates Solved** | 49 branch/switch constraints | 9 branch/switch constraints |
| **`g_stub_branch_policy`** | `0x0` | `0x1` |
| **Entry Register `X0`** | `fbase + 0x1000` | `fbase + 0x1000` |
| **Entry Register `X1`** | `fbase + 0x2000` | `fbase + 0x2000` |
| **Entry Register `X2`** | `0x0 (0)` | ``0x0`` |
| **Stub Return `f_8006ad38c` (`X0`)** | `0x0` | `0x0` |
| **Stub Return `f_8006aec40` (`X0`)** | `0x0` | `0x0` |
| **Stub Return `f_8021968bc` (`X0`)** | `0x0` | `0x0` |
| **Stub Return `f_80219699c` (`X0`)** | `0x0` | `0x0` |
| **Stub Return `f_802196a0c` (`X0`)** | `0x0` | `0x0` |
| **Stub Return `f_802196a7c` (`X0`)** | `0x0` | `0x0` |
| **Stub Return `f_8021a0e4c` (`X0`)** | `0x0` | `0x0` |
| **Stub Return `f_8021a1318` (`X0`)** | `guest_alloc(128)` | `guest_alloc(128)` |
| **Stub Return `f_8021a1390` (`X0`)** | `guest_alloc(128)` | `guest_alloc(128)` |
| **Stub Return `f_8021a1408` (`X0`)** | `guest_alloc(128)` | `guest_alloc(128)` |
| **Stub Return `f_8021a1648` (`X0`)** | `guest_alloc(128)` | `guest_alloc(128)` |
| **Stub Return `f_8021a4594` (`X0`)** | `0x0` | `0x0` |
| **Stub Return `f_8021a5128` (`X0`)** | `0x0` | `0x0` |
| **Stub Return `f_8021a52d0` (`X0`)** | `0x0` | `0x0` |
| **Stub Return `f_8021a5354` (`X0`)** | `0x0` | `0x0` |
| **Stub Return `f_8021a53d8` (`X0`)** | `0x0` | `0x0` |
| **Stub Return `f_8021ac1cc` (`X0`)** | `guest_alloc(128)` | `guest_alloc(128)` |
| **Stub Return `f_8021ac220` (`X0`)** | `0x0` | `0x0` |
| **Stub Return `f_8021b69a4` (`X0`)** | `0x0` | `0x0` |
| **Stub Return `f_802ba39a0` (`X0`)** | `0x1 (policy bit #0=0)` | `0x0 (policy bit #0=1)` |
| **Stub Return `f_802ba39b0` (`X0`)** | `0x0` | `0x0` |

#### Extracted Maximal-Path Predicate Constraints:

- `0x8021c3210: MEM[X0+0x90] != NULL (valid 64-bit pointer)`
- `0x8021c3218: MEM[X0+0x98] != NULL (valid 64-bit pointer)`
- `0x8021c3220: MEM[X0+0xa0] != NULL (valid 64-bit pointer)`
- `0x8021c3228: X1 ne 51`
- `0x8021c3234: MEM[X0+0x38] != NULL (valid 64-bit pointer)`
- `0x8021c3cf0: MEM[MEM[X0+0x38]+0x150] eq 0`
- `0x8021c323c: X1 ls 21`
- `0x8021c325c: MEM[X0+0x30] eq 0`
- `0x8021c3280: X1 ne 21`
- `0x8021c3288: X1 ne 20`
- `0x8021c3290: X1 eq 9`
- `0x8021c350c: bit #0 of MEM[MEM[MEM[MEM[X0+0x90]+0x1e0]+0x150]+0x3c] == 0`
- `0x8021c3514: MEM[MEM[MEM[MEM[X0+0x90]+0x1e0]+0x150]+0x10] != NULL (valid 64-bit pointer)`
- `0x8021c37b4: MEM[MEM[MEM[MEM[X0+0x90]+0x1e0]+0x150]+0x18] != NULL (valid 64-bit pointer)`
- `0x8021c37c4: MEM[MEM[MEM[MEM[MEM[X0+0x90]+0x1e0]+0x150]+0x18]+0xc] eq MEM[MEM[MEM[MEM[X0+0x90]+0x1e0]+0x150]+0x20]`
- `0x8021c37cc: MEM[MEM[MEM[MEM[MEM[X0+0x90]+0x1e0]+0x150]+0x18]+0x0] != NULL (valid 64-bit pointer)`
- `0x8021c37e8: MEM[MEM[MEM[MEM[MEM[X0+0x90]+0x1e0]+0x150]+0x18]+0x0] != NULL (valid 64-bit pointer)`
- `0x8021c37f4: bit #0 of MEM[MEM[MEM[MEM[MEM[MEM[X0+0x90]+0x1e0]+0x150]+0x18]+0x0]+0x3c] == 1 -> MEM[MEM[MEM[MEM[MEM[MEM[X0+0x90]+0x1e0]+0x150]+0x18]+0x0]+0x3c] |= 0x1`
- `0x8021c32f0: X1 le 37`
- `0x8021c3610: bit #0 of MEM[MEM[MEM[X0+0x8]+0x150]+0x80] == 0`
