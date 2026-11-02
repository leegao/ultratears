; UltraTears chunk main_121_simd: 1 functions [0x8001d2a5c..0x8001d353c)

; Function f_8001d2a5c [0x8001d2a5c..0x8001d353c)
f_8001d2a5c:
  0x8001d2a5c:  d10103ff    sub sp, sp, #64
  0x8001d2a60:  fd0013e8    str d8, [sp, #32]
  0x8001d2a64:  f9001ff3    str x19, [sp, #56]
  0x8001d2a68:  a902fbfd    stp x29, x30, [sp, #40]
  0x8001d2a6c:  9100a3fd    add x29, sp, #40
  0x8001d2a70:  b940002a    ldr w10, [x1]
  0x8001d2a74:  d3587d48    ubfx x8, x10, #24, #8
  0x8001d2a78:  7100091f    cmp w8, #2
  0x8001d2a7c:  54001261    b.ne #588
  0x8001d2a80:  f9400808    ldr x8, [x0, #16]
  0x8001d2a84:  91008109    add x9, x8, #32
  0x8001d2a88:  b9401908    ldr w8, [x8, #24]
  0x8001d2a8c:  8b080d2b    add x11, x9, x8, lsl #3
  0x8001d2a90:  7100091f    cmp w8, #2
  0x8001d2a94:  9a893168    csel x8, x11, x9, lo
  0x8001d2a98:  f9400108    ldr x8, [x8]
  0x8001d2a9c:  f940010c    ldr x12, [x8]
  0x8001d2aa0:  f9402d89    ldr x9, [x12, #88]
  0x8001d2aa4:  b40024c9    cbz x9, #1176
  0x8001d2aa8:  92405d4a    and x10, x10, #0xffffff
  0x8001d2aac:  52800308    mov w8, #24
  0x8001d2ab0:  9ba8254b    umaddl x11, w10, w8, x9
  0x8001d2ab4:  b9401168    ldr w8, [x11, #16]
  0x8001d2ab8:  37f81fa8    tbnz w8, #31, #1012
  0x8001d2abc:  52800308    mov w8, #24
  0x8001d2ac0:  9ba8254d    umaddl x13, w10, w8, x9
  0x8001d2ac4:  78406da8    ldrh w8, [x13, #6]!
  0x8001d2ac8:  7100051f    cmp w8, #1
  0x8001d2acc:  540006a1    b.ne #212
  0x8001d2ad0:  52800308    mov w8, #24
  0x8001d2ad4:  9ba82548    umaddl x8, w10, w8, x9
  0x8001d2ad8:  79c02908    ldrsh w8, [x8, #20]
  0x8001d2adc:  37f81c68    tbnz w8, #31, #908
  0x8001d2ae0:  3940644e    ldrb w14, [x2, #25]
  0x8001d2ae4:  12003d08    and w8, w8, #0xffff
  0x8001d2ae8:  3618170e    tbz w14, #3, #736
  0x8001d2aec:  f001bbce    adrp x14, #58175488
  0x8001d2af0:  f945b9ce    ldr x14, [x14, #2928]
  0x8001d2af4:  f94001cf    ldr x15, [x14]
  0x8001d2af8:  b9403dee    ldr w14, [x15, #60]
  0x8001d2afc:  6b0801df    cmp w14, w8
  0x8001d2b00:  54001b49    b.ls #872
  0x8001d2b04:  f94021ee    ldr x14, [x15, #64]
  0x8001d2b08:  f86859ce    ldr x14, [x14, w8, uxtw #3]
  0x8001d2b0c:  b4001aee    cbz x14, #860
  0x8001d2b10:  f94025ed    ldr x13, [x15, #72]
  0x8001d2b14:  b86879a8    ldr w8, [x13, x8, lsl #2]
  0x8001d2b18:  b94059cd    ldr w13, [x14, #88]
  0x8001d2b1c:  710009bf    cmp w13, #2
  0x8001d2b20:  540015a1    b.ne #692
  0x8001d2b24:  1e270101    fmov s1, w8
  0x8001d2b28:  f940318c    ldr x12, [x12, #96]
  0x8001d2b2c:  b4001c0c    cbz x12, #896
  0x8001d2b30:  52800308    mov w8, #24
  0x8001d2b34:  5280030d    mov w13, #24
  0x8001d2b38:  7940016b    ldrh w11, [x11]
  0x8001d2b3c:  9ba82548    umaddl x8, w10, w8, x9
  0x8001d2b40:  9bad2549    umaddl x9, w10, w13, x9
  0x8001d2b44:  79400929    ldrh w9, [x9, #4]
  0x8001d2b48:  79400508    ldrh w8, [x8, #2]
  0x8001d2b4c:  7100013f    cmp w9, #0
  0x8001d2b50:  1a9f17ea    cset w10, eq
  0x8001d2b54:  34001588    cbz w8, #688
  0x8001d2b58:  8b0b0d89    add x9, x12, x11, lsl #3
  0x8001d2b5c:  340001ca    cbz w10, #56
  0x8001d2b60:  aa1f03eb    mov x11, xzr
  0x8001d2b64:  9100212a    add x10, x9, #8
  0x8001d2b68:  b2607fec    mov x12, #-4294967296
  0x8001d2b6c:  d2c0002d    mov x13, #4294967296
  0x8001d2b70:  bc5f8142    ldur s2, [x10, #-8]
  0x8001d2b74:  1e222020    fcmp s1, s2
  0x8001d2b78:  540008e0    b.eq #284
  0x8001d2b7c:  54000784    b.mi #240
  0x8001d2b80:  9100056b    add x11, x11, #1
  0x8001d2b84:  8b0d018c    add x12, x12, x13
  0x8001d2b88:  9100214a    add x10, x10, #8
  0x8001d2b8c:  eb0b011f    cmp x8, x11
  0x8001d2b90:  54ffff01    b.ne #-32
  0x8001d2b94:  8b080d28    add x8, x9, x8, lsl #3
  0x8001d2b98:  bc5fc100    ldur s0, [x8, #-4]
  0x8001d2b9c:  14000046    b #280
  0x8001d2ba0:  f9402c48    ldr x8, [x2, #88]
  0x8001d2ba4:  f9400d0e    ldr x14, [x8, #24]
  0x8001d2ba8:  910081cf    add x15, x14, #32
  0x8001d2bac:  b94019ce    ldr w14, [x14, #24]
  0x8001d2bb0:  8b0e0df0    add x16, x15, x14, lsl #3
  0x8001d2bb4:  710009df    cmp w14, #2
  0x8001d2bb8:  9a8f320e    csel x14, x16, x15, lo
  0x8001d2bbc:  5280030f    mov w15, #24
  0x8001d2bc0:  f94001ce    ldr x14, [x14]
  0x8001d2bc4:  9baf254f    umaddl x15, w10, w15, x9
  0x8001d2bc8:  798029ef    ldrsh x15, [x15, #20]
  0x8001d2bcc:  b94069d0    ldr w16, [x14, #104]
  0x8001d2bd0:  f94039ce    ldr x14, [x14, #112]
  0x8001d2bd4:  6b0f021f    cmp w16, w15
  0x8001d2bd8:  540011a9    b.ls #564
  0x8001d2bdc:  38ef69ce    ldrsb w14, [x14, x15]
  0x8001d2be0:  37f8144e    tbnz w14, #31, #648
  0x8001d2be4:  12001dc4    and w4, w14, #0xff
  0x8001d2be8:  f001bbce    adrp x14, #58175488
  0x8001d2bec:  f945b9ce    ldr x14, [x14, #2928]
  0x8001d2bf0:  f94001d0    ldr x16, [x14]
  0x8001d2bf4:  b001bc0e    adrp x14, #58200064
  0x8001d2bf8:  f94311ce    ldr x14, [x14, #1568]
  0x8001d2bfc:  f94001cf    ldr x15, [x14]
  0x8001d2c00:  3940644e    ldrb w14, [x2, #25]
  0x8001d2c04:  aa0f03e0    mov x0, x15
  0x8001d2c08:  3618004e    tbz w14, #3, #8
  0x8001d2c0c:  aa1003e0    mov x0, x16
  0x8001d2c10:  7940890e    ldrh w14, [x8, #68]
  0x8001d2c14:  6b0401df    cmp w14, w4
  0x8001d2c18:  54000fe9    b.ls #508
  0x8001d2c1c:  f940250e    ldr x14, [x8, #72]
  0x8001d2c20:  f86459ce    ldr x14, [x14, w4, uxtw #3]
  0x8001d2c24:  b40010ae    cbz x14, #532
  0x8001d2c28:  b4001503    cbz x3, #672
  0x8001d2c2c:  f9401468    ldr x8, [x3, #40]
  0x8001d2c30:  b40014c8    cbz x8, #664
  0x8001d2c34:  39406508    ldrb w8, [x8, #25]
  0x8001d2c38:  36180048    tbz w8, #3, #8
  0x8001d2c3c:  aa1003ef    mov x15, x16
  0x8001d2c40:  b940606d    ldr w13, [x3, #96]
  0x8001d2c44:  37f8142d    tbnz w13, #31, #644
  0x8001d2c48:  9102c1e8    add x8, x15, #176
  0x8001d2c4c:  2a0d03ef    mov w15, w13
  0x8001d2c50:  8b2d4d0d    add x13, x8, w13, uxtw #3
  0x8001d2c54:  79c005ad    ldrsh w13, [x13, #2]
  0x8001d2c58:  6b0401bf    cmp w13, w4
  0x8001d2c5c:  540012e1    b.ne #604
  0x8001d2c60:  8b0f0d08    add x8, x8, x15, lsl #3
  0x8001d2c64:  b9400508    ldr w8, [x8, #4]
  0x8001d2c68:  17ffffac    b #-336
  0x8001d2c6c:  bc5fc140    ldur s0, [x10, #-4]
  0x8001d2c70:  b40001ab    cbz x11, #52
  0x8001d2c74:  8b8c752a    add x10, x9, x12, asr #29
  0x8001d2c78:  2d400d44    ldp s4, s3, [x10]
  0x8001d2c7c:  1e233800    fsub s0, s0, s3
  0x8001d2c80:  1e243842    fsub s2, s2, s4
  0x8001d2c84:  1e243821    fsub s1, s1, s4
  0x8001d2c88:  1e221800    fdiv s0, s0, s2
  0x8001d2c8c:  1f010c00    fmadd s0, s0, s1, s3
  0x8001d2c90:  14000005    b #20
  0x8001d2c94:  1100056b    add w11, w11, #1
  0x8001d2c98:  6b08017f    cmp w11, w8
  0x8001d2c9c:  54000403    b.lo #128
  0x8001d2ca0:  bc5fc140    ldur s0, [x10, #-4]
  0x8001d2ca4:  52aff00a    mov w10, #2139095040
  0x8001d2ca8:  1e270141    fmov s1, w10
  0x8001d2cac:  1e212000    fcmp s0, s1
  0x8001d2cb0:  54fff720    b.eq #-284
  0x8001d2cb4:  fd4013e8    ldr d8, [sp, #32]
  0x8001d2cb8:  f9401ff3    ldr x19, [sp, #56]
  0x8001d2cbc:  a942fbfd    ldp x29, x30, [sp, #40]
  0x8001d2cc0:  910103ff    add sp, sp, #64
  0x8001d2cc4:  d65f03c0    ret
  0x8001d2cc8:  7100451f    cmp w8, #17
  0x8001d2ccc:  54001308    b.hi #608
  0x8001d2cd0:  2a0803e9    mov w9, w8
  0x8001d2cd4:  b0015d0b    adrp x11, #45748224
  0x8001d2cd8:  9114c96b    add x11, x11, #1330
  0x8001d2cdc:  1000008c    adr x12, #16
  0x8001d2ce0:  7869796d    ldrh w13, [x11, x9, lsl #1]
  0x8001d2ce4:  8b0d098c    add x12, x12, x13, lsl #2
  0x8001d2ce8:  d61f0180    br x12
  0x8001d2cec:  f9400808    ldr x8, [x0, #16]
  0x8001d2cf0:  91008109    add x9, x8, #32
  0x8001d2cf4:  b9401908    ldr w8, [x8, #24]
  0x8001d2cf8:  8b080d2b    add x11, x9, x8, lsl #3
  0x8001d2cfc:  7100091f    cmp w8, #2
  0x8001d2d00:  9a893168    csel x8, x11, x9, lo
  0x8001d2d04:  12005d49    and w9, w10, #0xffffff
  0x8001d2d08:  f9400108    ldr x8, [x8]
  0x8001d2d0c:  f9400108    ldr x8, [x8]
  0x8001d2d10:  f9402508    ldr x8, [x8, #72]
  0x8001d2d14:  bc695900    ldr s0, [x8, w9, uxtw #2]
  0x8001d2d18:  17ffffe7    b #-100
  0x8001d2d1c:  bd400140    ldr s0, [x10]
  0x8001d2d20:  1e202040    fcmp s2, s0
  0x8001d2d24:  54fffbe1    b.ne #-132
  0x8001d2d28:  bd400540    ldr s0, [x10, #4]
  0x8001d2d2c:  17ffffde    b #-136
  0x8001d2d30:  f9400808    ldr x8, [x0, #16]
  0x8001d2d34:  91008109    add x9, x8, #32
  0x8001d2d38:  b9401908    ldr w8, [x8, #24]
  0x8001d2d3c:  8b080d2b    add x11, x9, x8, lsl #3
  0x8001d2d40:  7100091f    cmp w8, #2
  0x8001d2d44:  9a893168    csel x8, x11, x9, lo
  0x8001d2d48:  f9400108    ldr x8, [x8]
  0x8001d2d4c:  f9400108    ldr x8, [x8]
  0x8001d2d50:  f9402908    ldr x8, [x8, #80]
  0x8001d2d54:  b4000f48    cbz x8, #488
  0x8001d2d58:  92405d49    and x9, x10, #0xffffff
  0x8001d2d5c:  8b090d08    add x8, x8, x9, lsl #3
  0x8001d2d60:  2d400500    ldp s0, s1, [x8]
  0x8001d2d64:  1e202020    fcmp s1, s0
  0x8001d2d68:  54fffa6b    b.lt #-180
  0x8001d2d6c:  f9400c08    ldr x8, [x0, #24]
  0x8001d2d70:  1e3e1003    fmov s3, #-1.00000000
  0x8001d2d74:  1e203821    fsub s1, s1, s0
  0x8001d2d78:  b948dd0a    ldr w10, [x8, #2268]
  0x8001d2d7c:  b948d909    ldr w9, [x8, #2264]
  0x8001d2d80:  b908d90a    str w10, [x8, #2264]
  0x8001d2d84:  b948e10a    ldr w10, [x8, #2272]
  0x8001d2d88:  4a092d29    eor w9, w9, w9, lsl #11
  0x8001d2d8c:  53087d2b    lsr w11, w9, #8
  0x8001d2d90:  b908dd0a    str w10, [x8, #2268]
  0x8001d2d94:  b948e50a    ldr w10, [x8, #2276]
  0x8001d2d98:  4a4a4d6b    eor w11, w11, w10, lsr #19
  0x8001d2d9c:  4a0a0129    eor w9, w9, w10
  0x8001d2da0:  b908e10a    str w10, [x8, #2272]
  0x8001d2da4:  4a090169    eor w9, w11, w9
  0x8001d2da8:  b908e509    str w9, [x8, #2276]
  0x8001d2dac:  52a7f008    mov w8, #1065353216
  0x8001d2db0:  33097d28    bfxil w8, w9, #9, #23
  0x8001d2db4:  1e270102    fmov s2, w8
  0x8001d2db8:  1e232842    fadd s2, s2, s3
  0x8001d2dbc:  1e220821    fmul s1, s1, s2
  0x8001d2dc0:  1e212800    fadd s0, s0, s1
  0x8001d2dc4:  17ffffbc    b #-272
  0x8001d2dc8:  b001bc0e    adrp x14, #58200064
  0x8001d2dcc:  f94311ce    ldr x14, [x14, #1568]
  0x8001d2dd0:  17ffff49    b #-732
  0x8001d2dd4:  2f00e401    movi d1, #0000000000000000
  0x8001d2dd8:  710015bf    cmp w13, #5
  0x8001d2ddc:  54ffea68    b.hi #-692
  0x8001d2de0:  710015bf    cmp w13, #5
  0x8001d2de4:  54ffea00    b.eq #-704
  0x8001d2de8:  5280002e    mov w14, #1
  0x8001d2dec:  1acd21cd    lsl w13, w14, w13
  0x8001d2df0:  5280036e    mov w14, #27
  0x8001d2df4:  6a0e01bf    tst w13, w14
  0x8001d2df8:  54ffe980    b.eq #-720
  0x8001d2dfc:  1e220101    scvtf s1, w8
  0x8001d2e00:  17ffff4a    b #-728
  0x8001d2e04:  2a1f03ea    mov w10, wzr
  0x8001d2e08:  17ffff54    b #-688
  0x8001d2e0c:  aa1f03ef    mov x15, xzr
  0x8001d2e10:  17ffff73    b #-564
  0x8001d2e14:  90015223    adrp x3, #44318720
  0x8001d2e18:  912f4463    add x3, x3, #3025
  0x8001d2e1c:  f81f03a2    stur x2, [x29, #-16]
  0x8001d2e20:  528003a1    mov w1, #29
  0x8001d2e24:  aa0803e2    mov x2, x8
  0x8001d2e28:  f9000bed    str x13, [sp, #16]
  0x8001d2e2c:  a90027ea    stp x10, x9, [sp]
  0x8001d2e30:  941f85ab    bl #8263340
  0x8001d2e34:  1400000a    b #40
  0x8001d2e38:  f00154e3    adrp x3, #44691456
  0x8001d2e3c:  913f9463    add x3, x3, #4069
  0x8001d2e40:  f81f03a2    stur x2, [x29, #-16]
  0x8001d2e44:  52800261    mov w1, #19
  0x8001d2e48:  aa0803e2    mov x2, x8
  0x8001d2e4c:  f9000bed    str x13, [sp, #16]
  0x8001d2e50:  2a1f03e5    mov w5, wzr
  0x8001d2e54:  a90027ea    stp x10, x9, [sp]
  0x8001d2e58:  941f85a1    bl #8263300
  0x8001d2e5c:  a940b7e9    ldp x9, x13, [sp, #8]
  0x8001d2e60:  f94003ea    ldr x10, [sp]
  0x8001d2e64:  f85f03a2    ldur x2, [x29, #-16]
  0x8001d2e68:  f001bbc8    adrp x8, #58175488
  0x8001d2e6c:  b001bc0b    adrp x11, #58200064
  0x8001d2e70:  f945b908    ldr x8, [x8, #2928]
  0x8001d2e74:  f943116b    ldr x11, [x11, #1568]
  0x8001d2e78:  b00152e3    adrp x3, #44421120
  0x8001d2e7c:  91062c63    add x3, x3, #395
  0x8001d2e80:  b940184c    ldr w12, [x2, #24]
  0x8001d2e84:  52800261    mov w1, #19
  0x8001d2e88:  7215019f    tst w12, #0x800
  0x8001d2e8c:  f9402c42    ldr x2, [x2, #88]
  0x8001d2e90:  794001a5    ldrh w5, [x13]
  0x8001d2e94:  9a880168    csel x8, x11, x8, eq
  0x8001d2e98:  f9400100    ldr x0, [x8]
  0x8001d2e9c:  52800308    mov w8, #24
  0x8001d2ea0:  9ba82548    umaddl x8, w10, w8, x9
  0x8001d2ea4:  f9400504    ldr x4, [x8, #8]
  0x8001d2ea8:  941f858d    bl #8263220
  0x8001d2eac:  52aff008    mov w8, #2139095040
  0x8001d2eb0:  1e270100    fmov s0, w8
  0x8001d2eb4:  17ffff80    b #-512
  0x8001d2eb8:  d37df1ed    lsl x13, x15, #3
  0x8001d2ebc:  78ed690f    ldrsh w15, [x8, x13]
  0x8001d2ec0:  12003ded    and w13, w15, #0xffff
  0x8001d2ec4:  36ffec4f    tbz w15, #31, #-632
  0x8001d2ec8:  b94059c8    ldr w8, [x14, #88]
  0x8001d2ecc:  51000d0d    sub w13, w8, #3
  0x8001d2ed0:  710009bf    cmp w13, #2
  0x8001d2ed4:  540000a9    b.ls #20
  0x8001d2ed8:  f9404c48    ldr x8, [x2, #152]
  0x8001d2edc:  bc647900    ldr s0, [x8, x4, lsl #2]
  0x8001d2ee0:  1e260008    fmov w8, s0
  0x8001d2ee4:  17ffff0d    b #-972
  0x8001d2ee8:  f940504d    ldr x13, [x2, #160]
  0x8001d2eec:  b400324d    cbz x13, #1608
  0x8001d2ef0:  aa0203ef    mov x15, x2
  0x8001d2ef4:  f9404c4f    ldr x15, [x2, #152]
  0x8001d2ef8:  b8a479ef    ldrsw x15, [x15, x4, lsl #2]
  0x8001d2efc:  f86f79ad    ldr x13, [x13, x15, lsl #3]
  0x8001d2f00:  b40031ad    cbz x13, #1588
  0x8001d2f04:  71000d1f    cmp w8, #3
  0x8001d2f08:  54003101    b.ne #1568
  0x8001d2f0c:  394001a8    ldrb w8, [x13]
  0x8001d2f10:  2f00e401    movi d1, #0000000000000000
  0x8001d2f14:  7100011f    cmp w8, #0
  0x8001d2f18:  52800028    mov w8, #1
  0x8001d2f1c:  1e270100    fmov s0, w8
  0x8001d2f20:  1e200c20    fcsel s0, s1, s0, eq
  0x8001d2f24:  1e260008    fmov w8, s0
  0x8001d2f28:  17fffefc    b #-1040
  0x8001d2f2c:  f0015101    adrp x1, #44183552
  0x8001d2f30:  91055021    add x1, x1, #340
  0x8001d2f34:  2a0803e2    mov w2, w8
  0x8001d2f38:  949c0399    bl #40898148
  0x8001d2f3c:  2f00e400    movi d0, #0000000000000000
  0x8001d2f40:  17ffff5d    b #-652
  0x8001d2f44:  f9400808    ldr x8, [x0, #16]
  0x8001d2f48:  2f00e400    movi d0, #0000000000000000
  0x8001d2f4c:  91008109    add x9, x8, #32
  0x8001d2f50:  b9401908    ldr w8, [x8, #24]
  0x8001d2f54:  8b080d2b    add x11, x9, x8, lsl #3
  0x8001d2f58:  7100091f    cmp w8, #2
  0x8001d2f5c:  9a893168    csel x8, x11, x9, lo
  0x8001d2f60:  f9400108    ldr x8, [x8]
  0x8001d2f64:  f9400108    ldr x8, [x8]
  0x8001d2f68:  f9402908    ldr x8, [x8, #80]
  0x8001d2f6c:  b4ffea48    cbz x8, #-696
  0x8001d2f70:  92405d49    and x9, x10, #0xffffff
  0x8001d2f74:  1e201000    fmov s0, #2.00000000
  0x8001d2f78:  1400002a    b #168
  0x8001d2f7c:  f9400808    ldr x8, [x0, #16]
  0x8001d2f80:  2f00e400    movi d0, #0000000000000000
  0x8001d2f84:  91008109    add x9, x8, #32
  0x8001d2f88:  b9401908    ldr w8, [x8, #24]
  0x8001d2f8c:  8b080d2b    add x11, x9, x8, lsl #3
  0x8001d2f90:  7100091f    cmp w8, #2
  0x8001d2f94:  9a893168    csel x8, x11, x9, lo
  0x8001d2f98:  f9400108    ldr x8, [x8]
  0x8001d2f9c:  f9400108    ldr x8, [x8]
  0x8001d2fa0:  f9402908    ldr x8, [x8, #80]
  0x8001d2fa4:  b4ffe888    cbz x8, #-752
  0x8001d2fa8:  92405d49    and x9, x10, #0xffffff
  0x8001d2fac:  1e211000    fmov s0, #3.00000000
  0x8001d2fb0:  1400001c    b #112
  0x8001d2fb4:  f9400808    ldr x8, [x0, #16]
  0x8001d2fb8:  2f00e400    movi d0, #0000000000000000
  0x8001d2fbc:  91008109    add x9, x8, #32
  0x8001d2fc0:  b9401908    ldr w8, [x8, #24]
  0x8001d2fc4:  8b080d2b    add x11, x9, x8, lsl #3
  0x8001d2fc8:  7100091f    cmp w8, #2
  0x8001d2fcc:  9a893168    csel x8, x11, x9, lo
  0x8001d2fd0:  f9400108    ldr x8, [x8]
  0x8001d2fd4:  f9400108    ldr x8, [x8]
  0x8001d2fd8:  f9402908    ldr x8, [x8, #80]
  0x8001d2fdc:  b4ffe6c8    cbz x8, #-808
  0x8001d2fe0:  92405d49    and x9, x10, #0xffffff
  0x8001d2fe4:  1e221000    fmov s0, #4.00000000
  0x8001d2fe8:  1400000e    b #56
  0x8001d2fec:  f9400808    ldr x8, [x0, #16]
  0x8001d2ff0:  2f00e400    movi d0, #0000000000000000
  0x8001d2ff4:  91008109    add x9, x8, #32
  0x8001d2ff8:  b9401908    ldr w8, [x8, #24]
  0x8001d2ffc:  8b080d2b    add x11, x9, x8, lsl #3
  0x8001d3000:  7100091f    cmp w8, #2
  0x8001d3004:  9a893168    csel x8, x11, x9, lo
  0x8001d3008:  f9400108    ldr x8, [x8]
  0x8001d300c:  f9400108    ldr x8, [x8]
  0x8001d3010:  f9402908    ldr x8, [x8, #80]
  0x8001d3014:  b4ffe508    cbz x8, #-864
  0x8001d3018:  92405d49    and x9, x10, #0xffffff
  0x8001d301c:  1e2f1000    fmov s0, #1.50000000
  0x8001d3020:  8b090d01    add x1, x8, x9, lsl #3
  0x8001d3024:  fd4013e8    ldr d8, [sp, #32]
  0x8001d3028:  f9401ff3    ldr x19, [sp, #56]
  0x8001d302c:  a942fbfd    ldp x29, x30, [sp, #40]
  0x8001d3030:  910103ff    add sp, sp, #64
  0x8001d3034:  149c03da    b #40898408
  0x8001d3038:  f9400808    ldr x8, [x0, #16]
  0x8001d303c:  91008109    add x9, x8, #32
  0x8001d3040:  b9401908    ldr w8, [x8, #24]
  0x8001d3044:  8b080d2b    add x11, x9, x8, lsl #3
  0x8001d3048:  7100091f    cmp w8, #2
  0x8001d304c:  9a893168    csel x8, x11, x9, lo
  0x8001d3050:  f9400108    ldr x8, [x8]
  0x8001d3054:  f9400108    ldr x8, [x8]
  0x8001d3058:  f9402908    ldr x8, [x8, #80]
  0x8001d305c:  b4fff708    cbz x8, #-288
  0x8001d3060:  92405d49    and x9, x10, #0xffffff
  0x8001d3064:  1e3e1002    fmov s2, #-1.00000000
  0x8001d3068:  8b090d08    add x8, x8, x9, lsl #3
  0x8001d306c:  f9400c09    ldr x9, [x0, #24]
  0x8001d3070:  2d400101    ldp s1, s0, [x8]
  0x8001d3074:  b948dd2b    ldr w11, [x9, #2268]
  0x8001d3078:  b948d92a    ldr w10, [x9, #2264]
  0x8001d307c:  1e213800    fsub s0, s0, s1
  0x8001d3080:  b908d92b    str w11, [x9, #2264]
  0x8001d3084:  b948e12b    ldr w11, [x9, #2272]
  0x8001d3088:  4a0a2d4a    eor w10, w10, w10, lsl #11
  0x8001d308c:  53087d4c    lsr w12, w10, #8
  0x8001d3090:  b908dd2b    str w11, [x9, #2268]
  0x8001d3094:  b948e52b    ldr w11, [x9, #2276]
  0x8001d3098:  1e214001    fneg s1, s0
  0x8001d309c:  1e202008    fcmp s0, #0.0
  0x8001d30a0:  1e20bc20    fcsel s0, s1, s0, lt
  0x8001d30a4:  4a4b4d8c    eor w12, w12, w11, lsr #19
  0x8001d30a8:  4a0b014a    eor w10, w10, w11
  0x8001d30ac:  b908e12b    str w11, [x9, #2272]
  0x8001d30b0:  4a0a018a    eor w10, w12, w10
  0x8001d30b4:  b908e52a    str w10, [x9, #2276]
  0x8001d30b8:  52a7f009    mov w9, #1065353216
  0x8001d30bc:  33097d49    bfxil w9, w10, #9, #23
  0x8001d30c0:  1e270121    fmov s1, w9
  0x8001d30c4:  1e222821    fadd s1, s1, s2
  0x8001d30c8:  1e210821    fmul s1, s1, s1
  0x8001d30cc:  1400009b    b #620
  0x8001d30d0:  f9400808    ldr x8, [x0, #16]
  0x8001d30d4:  91008109    add x9, x8, #32
  0x8001d30d8:  b9401908    ldr w8, [x8, #24]
  0x8001d30dc:  8b080d2b    add x11, x9, x8, lsl #3
  0x8001d30e0:  7100091f    cmp w8, #2
  0x8001d30e4:  9a893168    csel x8, x11, x9, lo
  0x8001d30e8:  f9400108    ldr x8, [x8]
  0x8001d30ec:  f9400108    ldr x8, [x8]
  0x8001d30f0:  f9402908    ldr x8, [x8, #80]
  0x8001d30f4:  b4fff248    cbz x8, #-440
  0x8001d30f8:  f9400c09    ldr x9, [x0, #24]
  0x8001d30fc:  12005d4a    and w10, w10, #0xffffff
  0x8001d3100:  8b2a4d13    add x19, x8, w10, uxtw #3
  0x8001d3104:  2d400261    ldp s1, s0, [x19]
  0x8001d3108:  b948dd2a    ldr w10, [x9, #2268]
  0x8001d310c:  b948d928    ldr w8, [x9, #2264]
  0x8001d3110:  b908d92a    str w10, [x9, #2264]
  0x8001d3114:  b948e12a    ldr w10, [x9, #2272]
  0x8001d3118:  4a082d08    eor w8, w8, w8, lsl #11
  0x8001d311c:  1e213800    fsub s0, s0, s1
  0x8001d3120:  53087d0b    lsr w11, w8, #8
  0x8001d3124:  b908dd2a    str w10, [x9, #2268]
  0x8001d3128:  b948e52a    ldr w10, [x9, #2276]
  0x8001d312c:  1e214001    fneg s1, s0
  0x8001d3130:  1e202008    fcmp s0, #0.0
  0x8001d3134:  4a4a4d6b    eor w11, w11, w10, lsr #19
  0x8001d3138:  4a0a0108    eor w8, w8, w10
  0x8001d313c:  b908e12a    str w10, [x9, #2272]
  0x8001d3140:  1e20bc28    fcsel s8, s1, s0, lt
  0x8001d3144:  1e3e1001    fmov s1, #-1.00000000
  0x8001d3148:  4a080168    eor w8, w11, w8
  0x8001d314c:  b908e528    str w8, [x9, #2276]
  0x8001d3150:  52a7f009    mov w9, #1065353216
  0x8001d3154:  33097d09    bfxil w9, w8, #9, #23
  0x8001d3158:  1e270120    fmov s0, w9
  0x8001d315c:  1e212800    fadd s0, s0, s1
  0x8001d3160:  1e211001    fmov s1, #3.00000000
  0x8001d3164:  1400004c    b #304
  0x8001d3168:  f9400808    ldr x8, [x0, #16]
  0x8001d316c:  91008109    add x9, x8, #32
  0x8001d3170:  b9401908    ldr w8, [x8, #24]
  0x8001d3174:  8b080d2b    add x11, x9, x8, lsl #3
  0x8001d3178:  7100091f    cmp w8, #2
  0x8001d317c:  9a893168    csel x8, x11, x9, lo
  0x8001d3180:  f9400108    ldr x8, [x8]
  0x8001d3184:  f9400108    ldr x8, [x8]
  0x8001d3188:  f9402908    ldr x8, [x8, #80]
  0x8001d318c:  b4ffed88    cbz x8, #-592
  0x8001d3190:  f9400c09    ldr x9, [x0, #24]
  0x8001d3194:  12005d4a    and w10, w10, #0xffffff
  0x8001d3198:  8b2a4d13    add x19, x8, w10, uxtw #3
  0x8001d319c:  2d400261    ldp s1, s0, [x19]
  0x8001d31a0:  b948dd2a    ldr w10, [x9, #2268]
  0x8001d31a4:  b948d928    ldr w8, [x9, #2264]
  0x8001d31a8:  b908d92a    str w10, [x9, #2264]
  0x8001d31ac:  b948e12a    ldr w10, [x9, #2272]
  0x8001d31b0:  4a082d08    eor w8, w8, w8, lsl #11
  0x8001d31b4:  1e213800    fsub s0, s0, s1
  0x8001d31b8:  53087d0b    lsr w11, w8, #8
  0x8001d31bc:  b908dd2a    str w10, [x9, #2268]
  0x8001d31c0:  b948e52a    ldr w10, [x9, #2276]
  0x8001d31c4:  1e214001    fneg s1, s0
  0x8001d31c8:  1e202008    fcmp s0, #0.0
  0x8001d31cc:  4a4a4d6b    eor w11, w11, w10, lsr #19
  0x8001d31d0:  4a0a0108    eor w8, w8, w10
  0x8001d31d4:  b908e12a    str w10, [x9, #2272]
  0x8001d31d8:  1e20bc28    fcsel s8, s1, s0, lt
  0x8001d31dc:  1e3e1001    fmov s1, #-1.00000000
  0x8001d31e0:  4a080168    eor w8, w11, w8
  0x8001d31e4:  b908e528    str w8, [x9, #2276]
  0x8001d31e8:  52a7f009    mov w9, #1065353216
  0x8001d31ec:  33097d09    bfxil w9, w8, #9, #23
  0x8001d31f0:  1e270120    fmov s0, w9
  0x8001d31f4:  1e212800    fadd s0, s0, s1
  0x8001d31f8:  1e221001    fmov s1, #4.00000000
  0x8001d31fc:  14000026    b #152
  0x8001d3200:  f9400808    ldr x8, [x0, #16]
  0x8001d3204:  91008109    add x9, x8, #32
  0x8001d3208:  b9401908    ldr w8, [x8, #24]
  0x8001d320c:  8b080d2b    add x11, x9, x8, lsl #3
  0x8001d3210:  7100091f    cmp w8, #2
  0x8001d3214:  9a893168    csel x8, x11, x9, lo
  0x8001d3218:  f9400108    ldr x8, [x8]
  0x8001d321c:  f9400108    ldr x8, [x8]
  0x8001d3220:  f9402908    ldr x8, [x8, #80]
  0x8001d3224:  b4ffe8c8    cbz x8, #-744
  0x8001d3228:  f9400c09    ldr x9, [x0, #24]
  0x8001d322c:  92405d4a    and x10, x10, #0xffffff
  0x8001d3230:  8b0a0d13    add x19, x8, x10, lsl #3
  0x8001d3234:  2d400261    ldp s1, s0, [x19]
  0x8001d3238:  b948dd2a    ldr w10, [x9, #2268]
  0x8001d323c:  b948d928    ldr w8, [x9, #2264]
  0x8001d3240:  b908d92a    str w10, [x9, #2264]
  0x8001d3244:  b948e12a    ldr w10, [x9, #2272]
  0x8001d3248:  4a082d08    eor w8, w8, w8, lsl #11
  0x8001d324c:  1e213800    fsub s0, s0, s1
  0x8001d3250:  53087d0b    lsr w11, w8, #8
  0x8001d3254:  b908dd2a    str w10, [x9, #2268]
  0x8001d3258:  b948e52a    ldr w10, [x9, #2276]
  0x8001d325c:  1e214001    fneg s1, s0
  0x8001d3260:  1e202008    fcmp s0, #0.0
  0x8001d3264:  4a4a4d6b    eor w11, w11, w10, lsr #19
  0x8001d3268:  4a0a0108    eor w8, w8, w10
  0x8001d326c:  b908e12a    str w10, [x9, #2272]
  0x8001d3270:  1e20bc28    fcsel s8, s1, s0, lt
  0x8001d3274:  1e3e1001    fmov s1, #-1.00000000
  0x8001d3278:  4a080168    eor w8, w11, w8
  0x8001d327c:  b908e528    str w8, [x9, #2276]
  0x8001d3280:  52a7f009    mov w9, #1065353216
  0x8001d3284:  33097d09    bfxil w9, w8, #9, #23
  0x8001d3288:  1e270120    fmov s0, w9
  0x8001d328c:  1e212800    fadd s0, s0, s1
  0x8001d3290:  1e2f1001    fmov s1, #1.50000000
  0x8001d3294:  94a741db    bl #43845484
  0x8001d3298:  140000a0    b #640
  0x8001d329c:  f9400808    ldr x8, [x0, #16]
  0x8001d32a0:  91008109    add x9, x8, #32
  0x8001d32a4:  b9401908    ldr w8, [x8, #24]
  0x8001d32a8:  8b080d2b    add x11, x9, x8, lsl #3
  0x8001d32ac:  7100091f    cmp w8, #2
  0x8001d32b0:  9a893168    csel x8, x11, x9, lo
  0x8001d32b4:  f9400108    ldr x8, [x8]
  0x8001d32b8:  f9400108    ldr x8, [x8]
  0x8001d32bc:  f9402908    ldr x8, [x8, #80]
  0x8001d32c0:  b4ffe3e8    cbz x8, #-900
  0x8001d32c4:  12005d49    and w9, w10, #0xffffff
  0x8001d32c8:  1e3e1002    fmov s2, #-1.00000000
  0x8001d32cc:  8b294d08    add x8, x8, w9, uxtw #3
  0x8001d32d0:  f9400c09    ldr x9, [x0, #24]
  0x8001d32d4:  2d400101    ldp s1, s0, [x8]
  0x8001d32d8:  b948dd2b    ldr w11, [x9, #2268]
  0x8001d32dc:  b948d92a    ldr w10, [x9, #2264]
  0x8001d32e0:  1e213800    fsub s0, s0, s1
  0x8001d32e4:  b908d92b    str w11, [x9, #2264]
  0x8001d32e8:  b948e12b    ldr w11, [x9, #2272]
  0x8001d32ec:  4a0a2d4a    eor w10, w10, w10, lsl #11
  0x8001d32f0:  53087d4c    lsr w12, w10, #8
  0x8001d32f4:  b908dd2b    str w11, [x9, #2268]
  0x8001d32f8:  b948e52b    ldr w11, [x9, #2276]
  0x8001d32fc:  1e214001    fneg s1, s0
  0x8001d3300:  1e202008    fcmp s0, #0.0
  0x8001d3304:  1e20bc20    fcsel s0, s1, s0, lt
  0x8001d3308:  4a4b4d8c    eor w12, w12, w11, lsr #19
  0x8001d330c:  4a0b014a    eor w10, w10, w11
  0x8001d3310:  b908e12b    str w11, [x9, #2272]
  0x8001d3314:  4a0a018a    eor w10, w12, w10
  0x8001d3318:  b908e52a    str w10, [x9, #2276]
  0x8001d331c:  52a7f009    mov w9, #1065353216
  0x8001d3320:  33097d49    bfxil w9, w10, #9, #23
  0x8001d3324:  1e270121    fmov s1, w9
  0x8001d3328:  1e222821    fadd s1, s1, s2
  0x8001d332c:  1e2e1002    fmov s2, #1.00000000
  0x8001d3330:  1e210821    fmul s1, s1, s1
  0x8001d3334:  1e213841    fsub s1, s2, s1
  0x8001d3338:  1e210800    fmul s0, s0, s1
  0x8001d333c:  bd400101    ldr s1, [x8]
  0x8001d3340:  1e202820    fadd s0, s1, s0
  0x8001d3344:  17fffe5c    b #-1680
  0x8001d3348:  f9400808    ldr x8, [x0, #16]
  0x8001d334c:  91008109    add x9, x8, #32
  0x8001d3350:  b9401908    ldr w8, [x8, #24]
  0x8001d3354:  8b080d2b    add x11, x9, x8, lsl #3
  0x8001d3358:  7100091f    cmp w8, #2
  0x8001d335c:  9a893168    csel x8, x11, x9, lo
  0x8001d3360:  f9400108    ldr x8, [x8]
  0x8001d3364:  f9400108    ldr x8, [x8]
  0x8001d3368:  f9402908    ldr x8, [x8, #80]
  0x8001d336c:  b4ffde88    cbz x8, #-1072
  0x8001d3370:  f9400c09    ldr x9, [x0, #24]
  0x8001d3374:  12005d4a    and w10, w10, #0xffffff
  0x8001d3378:  8b2a4d13    add x19, x8, w10, uxtw #3
  0x8001d337c:  2d400261    ldp s1, s0, [x19]
  0x8001d3380:  b948dd2a    ldr w10, [x9, #2268]
  0x8001d3384:  b948d928    ldr w8, [x9, #2264]
  0x8001d3388:  b908d92a    str w10, [x9, #2264]
  0x8001d338c:  b948e12a    ldr w10, [x9, #2272]
  0x8001d3390:  4a082d08    eor w8, w8, w8, lsl #11
  0x8001d3394:  1e213800    fsub s0, s0, s1
  0x8001d3398:  53087d0b    lsr w11, w8, #8
  0x8001d339c:  b908dd2a    str w10, [x9, #2268]
  0x8001d33a0:  b948e52a    ldr w10, [x9, #2276]
  0x8001d33a4:  1e214001    fneg s1, s0
  0x8001d33a8:  1e202008    fcmp s0, #0.0
  0x8001d33ac:  4a4a4d6b    eor w11, w11, w10, lsr #19
  0x8001d33b0:  4a0a0108    eor w8, w8, w10
  0x8001d33b4:  b908e12a    str w10, [x9, #2272]
  0x8001d33b8:  1e20bc28    fcsel s8, s1, s0, lt
  0x8001d33bc:  1e3e1001    fmov s1, #-1.00000000
  0x8001d33c0:  4a080168    eor w8, w11, w8
  0x8001d33c4:  b908e528    str w8, [x9, #2276]
  0x8001d33c8:  52a7f009    mov w9, #1065353216
  0x8001d33cc:  33097d09    bfxil w9, w8, #9, #23
  0x8001d33d0:  1e270120    fmov s0, w9
  0x8001d33d4:  1e212800    fadd s0, s0, s1
  0x8001d33d8:  1e211001    fmov s1, #3.00000000
  0x8001d33dc:  1400004c    b #304
  0x8001d33e0:  f9400808    ldr x8, [x0, #16]
  0x8001d33e4:  91008109    add x9, x8, #32
  0x8001d33e8:  b9401908    ldr w8, [x8, #24]
  0x8001d33ec:  8b080d2b    add x11, x9, x8, lsl #3
  0x8001d33f0:  7100091f    cmp w8, #2
  0x8001d33f4:  9a893168    csel x8, x11, x9, lo
  0x8001d33f8:  f9400108    ldr x8, [x8]
  0x8001d33fc:  f9400108    ldr x8, [x8]
  0x8001d3400:  f9402908    ldr x8, [x8, #80]
  0x8001d3404:  b4ffd9c8    cbz x8, #-1224
  0x8001d3408:  f9400c09    ldr x9, [x0, #24]
  0x8001d340c:  12005d4a    and w10, w10, #0xffffff
  0x8001d3410:  8b2a4d13    add x19, x8, w10, uxtw #3
  0x8001d3414:  2d400261    ldp s1, s0, [x19]
  0x8001d3418:  b948dd2a    ldr w10, [x9, #2268]
  0x8001d341c:  b948d928    ldr w8, [x9, #2264]
  0x8001d3420:  b908d92a    str w10, [x9, #2264]
  0x8001d3424:  b948e12a    ldr w10, [x9, #2272]
  0x8001d3428:  4a082d08    eor w8, w8, w8, lsl #11
  0x8001d342c:  1e213800    fsub s0, s0, s1
  0x8001d3430:  53087d0b    lsr w11, w8, #8
  0x8001d3434:  b908dd2a    str w10, [x9, #2268]
  0x8001d3438:  b948e52a    ldr w10, [x9, #2276]
  0x8001d343c:  1e214001    fneg s1, s0
  0x8001d3440:  1e202008    fcmp s0, #0.0
  0x8001d3444:  4a4a4d6b    eor w11, w11, w10, lsr #19
  0x8001d3448:  4a0a0108    eor w8, w8, w10
  0x8001d344c:  b908e12a    str w10, [x9, #2272]
  0x8001d3450:  1e20bc28    fcsel s8, s1, s0, lt
  0x8001d3454:  1e3e1001    fmov s1, #-1.00000000
  0x8001d3458:  4a080168    eor w8, w11, w8
  0x8001d345c:  b908e528    str w8, [x9, #2276]
  0x8001d3460:  52a7f009    mov w9, #1065353216
  0x8001d3464:  33097d09    bfxil w9, w8, #9, #23
  0x8001d3468:  1e270120    fmov s0, w9
  0x8001d346c:  1e212800    fadd s0, s0, s1
  0x8001d3470:  1e221001    fmov s1, #4.00000000
  0x8001d3474:  14000026    b #152
  0x8001d3478:  f9400808    ldr x8, [x0, #16]
  0x8001d347c:  91008109    add x9, x8, #32
  0x8001d3480:  b9401908    ldr w8, [x8, #24]
  0x8001d3484:  8b080d2b    add x11, x9, x8, lsl #3
  0x8001d3488:  7100091f    cmp w8, #2
  0x8001d348c:  9a893168    csel x8, x11, x9, lo
  0x8001d3490:  f9400108    ldr x8, [x8]
  0x8001d3494:  f9400108    ldr x8, [x8]
  0x8001d3498:  f9402908    ldr x8, [x8, #80]
  0x8001d349c:  b4ffd508    cbz x8, #-1376
  0x8001d34a0:  f9400c09    ldr x9, [x0, #24]
  0x8001d34a4:  12005d4a    and w10, w10, #0xffffff
  0x8001d34a8:  8b2a4d13    add x19, x8, w10, uxtw #3
  0x8001d34ac:  2d400261    ldp s1, s0, [x19]
  0x8001d34b0:  b948dd2a    ldr w10, [x9, #2268]
  0x8001d34b4:  b948d928    ldr w8, [x9, #2264]
  0x8001d34b8:  b908d92a    str w10, [x9, #2264]
  0x8001d34bc:  b948e12a    ldr w10, [x9, #2272]
  0x8001d34c0:  4a082d08    eor w8, w8, w8, lsl #11
  0x8001d34c4:  1e213800    fsub s0, s0, s1
  0x8001d34c8:  53087d0b    lsr w11, w8, #8
  0x8001d34cc:  b908dd2a    str w10, [x9, #2268]
  0x8001d34d0:  b948e52a    ldr w10, [x9, #2276]
  0x8001d34d4:  1e214001    fneg s1, s0
  0x8001d34d8:  1e202008    fcmp s0, #0.0
  0x8001d34dc:  4a4a4d6b    eor w11, w11, w10, lsr #19
  0x8001d34e0:  4a0a0108    eor w8, w8, w10
  0x8001d34e4:  b908e12a    str w10, [x9, #2272]
  0x8001d34e8:  1e20bc28    fcsel s8, s1, s0, lt
  0x8001d34ec:  1e3e1001    fmov s1, #-1.00000000
  0x8001d34f0:  4a080168    eor w8, w11, w8
  0x8001d34f4:  b908e528    str w8, [x9, #2276]
  0x8001d34f8:  52a7f009    mov w9, #1065353216
  0x8001d34fc:  33097d09    bfxil w9, w8, #9, #23
  0x8001d3500:  1e270120    fmov s0, w9
  0x8001d3504:  1e212800    fadd s0, s0, s1
  0x8001d3508:  1e2f1001    fmov s1, #1.50000000
  0x8001d350c:  94a7413d    bl #43844852
  0x8001d3510:  1e2e1001    fmov s1, #1.00000000
  0x8001d3514:  1e203820    fsub s0, s1, s0
  0x8001d3518:  1e200900    fmul s0, s8, s0
  0x8001d351c:  bd400261    ldr s1, [x19]
  0x8001d3520:  1e202820    fadd s0, s1, s0
  0x8001d3524:  17fffde4    b #-2160
  0x8001d3528:  bd4001a0    ldr s0, [x13]
  0x8001d352c:  1e260008    fmov w8, s0
  0x8001d3530:  17fffd7a    b #-2584
  0x8001d3534:  2a1f03e8    mov w8, wzr
  0x8001d3538:  17fffd78    b #-2592

