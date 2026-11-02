; UltraTears chunk main_050_renderpass: 1 functions [0x8000dbae0..0x8000ddc60)

; Function f_8000dbae0 [0x8000dbae0..0x8000ddc60)
f_8000dbae0:
  0x8000dbae0:  d10303ff    sub sp, sp, #192
  0x8000dbae4:  a9067bfd    stp x29, x30, [sp, #96]
  0x8000dbae8:  a9076ffc    stp x28, x27, [sp, #112]
  0x8000dbaec:  a90867fa    stp x26, x25, [sp, #128]
  0x8000dbaf0:  a9095ff8    stp x24, x23, [sp, #144]
  0x8000dbaf4:  a90a57f6    stp x22, x21, [sp, #160]
  0x8000dbaf8:  a90b4ff4    stp x20, x19, [sp, #176]
  0x8000dbafc:  910183fd    add x29, sp, #96
  0x8000dbb00:  39411404    ldrb w4, [x0, #69]
  0x8000dbb04:  aa0103fa    mov x26, x1
  0x8000dbb08:  aa0003f3    mov x19, x0
  0x8000dbb0c:  7103fc9f    cmp w4, #255
  0x8000dbb10:  54000081    b.ne #16
  0x8000dbb14:  3940c668    ldrb w8, [x19, #49]
  0x8000dbb18:  8b080348    add x8, x26, x8
  0x8000dbb1c:  39408104    ldrb w4, [x8, #32]
  0x8000dbb20:  8b248348    add x8, x26, w4, sxtb
  0x8000dbb24:  3980bd08    ldrsb x8, [x8, #47]
  0x8000dbb28:  b100051f    cmn x8, #1
  0x8000dbb2c:  54007420    b.eq #3716
  0x8000dbb30:  f9402b49    ldr x9, [x26, #80]
  0x8000dbb34:  3941374a    ldrb w10, [x26, #77]
  0x8000dbb38:  9b282545    smaddl x5, w10, w8, x9
  0x8000dbb3c:  f94000b7    ldr x23, [x5]
  0x8000dbb40:  b40001b7    cbz x23, #52
  0x8000dbb44:  f94002e8    ldr x8, [x23]
  0x8000dbb48:  b4000168    cbz x8, #44
  0x8000dbb4c:  39411b48    ldrb w8, [x26, #70]
  0x8000dbb50:  3940f66a    ldrb w10, [x19, #61]
  0x8000dbb54:  6b08015f    cmp w10, w8
  0x8000dbb58:  f94006f8    ldr x24, [x23, #8]
  0x8000dbb5c:  79408269    ldrh w9, [x19, #64]
  0x8000dbb60:  f9408e66    ldr x6, [x19, #280]
  0x8000dbb64:  540000c1    b.ne #24
  0x8000dbb68:  2a1f03e8    mov w8, wzr
  0x8000dbb6c:  36000669    tbz w9, #0, #204
  0x8000dbb70:  140000bb    b #748
  0x8000dbb74:  2a1f03e0    mov w0, wzr
  0x8000dbb78:  14000072    b #456
  0x8000dbb7c:  3900f668    strb w8, [x19, #61]
  0x8000dbb80:  37587f69    tbnz w9, #11, #4076
  0x8000dbb84:  3940ca6a    ldrb w10, [x19, #50]
  0x8000dbb88:  2a080148    orr w8, w10, w8
  0x8000dbb8c:  3946766b    ldrb w11, [x19, #413]
  0x8000dbb90:  12001d0a    and w10, w8, #0xff
  0x8000dbb94:  121e0108    and w8, w8, #0x4
  0x8000dbb98:  4a48096c    eor w12, w11, w8, lsr #2
  0x8000dbb9c:  370000cc    tbnz w12, #0, #24
  0x8000dbba0:  7100011f    cmp w8, #0
  0x8000dbba4:  121f016d    and w13, w11, #0x2
  0x8000dbba8:  1a9f07ec    cset w12, ne
  0x8000dbbac:  4a4d058c    eor w12, w12, w13, lsr #1
  0x8000dbbb0:  36009a6c    tbz w12, #0, #4940
  0x8000dbbb4:  121f196b    and w11, w11, #0xfe
  0x8000dbbb8:  2a480968    orr w8, w11, w8, lsr #2
  0x8000dbbbc:  39067668    strb w8, [x19, #413]
  0x8000dbbc0:  52800028    mov w8, #1
  0x8000dbbc4:  1200054c    and w12, w10, #0x3
  0x8000dbbc8:  b001648d    adrp x13, #46731264
  0x8000dbbcc:  911e91ad    add x13, x13, #1956
  0x8000dbbd0:  100000ae    adr x14, #20
  0x8000dbbd4:  786c79af    ldrh w15, [x13, x12, lsl #1]
  0x8000dbbd8:  8b0f09ce    add x14, x14, x15, lsl #2
  0x8000dbbdc:  2a1f03eb    mov w11, wzr
  0x8000dbbe0:  d61f01c0    br x14
  0x8000dbbe4:  3718a7aa    tbnz w10, #3, #5364
  0x8000dbbe8:  5280004b    mov w11, #2
  0x8000dbbec:  3946566c    ldrb w12, [x19, #405]
  0x8000dbbf0:  6b0c017f    cmp w11, w12
  0x8000dbbf4:  54000060    b.eq #12
  0x8000dbbf8:  52800028    mov w8, #1
  0x8000dbbfc:  3906566b    strb w11, [x19, #405]
  0x8000dbc00:  5304154b    ubfx w11, w10, #4, #2
  0x8000dbc04:  7100057f    cmp w11, #1
  0x8000dbc08:  54007ae0    b.eq #3932
  0x8000dbc0c:  5280004a    mov w10, #2
  0x8000dbc10:  7100097f    cmp w11, #2
  0x8000dbc14:  54007b00    b.eq #3936
  0x8000dbc18:  3946726b    ldrb w11, [x19, #412]
  0x8000dbc1c:  6b0b015f    cmp w10, w11
  0x8000dbc20:  39466e6c    ldrb w12, [x19, #411]
  0x8000dbc24:  1a9f17eb    cset w11, eq
  0x8000dbc28:  6b0c015f    cmp w10, w12
  0x8000dbc2c:  54007a81    b.ne #3920
  0x8000dbc30:  36007aab    tbz w11, #0, #3924
  0x8000dbc34:  37001149    tbnz w9, #0, #552
  0x8000dbc38:  2a1f03ed    mov w13, wzr
  0x8000dbc3c:  2a0d0108    orr w8, w8, w13
  0x8000dbc40:  7100051f    cmp w8, #1
  0x8000dbc44:  54001680    b.eq #720
  0x8000dbc48:  eb1800df    cmp x6, x24
  0x8000dbc4c:  54003161    b.ne #1580
  0x8000dbc50:  79417a68    ldrh w8, [x19, #188]
  0x8000dbc54:  35006b48    cbnz w8, #3432
  0x8000dbc58:  39410a69    ldrb w9, [x19, #66]
  0x8000dbc5c:  39412748    ldrb w8, [x26, #73]
  0x8000dbc60:  6b09011f    cmp w8, w9
  0x8000dbc64:  54000a21    b.ne #324
  0x8000dbc68:  f9400748    ldr x8, [x26, #8]
  0x8000dbc6c:  39405108    ldrb w8, [x8, #20]
  0x8000dbc70:  92400515    and x21, x8, #0x3
  0x8000dbc74:  79408268    ldrh w8, [x19, #64]
  0x8000dbc78:  36286788    tbz w8, #5, #3312
  0x8000dbc7c:  8b1510a9    add x9, x5, x21, lsl #4
  0x8000dbc80:  91002122    add x2, x9, #8
  0x8000dbc84:  39402049    ldrb w9, [x2, #8]
  0x8000dbc88:  36006709    tbz w9, #0, #3296
  0x8000dbc8c:  36080509    tbz w9, #1, #160
  0x8000dbc90:  f9401268    ldr x8, [x19, #32]
  0x8000dbc94:  f9405d16    ldr x22, [x8, #184]
  0x8000dbc98:  52800028    mov w8, #1
  0x8000dbc9c:  390042c8    strb w8, [x22, #16]
  0x8000dbca0:  b001c388    adrp x8, #59183104
  0x8000dbca4:  f9479508    ldr x8, [x8, #3880]
  0x8000dbca8:  b9400108    ldr w8, [x8]
  0x8000dbcac:  34000708    cbz w8, #224
  0x8000dbcb0:  f94022cb    ldr x11, [x22, #64]
  0x8000dbcb4:  f94002ca    ldr x10, [x22]
  0x8000dbcb8:  eb0b014c    subs x12, x10, x11
  0x8000dbcbc:  f9400048    ldr x8, [x2]
  0x8000dbcc0:  f9402ac9    ldr x9, [x22, #80]
  0x8000dbcc4:  927fb901    and x1, x8, #0xfffffffffffe
  0x8000dbcc8:  a94236d9    ldp x25, x13, [x22, #32]
  0x8000dbccc:  d370fd18    lsr x24, x8, #48
  0x8000dbcd0:  54000481    b.ne #144
  0x8000dbcd4:  360005c8    tbz w8, #0, #184
  0x8000dbcd8:  8b180714    add x20, x24, x24, lsl #1
  0x8000dbcdc:  d37df288    lsl x8, x20, #3
  0x8000dbce0:  8b08032a    add x10, x25, x8
  0x8000dbce4:  3868682b    ldrb w11, [x1, x8]
  0x8000dbce8:  9100814a    add x10, x10, #32
  0x8000dbcec:  eb0d015f    cmp x10, x13
  0x8000dbcf0:  1a9f97ea    cset w10, hi
  0x8000dbcf4:  f100097f    cmp x11, #2
  0x8000dbcf8:  54006c81    b.ne #3472
  0x8000dbcfc:  3700048a    tbnz w10, #0, #144
  0x8000dbd00:  b4002f29    cbz x9, #1508
  0x8000dbd04:  aa1903f7    mov x23, x25
  0x8000dbd08:  aa0903f9    mov x25, x9
  0x8000dbd0c:  aa1703e0    mov x0, x23
  0x8000dbd10:  aa0803e2    mov x2, x8
  0x8000dbd14:  94ab212f    bl #44860604
  0x8000dbd18:  f9400329    ldr x9, [x25]
  0x8000dbd1c:  8b140ee8    add x8, x23, x20, lsl #3
  0x8000dbd20:  8b188129    add x9, x9, x24, lsl #32
  0x8000dbd24:  f9000329    str x9, [x25]
  0x8000dbd28:  f90012c8    str x8, [x22, #32]
  0x8000dbd2c:  3940c268    ldrb w8, [x19, #48]
  0x8000dbd30:  35006768    cbnz w8, #3308
  0x8000dbd34:  3940c268    ldrb w8, [x19, #48]
  0x8000dbd38:  b50065e8    cbnz x8, #3260
  0x8000dbd3c:  52800020    mov w0, #1
  0x8000dbd40:  a94b4ff4    ldp x20, x19, [sp, #176]
  0x8000dbd44:  a94a57f6    ldp x22, x21, [sp, #160]
  0x8000dbd48:  a9495ff8    ldp x24, x23, [sp, #144]
  0x8000dbd4c:  a94867fa    ldp x26, x25, [sp, #128]
  0x8000dbd50:  a9476ffc    ldp x28, x27, [sp, #112]
  0x8000dbd54:  a9467bfd    ldp x29, x30, [sp, #96]
  0x8000dbd58:  910303ff    add sp, sp, #192
  0x8000dbd5c:  d65f03c0    ret
  0x8000dbd60:  36000168    tbz w8, #0, #44
  0x8000dbd64:  8b180714    add x20, x24, x24, lsl #1
  0x8000dbd68:  d37df288    lsl x8, x20, #3
  0x8000dbd6c:  8b08032e    add x14, x25, x8
  0x8000dbd70:  3868682f    ldrb w15, [x1, x8]
  0x8000dbd74:  910081ce    add x14, x14, #32
  0x8000dbd78:  eb0d01df    cmp x14, x13
  0x8000dbd7c:  1a9f97ed    cset w13, hi
  0x8000dbd80:  f10009ff    cmp x15, #2
  0x8000dbd84:  54006861    b.ne #3340
  0x8000dbd88:  360032ed    tbz w13, #0, #1628
  0x8000dbd8c:  b001c408    adrp x8, #59248640
  0x8000dbd90:  aa1603e0    mov x0, x22
  0x8000dbd94:  f9416508    ldr x8, [x8, #712]
  0x8000dbd98:  52800021    mov w1, #1
  0x8000dbd9c:  f9400108    ldr x8, [x8]
  0x8000dbda0:  d63f0100    blr x8
  0x8000dbda4:  17ffffe2    b #-120
  0x8000dbda8:  b9406269    ldr w9, [x19, #96]
  0x8000dbdac:  3100053f    cmn w9, #1
  0x8000dbdb0:  54fff5c0    b.eq #-328
  0x8000dbdb4:  f9400a60    ldr x0, [x19, #16]
  0x8000dbdb8:  f9429809    ldr x9, [x0, #1328]
  0x8000dbdbc:  b4fff569    cbz x9, #-340
  0x8000dbdc0:  b9459009    ldr w9, [x0, #1424]
  0x8000dbdc4:  13001d01    sxtb w1, w8
  0x8000dbdc8:  3100043f    cmn w1, #1
  0x8000dbdcc:  f942cc14    ldr x20, [x0, #1432]
  0x8000dbdd0:  1a8103e8    csel w8, wzr, w1, eq
  0x8000dbdd4:  6b08013f    cmp w9, w8
  0x8000dbdd8:  52801b09    mov w9, #216
  0x8000dbddc:  1a9f8108    csel w8, w8, wzr, hi
  0x8000dbde0:  93407d15    sxtw x21, w8
  0x8000dbde4:  9b295108    smaddl x8, w8, w9, x20
  0x8000dbde8:  91034108    add x8, x8, #208
  0x8000dbdec:  885f7d09    ldxr w9, [x8]
  0x8000dbdf0:  b240012a    orr x10, x9, #0x1
  0x8000dbdf4:  880b7d0a    stxr w11, w10, [x8]
  0x8000dbdf8:  35ffffab    cbnz w11, #-12
  0x8000dbdfc:  f81d83ba    stur x26, [x29, #-40]
  0x8000dbe00:  340089a9    cbz w9, #4404
  0x8000dbe04:  52801b08    mov w8, #216
  0x8000dbe08:  d001c419    adrp x25, #59252736
  0x8000dbe0c:  f9401277    ldr x23, [x19, #32]
  0x8000dbe10:  9b2852a8    smaddl x8, w21, w8, x20
  0x8000dbe14:  b940627a    ldr w26, [x19, #96]
  0x8000dbe18:  f9400109    ldr x9, [x8]
  0x8000dbe1c:  3941291c    ldrb w28, [x8, #74]
  0x8000dbe20:  f9404116    ldr x22, [x8, #128]
  0x8000dbe24:  7940911b    ldrh w27, [x8, #72]
  0x8000dbe28:  b9404118    ldr w24, [x8, #64]
  0x8000dbe2c:  f9401529    ldr x9, [x9, #40]
  0x8000dbe30:  f9478739    ldr x25, [x25, #3848]
  0x8000dbe34:  eb19013f    cmp x9, x25
  0x8000dbe38:  540088a1    b.ne #4372
  0x8000dbe3c:  1103ff18    add w24, w24, #255
  0x8000dbe40:  52802000    mov w0, #256
  0x8000dbe44:  3100075f    cmn w26, #1
  0x8000dbe48:  54008a01    b.ne #4416
  0x8000dbe4c:  f85d83ba    ldur x26, [x29, #-40]
  0x8000dbe50:  39412748    ldrb w8, [x26, #73]
  0x8000dbe54:  39010a68    strb w8, [x19, #66]
  0x8000dbe58:  17ffff84    b #-496
  0x8000dbe5c:  f940374b    ldr x11, [x26, #104]
  0x8000dbe60:  b940a26c    ldr w12, [x19, #160]
  0x8000dbe64:  b941816a    ldr w10, [x11, #384]
  0x8000dbe68:  6b0a019f    cmp w12, w10
  0x8000dbe6c:  54ffee60    b.eq #-564
  0x8000dbe70:  b900a26a    str w10, [x19, #160]
  0x8000dbe74:  3941126d    ldrb w13, [x19, #68]
  0x8000dbe78:  b940026a    ldr w10, [x19]
  0x8000dbe7c:  3946256c    ldrb w12, [x11, #393]
  0x8000dbe80:  1200098c    and w12, w12, #0x7
  0x8000dbe84:  7100099f    cmp w12, #2
  0x8000dbe88:  54006361    b.ne #3180
  0x8000dbe8c:  b941056c    ldr w12, [x11, #260]
  0x8000dbe90:  350024ac    cbnz w12, #1172
  0x8000dbe94:  2a1f03ed    mov w13, wzr
  0x8000dbe98:  b941366e    ldr w14, [x19, #308]
  0x8000dbe9c:  6b0d01df    cmp w14, w13
  0x8000dbea0:  540052c1    b.ne #2648
  0x8000dbea4:  1200018d    and w13, w12, #0x1
  0x8000dbea8:  361feca9    tbz w9, #3, #-620
  0x8000dbeac:  39462569    ldrb w9, [x11, #393]
  0x8000dbeb0:  12000929    and w9, w9, #0x7
  0x8000dbeb4:  7100153f    cmp w9, #5
  0x8000dbeb8:  54002201    b.ne #1088
  0x8000dbebc:  3944c269    ldrb w9, [x19, #304]
  0x8000dbec0:  7100013f    cmp w9, #0
  0x8000dbec4:  39440169    ldrb w9, [x11, #256]
  0x8000dbec8:  1a9f07ed    cset w13, ne
  0x8000dbecc:  7100013f    cmp w9, #0
  0x8000dbed0:  1a9f07ee    cset w14, ne
  0x8000dbed4:  6b0e01bf    cmp w13, w14
  0x8000dbed8:  54008081    b.ne #4112
  0x8000dbedc:  3944c66d    ldrb w13, [x19, #305]
  0x8000dbee0:  710001bf    cmp w13, #0
  0x8000dbee4:  3944056d    ldrb w13, [x11, #257]
  0x8000dbee8:  1a9f07ee    cset w14, ne
  0x8000dbeec:  710001bf    cmp w13, #0
  0x8000dbef0:  1a9f07ef    cset w15, ne
  0x8000dbef4:  6b0f01df    cmp w14, w15
  0x8000dbef8:  54007fa1    b.ne #4084
  0x8000dbefc:  3946526d    ldrb w13, [x19, #404]
  0x8000dbf00:  39459169    ldrb w9, [x11, #356]
  0x8000dbf04:  6b0901bf    cmp w13, w9
  0x8000dbf08:  540020a0    b.eq #1044
  0x8000dbf0c:  39065269    strb w9, [x19, #404]
  0x8000dbf10:  14000002    b #8
  0x8000dbf14:  b940026a    ldr w10, [x19]
  0x8000dbf18:  3787e98a    tbnz w10, #16, #-720
  0x8000dbf1c:  f9401268    ldr x8, [x19, #32]
  0x8000dbf20:  a90197e6    stp x6, x5, [sp, #24]
  0x8000dbf24:  d10023a0    sub x0, x29, #8
  0x8000dbf28:  f9405d14    ldr x20, [x8, #184]
  0x8000dbf2c:  f81d83ba    stur x26, [x29, #-40]
  0x8000dbf30:  a902e3e4    stp x4, x24, [sp, #40]
  0x8000dbf34:  b001c408    adrp x8, #59248640
  0x8000dbf38:  f9450908    ldr x8, [x8, #2576]
  0x8000dbf3c:  f9400108    ldr x8, [x8]
  0x8000dbf40:  d63f0100    blr x8
  0x8000dbf44:  b001c408    adrp x8, #59248640
  0x8000dbf48:  d10043a0    sub x0, x29, #16
  0x8000dbf4c:  f9454508    ldr x8, [x8, #2696]
  0x8000dbf50:  f9400108    ldr x8, [x8]
  0x8000dbf54:  d63f0100    blr x8
  0x8000dbf58:  b9413668    ldr w8, [x19, #308]
  0x8000dbf5c:  35003108    cbnz w8, #1568
  0x8000dbf60:  b001c408    adrp x8, #59248640
  0x8000dbf64:  d10043a0    sub x0, x29, #16
  0x8000dbf68:  f9454d08    ldr x8, [x8, #2712]
  0x8000dbf6c:  52800061    mov w1, #3
  0x8000dbf70:  f9400108    ldr x8, [x8]
  0x8000dbf74:  d63f0100    blr x8
  0x8000dbf78:  b001c408    adrp x8, #59248640
  0x8000dbf7c:  d10043a1    sub x1, x29, #16
  0x8000dbf80:  f940bd08    ldr x8, [x8, #376]
  0x8000dbf84:  aa1403e0    mov x0, x20
  0x8000dbf88:  f9400108    ldr x8, [x8]
  0x8000dbf8c:  d63f0100    blr x8
  0x8000dbf90:  b001c408    adrp x8, #59248640
  0x8000dbf94:  9104e261    add x1, x19, #312
  0x8000dbf98:  f940c108    ldr x8, [x8, #384]
  0x8000dbf9c:  aa1403e0    mov x0, x20
  0x8000dbfa0:  f9400108    ldr x8, [x8]
  0x8000dbfa4:  d63f0100    blr x8
  0x8000dbfa8:  9001c416    adrp x22, #59244544
  0x8000dbfac:  39453268    ldrb w8, [x19, #332]
  0x8000dbfb0:  d10033a0    sub x0, x29, #12
  0x8000dbfb4:  f9472ad6    ldr x22, [x22, #3664]
  0x8000dbfb8:  2a1f03e1    mov w1, wzr
  0x8000dbfbc:  12000102    and w2, w8, #0x1
  0x8000dbfc0:  53010503    ubfx w3, w8, #1, #1
  0x8000dbfc4:  53020904    ubfx w4, w8, #2, #1
  0x8000dbfc8:  53030d05    ubfx w5, w8, #3, #1
  0x8000dbfcc:  f94002c8    ldr x8, [x22]
  0x8000dbfd0:  d63f0100    blr x8
  0x8000dbfd4:  b9414e68    ldr w8, [x19, #332]
  0x8000dbfd8:  d10033a0    sub x0, x29, #12
  0x8000dbfdc:  52800021    mov w1, #1
  0x8000dbfe0:  53041102    ubfx w2, w8, #4, #1
  0x8000dbfe4:  53051503    ubfx w3, w8, #5, #1
  0x8000dbfe8:  53061904    ubfx w4, w8, #6, #1
  0x8000dbfec:  53071d05    ubfx w5, w8, #7, #1
  0x8000dbff0:  f94002c8    ldr x8, [x22]
  0x8000dbff4:  d63f0100    blr x8
  0x8000dbff8:  39453668    ldrb w8, [x19, #333]
  0x8000dbffc:  d10033a0    sub x0, x29, #12
  0x8000dc000:  52800041    mov w1, #2
  0x8000dc004:  12000102    and w2, w8, #0x1
  0x8000dc008:  53010503    ubfx w3, w8, #1, #1
  0x8000dc00c:  53020904    ubfx w4, w8, #2, #1
  0x8000dc010:  53030d05    ubfx w5, w8, #3, #1
  0x8000dc014:  f94002c8    ldr x8, [x22]
  0x8000dc018:  d63f0100    blr x8
  0x8000dc01c:  b9414e68    ldr w8, [x19, #332]
  0x8000dc020:  d10033a0    sub x0, x29, #12
  0x8000dc024:  52800061    mov w1, #3
  0x8000dc028:  530c3102    ubfx w2, w8, #12, #1
  0x8000dc02c:  530d3503    ubfx w3, w8, #13, #1
  0x8000dc030:  530e3904    ubfx w4, w8, #14, #1
  0x8000dc034:  530f3d05    ubfx w5, w8, #15, #1
  0x8000dc038:  f94002c8    ldr x8, [x22]
  0x8000dc03c:  d63f0100    blr x8
  0x8000dc040:  39453a68    ldrb w8, [x19, #334]
  0x8000dc044:  d10033a0    sub x0, x29, #12
  0x8000dc048:  52800081    mov w1, #4
  0x8000dc04c:  12000102    and w2, w8, #0x1
  0x8000dc050:  53010503    ubfx w3, w8, #1, #1
  0x8000dc054:  53020904    ubfx w4, w8, #2, #1
  0x8000dc058:  53030d05    ubfx w5, w8, #3, #1
  0x8000dc05c:  f94002c8    ldr x8, [x22]
  0x8000dc060:  d63f0100    blr x8
  0x8000dc064:  b9414e68    ldr w8, [x19, #332]
  0x8000dc068:  528000a1    mov w1, #5
  0x8000dc06c:  d10033a0    sub x0, x29, #12
  0x8000dc070:  53145102    ubfx w2, w8, #20, #1
  0x8000dc074:  53155503    ubfx w3, w8, #21, #1
  0x8000dc078:  53165904    ubfx w4, w8, #22, #1
  0x8000dc07c:  53175d05    ubfx w5, w8, #23, #1
  0x8000dc080:  f94002c8    ldr x8, [x22]
  0x8000dc084:  d63f0100    blr x8
  0x8000dc088:  b9414e68    ldr w8, [x19, #332]
  0x8000dc08c:  d10033a0    sub x0, x29, #12
  0x8000dc090:  528000c1    mov w1, #6
  0x8000dc094:  53186102    ubfx w2, w8, #24, #1
  0x8000dc098:  53196503    ubfx w3, w8, #25, #1
  0x8000dc09c:  531a6904    ubfx w4, w8, #26, #1
  0x8000dc0a0:  531b6d05    ubfx w5, w8, #27, #1
  0x8000dc0a4:  f94002c8    ldr x8, [x22]
  0x8000dc0a8:  d63f0100    blr x8
  0x8000dc0ac:  b9414e68    ldr w8, [x19, #332]
  0x8000dc0b0:  d10033a0    sub x0, x29, #12
  0x8000dc0b4:  528000e1    mov w1, #7
  0x8000dc0b8:  531c7102    ubfx w2, w8, #28, #1
  0x8000dc0bc:  531d7503    ubfx w3, w8, #29, #1
  0x8000dc0c0:  531e7904    ubfx w4, w8, #30, #1
  0x8000dc0c4:  531f7d05    lsr w5, w8, #31
  0x8000dc0c8:  f94002c8    ldr x8, [x22]
  0x8000dc0cc:  d63f0100    blr x8
  0x8000dc0d0:  f001c3e8    adrp x8, #59240448
  0x8000dc0d4:  d10033a1    sub x1, x29, #12
  0x8000dc0d8:  f9472d08    ldr x8, [x8, #3672]
  0x8000dc0dc:  aa1403e0    mov x0, x20
  0x8000dc0e0:  f9400108    ldr x8, [x8]
  0x8000dc0e4:  d63f0100    blr x8
  0x8000dc0e8:  9001c408    adrp x8, #59244544
  0x8000dc0ec:  d10063a0    sub x0, x29, #24
  0x8000dc0f0:  f945dd08    ldr x8, [x8, #3000]
  0x8000dc0f4:  3944c261    ldrb w1, [x19, #304]
  0x8000dc0f8:  f9400108    ldr x8, [x8]
  0x8000dc0fc:  d63f0100    blr x8
  0x8000dc100:  9001c408    adrp x8, #59244544
  0x8000dc104:  d10063a0    sub x0, x29, #24
  0x8000dc108:  f945e108    ldr x8, [x8, #3008]
  0x8000dc10c:  3944c661    ldrb w1, [x19, #305]
  0x8000dc110:  f9400108    ldr x8, [x8]
  0x8000dc114:  d63f0100    blr x8
  0x8000dc118:  9001c408    adrp x8, #59244544
  0x8000dc11c:  39465261    ldrb w1, [x19, #404]
  0x8000dc120:  d10063a0    sub x0, x29, #24
  0x8000dc124:  f945e508    ldr x8, [x8, #3016]
  0x8000dc128:  f9400108    ldr x8, [x8]
  0x8000dc12c:  d63f0100    blr x8
  0x8000dc130:  9001c408    adrp x8, #59244544
  0x8000dc134:  d10063a0    sub x0, x29, #24
  0x8000dc138:  f945e908    ldr x8, [x8, #3024]
  0x8000dc13c:  3944ce61    ldrb w1, [x19, #307]
  0x8000dc140:  f9400108    ldr x8, [x8]
  0x8000dc144:  d63f0100    blr x8
  0x8000dc148:  9001c408    adrp x8, #59244544
  0x8000dc14c:  39466a62    ldrb w2, [x19, #410]
  0x8000dc150:  d10063a0    sub x0, x29, #24
  0x8000dc154:  f945ed08    ldr x8, [x8, #3032]
  0x8000dc158:  52800061    mov w1, #3
  0x8000dc15c:  f9400108    ldr x8, [x8]
  0x8000dc160:  d63f0100    blr x8
  0x8000dc164:  9001c408    adrp x8, #59244544
  0x8000dc168:  39465e62    ldrb w2, [x19, #407]
  0x8000dc16c:  d10063a0    sub x0, x29, #24
  0x8000dc170:  39466263    ldrb w3, [x19, #408]
  0x8000dc174:  52800061    mov w1, #3
  0x8000dc178:  39466664    ldrb w4, [x19, #409]
  0x8000dc17c:  f945f108    ldr x8, [x8, #3040]
  0x8000dc180:  f9400108    ldr x8, [x8]
  0x8000dc184:  d63f0100    blr x8
  0x8000dc188:  9001c408    adrp x8, #59244544
  0x8000dc18c:  d10063a1    sub x1, x29, #24
  0x8000dc190:  f940c508    ldr x8, [x8, #392]
  0x8000dc194:  aa1403e0    mov x0, x20
  0x8000dc198:  f9400108    ldr x8, [x8]
  0x8000dc19c:  d63f0100    blr x8
  0x8000dc1a0:  3944ce68    ldrb w8, [x19, #307]
  0x8000dc1a4:  35004b48    cbnz w8, #2408
  0x8000dc1a8:  f001c3e8    adrp x8, #59240448
  0x8000dc1ac:  39465661    ldrb w1, [x19, #405]
  0x8000dc1b0:  d10073a0    sub x0, x29, #28
  0x8000dc1b4:  f9473108    ldr x8, [x8, #3680]
  0x8000dc1b8:  f9400108    ldr x8, [x8]
  0x8000dc1bc:  d63f0100    blr x8
  0x8000dc1c0:  f001c3e8    adrp x8, #59240448
  0x8000dc1c4:  d10073a0    sub x0, x29, #28
  0x8000dc1c8:  f9473508    ldr x8, [x8, #3688]
  0x8000dc1cc:  52800021    mov w1, #1
  0x8000dc1d0:  f9400108    ldr x8, [x8]
  0x8000dc1d4:  d63f0100    blr x8
  0x8000dc1d8:  f001c3e8    adrp x8, #59240448
  0x8000dc1dc:  39466e61    ldrb w1, [x19, #411]
  0x8000dc1e0:  d10073a0    sub x0, x29, #28
  0x8000dc1e4:  f9473908    ldr x8, [x8, #3696]
  0x8000dc1e8:  f9400108    ldr x8, [x8]
  0x8000dc1ec:  d63f0100    blr x8
  0x8000dc1f0:  39467668    ldrb w8, [x19, #413]
  0x8000dc1f4:  d10073a0    sub x0, x29, #28
  0x8000dc1f8:  13000108    sbfx w8, w8, #0, #1
  0x8000dc1fc:  12000901    and w1, w8, #0x7
  0x8000dc200:  f001c3e8    adrp x8, #59240448
  0x8000dc204:  f9473d08    ldr x8, [x8, #3704]
  0x8000dc208:  f9400108    ldr x8, [x8]
  0x8000dc20c:  d63f0100    blr x8
  0x8000dc210:  f001c3e8    adrp x8, #59240448
  0x8000dc214:  d10073a1    sub x1, x29, #28
  0x8000dc218:  f9474108    ldr x8, [x8, #3712]
  0x8000dc21c:  aa1403e0    mov x0, x20
  0x8000dc220:  f9400108    ldr x8, [x8]
  0x8000dc224:  d63f0100    blr x8
  0x8000dc228:  f001c3e8    adrp x8, #59240448
  0x8000dc22c:  bd418a60    ldr s0, [x19, #392]
  0x8000dc230:  aa1403e0    mov x0, x20
  0x8000dc234:  bd418e61    ldr s1, [x19, #396]
  0x8000dc238:  bd419262    ldr s2, [x19, #400]
  0x8000dc23c:  f9474508    ldr x8, [x8, #3720]
  0x8000dc240:  f9400108    ldr x8, [x8]
  0x8000dc244:  d63f0100    blr x8
  0x8000dc248:  9001c408    adrp x8, #59244544
  0x8000dc24c:  aa1403e0    mov x0, x20
  0x8000dc250:  f940f108    ldr x8, [x8, #480]
  0x8000dc254:  39467a61    ldrb w1, [x19, #414]
  0x8000dc258:  f9400108    ldr x8, [x8]
  0x8000dc25c:  d63f0100    blr x8
  0x8000dc260:  f85d83ba    ldur x26, [x29, #-40]
  0x8000dc264:  a94213e5    ldp x5, x4, [sp, #32]
  0x8000dc268:  f9401bf8    ldr x24, [sp, #48]
  0x8000dc26c:  f9400fe6    ldr x6, [sp, #24]
  0x8000dc270:  eb1800df    cmp x6, x24
  0x8000dc274:  54ffcee0    b.eq #-1572
  0x8000dc278:  f94002e8    ldr x8, [x23]
  0x8000dc27c:  f9401269    ldr x9, [x19, #32]
  0x8000dc280:  7940690a    ldrh w10, [x8, #52]
  0x8000dc284:  3710488a    tbnz w10, #2, #2320
  0x8000dc288:  36201e0a    tbz w10, #4, #960
  0x8000dc28c:  aa0503f5    mov x21, x5
  0x8000dc290:  aa0403f4    mov x20, x4
  0x8000dc294:  5280002a    mov w10, #1
  0x8000dc298:  91002120    add x0, x9, #8
  0x8000dc29c:  f001c3e9    adrp x9, #59240448
  0x8000dc2a0:  f9478929    ldr x9, [x9, #3856]
  0x8000dc2a4:  f9401108    ldr x8, [x8, #32]
  0x8000dc2a8:  52803fe2    mov w2, #511
  0x8000dc2ac:  f86a7929    ldr x9, [x9, x10, lsl #3]
  0x8000dc2b0:  f8696908    ldr x8, [x8, x9]
  0x8000dc2b4:  f9403501    ldr x1, [x8, #104]
  0x8000dc2b8:  97ff22bf    bl #-226564
  0x8000dc2bc:  aa1403e4    mov x4, x20
  0x8000dc2c0:  aa1503e5    mov x5, x21
  0x8000dc2c4:  79408268    ldrh w8, [x19, #64]
  0x8000dc2c8:  a911627f    stp xzr, x24, [x19, #272]
  0x8000dc2cc:  36700b88    tbz w8, #14, #368
  0x8000dc2d0:  79403309    ldrh w9, [x24, #24]
  0x8000dc2d4:  36300b49    tbz w9, #6, #360
  0x8000dc2d8:  2a1f03ed    mov w13, wzr
  0x8000dc2dc:  377813e8    tbnz w8, #15, #636
  0x8000dc2e0:  140000df    b #892
  0x8000dc2e4:  52800069    mov w9, #3
  0x8000dc2e8:  91002337    add x23, x25, #8
  0x8000dc2ec:  f9000329    str x9, [x25]
  0x8000dc2f0:  f9002ad9    str x25, [x22, #80]
  0x8000dc2f4:  17fffe86    b #-1512
  0x8000dc2f8:  7100093f    cmp w9, #2
  0x8000dc2fc:  54ffca01    b.ne #-1728
  0x8000dc300:  3944c269    ldrb w9, [x19, #304]
  0x8000dc304:  34003fe9    cbz w9, #2044
  0x8000dc308:  3944c669    ldrb w9, [x19, #305]
  0x8000dc30c:  35003fa9    cbnz w9, #2036
  0x8000dc310:  39465269    ldrb w9, [x19, #404]
  0x8000dc314:  7100113f    cmp w9, #4
  0x8000dc318:  54003221    b.ne #1604
  0x8000dc31c:  1200018d    and w13, w12, #0x1
  0x8000dc320:  17fffe47    b #-1764
  0x8000dc324:  bd413a60    ldr s0, [x19, #312]
  0x8000dc328:  bd410961    ldr s1, [x11, #264]
  0x8000dc32c:  1e212000    fcmp s0, s1
  0x8000dc330:  540001a1    b.ne #52
  0x8000dc334:  bd413e60    ldr s0, [x19, #316]
  0x8000dc338:  bd410d61    ldr s1, [x11, #268]
  0x8000dc33c:  1e212000    fcmp s0, s1
  0x8000dc340:  54000121    b.ne #36
  0x8000dc344:  bd414260    ldr s0, [x19, #320]
  0x8000dc348:  bd411161    ldr s1, [x11, #272]
  0x8000dc34c:  1e212000    fcmp s0, s1
  0x8000dc350:  540000a1    b.ne #20
  0x8000dc354:  bd414660    ldr s0, [x19, #324]
  0x8000dc358:  bd411561    ldr s1, [x11, #276]
  0x8000dc35c:  1e212000    fcmp s0, s1
  0x8000dc360:  54006c00    b.eq #3456
  0x8000dc364:  9104216e    add x14, x11, #264
  0x8000dc368:  9104e26c    add x12, x19, #312
  0x8000dc36c:  a94039cf    ldp x15, x14, [x14]
  0x8000dc370:  a900398f    stp x15, x14, [x12]
  0x8000dc374:  5280002c    mov w12, #1
  0x8000dc378:  377fd90a    tbnz w10, #15, #-1248
  0x8000dc37c:  aa1f03ee    mov x14, xzr
  0x8000dc380:  9105626f    add x15, x19, #344
  0x8000dc384:  9104b570    add x16, x11, #301
  0x8000dc388:  8b0e0211    add x17, x16, x14
  0x8000dc38c:  386e69f2    ldrb w18, [x15, x14]
  0x8000dc390:  385fb220    ldurb w0, [x17, #-5]
  0x8000dc394:  6b12001f    cmp w0, w18
  0x8000dc398:  385fd221    ldurb w1, [x17, #-3]
  0x8000dc39c:  8b0e01f2    add x18, x15, x14
  0x8000dc3a0:  54000081    b.ne #16
  0x8000dc3a4:  39400a42    ldrb w2, [x18, #2]
  0x8000dc3a8:  6b02003f    cmp w1, w2
  0x8000dc3ac:  54003820    b.eq #1796
  0x8000dc3b0:  385fc22c    ldurb w12, [x17, #-4]
  0x8000dc3b4:  385fe222    ldurb w2, [x17, #-2]
  0x8000dc3b8:  39000240    strb w0, [x18]
  0x8000dc3bc:  39000a41    strb w1, [x18, #2]
  0x8000dc3c0:  3900064c    strb w12, [x18, #1]
  0x8000dc3c4:  39000e42    strb w2, [x18, #3]
  0x8000dc3c8:  785ff22c    ldurh w12, [x17, #-1]
  0x8000dc3cc:  79000a4c    strh w12, [x18, #4]
  0x8000dc3d0:  5280002c    mov w12, #1
  0x8000dc3d4:  910019ce    add x14, x14, #6
  0x8000dc3d8:  f100c1df    cmp x14, #48
  0x8000dc3dc:  54fffd61    b.ne #-84
  0x8000dc3e0:  17fffeae    b #-1352
  0x8000dc3e4:  9342fd8c    asr x12, x12, #2
  0x8000dc3e8:  b260058c    orr x12, x12, #0x300000000
  0x8000dc3ec:  b50067e9    cbnz x9, #3324
  0x8000dc3f0:  52800069    mov w9, #3
  0x8000dc3f4:  9100232d    add x13, x25, #8
  0x8000dc3f8:  f9000329    str x9, [x25]
  0x8000dc3fc:  f9002ad9    str x25, [x22, #80]
  0x8000dc400:  f9402ec9    ldr x9, [x22, #88]
  0x8000dc404:  910061b7    add x23, x13, #24
  0x8000dc408:  8b0b0129    add x9, x9, x11
  0x8000dc40c:  f9401ace    ldr x14, [x22, #48]
  0x8000dc410:  f90009ac    str x12, [x13, #16]
  0x8000dc414:  cb0e0129    sub x9, x9, x14
  0x8000dc418:  a9002da9    stp x9, x11, [x13]
  0x8000dc41c:  d2c0002b    mov x11, #4294967296
  0x8000dc420:  f9400329    ldr x9, [x25]
  0x8000dc424:  8b0b0129    add x9, x9, x11
  0x8000dc428:  f9000329    str x9, [x25]
  0x8000dc42c:  f90022ca    str x10, [x22, #64]
  0x8000dc430:  17fffe37    b #-1828
  0x8000dc434:  5280006b    mov w11, #3
  0x8000dc438:  17fffded    b #-2124
  0x8000dc43c:  f9400309    ldr x9, [x24]
  0x8000dc440:  b940826a    ldr w10, [x19, #128]
  0x8000dc444:  b9400929    ldr w9, [x9, #8]
  0x8000dc448:  6b09015f    cmp w10, w9
  0x8000dc44c:  1a9f07ed    cset w13, ne
  0x8000dc450:  54000040    b.eq #8
  0x8000dc454:  b9008269    str w9, [x19, #128]
  0x8000dc458:  7940330b    ldrh w11, [x24, #24]
  0x8000dc45c:  363064cb    tbz w11, #6, #3224
  0x8000dc460:  3212010c    orr w12, w8, #0x4000
  0x8000dc464:  f001ceeb    adrp x11, #60682240
  0x8000dc468:  912ae16b    add x11, x11, #2744
  0x8000dc46c:  f001cee8    adrp x8, #60682240
  0x8000dc470:  912ac108    add x8, x8, #2736
  0x8000dc474:  7900826c    strh w12, [x19, #64]
  0x8000dc478:  f001ceec    adrp x12, #60682240
  0x8000dc47c:  912ad18c    add x12, x12, #2740
  0x8000dc480:  6b09015f    cmp w10, w9
  0x8000dc484:  54000640    b.eq #200
  0x8000dc488:  b9400117    ldr w23, [x8]
  0x8000dc48c:  f9001bf8    str x24, [sp, #48]
  0x8000dc490:  b9405a68    ldr w8, [x19, #88]
  0x8000dc494:  6b0802ff    cmp w23, w8
  0x8000dc498:  b940018a    ldr w10, [x12]
  0x8000dc49c:  b940016b    ldr w11, [x11]
  0x8000dc4a0:  54000320    b.eq #100
  0x8000dc4a4:  a9422275    ldp x21, x8, [x19, #32]
  0x8000dc4a8:  b9005a77    str w23, [x19, #88]
  0x8000dc4ac:  b001c414    adrp x20, #59248640
  0x8000dc4b0:  f9400109    ldr x9, [x8]
  0x8000dc4b4:  39412916    ldrb w22, [x8, #74]
  0x8000dc4b8:  f940411c    ldr x28, [x8, #128]
  0x8000dc4bc:  7940911b    ldrh w27, [x8, #72]
  0x8000dc4c0:  b9404118    ldr w24, [x8, #64]
  0x8000dc4c4:  f9401529    ldr x9, [x9, #40]
  0x8000dc4c8:  f9478694    ldr x20, [x20, #3848]
  0x8000dc4cc:  eb14013f    cmp x9, x20
  0x8000dc4d0:  54006200    b.eq #3136
  0x8000dc4d4:  b001c419    adrp x25, #59248640
  0x8000dc4d8:  f946d339    ldr x25, [x25, #3488]
  0x8000dc4dc:  eb19013f    cmp x9, x25
  0x8000dc4e0:  54006ce1    b.ne #3484
  0x8000dc4e4:  b9408909    ldr w9, [x8, #136]
  0x8000dc4e8:  eb14033f    cmp x25, x20
  0x8000dc4ec:  0b090309    add w9, w24, w9
  0x8000dc4f0:  51000538    sub w24, w9, #1
  0x8000dc4f4:  54006ee1    b.ne #3548
  0x8000dc4f8:  52802000    mov w0, #256
  0x8000dc4fc:  310006ff    cmn w23, #1
  0x8000dc500:  540060c1    b.ne #3096
  0x8000dc504:  b9405e68    ldr w8, [x19, #92]
  0x8000dc508:  6b08015f    cmp w10, w8
  0x8000dc50c:  54000120    b.eq #36
  0x8000dc510:  f9400a68    ldr x8, [x19, #16]
  0x8000dc514:  b9005e6a    str w10, [x19, #92]
  0x8000dc518:  f942c508    ldr x8, [x8, #1416]
  0x8000dc51c:  b40000a8    cbz x8, #20
  0x8000dc520:  f9409109    ldr x9, [x8, #288]
  0x8000dc524:  b4000069    cbz x9, #12
  0x8000dc528:  f9403134    ldr x20, [x9, #96]
  0x8000dc52c:  b5000af4    cbnz x20, #348
  0x8000dc530:  b9406268    ldr w8, [x19, #96]
  0x8000dc534:  6b08017f    cmp w11, w8
  0x8000dc538:  f9401bf8    ldr x24, [sp, #48]
  0x8000dc53c:  54000080    b.eq #16
  0x8000dc540:  52801fe8    mov w8, #255
  0x8000dc544:  b900626b    str w11, [x19, #96]
  0x8000dc548:  39010a68    strb w8, [x19, #66]
  0x8000dc54c:  79408268    ldrh w8, [x19, #64]
  0x8000dc550:  79403309    ldrh w9, [x24, #24]
  0x8000dc554:  36780848    tbz w8, #15, #264
  0x8000dc558:  36380829    tbz w9, #7, #260
  0x8000dc55c:  3500092d    cbnz w13, #292
  0x8000dc560:  f9400b08    ldr x8, [x24, #16]
  0x8000dc564:  b9407269    ldr w9, [x19, #112]
  0x8000dc568:  b9400908    ldr w8, [x8, #8]
  0x8000dc56c:  6b08013f    cmp w9, w8
  0x8000dc570:  540031a1    b.ne #1588
  0x8000dc574:  39010e7f    strb wzr, [x19, #67]
  0x8000dc578:  17fffdb6    b #-2344
  0x8000dc57c:  9001c41b    adrp x27, #59244544
  0x8000dc580:  9001c418    adrp x24, #59244544
  0x8000dc584:  f945137b    ldr x27, [x27, #2592]
  0x8000dc588:  9001c419    adrp x25, #59244544
  0x8000dc58c:  f9451718    ldr x24, [x24, #2600]
  0x8000dc590:  2a1f03f6    mov w22, wzr
  0x8000dc594:  f940bb39    ldr x25, [x25, #368]
  0x8000dc598:  aa1f03fa    mov x26, xzr
  0x8000dc59c:  9105627c    add x28, x19, #344
  0x8000dc5a0:  528000d5    mov w21, #6
  0x8000dc5a4:  14000007    b #28
  0x8000dc5a8:  d503201f    nop
  0x8000dc5ac:  d503201f    nop
  0x8000dc5b0:  91000756    add x22, x26, #1
  0x8000dc5b4:  92407eda    and x26, x22, #0xffffffff
  0x8000dc5b8:  710022df    cmp w22, #8
  0x8000dc5bc:  54ffcd20    b.eq #-1628
  0x8000dc5c0:  b9413668    ldr w8, [x19, #308]
  0x8000dc5c4:  1ad62508    lsr w8, w8, w22
  0x8000dc5c8:  3607ff48    tbz w8, #0, #-24
  0x8000dc5cc:  9001c408    adrp x8, #59244544
  0x8000dc5d0:  d10043a0    sub x0, x29, #16
  0x8000dc5d4:  f9454908    ldr x8, [x8, #2704]
  0x8000dc5d8:  2a1603e1    mov w1, w22
  0x8000dc5dc:  52800022    mov w2, #1
  0x8000dc5e0:  f9400108    ldr x8, [x8]
  0x8000dc5e4:  d63f0100    blr x8
  0x8000dc5e8:  9001c408    adrp x8, #59244544
  0x8000dc5ec:  d10023a0    sub x0, x29, #8
  0x8000dc5f0:  f9450d08    ldr x8, [x8, #2584]
  0x8000dc5f4:  2a1603e1    mov w1, w22
  0x8000dc5f8:  f9400108    ldr x8, [x8]
  0x8000dc5fc:  d63f0100    blr x8
  0x8000dc600:  9b357356    smaddl x22, w26, w21, x28
  0x8000dc604:  f9400368    ldr x8, [x27]
  0x8000dc608:  d10023a0    sub x0, x29, #8
  0x8000dc60c:  394002c1    ldrb w1, [x22]
  0x8000dc610:  39400ac2    ldrb w2, [x22, #2]
  0x8000dc614:  394006c3    ldrb w3, [x22, #1]
  0x8000dc618:  39400ec4    ldrb w4, [x22, #3]
  0x8000dc61c:  d63f0100    blr x8
  0x8000dc620:  394012c1    ldrb w1, [x22, #4]
  0x8000dc624:  d10023a0    sub x0, x29, #8
  0x8000dc628:  394016c2    ldrb w2, [x22, #5]
  0x8000dc62c:  f9400308    ldr x8, [x24]
  0x8000dc630:  d63f0100    blr x8
  0x8000dc634:  f9400328    ldr x8, [x25]
  0x8000dc638:  d10023a1    sub x1, x29, #8
  0x8000dc63c:  aa1403e0    mov x0, x20
  0x8000dc640:  d63f0100    blr x8
  0x8000dc644:  17ffffdb    b #-148
  0x8000dc648:  361fe3ea    tbz w10, #3, #-900
  0x8000dc64c:  aa0503f5    mov x21, x5
  0x8000dc650:  aa0403f4    mov x20, x4
  0x8000dc654:  5280004a    mov w10, #2
  0x8000dc658:  17ffff10    b #-960
  0x8000dc65c:  53077d29    lsr w9, w9, #7
  0x8000dc660:  33110128    bfi w8, w9, #15, #1
  0x8000dc664:  b9409269    ldr w9, [x19, #144]
  0x8000dc668:  79008268    strh w8, [x19, #64]
  0x8000dc66c:  f9400708    ldr x8, [x24, #8]
  0x8000dc670:  b9400908    ldr w8, [x8, #8]
  0x8000dc674:  6b08013f    cmp w9, w8
  0x8000dc678:  54fff720    b.eq #-284
  0x8000dc67c:  b9009268    str w8, [x19, #144]
  0x8000dc680:  79017e7f    strh wzr, [x19, #190]
  0x8000dc684:  17ffffb7    b #-292
  0x8000dc688:  b9001beb    str w11, [sp, #24]
  0x8000dc68c:  53087d4b    lsr w11, w10, #8
  0x8000dc690:  2a0a03fc    mov w28, w10
  0x8000dc694:  b90013eb    str w11, [sp, #16]
  0x8000dc698:  53083d4b    ubfx w11, w10, #8, #8
  0x8000dc69c:  39405108    ldrb w8, [x8, #20]
  0x8000dc6a0:  b90017eb    str w11, [sp, #20]
  0x8000dc6a4:  53107d4b    lsr w11, w10, #16
  0x8000dc6a8:  f9401276    ldr x22, [x19, #32]
  0x8000dc6ac:  b9002beb    str w11, [sp, #40]
  0x8000dc6b0:  53105d4b    ubfx w11, w10, #16, #8
  0x8000dc6b4:  2a0d03fb    mov w27, w13
  0x8000dc6b8:  b90023eb    str w11, [sp, #32]
  0x8000dc6bc:  53187d4b    lsr w11, w10, #24
  0x8000dc6c0:  7940112a    ldrh w10, [x9, #8]
  0x8000dc6c4:  f9402129    ldr x9, [x9, #64]
  0x8000dc6c8:  92400508    and x8, x8, #0x3
  0x8000dc6cc:  b81d83ab    stur w11, [x29, #-40]
  0x8000dc6d0:  aa0503f9    mov x25, x5
  0x8000dc6d4:  aa0403f8    mov x24, x4
  0x8000dc6d8:  1200014a    and w10, w10, #0x1
  0x8000dc6dc:  f100013f    cmp x9, #0
  0x8000dc6e0:  7a401944    ccmp w10, #0, #4, ne
  0x8000dc6e4:  5280090a    mov w10, #72
  0x8000dc6e8:  9baa2508    umaddl x8, w8, w10, x9
  0x8000dc6ec:  9a8803e8    csel x8, xzr, x8, eq
  0x8000dc6f0:  f9400500    ldr x0, [x8, #8]
  0x8000dc6f4:  9001c388    adrp x8, #59179008
  0x8000dc6f8:  f9478908    ldr x8, [x8, #3856]
  0x8000dc6fc:  f9400108    ldr x8, [x8]
  0x8000dc700:  d63f0100    blr x8
  0x8000dc704:  f9405ed7    ldr x23, [x22, #184]
  0x8000dc708:  2a1c03e8    mov w8, w28
  0x8000dc70c:  aa0003f5    mov x21, x0
  0x8000dc710:  f2407e96    ands x22, x20, #0xffffffff
  0x8000dc714:  12001f88    and w8, w28, #0xff
  0x8000dc718:  540068e0    b.eq #3356
  0x8000dc71c:  1103fe89    add w9, w20, #255
  0x8000dc720:  7103fd1f    cmp w8, #255
  0x8000dc724:  12185d34    and w20, w9, #0xffffff00
  0x8000dc728:  d360fea9    lsr x9, x21, #32
  0x8000dc72c:  f90007e9    str x9, [sp, #8]
  0x8000dc730:  54000280    b.eq #80
  0x8000dc734:  52800028    mov w8, #1
  0x8000dc738:  390042e8    strb w8, [x23, #16]
  0x8000dc73c:  9001c388    adrp x8, #59179008
  0x8000dc740:  f9479508    ldr x8, [x8, #3880]
  0x8000dc744:  b9400108    ldr w8, [x8]
  0x8000dc748:  340000a8    cbz w8, #20
  0x8000dc74c:  a94026e8    ldp x8, x9, [x23]
  0x8000dc750:  9100610a    add x10, x8, #24
  0x8000dc754:  eb09015f    cmp x10, x9
  0x8000dc758:  54006929    b.ls #3364
  0x8000dc75c:  9001c408    adrp x8, #59244544
  0x8000dc760:  13001f82    sxtb w2, w28
  0x8000dc764:  f9417908    ldr x8, [x8, #752]
  0x8000dc768:  aa1703e0    mov x0, x23
  0x8000dc76c:  2a1f03e1    mov w1, wzr
  0x8000dc770:  f9400108    ldr x8, [x8]
  0x8000dc774:  aa1503e3    mov x3, x21
  0x8000dc778:  aa1603e4    mov x4, x22
  0x8000dc77c:  d63f0100    blr x8
  0x8000dc780:  2942afe8    ldp w8, w11, [sp, #20]
  0x8000dc784:  aa1803e4    mov x4, x24
  0x8000dc788:  aa1903e5    mov x5, x25
  0x8000dc78c:  2a1b03ed    mov w13, w27
  0x8000dc790:  7103fd1f    cmp w8, #255
  0x8000dc794:  540005e1    b.ne #188
  0x8000dc798:  b94023e8    ldr w8, [sp, #32]
  0x8000dc79c:  7103fd1f    cmp w8, #255
  0x8000dc7a0:  54000320    b.eq #100
  0x8000dc7a4:  52800028    mov w8, #1
  0x8000dc7a8:  390042e8    strb w8, [x23, #16]
  0x8000dc7ac:  9001c388    adrp x8, #59179008
  0x8000dc7b0:  f9479508    ldr x8, [x8, #3880]
  0x8000dc7b4:  b9400108    ldr w8, [x8]
  0x8000dc7b8:  340000a8    cbz w8, #20
  0x8000dc7bc:  a94026e8    ldp x8, x9, [x23]
  0x8000dc7c0:  9100610a    add x10, x8, #24
  0x8000dc7c4:  eb09015f    cmp x10, x9
  0x8000dc7c8:  54000769    b.ls #236
  0x8000dc7cc:  b9402be8    ldr w8, [sp, #40]
  0x8000dc7d0:  aa1703e0    mov x0, x23
  0x8000dc7d4:  52800041    mov w1, #2
  0x8000dc7d8:  aa1503e3    mov x3, x21
  0x8000dc7dc:  aa1603e4    mov x4, x22
  0x8000dc7e0:  13001d02    sxtb w2, w8
  0x8000dc7e4:  9001c408    adrp x8, #59244544
  0x8000dc7e8:  f9417908    ldr x8, [x8, #752]
  0x8000dc7ec:  f9400108    ldr x8, [x8]
  0x8000dc7f0:  d63f0100    blr x8
  0x8000dc7f4:  b9401beb    ldr w11, [sp, #24]
  0x8000dc7f8:  2a1b03ed    mov w13, w27
  0x8000dc7fc:  aa1903e5    mov x5, x25
  0x8000dc800:  aa1803e4    mov x4, x24
  0x8000dc804:  b85d83a8    ldur w8, [x29, #-40]
  0x8000dc808:  7103fd1f    cmp w8, #255
  0x8000dc80c:  54ffe920    b.eq #-732
  0x8000dc810:  52800028    mov w8, #1
  0x8000dc814:  13187f82    asr w2, w28, #24
  0x8000dc818:  390042e8    strb w8, [x23, #16]
  0x8000dc81c:  9001c408    adrp x8, #59244544
  0x8000dc820:  528000a1    mov w1, #5
  0x8000dc824:  f9417908    ldr x8, [x8, #752]
  0x8000dc828:  aa1703e0    mov x0, x23
  0x8000dc82c:  aa1503e3    mov x3, x21
  0x8000dc830:  f9400108    ldr x8, [x8]
  0x8000dc834:  aa1603e4    mov x4, x22
  0x8000dc838:  d63f0100    blr x8
  0x8000dc83c:  b9401beb    ldr w11, [sp, #24]
  0x8000dc840:  2a1b03ed    mov w13, w27
  0x8000dc844:  aa1903e5    mov x5, x25
  0x8000dc848:  aa1803e4    mov x4, x24
  0x8000dc84c:  17ffff39    b #-796
  0x8000dc850:  52800028    mov w8, #1
  0x8000dc854:  390042e8    strb w8, [x23, #16]
  0x8000dc858:  9001c388    adrp x8, #59179008
  0x8000dc85c:  f9479508    ldr x8, [x8, #3880]
  0x8000dc860:  b9400108    ldr w8, [x8]
  0x8000dc864:  340000a8    cbz w8, #20
  0x8000dc868:  a94026e8    ldp x8, x9, [x23]
  0x8000dc86c:  9100610a    add x10, x8, #24
  0x8000dc870:  eb09015f    cmp x10, x9
  0x8000dc874:  54000489    b.ls #144
  0x8000dc878:  b94013e8    ldr w8, [sp, #16]
  0x8000dc87c:  aa1703e0    mov x0, x23
  0x8000dc880:  52800021    mov w1, #1
  0x8000dc884:  aa1503e3    mov x3, x21
  0x8000dc888:  aa1603e4    mov x4, x22
  0x8000dc88c:  13001d02    sxtb w2, w8
  0x8000dc890:  9001c408    adrp x8, #59244544
  0x8000dc894:  f9417908    ldr x8, [x8, #752]
  0x8000dc898:  f9400108    ldr x8, [x8]
  0x8000dc89c:  d63f0100    blr x8
  0x8000dc8a0:  b9401beb    ldr w11, [sp, #24]
  0x8000dc8a4:  2a1b03ed    mov w13, w27
  0x8000dc8a8:  aa1903e5    mov x5, x25
  0x8000dc8ac:  aa1803e4    mov x4, x24
  0x8000dc8b0:  17ffffba    b #-280
  0x8000dc8b4:  b9402be9    ldr w9, [sp, #40]
  0x8000dc8b8:  52811c0a    mov w10, #2272
  0x8000dc8bc:  72a4006a    movk w10, #8195, lsl #16
  0x8000dc8c0:  2900510a    stp w10, w20, [x8]
  0x8000dc8c4:  f94007ea    ldr x10, [sp, #8]
  0x8000dc8c8:  53081d29    lsl w9, w9, #24
  0x8000dc8cc:  53047d29    lsr w9, w9, #4
  0x8000dc8d0:  2901550a    stp w10, w21, [x8, #8]
  0x8000dc8d4:  5281238a    mov w10, #2332
  0x8000dc8d8:  72b0002a    movk w10, #32769, lsl #16
  0x8000dc8dc:  114c0129    add w9, w9, #768, lsl #12
  0x8000dc8e0:  120c1129    and w9, w9, #0x1f00000
  0x8000dc8e4:  2a0a0129    orr w9, w9, w10
  0x8000dc8e8:  b9001109    str w9, [x8, #16]
  0x8000dc8ec:  91005108    add x8, x8, #20
  0x8000dc8f0:  f90002e8    str x8, [x23]
  0x8000dc8f4:  17ffffc4    b #-240
  0x8000dc8f8:  5280002c    mov w12, #1
  0x8000dc8fc:  b901366d    str w13, [x19, #308]
  0x8000dc900:  17fffd69    b #-2652
  0x8000dc904:  b94013e9    ldr w9, [sp, #16]
  0x8000dc908:  52811c0a    mov w10, #2272
  0x8000dc90c:  72a4006a    movk w10, #8195, lsl #16
  0x8000dc910:  2900510a    stp w10, w20, [x8]
  0x8000dc914:  f94007ea    ldr x10, [sp, #8]
  0x8000dc918:  53081d29    lsl w9, w9, #24
  0x8000dc91c:  53047d29    lsr w9, w9, #4
  0x8000dc920:  2901550a    stp w10, w21, [x8, #8]
  0x8000dc924:  5281238a    mov w10, #2332
  0x8000dc928:  72b0002a    movk w10, #32769, lsl #16
  0x8000dc92c:  114c0129    add w9, w9, #768, lsl #12
  0x8000dc930:  120c1129    and w9, w9, #0x1f00000
  0x8000dc934:  2a0a0129    orr w9, w9, w10
  0x8000dc938:  11002129    add w9, w9, #8
  0x8000dc93c:  b9001109    str w9, [x8, #16]
  0x8000dc940:  91005108    add x8, x8, #20
  0x8000dc944:  f90002e8    str x8, [x23]
  0x8000dc948:  17ffff94    b #-432
  0x8000dc94c:  721d015f    tst w10, #0x8
  0x8000dc950:  5280002b    mov w11, #1
  0x8000dc954:  1a8b056b    cinc w11, w11, ne
  0x8000dc958:  17fffca5    b #-3436
  0x8000dc95c:  52800088    mov w8, #4
  0x8000dc960:  39065268    strb w8, [x19, #404]
  0x8000dc964:  17fffd6d    b #-2636
  0x8000dc968:  f9401261    ldr x1, [x19, #32]
  0x8000dc96c:  13001c96    sxtb w22, w4
  0x8000dc970:  53061903    ubfx w3, w8, #6, #1
  0x8000dc974:  aa1a03e0    mov x0, x26
  0x8000dc978:  2a1603e2    mov w2, w22
  0x8000dc97c:  aa0503f4    mov x20, x5
  0x8000dc980:  949d8c3b    bl #41300204
  0x8000dc984:  f9403348    ldr x8, [x26, #96]
  0x8000dc988:  52800d09    mov w9, #104
  0x8000dc98c:  aa1a03e0    mov x0, x26
  0x8000dc990:  f9401261    ldr x1, [x19, #32]
  0x8000dc994:  2a1503e5    mov w5, w21
  0x8000dc998:  9b2922c8    smaddl x8, w22, w9, x8
  0x8000dc99c:  f9400282    ldr x2, [x20]
  0x8000dc9a0:  3940c264    ldrb w4, [x19, #48]
  0x8000dc9a4:  f9402103    ldr x3, [x8, #64]
  0x8000dc9a8:  949d87bb    bl #41295596
  0x8000dc9ac:  17fffce2    b #-3192
  0x8000dc9b0:  d001c405    adrp x5, #59252736
  0x8000dc9b4:  f941b8a5    ldr x5, [x5, #880]
  0x8000dc9b8:  17fffc61    b #-3708
  0x8000dc9bc:  79402b49    ldrh w9, [x26, #20]
  0x8000dc9c0:  aa0503f7    mov x23, x5
  0x8000dc9c4:  aa0403f6    mov x22, x4
  0x8000dc9c8:  aa1a03f5    mov x21, x26
  0x8000dc9cc:  52003d29    eor w9, w9, #0xffff
  0x8000dc9d0:  0a090114    and w20, w8, w9
  0x8000dc9d4:  79417e68    ldrh w8, [x19, #190]
  0x8000dc9d8:  6a28029f    bics wzr, w20, w8
  0x8000dc9dc:  540029e1    b.ne #1340
  0x8000dc9e0:  aa1503fa    mov x26, x21
  0x8000dc9e4:  aa1603e4    mov x4, x22
  0x8000dc9e8:  79017e74    strh w20, [x19, #190]
  0x8000dc9ec:  aa1703e5    mov x5, x23
  0x8000dc9f0:  17fffc9a    b #-3480
  0x8000dc9f4:  f9400749    ldr x9, [x26, #8]
  0x8000dc9f8:  5280170a    mov w10, #184
  0x8000dc9fc:  2a1503e3    mov w3, w21
  0x8000dca00:  f9401261    ldr x1, [x19, #32]
  0x8000dca04:  f9408e62    ldr x2, [x19, #280]
  0x8000dca08:  f9401d29    ldr x9, [x9, #56]
  0x8000dca0c:  9baa2508    umaddl x8, w8, w10, x9
  0x8000dca10:  91012100    add x0, x8, #72
  0x8000dca14:  949d7966    bl #41280920
  0x8000dca18:  17fffcc9    b #-3292
  0x8000dca1c:  39411f48    ldrb w8, [x26, #71]
  0x8000dca20:  361798a8    tbz w8, #2, #-3308
  0x8000dca24:  f9408e68    ldr x8, [x19, #280]
  0x8000dca28:  aa1a03e0    mov x0, x26
  0x8000dca2c:  aa1a03f4    mov x20, x26
  0x8000dca30:  f9401276    ldr x22, [x19, #32]
  0x8000dca34:  f9400108    ldr x8, [x8]
  0x8000dca38:  b9402917    ldr w23, [x8, #40]
  0x8000dca3c:  949d86c4    bl #41294608
  0x8000dca40:  39403408    ldrb w8, [x0, #13]
  0x8000dca44:  340002a8    cbz w8, #84
  0x8000dca48:  3940c268    ldrb w8, [x19, #48]
  0x8000dca4c:  39403c0a    ldrb w10, [x0, #15]
  0x8000dca50:  9ba87d48    umull x8, w10, w8
  0x8000dca54:  f9401009    ldr x9, [x0, #32]
  0x8000dca58:  5280090a    mov w10, #72
  0x8000dca5c:  f100013f    cmp x9, #0
  0x8000dca60:  8b354108    add x8, x8, w21, uxtw
  0x8000dca64:  9baa2508    umaddl x8, w8, w10, x9
  0x8000dca68:  9a8803e2    csel x2, xzr, x8, eq
  0x8000dca6c:  aa1603e0    mov x0, x22
  0x8000dca70:  aa1703e1    mov x1, x23
  0x8000dca74:  52802003    mov w3, #256
  0x8000dca78:  2a1503e4    mov w4, w21
  0x8000dca7c:  949bdac6    bl #40856344
  0x8000dca80:  aa1403fa    mov x26, x20
  0x8000dca84:  17fffcac    b #-3408
  0x8000dca88:  5280002a    mov w10, #1
  0x8000dca8c:  17fffc9c    b #-3472
  0x8000dca90:  5280002d    mov w13, #1
  0x8000dca94:  17fffcbd    b #-3340
  0x8000dca98:  f9401008    ldr x8, [x0, #32]
  0x8000dca9c:  52800909    mov w9, #72
  0x8000dcaa0:  9ba922a9    umaddl x9, w21, w9, x8
  0x8000dcaa4:  f100011f    cmp x8, #0
  0x8000dcaa8:  9a8903e2    csel x2, xzr, x9, eq
  0x8000dcaac:  17fffff0    b #-64
  0x8000dcab0:  385fc222    ldurb w2, [x17, #-4]
  0x8000dcab4:  39400643    ldrb w3, [x18, #1]
  0x8000dcab8:  6b03005f    cmp w2, w3
  0x8000dcabc:  54ffc7a1    b.ne #-1804
  0x8000dcac0:  385fe222    ldurb w2, [x17, #-2]
  0x8000dcac4:  39400e43    ldrb w3, [x18, #3]
  0x8000dcac8:  6b03005f    cmp w2, w3
  0x8000dcacc:  54ffc721    b.ne #-1820
  0x8000dcad0:  385ff222    ldurb w2, [x17, #-1]
  0x8000dcad4:  39401243    ldrb w3, [x18, #4]
  0x8000dcad8:  6b03005f    cmp w2, w3
  0x8000dcadc:  54ffc6a1    b.ne #-1836
  0x8000dcae0:  386e6a02    ldrb w2, [x16, x14]
  0x8000dcae4:  39401643    ldrb w3, [x18, #5]
  0x8000dcae8:  6b03005f    cmp w2, w3
  0x8000dcaec:  54ffc740    b.eq #-1816
  0x8000dcaf0:  17fffe30    b #-1856
  0x8000dcaf4:  7100159f    cmp w12, #5
  0x8000dcaf8:  54ff9ca0    b.eq #-3180
  0x8000dcafc:  17fffc4f    b #-3780
  0x8000dcb00:  5280002c    mov w12, #1
  0x8000dcb04:  7902626c    strh w12, [x19, #304]
  0x8000dcb08:  17fffe02    b #-2040
  0x8000dcb0c:  9001c408    adrp x8, #59244544
  0x8000dcb10:  b9415662    ldr w2, [x19, #340]
  0x8000dcb14:  aa1403e0    mov x0, x20
  0x8000dcb18:  f940c908    ldr x8, [x8, #400]
  0x8000dcb1c:  52800061    mov w1, #3
  0x8000dcb20:  f9400108    ldr x8, [x8]
  0x8000dcb24:  d63f0100    blr x8
  0x8000dcb28:  9001c408    adrp x8, #59244544
  0x8000dcb2c:  aa1403e0    mov x0, x20
  0x8000dcb30:  f940cd08    ldr x8, [x8, #408]
  0x8000dcb34:  52800061    mov w1, #3
  0x8000dcb38:  52801fe2    mov w2, #255
  0x8000dcb3c:  f9400108    ldr x8, [x8]
  0x8000dcb40:  d63f0100    blr x8
  0x8000dcb44:  9001c408    adrp x8, #59244544
  0x8000dcb48:  b9415262    ldr w2, [x19, #336]
  0x8000dcb4c:  aa1403e0    mov x0, x20
  0x8000dcb50:  f940d108    ldr x8, [x8, #416]
  0x8000dcb54:  52800061    mov w1, #3
  0x8000dcb58:  f9400108    ldr x8, [x8]
  0x8000dcb5c:  d63f0100    blr x8
  0x8000dcb60:  17fffd92    b #-2488
  0x8000dcb64:  5280002a    mov w10, #1
  0x8000dcb68:  17fffc2a    b #-3928
  0x8000dcb6c:  32000508    orr w8, w8, #0x3
  0x8000dcb70:  17fffc05    b #-4076
  0x8000dcb74:  2a1f03ea    mov w10, wzr
  0x8000dcb78:  17fffc28    b #-3936
  0x8000dcb7c:  2a1f03eb    mov w11, wzr
  0x8000dcb80:  17fffc2c    b #-3920
  0x8000dcb84:  52800028    mov w8, #1
  0x8000dcb88:  39066e6a    strb w10, [x19, #411]
  0x8000dcb8c:  3906726a    strb w10, [x19, #412]
  0x8000dcb90:  17fffc29    b #-3932
  0x8000dcb94:  aa0503f5    mov x21, x5
  0x8000dcb98:  aa0403f4    mov x20, x4
  0x8000dcb9c:  aa1f03ea    mov x10, xzr
  0x8000dcba0:  17fffdbe    b #-2312
  0x8000dcba4:  b9007268    str w8, [x19, #112]
  0x8000dcba8:  f9400b08    ldr x8, [x24, #16]
  0x8000dcbac:  b9401108    ldr w8, [x8, #16]
  0x8000dcbb0:  7200751f    tst w8, #0x3fffffff
  0x8000dcbb4:  b81d83a8    stur w8, [x29, #-40]
  0x8000dcbb8:  54ffcde0    b.eq #-1604
  0x8000dcbbc:  9001c388    adrp x8, #59179008
  0x8000dcbc0:  aa1f03fb    mov x27, xzr
  0x8000dcbc4:  f9478508    ldr x8, [x8, #3848]
  0x8000dcbc8:  f9400108    ldr x8, [x8]
  0x8000dcbcc:  f9001be8    str x8, [sp, #48]
  0x8000dcbd0:  b85d83a8    ldur w8, [x29, #-40]
  0x8000dcbd4:  aa0503f4    mov x20, x5
  0x8000dcbd8:  aa0403f9    mov x25, x4
  0x8000dcbdc:  1adb2508    lsr w8, w8, w27
  0x8000dcbe0:  36000d08    tbz w8, #0, #416
  0x8000dcbe4:  f9400b08    ldr x8, [x24, #16]
  0x8000dcbe8:  8b1b0908    add x8, x8, x27, lsl #2
  0x8000dcbec:  b940151c    ldr w28, [x8, #20]
  0x8000dcbf0:  79408268    ldrh w8, [x19, #64]
  0x8000dcbf4:  53187f97    lsr w23, w28, #24
  0x8000dcbf8:  3100079f    cmn w28, #1
  0x8000dcbfc:  36485908    tbz w8, #9, #2848
  0x8000dcc00:  54000c00    b.eq #384
  0x8000dcc04:  f9400a6a    ldr x10, [x19, #16]
  0x8000dcc08:  52801fe8    mov w8, #255
  0x8000dcc0c:  6a3c011f    bics wzr, w8, w28
  0x8000dcc10:  f9401269    ldr x9, [x19, #32]
  0x8000dcc14:  8b1b114a    add x10, x10, x27, lsl #4
  0x8000dcc18:  f9406e68    ldr x8, [x19, #216]
  0x8000dcc1c:  f9405d35    ldr x21, [x9, #184]
  0x8000dcc20:  3986254a    ldrsb x10, [x10, #393]
  0x8000dcc24:  8b0a0d16    add x22, x8, x10, lsl #3
  0x8000dcc28:  540004e0    b.eq #156
  0x8000dcc2c:  52800028    mov w8, #1
  0x8000dcc30:  390042a8    strb w8, [x21, #16]
  0x8000dcc34:  9001c388    adrp x8, #59179008
  0x8000dcc38:  f9479508    ldr x8, [x8, #3880]
  0x8000dcc3c:  b9400108    ldr w8, [x8]
  0x8000dcc40:  34005988    cbz w8, #2864
  0x8000dcc44:  a94226a8    ldp x8, x9, [x21, #32]
  0x8000dcc48:  9100c10a    add x10, x8, #48
  0x8000dcc4c:  eb09015f    cmp x10, x9
  0x8000dcc50:  54005908    b.hi #2848
  0x8000dcc54:  f94022aa    ldr x10, [x21, #64]
  0x8000dcc58:  f94002a9    ldr x9, [x21]
  0x8000dcc5c:  eb0a012b    subs x11, x9, x10
  0x8000dcc60:  54000220    b.eq #68
  0x8000dcc64:  f9402aac    ldr x12, [x21, #80]
  0x8000dcc68:  b400598c    cbz x12, #2864
  0x8000dcc6c:  f940018d    ldr x13, [x12]
  0x8000dcc70:  d2c0002e    mov x14, #4294967296
  0x8000dcc74:  8b0e01ad    add x13, x13, x14
  0x8000dcc78:  f900018d    str x13, [x12]
  0x8000dcc7c:  f9402eac    ldr x12, [x21, #88]
  0x8000dcc80:  9342fd6b    asr x11, x11, #2
  0x8000dcc84:  b260056b    orr x11, x11, #0x300000000
  0x8000dcc88:  f9401aad    ldr x13, [x21, #48]
  0x8000dcc8c:  a900ad0a    stp x10, x11, [x8, #8]
  0x8000dcc90:  8b0a018b    add x11, x12, x10
  0x8000dcc94:  cb0d016b    sub x11, x11, x13
  0x8000dcc98:  f801850b    str x11, [x8], #24
  0x8000dcc9c:  f9002abf    str xzr, [x21, #80]
  0x8000dcca0:  f90022a9    str x9, [x21, #64]
  0x8000dcca4:  93401f89    sxtb x9, w28
  0x8000dcca8:  528002ea    mov w10, #23
  0x8000dccac:  72a0200a    movk w10, #256, lsl #16
  0x8000dccb0:  aa094149    orr x9, x10, x9, lsl #16
  0x8000dccb4:  a8815909    stp x9, x22, [x8], #16
  0x8000dccb8:  f90012a8    str x8, [x21, #32]
  0x8000dccbc:  52800028    mov w8, #1
  0x8000dccc0:  39004aa8    strb w8, [x21, #18]
  0x8000dccc4:  52801fe8    mov w8, #255
  0x8000dccc8:  6a7c211f    bics wzr, w8, w28, lsr #8
  0x8000dcccc:  54000ba1    b.ne #372
  0x8000dccd0:  52801fe8    mov w8, #255
  0x8000dccd4:  6a7c411f    bics wzr, w8, w28, lsr #16
  0x8000dccd8:  54000601    b.ne #192
  0x8000dccdc:  7103feff    cmp w23, #255
  0x8000dcce0:  54000500    b.eq #160
  0x8000dcce4:  52800028    mov w8, #1
  0x8000dcce8:  390042a8    strb w8, [x21, #16]
  0x8000dccec:  9001c388    adrp x8, #59179008
  0x8000dccf0:  f9479508    ldr x8, [x8, #3880]
  0x8000dccf4:  b9400108    ldr w8, [x8]
  0x8000dccf8:  34005588    cbz w8, #2736
  0x8000dccfc:  a94226a8    ldp x8, x9, [x21, #32]
  0x8000dcd00:  9100c10a    add x10, x8, #48
  0x8000dcd04:  eb09015f    cmp x10, x9
  0x8000dcd08:  54005508    b.hi #2720
  0x8000dcd0c:  f94022aa    ldr x10, [x21, #64]
  0x8000dcd10:  f94002a9    ldr x9, [x21]
  0x8000dcd14:  eb0a012b    subs x11, x9, x10
  0x8000dcd18:  54000220    b.eq #68
  0x8000dcd1c:  f9402aac    ldr x12, [x21, #80]
  0x8000dcd20:  b400558c    cbz x12, #2736
  0x8000dcd24:  f940018d    ldr x13, [x12]
  0x8000dcd28:  d2c0002e    mov x14, #4294967296
  0x8000dcd2c:  8b0e01ad    add x13, x13, x14
  0x8000dcd30:  f900018d    str x13, [x12]
  0x8000dcd34:  f9402eac    ldr x12, [x21, #88]
  0x8000dcd38:  9342fd6b    asr x11, x11, #2
  0x8000dcd3c:  b260056b    orr x11, x11, #0x300000000
  0x8000dcd40:  f9401aad    ldr x13, [x21, #48]
  0x8000dcd44:  a900ad0a    stp x10, x11, [x8, #8]
  0x8000dcd48:  8b0a018b    add x11, x12, x10
  0x8000dcd4c:  cb0d016b    sub x11, x11, x13
  0x8000dcd50:  f801850b    str x11, [x8], #24
  0x8000dcd54:  f9002abf    str xzr, [x21, #80]
  0x8000dcd58:  f90022a9    str x9, [x21, #64]
  0x8000dcd5c:  528002ea    mov w10, #23
  0x8000dcd60:  72a0200a    movk w10, #256, lsl #16
  0x8000dcd64:  93401ee9    sxtb x9, w23
  0x8000dcd68:  9114014a    add x10, x10, #1280
  0x8000dcd6c:  aa094149    orr x9, x10, x9, lsl #16
  0x8000dcd70:  a8815909    stp x9, x22, [x8], #16
  0x8000dcd74:  f90012a8    str x8, [x21, #32]
  0x8000dcd78:  52800028    mov w8, #1
  0x8000dcd7c:  39004aa8    strb w8, [x21, #18]
  0x8000dcd80:  9100077b    add x27, x27, #1
  0x8000dcd84:  aa1903e4    mov x4, x25
  0x8000dcd88:  aa1403e5    mov x5, x20
  0x8000dcd8c:  f1007b7f    cmp x27, #30
  0x8000dcd90:  54fff201    b.ne #-448
  0x8000dcd94:  17fffdf8    b #-2080
  0x8000dcd98:  52800029    mov w9, #1
  0x8000dcd9c:  53107f88    lsr w8, w28, #16
  0x8000dcda0:  390042a9    strb w9, [x21, #16]
  0x8000dcda4:  9001c389    adrp x9, #59179008
  0x8000dcda8:  f9479529    ldr x9, [x9, #3880]
  0x8000dcdac:  b9400129    ldr w9, [x9]
  0x8000dcdb0:  34005189    cbz w9, #2608
  0x8000dcdb4:  a9422aa9    ldp x9, x10, [x21, #32]
  0x8000dcdb8:  9100c12b    add x11, x9, #48
  0x8000dcdbc:  eb0a017f    cmp x11, x10
  0x8000dcdc0:  54005108    b.hi #2592
  0x8000dcdc4:  f94022ab    ldr x11, [x21, #64]
  0x8000dcdc8:  f94002aa    ldr x10, [x21]
  0x8000dcdcc:  eb0b014c    subs x12, x10, x11
  0x8000dcdd0:  54000220    b.eq #68
  0x8000dcdd4:  f9402aad    ldr x13, [x21, #80]
  0x8000dcdd8:  b40042cd    cbz x13, #2136
  0x8000dcddc:  f94001ae    ldr x14, [x13]
  0x8000dcde0:  d2c0002f    mov x15, #4294967296
  0x8000dcde4:  8b0f01ce    add x14, x14, x15
  0x8000dcde8:  f90001ae    str x14, [x13]
  0x8000dcdec:  f9402ead    ldr x13, [x21, #88]
  0x8000dcdf0:  9342fd8c    asr x12, x12, #2
  0x8000dcdf4:  b260058c    orr x12, x12, #0x300000000
  0x8000dcdf8:  f9401aae    ldr x14, [x21, #48]
  0x8000dcdfc:  a900b12b    stp x11, x12, [x9, #8]
  0x8000dce00:  8b0b01ac    add x12, x13, x11
  0x8000dce04:  cb0e018c    sub x12, x12, x14
  0x8000dce08:  f801852c    str x12, [x9], #24
  0x8000dce0c:  f9002abf    str xzr, [x21, #80]
  0x8000dce10:  f90022aa    str x10, [x21, #64]
  0x8000dce14:  528002ea    mov w10, #23
  0x8000dce18:  72a0200a    movk w10, #256, lsl #16
  0x8000dce1c:  93401d08    sxtb x8, w8
  0x8000dce20:  9108014a    add x10, x10, #512
  0x8000dce24:  aa084148    orr x8, x10, x8, lsl #16
  0x8000dce28:  a9005928    stp x8, x22, [x9]
  0x8000dce2c:  91004128    add x8, x9, #16
  0x8000dce30:  f90012a8    str x8, [x21, #32]
  0x8000dce34:  52800028    mov w8, #1
  0x8000dce38:  39004aa8    strb w8, [x21, #18]
  0x8000dce3c:  17ffffa8    b #-352
  0x8000dce40:  52800029    mov w9, #1
  0x8000dce44:  53087f88    lsr w8, w28, #8
  0x8000dce48:  390042a9    strb w9, [x21, #16]
  0x8000dce4c:  9001c389    adrp x9, #59179008
  0x8000dce50:  f9479529    ldr x9, [x9, #3880]
  0x8000dce54:  b9400129    ldr w9, [x9]
  0x8000dce58:  34004d89    cbz w9, #2480
  0x8000dce5c:  a9422aa9    ldp x9, x10, [x21, #32]
  0x8000dce60:  9100c12b    add x11, x9, #48
  0x8000dce64:  eb0a017f    cmp x11, x10
  0x8000dce68:  54004d08    b.hi #2464
  0x8000dce6c:  f94022ab    ldr x11, [x21, #64]
  0x8000dce70:  f94002aa    ldr x10, [x21]
  0x8000dce74:  eb0b014c    subs x12, x10, x11
  0x8000dce78:  54000220    b.eq #68
  0x8000dce7c:  f9402aad    ldr x13, [x21, #80]
  0x8000dce80:  b4004d8d    cbz x13, #2480
  0x8000dce84:  f94001ae    ldr x14, [x13]
  0x8000dce88:  d2c0002f    mov x15, #4294967296
  0x8000dce8c:  8b0f01ce    add x14, x14, x15
  0x8000dce90:  f90001ae    str x14, [x13]
  0x8000dce94:  f9402ead    ldr x13, [x21, #88]
  0x8000dce98:  9342fd8c    asr x12, x12, #2
  0x8000dce9c:  b260058c    orr x12, x12, #0x300000000
  0x8000dcea0:  f9401aae    ldr x14, [x21, #48]
  0x8000dcea4:  a900b12b    stp x11, x12, [x9, #8]
  0x8000dcea8:  8b0b01ac    add x12, x13, x11
  0x8000dceac:  cb0e018c    sub x12, x12, x14
  0x8000dceb0:  f801852c    str x12, [x9], #24
  0x8000dceb4:  f9002abf    str xzr, [x21, #80]
  0x8000dceb8:  f90022aa    str x10, [x21, #64]
  0x8000dcebc:  528002ea    mov w10, #23
  0x8000dcec0:  72a0200a    movk w10, #256, lsl #16
  0x8000dcec4:  93401d08    sxtb x8, w8
  0x8000dcec8:  9104014a    add x10, x10, #256
  0x8000dcecc:  aa084148    orr x8, x10, x8, lsl #16
  0x8000dced0:  a9005928    stp x8, x22, [x9]
  0x8000dced4:  91004128    add x8, x9, #16
  0x8000dced8:  f90012a8    str x8, [x21, #32]
  0x8000dcedc:  52800028    mov w8, #1
  0x8000dcee0:  39004aa8    strb w8, [x21, #18]
  0x8000dcee4:  17ffff7b    b #-532
  0x8000dcee8:  3944056d    ldrb w13, [x11, #257]
  0x8000dceec:  5280002c    mov w12, #1
  0x8000dcef0:  3904c269    strb w9, [x19, #304]
  0x8000dcef4:  3904c66d    strb w13, [x19, #305]
  0x8000dcef8:  17fffc01    b #-4092
  0x8000dcefc:  7100011f    cmp w8, #0
  0x8000dcf00:  121e016d    and w13, w11, #0x4
  0x8000dcf04:  1a9f07ec    cset w12, ne
  0x8000dcf08:  6b4d099f    cmp w12, w13, lsr #2
  0x8000dcf0c:  54ff6541    b.ne #-4952
  0x8000dcf10:  2a1f03e8    mov w8, wzr
  0x8000dcf14:  17fffb2c    b #-4944
  0x8000dcf18:  f9400a68    ldr x8, [x19, #16]
  0x8000dcf1c:  12800003    mov w3, #-1
  0x8000dcf20:  9111c100    add x0, x8, #1136
  0x8000dcf24:  f9401261    ldr x1, [x19, #32]
  0x8000dcf28:  f9408e62    ldr x2, [x19, #280]
  0x8000dcf2c:  949d7820    bl #41279616
  0x8000dcf30:  17fffeac    b #-1360
  0x8000dcf34:  aa0403f6    mov x22, x4
  0x8000dcf38:  aa0503f7    mov x23, x5
  0x8000dcf3c:  941c48e1    bl #7414660
  0x8000dcf40:  aa1703e5    mov x5, x23
  0x8000dcf44:  aa1603e4    mov x4, x22
  0x8000dcf48:  17fffbaf    b #-4420
  0x8000dcf4c:  a90213e5    stp x5, x4, [sp, #32]
  0x8000dcf50:  b001c415    adrp x21, #59248640
  0x8000dcf54:  f946d2b5    ldr x21, [x21, #3488]
  0x8000dcf58:  aa0803f4    mov x20, x8
  0x8000dcf5c:  eb15013f    cmp x9, x21
  0x8000dcf60:  54004701    b.ne #2272
  0x8000dcf64:  b9408a88    ldr w8, [x20, #136]
  0x8000dcf68:  eb1902bf    cmp x21, x25
  0x8000dcf6c:  0b080308    add w8, w24, w8
  0x8000dcf70:  51000518    sub w24, w8, #1
  0x8000dcf74:  54004860    b.eq #2316
  0x8000dcf78:  b9408a80    ldr w0, [x20, #136]
  0x8000dcf7c:  aa1403e8    mov x8, x20
  0x8000dcf80:  a94213e5    ldp x5, x4, [sp, #32]
  0x8000dcf84:  17fffbb0    b #-4416
  0x8000dcf88:  d344ff89    lsr x9, x28, #4
  0x8000dcf8c:  4b0003ea    neg w10, w0
  0x8000dcf90:  f9405ef7    ldr x23, [x23, #184]
  0x8000dcf94:  9ba97f69    umull x9, w27, w9
  0x8000dcf98:  0a0a030a    and w10, w24, w10
  0x8000dcf9c:  f9001be8    str x8, [sp, #48]
  0x8000dcfa0:  aa0503f9    mov x25, x5
  0x8000dcfa4:  aa0403f4    mov x20, x4
  0x8000dcfa8:  52811c1b    mov w27, #2272
  0x8000dcfac:  72a4007b    movk w27, #8195, lsl #16
  0x8000dcfb0:  9baa5935    umaddl x21, w9, w10, x22
  0x8000dcfb4:  b9404116    ldr w22, [x8, #64]
  0x8000dcfb8:  52801fe8    mov w8, #255
  0x8000dcfbc:  6a3a011f    bics wzr, w8, w26
  0x8000dcfc0:  d360febc    lsr x28, x21, #32
  0x8000dcfc4:  540019a1    b.ne #820
  0x8000dcfc8:  529fe008    mov w8, #65280
  0x8000dcfcc:  6a3a011f    bics wzr, w8, w26
  0x8000dcfd0:  54000480    b.eq #144
  0x8000dcfd4:  f9401be8    ldr x8, [sp, #48]
  0x8000dcfd8:  b001c409    adrp x9, #59248640
  0x8000dcfdc:  13083f43    sbfx w3, w26, #8, #8
  0x8000dcfe0:  f9400108    ldr x8, [x8]
  0x8000dcfe4:  f9402908    ldr x8, [x8, #80]
  0x8000dcfe8:  f9478d29    ldr x9, [x9, #3864]
  0x8000dcfec:  eb09011f    cmp x8, x9
  0x8000dcff0:  54002141    b.ne #1064
  0x8000dcff4:  52800028    mov w8, #1
  0x8000dcff8:  390042e8    strb w8, [x23, #16]
  0x8000dcffc:  9001c388    adrp x8, #59179008
  0x8000dd000:  f9479508    ldr x8, [x8, #3880]
  0x8000dd004:  b9400108    ldr w8, [x8]
  0x8000dd008:  340033a8    cbz w8, #1652
  0x8000dd00c:  a94026e8    ldp x8, x9, [x23]
  0x8000dd010:  9100610a    add x10, x8, #24
  0x8000dd014:  eb09015f    cmp x10, x9
  0x8000dd018:  54003328    b.hi #1636
  0x8000dd01c:  530c2c69    lsl w9, w3, #20
  0x8000dd020:  34004356    cbz w22, #2152
  0x8000dd024:  1103feca    add w10, w22, #255
  0x8000dd028:  114c0129    add w9, w9, #768, lsl #12
  0x8000dd02c:  12185d4a    and w10, w10, #0xffffff00
  0x8000dd030:  120c1129    and w9, w9, #0x1f00000
  0x8000dd034:  2900f10a    stp w10, w28, [x8, #4]
  0x8000dd038:  5281238a    mov w10, #2332
  0x8000dd03c:  72b0002a    movk w10, #32769, lsl #16
  0x8000dd040:  2a0a0129    orr w9, w9, w10
  0x8000dd044:  2a1b03ea    mov w10, w27
  0x8000dd048:  11002129    add w9, w9, #8
  0x8000dd04c:  2901a515    stp w21, w9, [x8, #12]
  0x8000dd050:  528000a9    mov w9, #5
  0x8000dd054:  b900010a    str w10, [x8]
  0x8000dd058:  8b090908    add x8, x8, x9, lsl #2
  0x8000dd05c:  f90002e8    str x8, [x23]
  0x8000dd060:  52a01fe8    mov w8, #16711680
  0x8000dd064:  6a3a011f    bics wzr, w8, w26
  0x8000dd068:  54002ec1    b.ne #1496
  0x8000dd06c:  53187f48    lsr w8, w26, #24
  0x8000dd070:  aa1403e4    mov x4, x20
  0x8000dd074:  aa1903e5    mov x5, x25
  0x8000dd078:  7103f91f    cmp w8, #254
  0x8000dd07c:  f9401be8    ldr x8, [sp, #48]
  0x8000dd080:  54ff6e68    b.hi #-4660
  0x8000dd084:  f9400108    ldr x8, [x8]
  0x8000dd088:  9001c409    adrp x9, #59244544
  0x8000dd08c:  13187f43    asr w3, w26, #24
  0x8000dd090:  f9402908    ldr x8, [x8, #80]
  0x8000dd094:  f9478d29    ldr x9, [x9, #3864]
  0x8000dd098:  eb09011f    cmp x8, x9
  0x8000dd09c:  54004061    b.ne #2060
  0x8000dd0a0:  52800028    mov w8, #1
  0x8000dd0a4:  528000a1    mov w1, #5
  0x8000dd0a8:  390042e8    strb w8, [x23, #16]
  0x8000dd0ac:  f001c3e8    adrp x8, #59240448
  0x8000dd0b0:  aa1703e0    mov x0, x23
  0x8000dd0b4:  f9417908    ldr x8, [x8, #752]
  0x8000dd0b8:  2a0303e2    mov w2, w3
  0x8000dd0bc:  aa1503e3    mov x3, x21
  0x8000dd0c0:  f9400108    ldr x8, [x8]
  0x8000dd0c4:  aa1603e4    mov x4, x22
  0x8000dd0c8:  d63f0100    blr x8
  0x8000dd0cc:  aa1403e4    mov x4, x20
  0x8000dd0d0:  aa1903e5    mov x5, x25
  0x8000dd0d4:  17fffb5e    b #-4744
  0x8000dd0d8:  5280002b    mov w11, #1
  0x8000dd0dc:  17fffac4    b #-5360
  0x8000dd0e0:  2a1f03ec    mov w12, wzr
  0x8000dd0e4:  17fffca5    b #-3436
  0x8000dd0e8:  aa1903ed    mov x13, x25
  0x8000dd0ec:  aa0903f9    mov x25, x9
  0x8000dd0f0:  17fffcc4    b #-3312
  0x8000dd0f4:  12117908    and w8, w8, #0xffffbfff
  0x8000dd0f8:  79008268    strh w8, [x19, #64]
  0x8000dd0fc:  f940030b    ldr x11, [x24]
  0x8000dd100:  91004168    add x8, x11, #16
  0x8000dd104:  9100516c    add x12, x11, #20
  0x8000dd108:  9100616b    add x11, x11, #24
  0x8000dd10c:  17fffcdd    b #-3212
  0x8000dd110:  1103ff18    add w24, w24, #255
  0x8000dd114:  17fffcf9    b #-3100
  0x8000dd118:  d344fec9    lsr x9, x22, #4
  0x8000dd11c:  290237ea    stp w10, w13, [sp, #16]
  0x8000dd120:  4b0003ea    neg w10, w0
  0x8000dd124:  9ba97f69    umull x9, w27, w9
  0x8000dd128:  b9001beb    str w11, [sp, #24]
  0x8000dd12c:  0a0a030a    and w10, w24, w10
  0x8000dd130:  f90013e5    str x5, [sp, #32]
  0x8000dd134:  9001c41b    adrp x27, #59244544
  0x8000dd138:  b9404118    ldr w24, [x8, #64]
  0x8000dd13c:  f81d83a8    stur x8, [x29, #-40]
  0x8000dd140:  f9405eb5    ldr x21, [x21, #184]
  0x8000dd144:  f9478f7b    ldr x27, [x27, #3864]
  0x8000dd148:  9baa7136    umaddl x22, w9, w10, x28
  0x8000dd14c:  52801fe8    mov w8, #255
  0x8000dd150:  aa0403f9    mov x25, x4
  0x8000dd154:  aa1a03f4    mov x20, x26
  0x8000dd158:  52811c1a    mov w26, #2272
  0x8000dd15c:  72a4007a    movk w26, #8195, lsl #16
  0x8000dd160:  6a37011f    bics wzr, w8, w23
  0x8000dd164:  d360fedc    lsr x28, x22, #32
  0x8000dd168:  54001121    b.ne #548
  0x8000dd16c:  529fe008    mov w8, #65280
  0x8000dd170:  6a37011f    bics wzr, w8, w23
  0x8000dd174:  54003a81    b.ne #1872
  0x8000dd178:  52a01fe8    mov w8, #16711680
  0x8000dd17c:  6a37011f    bics wzr, w8, w23
  0x8000dd180:  54000400    b.eq #128
  0x8000dd184:  f85d83a8    ldur x8, [x29, #-40]
  0x8000dd188:  13105ee3    sbfx w3, w23, #16, #8
  0x8000dd18c:  f9400108    ldr x8, [x8]
  0x8000dd190:  f9402908    ldr x8, [x8, #80]
  0x8000dd194:  eb1b011f    cmp x8, x27
  0x8000dd198:  54003d41    b.ne #1960
  0x8000dd19c:  52800028    mov w8, #1
  0x8000dd1a0:  390042a8    strb w8, [x21, #16]
  0x8000dd1a4:  f001c368    adrp x8, #59174912
  0x8000dd1a8:  f9479508    ldr x8, [x8, #3880]
  0x8000dd1ac:  b9400108    ldr w8, [x8]
  0x8000dd1b0:  340027a8    cbz w8, #1268
  0x8000dd1b4:  a94026a8    ldp x8, x9, [x21]
  0x8000dd1b8:  9100610a    add x10, x8, #24
  0x8000dd1bc:  eb09015f    cmp x10, x9
  0x8000dd1c0:  54002728    b.hi #1252
  0x8000dd1c4:  530c2c69    lsl w9, w3, #20
  0x8000dd1c8:  34003cb8    cbz w24, #1940
  0x8000dd1cc:  1103ff0a    add w10, w24, #255
  0x8000dd1d0:  114c0129    add w9, w9, #768, lsl #12
  0x8000dd1d4:  12185d4a    and w10, w10, #0xffffff00
  0x8000dd1d8:  120c1129    and w9, w9, #0x1f00000
  0x8000dd1dc:  2900f10a    stp w10, w28, [x8, #4]
  0x8000dd1e0:  5281238a    mov w10, #2332
  0x8000dd1e4:  72b0002a    movk w10, #32769, lsl #16
  0x8000dd1e8:  2a0a0129    orr w9, w9, w10
  0x8000dd1ec:  2901a516    stp w22, w9, [x8, #12]
  0x8000dd1f0:  528000a9    mov w9, #5
  0x8000dd1f4:  b900011a    str w26, [x8]
  0x8000dd1f8:  8b090908    add x8, x8, x9, lsl #2
  0x8000dd1fc:  f90002a8    str x8, [x21]
  0x8000dd200:  53187ee8    lsr w8, w23, #24
  0x8000dd204:  f94013e5    ldr x5, [sp, #32]
  0x8000dd208:  aa1403fa    mov x26, x20
  0x8000dd20c:  7103f91f    cmp w8, #254
  0x8000dd210:  f85d83a8    ldur x8, [x29, #-40]
  0x8000dd214:  aa1903e4    mov x4, x25
  0x8000dd218:  2942afed    ldp w13, w11, [sp, #20]
  0x8000dd21c:  b94013ea    ldr w10, [sp, #16]
  0x8000dd220:  54ff9728    b.hi #-3356
  0x8000dd224:  f9400108    ldr x8, [x8]
  0x8000dd228:  13187ee3    asr w3, w23, #24
  0x8000dd22c:  f9402908    ldr x8, [x8, #80]
  0x8000dd230:  eb1b011f    cmp x8, x27
  0x8000dd234:  54003a41    b.ne #1864
  0x8000dd238:  52800028    mov w8, #1
  0x8000dd23c:  528000a1    mov w1, #5
  0x8000dd240:  390042a8    strb w8, [x21, #16]
  0x8000dd244:  f001c3e8    adrp x8, #59240448
  0x8000dd248:  aa1503e0    mov x0, x21
  0x8000dd24c:  f9417908    ldr x8, [x8, #752]
  0x8000dd250:  2a0303e2    mov w2, w3
  0x8000dd254:  aa1603e3    mov x3, x22
  0x8000dd258:  f9400108    ldr x8, [x8]
  0x8000dd25c:  aa1803e4    mov x4, x24
  0x8000dd260:  d63f0100    blr x8
  0x8000dd264:  f94013e5    ldr x5, [sp, #32]
  0x8000dd268:  aa1403fa    mov x26, x20
  0x8000dd26c:  aa1903e4    mov x4, x25
  0x8000dd270:  2942afed    ldp w13, w11, [sp, #20]
  0x8000dd274:  b94013ea    ldr w10, [sp, #16]
  0x8000dd278:  17fffca3    b #-3444
  0x8000dd27c:  aa0803e0    mov x0, x8
  0x8000dd280:  290237ea    stp w10, w13, [sp, #16]
  0x8000dd284:  b9001beb    str w11, [sp, #24]
  0x8000dd288:  f81d83ba    stur x26, [x29, #-40]
  0x8000dd28c:  aa0803fa    mov x26, x8
  0x8000dd290:  a90213e5    stp x5, x4, [sp, #32]
  0x8000dd294:  d63f0120    blr x9
  0x8000dd298:  f9400349    ldr x9, [x26]
  0x8000dd29c:  0b00030a    add w10, w24, w0
  0x8000dd2a0:  aa1a03e8    mov x8, x26
  0x8000dd2a4:  51000558    sub w24, w10, #1
  0x8000dd2a8:  f9401529    ldr x9, [x9, #40]
  0x8000dd2ac:  eb14013f    cmp x9, x20
  0x8000dd2b0:  540017c0    b.eq #760
  0x8000dd2b4:  eb19013f    cmp x9, x25
  0x8000dd2b8:  54000140    b.eq #40
  0x8000dd2bc:  aa0803e0    mov x0, x8
  0x8000dd2c0:  aa0803f4    mov x20, x8
  0x8000dd2c4:  d63f0120    blr x9
  0x8000dd2c8:  aa1403e8    mov x8, x20
  0x8000dd2cc:  14000006    b #24
  0x8000dd2d0:  290237ea    stp w10, w13, [sp, #16]
  0x8000dd2d4:  b9001beb    str w11, [sp, #24]
  0x8000dd2d8:  f81d83ba    stur x26, [x29, #-40]
  0x8000dd2dc:  a90213e5    stp x5, x4, [sp, #32]
  0x8000dd2e0:  b9408900    ldr w0, [x8, #136]
  0x8000dd2e4:  f85d83ba    ldur x26, [x29, #-40]
  0x8000dd2e8:  a94213e5    ldp x5, x4, [sp, #32]
  0x8000dd2ec:  2942afed    ldp w13, w11, [sp, #20]
  0x8000dd2f0:  b94013ea    ldr w10, [sp, #16]
  0x8000dd2f4:  17fffc82    b #-3576
  0x8000dd2f8:  f9401be8    ldr x8, [sp, #48]
  0x8000dd2fc:  9001c409    adrp x9, #59244544
  0x8000dd300:  13001f43    sxtb w3, w26
  0x8000dd304:  f9400108    ldr x8, [x8]
  0x8000dd308:  f9402908    ldr x8, [x8, #80]
  0x8000dd30c:  f9478d29    ldr x9, [x9, #3864]
  0x8000dd310:  eb09011f    cmp x8, x9
  0x8000dd314:  54003421    b.ne #1668
  0x8000dd318:  52800028    mov w8, #1
  0x8000dd31c:  390042e8    strb w8, [x23, #16]
  0x8000dd320:  f001c368    adrp x8, #59174912
  0x8000dd324:  f9479508    ldr x8, [x8, #3880]
  0x8000dd328:  b9400108    ldr w8, [x8]
  0x8000dd32c:  34001d08    cbz w8, #928
  0x8000dd330:  a94026e8    ldp x8, x9, [x23]
  0x8000dd334:  9100610a    add x10, x8, #24
  0x8000dd338:  eb09015f    cmp x10, x9
  0x8000dd33c:  54001c88    b.hi #912
  0x8000dd340:  53081f4a    lsl w10, w26, #24
  0x8000dd344:  52812089    mov w9, #2308
  0x8000dd348:  72b00009    movk w9, #32768, lsl #16
  0x8000dd34c:  53047d4a    lsr w10, w10, #4
  0x8000dd350:  34003336    cbz w22, #1636
  0x8000dd354:  114c014a    add w10, w10, #768, lsl #12
  0x8000dd358:  11404129    add w9, w9, #16, lsl #12
  0x8000dd35c:  1103fecb    add w11, w22, #255
  0x8000dd360:  120c114a    and w10, w10, #0x1f00000
  0x8000dd364:  12185d6b    and w11, w11, #0xffffff00
  0x8000dd368:  2900f10b    stp w11, w28, [x8, #4]
  0x8000dd36c:  2a090149    orr w9, w10, w9
  0x8000dd370:  2901a515    stp w21, w9, [x8, #12]
  0x8000dd374:  528000a9    mov w9, #5
  0x8000dd378:  2a1b03ea    mov w10, w27
  0x8000dd37c:  b900010a    str w10, [x8]
  0x8000dd380:  8b090908    add x8, x8, x9, lsl #2
  0x8000dd384:  f90002e8    str x8, [x23]
  0x8000dd388:  17ffff10    b #-960
  0x8000dd38c:  f85d83a8    ldur x8, [x29, #-40]
  0x8000dd390:  13001ee3    sxtb w3, w23
  0x8000dd394:  f9400108    ldr x8, [x8]
  0x8000dd398:  f9402908    ldr x8, [x8, #80]
  0x8000dd39c:  eb1b011f    cmp x8, x27
  0x8000dd3a0:  54003141    b.ne #1576
  0x8000dd3a4:  52800028    mov w8, #1
  0x8000dd3a8:  390042a8    strb w8, [x21, #16]
  0x8000dd3ac:  f001c368    adrp x8, #59174912
  0x8000dd3b0:  f9479508    ldr x8, [x8, #3880]
  0x8000dd3b4:  b9400108    ldr w8, [x8]
  0x8000dd3b8:  340019e8    cbz w8, #828
  0x8000dd3bc:  a94026a8    ldp x8, x9, [x21]
  0x8000dd3c0:  9100610a    add x10, x8, #24
  0x8000dd3c4:  eb09015f    cmp x10, x9
  0x8000dd3c8:  54001968    b.hi #812
  0x8000dd3cc:  53081eea    lsl w10, w23, #24
  0x8000dd3d0:  52812089    mov w9, #2308
  0x8000dd3d4:  72b00009    movk w9, #32768, lsl #16
  0x8000dd3d8:  53047d4a    lsr w10, w10, #4
  0x8000dd3dc:  34003058    cbz w24, #1544
  0x8000dd3e0:  114c014a    add w10, w10, #768, lsl #12
  0x8000dd3e4:  11404129    add w9, w9, #16, lsl #12
  0x8000dd3e8:  1103ff0b    add w11, w24, #255
  0x8000dd3ec:  120c114a    and w10, w10, #0x1f00000
  0x8000dd3f0:  12185d6b    and w11, w11, #0xffffff00
  0x8000dd3f4:  2900f10b    stp w11, w28, [x8, #4]
  0x8000dd3f8:  2a090149    orr w9, w10, w9
  0x8000dd3fc:  2901a516    stp w22, w9, [x8, #12]
  0x8000dd400:  528000a9    mov w9, #5
  0x8000dd404:  2a1a03ea    mov w10, w26
  0x8000dd408:  b900010a    str w10, [x8]
  0x8000dd40c:  8b090908    add x8, x8, x9, lsl #2
  0x8000dd410:  f90002a8    str x8, [x21]
  0x8000dd414:  17ffff56    b #-680
  0x8000dd418:  f9401be0    ldr x0, [sp, #48]
  0x8000dd41c:  aa1703e1    mov x1, x23
  0x8000dd420:  52800022    mov w2, #1
  0x8000dd424:  aa1503e4    mov x4, x21
  0x8000dd428:  aa1603e5    mov x5, x22
  0x8000dd42c:  d63f0100    blr x8
  0x8000dd430:  17ffff0c    b #-976
  0x8000dd434:  52812094    mov w20, #2308
  0x8000dd438:  72b00014    movk w20, #32768, lsl #16
  0x8000dd43c:  7103fd1f    cmp w8, #255
  0x8000dd440:  54000401    b.ne #128
  0x8000dd444:  b94017e8    ldr w8, [sp, #20]
  0x8000dd448:  7103fd1f    cmp w8, #255
  0x8000dd44c:  540005e1    b.ne #188
  0x8000dd450:  b94023e8    ldr w8, [sp, #32]
  0x8000dd454:  7103fd1f    cmp w8, #255
  0x8000dd458:  54000801    b.ne #256
  0x8000dd45c:  b85d83a8    ldur w8, [x29, #-40]
  0x8000dd460:  aa1803e4    mov x4, x24
  0x8000dd464:  aa1903e5    mov x5, x25
  0x8000dd468:  b9401beb    ldr w11, [sp, #24]
  0x8000dd46c:  2a1b03ed    mov w13, w27
  0x8000dd470:  7103fd1f    cmp w8, #255
  0x8000dd474:  54ff85e0    b.eq #-3908
  0x8000dd478:  17fffce6    b #-3176
  0x8000dd47c:  52811c0a    mov w10, #2272
  0x8000dd480:  72a4006a    movk w10, #8195, lsl #16
  0x8000dd484:  2900510a    stp w10, w20, [x8]
  0x8000dd488:  f94007ea    ldr x10, [sp, #8]
  0x8000dd48c:  53081f89    lsl w9, w28, #24
  0x8000dd490:  53047d29    lsr w9, w9, #4
  0x8000dd494:  114c0129    add w9, w9, #768, lsl #12
  0x8000dd498:  120c1129    and w9, w9, #0x1f00000
  0x8000dd49c:  2901550a    stp w10, w21, [x8, #8]
  0x8000dd4a0:  5281208a    mov w10, #2308
  0x8000dd4a4:  72b0000a    movk w10, #32768, lsl #16
  0x8000dd4a8:  2a0a0129    orr w9, w9, w10
  0x8000dd4ac:  32100129    orr w9, w9, #0x10000
  0x8000dd4b0:  b9001109    str w9, [x8, #16]
  0x8000dd4b4:  91005108    add x8, x8, #20
  0x8000dd4b8:  f90002e8    str x8, [x23]
  0x8000dd4bc:  17fffcb1    b #-3388
  0x8000dd4c0:  52800028    mov w8, #1
  0x8000dd4c4:  390042e8    strb w8, [x23, #16]
  0x8000dd4c8:  f001c368    adrp x8, #59174912
  0x8000dd4cc:  f9479508    ldr x8, [x8, #3880]
  0x8000dd4d0:  b9400108    ldr w8, [x8]
  0x8000dd4d4:  340006e8    cbz w8, #220
  0x8000dd4d8:  a94026e8    ldp x8, x9, [x23]
  0x8000dd4dc:  9100610a    add x10, x8, #24
  0x8000dd4e0:  eb09015f    cmp x10, x9
  0x8000dd4e4:  54000668    b.hi #204
  0x8000dd4e8:  53081f89    lsl w9, w28, #24
  0x8000dd4ec:  53047d29    lsr w9, w9, #4
  0x8000dd4f0:  114c0129    add w9, w9, #768, lsl #12
  0x8000dd4f4:  120c1129    and w9, w9, #0x1f00000
  0x8000dd4f8:  2a140129    orr w9, w9, w20
  0x8000dd4fc:  b8004509    str w9, [x8], #4
  0x8000dd500:  f90002e8    str x8, [x23]
  0x8000dd504:  17ffffd0    b #-192
  0x8000dd508:  52800028    mov w8, #1
  0x8000dd50c:  390042e8    strb w8, [x23, #16]
  0x8000dd510:  f001c368    adrp x8, #59174912
  0x8000dd514:  f9479508    ldr x8, [x8, #3880]
  0x8000dd518:  b9400108    ldr w8, [x8]
  0x8000dd51c:  340005e8    cbz w8, #188
  0x8000dd520:  a94026e8    ldp x8, x9, [x23]
  0x8000dd524:  9100610a    add x10, x8, #24
  0x8000dd528:  eb09015f    cmp x10, x9
  0x8000dd52c:  54000568    b.hi #172
  0x8000dd530:  b94013e9    ldr w9, [sp, #16]
  0x8000dd534:  1100828a    add w10, w20, #32
  0x8000dd538:  53081d29    lsl w9, w9, #24
  0x8000dd53c:  53047d29    lsr w9, w9, #4
  0x8000dd540:  114c0129    add w9, w9, #768, lsl #12
  0x8000dd544:  120c1129    and w9, w9, #0x1f00000
  0x8000dd548:  2a0a0129    orr w9, w9, w10
  0x8000dd54c:  b8004509    str w9, [x8], #4
  0x8000dd550:  f90002e8    str x8, [x23]
  0x8000dd554:  17ffffbf    b #-260
  0x8000dd558:  52800028    mov w8, #1
  0x8000dd55c:  390042e8    strb w8, [x23, #16]
  0x8000dd560:  f001c368    adrp x8, #59174912
  0x8000dd564:  f9479508    ldr x8, [x8, #3880]
  0x8000dd568:  b9400108    ldr w8, [x8]
  0x8000dd56c:  340004c8    cbz w8, #152
  0x8000dd570:  a94026e8    ldp x8, x9, [x23]
  0x8000dd574:  9100610a    add x10, x8, #24
  0x8000dd578:  eb09015f    cmp x10, x9
  0x8000dd57c:  54000448    b.hi #136
  0x8000dd580:  b9402be9    ldr w9, [sp, #40]
  0x8000dd584:  1100628a    add w10, w20, #24
  0x8000dd588:  53081d29    lsl w9, w9, #24
  0x8000dd58c:  53047d29    lsr w9, w9, #4
  0x8000dd590:  114c0129    add w9, w9, #768, lsl #12
  0x8000dd594:  120c1129    and w9, w9, #0x1f00000
  0x8000dd598:  2a0a0129    orr w9, w9, w10
  0x8000dd59c:  b8004509    str w9, [x8], #4
  0x8000dd5a0:  f90002e8    str x8, [x23]
  0x8000dd5a4:  17ffffae    b #-328
  0x8000dd5a8:  52802000    mov w0, #256
  0x8000dd5ac:  17ffff4e    b #-712
  0x8000dd5b0:  f001c3e8    adrp x8, #59240448
  0x8000dd5b4:  13001f82    sxtb w2, w28
  0x8000dd5b8:  f9417908    ldr x8, [x8, #752]
  0x8000dd5bc:  aa1703e0    mov x0, x23
  0x8000dd5c0:  2a1f03e1    mov w1, wzr
  0x8000dd5c4:  f9400108    ldr x8, [x8]
  0x8000dd5c8:  aa1503e3    mov x3, x21
  0x8000dd5cc:  aa1f03e4    mov x4, xzr
  0x8000dd5d0:  d63f0100    blr x8
  0x8000dd5d4:  17ffff9c    b #-400
  0x8000dd5d8:  b94013e8    ldr w8, [sp, #16]
  0x8000dd5dc:  aa1703e0    mov x0, x23
  0x8000dd5e0:  52800021    mov w1, #1
  0x8000dd5e4:  aa1503e3    mov x3, x21
  0x8000dd5e8:  aa1f03e4    mov x4, xzr
  0x8000dd5ec:  13001d02    sxtb w2, w8
  0x8000dd5f0:  f001c3e8    adrp x8, #59240448
  0x8000dd5f4:  f9417908    ldr x8, [x8, #752]
  0x8000dd5f8:  f9400108    ldr x8, [x8]
  0x8000dd5fc:  d63f0100    blr x8
  0x8000dd600:  17ffff94    b #-432
  0x8000dd604:  b9402be8    ldr w8, [sp, #40]
  0x8000dd608:  aa1703e0    mov x0, x23
  0x8000dd60c:  52800041    mov w1, #2
  0x8000dd610:  aa1503e3    mov x3, x21
  0x8000dd614:  aa1f03e4    mov x4, xzr
  0x8000dd618:  13001d02    sxtb w2, w8
  0x8000dd61c:  f001c3e8    adrp x8, #59240448
  0x8000dd620:  f9417908    ldr x8, [x8, #752]
  0x8000dd624:  f9400108    ldr x8, [x8]
  0x8000dd628:  d63f0100    blr x8
  0x8000dd62c:  17ffff8c    b #-464
  0x8000dd630:  d280006d    mov x13, #3
  0x8000dd634:  f2c0002d    movk x13, #1, lsl #32
  0x8000dd638:  f800852d    str x13, [x9], #8
  0x8000dd63c:  17fffdec    b #-2128
  0x8000dd640:  f9401be8    ldr x8, [sp, #48]
  0x8000dd644:  9001c409    adrp x9, #59244544
  0x8000dd648:  13105f43    sbfx w3, w26, #16, #8
  0x8000dd64c:  f9400108    ldr x8, [x8]
  0x8000dd650:  f9402908    ldr x8, [x8, #80]
  0x8000dd654:  f9478d29    ldr x9, [x9, #3864]
  0x8000dd658:  eb09011f    cmp x8, x9
  0x8000dd65c:  54001ce0    b.eq #924
  0x8000dd660:  f9401be0    ldr x0, [sp, #48]
  0x8000dd664:  aa1703e1    mov x1, x23
  0x8000dd668:  52800042    mov w2, #2
  0x8000dd66c:  aa1503e4    mov x4, x21
  0x8000dd670:  aa1603e5    mov x5, x22
  0x8000dd674:  d63f0100    blr x8
  0x8000dd678:  17fffe7d    b #-1548
  0x8000dd67c:  f001c3e8    adrp x8, #59240448
  0x8000dd680:  aa1703e0    mov x0, x23
  0x8000dd684:  f9417908    ldr x8, [x8, #752]
  0x8000dd688:  52800021    mov w1, #1
  0x8000dd68c:  2a0303e2    mov w2, w3
  0x8000dd690:  f9400108    ldr x8, [x8]
  0x8000dd694:  aa1503e3    mov x3, x21
  0x8000dd698:  aa1603e4    mov x4, x22
  0x8000dd69c:  d63f0100    blr x8
  0x8000dd6a0:  17fffe70    b #-1600
  0x8000dd6a4:  f001c3e8    adrp x8, #59240448
  0x8000dd6a8:  aa1503e0    mov x0, x21
  0x8000dd6ac:  f9417908    ldr x8, [x8, #752]
  0x8000dd6b0:  52800041    mov w1, #2
  0x8000dd6b4:  2a0303e2    mov w2, w3
  0x8000dd6b8:  f9400108    ldr x8, [x8]
  0x8000dd6bc:  aa1603e3    mov x3, x22
  0x8000dd6c0:  aa1803e4    mov x4, x24
  0x8000dd6c4:  d63f0100    blr x8
  0x8000dd6c8:  17fffece    b #-1224
  0x8000dd6cc:  f001c3e8    adrp x8, #59240448
  0x8000dd6d0:  aa1703e0    mov x0, x23
  0x8000dd6d4:  f9417908    ldr x8, [x8, #752]
  0x8000dd6d8:  2a1f03e1    mov w1, wzr
  0x8000dd6dc:  2a0303e2    mov w2, w3
  0x8000dd6e0:  f9400108    ldr x8, [x8]
  0x8000dd6e4:  aa1503e3    mov x3, x21
  0x8000dd6e8:  aa1603e4    mov x4, x22
  0x8000dd6ec:  d63f0100    blr x8
  0x8000dd6f0:  17fffe36    b #-1832
  0x8000dd6f4:  f001c3e8    adrp x8, #59240448
  0x8000dd6f8:  aa1503e0    mov x0, x21
  0x8000dd6fc:  f9417908    ldr x8, [x8, #752]
  0x8000dd700:  2a1f03e1    mov w1, wzr
  0x8000dd704:  2a0303e2    mov w2, w3
  0x8000dd708:  f9400108    ldr x8, [x8]
  0x8000dd70c:  aa1603e3    mov x3, x22
  0x8000dd710:  aa1803e4    mov x4, x24
  0x8000dd714:  d63f0100    blr x8
  0x8000dd718:  17fffe95    b #-1452
  0x8000dd71c:  54ffb320    b.eq #-2460
  0x8000dd720:  f9400e68    ldr x8, [x19, #24]
  0x8000dd724:  f87b7915    ldr x21, [x8, x27, lsl #3]
  0x8000dd728:  f9401268    ldr x8, [x19, #32]
  0x8000dd72c:  f90017e8    str x8, [sp, #40]
  0x8000dd730:  9103f2b6    add x22, x21, #252
  0x8000dd734:  88dffec8    ldar w8, [x22]
  0x8000dd738:  34001b28    cbz w8, #868
  0x8000dd73c:  885ffec1    ldaxr w1, [x22]
  0x8000dd740:  32010028    orr w8, w1, #0x80000000
  0x8000dd744:  88097ec8    stxr w9, w8, [x22]
  0x8000dd748:  35ffffa9    cbnz w9, #-12
  0x8000dd74c:  7200783f    tst w1, #0x7fffffff
  0x8000dd750:  54001820    b.eq #772
  0x8000dd754:  37f819a1    tbnz w1, #31, #820
  0x8000dd758:  aa1503e0    mov x0, x21
  0x8000dd75c:  940439a8    bl #1107616
  0x8000dd760:  885f7edf    ldxr wzr, [x22]
  0x8000dd764:  8808fedf    stlxr w8, wzr, [x22]
  0x8000dd768:  35ffffc8    cbnz w8, #-8
  0x8000dd76c:  140000cc    b #816
  0x8000dd770:  9001c388    adrp x8, #59179008
  0x8000dd774:  13001f82    sxtb w2, w28
  0x8000dd778:  f945bd08    ldr x8, [x8, #2936]
  0x8000dd77c:  aa1503e0    mov x0, x21
  0x8000dd780:  2a1f03e1    mov w1, wzr
  0x8000dd784:  f9400108    ldr x8, [x8]
  0x8000dd788:  52800023    mov w3, #1
  0x8000dd78c:  aa1603e4    mov x4, x22
  0x8000dd790:  d63f0100    blr x8
  0x8000dd794:  17fffd4c    b #-2768
  0x8000dd798:  d280006c    mov x12, #3
  0x8000dd79c:  f2c0002c    movk x12, #1, lsl #32
  0x8000dd7a0:  f800850c    str x12, [x8], #8
  0x8000dd7a4:  17fffd36    b #-2856
  0x8000dd7a8:  9001c388    adrp x8, #59179008
  0x8000dd7ac:  13187f82    asr w2, w28, #24
  0x8000dd7b0:  f945bd08    ldr x8, [x8, #2936]
  0x8000dd7b4:  528000a1    mov w1, #5
  0x8000dd7b8:  aa1503e0    mov x0, x21
  0x8000dd7bc:  f9400108    ldr x8, [x8]
  0x8000dd7c0:  52800023    mov w3, #1
  0x8000dd7c4:  aa1603e4    mov x4, x22
  0x8000dd7c8:  d63f0100    blr x8
  0x8000dd7cc:  17fffd6d    b #-2636
  0x8000dd7d0:  d280006c    mov x12, #3
  0x8000dd7d4:  f2c0002c    movk x12, #1, lsl #32
  0x8000dd7d8:  f800850c    str x12, [x8], #8
  0x8000dd7dc:  17fffd56    b #-2728
  0x8000dd7e0:  13001d02    sxtb w2, w8
  0x8000dd7e4:  9001c388    adrp x8, #59179008
  0x8000dd7e8:  f945bd08    ldr x8, [x8, #2936]
  0x8000dd7ec:  aa1503e0    mov x0, x21
  0x8000dd7f0:  52800041    mov w1, #2
  0x8000dd7f4:  f9400108    ldr x8, [x8]
  0x8000dd7f8:  52800023    mov w3, #1
  0x8000dd7fc:  aa1603e4    mov x4, x22
  0x8000dd800:  d63f0100    blr x8
  0x8000dd804:  17fffd36    b #-2856
  0x8000dd808:  13001d02    sxtb w2, w8
  0x8000dd80c:  9001c388    adrp x8, #59179008
  0x8000dd810:  f945bd08    ldr x8, [x8, #2936]
  0x8000dd814:  aa1503e0    mov x0, x21
  0x8000dd818:  52800021    mov w1, #1
  0x8000dd81c:  f9400108    ldr x8, [x8]
  0x8000dd820:  52800023    mov w3, #1
  0x8000dd824:  aa1603e4    mov x4, x22
  0x8000dd828:  d63f0100    blr x8
  0x8000dd82c:  17fffd29    b #-2908
  0x8000dd830:  d280006d    mov x13, #3
  0x8000dd834:  f2c0002d    movk x13, #1, lsl #32
  0x8000dd838:  f800852d    str x13, [x9], #8
  0x8000dd83c:  17fffd96    b #-2472
  0x8000dd840:  aa1403e0    mov x0, x20
  0x8000dd844:  f9001bf4    str x20, [sp, #48]
  0x8000dd848:  d63f0120    blr x9
  0x8000dd84c:  f9401be8    ldr x8, [sp, #48]
  0x8000dd850:  0b000309    add w9, w24, w0
  0x8000dd854:  51000538    sub w24, w9, #1
  0x8000dd858:  f9400108    ldr x8, [x8]
  0x8000dd85c:  f9401508    ldr x8, [x8, #40]
  0x8000dd860:  eb19011f    cmp x8, x25
  0x8000dd864:  540000e0    b.eq #28
  0x8000dd868:  eb15011f    cmp x8, x21
  0x8000dd86c:  54ffb860    b.eq #-2292
  0x8000dd870:  aa1403e0    mov x0, x20
  0x8000dd874:  aa1403f5    mov x21, x20
  0x8000dd878:  d63f0100    blr x8
  0x8000dd87c:  17fffdc0    b #-2304
  0x8000dd880:  52802000    mov w0, #256
  0x8000dd884:  17fffdbe    b #-2312
  0x8000dd888:  114c0129    add w9, w9, #768, lsl #12
  0x8000dd88c:  5281208a    mov w10, #2308
  0x8000dd890:  72b0000a    movk w10, #32768, lsl #16
  0x8000dd894:  120c1129    and w9, w9, #0x1f00000
  0x8000dd898:  2a0a0129    orr w9, w9, w10
  0x8000dd89c:  321b012a    orr w10, w9, #0x20
  0x8000dd8a0:  52800029    mov w9, #1
  0x8000dd8a4:  17fffdec    b #-2128
  0x8000dd8a8:  f9401be0    ldr x0, [sp, #48]
  0x8000dd8ac:  528000a2    mov w2, #5
  0x8000dd8b0:  aa1703e1    mov x1, x23
  0x8000dd8b4:  aa1503e4    mov x4, x21
  0x8000dd8b8:  aa1603e5    mov x5, x22
  0x8000dd8bc:  d63f0100    blr x8
  0x8000dd8c0:  17fffe03    b #-2036
  0x8000dd8c4:  f85d83a8    ldur x8, [x29, #-40]
  0x8000dd8c8:  13083ee3    sbfx w3, w23, #8, #8
  0x8000dd8cc:  f9400108    ldr x8, [x8]
  0x8000dd8d0:  f9402908    ldr x8, [x8, #80]
  0x8000dd8d4:  eb1b011f    cmp x8, x27
  0x8000dd8d8:  540015c1    b.ne #696
  0x8000dd8dc:  52800028    mov w8, #1
  0x8000dd8e0:  390042a8    strb w8, [x21, #16]
  0x8000dd8e4:  f001c368    adrp x8, #59174912
  0x8000dd8e8:  f9479508    ldr x8, [x8, #3880]
  0x8000dd8ec:  b9400108    ldr w8, [x8]
  0x8000dd8f0:  340015e8    cbz w8, #700
  0x8000dd8f4:  a94026a8    ldp x8, x9, [x21]
  0x8000dd8f8:  9100610a    add x10, x8, #24
  0x8000dd8fc:  eb09015f    cmp x10, x9
  0x8000dd900:  54001568    b.hi #684
  0x8000dd904:  530c2c69    lsl w9, w3, #20
  0x8000dd908:  34001678    cbz w24, #716
  0x8000dd90c:  1103ff0a    add w10, w24, #255
  0x8000dd910:  114c0129    add w9, w9, #768, lsl #12
  0x8000dd914:  12185d4a    and w10, w10, #0xffffff00
  0x8000dd918:  120c1129    and w9, w9, #0x1f00000
  0x8000dd91c:  2900f10a    stp w10, w28, [x8, #4]
  0x8000dd920:  5281238a    mov w10, #2332
  0x8000dd924:  72b0002a    movk w10, #32769, lsl #16
  0x8000dd928:  2a0a0129    orr w9, w9, w10
  0x8000dd92c:  2a1a03ea    mov w10, w26
  0x8000dd930:  11002129    add w9, w9, #8
  0x8000dd934:  2901a516    stp w22, w9, [x8, #12]
  0x8000dd938:  528000a9    mov w9, #5
  0x8000dd93c:  140000ad    b #692
  0x8000dd940:  f85d83a0    ldur x0, [x29, #-40]
  0x8000dd944:  aa1503e1    mov x1, x21
  0x8000dd948:  52800042    mov w2, #2
  0x8000dd94c:  aa1603e4    mov x4, x22
  0x8000dd950:  aa1803e5    mov x5, x24
  0x8000dd954:  d63f0100    blr x8
  0x8000dd958:  17fffe2a    b #-1880
  0x8000dd95c:  114c0129    add w9, w9, #768, lsl #12
  0x8000dd960:  5281208a    mov w10, #2308
  0x8000dd964:  72b0000a    movk w10, #32768, lsl #16
  0x8000dd968:  120c1129    and w9, w9, #0x1f00000
  0x8000dd96c:  2a0a0129    orr w9, w9, w10
  0x8000dd970:  321d053a    orr w26, w9, #0x18
  0x8000dd974:  52800029    mov w9, #1
  0x8000dd978:  17fffe1f    b #-1924
  0x8000dd97c:  f85d83a0    ldur x0, [x29, #-40]
  0x8000dd980:  528000a2    mov w2, #5
  0x8000dd984:  aa1503e1    mov x1, x21
  0x8000dd988:  aa1603e4    mov x4, x22
  0x8000dd98c:  aa1803e5    mov x5, x24
  0x8000dd990:  d63f0100    blr x8
  0x8000dd994:  17fffe34    b #-1840
  0x8000dd998:  f9401be0    ldr x0, [sp, #48]
  0x8000dd99c:  aa1703e1    mov x1, x23
  0x8000dd9a0:  2a1f03e2    mov w2, wzr
  0x8000dd9a4:  aa1503e4    mov x4, x21
  0x8000dd9a8:  aa1603e5    mov x5, x22
  0x8000dd9ac:  d63f0100    blr x8
  0x8000dd9b0:  17fffd86    b #-2536
  0x8000dd9b4:  114c014a    add w10, w10, #768, lsl #12
  0x8000dd9b8:  120c114a    and w10, w10, #0x1f00000
  0x8000dd9bc:  2a09014a    orr w10, w10, w9
  0x8000dd9c0:  52800029    mov w9, #1
  0x8000dd9c4:  17fffe6e    b #-1608
  0x8000dd9c8:  f85d83a0    ldur x0, [x29, #-40]
  0x8000dd9cc:  aa1503e1    mov x1, x21
  0x8000dd9d0:  2a1f03e2    mov w2, wzr
  0x8000dd9d4:  aa1603e4    mov x4, x22
  0x8000dd9d8:  aa1803e5    mov x5, x24
  0x8000dd9dc:  d63f0100    blr x8
  0x8000dd9e0:  17fffde3    b #-2164
  0x8000dd9e4:  114c014a    add w10, w10, #768, lsl #12
  0x8000dd9e8:  120c114a    and w10, w10, #0x1f00000
  0x8000dd9ec:  2a09014a    orr w10, w10, w9
  0x8000dd9f0:  52800029    mov w9, #1
  0x8000dd9f4:  17fffe85    b #-1516
  0x8000dd9f8:  52800028    mov w8, #1
  0x8000dd9fc:  390042e8    strb w8, [x23, #16]
  0x8000dda00:  f001c368    adrp x8, #59174912
  0x8000dda04:  f9479508    ldr x8, [x8, #3880]
  0x8000dda08:  b9400108    ldr w8, [x8]
  0x8000dda0c:  34000fa8    cbz w8, #500
  0x8000dda10:  a94026e8    ldp x8, x9, [x23]
  0x8000dda14:  9100610a    add x10, x8, #24
  0x8000dda18:  eb09015f    cmp x10, x9
  0x8000dda1c:  54000f28    b.hi #484
  0x8000dda20:  530c2c69    lsl w9, w3, #20
  0x8000dda24:  34001036    cbz w22, #516
  0x8000dda28:  1103feca    add w10, w22, #255
  0x8000dda2c:  114c0129    add w9, w9, #768, lsl #12
  0x8000dda30:  12185d4a    and w10, w10, #0xffffff00
  0x8000dda34:  120c1129    and w9, w9, #0x1f00000
  0x8000dda38:  2900f10a    stp w10, w28, [x8, #4]
  0x8000dda3c:  5281238a    mov w10, #2332
  0x8000dda40:  72b0002a    movk w10, #32769, lsl #16
  0x8000dda44:  2a0a0129    orr w9, w9, w10
  0x8000dda48:  2901a515    stp w21, w9, [x8, #12]
  0x8000dda4c:  528000a9    mov w9, #5
  0x8000dda50:  1400007d    b #500
  0x8000dda54:  885f7edf    ldxr wzr, [x22]
  0x8000dda58:  88087edf    stxr w8, wzr, [x22]
  0x8000dda5c:  35ffffc8    cbnz w8, #-8
  0x8000dda60:  1400000f    b #60
  0x8000dda64:  f9401be9    ldr x9, [sp, #48]
  0x8000dda68:  d2869b68    mov x8, #13531
  0x8000dda6c:  f2baf6c8    movk x8, #55222, lsl #16
  0x8000dda70:  f2dbd048    movk x8, #56962, lsl #32
  0x8000dda74:  f2e86368    movk x8, #17179, lsl #48
  0x8000dda78:  9b487d28    smulh x8, x9, x8
  0x8000dda7c:  9352fd09    asr x9, x8, #18
  0x8000dda80:  8b48fd20    add x0, x9, x8, lsr #63
  0x8000dda84:  9404f68a    bl #1301032
  0x8000dda88:  b94002c8    ldr w8, [x22]
  0x8000dda8c:  37fffec8    tbnz w8, #31, #-40
  0x8000dda90:  885ffedf    ldaxr wzr, [x22]
  0x8000dda94:  88087edf    stxr w8, wzr, [x22]
  0x8000dda98:  35ffffc8    cbnz w8, #-8
  0x8000dda9c:  b9406aa1    ldr w1, [x21, #104]
  0x8000ddaa0:  3100043f    cmn w1, #1
  0x8000ddaa4:  54ff96e0    b.eq #-3364
  0x8000ddaa8:  79c206a2    ldrsh w2, [x21, #258]
  0x8000ddaac:  3100045f    cmn w2, #1
  0x8000ddab0:  54ff9680    b.eq #-3376
  0x8000ddab4:  f001c368    adrp x8, #59174912
  0x8000ddab8:  f9461d08    ldr x8, [x8, #3128]
  0x8000ddabc:  f9400108    ldr x8, [x8]
  0x8000ddac0:  f940b500    ldr x0, [x8, #360]
  0x8000ddac4:  f001c368    adrp x8, #59174912
  0x8000ddac8:  f947bd08    ldr x8, [x8, #3960]
  0x8000ddacc:  f9400108    ldr x8, [x8]
  0x8000ddad0:  d63f0100    blr x8
  0x8000ddad4:  f94017e8    ldr x8, [sp, #40]
  0x8000ddad8:  aa0003f5    mov x21, x0
  0x8000ddadc:  f9405d16    ldr x22, [x8, #184]
  0x8000ddae0:  52801fe8    mov w8, #255
  0x8000ddae4:  6a3c011f    bics wzr, w8, w28
  0x8000ddae8:  54000120    b.eq #36
  0x8000ddaec:  f001c3e8    adrp x8, #59240448
  0x8000ddaf0:  13001f82    sxtb w2, w28
  0x8000ddaf4:  f9418108    ldr x8, [x8, #768]
  0x8000ddaf8:  aa1603e0    mov x0, x22
  0x8000ddafc:  2a1f03e1    mov w1, wzr
  0x8000ddb00:  f9400108    ldr x8, [x8]
  0x8000ddb04:  aa1503e3    mov x3, x21
  0x8000ddb08:  d63f0100    blr x8
  0x8000ddb0c:  529fe008    mov w8, #65280
  0x8000ddb10:  6a3c011f    bics wzr, w8, w28
  0x8000ddb14:  54000120    b.eq #36
  0x8000ddb18:  f001c3e8    adrp x8, #59240448
  0x8000ddb1c:  13083f82    sbfx w2, w28, #8, #8
  0x8000ddb20:  f9418108    ldr x8, [x8, #768]
  0x8000ddb24:  aa1603e0    mov x0, x22
  0x8000ddb28:  52800021    mov w1, #1
  0x8000ddb2c:  f9400108    ldr x8, [x8]
  0x8000ddb30:  aa1503e3    mov x3, x21
  0x8000ddb34:  d63f0100    blr x8
  0x8000ddb38:  52a01fe8    mov w8, #16711680
  0x8000ddb3c:  6a3c011f    bics wzr, w8, w28
  0x8000ddb40:  54000120    b.eq #36
  0x8000ddb44:  f001c3e8    adrp x8, #59240448
  0x8000ddb48:  13105f82    sbfx w2, w28, #16, #8
  0x8000ddb4c:  f9418108    ldr x8, [x8, #768]
  0x8000ddb50:  aa1603e0    mov x0, x22
  0x8000ddb54:  52800041    mov w1, #2
  0x8000ddb58:  f9400108    ldr x8, [x8]
  0x8000ddb5c:  aa1503e3    mov x3, x21
  0x8000ddb60:  d63f0100    blr x8
  0x8000ddb64:  7103faff    cmp w23, #254
  0x8000ddb68:  54ff90c8    b.hi #-3560
  0x8000ddb6c:  f001c3e8    adrp x8, #59240448
  0x8000ddb70:  13187f82    asr w2, w28, #24
  0x8000ddb74:  f9418108    ldr x8, [x8, #768]
  0x8000ddb78:  528000a1    mov w1, #5
  0x8000ddb7c:  aa1603e0    mov x0, x22
  0x8000ddb80:  f9400108    ldr x8, [x8]
  0x8000ddb84:  aa1503e3    mov x3, x21
  0x8000ddb88:  d63f0100    blr x8
  0x8000ddb8c:  17fffc7d    b #-3596
  0x8000ddb90:  f85d83a0    ldur x0, [x29, #-40]
  0x8000ddb94:  aa1503e1    mov x1, x21
  0x8000ddb98:  52800022    mov w2, #1
  0x8000ddb9c:  aa1603e4    mov x4, x22
  0x8000ddba0:  aa1803e5    mov x5, x24
  0x8000ddba4:  d63f0100    blr x8
  0x8000ddba8:  17fffd74    b #-2608
  0x8000ddbac:  f001c3e8    adrp x8, #59240448
  0x8000ddbb0:  aa1503e0    mov x0, x21
  0x8000ddbb4:  f9417908    ldr x8, [x8, #752]
  0x8000ddbb8:  52800021    mov w1, #1
  0x8000ddbbc:  2a0303e2    mov w2, w3
  0x8000ddbc0:  f9400108    ldr x8, [x8]
  0x8000ddbc4:  aa1603e3    mov x3, x22
  0x8000ddbc8:  aa1803e4    mov x4, x24
  0x8000ddbcc:  d63f0100    blr x8
  0x8000ddbd0:  17fffd6a    b #-2648
  0x8000ddbd4:  114c0129    add w9, w9, #768, lsl #12
  0x8000ddbd8:  5281208a    mov w10, #2308
  0x8000ddbdc:  72b0000a    movk w10, #32768, lsl #16
  0x8000ddbe0:  120c1129    and w9, w9, #0x1f00000
  0x8000ddbe4:  2a0a0129    orr w9, w9, w10
  0x8000ddbe8:  321b012a    orr w10, w9, #0x20
  0x8000ddbec:  52800029    mov w9, #1
  0x8000ddbf0:  b900010a    str w10, [x8]
  0x8000ddbf4:  8b090908    add x8, x8, x9, lsl #2
  0x8000ddbf8:  f90002a8    str x8, [x21]
  0x8000ddbfc:  17fffd5f    b #-2692
  0x8000ddc00:  f001c3e8    adrp x8, #59240448
  0x8000ddc04:  aa1703e0    mov x0, x23
  0x8000ddc08:  f9417908    ldr x8, [x8, #752]
  0x8000ddc0c:  52800041    mov w1, #2
  0x8000ddc10:  2a0303e2    mov w2, w3
  0x8000ddc14:  f9400108    ldr x8, [x8]
  0x8000ddc18:  aa1503e3    mov x3, x21
  0x8000ddc1c:  aa1603e4    mov x4, x22
  0x8000ddc20:  d63f0100    blr x8
  0x8000ddc24:  17fffd12    b #-3000
  0x8000ddc28:  114c0129    add w9, w9, #768, lsl #12
  0x8000ddc2c:  5281208a    mov w10, #2308
  0x8000ddc30:  72b0000a    movk w10, #32768, lsl #16
  0x8000ddc34:  120c1129    and w9, w9, #0x1f00000
  0x8000ddc38:  2a0a0129    orr w9, w9, w10
  0x8000ddc3c:  321d053b    orr w27, w9, #0x18
  0x8000ddc40:  52800029    mov w9, #1
  0x8000ddc44:  b900011b    str w27, [x8]
  0x8000ddc48:  8b090908    add x8, x8, x9, lsl #2
  0x8000ddc4c:  f90002e8    str x8, [x23]
  0x8000ddc50:  17fffd07    b #-3044
  0x8000ddc54:  00000000    udf #0
  0x8000ddc58:  00000000    udf #0
  0x8000ddc5c:  00000000    udf #0

