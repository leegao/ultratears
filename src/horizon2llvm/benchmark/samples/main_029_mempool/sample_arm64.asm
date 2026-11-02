; UltraTears chunk main_029_mempool: 1 functions [0x800079d20..0x80007a838)

; Function f_800079d20 [0x800079d20..0x80007a838)
f_800079d20:
  0x800079d20:  d10243ff    sub sp, sp, #144
  0x800079d24:  a9037bfd    stp x29, x30, [sp, #48]
  0x800079d28:  a9046ffc    stp x28, x27, [sp, #64]
  0x800079d2c:  a90567fa    stp x26, x25, [sp, #80]
  0x800079d30:  a9065ff8    stp x24, x23, [sp, #96]
  0x800079d34:  a90757f6    stp x22, x21, [sp, #112]
  0x800079d38:  a9084ff4    stp x20, x19, [sp, #128]
  0x800079d3c:  9100c3fd    add x29, sp, #48
  0x800079d40:  d001c698    adrp x24, #59580416
  0x800079d44:  2a0203f4    mov w20, w2
  0x800079d48:  f9454318    ldr x24, [x24, #2688]
  0x800079d4c:  aa0103f5    mov x21, x1
  0x800079d50:  f9400316    ldr x22, [x24]
  0x800079d54:  b4002616    cbz x22, #1216
  0x800079d58:  aa0003f3    mov x19, x0
  0x800079d5c:  b4002700    cbz x0, #1248
  0x800079d60:  f9400268    ldr x8, [x19]
  0x800079d64:  f9401903    ldr x3, [x8, #48]
  0x800079d68:  b0002c88    adrp x8, #5836800
  0x800079d6c:  91374108    add x8, x8, #3536
  0x800079d70:  eb08007f    cmp x3, x8
  0x800079d74:  54000521    b.ne #164
  0x800079d78:  b940aa68    ldr w8, [x19, #168]
  0x800079d7c:  91022277    add x23, x19, #136
  0x800079d80:  37002908    tbnz w8, #0, #1312
  0x800079d84:  aa1f03f6    mov x22, xzr
  0x800079d88:  f10022bf    cmp x21, #8
  0x800079d8c:  52800109    mov w9, #8
  0x800079d90:  f9400308    ldr x8, [x24]
  0x800079d94:  9a8982a9    csel x9, x21, x9, hi
  0x800079d98:  7100029f    cmp w20, #0
  0x800079d9c:  91001d29    add x9, x9, #7
  0x800079da0:  5a94569a    cneg w26, w20, mi
  0x800079da4:  927df139    and x25, x9, #0xfffffffffffffff8
  0x800079da8:  51000749    sub w9, w26, #1
  0x800079dac:  6a09035f    tst w26, w9
  0x800079db0:  540025e1    b.ne #1212
  0x800079db4:  b9408269    ldr w9, [x19, #128]
  0x800079db8:  1b147d29    mul w9, w9, w20
  0x800079dbc:  37f827a9    tbnz w9, #31, #1268
  0x800079dc0:  f9405a6a    ldr x10, [x19, #176]
  0x800079dc4:  5100052b    sub w11, w9, #1
  0x800079dc8:  8b0b014a    add x10, x10, x11
  0x800079dcc:  8a2b0158    bic x24, x10, x11
  0x800079dd0:  8b19030a    add x10, x24, x25
  0x800079dd4:  eb18015f    cmp x10, x24
  0x800079dd8:  54000de3    b.lo #444
  0x800079ddc:  f9405e6b    ldr x11, [x19, #184]
  0x800079de0:  eb0a017f    cmp x11, x10
  0x800079de4:  54000d83    b.lo #432
  0x800079de8:  f9005a6a    str x10, [x19, #176]
  0x800079dec:  b4000db8    cbz x24, #436
  0x800079df0:  b5003816    cbnz x22, #1792
  0x800079df4:  aa1803e0    mov x0, x24
  0x800079df8:  a9484ff4    ldp x20, x19, [sp, #128]
  0x800079dfc:  a94757f6    ldp x22, x21, [sp, #112]
  0x800079e00:  a9465ff8    ldp x24, x23, [sp, #96]
  0x800079e04:  a94567fa    ldp x26, x25, [sp, #80]
  0x800079e08:  a9446ffc    ldp x28, x27, [sp, #64]
  0x800079e0c:  a9437bfd    ldp x29, x30, [sp, #48]
  0x800079e10:  910243ff    add sp, sp, #144
  0x800079e14:  d65f03c0    ret
  0x800079e18:  b0000ca8    adrp x8, #1658880
  0x800079e1c:  91393108    add x8, x8, #3660
  0x800079e20:  eb08007f    cmp x3, x8
  0x800079e24:  54000620    b.eq #196
  0x800079e28:  f0000808    adrp x8, #1060864
  0x800079e2c:  910d4108    add x8, x8, #848
  0x800079e30:  eb08007f    cmp x3, x8
  0x800079e34:  540009a1    b.ne #308
  0x800079e38:  f10022bf    cmp x21, #8
  0x800079e3c:  52800108    mov w8, #8
  0x800079e40:  f940031a    ldr x26, [x24]
  0x800079e44:  9a8882a8    csel x8, x21, x8, hi
  0x800079e48:  7100029f    cmp w20, #0
  0x800079e4c:  5a945689    cneg w9, w20, mi
  0x800079e50:  5100052a    sub w10, w9, #1
  0x800079e54:  6a0a013f    tst w9, w10
  0x800079e58:  54002821    b.ne #1284
  0x800079e5c:  91001d08    add x8, x8, #7
  0x800079e60:  927df117    and x23, x8, #0xfffffffffffffff8
  0x800079e64:  eb1502ff    cmp x23, x21
  0x800079e68:  54002883    b.lo #1296
  0x800079e6c:  b940aa68    ldr w8, [x19, #168]
  0x800079e70:  36000788    tbz w8, #0, #240
  0x800079e74:  91022276    add x22, x19, #136
  0x800079e78:  aa1603e0    mov x0, x22
  0x800079e7c:  94aca879    bl #45261284
  0x800079e80:  b9408268    ldr w8, [x19, #128]
  0x800079e84:  1b147d0c    mul w12, w8, w20
  0x800079e88:  37f8192c    tbnz w12, #31, #804
  0x800079e8c:  b980c669    ldrsw x9, [x19, #196]
  0x800079e90:  9102c279    add x25, x19, #176
  0x800079e94:  2a0c03f8    mov w24, w12
  0x800079e98:  f9405e6b    ldr x11, [x19, #184]
  0x800079e9c:  7100219f    cmp w12, #8
  0x800079ea0:  cb0903e8    neg x8, x9
  0x800079ea4:  cb09032a    sub x10, x25, x9
  0x800079ea8:  cb09016b    sub x11, x11, x9
  0x800079eac:  54000ec8    b.hi #472
  0x800079eb0:  eb0a017f    cmp x11, x10
  0x800079eb4:  54004960    b.eq #2348
  0x800079eb8:  3942b26c    ldrb w12, [x19, #172]
  0x800079ebc:  3500278c    cbnz w12, #1264
  0x800079ec0:  aa0b03e0    mov x0, x11
  0x800079ec4:  f9400c0b    ldr x11, [x0, #24]
  0x800079ec8:  eb17017f    cmp x11, x23
  0x800079ecc:  54002942    b.hs #1320
  0x800079ed0:  8b09000b    add x11, x0, x9
  0x800079ed4:  f940056b    ldr x11, [x11, #8]
  0x800079ed8:  8b080160    add x0, x11, x8
  0x800079edc:  eb0a001f    cmp x0, x10
  0x800079ee0:  54ffff21    b.ne #-28
  0x800079ee4:  1400023f    b #2300
  0x800079ee8:  f10022bf    cmp x21, #8
  0x800079eec:  52800108    mov w8, #8
  0x800079ef0:  f9400319    ldr x25, [x24]
  0x800079ef4:  9a8882a8    csel x8, x21, x8, hi
  0x800079ef8:  7100029f    cmp w20, #0
  0x800079efc:  91001d08    add x8, x8, #7
  0x800079f00:  927df117    and x23, x8, #0xfffffffffffffff8
  0x800079f04:  5a945688    cneg w8, w20, mi
  0x800079f08:  51000509    sub w9, w8, #1
  0x800079f0c:  6a09011f    tst w8, w9
  0x800079f10:  540031e1    b.ne #1596
  0x800079f14:  b940aa68    ldr w8, [x19, #168]
  0x800079f18:  37003228    tbnz w8, #0, #1604
  0x800079f1c:  aa1f03f6    mov x22, xzr
  0x800079f20:  b9408268    ldr w8, [x19, #128]
  0x800079f24:  1b147d08    mul w8, w8, w20
  0x800079f28:  37f815c8    tbnz w8, #31, #696
  0x800079f2c:  f9405a69    ldr x9, [x19, #176]
  0x800079f30:  5100050a    sub w10, w8, #1
  0x800079f34:  8b0a0129    add x9, x9, x10
  0x800079f38:  8a2a0138    bic x24, x9, x10
  0x800079f3c:  8b170309    add x9, x24, x23
  0x800079f40:  eb18013f    cmp x9, x24
  0x800079f44:  54001f03    b.lo #992
  0x800079f48:  f9405e6a    ldr x10, [x19, #184]
  0x800079f4c:  eb09015f    cmp x10, x9
  0x800079f50:  54001ea3    b.lo #980
  0x800079f54:  f9005a69    str x9, [x19, #176]
  0x800079f58:  b4fff4f6    cbz x22, #-356
  0x800079f5c:  14000165    b #1428
  0x800079f60:  aa1f03f6    mov x22, xzr
  0x800079f64:  17ffffc7    b #-228
  0x800079f68:  aa1303e0    mov x0, x19
  0x800079f6c:  aa1503e1    mov x1, x21
  0x800079f70:  2a1403e2    mov w2, w20
  0x800079f74:  a9484ff4    ldp x20, x19, [sp, #128]
  0x800079f78:  a94757f6    ldp x22, x21, [sp, #112]
  0x800079f7c:  a9465ff8    ldp x24, x23, [sp, #96]
  0x800079f80:  a94567fa    ldp x26, x25, [sp, #80]
  0x800079f84:  a9446ffc    ldp x28, x27, [sp, #64]
  0x800079f88:  a9437bfd    ldp x29, x30, [sp, #48]
  0x800079f8c:  910243ff    add sp, sp, #144
  0x800079f90:  d61f0060    br x3
  0x800079f94:  b4000068    cbz x8, #12
  0x800079f98:  f9400900    ldr x0, [x8, #16]
  0x800079f9c:  b5001ae0    cbnz x0, #860
  0x800079fa0:  aa1f03f8    mov x24, xzr
  0x800079fa4:  eb15033f    cmp x25, x21
  0x800079fa8:  54fff243    b.lo #-440
  0x800079fac:  f9401e60    ldr x0, [x19, #56]
  0x800079fb0:  b4fff200    cbz x0, #-448
  0x800079fb4:  7100275f    cmp w26, #9
  0x800079fb8:  1a9a33f8    csel w24, wzr, w26, lo
  0x800079fbc:  aa1303fa    mov x26, x19
  0x800079fc0:  f84c0f48    ldr x8, [x26, #192]!
  0x800079fc4:  b85e8349    ldur w9, [x26, #-24]
  0x800079fc8:  37180049    tbnz w9, #3, #8
  0x800079fcc:  b40000c8    cbz x8, #24
  0x800079fd0:  f9400268    ldr x8, [x19]
  0x800079fd4:  aa1303e0    mov x0, x19
  0x800079fd8:  f9401508    ldr x8, [x8, #40]
  0x800079fdc:  d63f0100    blr x8
  0x800079fe0:  f9401e60    ldr x0, [x19, #56]
  0x800079fe4:  8b384328    add x8, x25, w24, uxtw
  0x800079fe8:  9100411b    add x27, x8, #16
  0x800079fec:  29590a68    ldp w8, w2, [x19, #200]
  0x800079ff0:  d37ef51c    lsl x28, x8, #2
  0x800079ff4:  f9400008    ldr x8, [x0]
  0x800079ff8:  eb1b039f    cmp x28, x27
  0x800079ffc:  9a9b8399    csel x25, x28, x27, hi
  0x80007a000:  aa1903e1    mov x1, x25
  0x80007a004:  f9401908    ldr x8, [x8, #48]
  0x80007a008:  d63f0100    blr x8
  0x80007a00c:  b4002f60    cbz x0, #1516
  0x80007a010:  aa0003f8    mov x24, x0
  0x80007a014:  b940aa68    ldr w8, [x19, #168]
  0x80007a018:  37003168    tbnz w8, #0, #1580
  0x80007a01c:  aa1703e0    mov x0, x23
  0x80007a020:  94aca810    bl #45260864
  0x80007a024:  b940826a    ldr w10, [x19, #128]
  0x80007a028:  8b180328    add x8, x25, x24
  0x80007a02c:  d1004109    sub x9, x8, #16
  0x80007a030:  7100055f    cmp w10, #1
  0x80007a034:  9a89030a    csel x10, x24, x9, eq
  0x80007a038:  a9007d59    stp x25, xzr, [x10]
  0x80007a03c:  f940626b    ldr x11, [x19, #192]
  0x80007a040:  b5000c6b    cbnz x11, #396
  0x80007a044:  f900034a    str x10, [x26]
  0x80007a048:  9100430b    add x11, x24, #16
  0x80007a04c:  aa1303e0    mov x0, x19
  0x80007a050:  b940826a    ldr w10, [x19, #128]
  0x80007a054:  aa1503e1    mov x1, x21
  0x80007a058:  2a1403e2    mov w2, w20
  0x80007a05c:  7100055f    cmp w10, #1
  0x80007a060:  9a98016a    csel x10, x11, x24, eq
  0x80007a064:  9a890108    csel x8, x8, x9, eq
  0x80007a068:  a90b226a    stp x10, x8, [x19, #176]
  0x80007a06c:  940001f3    bl #1996
  0x80007a070:  aa0003f8    mov x24, x0
  0x80007a074:  b4ffebf7    cbz x23, #-644
  0x80007a078:  aa1703e0    mov x0, x23
  0x80007a07c:  94aca7fd    bl #45260788
  0x80007a080:  17ffff5c    b #-656
  0x80007a084:  eb0a017f    cmp x11, x10
  0x80007a088:  54003ac0    b.eq #1880
  0x80007a08c:  3942b26e    ldrb w14, [x19, #172]
  0x80007a090:  5100058c    sub w12, w12, #1
  0x80007a094:  aa2c03ed    mvn x13, x12
  0x80007a098:  35002eae    cbnz w14, #1492
  0x80007a09c:  aa0b03e0    mov x0, x11
  0x80007a0a0:  f9400c0b    ldr x11, [x0, #24]
  0x80007a0a4:  eb17017f    cmp x11, x23
  0x80007a0a8:  540029c3    b.lo #1336
  0x80007a0ac:  7940240e    ldrh w14, [x0, #18]
  0x80007a0b0:  8b0e000f    add x15, x0, x14
  0x80007a0b4:  910081ef    add x15, x15, #32
  0x80007a0b8:  8b0c01f0    add x16, x15, x12
  0x80007a0bc:  cb0f02ef    sub x15, x23, x15
  0x80007a0c0:  8a0d0210    and x16, x16, x13
  0x80007a0c4:  8b1001ef    add x15, x15, x16
  0x80007a0c8:  eb0f017f    cmp x11, x15
  0x80007a0cc:  540028a3    b.lo #1300
  0x80007a0d0:  8b09000a    add x10, x0, x9
  0x80007a0d4:  91008009    add x9, x0, #32
  0x80007a0d8:  f940054a    ldr x10, [x10, #8]
  0x80007a0dc:  8b080148    add x8, x10, x8
  0x80007a0e0:  eb19015f    cmp x10, x25
  0x80007a0e4:  9a8803f4    csel x20, xzr, x8, eq
  0x80007a0e8:  8b0e0128    add x8, x9, x14
  0x80007a0ec:  8b0c010a    add x10, x8, x12
  0x80007a0f0:  8a0d014a    and x10, x10, x13
  0x80007a0f4:  cb080148    sub x8, x10, x8
  0x80007a0f8:  8b170115    add x21, x8, x23
  0x80007a0fc:  f140411f    cmp x8, #16, lsl #12
  0x80007a100:  54002a62    b.hs #1356
  0x80007a104:  72003d1f    tst w8, #0xffff
  0x80007a108:  79002408    strh w8, [x0, #18]
  0x80007a10c:  54000080    b.eq #16
  0x80007a110:  8b090108    add x8, x8, x9
  0x80007a114:  b2400009    orr x9, x0, #0x1
  0x80007a118:  f81f8109    stur x9, [x8, #-8]
  0x80007a11c:  f9000c17    str x23, [x0, #24]
  0x80007a120:  b980c668    ldrsw x8, [x19, #196]
  0x80007a124:  8b000108    add x8, x8, x0
  0x80007a128:  f9400109    ldr x9, [x8]
  0x80007a12c:  b4000069    cbz x9, #12
  0x80007a130:  f940050a    ldr x10, [x8, #8]
  0x80007a134:  f900052a    str x10, [x9, #8]
  0x80007a138:  f9400509    ldr x9, [x8, #8]
  0x80007a13c:  b4000069    cbz x9, #12
  0x80007a140:  f940010a    ldr x10, [x8]
  0x80007a144:  f900012a    str x10, [x9]
  0x80007a148:  a9007d1f    stp xzr, xzr, [x8]
  0x80007a14c:  b940c268    ldr w8, [x19, #192]
  0x80007a150:  51000508    sub w8, w8, #1
  0x80007a154:  b900c268    str w8, [x19, #192]
  0x80007a158:  b9408269    ldr w9, [x19, #128]
  0x80007a15c:  cb150178    sub x24, x11, x21
  0x80007a160:  91032268    add x8, x19, #200
  0x80007a164:  b980de6a    ldrsw x10, [x19, #220]
  0x80007a168:  8b0a0001    add x1, x0, x10
  0x80007a16c:  7100053f    cmp w9, #1
  0x80007a170:  54002b41    b.ne #1384
  0x80007a174:  f9400109    ldr x9, [x8]
  0x80007a178:  f9000101    str x1, [x8]
  0x80007a17c:  a9002029    stp x9, x8, [x1]
  0x80007a180:  b4000049    cbz x9, #8
  0x80007a184:  f9000521    str x1, [x9, #8]
  0x80007a188:  b940da68    ldr w8, [x19, #216]
  0x80007a18c:  f100871f    cmp x24, #33
  0x80007a190:  11000508    add w8, w8, #1
  0x80007a194:  b900da68    str w8, [x19, #216]
  0x80007a198:  54002ae3    b.lo #1372
  0x80007a19c:  79402408    ldrh w8, [x0, #18]
  0x80007a1a0:  8b0002e9    add x9, x23, x0
  0x80007a1a4:  8b080128    add x8, x9, x8
  0x80007a1a8:  140000b9    b #740
  0x80007a1ac:  4b0c03f8    neg w24, w12
  0x80007a1b0:  aa1303e0    mov x0, x19
  0x80007a1b4:  aa1703e1    mov x1, x23
  0x80007a1b8:  3100219f    cmn w12, #8
  0x80007a1bc:  54002a63    b.lo #1356
  0x80007a1c0:  94040a02    bl #1058824
  0x80007a1c4:  b5001880    cbnz x0, #784
  0x80007a1c8:  14000186    b #1560
  0x80007a1cc:  aa0b03ec    mov x12, x11
  0x80007a1d0:  f940056b    ldr x11, [x11, #8]
  0x80007a1d4:  b5ffffcb    cbnz x11, #-8
  0x80007a1d8:  9100219a    add x26, x12, #8
  0x80007a1dc:  17ffff9a    b #-408
  0x80007a1e0:  f9405e6b    ldr x11, [x19, #184]
  0x80007a1e4:  4b0803e9    neg w9, w8
  0x80007a1e8:  cb17016a    sub x10, x11, x23
  0x80007a1ec:  eb0a017f    cmp x11, x10
  0x80007a1f0:  54003023    b.lo #1540
  0x80007a1f4:  b2607d08    orr x8, x8, #0xffffffff00000000
  0x80007a1f8:  8a080158    and x24, x10, x8
  0x80007a1fc:  f9405a68    ldr x8, [x19, #176]
  0x80007a200:  eb18011f    cmp x8, x24
  0x80007a204:  54002f88    b.hi #1520
  0x80007a208:  f9005e78    str x24, [x19, #184]
  0x80007a20c:  b4ffdf56    cbz x22, #-1048
  0x80007a210:  140000b8    b #736
  0x80007a214:  93407e80    sxtw x0, w20
  0x80007a218:  aa1503e1    mov x1, x21
  0x80007a21c:  a9484ff4    ldp x20, x19, [sp, #128]
  0x80007a220:  a94757f6    ldp x22, x21, [sp, #112]
  0x80007a224:  a9465ff8    ldp x24, x23, [sp, #96]
  0x80007a228:  a94567fa    ldp x26, x25, [sp, #80]
  0x80007a22c:  a9446ffc    ldp x28, x27, [sp, #64]
  0x80007a230:  a9437bfd    ldp x29, x30, [sp, #48]
  0x80007a234:  910243ff    add sp, sp, #144
  0x80007a238:  14007eaa    b #129704
  0x80007a23c:  9001d208    adrp x8, #61079552
  0x80007a240:  91368108    add x8, x8, #3488
  0x80007a244:  f9400108    ldr x8, [x8]
  0x80007a248:  b9404900    ldr w0, [x8, #72]
  0x80007a24c:  94aca61d    bl #45258868
  0x80007a250:  910022c8    add x8, x22, #8
  0x80007a254:  91022009    add x9, x0, #136
  0x80007a258:  f100001f    cmp x0, #0
  0x80007a25c:  9a890108    csel x8, x8, x9, eq
  0x80007a260:  f9400113    ldr x19, [x8]
  0x80007a264:  b5ffd7f3    cbnz x19, #-1284
  0x80007a268:  1400004f    b #316
  0x80007a26c:  b4000168    cbz x8, #44
  0x80007a270:  f9400900    ldr x0, [x8, #16]
  0x80007a274:  b4000120    cbz x0, #36
  0x80007a278:  a900d7f3    stp x19, x21, [sp, #8]
  0x80007a27c:  910023e1    add x1, sp, #8
  0x80007a280:  b9001bf4    str w20, [sp, #24]
  0x80007a284:  f90013f9    str x25, [sp, #32]
  0x80007a288:  b9002bf4    str w20, [sp, #40]
  0x80007a28c:  f9400008    ldr x8, [x0]
  0x80007a290:  f9400108    ldr x8, [x8]
  0x80007a294:  d63f0100    blr x8
  0x80007a298:  aa1f03f8    mov x24, xzr
  0x80007a29c:  17fffed5    b #-1196
  0x80007a2a0:  aa1703e0    mov x0, x23
  0x80007a2a4:  94aca76f    bl #45260220
  0x80007a2a8:  aa1703f6    mov x22, x23
  0x80007a2ac:  17fffeb7    b #-1316
  0x80007a2b0:  f9405e6c    ldr x12, [x19, #184]
  0x80007a2b4:  4b0903ea    neg w10, w9
  0x80007a2b8:  cb19018b    sub x11, x12, x25
  0x80007a2bc:  eb0b019f    cmp x12, x11
  0x80007a2c0:  540000c3    b.lo #24
  0x80007a2c4:  b2607d29    orr x9, x9, #0xffffffff00000000
  0x80007a2c8:  8a090178    and x24, x11, x9
  0x80007a2cc:  f9405a69    ldr x9, [x19, #176]
  0x80007a2d0:  eb18013f    cmp x9, x24
  0x80007a2d4:  54000249    b.ls #72
  0x80007a2d8:  b4ffe648    cbz x8, #-824
  0x80007a2dc:  f9400900    ldr x0, [x8, #16]
  0x80007a2e0:  b4ffe600    cbz x0, #-832
  0x80007a2e4:  a900d7f3    stp x19, x21, [sp, #8]
  0x80007a2e8:  b9001bf4    str w20, [sp, #24]
  0x80007a2ec:  f90013f9    str x25, [sp, #32]
  0x80007a2f0:  b9002bea    str w10, [sp, #40]
  0x80007a2f4:  14000005    b #20
  0x80007a2f8:  a900d7f3    stp x19, x21, [sp, #8]
  0x80007a2fc:  b9001bf4    str w20, [sp, #24]
  0x80007a300:  f90013f9    str x25, [sp, #32]
  0x80007a304:  b9002be9    str w9, [sp, #40]
  0x80007a308:  f9400008    ldr x8, [x0]
  0x80007a30c:  910023e1    add x1, sp, #8
  0x80007a310:  f9400108    ldr x8, [x8]
  0x80007a314:  d63f0100    blr x8
  0x80007a318:  17ffff22    b #-888
  0x80007a31c:  f9005e78    str x24, [x19, #184]
  0x80007a320:  17fffeb3    b #-1332
  0x80007a324:  b4000179    cbz x25, #44
  0x80007a328:  f9400b20    ldr x0, [x25, #16]
  0x80007a32c:  b4000120    cbz x0, #36
  0x80007a330:  a900d7f3    stp x19, x21, [sp, #8]
  0x80007a334:  b9001bf4    str w20, [sp, #24]
  0x80007a338:  f90013f7    str x23, [sp, #32]
  0x80007a33c:  b9002be8    str w8, [sp, #40]
  0x80007a340:  f9400008    ldr x8, [x0]
  0x80007a344:  910023e1    add x1, sp, #8
  0x80007a348:  f9400108    ldr x8, [x8]
  0x80007a34c:  d63f0100    blr x8
  0x80007a350:  aa1f03f8    mov x24, xzr
  0x80007a354:  b4ffd516    cbz x22, #-1376
  0x80007a358:  14000066    b #408
  0x80007a35c:  b400025a    cbz x26, #72
  0x80007a360:  f9400b40    ldr x0, [x26, #16]
  0x80007a364:  b4000200    cbz x0, #64
  0x80007a368:  a900d7f3    stp x19, x21, [sp, #8]
  0x80007a36c:  b9001bf4    str w20, [sp, #24]
  0x80007a370:  f90013e8    str x8, [sp, #32]
  0x80007a374:  14000007    b #28
  0x80007a378:  b400017a    cbz x26, #44
  0x80007a37c:  f9400b40    ldr x0, [x26, #16]
  0x80007a380:  b4000120    cbz x0, #36
  0x80007a384:  a900d7f3    stp x19, x21, [sp, #8]
  0x80007a388:  b9001bf4    str w20, [sp, #24]
  0x80007a38c:  f90013f7    str x23, [sp, #32]
  0x80007a390:  b9002bf4    str w20, [sp, #40]
  0x80007a394:  910023e1    add x1, sp, #8
  0x80007a398:  f9400008    ldr x8, [x0]
  0x80007a39c:  f9400108    ldr x8, [x8]
  0x80007a3a0:  d63f0100    blr x8
  0x80007a3a4:  aa1f03f8    mov x24, xzr
  0x80007a3a8:  17fffe93    b #-1460
  0x80007a3ac:  7100059f    cmp w12, #1
  0x80007a3b0:  54000de1    b.ne #444
  0x80007a3b4:  aa1f03e0    mov x0, xzr
  0x80007a3b8:  f9400d6c    ldr x12, [x11, #24]
  0x80007a3bc:  eb17019f    cmp x12, x23
  0x80007a3c0:  540000c3    b.lo #24
  0x80007a3c4:  b4000080    cbz x0, #16
  0x80007a3c8:  f9400c0d    ldr x13, [x0, #24]
  0x80007a3cc:  eb0c01bf    cmp x13, x12
  0x80007a3d0:  54000049    b.ls #8
  0x80007a3d4:  aa0b03e0    mov x0, x11
  0x80007a3d8:  8b09016b    add x11, x11, x9
  0x80007a3dc:  f940056b    ldr x11, [x11, #8]
  0x80007a3e0:  8b08016b    add x11, x11, x8
  0x80007a3e4:  eb0a017f    cmp x11, x10
  0x80007a3e8:  54fffe81    b.ne #-48
  0x80007a3ec:  b4001fa0    cbz x0, #1012
  0x80007a3f0:  f9400c0b    ldr x11, [x0, #24]
  0x80007a3f4:  f9000c17    str x23, [x0, #24]
  0x80007a3f8:  79402415    ldrh w21, [x0, #18]
  0x80007a3fc:  b980c66a    ldrsw x10, [x19, #196]
  0x80007a400:  8b000148    add x8, x10, x0
  0x80007a404:  f9400509    ldr x9, [x8, #8]
  0x80007a408:  eb19013f    cmp x9, x25
  0x80007a40c:  54000781    b.ne #240
  0x80007a410:  aa1f03f4    mov x20, xzr
  0x80007a414:  f940010a    ldr x10, [x8]
  0x80007a418:  b400006a    cbz x10, #12
  0x80007a41c:  f9000549    str x9, [x10, #8]
  0x80007a420:  f9400509    ldr x9, [x8, #8]
  0x80007a424:  b4000069    cbz x9, #12
  0x80007a428:  f940010a    ldr x10, [x8]
  0x80007a42c:  f900012a    str x10, [x9]
  0x80007a430:  a9007d1f    stp xzr, xzr, [x8]
  0x80007a434:  cb170178    sub x24, x11, x23
  0x80007a438:  b940c269    ldr w9, [x19, #192]
  0x80007a43c:  b940826a    ldr w10, [x19, #128]
  0x80007a440:  91032268    add x8, x19, #200
  0x80007a444:  51000529    sub w9, w9, #1
  0x80007a448:  7100055f    cmp w10, #1
  0x80007a44c:  b900c269    str w9, [x19, #192]
  0x80007a450:  b980de69    ldrsw x9, [x19, #220]
  0x80007a454:  8b000121    add x1, x9, x0
  0x80007a458:  540006c1    b.ne #216
  0x80007a45c:  f9400109    ldr x9, [x8]
  0x80007a460:  f9000101    str x1, [x8]
  0x80007a464:  a9002029    stp x9, x8, [x1]
  0x80007a468:  b4000049    cbz x9, #8
  0x80007a46c:  f9000521    str x1, [x9, #8]
  0x80007a470:  b940da68    ldr w8, [x19, #216]
  0x80007a474:  f100871f    cmp x24, #33
  0x80007a478:  11000508    add w8, w8, #1
  0x80007a47c:  b900da68    str w8, [x19, #216]
  0x80007a480:  54000503    b.lo #160
  0x80007a484:  8b0002e8    add x8, x23, x0
  0x80007a488:  8b150108    add x8, x8, x21
  0x80007a48c:  f8020d1f    str xzr, [x8, #32]!
  0x80007a490:  d1008309    sub x9, x24, #32
  0x80007a494:  f9000d09    str x9, [x8, #24]
  0x80007a498:  529fffe9    mov w9, #65535
  0x80007a49c:  b900111f    str wzr, [x8, #16]
  0x80007a4a0:  f900051f    str xzr, [x8, #8]
  0x80007a4a4:  79002109    strh w9, [x8, #16]
  0x80007a4a8:  b980c669    ldrsw x9, [x19, #196]
  0x80007a4ac:  b50002d4    cbnz x20, #88
  0x80007a4b0:  8b090108    add x8, x8, x9
  0x80007a4b4:  f9400329    ldr x9, [x25]
  0x80007a4b8:  f9000328    str x8, [x25]
  0x80007a4bc:  a9006509    stp x9, x25, [x8]
  0x80007a4c0:  b4000049    cbz x9, #8
  0x80007a4c4:  f9000528    str x8, [x9, #8]
  0x80007a4c8:  b940c268    ldr w8, [x19, #192]
  0x80007a4cc:  11000508    add w8, w8, #1
  0x80007a4d0:  b900c268    str w8, [x19, #192]
  0x80007a4d4:  b940aa68    ldr w8, [x19, #168]
  0x80007a4d8:  53107d08    lsr w8, w8, #16
  0x80007a4dc:  79002008    strh w8, [x0, #16]
  0x80007a4e0:  79402408    ldrh w8, [x0, #18]
  0x80007a4e4:  8b080008    add x8, x0, x8
  0x80007a4e8:  91008118    add x24, x8, #32
  0x80007a4ec:  b4ffc856    cbz x22, #-1784
  0x80007a4f0:  aa1603e0    mov x0, x22
  0x80007a4f4:  94aca6df    bl #45259644
  0x80007a4f8:  17fffe3f    b #-1796
  0x80007a4fc:  cb0a0134    sub x20, x9, x10
  0x80007a500:  17ffffc5    b #-236
  0x80007a504:  8b14012a    add x10, x9, x20
  0x80007a508:  8b090108    add x8, x8, x9
  0x80007a50c:  f9400149    ldr x9, [x10]
  0x80007a510:  f9000148    str x8, [x10]
  0x80007a514:  a9002909    stp x9, x10, [x8]
  0x80007a518:  b5fffd69    cbnz x9, #-84
  0x80007a51c:  17ffffeb    b #-84
  0x80007a520:  eb17017f    cmp x11, x23
  0x80007a524:  54fffd80    b.eq #-80
  0x80007a528:  f9000c0b    str x11, [x0, #24]
  0x80007a52c:  17ffffea    b #-88
  0x80007a530:  aa0003fa    mov x26, x0
  0x80007a534:  aa0803e0    mov x0, x8
  0x80007a538:  aa0b03fb    mov x27, x11
  0x80007a53c:  949cbdd3    bl #41088844
  0x80007a540:  aa1b03eb    mov x11, x27
  0x80007a544:  aa1a03e0    mov x0, x26
  0x80007a548:  17ffffca    b #-216
  0x80007a54c:  b4fff2d9    cbz x25, #-424
  0x80007a550:  f9400b20    ldr x0, [x25, #16]
  0x80007a554:  b5fff180    cbnz x0, #-464
  0x80007a558:  17ffff93    b #-436
  0x80007a55c:  91022276    add x22, x19, #136
  0x80007a560:  aa1603e0    mov x0, x22
  0x80007a564:  94aca6bf    bl #45259516
  0x80007a568:  17fffe6e    b #-1608
  0x80007a56c:  7100099f    cmp w12, #2
  0x80007a570:  54000201    b.ne #64
  0x80007a574:  aa1f03e0    mov x0, xzr
  0x80007a578:  f9400d6c    ldr x12, [x11, #24]
  0x80007a57c:  eb17019f    cmp x12, x23
  0x80007a580:  540000c3    b.lo #24
  0x80007a584:  b4000080    cbz x0, #16
  0x80007a588:  f9400c0d    ldr x13, [x0, #24]
  0x80007a58c:  eb0c01bf    cmp x13, x12
  0x80007a590:  54000042    b.hs #8
  0x80007a594:  aa0b03e0    mov x0, x11
  0x80007a598:  8b09016b    add x11, x11, x9
  0x80007a59c:  f940056b    ldr x11, [x11, #8]
  0x80007a5a0:  8b08016b    add x11, x11, x8
  0x80007a5a4:  eb0a017f    cmp x11, x10
  0x80007a5a8:  54fffe81    b.ne #-48
  0x80007a5ac:  17ffff90    b #-448
  0x80007a5b0:  aa1f03e0    mov x0, xzr
  0x80007a5b4:  f100001f    cmp x0, #0
  0x80007a5b8:  f9400d6c    ldr x12, [x11, #24]
  0x80007a5bc:  9a80016d    csel x13, x11, x0, eq
  0x80007a5c0:  8b09016b    add x11, x11, x9
  0x80007a5c4:  f940056b    ldr x11, [x11, #8]
  0x80007a5c8:  eb17019f    cmp x12, x23
  0x80007a5cc:  9a8d3000    csel x0, x0, x13, lo
  0x80007a5d0:  8b08016b    add x11, x11, x8
  0x80007a5d4:  eb0a017f    cmp x11, x10
  0x80007a5d8:  54fffee1    b.ne #-36
  0x80007a5dc:  17ffff84    b #-496
  0x80007a5e0:  8b09000b    add x11, x0, x9
  0x80007a5e4:  f940056b    ldr x11, [x11, #8]
  0x80007a5e8:  8b080160    add x0, x11, x8
  0x80007a5ec:  eb0a001f    cmp x0, x10
  0x80007a5f0:  54ffd581    b.ne #-1360
  0x80007a5f4:  1400007b    b #492
  0x80007a5f8:  eb1c037f    cmp x27, x28
  0x80007a5fc:  54ffe4e2    b.hs #-868
  0x80007a600:  f9401e60    ldr x0, [x19, #56]
  0x80007a604:  b940ce61    ldr w1, [x19, #204]
  0x80007a608:  f9400008    ldr x8, [x0]
  0x80007a60c:  f9404508    ldr x8, [x8, #136]
  0x80007a610:  d63f0100    blr x8
  0x80007a614:  eb00037f    cmp x27, x0
  0x80007a618:  54ffe408    b.hi #-896
  0x80007a61c:  aa0003f9    mov x25, x0
  0x80007a620:  f9401e60    ldr x0, [x19, #56]
  0x80007a624:  aa1903e1    mov x1, x25
  0x80007a628:  b940ce62    ldr w2, [x19, #204]
  0x80007a62c:  f9400008    ldr x8, [x0]
  0x80007a630:  f9401908    ldr x8, [x8, #48]
  0x80007a634:  d63f0100    blr x8
  0x80007a638:  aa0003f8    mov x24, x0
  0x80007a63c:  b4ffbda0    cbz x0, #-2124
  0x80007a640:  17fffe75    b #-1580
  0x80007a644:  aa1f03f7    mov x23, xzr
  0x80007a648:  17fffe77    b #-1572
  0x80007a64c:  d1008109    sub x9, x8, #32
  0x80007a650:  7900241f    strh wzr, [x0, #18]
  0x80007a654:  f9000c09    str x9, [x0, #24]
  0x80007a658:  8b000100    add x0, x8, x0
  0x80007a65c:  b900101f    str wzr, [x0, #16]
  0x80007a660:  f9000c17    str x23, [x0, #24]
  0x80007a664:  a9007c1f    stp xzr, xzr, [x0]
  0x80007a668:  17fffebc    b #-1296
  0x80007a66c:  710005df    cmp w14, #1
  0x80007a670:  54000521    b.ne #164
  0x80007a674:  aa1f03e0    mov x0, xzr
  0x80007a678:  f9400d6e    ldr x14, [x11, #24]
  0x80007a67c:  eb1701df    cmp x14, x23
  0x80007a680:  540000e2    b.hs #28
  0x80007a684:  8b09016b    add x11, x11, x9
  0x80007a688:  f940056b    ldr x11, [x11, #8]
  0x80007a68c:  8b08016b    add x11, x11, x8
  0x80007a690:  eb0a017f    cmp x11, x10
  0x80007a694:  54ffff21    b.ne #-28
  0x80007a698:  1400004e    b #312
  0x80007a69c:  7940256f    ldrh w15, [x11, #18]
  0x80007a6a0:  8b0f016f    add x15, x11, x15
  0x80007a6a4:  910081ef    add x15, x15, #32
  0x80007a6a8:  8b0c01f0    add x16, x15, x12
  0x80007a6ac:  cb0f02ef    sub x15, x23, x15
  0x80007a6b0:  8a0d0210    and x16, x16, x13
  0x80007a6b4:  8b1001ef    add x15, x15, x16
  0x80007a6b8:  eb0f01df    cmp x14, x15
  0x80007a6bc:  54fffe43    b.lo #-56
  0x80007a6c0:  b4000080    cbz x0, #16
  0x80007a6c4:  f9400c0f    ldr x15, [x0, #24]
  0x80007a6c8:  eb0e01ff    cmp x15, x14
  0x80007a6cc:  54fffdc9    b.ls #-72
  0x80007a6d0:  aa0b03e0    mov x0, x11
  0x80007a6d4:  17ffffec    b #-80
  0x80007a6d8:  aa0003fa    mov x26, x0
  0x80007a6dc:  aa0803e0    mov x0, x8
  0x80007a6e0:  aa0b03fb    mov x27, x11
  0x80007a6e4:  949cbd69    bl #41088420
  0x80007a6e8:  aa1b03eb    mov x11, x27
  0x80007a6ec:  aa1a03e0    mov x0, x26
  0x80007a6f0:  17fffea6    b #-1384
  0x80007a6f4:  eb15017f    cmp x11, x21
  0x80007a6f8:  54ffeee0    b.eq #-548
  0x80007a6fc:  8b170308    add x8, x24, x23
  0x80007a700:  f9000c08    str x8, [x0, #24]
  0x80007a704:  17ffff74    b #-560
  0x80007a708:  2a1803e2    mov w2, w24
  0x80007a70c:  94040935    bl #1058004
  0x80007a710:  17fffead    b #-1356
  0x80007a714:  710009df    cmp w14, #2
  0x80007a718:  54000341    b.ne #104
  0x80007a71c:  aa1f03e0    mov x0, xzr
  0x80007a720:  f9400d6e    ldr x14, [x11, #24]
  0x80007a724:  eb1701df    cmp x14, x23
  0x80007a728:  540000e2    b.hs #28
  0x80007a72c:  8b09016b    add x11, x11, x9
  0x80007a730:  f940056b    ldr x11, [x11, #8]
  0x80007a734:  8b08016b    add x11, x11, x8
  0x80007a738:  eb0a017f    cmp x11, x10
  0x80007a73c:  54ffff21    b.ne #-28
  0x80007a740:  14000024    b #144
  0x80007a744:  7940256f    ldrh w15, [x11, #18]
  0x80007a748:  8b0f016f    add x15, x11, x15
  0x80007a74c:  910081ef    add x15, x15, #32
  0x80007a750:  8b0c01f0    add x16, x15, x12
  0x80007a754:  cb0f02ef    sub x15, x23, x15
  0x80007a758:  8a0d0210    and x16, x16, x13
  0x80007a75c:  8b1001ef    add x15, x15, x16
  0x80007a760:  eb0f01df    cmp x14, x15
  0x80007a764:  54fffe43    b.lo #-56
  0x80007a768:  b4000080    cbz x0, #16
  0x80007a76c:  f9400c0f    ldr x15, [x0, #24]
  0x80007a770:  eb0e01ff    cmp x15, x14
  0x80007a774:  54fffdc2    b.hs #-72
  0x80007a778:  aa0b03e0    mov x0, x11
  0x80007a77c:  17ffffec    b #-80
  0x80007a780:  aa1f03e0    mov x0, xzr
  0x80007a784:  f9400d6e    ldr x14, [x11, #24]
  0x80007a788:  eb1701df    cmp x14, x23
  0x80007a78c:  54000183    b.lo #48
  0x80007a790:  7940256f    ldrh w15, [x11, #18]
  0x80007a794:  f100001f    cmp x0, #0
  0x80007a798:  8b0f016f    add x15, x11, x15
  0x80007a79c:  910081ef    add x15, x15, #32
  0x80007a7a0:  8b0c01f0    add x16, x15, x12
  0x80007a7a4:  cb0f02ef    sub x15, x23, x15
  0x80007a7a8:  8a0d0210    and x16, x16, x13
  0x80007a7ac:  8b1001ef    add x15, x15, x16
  0x80007a7b0:  9a800170    csel x16, x11, x0, eq
  0x80007a7b4:  eb0f01df    cmp x14, x15
  0x80007a7b8:  9a903000    csel x0, x0, x16, lo
  0x80007a7bc:  8b09016b    add x11, x11, x9
  0x80007a7c0:  f940056b    ldr x11, [x11, #8]
  0x80007a7c4:  8b08016b    add x11, x11, x8
  0x80007a7c8:  eb0a017f    cmp x11, x10
  0x80007a7cc:  54fffdc1    b.ne #-72
  0x80007a7d0:  b4000080    cbz x0, #16
  0x80007a7d4:  7940240e    ldrh w14, [x0, #18]
  0x80007a7d8:  f9400c0b    ldr x11, [x0, #24]
  0x80007a7dc:  17fffe3d    b #-1804
  0x80007a7e0:  b400007a    cbz x26, #12
  0x80007a7e4:  f9400b40    ldr x0, [x26, #16]
  0x80007a7e8:  b5000160    cbnz x0, #44
  0x80007a7ec:  aa1f03f8    mov x24, xzr
  0x80007a7f0:  17ffff3f    b #-772
  0x80007a7f4:  b4ffdaf9    cbz x25, #-1188
  0x80007a7f8:  f9400b20    ldr x0, [x25, #16]
  0x80007a7fc:  b4ffdaa0    cbz x0, #-1196
  0x80007a800:  a900d7f3    stp x19, x21, [sp, #8]
  0x80007a804:  b9001bf4    str w20, [sp, #24]
  0x80007a808:  f90013f7    str x23, [sp, #32]
  0x80007a80c:  b9002be9    str w9, [sp, #40]
  0x80007a810:  17fffecc    b #-1232
  0x80007a814:  a900d7f3    stp x19, x21, [sp, #8]
  0x80007a818:  910023e1    add x1, sp, #8
  0x80007a81c:  b9001bf4    str w20, [sp, #24]
  0x80007a820:  f90013f7    str x23, [sp, #32]
  0x80007a824:  b9002bf8    str w24, [sp, #40]
  0x80007a828:  f9400008    ldr x8, [x0]
  0x80007a82c:  f9400108    ldr x8, [x8]
  0x80007a830:  d63f0100    blr x8
  0x80007a834:  17ffffee    b #-72

