; UltraTears chunk main_107_arenabucket: 1 functions [0x8001a6c10..0x8001a771c)

; Function f_8001a6c10 [0x8001a6c10..0x8001a771c)
f_8001a6c10:
  0x8001a6c10:  d10243ff    sub sp, sp, #144
  0x8001a6c14:  a9037bfd    stp x29, x30, [sp, #48]
  0x8001a6c18:  a9046ffc    stp x28, x27, [sp, #64]
  0x8001a6c1c:  a90567fa    stp x26, x25, [sp, #80]
  0x8001a6c20:  a9065ff8    stp x24, x23, [sp, #96]
  0x8001a6c24:  a90757f6    stp x22, x21, [sp, #112]
  0x8001a6c28:  a9084ff4    stp x20, x19, [sp, #128]
  0x8001a6c2c:  9100c3fd    add x29, sp, #48
  0x8001a6c30:  b001bd38    adrp x24, #58347520
  0x8001a6c34:  2a0203f4    mov w20, w2
  0x8001a6c38:  f9454318    ldr x24, [x24, #2688]
  0x8001a6c3c:  aa0003f5    mov x21, x0
  0x8001a6c40:  f9400316    ldr x22, [x24]
  0x8001a6c44:  b4003096    cbz x22, #1552
  0x8001a6c48:  aa0103f3    mov x19, x1
  0x8001a6c4c:  b4002cc1    cbz x1, #1432
  0x8001a6c50:  f9400268    ldr x8, [x19]
  0x8001a6c54:  f9401903    ldr x3, [x8, #48]
  0x8001a6c58:  90002328    adrp x8, #4603904
  0x8001a6c5c:  91374108    add x8, x8, #3536
  0x8001a6c60:  eb08007f    cmp x3, x8
  0x8001a6c64:  54000521    b.ne #164
  0x8001a6c68:  b940aa68    ldr w8, [x19, #168]
  0x8001a6c6c:  91022277    add x23, x19, #136
  0x8001a6c70:  37003068    tbnz w8, #0, #1548
  0x8001a6c74:  aa1f03f6    mov x22, xzr
  0x8001a6c78:  f10022bf    cmp x21, #8
  0x8001a6c7c:  52800108    mov w8, #8
  0x8001a6c80:  f9400309    ldr x9, [x24]
  0x8001a6c84:  9a8882a8    csel x8, x21, x8, hi
  0x8001a6c88:  7100029f    cmp w20, #0
  0x8001a6c8c:  91001d08    add x8, x8, #7
  0x8001a6c90:  927df119    and x25, x8, #0xfffffffffffffff8
  0x8001a6c94:  5a945688    cneg w8, w20, mi
  0x8001a6c98:  5100050a    sub w10, w8, #1
  0x8001a6c9c:  6a0a011f    tst w8, w10
  0x8001a6ca0:  54002f61    b.ne #1516
  0x8001a6ca4:  b940826a    ldr w10, [x19, #128]
  0x8001a6ca8:  1b147d4a    mul w10, w10, w20
  0x8001a6cac:  37f8304a    tbnz w10, #31, #1544
  0x8001a6cb0:  f9405a6b    ldr x11, [x19, #176]
  0x8001a6cb4:  5100054c    sub w12, w10, #1
  0x8001a6cb8:  8b0c016b    add x11, x11, x12
  0x8001a6cbc:  8a2c0178    bic x24, x11, x12
  0x8001a6cc0:  8b19030b    add x11, x24, x25
  0x8001a6cc4:  eb18017f    cmp x11, x24
  0x8001a6cc8:  540020e3    b.lo #1052
  0x8001a6ccc:  f9405e6c    ldr x12, [x19, #184]
  0x8001a6cd0:  eb0b019f    cmp x12, x11
  0x8001a6cd4:  54002083    b.lo #1040
  0x8001a6cd8:  f9005a6b    str x11, [x19, #176]
  0x8001a6cdc:  b40020b8    cbz x24, #1044
  0x8001a6ce0:  b5000eb6    cbnz x22, #468
  0x8001a6ce4:  aa1803e0    mov x0, x24
  0x8001a6ce8:  a9484ff4    ldp x20, x19, [sp, #128]
  0x8001a6cec:  a94757f6    ldp x22, x21, [sp, #112]
  0x8001a6cf0:  a9465ff8    ldp x24, x23, [sp, #96]
  0x8001a6cf4:  a94567fa    ldp x26, x25, [sp, #80]
  0x8001a6cf8:  a9446ffc    ldp x28, x27, [sp, #64]
  0x8001a6cfc:  a9437bfd    ldp x29, x30, [sp, #48]
  0x8001a6d00:  910243ff    add sp, sp, #144
  0x8001a6d04:  d65f03c0    ret
  0x8001a6d08:  d503201f    nop
  0x8001a6d0c:  10340a08    adr x8, #426304
  0x8001a6d10:  eb08007f    cmp x3, x8
  0x8001a6d14:  54000ec0    b.eq #472
  0x8001a6d18:  d503201f    nop
  0x8001a6d1c:  10eab1a8    adr x8, #-174540
  0x8001a6d20:  eb08007f    cmp x3, x8
  0x8001a6d24:  54000ce1    b.ne #412
  0x8001a6d28:  f10022bf    cmp x21, #8
  0x8001a6d2c:  52800108    mov w8, #8
  0x8001a6d30:  f9400319    ldr x25, [x24]
  0x8001a6d34:  9a8882a8    csel x8, x21, x8, hi
  0x8001a6d38:  7100029f    cmp w20, #0
  0x8001a6d3c:  5a945689    cneg w9, w20, mi
  0x8001a6d40:  5100052a    sub w10, w9, #1
  0x8001a6d44:  6a0a013f    tst w9, w10
  0x8001a6d48:  54003301    b.ne #1632
  0x8001a6d4c:  91001d08    add x8, x8, #7
  0x8001a6d50:  927df117    and x23, x8, #0xfffffffffffffff8
  0x8001a6d54:  eb1502ff    cmp x23, x21
  0x8001a6d58:  54002f63    b.lo #1516
  0x8001a6d5c:  b940aa68    ldr w8, [x19, #168]
  0x8001a6d60:  37001008    tbnz w8, #0, #512
  0x8001a6d64:  aa1f03f6    mov x22, xzr
  0x8001a6d68:  b9408268    ldr w8, [x19, #128]
  0x8001a6d6c:  1b147d08    mul w8, w8, w20
  0x8001a6d70:  37f832a8    tbnz w8, #31, #1620
  0x8001a6d74:  b980c66a    ldrsw x10, [x19, #196]
  0x8001a6d78:  9102c278    add x24, x19, #176
  0x8001a6d7c:  2a0803ef    mov w15, w8
  0x8001a6d80:  f9405e6c    ldr x12, [x19, #184]
  0x8001a6d84:  7100211f    cmp w8, #8
  0x8001a6d88:  cb0a03e9    neg x9, x10
  0x8001a6d8c:  cb0a030b    sub x11, x24, x10
  0x8001a6d90:  cb0a018c    sub x12, x12, x10
  0x8001a6d94:  54000ee8    b.hi #476
  0x8001a6d98:  eb0b019f    cmp x12, x11
  0x8001a6d9c:  54003a20    b.eq #1860
  0x8001a6da0:  3942b268    ldrb w8, [x19, #172]
  0x8001a6da4:  35003248    cbnz w8, #1608
  0x8001a6da8:  aa0c03e8    mov x8, x12
  0x8001a6dac:  f9400d1a    ldr x26, [x8, #24]
  0x8001a6db0:  eb17035f    cmp x26, x23
  0x8001a6db4:  54001723    b.lo #740
  0x8001a6db8:  f9000d17    str x23, [x8, #24]
  0x8001a6dbc:  79402515    ldrh w21, [x8, #18]
  0x8001a6dc0:  b980c66b    ldrsw x11, [x19, #196]
  0x8001a6dc4:  8b080169    add x9, x11, x8
  0x8001a6dc8:  f940052a    ldr x10, [x9, #8]
  0x8001a6dcc:  eb18015f    cmp x10, x24
  0x8001a6dd0:  54001701    b.ne #736
  0x8001a6dd4:  aa1f03f4    mov x20, xzr
  0x8001a6dd8:  f940012b    ldr x11, [x9]
  0x8001a6ddc:  b400006b    cbz x11, #12
  0x8001a6de0:  f900056a    str x10, [x11, #8]
  0x8001a6de4:  f940052a    ldr x10, [x9, #8]
  0x8001a6de8:  b400006a    cbz x10, #12
  0x8001a6dec:  f940012b    ldr x11, [x9]
  0x8001a6df0:  f900014b    str x11, [x10]
  0x8001a6df4:  a9007d3f    stp xzr, xzr, [x9]
  0x8001a6df8:  cb170359    sub x25, x26, x23
  0x8001a6dfc:  b940c269    ldr w9, [x19, #192]
  0x8001a6e00:  b940826a    ldr w10, [x19, #128]
  0x8001a6e04:  91032260    add x0, x19, #200
  0x8001a6e08:  51000529    sub w9, w9, #1
  0x8001a6e0c:  7100055f    cmp w10, #1
  0x8001a6e10:  b900c269    str w9, [x19, #192]
  0x8001a6e14:  b980de69    ldrsw x9, [x19, #220]
  0x8001a6e18:  8b080121    add x1, x9, x8
  0x8001a6e1c:  54003101    b.ne #1568
  0x8001a6e20:  f9400009    ldr x9, [x0]
  0x8001a6e24:  f9000001    str x1, [x0]
  0x8001a6e28:  a9000029    stp x9, x0, [x1]
  0x8001a6e2c:  b4000049    cbz x9, #8
  0x8001a6e30:  f9000521    str x1, [x9, #8]
  0x8001a6e34:  b940da69    ldr w9, [x19, #216]
  0x8001a6e38:  f100873f    cmp x25, #33
  0x8001a6e3c:  11000529    add w9, w9, #1
  0x8001a6e40:  b900da69    str w9, [x19, #216]
  0x8001a6e44:  54001483    b.lo #656
  0x8001a6e48:  8b0802e9    add x9, x23, x8
  0x8001a6e4c:  8b150129    add x9, x9, x21
  0x8001a6e50:  f8020d3f    str xzr, [x9, #32]!
  0x8001a6e54:  d100832a    sub x10, x25, #32
  0x8001a6e58:  f9000d2a    str x10, [x9, #24]
  0x8001a6e5c:  529fffea    mov w10, #65535
  0x8001a6e60:  b900113f    str wzr, [x9, #16]
  0x8001a6e64:  f900053f    str xzr, [x9, #8]
  0x8001a6e68:  7900212a    strh w10, [x9, #16]
  0x8001a6e6c:  b980c66a    ldrsw x10, [x19, #196]
  0x8001a6e70:  b5001254    cbnz x20, #584
  0x8001a6e74:  8b0a0129    add x9, x9, x10
  0x8001a6e78:  f940030a    ldr x10, [x24]
  0x8001a6e7c:  f9000309    str x9, [x24]
  0x8001a6e80:  a900612a    stp x10, x24, [x9]
  0x8001a6e84:  b400004a    cbz x10, #8
  0x8001a6e88:  f9000549    str x9, [x10, #8]
  0x8001a6e8c:  b940c269    ldr w9, [x19, #192]
  0x8001a6e90:  11000529    add w9, w9, #1
  0x8001a6e94:  b900c269    str w9, [x19, #192]
  0x8001a6e98:  b940aa69    ldr w9, [x19, #168]
  0x8001a6e9c:  53107d29    lsr w9, w9, #16
  0x8001a6ea0:  79002109    strh w9, [x8, #16]
  0x8001a6ea4:  79402509    ldrh w9, [x8, #18]
  0x8001a6ea8:  8b090108    add x8, x8, x9
  0x8001a6eac:  91008118    add x24, x8, #32
  0x8001a6eb0:  b4fff1b6    cbz x22, #-460
  0x8001a6eb4:  aa1603e0    mov x0, x22
  0x8001a6eb8:  94a7f46e    bl #44028344
  0x8001a6ebc:  17ffff8a    b #-472
  0x8001a6ec0:  aa1303e0    mov x0, x19
  0x8001a6ec4:  aa1503e1    mov x1, x21
  0x8001a6ec8:  2a1403e2    mov w2, w20
  0x8001a6ecc:  a9484ff4    ldp x20, x19, [sp, #128]
  0x8001a6ed0:  a94757f6    ldp x22, x21, [sp, #112]
  0x8001a6ed4:  a9465ff8    ldp x24, x23, [sp, #96]
  0x8001a6ed8:  a94567fa    ldp x26, x25, [sp, #80]
  0x8001a6edc:  a9446ffc    ldp x28, x27, [sp, #64]
  0x8001a6ee0:  a9437bfd    ldp x29, x30, [sp, #48]
  0x8001a6ee4:  910243ff    add sp, sp, #144
  0x8001a6ee8:  d61f0060    br x3
  0x8001a6eec:  f10022bf    cmp x21, #8
  0x8001a6ef0:  52800108    mov w8, #8
  0x8001a6ef4:  f9400319    ldr x25, [x24]
  0x8001a6ef8:  9a8882a8    csel x8, x21, x8, hi
  0x8001a6efc:  7100029f    cmp w20, #0
  0x8001a6f00:  91001d08    add x8, x8, #7
  0x8001a6f04:  927df117    and x23, x8, #0xfffffffffffffff8
  0x8001a6f08:  5a945688    cneg w8, w20, mi
  0x8001a6f0c:  51000509    sub w9, w8, #1
  0x8001a6f10:  6a09011f    tst w8, w9
  0x8001a6f14:  54002181    b.ne #1072
  0x8001a6f18:  b940aa68    ldr w8, [x19, #168]
  0x8001a6f1c:  370017c8    tbnz w8, #0, #760
  0x8001a6f20:  aa1f03f6    mov x22, xzr
  0x8001a6f24:  b9408268    ldr w8, [x19, #128]
  0x8001a6f28:  1b147d08    mul w8, w8, w20
  0x8001a6f2c:  37f817c8    tbnz w8, #31, #760
  0x8001a6f30:  f9405a69    ldr x9, [x19, #176]
  0x8001a6f34:  5100050a    sub w10, w8, #1
  0x8001a6f38:  8b0a0129    add x9, x9, x10
  0x8001a6f3c:  8a2a0138    bic x24, x9, x10
  0x8001a6f40:  8b170309    add x9, x24, x23
  0x8001a6f44:  eb18013f    cmp x9, x24
  0x8001a6f48:  54002183    b.lo #1072
  0x8001a6f4c:  f9405e6a    ldr x10, [x19, #184]
  0x8001a6f50:  eb09015f    cmp x10, x9
  0x8001a6f54:  54002123    b.lo #1060
  0x8001a6f58:  f9005a69    str x9, [x19, #176]
  0x8001a6f5c:  17ffff61    b #-636
  0x8001a6f60:  91022276    add x22, x19, #136
  0x8001a6f64:  aa1603e0    mov x0, x22
  0x8001a6f68:  94a7f43e    bl #44028152
  0x8001a6f6c:  17ffff7f    b #-516
  0x8001a6f70:  eb0b019f    cmp x12, x11
  0x8001a6f74:  54002b60    b.eq #1388
  0x8001a6f78:  3942b270    ldrb w16, [x19, #172]
  0x8001a6f7c:  5100050d    sub w13, w8, #1
  0x8001a6f80:  aa2d03ee    mvn x14, x13
  0x8001a6f84:  35002bb0    cbnz w16, #1396
  0x8001a6f88:  aa0c03e8    mov x8, x12
  0x8001a6f8c:  f9400d0c    ldr x12, [x8, #24]
  0x8001a6f90:  eb17019f    cmp x12, x23
  0x8001a6f94:  540029c3    b.lo #1336
  0x8001a6f98:  79402510    ldrh w16, [x8, #18]
  0x8001a6f9c:  8b100111    add x17, x8, x16
  0x8001a6fa0:  91008231    add x17, x17, #32
  0x8001a6fa4:  8b0d0232    add x18, x17, x13
  0x8001a6fa8:  cb1102f1    sub x17, x23, x17
  0x8001a6fac:  8a0e0252    and x18, x18, x14
  0x8001a6fb0:  8b120231    add x17, x17, x18
  0x8001a6fb4:  eb11019f    cmp x12, x17
  0x8001a6fb8:  540028a3    b.lo #1300
  0x8001a6fbc:  8b0a010b    add x11, x8, x10
  0x8001a6fc0:  9100810a    add x10, x8, #32
  0x8001a6fc4:  f940056b    ldr x11, [x11, #8]
  0x8001a6fc8:  8b090169    add x9, x11, x9
  0x8001a6fcc:  eb18017f    cmp x11, x24
  0x8001a6fd0:  9a8903f4    csel x20, xzr, x9, eq
  0x8001a6fd4:  8b100149    add x9, x10, x16
  0x8001a6fd8:  8b0d012b    add x11, x9, x13
  0x8001a6fdc:  8a0e016b    and x11, x11, x14
  0x8001a6fe0:  cb090169    sub x9, x11, x9
  0x8001a6fe4:  8b170135    add x21, x9, x23
  0x8001a6fe8:  f140413f    cmp x9, #16, lsl #12
  0x8001a6fec:  54002be2    b.hs #1404
  0x8001a6ff0:  72003d3f    tst w9, #0xffff
  0x8001a6ff4:  79002509    strh w9, [x8, #18]
  0x8001a6ff8:  54000080    b.eq #16
  0x8001a6ffc:  8b0a0129    add x9, x9, x10
  0x8001a7000:  b240010a    orr x10, x8, #0x1
  0x8001a7004:  f81f812a    stur x10, [x9, #-8]
  0x8001a7008:  f9000d17    str x23, [x8, #24]
  0x8001a700c:  b980c669    ldrsw x9, [x19, #196]
  0x8001a7010:  8b080129    add x9, x9, x8
  0x8001a7014:  f940012a    ldr x10, [x9]
  0x8001a7018:  b400006a    cbz x10, #12
  0x8001a701c:  f940052b    ldr x11, [x9, #8]
  0x8001a7020:  f900054b    str x11, [x10, #8]
  0x8001a7024:  f940052a    ldr x10, [x9, #8]
  0x8001a7028:  b400006a    cbz x10, #12
  0x8001a702c:  f940012b    ldr x11, [x9]
  0x8001a7030:  f900014b    str x11, [x10]
  0x8001a7034:  a9007d3f    stp xzr, xzr, [x9]
  0x8001a7038:  b940c269    ldr w9, [x19, #192]
  0x8001a703c:  51000529    sub w9, w9, #1
  0x8001a7040:  b900c269    str w9, [x19, #192]
  0x8001a7044:  b9408269    ldr w9, [x19, #128]
  0x8001a7048:  cb150199    sub x25, x12, x21
  0x8001a704c:  91032260    add x0, x19, #200
  0x8001a7050:  b980de6a    ldrsw x10, [x19, #220]
  0x8001a7054:  8b0a0101    add x1, x8, x10
  0x8001a7058:  7100053f    cmp w9, #1
  0x8001a705c:  54002961    b.ne #1324
  0x8001a7060:  f9400009    ldr x9, [x0]
  0x8001a7064:  f9000001    str x1, [x0]
  0x8001a7068:  a9000029    stp x9, x0, [x1]
  0x8001a706c:  b4000049    cbz x9, #8
  0x8001a7070:  f9000521    str x1, [x9, #8]
  0x8001a7074:  b940da69    ldr w9, [x19, #216]
  0x8001a7078:  f100873f    cmp x25, #33
  0x8001a707c:  11000529    add w9, w9, #1
  0x8001a7080:  b900da69    str w9, [x19, #216]
  0x8001a7084:  540028e3    b.lo #1308
  0x8001a7088:  79402509    ldrh w9, [x8, #18]
  0x8001a708c:  8b0802ea    add x10, x23, x8
  0x8001a7090:  8b090149    add x9, x10, x9
  0x8001a7094:  17ffff6f    b #-580
  0x8001a7098:  8b0a0108    add x8, x8, x10
  0x8001a709c:  f9400508    ldr x8, [x8, #8]
  0x8001a70a0:  8b090108    add x8, x8, x9
  0x8001a70a4:  eb0b011f    cmp x8, x11
  0x8001a70a8:  54ffe821    b.ne #-764
  0x8001a70ac:  1400010d    b #1076
  0x8001a70b0:  cb0b0154    sub x20, x10, x11
  0x8001a70b4:  17ffff49    b #-732
  0x8001a70b8:  8b14014b    add x11, x10, x20
  0x8001a70bc:  8b0a0129    add x9, x9, x10
  0x8001a70c0:  f940016a    ldr x10, [x11]
  0x8001a70c4:  f9000169    str x9, [x11]
  0x8001a70c8:  a9002d2a    stp x10, x11, [x9]
  0x8001a70cc:  b5ffedea    cbnz x10, #-580
  0x8001a70d0:  17ffff6f    b #-580
  0x8001a70d4:  eb17035f    cmp x26, x23
  0x8001a70d8:  54ffee00    b.eq #-576
  0x8001a70dc:  f9000d1a    str x26, [x8, #24]
  0x8001a70e0:  17ffff6e    b #-584
  0x8001a70e4:  b4000069    cbz x9, #12
  0x8001a70e8:  f9400920    ldr x0, [x9, #16]
  0x8001a70ec:  b5001160    cbnz x0, #556
  0x8001a70f0:  aa1f03f8    mov x24, xzr
  0x8001a70f4:  eb15033f    cmp x25, x21
  0x8001a70f8:  54ffdf43    b.lo #-1048
  0x8001a70fc:  f9401e60    ldr x0, [x19, #56]
  0x8001a7100:  b4ffdf00    cbz x0, #-1056
  0x8001a7104:  7100251f    cmp w8, #9
  0x8001a7108:  aa1303fa    mov x26, x19
  0x8001a710c:  1a8833f8    csel w24, wzr, w8, lo
  0x8001a7110:  f84c0f48    ldr x8, [x26, #192]!
  0x8001a7114:  b85e8349    ldur w9, [x26, #-24]
  0x8001a7118:  37180049    tbnz w9, #3, #8
  0x8001a711c:  b40000c8    cbz x8, #24
  0x8001a7120:  f9400268    ldr x8, [x19]
  0x8001a7124:  aa1303e0    mov x0, x19
  0x8001a7128:  f9401508    ldr x8, [x8, #40]
  0x8001a712c:  d63f0100    blr x8
  0x8001a7130:  f9401e60    ldr x0, [x19, #56]
  0x8001a7134:  8b384328    add x8, x25, w24, uxtw
  0x8001a7138:  9100411b    add x27, x8, #16
  0x8001a713c:  29590a68    ldp w8, w2, [x19, #200]
  0x8001a7140:  d37ef51c    lsl x28, x8, #2
  0x8001a7144:  f9400008    ldr x8, [x0]
  0x8001a7148:  eb1b039f    cmp x28, x27
  0x8001a714c:  9a9b8399    csel x25, x28, x27, hi
  0x8001a7150:  aa1903e1    mov x1, x25
  0x8001a7154:  f9401908    ldr x8, [x8, #48]
  0x8001a7158:  d63f0100    blr x8
  0x8001a715c:  b4002920    cbz x0, #1316
  0x8001a7160:  aa0003f8    mov x24, x0
  0x8001a7164:  b940aa68    ldr w8, [x19, #168]
  0x8001a7168:  37002b28    tbnz w8, #0, #1380
  0x8001a716c:  aa1703e0    mov x0, x23
  0x8001a7170:  94a7f3bc    bl #44027632
  0x8001a7174:  b940826a    ldr w10, [x19, #128]
  0x8001a7178:  8b180328    add x8, x25, x24
  0x8001a717c:  d1004109    sub x9, x8, #16
  0x8001a7180:  7100055f    cmp w10, #1
  0x8001a7184:  9a89030a    csel x10, x24, x9, eq
  0x8001a7188:  a9007d59    stp x25, xzr, [x10]
  0x8001a718c:  f940626b    ldr x11, [x19, #192]
  0x8001a7190:  b40000ab    cbz x11, #20
  0x8001a7194:  aa0b03ec    mov x12, x11
  0x8001a7198:  f940056b    ldr x11, [x11, #8]
  0x8001a719c:  b5ffffcb    cbnz x11, #-8
  0x8001a71a0:  9100219a    add x26, x12, #8
  0x8001a71a4:  f900034a    str x10, [x26]
  0x8001a71a8:  9100430b    add x11, x24, #16
  0x8001a71ac:  aa1303e0    mov x0, x19
  0x8001a71b0:  b940826a    ldr w10, [x19, #128]
  0x8001a71b4:  aa1503e1    mov x1, x21
  0x8001a71b8:  2a1403e2    mov w2, w20
  0x8001a71bc:  7100055f    cmp w10, #1
  0x8001a71c0:  9a98016a    csel x10, x11, x24, eq
  0x8001a71c4:  9a890108    csel x8, x8, x9, eq
  0x8001a71c8:  a90b226a    stp x10, x8, [x19, #176]
  0x8001a71cc:  97fb4d9b    bl #-1231252
  0x8001a71d0:  aa0003f8    mov x24, x0
  0x8001a71d4:  b4ffd877    cbz x23, #-1268
  0x8001a71d8:  aa1703e0    mov x0, x23
  0x8001a71dc:  94a7f3a5    bl #44027540
  0x8001a71e0:  17fffec0    b #-1280
  0x8001a71e4:  f001c888    adrp x8, #59846656
  0x8001a71e8:  91368108    add x8, x8, #3488
  0x8001a71ec:  f9400108    ldr x8, [x8]
  0x8001a71f0:  b9404900    ldr w0, [x8, #72]
  0x8001a71f4:  94a7f233    bl #44026060
  0x8001a71f8:  910022c8    add x8, x22, #8
  0x8001a71fc:  91022009    add x9, x0, #136
  0x8001a7200:  f100001f    cmp x0, #0
  0x8001a7204:  9a890108    csel x8, x8, x9, eq
  0x8001a7208:  f9400113    ldr x19, [x8]
  0x8001a720c:  b5ffd233    cbnz x19, #-1468
  0x8001a7210:  14000058    b #352
  0x8001a7214:  91022276    add x22, x19, #136
  0x8001a7218:  aa1603e0    mov x0, x22
  0x8001a721c:  94a7f391    bl #44027460
  0x8001a7220:  17ffff41    b #-764
  0x8001a7224:  f9405e6b    ldr x11, [x19, #184]
  0x8001a7228:  4b0803e9    neg w9, w8
  0x8001a722c:  cb17016a    sub x10, x11, x23
  0x8001a7230:  eb0a017f    cmp x11, x10
  0x8001a7234:  54002563    b.lo #1196
  0x8001a7238:  b2607d08    orr x8, x8, #0xffffffff00000000
  0x8001a723c:  8a080158    and x24, x10, x8
  0x8001a7240:  f9405a68    ldr x8, [x19, #176]
  0x8001a7244:  eb18011f    cmp x8, x24
  0x8001a7248:  540024c8    b.hi #1176
  0x8001a724c:  f9005e78    str x24, [x19, #184]
  0x8001a7250:  17fffea4    b #-1392
  0x8001a7254:  93407e80    sxtw x0, w20
  0x8001a7258:  aa1503e1    mov x1, x21
  0x8001a725c:  a9484ff4    ldp x20, x19, [sp, #128]
  0x8001a7260:  a94757f6    ldp x22, x21, [sp, #112]
  0x8001a7264:  a9465ff8    ldp x24, x23, [sp, #96]
  0x8001a7268:  a94567fa    ldp x26, x25, [sp, #80]
  0x8001a726c:  a9446ffc    ldp x28, x27, [sp, #64]
  0x8001a7270:  a9437bfd    ldp x29, x30, [sp, #48]
  0x8001a7274:  910243ff    add sp, sp, #144
  0x8001a7278:  17fbca9a    b #-1103256
  0x8001a727c:  aa1703e0    mov x0, x23
  0x8001a7280:  94a7f378    bl #44027360
  0x8001a7284:  aa1703f6    mov x22, x23
  0x8001a7288:  17fffe7c    b #-1552
  0x8001a728c:  b4001329    cbz x9, #612
  0x8001a7290:  f9400920    ldr x0, [x9, #16]
  0x8001a7294:  b40012e0    cbz x0, #604
  0x8001a7298:  a900d7f3    stp x19, x21, [sp, #8]
  0x8001a729c:  910023e1    add x1, sp, #8
  0x8001a72a0:  b9001bf4    str w20, [sp, #24]
  0x8001a72a4:  f90013f9    str x25, [sp, #32]
  0x8001a72a8:  b9002bf4    str w20, [sp, #40]
  0x8001a72ac:  f9400008    ldr x8, [x0]
  0x8001a72b0:  1400003b    b #236
  0x8001a72b4:  f9405e6c    ldr x12, [x19, #184]
  0x8001a72b8:  2a0803fa    mov w26, w8
  0x8001a72bc:  4b0a03eb    neg w11, w10
  0x8001a72c0:  cb190188    sub x8, x12, x25
  0x8001a72c4:  eb08019f    cmp x12, x8
  0x8001a72c8:  540000c3    b.lo #24
  0x8001a72cc:  b2607d4a    orr x10, x10, #0xffffffff00000000
  0x8001a72d0:  8a0a0118    and x24, x8, x10
  0x8001a72d4:  f9405a68    ldr x8, [x19, #176]
  0x8001a72d8:  eb18011f    cmp x8, x24
  0x8001a72dc:  54000b89    b.ls #368
  0x8001a72e0:  2a1a03e8    mov w8, w26
  0x8001a72e4:  b4fff069    cbz x9, #-500
  0x8001a72e8:  f9400920    ldr x0, [x9, #16]
  0x8001a72ec:  b4fff020    cbz x0, #-508
  0x8001a72f0:  a900d7f3    stp x19, x21, [sp, #8]
  0x8001a72f4:  910023e1    add x1, sp, #8
  0x8001a72f8:  b9001bf4    str w20, [sp, #24]
  0x8001a72fc:  f90013f9    str x25, [sp, #32]
  0x8001a7300:  b9002beb    str w11, [sp, #40]
  0x8001a7304:  f9400008    ldr x8, [x0]
  0x8001a7308:  f9400108    ldr x8, [x8]
  0x8001a730c:  d63f0100    blr x8
  0x8001a7310:  2a1a03e8    mov w8, w26
  0x8001a7314:  17ffff77    b #-548
  0x8001a7318:  a900d7f3    stp x19, x21, [sp, #8]
  0x8001a731c:  910023e1    add x1, sp, #8
  0x8001a7320:  2a0803f8    mov w24, w8
  0x8001a7324:  b9001bf4    str w20, [sp, #24]
  0x8001a7328:  f90013f9    str x25, [sp, #32]
  0x8001a732c:  b9002bea    str w10, [sp, #40]
  0x8001a7330:  f9400009    ldr x9, [x0]
  0x8001a7334:  f9400129    ldr x9, [x9]
  0x8001a7338:  d63f0120    blr x9
  0x8001a733c:  2a1803e8    mov w8, w24
  0x8001a7340:  17ffff6c    b #-592
  0x8001a7344:  b4000179    cbz x25, #44
  0x8001a7348:  f9400b20    ldr x0, [x25, #16]
  0x8001a734c:  b4000120    cbz x0, #36
  0x8001a7350:  a900d7f3    stp x19, x21, [sp, #8]
  0x8001a7354:  b9001bf4    str w20, [sp, #24]
  0x8001a7358:  f90013f7    str x23, [sp, #32]
  0x8001a735c:  b9002bf4    str w20, [sp, #40]
  0x8001a7360:  910023e1    add x1, sp, #8
  0x8001a7364:  f9400008    ldr x8, [x0]
  0x8001a7368:  f9400108    ldr x8, [x8]
  0x8001a736c:  d63f0100    blr x8
  0x8001a7370:  aa1f03f8    mov x24, xzr
  0x8001a7374:  17fffe5c    b #-1680
  0x8001a7378:  b4000bd9    cbz x25, #376
  0x8001a737c:  f9400b20    ldr x0, [x25, #16]
  0x8001a7380:  b4000b80    cbz x0, #368
  0x8001a7384:  a900d7f3    stp x19, x21, [sp, #8]
  0x8001a7388:  b9001bf4    str w20, [sp, #24]
  0x8001a738c:  f90013f7    str x23, [sp, #32]
  0x8001a7390:  b9002be8    str w8, [sp, #40]
  0x8001a7394:  f9400008    ldr x8, [x0]
  0x8001a7398:  910023e1    add x1, sp, #8
  0x8001a739c:  f9400108    ldr x8, [x8]
  0x8001a73a0:  d63f0100    blr x8
  0x8001a73a4:  14000053    b #332
  0x8001a73a8:  b4fffe59    cbz x25, #-56
  0x8001a73ac:  f9400b20    ldr x0, [x25, #16]
  0x8001a73b0:  b4fffe00    cbz x0, #-64
  0x8001a73b4:  a900d7f3    stp x19, x21, [sp, #8]
  0x8001a73b8:  b9001bf4    str w20, [sp, #24]
  0x8001a73bc:  f90013e8    str x8, [sp, #32]
  0x8001a73c0:  17ffffe7    b #-100
  0x8001a73c4:  4b0803e9    neg w9, w8
  0x8001a73c8:  aa1303e0    mov x0, x19
  0x8001a73cc:  b90007e9    str w9, [sp, #4]
  0x8001a73d0:  aa1703e1    mov x1, x23
  0x8001a73d4:  3100211f    cmn w8, #8
  0x8001a73d8:  540017e3    b.lo #764
  0x8001a73dc:  97ff557b    bl #-174612
  0x8001a73e0:  aa0003e8    mov x8, x0
  0x8001a73e4:  b5ffd5a0    cbnz x0, #-1356
  0x8001a73e8:  1400003f    b #252
  0x8001a73ec:  7100051f    cmp w8, #1
  0x8001a73f0:  b90007ef    str w15, [sp, #4]
  0x8001a73f4:  54000321    b.ne #100
  0x8001a73f8:  aa1f03e8    mov x8, xzr
  0x8001a73fc:  f9400d8d    ldr x13, [x12, #24]
  0x8001a7400:  eb1701bf    cmp x13, x23
  0x8001a7404:  540000c3    b.lo #24
  0x8001a7408:  b4000088    cbz x8, #16
  0x8001a740c:  f9400d0e    ldr x14, [x8, #24]
  0x8001a7410:  eb0d01df    cmp x14, x13
  0x8001a7414:  54000049    b.ls #8
  0x8001a7418:  aa0c03e8    mov x8, x12
  0x8001a741c:  8b0a018c    add x12, x12, x10
  0x8001a7420:  f940058c    ldr x12, [x12, #8]
  0x8001a7424:  8b09018c    add x12, x12, x9
  0x8001a7428:  eb0b019f    cmp x12, x11
  0x8001a742c:  54fffe81    b.ne #-48
  0x8001a7430:  b40005a8    cbz x8, #180
  0x8001a7434:  f9400d1a    ldr x26, [x8, #24]
  0x8001a7438:  17fffe60    b #-1664
  0x8001a743c:  aa0803fb    mov x27, x8
  0x8001a7440:  94980a12    bl #39856200
  0x8001a7444:  aa1b03e8    mov x8, x27
  0x8001a7448:  17fffe7b    b #-1556
  0x8001a744c:  2a1a03e8    mov w8, w26
  0x8001a7450:  f9005e78    str x24, [x19, #184]
  0x8001a7454:  17fffe22    b #-1912
  0x8001a7458:  7100091f    cmp w8, #2
  0x8001a745c:  54000201    b.ne #64
  0x8001a7460:  aa1f03e8    mov x8, xzr
  0x8001a7464:  f9400d8d    ldr x13, [x12, #24]
  0x8001a7468:  eb1701bf    cmp x13, x23
  0x8001a746c:  540000c3    b.lo #24
  0x8001a7470:  b4000088    cbz x8, #16
  0x8001a7474:  f9400d0e    ldr x14, [x8, #24]
  0x8001a7478:  eb0d01df    cmp x14, x13
  0x8001a747c:  54000042    b.hs #8
  0x8001a7480:  aa0c03e8    mov x8, x12
  0x8001a7484:  8b0a018c    add x12, x12, x10
  0x8001a7488:  f940058c    ldr x12, [x12, #8]
  0x8001a748c:  8b09018c    add x12, x12, x9
  0x8001a7490:  eb0b019f    cmp x12, x11
  0x8001a7494:  54fffe81    b.ne #-48
  0x8001a7498:  17ffffe6    b #-104
  0x8001a749c:  aa1f03e8    mov x8, xzr
  0x8001a74a0:  f100011f    cmp x8, #0
  0x8001a74a4:  f9400d8d    ldr x13, [x12, #24]
  0x8001a74a8:  9a88018e    csel x14, x12, x8, eq
  0x8001a74ac:  8b0a018c    add x12, x12, x10
  0x8001a74b0:  f940058c    ldr x12, [x12, #8]
  0x8001a74b4:  eb1701bf    cmp x13, x23
  0x8001a74b8:  9a8e3108    csel x8, x8, x14, lo
  0x8001a74bc:  8b09018c    add x12, x12, x9
  0x8001a74c0:  eb0b019f    cmp x12, x11
  0x8001a74c4:  54fffee1    b.ne #-36
  0x8001a74c8:  17ffffda    b #-152
  0x8001a74cc:  8b0a0108    add x8, x8, x10
  0x8001a74d0:  f9400508    ldr x8, [x8, #8]
  0x8001a74d4:  8b090108    add x8, x8, x9
  0x8001a74d8:  eb0b011f    cmp x8, x11
  0x8001a74dc:  54ffd581    b.ne #-1360
  0x8001a74e0:  b90007ef    str w15, [sp, #4]
  0x8001a74e4:  b4000079    cbz x25, #12
  0x8001a74e8:  f9400b20    ldr x0, [x25, #16]
  0x8001a74ec:  b50010a0    cbnz x0, #532
  0x8001a74f0:  aa1f03f8    mov x24, xzr
  0x8001a74f4:  17fffdfb    b #-2068
  0x8001a74f8:  7100061f    cmp w16, #1
  0x8001a74fc:  b90007ef    str w15, [sp, #4]
  0x8001a7500:  540005a1    b.ne #180
  0x8001a7504:  aa1f03e8    mov x8, xzr
  0x8001a7508:  f9400d8f    ldr x15, [x12, #24]
  0x8001a750c:  eb1701ff    cmp x15, x23
  0x8001a7510:  540000e2    b.hs #28
  0x8001a7514:  8b0a018c    add x12, x12, x10
  0x8001a7518:  f940058c    ldr x12, [x12, #8]
  0x8001a751c:  8b09018c    add x12, x12, x9
  0x8001a7520:  eb0b019f    cmp x12, x11
  0x8001a7524:  54ffff21    b.ne #-28
  0x8001a7528:  14000052    b #328
  0x8001a752c:  79402590    ldrh w16, [x12, #18]
  0x8001a7530:  8b100190    add x16, x12, x16
  0x8001a7534:  91008210    add x16, x16, #32
  0x8001a7538:  8b0d0211    add x17, x16, x13
  0x8001a753c:  cb1002f0    sub x16, x23, x16
  0x8001a7540:  8a0e0231    and x17, x17, x14
  0x8001a7544:  8b110210    add x16, x16, x17
  0x8001a7548:  eb1001ff    cmp x15, x16
  0x8001a754c:  54fffe43    b.lo #-56
  0x8001a7550:  b4000088    cbz x8, #16
  0x8001a7554:  f9400d10    ldr x16, [x8, #24]
  0x8001a7558:  eb0f021f    cmp x16, x15
  0x8001a755c:  54fffdc9    b.ls #-72
  0x8001a7560:  aa0c03e8    mov x8, x12
  0x8001a7564:  17ffffec    b #-80
  0x8001a7568:  d100812a    sub x10, x9, #32
  0x8001a756c:  7900251f    strh wzr, [x8, #18]
  0x8001a7570:  f9000d0a    str x10, [x8, #24]
  0x8001a7574:  8b080128    add x8, x9, x8
  0x8001a7578:  b900111f    str wzr, [x8, #16]
  0x8001a757c:  f9000d17    str x23, [x8, #24]
  0x8001a7580:  a9007d1f    stp xzr, xzr, [x8]
  0x8001a7584:  17fffeb0    b #-1344
  0x8001a7588:  aa0803fa    mov x26, x8
  0x8001a758c:  aa0c03fb    mov x27, x12
  0x8001a7590:  949809be    bl #39855864
  0x8001a7594:  aa1b03ec    mov x12, x27
  0x8001a7598:  aa1a03e8    mov x8, x26
  0x8001a759c:  17fffeb6    b #-1320
  0x8001a75a0:  eb15019f    cmp x12, x21
  0x8001a75a4:  54ffc7a0    b.eq #-1804
  0x8001a75a8:  8b170329    add x9, x25, x23
  0x8001a75ac:  f9000d09    str x9, [x8, #24]
  0x8001a75b0:  17fffe3a    b #-1816
  0x8001a75b4:  71000a1f    cmp w16, #2
  0x8001a75b8:  54000341    b.ne #104
  0x8001a75bc:  aa1f03e8    mov x8, xzr
  0x8001a75c0:  f9400d8f    ldr x15, [x12, #24]
  0x8001a75c4:  eb1701ff    cmp x15, x23
  0x8001a75c8:  540000e2    b.hs #28
  0x8001a75cc:  8b0a018c    add x12, x12, x10
  0x8001a75d0:  f940058c    ldr x12, [x12, #8]
  0x8001a75d4:  8b09018c    add x12, x12, x9
  0x8001a75d8:  eb0b019f    cmp x12, x11
  0x8001a75dc:  54ffff21    b.ne #-28
  0x8001a75e0:  14000024    b #144
  0x8001a75e4:  79402590    ldrh w16, [x12, #18]
  0x8001a75e8:  8b100190    add x16, x12, x16
  0x8001a75ec:  91008210    add x16, x16, #32
  0x8001a75f0:  8b0d0211    add x17, x16, x13
  0x8001a75f4:  cb1002f0    sub x16, x23, x16
  0x8001a75f8:  8a0e0231    and x17, x17, x14
  0x8001a75fc:  8b110210    add x16, x16, x17
  0x8001a7600:  eb1001ff    cmp x15, x16
  0x8001a7604:  54fffe43    b.lo #-56
  0x8001a7608:  b4000088    cbz x8, #16
  0x8001a760c:  f9400d10    ldr x16, [x8, #24]
  0x8001a7610:  eb0f021f    cmp x16, x15
  0x8001a7614:  54fffdc2    b.hs #-72
  0x8001a7618:  aa0c03e8    mov x8, x12
  0x8001a761c:  17ffffec    b #-80
  0x8001a7620:  aa1f03e8    mov x8, xzr
  0x8001a7624:  f9400d8f    ldr x15, [x12, #24]
  0x8001a7628:  eb1701ff    cmp x15, x23
  0x8001a762c:  54000183    b.lo #48
  0x8001a7630:  79402590    ldrh w16, [x12, #18]
  0x8001a7634:  f100011f    cmp x8, #0
  0x8001a7638:  8b100190    add x16, x12, x16
  0x8001a763c:  91008210    add x16, x16, #32
  0x8001a7640:  8b0d0211    add x17, x16, x13
  0x8001a7644:  cb1002f0    sub x16, x23, x16
  0x8001a7648:  8a0e0231    and x17, x17, x14
  0x8001a764c:  8b110210    add x16, x16, x17
  0x8001a7650:  9a880191    csel x17, x12, x8, eq
  0x8001a7654:  eb1001ff    cmp x15, x16
  0x8001a7658:  9a913108    csel x8, x8, x17, lo
  0x8001a765c:  8b0a018c    add x12, x12, x10
  0x8001a7660:  f940058c    ldr x12, [x12, #8]
  0x8001a7664:  8b09018c    add x12, x12, x9
  0x8001a7668:  eb0b019f    cmp x12, x11
  0x8001a766c:  54fffdc1    b.ne #-72
  0x8001a7670:  b4fff3a8    cbz x8, #-396
  0x8001a7674:  79402510    ldrh w16, [x8, #18]
  0x8001a7678:  f9400d0c    ldr x12, [x8, #24]
  0x8001a767c:  17fffe50    b #-1728
  0x8001a7680:  eb1c037f    cmp x27, x28
  0x8001a7684:  54fff362    b.hs #-404
  0x8001a7688:  f9401e60    ldr x0, [x19, #56]
  0x8001a768c:  b940ce61    ldr w1, [x19, #204]
  0x8001a7690:  f9400008    ldr x8, [x0]
  0x8001a7694:  f9404508    ldr x8, [x8, #136]
  0x8001a7698:  d63f0100    blr x8
  0x8001a769c:  eb00037f    cmp x27, x0
  0x8001a76a0:  54fff288    b.hi #-432
  0x8001a76a4:  aa0003f9    mov x25, x0
  0x8001a76a8:  f9401e60    ldr x0, [x19, #56]
  0x8001a76ac:  aa1903e1    mov x1, x25
  0x8001a76b0:  b940ce62    ldr w2, [x19, #204]
  0x8001a76b4:  f9400008    ldr x8, [x0]
  0x8001a76b8:  f9401908    ldr x8, [x8, #48]
  0x8001a76bc:  d63f0100    blr x8
  0x8001a76c0:  aa0003f8    mov x24, x0
  0x8001a76c4:  b4ffb0e0    cbz x0, #-2532
  0x8001a76c8:  17fffea7    b #-1380
  0x8001a76cc:  aa1f03f7    mov x23, xzr
  0x8001a76d0:  17fffea9    b #-1372
  0x8001a76d4:  b94007e2    ldr w2, [sp, #4]
  0x8001a76d8:  97ff5542    bl #-174840
  0x8001a76dc:  17ffff41    b #-764
  0x8001a76e0:  b4fff099    cbz x25, #-496
  0x8001a76e4:  f9400b20    ldr x0, [x25, #16]
  0x8001a76e8:  b4fff040    cbz x0, #-504
  0x8001a76ec:  a900d7f3    stp x19, x21, [sp, #8]
  0x8001a76f0:  b9001bf4    str w20, [sp, #24]
  0x8001a76f4:  f90013f7    str x23, [sp, #32]
  0x8001a76f8:  b9002be9    str w9, [sp, #40]
  0x8001a76fc:  17ffff26    b #-872
  0x8001a7700:  b94007e8    ldr w8, [sp, #4]
  0x8001a7704:  a900d7f3    stp x19, x21, [sp, #8]
  0x8001a7708:  910023e1    add x1, sp, #8
  0x8001a770c:  b9001bf4    str w20, [sp, #24]
  0x8001a7710:  f90013f7    str x23, [sp, #32]
  0x8001a7714:  b9002be8    str w8, [sp, #40]
  0x8001a7718:  17fffee5    b #-1132

