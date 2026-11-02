; UltraTears chunk main_068_ecs: 1 functions [0x800129820..0x80012c0e0)

; Function f_800129820 [0x800129820..0x80012c0e0)
f_800129820:
  0x800129820:  d10503ff    sub sp, sp, #320
  0x800129824:  fd006be8    str d8, [sp, #208]
  0x800129828:  a90e7bfd    stp x29, x30, [sp, #224]
  0x80012982c:  a90f6ffc    stp x28, x27, [sp, #240]
  0x800129830:  a91067fa    stp x26, x25, [sp, #256]
  0x800129834:  a9115ff8    stp x24, x23, [sp, #272]
  0x800129838:  a91257f6    stp x22, x21, [sp, #288]
  0x80012983c:  a9134ff4    stp x20, x19, [sp, #304]
  0x800129840:  910383fd    add x29, sp, #224
  0x800129844:  aa0003eb    mov x11, x0
  0x800129848:  2a0403fc    mov w28, w4
  0x80012984c:  aa0003f6    mov x22, x0
  0x800129850:  f8420d69    ldr x9, [x11, #32]!
  0x800129854:  aa0103f5    mov x21, x1
  0x800129858:  a90217e2    stp x2, x5, [sp, #32]
  0x80012985c:  f100013f    cmp x9, #0
  0x800129860:  1a9f07e8    cset w8, ne
  0x800129864:  b4004289    cbz x9, #2128
  0x800129868:  f9406533    ldr x19, [x9, #200]
  0x80012986c:  f94016c9    ldr x9, [x22, #40]
  0x800129870:  b50042e9    cbnz x9, #2140
  0x800129874:  f9401ac9    ldr x9, [x22, #48]
  0x800129878:  b5007de9    cbnz x9, #4028
  0x80012987c:  f9401ec9    ldr x9, [x22, #56]
  0x800129880:  b5008e69    cbnz x9, #4556
  0x800129884:  f94022c9    ldr x9, [x22, #64]
  0x800129888:  b50072c9    cbnz x9, #3672
  0x80012988c:  f94026c9    ldr x9, [x22, #72]
  0x800129890:  b5005609    cbnz x9, #2752
  0x800129894:  f9402ac9    ldr x9, [x22, #80]
  0x800129898:  b500b8e9    cbnz x9, #5916
  0x80012989c:  f9402ec9    ldr x9, [x22, #88]
  0x8001298a0:  b5004109    cbnz x9, #2080
  0x8001298a4:  f94032c9    ldr x9, [x22, #96]
  0x8001298a8:  f100013f    cmp x9, #0
  0x8001298ac:  1a9f1508    csinc w8, w8, wzr, ne
  0x8001298b0:  36004088    tbz w8, #0, #2064
  0x8001298b4:  f94076b8    ldr x24, [x21, #232]
  0x8001298b8:  b90037fc    str w28, [sp, #52]
  0x8001298bc:  f81f83ab    stur x11, [x29, #-8]
  0x8001298c0:  b4000078    cbz x24, #12
  0x8001298c4:  394502a8    ldrb w8, [x21, #320]
  0x8001298c8:  3700c328    tbnz w8, #0, #6244
  0x8001298cc:  b940f2a8    ldr w8, [x21, #240]
  0x8001298d0:  8b28cea8    add x8, x21, w8, sxtw #3
  0x8001298d4:  f9009113    str x19, [x8, #288]
  0x8001298d8:  f90076b6    str x22, [x21, #232]
  0x8001298dc:  394502a8    ldrb w8, [x21, #320]
  0x8001298e0:  32000108    orr w8, w8, #0x1
  0x8001298e4:  390502a8    strb w8, [x21, #320]
  0x8001298e8:  295e26a8    ldp w8, w9, [x21, #240]
  0x8001298ec:  93407d08    sxtw x8, w8
  0x8001298f0:  6b09011f    cmp w8, w9
  0x8001298f4:  540000ca    b.ge #24
  0x8001298f8:  f9407ea9    ldr x9, [x21, #248]
  0x8001298fc:  f8287936    str x22, [x9, x8, lsl #3]
  0x800129900:  b940f2a8    ldr w8, [x21, #240]
  0x800129904:  11000508    add w8, w8, #1
  0x800129908:  b900f2a8    str w8, [x21, #240]
  0x80012990c:  f81e03bf    stur xzr, [x29, #-32]
  0x800129910:  f001c108    adrp x8, #58863616
  0x800129914:  d2869b69    mov x9, #13531
  0x800129918:  f2baf6c9    movk x9, #55222, lsl #16
  0x80012991c:  f9478508    ldr x8, [x8, #3848]
  0x800129920:  f2dbd049    movk x9, #56962, lsl #32
  0x800129924:  f2e86369    movk x9, #17179, lsl #48
  0x800129928:  a93d7fbf    stp xzr, xzr, [x29, #-48]
  0x80012992c:  a93c7fbf    stp xzr, xzr, [x29, #-64]
  0x800129930:  f001c114    adrp x20, #58863616
  0x800129934:  aa1f03f7    mov x23, xzr
  0x800129938:  2a1f03f9    mov w25, wzr
  0x80012993c:  52800513    mov w19, #40
  0x800129940:  f9400108    ldr x8, [x8]
  0x800129944:  a93b7fbf    stp xzr, xzr, [x29, #-80]
  0x800129948:  d10183b8    sub x24, x29, #96
  0x80012994c:  9100e3fb    add x27, sp, #56
  0x800129950:  9b497d08    smulh x8, x8, x9
  0x800129954:  a93a7fbf    stp xzr, xzr, [x29, #-96]
  0x800129958:  f90037ff    str xzr, [sp, #104]
  0x80012995c:  9352fd09    asr x9, x8, #18
  0x800129960:  a9077fff    stp xzr, xzr, [sp, #112]
  0x800129964:  f947ba94    ldr x20, [x20, #3952]
  0x800129968:  a905ffff    stp xzr, xzr, [sp, #88]
  0x80012996c:  a904ffff    stp xzr, xzr, [sp, #72]
  0x800129970:  8b48fd28    add x8, x9, x8, lsr #63
  0x800129974:  a903ffff    stp xzr, xzr, [sp, #56]
  0x800129978:  f9000be8    str x8, [sp, #16]
  0x80012997c:  d503201f    nop
  0x800129980:  f877797a    ldr x26, [x11, x23, lsl #3]
  0x800129984:  b50000ba    cbnz x26, #20
  0x800129988:  910006f7    add x23, x23, #1
  0x80012998c:  f10022ff    cmp x23, #8
  0x800129990:  54ffff81    b.ne #-16
  0x800129994:  1400003f    b #252
  0x800129998:  b9407348    ldr w8, [x26, #112]
  0x80012999c:  3100051f    cmn w8, #1
  0x8001299a0:  54ffff40    b.eq #-24
  0x8001299a4:  f9400289    ldr x9, [x20]
  0x8001299a8:  9103835c    add x28, x26, #224
  0x8001299ac:  7955552a    ldrh w10, [x9, #2730]
  0x8001299b0:  4b0a0108    sub w8, w8, w10
  0x8001299b4:  b94a392a    ldr w10, [x9, #2616]
  0x8001299b8:  f9452129    ldr x9, [x9, #2624]
  0x8001299bc:  6b08015f    cmp w10, w8
  0x8001299c0:  1a9f8108    csel w8, w8, wzr, hi
  0x8001299c4:  9b332508    smaddl x8, w8, w19, x9
  0x8001299c8:  f9401108    ldr x8, [x8, #32]
  0x8001299cc:  f8377b08    str x8, [x24, x23, lsl #3]
  0x8001299d0:  88dfff88    ldar w8, [x28]
  0x8001299d4:  34000548    cbz w8, #168
  0x8001299d8:  d503201f    nop
  0x8001299dc:  d503201f    nop
  0x8001299e0:  885fff81    ldaxr w1, [x28]
  0x8001299e4:  32010028    orr w8, w1, #0x80000000
  0x8001299e8:  88097f88    stxr w9, w8, [x28]
  0x8001299ec:  35ffffa9    cbnz w9, #-12
  0x8001299f0:  7200783f    tst w1, #0x7fffffff
  0x8001299f4:  5400a340    b.eq #5224
  0x8001299f8:  37f8a461    tbnz w1, #31, #5260
  0x8001299fc:  f9400348    ldr x8, [x26]
  0x800129a00:  9001c1a9    adrp x9, #58933248
  0x800129a04:  f9400d08    ldr x8, [x8, #24]
  0x800129a08:  f9477129    ldr x9, [x9, #3808]
  0x800129a0c:  eb09011f    cmp x8, x9
  0x800129a10:  5400afc1    b.ne #5624
  0x800129a14:  d001c168    adrp x8, #58908672
  0x800129a18:  91034359    add x25, x26, #208
  0x800129a1c:  f9418d08    ldr x8, [x8, #792]
  0x800129a20:  aa1903e0    mov x0, x25
  0x800129a24:  f9400108    ldr x8, [x8]
  0x800129a28:  d63f0100    blr x8
  0x800129a2c:  d001c168    adrp x8, #58908672
  0x800129a30:  39439b41    ldrb w1, [x26, #230]
  0x800129a34:  aa1903e0    mov x0, x25
  0x800129a38:  f9419508    ldr x8, [x8, #808]
  0x800129a3c:  52800022    mov w2, #1
  0x800129a40:  f9400108    ldr x8, [x8]
  0x800129a44:  d63f0100    blr x8
  0x800129a48:  d001c168    adrp x8, #58908672
  0x800129a4c:  7941cb41    ldrh w1, [x26, #228]
  0x800129a50:  aa1903e0    mov x0, x25
  0x800129a54:  f9419108    ldr x8, [x8, #800]
  0x800129a58:  52800022    mov w2, #1
  0x800129a5c:  f9400108    ldr x8, [x8]
  0x800129a60:  d63f0100    blr x8
  0x800129a64:  f85f83ab    ldur x11, [x29, #-8]
  0x800129a68:  d503201f    nop
  0x800129a6c:  d503201f    nop
  0x800129a70:  885f7f9f    ldxr wzr, [x28]
  0x800129a74:  8808ff9f    stlxr w8, wzr, [x28]
  0x800129a78:  35ffffc8    cbnz w8, #-8
  0x800129a7c:  b94037fc    ldr w28, [sp, #52]
  0x800129a80:  91034348    add x8, x26, #208
  0x800129a84:  110006f9    add w25, w23, #1
  0x800129a88:  f8377b68    str x8, [x27, x23, lsl #3]
  0x800129a8c:  17ffffbf    b #-260
  0x800129a90:  f94032da    ldr x26, [x22, #96]
  0x800129a94:  b400073a    cbz x26, #228
  0x800129a98:  b9407348    ldr w8, [x26, #112]
  0x800129a9c:  3100051f    cmn w8, #1
  0x800129aa0:  540006c0    b.eq #216
  0x800129aa4:  f9400289    ldr x9, [x20]
  0x800129aa8:  91038357    add x23, x26, #224
  0x800129aac:  7955552a    ldrh w10, [x9, #2730]
  0x800129ab0:  4b0a0108    sub w8, w8, w10
  0x800129ab4:  b94a392a    ldr w10, [x9, #2616]
  0x800129ab8:  f9452129    ldr x9, [x9, #2624]
  0x800129abc:  6b08015f    cmp w10, w8
  0x800129ac0:  1a9f8108    csel w8, w8, wzr, hi
  0x800129ac4:  9b332508    smaddl x8, w8, w19, x9
  0x800129ac8:  f9401108    ldr x8, [x8, #32]
  0x800129acc:  f81e03a8    stur x8, [x29, #-32]
  0x800129ad0:  88dffee8    ldar w8, [x23]
  0x800129ad4:  340004e8    cbz w8, #156
  0x800129ad8:  d503201f    nop
  0x800129adc:  d503201f    nop
  0x800129ae0:  885ffee1    ldaxr w1, [x23]
  0x800129ae4:  32010028    orr w8, w1, #0x80000000
  0x800129ae8:  88097ee8    stxr w9, w8, [x23]
  0x800129aec:  35ffffa9    cbnz w9, #-12
  0x800129af0:  7200783f    tst w1, #0x7fffffff
  0x800129af4:  54009bc0    b.eq #4984
  0x800129af8:  37f89d81    tbnz w1, #31, #5040
  0x800129afc:  f9400348    ldr x8, [x26]
  0x800129b00:  9001c1a9    adrp x9, #58933248
  0x800129b04:  f9400d08    ldr x8, [x8, #24]
  0x800129b08:  f9477929    ldr x9, [x9, #3824]
  0x800129b0c:  eb09011f    cmp x8, x9
  0x800129b10:  5400b341    b.ne #5736
  0x800129b14:  d001c168    adrp x8, #58908672
  0x800129b18:  9103435b    add x27, x26, #208
  0x800129b1c:  f9418d08    ldr x8, [x8, #792]
  0x800129b20:  aa1b03e0    mov x0, x27
  0x800129b24:  f9400108    ldr x8, [x8]
  0x800129b28:  d63f0100    blr x8
  0x800129b2c:  d001c168    adrp x8, #58908672
  0x800129b30:  39439b41    ldrb w1, [x26, #230]
  0x800129b34:  aa1b03e0    mov x0, x27
  0x800129b38:  f9419508    ldr x8, [x8, #808]
  0x800129b3c:  2a1f03e2    mov w2, wzr
  0x800129b40:  f9400108    ldr x8, [x8]
  0x800129b44:  d63f0100    blr x8
  0x800129b48:  d001c168    adrp x8, #58908672
  0x800129b4c:  7941cb41    ldrh w1, [x26, #228]
  0x800129b50:  aa1b03e0    mov x0, x27
  0x800129b54:  f9419108    ldr x8, [x8, #800]
  0x800129b58:  52800022    mov w2, #1
  0x800129b5c:  f9400108    ldr x8, [x8]
  0x800129b60:  d63f0100    blr x8
  0x800129b64:  885f7eff    ldxr wzr, [x23]
  0x800129b68:  8808feff    stlxr w8, wzr, [x23]
  0x800129b6c:  35ffffc8    cbnz w8, #-8
  0x800129b70:  91034348    add x8, x26, #208
  0x800129b74:  f9003fe8    str x8, [sp, #120]
  0x800129b78:  f001c188    adrp x8, #58929152
  0x800129b7c:  f9405ea0    ldr x0, [x21, #184]
  0x800129b80:  d10183a2    sub x2, x29, #96
  0x800129b84:  f85e03a4    ldur x4, [x29, #-32]
  0x800129b88:  9100e3e3    add x3, sp, #56
  0x800129b8c:  2a1903e1    mov w1, w25
  0x800129b90:  f9403fe5    ldr x5, [sp, #120]
  0x800129b94:  f940fd08    ldr x8, [x8, #504]
  0x800129b98:  f9400108    ldr x8, [x8]
  0x800129b9c:  d63f0100    blr x8
  0x800129ba0:  f85f83b0    ldur x16, [x29, #-8]
  0x800129ba4:  f9400299    ldr x25, [x20]
  0x800129ba8:  f940020c    ldr x12, [x16]
  0x800129bac:  b400020c    cbz x12, #64
  0x800129bb0:  3700205c    tbnz w28, #0, #1032
  0x800129bb4:  b94c8b2d    ldr w13, [x25, #3208]
  0x800129bb8:  363001ad    tbz w13, #6, #52
  0x800129bbc:  b9407188    ldr w8, [x12, #112]
  0x800129bc0:  79555729    ldrh w9, [x25, #2730]
  0x800129bc4:  4b09010a    sub w10, w8, w9
  0x800129bc8:  b94a3b29    ldr w9, [x25, #2616]
  0x800129bcc:  f9452328    ldr x8, [x25, #2624]
  0x800129bd0:  6b0a013f    cmp w9, w10
  0x800129bd4:  1a9f814e    csel w14, w10, wzr, hi
  0x800129bd8:  9b3321cb    smaddl x11, w14, w19, x8
  0x800129bdc:  b8404d6f    ldr w15, [x11, #4]!
  0x800129be0:  3600006f    tbz w15, #0, #12
  0x800129be4:  b940016f    ldr w15, [x11]
  0x800129be8:  36082d4f    tbz w15, #1, #1448
  0x800129bec:  2a1f03f8    mov w24, wzr
  0x800129bf0:  f94016cc    ldr x12, [x22, #40]
  0x800129bf4:  b500208c    cbnz x12, #1040
  0x800129bf8:  f9401acc    ldr x12, [x22, #48]
  0x800129bfc:  b500622c    cbnz x12, #3140
  0x800129c00:  f9401ecc    ldr x12, [x22, #56]
  0x800129c04:  b50072ac    cbnz x12, #3668
  0x800129c08:  f94022cc    ldr x12, [x22, #64]
  0x800129c0c:  b500570c    cbnz x12, #2784
  0x800129c10:  f94026cc    ldr x12, [x22, #72]
  0x800129c14:  b5003a4c    cbnz x12, #1864
  0x800129c18:  f9402acc    ldr x12, [x22, #80]
  0x800129c1c:  b5009d2c    cbnz x12, #5028
  0x800129c20:  f9402ecc    ldr x12, [x22, #88]
  0x800129c24:  b50049ac    cbnz x12, #2356
  0x800129c28:  f94032d4    ldr x20, [x22, #96]
  0x800129c2c:  b4000274    cbz x20, #76
  0x800129c30:  7218079f    tst w28, #0x300
  0x800129c34:  540020a0    b.eq #1044
  0x800129c38:  b9407288    ldr w8, [x20, #112]
  0x800129c3c:  79555729    ldrh w9, [x25, #2730]
  0x800129c40:  4b090108    sub w8, w8, w9
  0x800129c44:  b94a3b29    ldr w9, [x25, #2616]
  0x800129c48:  f945232a    ldr x10, [x25, #2624]
  0x800129c4c:  6b08013f    cmp w9, w8
  0x800129c50:  1a9f8108    csel w8, w8, wzr, hi
  0x800129c54:  9b332908    smaddl x8, w8, w19, x10
  0x800129c58:  b8404d09    ldr w9, [x8, #4]!
  0x800129c5c:  360000e9    tbz w9, #0, #28
  0x800129c60:  12800049    mov w9, #-3
  0x800129c64:  885f7d0a    ldxr w10, [x8]
  0x800129c68:  8a09014a    and x10, x10, x9
  0x800129c6c:  b27f014a    orr x10, x10, #0x2
  0x800129c70:  880b7d0a    stxr w11, w10, [x8]
  0x800129c74:  35ffff8b    cbnz w11, #-16
  0x800129c78:  35002078    cbnz w24, #1036
  0x800129c7c:  53077f88    lsr w8, w28, #7
  0x800129c80:  aa1f03f9    mov x25, xzr
  0x800129c84:  121f0508    and w8, w8, #0x6
  0x800129c88:  d503201f    nop
  0x800129c8c:  d503201f    nop
  0x800129c90:  f8797a0a    ldr x10, [x16, x25, lsl #3]
  0x800129c94:  1ad92789    lsr w9, w28, w25
  0x800129c98:  12000129    and w9, w9, #0x1
  0x800129c9c:  f100015f    cmp x10, #0
  0x800129ca0:  1a8903f7    csel w23, wzr, w9, eq
  0x800129ca4:  f94032c9    ldr x9, [x22, #96]
  0x800129ca8:  f100013f    cmp x9, #0
  0x800129cac:  1a8803f4    csel w20, wzr, w8, eq
  0x800129cb0:  2a170288    orr w8, w20, w23
  0x800129cb4:  350000c8    cbnz w8, #24
  0x800129cb8:  91000739    add x25, x25, #1
  0x800129cbc:  2a1f03e8    mov w8, wzr
  0x800129cc0:  f100233f    cmp x25, #8
  0x800129cc4:  54fffe61    b.ne #-52
  0x800129cc8:  140000b3    b #716
  0x800129ccc:  f94017e8    ldr x8, [sp, #40]
  0x800129cd0:  f94012db    ldr x27, [x22, #32]
  0x800129cd4:  bd408108    ldr s8, [x8, #128]
  0x800129cd8:  b9408508    ldr w8, [x8, #132]
  0x800129cdc:  b9000fe8    str w8, [sp, #12]
  0x800129ce0:  b400009b    cbz x27, #16
  0x800129ce4:  91038373    add x19, x27, #224
  0x800129ce8:  88dffe68    ldar w8, [x19]
  0x800129cec:  3500a4c8    cbnz w8, #5272
  0x800129cf0:  f94016db    ldr x27, [x22, #40]
  0x800129cf4:  b5000f5b    cbnz x27, #488
  0x800129cf8:  f9401adb    ldr x27, [x22, #48]
  0x800129cfc:  b5005c7b    cbnz x27, #2956
  0x800129d00:  f9401edb    ldr x27, [x22, #56]
  0x800129d04:  b5002cbb    cbnz x27, #1428
  0x800129d08:  f94022db    ldr x27, [x22, #64]
  0x800129d0c:  b5003cbb    cbnz x27, #1940
  0x800129d10:  f94026db    ldr x27, [x22, #72]
  0x800129d14:  b5001e3b    cbnz x27, #964
  0x800129d18:  f9402adb    ldr x27, [x22, #80]
  0x800129d1c:  b50097db    cbnz x27, #4856
  0x800129d20:  f9402edb    ldr x27, [x22, #88]
  0x800129d24:  b5006bfb    cbnz x27, #3452
  0x800129d28:  f94032db    ldr x27, [x22, #96]
  0x800129d2c:  b400009b    cbz x27, #16
  0x800129d30:  91038373    add x19, x27, #224
  0x800129d34:  88dffe68    ldar w8, [x19]
  0x800129d38:  3500a908    cbnz w8, #5408
  0x800129d3c:  f94013e9    ldr x9, [sp, #32]
  0x800129d40:  2d410121    ldp s1, s0, [x9, #8]
  0x800129d44:  b9401928    ldr w8, [x9, #24]
  0x800129d48:  1e204002    fmov s2, s0
  0x800129d4c:  51000508    sub w8, w8, #1
  0x800129d50:  1e204023    fmov s3, s1
  0x800129d54:  7100111f    cmp w8, #4
  0x800129d58:  54009ce9    b.ls #5020
  0x800129d5c:  2d4116c4    ldp s4, s5, [x22, #8]
  0x800129d60:  7100091f    cmp w8, #2
  0x800129d64:  2d431ec6    ldp s6, s7, [x22, #24]
  0x800129d68:  f9000ff6    str x22, [sp, #24]
  0x800129d6c:  2d4246d0    ldp s16, s17, [x22, #16]
  0x800129d70:  f001c188    adrp x8, #58929152
  0x800129d74:  f9405eb8    ldr x24, [x21, #184]
  0x800129d78:  aa1503f6    mov x22, x21
  0x800129d7c:  aa0903f5    mov x21, x9
  0x800129d80:  1e251842    fdiv s2, s2, s5
  0x800129d84:  1e3138e7    fsub s7, s7, s17
  0x800129d88:  aa1803e0    mov x0, x24
  0x800129d8c:  1e3038c6    fsub s6, s6, s16
  0x800129d90:  1e270842    fmul s2, s2, s7
  0x800129d94:  1e241863    fdiv s3, s3, s4
  0x800129d98:  1e260863    fmul s3, s3, s6
  0x800129d9c:  1e222a22    fadd s2, s17, s2
  0x800129da0:  1e232a03    fadd s3, s16, s3
  0x800129da4:  2d424530    ldp s16, s17, [x9, #16]
  0x800129da8:  f9415508    ldr x8, [x8, #680]
  0x800129dac:  1e203a20    fsub s0, s17, s0
  0x800129db0:  f9400108    ldr x8, [x8]
  0x800129db4:  1e213a01    fsub s1, s16, s1
  0x800129db8:  1e38007b    fcvtzs w27, s3
  0x800129dbc:  1e203c30    fcsel s16, s1, s0, lo
  0x800129dc0:  1e213c00    fcsel s0, s0, s1, lo
  0x800129dc4:  1e251a01    fdiv s1, s16, s5
  0x800129dc8:  2a1b03e1    mov w1, w27
  0x800129dcc:  1e2108e1    fmul s1, s7, s1
  0x800129dd0:  1e241800    fdiv s0, s0, s4
  0x800129dd4:  1e2008c0    fmul s0, s6, s0
  0x800129dd8:  1e2138e4    fsub s4, s7, s1
  0x800129ddc:  1e202860    fadd s0, s3, s0
  0x800129de0:  5ea1b863    fcvtzs s3, s3
  0x800129de4:  1e223882    fsub s2, s4, s2
  0x800129de8:  5e21d863    scvtf s3, s3
  0x800129dec:  1e222821    fadd s1, s1, s2
  0x800129df0:  1e38005c    fcvtzs w28, s2
  0x800129df4:  5ea1b842    fcvtzs s2, s2
  0x800129df8:  5e21d842    scvtf s2, s2
  0x800129dfc:  1e233800    fsub s0, s0, s3
  0x800129e00:  1e390013    fcvtzu w19, s0
  0x800129e04:  2a1c03e2    mov w2, w28
  0x800129e08:  1e223821    fsub s1, s1, s2
  0x800129e0c:  2a1303e3    mov w3, w19
  0x800129e10:  1e39003a    fcvtzu w26, s1
  0x800129e14:  2a1a03e4    mov w4, w26
  0x800129e18:  d63f0100    blr x8
  0x800129e1c:  f001c188    adrp x8, #58929152
  0x800129e20:  aa1803e0    mov x0, x24
  0x800129e24:  f946ad08    ldr x8, [x8, #3416]
  0x800129e28:  2a1b03e1    mov w1, w27
  0x800129e2c:  2a1c03e2    mov w2, w28
  0x800129e30:  f9400108    ldr x8, [x8]
  0x800129e34:  2a1303e3    mov w3, w19
  0x800129e38:  2a1a03e4    mov w4, w26
  0x800129e3c:  d63f0100    blr x8
  0x800129e40:  f001c188    adrp x8, #58929152
  0x800129e44:  2d4386a0    ldp s0, s1, [x21, #28]
  0x800129e48:  f9410508    ldr x8, [x8, #520]
  0x800129e4c:  aa1803e0    mov x0, x24
  0x800129e50:  aa1603f5    mov x21, x22
  0x800129e54:  f9400108    ldr x8, [x8]
  0x800129e58:  d63f0100    blr x8
  0x800129e5c:  340001b7    cbz w23, #52
  0x800129e60:  f85f83a8    ldur x8, [x29, #-8]
  0x800129e64:  f8797908    ldr x8, [x8, x25, lsl #3]
  0x800129e68:  b4000148    cbz x8, #40
  0x800129e6c:  f94017e8    ldr x8, [sp, #40]
  0x800129e70:  2a1903e1    mov w1, w25
  0x800129e74:  528001e3    mov w3, #15
  0x800129e78:  f9405ea0    ldr x0, [x21, #184]
  0x800129e7c:  8b191102    add x2, x8, x25, lsl #4
  0x800129e80:  f001c188    adrp x8, #58929152
  0x800129e84:  f946a108    ldr x8, [x8, #3392]
  0x800129e88:  f9400108    ldr x8, [x8]
  0x800129e8c:  d63f0100    blr x8
  0x800129e90:  b94037fc    ldr w28, [sp, #52]
  0x800129e94:  52801fe9    mov w9, #255
  0x800129e98:  f9400ff6    ldr x22, [sp, #24]
  0x800129e9c:  f85f83b0    ldur x16, [x29, #-8]
  0x800129ea0:  34fff0d4    cbz w20, #-488
  0x800129ea4:  f94032c8    ldr x8, [x22, #96]
  0x800129ea8:  b4fff088    cbz x8, #-496
  0x800129eac:  f001c188    adrp x8, #58929152
  0x800129eb0:  f9405ea0    ldr x0, [x21, #184]
  0x800129eb4:  1e204100    fmov s0, s8
  0x800129eb8:  f9415908    ldr x8, [x8, #688]
  0x800129ebc:  7100129f    cmp w20, #4
  0x800129ec0:  53010681    ubfx w1, w20, #1, #1
  0x800129ec4:  b9400fe2    ldr w2, [sp, #12]
  0x800129ec8:  1a8933e3    csel w3, wzr, w9, lo
  0x800129ecc:  f9400108    ldr x8, [x8]
  0x800129ed0:  d63f0100    blr x8
  0x800129ed4:  f85f83b0    ldur x16, [x29, #-8]
  0x800129ed8:  17ffff78    b #-544
  0x800129edc:  91038373    add x19, x27, #224
  0x800129ee0:  88dffe68    ldar w8, [x19]
  0x800129ee4:  34fff0a8    cbz w8, #-492
  0x800129ee8:  aa1603fa    mov x26, x22
  0x800129eec:  aa1503f8    mov x24, x21
  0x800129ef0:  885ffe61    ldaxr w1, [x19]
  0x800129ef4:  32010028    orr w8, w1, #0x80000000
  0x800129ef8:  88097e68    stxr w9, w8, [x19]
  0x800129efc:  35ffffa9    cbnz w9, #-12
  0x800129f00:  7200783f    tst w1, #0x7fffffff
  0x800129f04:  aa1803f5    mov x21, x24
  0x800129f08:  aa1a03f6    mov x22, x26
  0x800129f0c:  5400f940    b.eq #7976
  0x800129f10:  37f87de1    tbnz w1, #31, #4028
  0x800129f14:  f9400368    ldr x8, [x27]
  0x800129f18:  9001c1a9    adrp x9, #58933248
  0x800129f1c:  f9400d08    ldr x8, [x8, #24]
  0x800129f20:  f9477129    ldr x9, [x9, #3808]
  0x800129f24:  eb09011f    cmp x8, x9
  0x800129f28:  5400fd21    b.ne #8100
  0x800129f2c:  d001c168    adrp x8, #58908672
  0x800129f30:  9103437c    add x28, x27, #208
  0x800129f34:  f9418d08    ldr x8, [x8, #792]
  0x800129f38:  aa1c03e0    mov x0, x28
  0x800129f3c:  f9400108    ldr x8, [x8]
  0x800129f40:  d63f0100    blr x8
  0x800129f44:  d001c168    adrp x8, #58908672
  0x800129f48:  39439b61    ldrb w1, [x27, #230]
  0x800129f4c:  aa1c03e0    mov x0, x28
  0x800129f50:  f9419508    ldr x8, [x8, #808]
  0x800129f54:  52800022    mov w2, #1
  0x800129f58:  f9400108    ldr x8, [x8]
  0x800129f5c:  d63f0100    blr x8
  0x800129f60:  d001c168    adrp x8, #58908672
  0x800129f64:  7941cb61    ldrh w1, [x27, #228]
  0x800129f68:  aa1c03e0    mov x0, x28
  0x800129f6c:  f9419108    ldr x8, [x8, #800]
  0x800129f70:  52800022    mov w2, #1
  0x800129f74:  f9400108    ldr x8, [x8]
  0x800129f78:  d63f0100    blr x8
  0x800129f7c:  aa1803f5    mov x21, x24
  0x800129f80:  aa1a03f6    mov x22, x26
  0x800129f84:  885f7e7f    ldxr wzr, [x19]
  0x800129f88:  8808fe7f    stlxr w8, wzr, [x19]
  0x800129f8c:  35ffffc8    cbnz w8, #-8
  0x800129f90:  17ffff5a    b #-664
  0x800129f94:  fd406be8    ldr d8, [sp, #208]
  0x800129f98:  a9534ff4    ldp x20, x19, [sp, #304]
  0x800129f9c:  a95257f6    ldp x22, x21, [sp, #288]
  0x800129fa0:  a9515ff8    ldp x24, x23, [sp, #272]
  0x800129fa4:  a95067fa    ldp x26, x25, [sp, #256]
  0x800129fa8:  a94f6ffc    ldp x28, x27, [sp, #240]
  0x800129fac:  a94e7bfd    ldp x29, x30, [sp, #224]
  0x800129fb0:  910503ff    add sp, sp, #320
  0x800129fb4:  d65f03c0    ret
  0x800129fb8:  b9407188    ldr w8, [x12, #112]
  0x800129fbc:  79555729    ldrh w9, [x25, #2730]
  0x800129fc0:  4b090108    sub w8, w8, w9
  0x800129fc4:  b94a3b29    ldr w9, [x25, #2616]
  0x800129fc8:  f945232a    ldr x10, [x25, #2624]
  0x800129fcc:  6b08013f    cmp w9, w8
  0x800129fd0:  1a9f8108    csel w8, w8, wzr, hi
  0x800129fd4:  9b332908    smaddl x8, w8, w19, x10
  0x800129fd8:  b8404d09    ldr w9, [x8, #4]!
  0x800129fdc:  3607e089    tbz w9, #0, #-1008
  0x800129fe0:  12800049    mov w9, #-3
  0x800129fe4:  2a1f03f8    mov w24, wzr
  0x800129fe8:  885f7d0a    ldxr w10, [x8]
  0x800129fec:  8a09014a    and x10, x10, x9
  0x800129ff0:  b27f014a    orr x10, x10, #0x2
  0x800129ff4:  880b7d0a    stxr w11, w10, [x8]
  0x800129ff8:  35ffff8b    cbnz w11, #-16
  0x800129ffc:  f94016cc    ldr x12, [x22, #40]
  0x80012a000:  b4ffdfcc    cbz x12, #-1032
  0x80012a004:  370834dc    tbnz w28, #1, #1688
  0x80012a008:  b94c8b2d    ldr w13, [x25, #3208]
  0x80012a00c:  363001ad    tbz w13, #6, #52
  0x80012a010:  b9407188    ldr w8, [x12, #112]
  0x80012a014:  79555729    ldrh w9, [x25, #2730]
  0x80012a018:  4b09010a    sub w10, w8, w9
  0x80012a01c:  b94a3b29    ldr w9, [x25, #2616]
  0x80012a020:  f9452328    ldr x8, [x25, #2624]
  0x80012a024:  6b0a013f    cmp w9, w10
  0x80012a028:  1a9f814e    csel w14, w10, wzr, hi
  0x80012a02c:  9b3321cb    smaddl x11, w14, w19, x8
  0x80012a030:  b8404d6f    ldr w15, [x11, #4]!
  0x80012a034:  3600006f    tbz w15, #0, #12
  0x80012a038:  b940016f    ldr w15, [x11]
  0x80012a03c:  3608482f    tbz w15, #1, #2308
  0x80012a040:  2a1f03f4    mov w20, wzr
  0x80012a044:  14000280    b #2560
  0x80012a048:  b94c8b2c    ldr w12, [x25, #3208]
  0x80012a04c:  363001ac    tbz w12, #6, #52
  0x80012a050:  b9407288    ldr w8, [x20, #112]
  0x80012a054:  79555729    ldrh w9, [x25, #2730]
  0x80012a058:  4b09010a    sub w10, w8, w9
  0x80012a05c:  b94a3b29    ldr w9, [x25, #2616]
  0x80012a060:  f9452328    ldr x8, [x25, #2624]
  0x80012a064:  6b0a013f    cmp w9, w10
  0x80012a068:  1a9f814d    csel w13, w10, wzr, hi
  0x80012a06c:  9b3321ab    smaddl x11, w13, w19, x8
  0x80012a070:  b8404d6e    ldr w14, [x11, #4]!
  0x80012a074:  3600006e    tbz w14, #0, #12
  0x80012a078:  b940016e    ldr w14, [x11]
  0x80012a07c:  3608590e    tbz w14, #1, #2848
  0x80012a080:  3607dff8    tbz w24, #0, #-1028
  0x80012a084:  b94c8b28    ldr w8, [x25, #3208]
  0x80012a088:  120c0508    and w8, w8, #0x300000
  0x80012a08c:  7144011f    cmp w8, #256, lsl #12
  0x80012a090:  54ffdf61    b.ne #-1044
  0x80012a094:  b001c168    adrp x8, #58904576
  0x80012a098:  f9405ea0    ldr x0, [x21, #184]
  0x80012a09c:  52800021    mov w1, #1
  0x80012a0a0:  f940b108    ldr x8, [x8, #352]
  0x80012a0a4:  f9400108    ldr x8, [x8]
  0x80012a0a8:  d63f0100    blr x8
  0x80012a0ac:  f85f83b0    ldur x16, [x29, #-8]
  0x80012a0b0:  17fffef3    b #-1076
  0x80012a0b4:  900159b3    adrp x19, #45301760
  0x80012a0b8:  9107ce73    add x19, x19, #499
  0x80012a0bc:  17fffdec    b #-2128
  0x80012a0c0:  91002128    add x8, x9, #8
  0x80012a0c4:  f9406113    ldr x19, [x8, #192]
  0x80012a0c8:  17fffdfb    b #-2068
  0x80012a0cc:  f9406533    ldr x19, [x9, #200]
  0x80012a0d0:  52800028    mov w8, #1
  0x80012a0d4:  17fffde8    b #-2144
  0x80012a0d8:  91038373    add x19, x27, #224
  0x80012a0dc:  88dffe68    ldar w8, [x19]
  0x80012a0e0:  34ffe1c8    cbz w8, #-968
  0x80012a0e4:  aa1603fa    mov x26, x22
  0x80012a0e8:  aa1503f8    mov x24, x21
  0x80012a0ec:  885ffe61    ldaxr w1, [x19]
  0x80012a0f0:  32010028    orr w8, w1, #0x80000000
  0x80012a0f4:  88097e68    stxr w9, w8, [x19]
  0x80012a0f8:  35ffffa9    cbnz w9, #-12
  0x80012a0fc:  7200783f    tst w1, #0x7fffffff
  0x80012a100:  aa1803f5    mov x21, x24
  0x80012a104:  aa1a03f6    mov x22, x26
  0x80012a108:  5400e9e0    b.eq #7484
  0x80012a10c:  37f86f41    tbnz w1, #31, #3560
  0x80012a110:  f9400368    ldr x8, [x27]
  0x80012a114:  f001c189    adrp x9, #58929152
  0x80012a118:  f9400d08    ldr x8, [x8, #24]
  0x80012a11c:  f9477129    ldr x9, [x9, #3808]
  0x80012a120:  eb09011f    cmp x8, x9
  0x80012a124:  5400eda1    b.ne #7604
  0x80012a128:  b001c168    adrp x8, #58904576
  0x80012a12c:  9103437c    add x28, x27, #208
  0x80012a130:  f9418d08    ldr x8, [x8, #792]
  0x80012a134:  aa1c03e0    mov x0, x28
  0x80012a138:  f9400108    ldr x8, [x8]
  0x80012a13c:  d63f0100    blr x8
  0x80012a140:  b001c168    adrp x8, #58904576
  0x80012a144:  39439b61    ldrb w1, [x27, #230]
  0x80012a148:  aa1c03e0    mov x0, x28
  0x80012a14c:  f9419508    ldr x8, [x8, #808]
  0x80012a150:  52800022    mov w2, #1
  0x80012a154:  f9400108    ldr x8, [x8]
  0x80012a158:  d63f0100    blr x8
  0x80012a15c:  b001c168    adrp x8, #58904576
  0x80012a160:  7941cb61    ldrh w1, [x27, #228]
  0x80012a164:  aa1c03e0    mov x0, x28
  0x80012a168:  f9419108    ldr x8, [x8, #800]
  0x80012a16c:  52800022    mov w2, #1
  0x80012a170:  f9400108    ldr x8, [x8]
  0x80012a174:  d63f0100    blr x8
  0x80012a178:  aa1803f5    mov x21, x24
  0x80012a17c:  aa1a03f6    mov x22, x26
  0x80012a180:  885f7e7f    ldxr wzr, [x19]
  0x80012a184:  8808fe7f    stlxr w8, wzr, [x19]
  0x80012a188:  35ffffc8    cbnz w8, #-8
  0x80012a18c:  17fffee3    b #-1140
  0x80012a190:  36a0994d    tbz w13, #20, #4904
  0x80012a194:  93407dcc    sxtw x12, w14
  0x80012a198:  5280050d    mov w13, #40
  0x80012a19c:  9b2d218c    smaddl x12, w12, w13, x8
  0x80012a1a0:  f946572d    ldr x13, [x25, #3240]
  0x80012a1a4:  f9400d8c    ldr x12, [x12, #24]
  0x80012a1a8:  f940018c    ldr x12, [x12]
  0x80012a1ac:  7941098c    ldrh w12, [x12, #132]
  0x80012a1b0:  d37be98c    lsl x12, x12, #5
  0x80012a1b4:  b4009a2d    cbz x13, #4932
  0x80012a1b8:  f94089ae    ldr x14, [x13, #272]
  0x80012a1bc:  b400008e    cbz x14, #16
  0x80012a1c0:  f946532f    ldr x15, [x25, #3232]
  0x80012a1c4:  f9400dce    ldr x14, [x14, #24]
  0x80012a1c8:  cb0e01ee    sub x14, x15, x14
  0x80012a1cc:  f94081ad    ldr x13, [x13, #256]
  0x80012a1d0:  8b0c01cc    add x12, x14, x12
  0x80012a1d4:  f86d698c    ldr x12, [x12, x13]
  0x80012a1d8:  b400600c    cbz x12, #3072
  0x80012a1dc:  2a1f03eb    mov w11, wzr
  0x80012a1e0:  6b0a013f    cmp w9, w10
  0x80012a1e4:  f9405eba    ldr x26, [x21, #184]
  0x80012a1e8:  1a9f8149    csel w9, w10, wzr, hi
  0x80012a1ec:  9b332128    smaddl x8, w9, w19, x8
  0x80012a1f0:  f9468729    ldr x9, [x25, #3336]
  0x80012a1f4:  f9400d08    ldr x8, [x8, #24]
  0x80012a1f8:  f9400108    ldr x8, [x8]
  0x80012a1fc:  79410908    ldrh w8, [x8, #132]
  0x80012a200:  8b08153b    add x27, x9, x8, lsl #5
  0x80012a204:  3700014b    tbnz w11, #0, #40
  0x80012a208:  b001c168    adrp x8, #58904576
  0x80012a20c:  aa1a03e0    mov x0, x26
  0x80012a210:  f940ad08    ldr x8, [x8, #344]
  0x80012a214:  52800021    mov w1, #1
  0x80012a218:  aa1b03e2    mov x2, x27
  0x80012a21c:  f9400108    ldr x8, [x8]
  0x80012a220:  d63f0100    blr x8
  0x80012a224:  39722b28    ldrb w8, [x25, #3210]
  0x80012a228:  373896c8    tbnz w8, #7, #4824
  0x80012a22c:  d001c188    adrp x8, #58925056
  0x80012a230:  900160a2    adrp x2, #46219264
  0x80012a234:  910bb042    add x2, x2, #748
  0x80012a238:  f946a108    ldr x8, [x8, #3392]
  0x80012a23c:  aa1a03e0    mov x0, x26
  0x80012a240:  f9400108    ldr x8, [x8]
  0x80012a244:  2a1f03e1    mov w1, wzr
  0x80012a248:  528001e3    mov w3, #15
  0x80012a24c:  d63f0100    blr x8
  0x80012a250:  b94c8b28    ldr w8, [x25, #3208]
  0x80012a254:  36a09608    tbz w8, #20, #4800
  0x80012a258:  37b80168    tbnz w8, #23, #44
  0x80012a25c:  39724328    ldrb w8, [x25, #3216]
  0x80012a260:  7100111f    cmp w8, #4
  0x80012a264:  540095c1    b.ne #4792
  0x80012a268:  9001c168    adrp x8, #58900480
  0x80012a26c:  aa1a03e0    mov x0, x26
  0x80012a270:  f9470108    ldr x8, [x8, #3584]
  0x80012a274:  52800201    mov w1, #16
  0x80012a278:  aa1b03e2    mov x2, x27
  0x80012a27c:  f9400108    ldr x8, [x8]
  0x80012a280:  d63f0100    blr x8
  0x80012a284:  39722b28    ldrb w8, [x25, #3210]
  0x80012a288:  f85f83b0    ldur x16, [x29, #-8]
  0x80012a28c:  372895e8    tbnz w8, #5, #4796
  0x80012a290:  52800038    mov w24, #1
  0x80012a294:  17ffff5a    b #-664
  0x80012a298:  91038373    add x19, x27, #224
  0x80012a29c:  88dffe68    ldar w8, [x19]
  0x80012a2a0:  34ffd348    cbz w8, #-1432
  0x80012a2a4:  aa1603fa    mov x26, x22
  0x80012a2a8:  aa1503f8    mov x24, x21
  0x80012a2ac:  885ffe61    ldaxr w1, [x19]
  0x80012a2b0:  32010028    orr w8, w1, #0x80000000
  0x80012a2b4:  88097e68    stxr w9, w8, [x19]
  0x80012a2b8:  35ffffa9    cbnz w9, #-12
  0x80012a2bc:  7200783f    tst w1, #0x7fffffff
  0x80012a2c0:  aa1803f5    mov x21, x24
  0x80012a2c4:  aa1a03f6    mov x22, x26
  0x80012a2c8:  5400dc60    b.eq #7052
  0x80012a2cc:  37f86281    tbnz w1, #31, #3152
  0x80012a2d0:  f9400368    ldr x8, [x27]
  0x80012a2d4:  f001c189    adrp x9, #58929152
  0x80012a2d8:  f9400d08    ldr x8, [x8, #24]
  0x80012a2dc:  f9477129    ldr x9, [x9, #3808]
  0x80012a2e0:  eb09011f    cmp x8, x9
  0x80012a2e4:  5400e001    b.ne #7168
  0x80012a2e8:  b001c168    adrp x8, #58904576
  0x80012a2ec:  9103437c    add x28, x27, #208
  0x80012a2f0:  f9418d08    ldr x8, [x8, #792]
  0x80012a2f4:  aa1c03e0    mov x0, x28
  0x80012a2f8:  f9400108    ldr x8, [x8]
  0x80012a2fc:  d63f0100    blr x8
  0x80012a300:  b001c168    adrp x8, #58904576
  0x80012a304:  39439b61    ldrb w1, [x27, #230]
  0x80012a308:  aa1c03e0    mov x0, x28
  0x80012a30c:  f9419508    ldr x8, [x8, #808]
  0x80012a310:  52800022    mov w2, #1
  0x80012a314:  f9400108    ldr x8, [x8]
  0x80012a318:  d63f0100    blr x8
  0x80012a31c:  b001c168    adrp x8, #58904576
  0x80012a320:  7941cb61    ldrh w1, [x27, #228]
  0x80012a324:  aa1c03e0    mov x0, x28
  0x80012a328:  f9419108    ldr x8, [x8, #800]
  0x80012a32c:  52800022    mov w2, #1
  0x80012a330:  f9400108    ldr x8, [x8]
  0x80012a334:  d63f0100    blr x8
  0x80012a338:  aa1803f5    mov x21, x24
  0x80012a33c:  aa1a03f6    mov x22, x26
  0x80012a340:  885f7e7f    ldxr wzr, [x19]
  0x80012a344:  8808fe7f    stlxr w8, wzr, [x19]
  0x80012a348:  35ffffc8    cbnz w8, #-8
  0x80012a34c:  17fffe6f    b #-1604
  0x80012a350:  f9406533    ldr x19, [x9, #200]
  0x80012a354:  52800028    mov w8, #1
  0x80012a358:  17fffd4f    b #-2756
  0x80012a35c:  3728909c    tbnz w28, #5, #4624
  0x80012a360:  b94c8b2d    ldr w13, [x25, #3208]
  0x80012a364:  3637c5ad    tbz w13, #6, #-1868
  0x80012a368:  b9407188    ldr w8, [x12, #112]
  0x80012a36c:  79555729    ldrh w9, [x25, #2730]
  0x80012a370:  4b09010a    sub w10, w8, w9
  0x80012a374:  b94a3b29    ldr w9, [x25, #2616]
  0x80012a378:  f9452328    ldr x8, [x25, #2624]
  0x80012a37c:  6b0a013f    cmp w9, w10
  0x80012a380:  1a9f814e    csel w14, w10, wzr, hi
  0x80012a384:  9b3321cb    smaddl x11, w14, w19, x8
  0x80012a388:  b8404d6f    ldr w15, [x11, #4]!
  0x80012a38c:  3607c46f    tbz w15, #0, #-1908
  0x80012a390:  b940016f    ldr w15, [x11]
  0x80012a394:  370fc42f    tbnz w15, #1, #-1916
  0x80012a398:  36a0954d    tbz w13, #20, #4776
  0x80012a39c:  93407dcc    sxtw x12, w14
  0x80012a3a0:  5280050d    mov w13, #40
  0x80012a3a4:  9b2d218c    smaddl x12, w12, w13, x8
  0x80012a3a8:  f946572d    ldr x13, [x25, #3240]
  0x80012a3ac:  f9400d8c    ldr x12, [x12, #24]
  0x80012a3b0:  f940018c    ldr x12, [x12]
  0x80012a3b4:  7941098c    ldrh w12, [x12, #132]
  0x80012a3b8:  d37be98c    lsl x12, x12, #5
  0x80012a3bc:  b400962d    cbz x13, #4804
  0x80012a3c0:  f94089ae    ldr x14, [x13, #272]
  0x80012a3c4:  b400008e    cbz x14, #16
  0x80012a3c8:  f946532f    ldr x15, [x25, #3232]
  0x80012a3cc:  f9400dce    ldr x14, [x14, #24]
  0x80012a3d0:  cb0e01ee    sub x14, x15, x14
  0x80012a3d4:  f94081ad    ldr x13, [x13, #256]
  0x80012a3d8:  8b0c01cc    add x12, x14, x12
  0x80012a3dc:  f86d698c    ldr x12, [x12, x13]
  0x80012a3e0:  b400954c    cbz x12, #4776
  0x80012a3e4:  2a1f03eb    mov w11, wzr
  0x80012a3e8:  6b0a013f    cmp w9, w10
  0x80012a3ec:  f9405eba    ldr x26, [x21, #184]
  0x80012a3f0:  1a9f8149    csel w9, w10, wzr, hi
  0x80012a3f4:  9b332128    smaddl x8, w9, w19, x8
  0x80012a3f8:  f9468729    ldr x9, [x25, #3336]
  0x80012a3fc:  f9400d08    ldr x8, [x8, #24]
  0x80012a400:  f9400108    ldr x8, [x8]
  0x80012a404:  79410908    ldrh w8, [x8, #132]
  0x80012a408:  8b08153b    add x27, x9, x8, lsl #5
  0x80012a40c:  3700014b    tbnz w11, #0, #40
  0x80012a410:  b001c168    adrp x8, #58904576
  0x80012a414:  aa1a03e0    mov x0, x26
  0x80012a418:  f940ad08    ldr x8, [x8, #344]
  0x80012a41c:  52800021    mov w1, #1
  0x80012a420:  aa1b03e2    mov x2, x27
  0x80012a424:  f9400108    ldr x8, [x8]
  0x80012a428:  d63f0100    blr x8
  0x80012a42c:  39722b28    ldrb w8, [x25, #3210]
  0x80012a430:  373893a8    tbnz w8, #7, #4724
  0x80012a434:  d001c188    adrp x8, #58925056
  0x80012a438:  900160a2    adrp x2, #46219264
  0x80012a43c:  910bb042    add x2, x2, #748
  0x80012a440:  f946a108    ldr x8, [x8, #3392]
  0x80012a444:  528000a1    mov w1, #5
  0x80012a448:  f9400108    ldr x8, [x8]
  0x80012a44c:  aa1a03e0    mov x0, x26
  0x80012a450:  528001e3    mov w3, #15
  0x80012a454:  d63f0100    blr x8
  0x80012a458:  b94c8b28    ldr w8, [x25, #3208]
  0x80012a45c:  36a092e8    tbz w8, #20, #4700
  0x80012a460:  37b80168    tbnz w8, #23, #44
  0x80012a464:  39724328    ldrb w8, [x25, #3216]
  0x80012a468:  7100111f    cmp w8, #4
  0x80012a46c:  540092a1    b.ne #4692
  0x80012a470:  9001c168    adrp x8, #58900480
  0x80012a474:  aa1a03e0    mov x0, x26
  0x80012a478:  f9470108    ldr x8, [x8, #3584]
  0x80012a47c:  52800201    mov w1, #16
  0x80012a480:  aa1b03e2    mov x2, x27
  0x80012a484:  f9400108    ldr x8, [x8]
  0x80012a488:  d63f0100    blr x8
  0x80012a48c:  39722b28    ldrb w8, [x25, #3210]
  0x80012a490:  f85f83b0    ldur x16, [x29, #-8]
  0x80012a494:  372892c8    tbnz w8, #5, #4696
  0x80012a498:  52800038    mov w24, #1
  0x80012a49c:  17fffddf    b #-2180
  0x80012a4a0:  91038373    add x19, x27, #224
  0x80012a4a4:  88dffe68    ldar w8, [x19]
  0x80012a4a8:  34ffc348    cbz w8, #-1944
  0x80012a4ac:  aa1603fa    mov x26, x22
  0x80012a4b0:  aa1503f8    mov x24, x21
  0x80012a4b4:  885ffe61    ldaxr w1, [x19]
  0x80012a4b8:  32010028    orr w8, w1, #0x80000000
  0x80012a4bc:  88097e68    stxr w9, w8, [x19]
  0x80012a4c0:  35ffffa9    cbnz w9, #-12
  0x80012a4c4:  7200783f    tst w1, #0x7fffffff
  0x80012a4c8:  aa1803f5    mov x21, x24
  0x80012a4cc:  aa1a03f6    mov x22, x26
  0x80012a4d0:  5400cca0    b.eq #6548
  0x80012a4d4:  37f85381    tbnz w1, #31, #2672
  0x80012a4d8:  f9400368    ldr x8, [x27]
  0x80012a4dc:  f001c189    adrp x9, #58929152
  0x80012a4e0:  f9400d08    ldr x8, [x8, #24]
  0x80012a4e4:  f9477129    ldr x9, [x9, #3808]
  0x80012a4e8:  eb09011f    cmp x8, x9
  0x80012a4ec:  5400d021    b.ne #6660
  0x80012a4f0:  b001c168    adrp x8, #58904576
  0x80012a4f4:  9103437c    add x28, x27, #208
  0x80012a4f8:  f9418d08    ldr x8, [x8, #792]
  0x80012a4fc:  aa1c03e0    mov x0, x28
  0x80012a500:  f9400108    ldr x8, [x8]
  0x80012a504:  d63f0100    blr x8
  0x80012a508:  b001c168    adrp x8, #58904576
  0x80012a50c:  39439b61    ldrb w1, [x27, #230]
  0x80012a510:  aa1c03e0    mov x0, x28
  0x80012a514:  f9419508    ldr x8, [x8, #808]
  0x80012a518:  52800022    mov w2, #1
  0x80012a51c:  f9400108    ldr x8, [x8]
  0x80012a520:  d63f0100    blr x8
  0x80012a524:  b001c168    adrp x8, #58904576
  0x80012a528:  7941cb61    ldrh w1, [x27, #228]
  0x80012a52c:  aa1c03e0    mov x0, x28
  0x80012a530:  f9419108    ldr x8, [x8, #800]
  0x80012a534:  52800022    mov w2, #1
  0x80012a538:  f9400108    ldr x8, [x8]
  0x80012a53c:  d63f0100    blr x8
  0x80012a540:  aa1803f5    mov x21, x24
  0x80012a544:  aa1a03f6    mov x22, x26
  0x80012a548:  885f7e7f    ldxr wzr, [x19]
  0x80012a54c:  8808fe7f    stlxr w8, wzr, [x19]
  0x80012a550:  35ffffc8    cbnz w8, #-8
  0x80012a554:  17fffdef    b #-2116
  0x80012a558:  373884fc    tbnz w28, #7, #4252
  0x80012a55c:  b94c8b2d    ldr w13, [x25, #3208]
  0x80012a560:  3637b64d    tbz w13, #6, #-2360
  0x80012a564:  b9407188    ldr w8, [x12, #112]
  0x80012a568:  79555729    ldrh w9, [x25, #2730]
  0x80012a56c:  4b09010a    sub w10, w8, w9
  0x80012a570:  b94a3b29    ldr w9, [x25, #2616]
  0x80012a574:  f9452328    ldr x8, [x25, #2624]
  0x80012a578:  6b0a013f    cmp w9, w10
  0x80012a57c:  1a9f814e    csel w14, w10, wzr, hi
  0x80012a580:  9b3321cb    smaddl x11, w14, w19, x8
  0x80012a584:  b8404d6f    ldr w15, [x11, #4]!
  0x80012a588:  3607b50f    tbz w15, #0, #-2400
  0x80012a58c:  b940016f    ldr w15, [x11]
  0x80012a590:  370fb4cf    tbnz w15, #1, #-2408
  0x80012a594:  36a0b76d    tbz w13, #20, #5868
  0x80012a598:  93407dcc    sxtw x12, w14
  0x80012a59c:  5280050d    mov w13, #40
  0x80012a5a0:  9b2d218c    smaddl x12, w12, w13, x8
  0x80012a5a4:  f946572d    ldr x13, [x25, #3240]
  0x80012a5a8:  f9400d8c    ldr x12, [x12, #24]
  0x80012a5ac:  f940018c    ldr x12, [x12]
  0x80012a5b0:  7941098c    ldrh w12, [x12, #132]
  0x80012a5b4:  d37be98c    lsl x12, x12, #5
  0x80012a5b8:  b400b84d    cbz x13, #5896
  0x80012a5bc:  f94089ae    ldr x14, [x13, #272]
  0x80012a5c0:  b400008e    cbz x14, #16
  0x80012a5c4:  f946532f    ldr x15, [x25, #3232]
  0x80012a5c8:  f9400dce    ldr x14, [x14, #24]
  0x80012a5cc:  cb0e01ee    sub x14, x15, x14
  0x80012a5d0:  f94081ad    ldr x13, [x13, #256]
  0x80012a5d4:  8b0c01cc    add x12, x14, x12
  0x80012a5d8:  f86d698c    ldr x12, [x12, x13]
  0x80012a5dc:  b400b76c    cbz x12, #5868
  0x80012a5e0:  2a1f03eb    mov w11, wzr
  0x80012a5e4:  6b0a013f    cmp w9, w10
  0x80012a5e8:  f9405eba    ldr x26, [x21, #184]
  0x80012a5ec:  1a9f8149    csel w9, w10, wzr, hi
  0x80012a5f0:  9b332128    smaddl x8, w9, w19, x8
  0x80012a5f4:  f9468729    ldr x9, [x25, #3336]
  0x80012a5f8:  f9400d08    ldr x8, [x8, #24]
  0x80012a5fc:  f9400108    ldr x8, [x8]
  0x80012a600:  79410908    ldrh w8, [x8, #132]
  0x80012a604:  8b08153b    add x27, x9, x8, lsl #5
  0x80012a608:  3700014b    tbnz w11, #0, #40
  0x80012a60c:  b001c168    adrp x8, #58904576
  0x80012a610:  aa1a03e0    mov x0, x26
  0x80012a614:  f940ad08    ldr x8, [x8, #344]
  0x80012a618:  52800021    mov w1, #1
  0x80012a61c:  aa1b03e2    mov x2, x27
  0x80012a620:  f9400108    ldr x8, [x8]
  0x80012a624:  d63f0100    blr x8
  0x80012a628:  39722b28    ldrb w8, [x25, #3210]
  0x80012a62c:  3738b588    tbnz w8, #7, #5808
  0x80012a630:  d001c188    adrp x8, #58925056
  0x80012a634:  900160a2    adrp x2, #46219264
  0x80012a638:  910bb042    add x2, x2, #748
  0x80012a63c:  f946a108    ldr x8, [x8, #3392]
  0x80012a640:  aa1a03e0    mov x0, x26
  0x80012a644:  f9400108    ldr x8, [x8]
  0x80012a648:  528000e1    mov w1, #7
  0x80012a64c:  528001e3    mov w3, #15
  0x80012a650:  d63f0100    blr x8
  0x80012a654:  b94c8b28    ldr w8, [x25, #3208]
  0x80012a658:  36a0b4c8    tbz w8, #20, #5784
  0x80012a65c:  37b80168    tbnz w8, #23, #44
  0x80012a660:  39724328    ldrb w8, [x25, #3216]
  0x80012a664:  7100111f    cmp w8, #4
  0x80012a668:  5400b481    b.ne #5776
  0x80012a66c:  9001c168    adrp x8, #58900480
  0x80012a670:  aa1a03e0    mov x0, x26
  0x80012a674:  f9470108    ldr x8, [x8, #3584]
  0x80012a678:  52800201    mov w1, #16
  0x80012a67c:  aa1b03e2    mov x2, x27
  0x80012a680:  f9400108    ldr x8, [x8]
  0x80012a684:  d63f0100    blr x8
  0x80012a688:  39722b28    ldrb w8, [x25, #3210]
  0x80012a68c:  f85f83b0    ldur x16, [x29, #-8]
  0x80012a690:  3728b4a8    tbnz w8, #5, #5780
  0x80012a694:  52800038    mov w24, #1
  0x80012a698:  17fffd64    b #-2672
  0x80012a69c:  b9407188    ldr w8, [x12, #112]
  0x80012a6a0:  79555729    ldrh w9, [x25, #2730]
  0x80012a6a4:  4b090108    sub w8, w8, w9
  0x80012a6a8:  b94a3b29    ldr w9, [x25, #2616]
  0x80012a6ac:  f945232a    ldr x10, [x25, #2624]
  0x80012a6b0:  6b08013f    cmp w9, w8
  0x80012a6b4:  1a9f8108    csel w8, w8, wzr, hi
  0x80012a6b8:  9b332908    smaddl x8, w8, w19, x10
  0x80012a6bc:  b8404d09    ldr w9, [x8, #4]!
  0x80012a6c0:  3607a9c9    tbz w9, #0, #-2760
  0x80012a6c4:  12800049    mov w9, #-3
  0x80012a6c8:  885f7d0a    ldxr w10, [x8]
  0x80012a6cc:  8a09014a    and x10, x10, x9
  0x80012a6d0:  b27f014a    orr x10, x10, #0x2
  0x80012a6d4:  880b7d0a    stxr w11, w10, [x8]
  0x80012a6d8:  34ffa90b    cbz w11, #-2784
  0x80012a6dc:  17fffffb    b #-20
  0x80012a6e0:  f9406533    ldr x19, [x9, #200]
  0x80012a6e4:  52800028    mov w8, #1
  0x80012a6e8:  17fffc69    b #-3676
  0x80012a6ec:  3720237c    tbnz w28, #4, #1132
  0x80012a6f0:  b94c8b2d    ldr w13, [x25, #3208]
  0x80012a6f4:  3630382d    tbz w13, #6, #1796
  0x80012a6f8:  b9407188    ldr w8, [x12, #112]
  0x80012a6fc:  79555729    ldrh w9, [x25, #2730]
  0x80012a700:  4b09010a    sub w10, w8, w9
  0x80012a704:  b94a3b29    ldr w9, [x25, #2616]
  0x80012a708:  f9452328    ldr x8, [x25, #2624]
  0x80012a70c:  6b0a013f    cmp w9, w10
  0x80012a710:  1a9f814e    csel w14, w10, wzr, hi
  0x80012a714:  9b3321cb    smaddl x11, w14, w19, x8
  0x80012a718:  b8404d6f    ldr w15, [x11, #4]!
  0x80012a71c:  360036ef    tbz w15, #0, #1756
  0x80012a720:  b940016f    ldr w15, [x11]
  0x80012a724:  370836af    tbnz w15, #1, #1748
  0x80012a728:  36a08bed    tbz w13, #20, #4476
  0x80012a72c:  93407dcc    sxtw x12, w14
  0x80012a730:  5280050d    mov w13, #40
  0x80012a734:  9b2d218c    smaddl x12, w12, w13, x8
  0x80012a738:  f946572d    ldr x13, [x25, #3240]
  0x80012a73c:  f9400d8c    ldr x12, [x12, #24]
  0x80012a740:  f940018c    ldr x12, [x12]
  0x80012a744:  7941098c    ldrh w12, [x12, #132]
  0x80012a748:  d37be98c    lsl x12, x12, #5
  0x80012a74c:  b4008ccd    cbz x13, #4504
  0x80012a750:  f94089ae    ldr x14, [x13, #272]
  0x80012a754:  b400008e    cbz x14, #16
  0x80012a758:  f946532f    ldr x15, [x25, #3232]
  0x80012a75c:  f9400dce    ldr x14, [x14, #24]
  0x80012a760:  cb0e01ee    sub x14, x15, x14
  0x80012a764:  f94081ad    ldr x13, [x13, #256]
  0x80012a768:  8b0c01cc    add x12, x14, x12
  0x80012a76c:  f86d698c    ldr x12, [x12, x13]
  0x80012a770:  b400366c    cbz x12, #1740
  0x80012a774:  2a1f03eb    mov w11, wzr
  0x80012a778:  6b0a013f    cmp w9, w10
  0x80012a77c:  f9405eba    ldr x26, [x21, #184]
  0x80012a780:  1a9f8149    csel w9, w10, wzr, hi
  0x80012a784:  9b332128    smaddl x8, w9, w19, x8
  0x80012a788:  f9468729    ldr x9, [x25, #3336]
  0x80012a78c:  f9400d08    ldr x8, [x8, #24]
  0x80012a790:  f9400108    ldr x8, [x8]
  0x80012a794:  79410908    ldrh w8, [x8, #132]
  0x80012a798:  8b08153b    add x27, x9, x8, lsl #5
  0x80012a79c:  3700014b    tbnz w11, #0, #40
  0x80012a7a0:  b001c168    adrp x8, #58904576
  0x80012a7a4:  aa1a03e0    mov x0, x26
  0x80012a7a8:  f940ad08    ldr x8, [x8, #344]
  0x80012a7ac:  52800021    mov w1, #1
  0x80012a7b0:  aa1b03e2    mov x2, x27
  0x80012a7b4:  f9400108    ldr x8, [x8]
  0x80012a7b8:  d63f0100    blr x8
  0x80012a7bc:  39722b28    ldrb w8, [x25, #3210]
  0x80012a7c0:  37388968    tbnz w8, #7, #4396
  0x80012a7c4:  d001c188    adrp x8, #58925056
  0x80012a7c8:  900160a2    adrp x2, #46219264
  0x80012a7cc:  910bb042    add x2, x2, #748
  0x80012a7d0:  f946a108    ldr x8, [x8, #3392]
  0x80012a7d4:  aa1a03e0    mov x0, x26
  0x80012a7d8:  f9400108    ldr x8, [x8]
  0x80012a7dc:  52800081    mov w1, #4
  0x80012a7e0:  528001e3    mov w3, #15
  0x80012a7e4:  d63f0100    blr x8
  0x80012a7e8:  b94c8b28    ldr w8, [x25, #3208]
  0x80012a7ec:  36a088a8    tbz w8, #20, #4372
  0x80012a7f0:  37b80168    tbnz w8, #23, #44
  0x80012a7f4:  39724328    ldrb w8, [x25, #3216]
  0x80012a7f8:  7100111f    cmp w8, #4
  0x80012a7fc:  54008861    b.ne #4364
  0x80012a800:  9001c168    adrp x8, #58900480
  0x80012a804:  aa1a03e0    mov x0, x26
  0x80012a808:  f9470108    ldr x8, [x8, #3584]
  0x80012a80c:  52800201    mov w1, #16
  0x80012a810:  aa1b03e2    mov x2, x27
  0x80012a814:  f9400108    ldr x8, [x8]
  0x80012a818:  d63f0100    blr x8
  0x80012a81c:  39722b28    ldrb w8, [x25, #3210]
  0x80012a820:  f85f83b0    ldur x16, [x29, #-8]
  0x80012a824:  37288888    tbnz w8, #5, #4368
  0x80012a828:  52800034    mov w20, #1
  0x80012a82c:  2a140318    orr w24, w24, w20
  0x80012a830:  17fffcf8    b #-3104
  0x80012a834:  f9406533    ldr x19, [x9, #200]
  0x80012a838:  52800028    mov w8, #1
  0x80012a83c:  17fffc10    b #-4032
  0x80012a840:  3710767c    tbnz w28, #2, #3788
  0x80012a844:  b94c8b2d    ldr w13, [x25, #3208]
  0x80012a848:  363001ad    tbz w13, #6, #52
  0x80012a84c:  b9407188    ldr w8, [x12, #112]
  0x80012a850:  79555729    ldrh w9, [x25, #2730]
  0x80012a854:  4b09010a    sub w10, w8, w9
  0x80012a858:  b94a3b29    ldr w9, [x25, #2616]
  0x80012a85c:  f9452328    ldr x8, [x25, #2624]
  0x80012a860:  6b0a013f    cmp w9, w10
  0x80012a864:  1a9f814e    csel w14, w10, wzr, hi
  0x80012a868:  9b3321cb    smaddl x11, w14, w19, x8
  0x80012a86c:  b8404d6f    ldr w15, [x11, #4]!
  0x80012a870:  3600006f    tbz w15, #0, #12
  0x80012a874:  b940016f    ldr w15, [x11]
  0x80012a878:  360822cf    tbz w15, #1, #1112
  0x80012a87c:  2a1f03f4    mov w20, wzr
  0x80012a880:  2a140318    orr w24, w24, w20
  0x80012a884:  17fffcdf    b #-3204
  0x80012a888:  91038373    add x19, x27, #224
  0x80012a88c:  88dffe68    ldar w8, [x19]
  0x80012a890:  34ffa388    cbz w8, #-2960
  0x80012a894:  aa1603fa    mov x26, x22
  0x80012a898:  aa1503f8    mov x24, x21
  0x80012a89c:  885ffe61    ldaxr w1, [x19]
  0x80012a8a0:  32010028    orr w8, w1, #0x80000000
  0x80012a8a4:  88097e68    stxr w9, w8, [x19]
  0x80012a8a8:  35ffffa9    cbnz w9, #-12
  0x80012a8ac:  7200783f    tst w1, #0x7fffffff
  0x80012a8b0:  aa1803f5    mov x21, x24
  0x80012a8b4:  aa1a03f6    mov x22, x26
  0x80012a8b8:  5400ade0    b.eq #5564
  0x80012a8bc:  37f83581    tbnz w1, #31, #1712
  0x80012a8c0:  f9400368    ldr x8, [x27]
  0x80012a8c4:  f001c189    adrp x9, #58929152
  0x80012a8c8:  f9400d08    ldr x8, [x8, #24]
  0x80012a8cc:  f9477129    ldr x9, [x9, #3808]
  0x80012a8d0:  eb09011f    cmp x8, x9
  0x80012a8d4:  5400b141    b.ne #5672
  0x80012a8d8:  b001c168    adrp x8, #58904576
  0x80012a8dc:  9103437c    add x28, x27, #208
  0x80012a8e0:  f9418d08    ldr x8, [x8, #792]
  0x80012a8e4:  aa1c03e0    mov x0, x28
  0x80012a8e8:  f9400108    ldr x8, [x8]
  0x80012a8ec:  d63f0100    blr x8
  0x80012a8f0:  b001c168    adrp x8, #58904576
  0x80012a8f4:  39439b61    ldrb w1, [x27, #230]
  0x80012a8f8:  aa1c03e0    mov x0, x28
  0x80012a8fc:  f9419508    ldr x8, [x8, #808]
  0x80012a900:  52800022    mov w2, #1
  0x80012a904:  f9400108    ldr x8, [x8]
  0x80012a908:  d63f0100    blr x8
  0x80012a90c:  b001c168    adrp x8, #58904576
  0x80012a910:  7941cb61    ldrh w1, [x27, #228]
  0x80012a914:  aa1c03e0    mov x0, x28
  0x80012a918:  f9419108    ldr x8, [x8, #800]
  0x80012a91c:  52800022    mov w2, #1
  0x80012a920:  f9400108    ldr x8, [x8]
  0x80012a924:  d63f0100    blr x8
  0x80012a928:  aa1803f5    mov x21, x24
  0x80012a92c:  aa1a03f6    mov x22, x26
  0x80012a930:  885f7e7f    ldxr wzr, [x19]
  0x80012a934:  8808fe7f    stlxr w8, wzr, [x19]
  0x80012a938:  35ffffc8    cbnz w8, #-8
  0x80012a93c:  17fffcf1    b #-3132
  0x80012a940:  36a070cd    tbz w13, #20, #3608
  0x80012a944:  93407dcc    sxtw x12, w14
  0x80012a948:  5280050d    mov w13, #40
  0x80012a94c:  9b2d218c    smaddl x12, w12, w13, x8
  0x80012a950:  f946572d    ldr x13, [x25, #3240]
  0x80012a954:  f9400d8c    ldr x12, [x12, #24]
  0x80012a958:  f940018c    ldr x12, [x12]
  0x80012a95c:  7941098c    ldrh w12, [x12, #132]
  0x80012a960:  d37be98c    lsl x12, x12, #5
  0x80012a964:  b40071ad    cbz x13, #3636
  0x80012a968:  f94089ae    ldr x14, [x13, #272]
  0x80012a96c:  b400008e    cbz x14, #16
  0x80012a970:  f946532f    ldr x15, [x25, #3232]
  0x80012a974:  f9400dce    ldr x14, [x14, #24]
  0x80012a978:  cb0e01ee    sub x14, x15, x14
  0x80012a97c:  f94081ad    ldr x13, [x13, #256]
  0x80012a980:  8b0c01cc    add x12, x14, x12
  0x80012a984:  f86d698c    ldr x12, [x12, x13]
  0x80012a988:  b40070cc    cbz x12, #3608
  0x80012a98c:  2a1f03eb    mov w11, wzr
  0x80012a990:  6b0a013f    cmp w9, w10
  0x80012a994:  f9405eba    ldr x26, [x21, #184]
  0x80012a998:  1a9f8149    csel w9, w10, wzr, hi
  0x80012a99c:  9b332128    smaddl x8, w9, w19, x8
  0x80012a9a0:  f9468729    ldr x9, [x25, #3336]
  0x80012a9a4:  f9400d08    ldr x8, [x8, #24]
  0x80012a9a8:  f9400108    ldr x8, [x8]
  0x80012a9ac:  79410908    ldrh w8, [x8, #132]
  0x80012a9b0:  8b08153b    add x27, x9, x8, lsl #5
  0x80012a9b4:  3700014b    tbnz w11, #0, #40
  0x80012a9b8:  b001c168    adrp x8, #58904576
  0x80012a9bc:  aa1a03e0    mov x0, x26
  0x80012a9c0:  f940ad08    ldr x8, [x8, #344]
  0x80012a9c4:  52800021    mov w1, #1
  0x80012a9c8:  aa1b03e2    mov x2, x27
  0x80012a9cc:  f9400108    ldr x8, [x8]
  0x80012a9d0:  d63f0100    blr x8
  0x80012a9d4:  39722b28    ldrb w8, [x25, #3210]
  0x80012a9d8:  37386f08    tbnz w8, #7, #3552
  0x80012a9dc:  d001c188    adrp x8, #58925056
  0x80012a9e0:  900160a2    adrp x2, #46219264
  0x80012a9e4:  910bb042    add x2, x2, #748
  0x80012a9e8:  f946a108    ldr x8, [x8, #3392]
  0x80012a9ec:  aa1a03e0    mov x0, x26
  0x80012a9f0:  f9400108    ldr x8, [x8]
  0x80012a9f4:  52800021    mov w1, #1
  0x80012a9f8:  528001e3    mov w3, #15
  0x80012a9fc:  52800034    mov w20, #1
  0x80012aa00:  d63f0100    blr x8
  0x80012aa04:  b94c8b28    ldr w8, [x25, #3208]
  0x80012aa08:  36a07048    tbz w8, #20, #3592
  0x80012aa0c:  37b80168    tbnz w8, #23, #44
  0x80012aa10:  39724328    ldrb w8, [x25, #3216]
  0x80012aa14:  7100111f    cmp w8, #4
  0x80012aa18:  54006da1    b.ne #3508
  0x80012aa1c:  9001c168    adrp x8, #58900480
  0x80012aa20:  aa1a03e0    mov x0, x26
  0x80012aa24:  f9470108    ldr x8, [x8, #3584]
  0x80012aa28:  52800201    mov w1, #16
  0x80012aa2c:  aa1b03e2    mov x2, x27
  0x80012aa30:  f9400108    ldr x8, [x8]
  0x80012aa34:  d63f0100    blr x8
  0x80012aa38:  39722b28    ldrb w8, [x25, #3210]
  0x80012aa3c:  f85f83b0    ldur x16, [x29, #-8]
  0x80012aa40:  37286dc8    tbnz w8, #5, #3512
  0x80012aa44:  2a140318    orr w24, w24, w20
  0x80012aa48:  17fffc6c    b #-3664
  0x80012aa4c:  f9406533    ldr x19, [x9, #200]
  0x80012aa50:  52800028    mov w8, #1
  0x80012aa54:  17fffb8c    b #-4560
  0x80012aa58:  36186ebc    tbz w28, #3, #3540
  0x80012aa5c:  b9407188    ldr w8, [x12, #112]
  0x80012aa60:  79555729    ldrh w9, [x25, #2730]
  0x80012aa64:  4b090108    sub w8, w8, w9
  0x80012aa68:  b94a3b29    ldr w9, [x25, #2616]
  0x80012aa6c:  f945232a    ldr x10, [x25, #2624]
  0x80012aa70:  6b08013f    cmp w9, w8
  0x80012aa74:  1a9f8108    csel w8, w8, wzr, hi
  0x80012aa78:  9b332908    smaddl x8, w8, w19, x10
  0x80012aa7c:  b8404d09    ldr w9, [x8, #4]!
  0x80012aa80:  36078c49    tbz w9, #0, #-3704
  0x80012aa84:  12800049    mov w9, #-3
  0x80012aa88:  885f7d0a    ldxr w10, [x8]
  0x80012aa8c:  8a09014a    and x10, x10, x9
  0x80012aa90:  b27f014a    orr x10, x10, #0x2
  0x80012aa94:  880b7d0a    stxr w11, w10, [x8]
  0x80012aa98:  34ff8b8b    cbz w11, #-3728
  0x80012aa9c:  17fffffb    b #-20
  0x80012aaa0:  91038373    add x19, x27, #224
  0x80012aaa4:  88dffe68    ldar w8, [x19]
  0x80012aaa8:  34ff9408    cbz w8, #-3456
  0x80012aaac:  aa1603fa    mov x26, x22
  0x80012aab0:  aa1503f8    mov x24, x21
  0x80012aab4:  885ffe61    ldaxr w1, [x19]
  0x80012aab8:  32010028    orr w8, w1, #0x80000000
  0x80012aabc:  88097e68    stxr w9, w8, [x19]
  0x80012aac0:  35ffffa9    cbnz w9, #-12
  0x80012aac4:  7200783f    tst w1, #0x7fffffff
  0x80012aac8:  aa1803f5    mov x21, x24
  0x80012aacc:  aa1a03f6    mov x22, x26
  0x80012aad0:  54009da0    b.eq #5044
  0x80012aad4:  37f82601    tbnz w1, #31, #1216
  0x80012aad8:  f9400368    ldr x8, [x27]
  0x80012aadc:  f001c189    adrp x9, #58929152
  0x80012aae0:  f9400d08    ldr x8, [x8, #24]
  0x80012aae4:  f9477129    ldr x9, [x9, #3808]
  0x80012aae8:  eb09011f    cmp x8, x9
  0x80012aaec:  5400a0e1    b.ne #5148
  0x80012aaf0:  b001c168    adrp x8, #58904576
  0x80012aaf4:  9103437c    add x28, x27, #208
  0x80012aaf8:  f9418d08    ldr x8, [x8, #792]
  0x80012aafc:  aa1c03e0    mov x0, x28
  0x80012ab00:  f9400108    ldr x8, [x8]
  0x80012ab04:  d63f0100    blr x8
  0x80012ab08:  b001c168    adrp x8, #58904576
  0x80012ab0c:  39439b61    ldrb w1, [x27, #230]
  0x80012ab10:  aa1c03e0    mov x0, x28
  0x80012ab14:  f9419508    ldr x8, [x8, #808]
  0x80012ab18:  52800022    mov w2, #1
  0x80012ab1c:  f9400108    ldr x8, [x8]
  0x80012ab20:  d63f0100    blr x8
  0x80012ab24:  b001c168    adrp x8, #58904576
  0x80012ab28:  7941cb61    ldrh w1, [x27, #228]
  0x80012ab2c:  aa1c03e0    mov x0, x28
  0x80012ab30:  f9419108    ldr x8, [x8, #800]
  0x80012ab34:  52800022    mov w2, #1
  0x80012ab38:  f9400108    ldr x8, [x8]
  0x80012ab3c:  d63f0100    blr x8
  0x80012ab40:  aa1803f5    mov x21, x24
  0x80012ab44:  aa1a03f6    mov x22, x26
  0x80012ab48:  885f7e7f    ldxr wzr, [x19]
  0x80012ab4c:  8808fe7f    stlxr w8, wzr, [x19]
  0x80012ab50:  35ffffc8    cbnz w8, #-8
  0x80012ab54:  17fffc75    b #-3628
  0x80012ab58:  b9407188    ldr w8, [x12, #112]
  0x80012ab5c:  79555729    ldrh w9, [x25, #2730]
  0x80012ab60:  4b090108    sub w8, w8, w9
  0x80012ab64:  b94a3b29    ldr w9, [x25, #2616]
  0x80012ab68:  f945232a    ldr x10, [x25, #2624]
  0x80012ab6c:  6b08013f    cmp w9, w8
  0x80012ab70:  1a9f8108    csel w8, w8, wzr, hi
  0x80012ab74:  9b332908    smaddl x8, w8, w19, x10
  0x80012ab78:  b8404d09    ldr w9, [x8, #4]!
  0x80012ab7c:  360784a9    tbz w9, #0, #-3948
  0x80012ab80:  12800049    mov w9, #-3
  0x80012ab84:  885f7d0a    ldxr w10, [x8]
  0x80012ab88:  8a09014a    and x10, x10, x9
  0x80012ab8c:  b27f014a    orr x10, x10, #0x2
  0x80012ab90:  880b7d0a    stxr w11, w10, [x8]
  0x80012ab94:  34ff83eb    cbz w11, #-3972
  0x80012ab98:  17fffffb    b #-20
  0x80012ab9c:  36a07cac    tbz w12, #20, #3988
  0x80012aba0:  93407dac    sxtw x12, w13
  0x80012aba4:  5280050d    mov w13, #40
  0x80012aba8:  9b2d218c    smaddl x12, w12, w13, x8
  0x80012abac:  f946572d    ldr x13, [x25, #3240]
  0x80012abb0:  f9400d8c    ldr x12, [x12, #24]
  0x80012abb4:  f940018c    ldr x12, [x12]
  0x80012abb8:  7941098c    ldrh w12, [x12, #132]
  0x80012abbc:  d37be98c    lsl x12, x12, #5
  0x80012abc0:  b4007d8d    cbz x13, #4016
  0x80012abc4:  f94089ae    ldr x14, [x13, #272]
  0x80012abc8:  b400008e    cbz x14, #16
  0x80012abcc:  f946532f    ldr x15, [x25, #3232]
  0x80012abd0:  f9400dce    ldr x14, [x14, #24]
  0x80012abd4:  cb0e01ee    sub x14, x15, x14
  0x80012abd8:  f94081ad    ldr x13, [x13, #256]
  0x80012abdc:  8b0c01cc    add x12, x14, x12
  0x80012abe0:  f86d698c    ldr x12, [x12, x13]
  0x80012abe4:  b40010ec    cbz x12, #540
  0x80012abe8:  2a1f03eb    mov w11, wzr
  0x80012abec:  6b0a013f    cmp w9, w10
  0x80012abf0:  f9405eba    ldr x26, [x21, #184]
  0x80012abf4:  1a9f8149    csel w9, w10, wzr, hi
  0x80012abf8:  9b332128    smaddl x8, w9, w19, x8
  0x80012abfc:  f9468729    ldr x9, [x25, #3336]
  0x80012ac00:  f9400d08    ldr x8, [x8, #24]
  0x80012ac04:  f9400108    ldr x8, [x8]
  0x80012ac08:  79410908    ldrh w8, [x8, #132]
  0x80012ac0c:  8b08153b    add x27, x9, x8, lsl #5
  0x80012ac10:  3700014b    tbnz w11, #0, #40
  0x80012ac14:  b001c168    adrp x8, #58904576
  0x80012ac18:  aa1a03e0    mov x0, x26
  0x80012ac1c:  f940ad08    ldr x8, [x8, #344]
  0x80012ac20:  52800021    mov w1, #1
  0x80012ac24:  aa1b03e2    mov x2, x27
  0x80012ac28:  f9400108    ldr x8, [x8]
  0x80012ac2c:  d63f0100    blr x8
  0x80012ac30:  39722b28    ldrb w8, [x25, #3210]
  0x80012ac34:  37387a28    tbnz w8, #7, #3908
  0x80012ac38:  39430288    ldrb w8, [x20, #192]
  0x80012ac3c:  1e2e1000    fmov s0, #1.00000000
  0x80012ac40:  aa1a03e0    mov x0, x26
  0x80012ac44:  52800021    mov w1, #1
  0x80012ac48:  2a1f03e2    mov w2, wzr
  0x80012ac4c:  121f1908    and w8, w8, #0xfe
  0x80012ac50:  7101711f    cmp w8, #92
  0x80012ac54:  52801fe8    mov w8, #255
  0x80012ac58:  1a9f0103    csel w3, w8, wzr, eq
  0x80012ac5c:  d001c188    adrp x8, #58925056
  0x80012ac60:  f9415908    ldr x8, [x8, #688]
  0x80012ac64:  f9400108    ldr x8, [x8]
  0x80012ac68:  d63f0100    blr x8
  0x80012ac6c:  b94c8b28    ldr w8, [x25, #3208]
  0x80012ac70:  f85f83b0    ldur x16, [x29, #-8]
  0x80012ac74:  36a7a088    tbz w8, #20, #-3056
  0x80012ac78:  37b80188    tbnz w8, #23, #48
  0x80012ac7c:  39724328    ldrb w8, [x25, #3216]
  0x80012ac80:  7100111f    cmp w8, #4
  0x80012ac84:  54007841    b.ne #3848
  0x80012ac88:  9001c168    adrp x8, #58900480
  0x80012ac8c:  aa1a03e0    mov x0, x26
  0x80012ac90:  f9470108    ldr x8, [x8, #3584]
  0x80012ac94:  52800201    mov w1, #16
  0x80012ac98:  aa1b03e2    mov x2, x27
  0x80012ac9c:  f9400108    ldr x8, [x8]
  0x80012aca0:  d63f0100    blr x8
  0x80012aca4:  f85f83b0    ldur x16, [x29, #-8]
  0x80012aca8:  39722b28    ldrb w8, [x25, #3210]
  0x80012acac:  362f9ec8    tbz w8, #5, #-3112
  0x80012acb0:  b001c168    adrp x8, #58904576
  0x80012acb4:  aa1a03e0    mov x0, x26
  0x80012acb8:  f940b108    ldr x8, [x8, #352]
  0x80012acbc:  52800021    mov w1, #1
  0x80012acc0:  f9400108    ldr x8, [x8]
  0x80012acc4:  d63f0100    blr x8
  0x80012acc8:  f85f83b0    ldur x16, [x29, #-8]
  0x80012accc:  17fffcee    b #-3144
  0x80012acd0:  36a0774d    tbz w13, #20, #3816
  0x80012acd4:  93407dcc    sxtw x12, w14
  0x80012acd8:  5280050d    mov w13, #40
  0x80012acdc:  9b2d218c    smaddl x12, w12, w13, x8
  0x80012ace0:  f946572d    ldr x13, [x25, #3240]
  0x80012ace4:  f9400d8c    ldr x12, [x12, #24]
  0x80012ace8:  f940018c    ldr x12, [x12]
  0x80012acec:  7941098c    ldrh w12, [x12, #132]
  0x80012acf0:  d37be98c    lsl x12, x12, #5
  0x80012acf4:  b400782d    cbz x13, #3844
  0x80012acf8:  f94089ae    ldr x14, [x13, #272]
  0x80012acfc:  b400008e    cbz x14, #16
  0x80012ad00:  f946532f    ldr x15, [x25, #3232]
  0x80012ad04:  f9400dce    ldr x14, [x14, #24]
  0x80012ad08:  cb0e01ee    sub x14, x15, x14
  0x80012ad0c:  f94081ad    ldr x13, [x13, #256]
  0x80012ad10:  8b0c01cc    add x12, x14, x12
  0x80012ad14:  f86d698c    ldr x12, [x12, x13]
  0x80012ad18:  b400082c    cbz x12, #260
  0x80012ad1c:  2a1f03eb    mov w11, wzr
  0x80012ad20:  6b0a013f    cmp w9, w10
  0x80012ad24:  f9405eba    ldr x26, [x21, #184]
  0x80012ad28:  1a9f8149    csel w9, w10, wzr, hi
  0x80012ad2c:  9b332128    smaddl x8, w9, w19, x8
  0x80012ad30:  f9468729    ldr x9, [x25, #3336]
  0x80012ad34:  f9400d08    ldr x8, [x8, #24]
  0x80012ad38:  f9400108    ldr x8, [x8]
  0x80012ad3c:  79410908    ldrh w8, [x8, #132]
  0x80012ad40:  8b08153b    add x27, x9, x8, lsl #5
  0x80012ad44:  3700014b    tbnz w11, #0, #40
  0x80012ad48:  b001c168    adrp x8, #58904576
  0x80012ad4c:  aa1a03e0    mov x0, x26
  0x80012ad50:  f940ad08    ldr x8, [x8, #344]
  0x80012ad54:  52800021    mov w1, #1
  0x80012ad58:  aa1b03e2    mov x2, x27
  0x80012ad5c:  f9400108    ldr x8, [x8]
  0x80012ad60:  d63f0100    blr x8
  0x80012ad64:  39722b28    ldrb w8, [x25, #3210]
  0x80012ad68:  37387568    tbnz w8, #7, #3756
  0x80012ad6c:  d001c188    adrp x8, #58925056
  0x80012ad70:  900160a2    adrp x2, #46219264
  0x80012ad74:  910bb042    add x2, x2, #748
  0x80012ad78:  f946a108    ldr x8, [x8, #3392]
  0x80012ad7c:  aa1a03e0    mov x0, x26
  0x80012ad80:  f9400108    ldr x8, [x8]
  0x80012ad84:  52800041    mov w1, #2
  0x80012ad88:  528001e3    mov w3, #15
  0x80012ad8c:  d63f0100    blr x8
  0x80012ad90:  b94c8b28    ldr w8, [x25, #3208]
  0x80012ad94:  36a074a8    tbz w8, #20, #3732
  0x80012ad98:  37b80168    tbnz w8, #23, #44
  0x80012ad9c:  39724328    ldrb w8, [x25, #3216]
  0x80012ada0:  7100111f    cmp w8, #4
  0x80012ada4:  54007461    b.ne #3724
  0x80012ada8:  9001c168    adrp x8, #58900480
  0x80012adac:  aa1a03e0    mov x0, x26
  0x80012adb0:  f9470108    ldr x8, [x8, #3584]
  0x80012adb4:  52800201    mov w1, #16
  0x80012adb8:  aa1b03e2    mov x2, x27
  0x80012adbc:  f9400108    ldr x8, [x8]
  0x80012adc0:  d63f0100    blr x8
  0x80012adc4:  39722b28    ldrb w8, [x25, #3210]
  0x80012adc8:  f85f83b0    ldur x16, [x29, #-8]
  0x80012adcc:  37287488    tbnz w8, #5, #3728
  0x80012add0:  52800034    mov w20, #1
  0x80012add4:  17fffeab    b #-1364
  0x80012add8:  12800048    mov w8, #-3
  0x80012addc:  2a1f03f8    mov w24, wzr
  0x80012ade0:  885f7d69    ldxr w9, [x11]
  0x80012ade4:  8a080129    and x9, x9, x8
  0x80012ade8:  b27f0129    orr x9, x9, #0x2
  0x80012adec:  880a7d69    stxr w10, w9, [x11]
  0x80012adf0:  34ff906a    cbz w10, #-3572
  0x80012adf4:  17fffffb    b #-20
  0x80012adf8:  2a1f03f4    mov w20, wzr
  0x80012adfc:  17fffe8c    b #-1488
  0x80012ae00:  12800048    mov w8, #-3
  0x80012ae04:  885f7d69    ldxr w9, [x11]
  0x80012ae08:  8a080129    and x9, x9, x8
  0x80012ae0c:  b27f0129    orr x9, x9, #0x2
  0x80012ae10:  880a7d69    stxr w10, w9, [x11]
  0x80012ae14:  34ff936a    cbz w10, #-3476
  0x80012ae18:  17fffffb    b #-20
  0x80012ae1c:  12800048    mov w8, #-3
  0x80012ae20:  2a1f03f4    mov w20, wzr
  0x80012ae24:  885f7d69    ldxr w9, [x11]
  0x80012ae28:  8a080129    and x9, x9, x8
  0x80012ae2c:  b27f0129    orr x9, x9, #0x2
  0x80012ae30:  880a7d69    stxr w10, w9, [x11]
  0x80012ae34:  34ffd26a    cbz w10, #-1460
  0x80012ae38:  17fffffb    b #-20
  0x80012ae3c:  12800048    mov w8, #-3
  0x80012ae40:  2a1f03f4    mov w20, wzr
  0x80012ae44:  885f7d69    ldxr w9, [x11]
  0x80012ae48:  8a080129    and x9, x9, x8
  0x80012ae4c:  b27f0129    orr x9, x9, #0x2
  0x80012ae50:  880a7d69    stxr w10, w9, [x11]
  0x80012ae54:  34ffceca    cbz w10, #-1576
  0x80012ae58:  17fffffb    b #-20
  0x80012ae5c:  885f7f9f    ldxr wzr, [x28]
  0x80012ae60:  88087f9f    stxr w8, wzr, [x28]
  0x80012ae64:  35ffffc8    cbnz w8, #-8
  0x80012ae68:  17fffb05    b #-5100
  0x80012ae6c:  885f7eff    ldxr wzr, [x23]
  0x80012ae70:  88087eff    stxr w8, wzr, [x23]
  0x80012ae74:  35ffffc8    cbnz w8, #-8
  0x80012ae78:  17fffb3e    b #-4872
  0x80012ae7c:  f9400be0    ldr x0, [sp, #16]
  0x80012ae80:  9403c18b    bl #984620
  0x80012ae84:  b9400388    ldr w8, [x28]
  0x80012ae88:  37ffffa8    tbnz w8, #31, #-12
  0x80012ae8c:  f85f83ab    ldur x11, [x29, #-8]
  0x80012ae90:  885fff9f    ldaxr wzr, [x28]
  0x80012ae94:  88087f9f    stxr w8, wzr, [x28]
  0x80012ae98:  35ffffc8    cbnz w8, #-8
  0x80012ae9c:  17fffaf8    b #-5152
  0x80012aea0:  f9400be0    ldr x0, [sp, #16]
  0x80012aea4:  9403c182    bl #984584
  0x80012aea8:  b94002e8    ldr w8, [x23]
  0x80012aeac:  37ffffa8    tbnz w8, #31, #-12
  0x80012aeb0:  b94037fc    ldr w28, [sp, #52]
  0x80012aeb4:  885ffeff    ldaxr wzr, [x23]
  0x80012aeb8:  88087eff    stxr w8, wzr, [x23]
  0x80012aebc:  35ffffc8    cbnz w8, #-8
  0x80012aec0:  17fffb2c    b #-4944
  0x80012aec4:  f9400be0    ldr x0, [sp, #16]
  0x80012aec8:  9403c179    bl #984548
  0x80012aecc:  b9400268    ldr w8, [x19]
  0x80012aed0:  37ffffa8    tbnz w8, #31, #-12
  0x80012aed4:  aa1803f5    mov x21, x24
  0x80012aed8:  aa1a03f6    mov x22, x26
  0x80012aedc:  885ffe7f    ldaxr wzr, [x19]
  0x80012aee0:  88087e7f    stxr w8, wzr, [x19]
  0x80012aee4:  35ffffc8    cbnz w8, #-8
  0x80012aee8:  17fffb84    b #-4592
  0x80012aeec:  f9400be0    ldr x0, [sp, #16]
  0x80012aef0:  9403c16f    bl #984508
  0x80012aef4:  b9400268    ldr w8, [x19]
  0x80012aef8:  37ffffa8    tbnz w8, #31, #-12
  0x80012aefc:  aa1803f5    mov x21, x24
  0x80012af00:  aa1a03f6    mov x22, x26
  0x80012af04:  885ffe7f    ldaxr wzr, [x19]
  0x80012af08:  88087e7f    stxr w8, wzr, [x19]
  0x80012af0c:  35ffffc8    cbnz w8, #-8
  0x80012af10:  17fffb82    b #-4600
  0x80012af14:  f9400be0    ldr x0, [sp, #16]
  0x80012af18:  9403c165    bl #984468
  0x80012af1c:  b9400268    ldr w8, [x19]
  0x80012af20:  37ffffa8    tbnz w8, #31, #-12
  0x80012af24:  aa1803f5    mov x21, x24
  0x80012af28:  aa1a03f6    mov x22, x26
  0x80012af2c:  885ffe7f    ldaxr wzr, [x19]
  0x80012af30:  88087e7f    stxr w8, wzr, [x19]
  0x80012af34:  35ffffc8    cbnz w8, #-8
  0x80012af38:  17fffb74    b #-4656
  0x80012af3c:  f9400be0    ldr x0, [sp, #16]
  0x80012af40:  9403c15b    bl #984428
  0x80012af44:  b9400268    ldr w8, [x19]
  0x80012af48:  37ffffa8    tbnz w8, #31, #-12
  0x80012af4c:  aa1803f5    mov x21, x24
  0x80012af50:  aa1a03f6    mov x22, x26
  0x80012af54:  885ffe7f    ldaxr wzr, [x19]
  0x80012af58:  88087e7f    stxr w8, wzr, [x19]
  0x80012af5c:  35ffffc8    cbnz w8, #-8
  0x80012af60:  17fffb6c    b #-4688
  0x80012af64:  f9400be0    ldr x0, [sp, #16]
  0x80012af68:  9403c151    bl #984388
  0x80012af6c:  b9400268    ldr w8, [x19]
  0x80012af70:  37ffffa8    tbnz w8, #31, #-12
  0x80012af74:  aa1803f5    mov x21, x24
  0x80012af78:  aa1a03f6    mov x22, x26
  0x80012af7c:  885ffe7f    ldaxr wzr, [x19]
  0x80012af80:  88087e7f    stxr w8, wzr, [x19]
  0x80012af84:  35ffffc8    cbnz w8, #-8
  0x80012af88:  17fffb5e    b #-4744
  0x80012af8c:  f9400be0    ldr x0, [sp, #16]
  0x80012af90:  9403c147    bl #984348
  0x80012af94:  b9400268    ldr w8, [x19]
  0x80012af98:  37ffffa8    tbnz w8, #31, #-12
  0x80012af9c:  aa1803f5    mov x21, x24
  0x80012afa0:  aa1a03f6    mov x22, x26
  0x80012afa4:  885ffe7f    ldaxr wzr, [x19]
  0x80012afa8:  88087e7f    stxr w8, wzr, [x19]
  0x80012afac:  35ffffc8    cbnz w8, #-8
  0x80012afb0:  17fffb5e    b #-4744
  0x80012afb4:  f9406533    ldr x19, [x9, #200]
  0x80012afb8:  52800028    mov w8, #1
  0x80012afbc:  17fffa38    b #-5920
  0x80012afc0:  37302f9c    tbnz w28, #6, #1520
  0x80012afc4:  b94c8b2d    ldr w13, [x25, #3208]
  0x80012afc8:  363001ad    tbz w13, #6, #52
  0x80012afcc:  b9407188    ldr w8, [x12, #112]
  0x80012afd0:  79555729    ldrh w9, [x25, #2730]
  0x80012afd4:  4b09010a    sub w10, w8, w9
  0x80012afd8:  b94a3b29    ldr w9, [x25, #2616]
  0x80012afdc:  f9452328    ldr x8, [x25, #2624]
  0x80012afe0:  6b0a013f    cmp w9, w10
  0x80012afe4:  1a9f814e    csel w14, w10, wzr, hi
  0x80012afe8:  9b3321cb    smaddl x11, w14, w19, x8
  0x80012afec:  b8404d6f    ldr w15, [x11, #4]!
  0x80012aff0:  3600006f    tbz w15, #0, #12
  0x80012aff4:  b940016f    ldr w15, [x11]
  0x80012aff8:  360819af    tbz w15, #1, #820
  0x80012affc:  b94037fc    ldr w28, [sp, #52]
  0x80012b000:  f85f83b0    ldur x16, [x29, #-8]
  0x80012b004:  17fffb07    b #-5092
  0x80012b008:  aa1a03e0    mov x0, x26
  0x80012b00c:  d63f0100    blr x8
  0x80012b010:  17fffa95    b #-5548
  0x80012b014:  91038373    add x19, x27, #224
  0x80012b018:  88dffe68    ldar w8, [x19]
  0x80012b01c:  34ff6828    cbz w8, #-4860
  0x80012b020:  aa1603fa    mov x26, x22
  0x80012b024:  aa1503f8    mov x24, x21
  0x80012b028:  885ffe61    ldaxr w1, [x19]
  0x80012b02c:  32010028    orr w8, w1, #0x80000000
  0x80012b030:  88097e68    stxr w9, w8, [x19]
  0x80012b034:  35ffffa9    cbnz w9, #-12
  0x80012b038:  7200783f    tst w1, #0x7fffffff
  0x80012b03c:  aa1803f5    mov x21, x24
  0x80012b040:  aa1a03f6    mov x22, x26
  0x80012b044:  54007280    b.eq #3664
  0x80012b048:  37f80461    tbnz w1, #31, #140
  0x80012b04c:  f9400368    ldr x8, [x27]
  0x80012b050:  d001c189    adrp x9, #58925056
  0x80012b054:  f9400d08    ldr x8, [x8, #24]
  0x80012b058:  f9477129    ldr x9, [x9, #3808]
  0x80012b05c:  eb09011f    cmp x8, x9
  0x80012b060:  540075a1    b.ne #3764
  0x80012b064:  9001c168    adrp x8, #58900480
  0x80012b068:  9103437c    add x28, x27, #208
  0x80012b06c:  f9418d08    ldr x8, [x8, #792]
  0x80012b070:  aa1c03e0    mov x0, x28
  0x80012b074:  f9400108    ldr x8, [x8]
  0x80012b078:  d63f0100    blr x8
  0x80012b07c:  9001c168    adrp x8, #58900480
  0x80012b080:  39439b61    ldrb w1, [x27, #230]
  0x80012b084:  aa1c03e0    mov x0, x28
  0x80012b088:  f9419508    ldr x8, [x8, #808]
  0x80012b08c:  52800022    mov w2, #1
  0x80012b090:  f9400108    ldr x8, [x8]
  0x80012b094:  d63f0100    blr x8
  0x80012b098:  9001c168    adrp x8, #58900480
  0x80012b09c:  7941cb61    ldrh w1, [x27, #228]
  0x80012b0a0:  aa1c03e0    mov x0, x28
  0x80012b0a4:  f9419108    ldr x8, [x8, #800]
  0x80012b0a8:  52800022    mov w2, #1
  0x80012b0ac:  f9400108    ldr x8, [x8]
  0x80012b0b0:  d63f0100    blr x8
  0x80012b0b4:  aa1803f5    mov x21, x24
  0x80012b0b8:  aa1a03f6    mov x22, x26
  0x80012b0bc:  885f7e7f    ldxr wzr, [x19]
  0x80012b0c0:  8808fe7f    stlxr w8, wzr, [x19]
  0x80012b0c4:  35ffffc8    cbnz w8, #-8
  0x80012b0c8:  17fffb16    b #-5032
  0x80012b0cc:  f9400be0    ldr x0, [sp, #16]
  0x80012b0d0:  9403c0f7    bl #984028
  0x80012b0d4:  b9400268    ldr w8, [x19]
  0x80012b0d8:  37ffffa8    tbnz w8, #31, #-12
  0x80012b0dc:  aa1803f5    mov x21, x24
  0x80012b0e0:  aa1a03f6    mov x22, x26
  0x80012b0e4:  885ffe7f    ldaxr wzr, [x19]
  0x80012b0e8:  88087e7f    stxr w8, wzr, [x19]
  0x80012b0ec:  35ffffc8    cbnz w8, #-8
  0x80012b0f0:  17fffb0c    b #-5072
  0x80012b0f4:  f0016089    adrp x9, #46215168
  0x80012b0f8:  910b9129    add x9, x9, #740
  0x80012b0fc:  1000008a    adr x10, #16
  0x80012b100:  3868692b    ldrb w11, [x9, x8]
  0x80012b104:  8b0b094a    add x10, x10, x11, lsl #2
  0x80012b108:  d61f0140    br x10
  0x80012b10c:  f94013e9    ldr x9, [sp, #32]
  0x80012b110:  bd400ec2    ldr s2, [x22, #12]
  0x80012b114:  bd401123    ldr s3, [x9, #16]
  0x80012b118:  1e213863    fsub s3, s3, s1
  0x80012b11c:  1e233842    fsub s2, s2, s3
  0x80012b120:  1e204003    fmov s3, s0
  0x80012b124:  1e213842    fsub s2, s2, s1
  0x80012b128:  17fffb0d    b #-5068
  0x80012b12c:  f9400308    ldr x8, [x24]
  0x80012b130:  aa1803e0    mov x0, x24
  0x80012b134:  aa1503e1    mov x1, x21
  0x80012b138:  f9401508    ldr x8, [x8, #40]
  0x80012b13c:  d63f0100    blr x8
  0x80012b140:  295e26a8    ldp w8, w9, [x21, #240]
  0x80012b144:  aa1503ea    mov x10, x21
  0x80012b148:  6b09011f    cmp w8, w9
  0x80012b14c:  54006eaa    b.ge #3540
  0x80012b150:  f9407d49    ldr x9, [x10, #248]
  0x80012b154:  93407d08    sxtw x8, w8
  0x80012b158:  aa0a03f5    mov x21, x10
  0x80012b15c:  b94037fc    ldr w28, [sp, #52]
  0x80012b160:  f8287938    str x24, [x9, x8, lsl #3]
  0x80012b164:  b940f148    ldr w8, [x10, #240]
  0x80012b168:  11000508    add w8, w8, #1
  0x80012b16c:  b900f148    str w8, [x10, #240]
  0x80012b170:  f85f83ab    ldur x11, [x29, #-8]
  0x80012b174:  17fff9d7    b #-6308
  0x80012b178:  aa1a03e0    mov x0, x26
  0x80012b17c:  d63f0100    blr x8
  0x80012b180:  17fffa79    b #-5660
  0x80012b184:  aa1603fa    mov x26, x22
  0x80012b188:  aa1503f8    mov x24, x21
  0x80012b18c:  885ffe61    ldaxr w1, [x19]
  0x80012b190:  32010028    orr w8, w1, #0x80000000
  0x80012b194:  88097e68    stxr w9, w8, [x19]
  0x80012b198:  35ffffa9    cbnz w9, #-12
  0x80012b19c:  7200783f    tst w1, #0x7fffffff
  0x80012b1a0:  aa1803f5    mov x21, x24
  0x80012b1a4:  aa1a03f6    mov x22, x26
  0x80012b1a8:  540067e0    b.eq #3324
  0x80012b1ac:  37f80461    tbnz w1, #31, #140
  0x80012b1b0:  f9400368    ldr x8, [x27]
  0x80012b1b4:  d001c189    adrp x9, #58925056
  0x80012b1b8:  f9400d08    ldr x8, [x8, #24]
  0x80012b1bc:  f9477129    ldr x9, [x9, #3808]
  0x80012b1c0:  eb09011f    cmp x8, x9
  0x80012b1c4:  54006b41    b.ne #3432
  0x80012b1c8:  9001c168    adrp x8, #58900480
  0x80012b1cc:  9103437c    add x28, x27, #208
  0x80012b1d0:  f9418d08    ldr x8, [x8, #792]
  0x80012b1d4:  aa1c03e0    mov x0, x28
  0x80012b1d8:  f9400108    ldr x8, [x8]
  0x80012b1dc:  d63f0100    blr x8
  0x80012b1e0:  9001c168    adrp x8, #58900480
  0x80012b1e4:  39439b61    ldrb w1, [x27, #230]
  0x80012b1e8:  aa1c03e0    mov x0, x28
  0x80012b1ec:  f9419508    ldr x8, [x8, #808]
  0x80012b1f0:  52800022    mov w2, #1
  0x80012b1f4:  f9400108    ldr x8, [x8]
  0x80012b1f8:  d63f0100    blr x8
  0x80012b1fc:  9001c168    adrp x8, #58900480
  0x80012b200:  7941cb61    ldrh w1, [x27, #228]
  0x80012b204:  aa1c03e0    mov x0, x28
  0x80012b208:  f9419108    ldr x8, [x8, #800]
  0x80012b20c:  52800022    mov w2, #1
  0x80012b210:  f9400108    ldr x8, [x8]
  0x80012b214:  d63f0100    blr x8
  0x80012b218:  aa1803f5    mov x21, x24
  0x80012b21c:  aa1a03f6    mov x22, x26
  0x80012b220:  885f7e7f    ldxr wzr, [x19]
  0x80012b224:  8808fe7f    stlxr w8, wzr, [x19]
  0x80012b228:  35ffffc8    cbnz w8, #-8
  0x80012b22c:  17fffab1    b #-5436
  0x80012b230:  f9400be0    ldr x0, [sp, #16]
  0x80012b234:  9403c09e    bl #983672
  0x80012b238:  b9400268    ldr w8, [x19]
  0x80012b23c:  37ffffa8    tbnz w8, #31, #-12
  0x80012b240:  aa1803f5    mov x21, x24
  0x80012b244:  aa1a03f6    mov x22, x26
  0x80012b248:  885ffe7f    ldaxr wzr, [x19]
  0x80012b24c:  88087e7f    stxr w8, wzr, [x19]
  0x80012b250:  35ffffc8    cbnz w8, #-8
  0x80012b254:  17fffaa7    b #-5476
  0x80012b258:  aa1603fa    mov x26, x22
  0x80012b25c:  aa1503f8    mov x24, x21
  0x80012b260:  885ffe61    ldaxr w1, [x19]
  0x80012b264:  32010028    orr w8, w1, #0x80000000
  0x80012b268:  88097e68    stxr w9, w8, [x19]
  0x80012b26c:  35ffffa9    cbnz w9, #-12
  0x80012b270:  7200783f    tst w1, #0x7fffffff
  0x80012b274:  aa1803f5    mov x21, x24
  0x80012b278:  aa1a03f6    mov x22, x26
  0x80012b27c:  540061c0    b.eq #3128
  0x80012b280:  37f80461    tbnz w1, #31, #140
  0x80012b284:  f9400368    ldr x8, [x27]
  0x80012b288:  d001c189    adrp x9, #58925056
  0x80012b28c:  f9400d08    ldr x8, [x8, #24]
  0x80012b290:  f9477929    ldr x9, [x9, #3824]
  0x80012b294:  eb09011f    cmp x8, x9
  0x80012b298:  54006501    b.ne #3232
  0x80012b29c:  9001c168    adrp x8, #58900480
  0x80012b2a0:  9103437c    add x28, x27, #208
  0x80012b2a4:  f9418d08    ldr x8, [x8, #792]
  0x80012b2a8:  aa1c03e0    mov x0, x28
  0x80012b2ac:  f9400108    ldr x8, [x8]
  0x80012b2b0:  d63f0100    blr x8
  0x80012b2b4:  9001c168    adrp x8, #58900480
  0x80012b2b8:  39439b61    ldrb w1, [x27, #230]
  0x80012b2bc:  aa1c03e0    mov x0, x28
  0x80012b2c0:  f9419508    ldr x8, [x8, #808]
  0x80012b2c4:  2a1f03e2    mov w2, wzr
  0x80012b2c8:  f9400108    ldr x8, [x8]
  0x80012b2cc:  d63f0100    blr x8
  0x80012b2d0:  9001c168    adrp x8, #58900480
  0x80012b2d4:  7941cb61    ldrh w1, [x27, #228]
  0x80012b2d8:  aa1c03e0    mov x0, x28
  0x80012b2dc:  f9419108    ldr x8, [x8, #800]
  0x80012b2e0:  52800022    mov w2, #1
  0x80012b2e4:  f9400108    ldr x8, [x8]
  0x80012b2e8:  d63f0100    blr x8
  0x80012b2ec:  aa1803f5    mov x21, x24
  0x80012b2f0:  aa1a03f6    mov x22, x26
  0x80012b2f4:  885f7e7f    ldxr wzr, [x19]
  0x80012b2f8:  8808fe7f    stlxr w8, wzr, [x19]
  0x80012b2fc:  35ffffc8    cbnz w8, #-8
  0x80012b300:  17fffa8f    b #-5572
  0x80012b304:  f9400be0    ldr x0, [sp, #16]
  0x80012b308:  9403c069    bl #983460
  0x80012b30c:  b9400268    ldr w8, [x19]
  0x80012b310:  37ffffa8    tbnz w8, #31, #-12
  0x80012b314:  aa1803f5    mov x21, x24
  0x80012b318:  aa1a03f6    mov x22, x26
  0x80012b31c:  885ffe7f    ldaxr wzr, [x19]
  0x80012b320:  88087e7f    stxr w8, wzr, [x19]
  0x80012b324:  35ffffc8    cbnz w8, #-8
  0x80012b328:  17fffa85    b #-5612
  0x80012b32c:  36a060cd    tbz w13, #20, #3096
  0x80012b330:  93407dcc    sxtw x12, w14
  0x80012b334:  5280050d    mov w13, #40
  0x80012b338:  9b2d218c    smaddl x12, w12, w13, x8
  0x80012b33c:  f946572d    ldr x13, [x25, #3240]
  0x80012b340:  f9400d8c    ldr x12, [x12, #24]
  0x80012b344:  f940018c    ldr x12, [x12]
  0x80012b348:  7941098c    ldrh w12, [x12, #132]
  0x80012b34c:  d37be98c    lsl x12, x12, #5
  0x80012b350:  b40056ed    cbz x13, #2780
  0x80012b354:  f94089ae    ldr x14, [x13, #272]
  0x80012b358:  b400008e    cbz x14, #16
  0x80012b35c:  f946532f    ldr x15, [x25, #3232]
  0x80012b360:  f9400dce    ldr x14, [x14, #24]
  0x80012b364:  cb0e01ee    sub x14, x15, x14
  0x80012b368:  f94081ad    ldr x13, [x13, #256]
  0x80012b36c:  8b0c01cc    add x12, x14, x12
  0x80012b370:  f86d698c    ldr x12, [x12, x13]
  0x80012b374:  b400446c    cbz x12, #2188
  0x80012b378:  2a1f03eb    mov w11, wzr
  0x80012b37c:  6b0a013f    cmp w9, w10
  0x80012b380:  f9405eba    ldr x26, [x21, #184]
  0x80012b384:  1a9f8149    csel w9, w10, wzr, hi
  0x80012b388:  9b332128    smaddl x8, w9, w19, x8
  0x80012b38c:  f9468729    ldr x9, [x25, #3336]
  0x80012b390:  f9400d08    ldr x8, [x8, #24]
  0x80012b394:  f9400108    ldr x8, [x8]
  0x80012b398:  79410908    ldrh w8, [x8, #132]
  0x80012b39c:  8b08153b    add x27, x9, x8, lsl #5
  0x80012b3a0:  3700014b    tbnz w11, #0, #40
  0x80012b3a4:  9001c168    adrp x8, #58900480
  0x80012b3a8:  aa1a03e0    mov x0, x26
  0x80012b3ac:  f940ad08    ldr x8, [x8, #344]
  0x80012b3b0:  52800021    mov w1, #1
  0x80012b3b4:  aa1b03e2    mov x2, x27
  0x80012b3b8:  f9400108    ldr x8, [x8]
  0x80012b3bc:  d63f0100    blr x8
  0x80012b3c0:  39722b28    ldrb w8, [x25, #3210]
  0x80012b3c4:  37385da8    tbnz w8, #7, #2996
  0x80012b3c8:  b001c188    adrp x8, #58920960
  0x80012b3cc:  f0016082    adrp x2, #46215168
  0x80012b3d0:  910bb042    add x2, x2, #748
  0x80012b3d4:  f946a108    ldr x8, [x8, #3392]
  0x80012b3d8:  aa1a03e0    mov x0, x26
  0x80012b3dc:  f9400108    ldr x8, [x8]
  0x80012b3e0:  528000c1    mov w1, #6
  0x80012b3e4:  528001e3    mov w3, #15
  0x80012b3e8:  d63f0100    blr x8
  0x80012b3ec:  b94c8b28    ldr w8, [x25, #3208]
  0x80012b3f0:  36a001c8    tbz w8, #20, #56
  0x80012b3f4:  37b80168    tbnz w8, #23, #44
  0x80012b3f8:  39724328    ldrb w8, [x25, #3216]
  0x80012b3fc:  7100111f    cmp w8, #4
  0x80012b400:  54005c61    b.ne #2956
  0x80012b404:  f001c148    adrp x8, #58896384
  0x80012b408:  aa1a03e0    mov x0, x26
  0x80012b40c:  f9470108    ldr x8, [x8, #3584]
  0x80012b410:  52800201    mov w1, #16
  0x80012b414:  f9400108    ldr x8, [x8]
  0x80012b418:  aa1b03e2    mov x2, x27
  0x80012b41c:  d63f0100    blr x8
  0x80012b420:  39722b28    ldrb w8, [x25, #3210]
  0x80012b424:  37285be8    tbnz w8, #5, #2940
  0x80012b428:  52800038    mov w24, #1
  0x80012b42c:  17fffef4    b #-1072
  0x80012b430:  f94013e9    ldr x9, [sp, #32]
  0x80012b434:  bd400ac2    ldr s2, [x22, #8]
  0x80012b438:  bd401523    ldr s3, [x9, #20]
  0x80012b43c:  1e203863    fsub s3, s3, s0
  0x80012b440:  1e233842    fsub s2, s2, s3
  0x80012b444:  1e203843    fsub s3, s2, s0
  0x80012b448:  1e204022    fmov s2, s1
  0x80012b44c:  17fffa44    b #-5872
  0x80012b450:  f94013e9    ldr x9, [sp, #32]
  0x80012b454:  2d4116c3    ldp s3, s5, [x22, #8]
  0x80012b458:  2d421122    ldp s2, s4, [x9, #16]
  0x80012b45c:  1e213842    fsub s2, s2, s1
  0x80012b460:  1e223862    fsub s2, s3, s2
  0x80012b464:  1e213843    fsub s3, s2, s1
  0x80012b468:  1e203882    fsub s2, s4, s0
  0x80012b46c:  1e2238a2    fsub s2, s5, s2
  0x80012b470:  1e203842    fsub s2, s2, s0
  0x80012b474:  17fffa3a    b #-5912
  0x80012b478:  f94013e9    ldr x9, [sp, #32]
  0x80012b47c:  bd400ac2    ldr s2, [x22, #8]
  0x80012b480:  bd401123    ldr s3, [x9, #16]
  0x80012b484:  1e213863    fsub s3, s3, s1
  0x80012b488:  1e233842    fsub s2, s2, s3
  0x80012b48c:  1e213843    fsub s3, s2, s1
  0x80012b490:  1e204002    fmov s2, s0
  0x80012b494:  17fffa32    b #-5944
  0x80012b498:  f94013e9    ldr x9, [sp, #32]
  0x80012b49c:  bd400ec2    ldr s2, [x22, #12]
  0x80012b4a0:  bd401523    ldr s3, [x9, #20]
  0x80012b4a4:  1e203863    fsub s3, s3, s0
  0x80012b4a8:  1e233842    fsub s2, s2, s3
  0x80012b4ac:  1e204023    fmov s3, s1
  0x80012b4b0:  1e203842    fsub s2, s2, s0
  0x80012b4b4:  17fffa2a    b #-5976
  0x80012b4b8:  12800048    mov w8, #-3
  0x80012b4bc:  885f7d69    ldxr w9, [x11]
  0x80012b4c0:  8a080129    and x9, x9, x8
  0x80012b4c4:  b27f0129    orr x9, x9, #0x2
  0x80012b4c8:  880a7d69    stxr w10, w9, [x11]
  0x80012b4cc:  35ffff8a    cbnz w10, #-16
  0x80012b4d0:  b940718a    ldr w10, [x12, #112]
  0x80012b4d4:  7955572b    ldrh w11, [x25, #2730]
  0x80012b4d8:  4b0b014a    sub w10, w10, w11
  0x80012b4dc:  39722b2b    ldrb w11, [x25, #3210]
  0x80012b4e0:  b94a3b29    ldr w9, [x25, #2616]
  0x80012b4e4:  f9452328    ldr x8, [x25, #2624]
  0x80012b4e8:  721c017f    tst w11, #0x10
  0x80012b4ec:  b94037fc    ldr w28, [sp, #52]
  0x80012b4f0:  1a9f17eb    cset w11, eq
  0x80012b4f4:  17fffb3b    b #-4884
  0x80012b4f8:  aa1f03ee    mov x14, xzr
  0x80012b4fc:  17fffb35    b #-4908
  0x80012b500:  aa1903e0    mov x0, x25
  0x80012b504:  aa1a03e1    mov x1, x26
  0x80012b508:  aa1b03e2    mov x2, x27
  0x80012b50c:  949a8fa2    bl #40517256
  0x80012b510:  17fffb47    b #-4836
  0x80012b514:  52800038    mov w24, #1
  0x80012b518:  14000013    b #76
  0x80012b51c:  71000d1f    cmp w8, #3
  0x80012b520:  540017c1    b.ne #760
  0x80012b524:  f001c148    adrp x8, #58896384
  0x80012b528:  f9470108    ldr x8, [x8, #3584]
  0x80012b52c:  f9400108    ldr x8, [x8]
  0x80012b530:  aa1a03e0    mov x0, x26
  0x80012b534:  2a1f03e1    mov w1, wzr
  0x80012b538:  aa1b03e2    mov x2, x27
  0x80012b53c:  d63f0100    blr x8
  0x80012b540:  b94037fc    ldr w28, [sp, #52]
  0x80012b544:  17fffb50    b #-4800
  0x80012b548:  9001c168    adrp x8, #58900480
  0x80012b54c:  aa1a03e0    mov x0, x26
  0x80012b550:  f940b108    ldr x8, [x8, #352]
  0x80012b554:  52800021    mov w1, #1
  0x80012b558:  52800038    mov w24, #1
  0x80012b55c:  f9400108    ldr x8, [x8]
  0x80012b560:  d63f0100    blr x8
  0x80012b564:  f85f83b0    ldur x16, [x29, #-8]
  0x80012b568:  17fffaa5    b #-5484
  0x80012b56c:  b9407188    ldr w8, [x12, #112]
  0x80012b570:  79555729    ldrh w9, [x25, #2730]
  0x80012b574:  4b090108    sub w8, w8, w9
  0x80012b578:  b94a3b29    ldr w9, [x25, #2616]
  0x80012b57c:  f945232a    ldr x10, [x25, #2624]
  0x80012b580:  6b08013f    cmp w9, w8
  0x80012b584:  1a9f8108    csel w8, w8, wzr, hi
  0x80012b588:  9b332908    smaddl x8, w8, w19, x10
  0x80012b58c:  b8404d09    ldr w9, [x8, #4]!
  0x80012b590:  36000849    tbz w9, #0, #264
  0x80012b594:  12800049    mov w9, #-3
  0x80012b598:  885f7d0a    ldxr w10, [x8]
  0x80012b59c:  8a09014a    and x10, x10, x9
  0x80012b5a0:  b27f014a    orr x10, x10, #0x2
  0x80012b5a4:  880b7d0a    stxr w11, w10, [x8]
  0x80012b5a8:  3400078b    cbz w11, #240
  0x80012b5ac:  17fffffb    b #-20
  0x80012b5b0:  b9407188    ldr w8, [x12, #112]
  0x80012b5b4:  79555729    ldrh w9, [x25, #2730]
  0x80012b5b8:  4b090108    sub w8, w8, w9
  0x80012b5bc:  b94a3b29    ldr w9, [x25, #2616]
  0x80012b5c0:  f945232a    ldr x10, [x25, #2624]
  0x80012b5c4:  6b08013f    cmp w9, w8
  0x80012b5c8:  1a9f8108    csel w8, w8, wzr, hi
  0x80012b5cc:  9b332908    smaddl x8, w8, w19, x10
  0x80012b5d0:  b8404d09    ldr w9, [x8, #4]!
  0x80012b5d4:  3607d149    tbz w9, #0, #-1496
  0x80012b5d8:  12800049    mov w9, #-3
  0x80012b5dc:  885f7d0a    ldxr w10, [x8]
  0x80012b5e0:  8a09014a    and x10, x10, x9
  0x80012b5e4:  b27f014a    orr x10, x10, #0x2
  0x80012b5e8:  880b7d0a    stxr w11, w10, [x8]
  0x80012b5ec:  34ffd08b    cbz w11, #-1520
  0x80012b5f0:  17fffffb    b #-20
  0x80012b5f4:  b9407188    ldr w8, [x12, #112]
  0x80012b5f8:  79555729    ldrh w9, [x25, #2730]
  0x80012b5fc:  4b090108    sub w8, w8, w9
  0x80012b600:  b94a3b29    ldr w9, [x25, #2616]
  0x80012b604:  f945232a    ldr x10, [x25, #2624]
  0x80012b608:  6b08013f    cmp w9, w8
  0x80012b60c:  1a9f8108    csel w8, w8, wzr, hi
  0x80012b610:  9b332908    smaddl x8, w8, w19, x10
  0x80012b614:  b8404d09    ldr w9, [x8, #4]!
  0x80012b618:  360000e9    tbz w9, #0, #28
  0x80012b61c:  12800049    mov w9, #-3
  0x80012b620:  885f7d0a    ldxr w10, [x8]
  0x80012b624:  8a09014a    and x10, x10, x9
  0x80012b628:  b27f014a    orr x10, x10, #0x2
  0x80012b62c:  880b7d0a    stxr w11, w10, [x8]
  0x80012b630:  35ffff8b    cbnz w11, #-16
  0x80012b634:  b94037fc    ldr w28, [sp, #52]
  0x80012b638:  f85f83b0    ldur x16, [x29, #-8]
  0x80012b63c:  17fff97b    b #-6676
  0x80012b640:  12800048    mov w8, #-3
  0x80012b644:  885f7d69    ldxr w9, [x11]
  0x80012b648:  8a080129    and x9, x9, x8
  0x80012b64c:  b27f0129    orr x9, x9, #0x2
  0x80012b650:  880a7d69    stxr w10, w9, [x11]
  0x80012b654:  35ffff8a    cbnz w10, #-16
  0x80012b658:  b940718a    ldr w10, [x12, #112]
  0x80012b65c:  7955572b    ldrh w11, [x25, #2730]
  0x80012b660:  4b0b014a    sub w10, w10, w11
  0x80012b664:  39722b2b    ldrb w11, [x25, #3210]
  0x80012b668:  b94a3b29    ldr w9, [x25, #2616]
  0x80012b66c:  f9452328    ldr x8, [x25, #2624]
  0x80012b670:  721c017f    tst w11, #0x10
  0x80012b674:  b94037fc    ldr w28, [sp, #52]
  0x80012b678:  1a9f17eb    cset w11, eq
  0x80012b67c:  17fffb5b    b #-4756
  0x80012b680:  aa1f03ee    mov x14, xzr
  0x80012b684:  17fffb55    b #-4780
  0x80012b688:  885f7d68    ldxr w8, [x11]
  0x80012b68c:  b27f0108    orr x8, x8, #0x2
  0x80012b690:  88097d68    stxr w9, w8, [x11]
  0x80012b694:  35ffffa9    cbnz w9, #-12
  0x80012b698:  b94037fc    ldr w28, [sp, #52]
  0x80012b69c:  f85f83b0    ldur x16, [x29, #-8]
  0x80012b6a0:  17fff95e    b #-6792
  0x80012b6a4:  aa1903e0    mov x0, x25
  0x80012b6a8:  aa1a03e1    mov x1, x26
  0x80012b6ac:  aa1b03e2    mov x2, x27
  0x80012b6b0:  949a8f39    bl #40516836
  0x80012b6b4:  17fffb60    b #-4736
  0x80012b6b8:  52800038    mov w24, #1
  0x80012b6bc:  17fffff8    b #-32
  0x80012b6c0:  71000d1f    cmp w8, #3
  0x80012b6c4:  54000dc1    b.ne #440
  0x80012b6c8:  f001c148    adrp x8, #58896384
  0x80012b6cc:  f9470108    ldr x8, [x8, #3584]
  0x80012b6d0:  f9400108    ldr x8, [x8]
  0x80012b6d4:  aa1a03e0    mov x0, x26
  0x80012b6d8:  2a1f03e1    mov w1, wzr
  0x80012b6dc:  aa1b03e2    mov x2, x27
  0x80012b6e0:  d63f0100    blr x8
  0x80012b6e4:  b94037fc    ldr w28, [sp, #52]
  0x80012b6e8:  17fffb69    b #-4700
  0x80012b6ec:  9001c168    adrp x8, #58900480
  0x80012b6f0:  aa1a03e0    mov x0, x26
  0x80012b6f4:  f940b108    ldr x8, [x8, #352]
  0x80012b6f8:  52800021    mov w1, #1
  0x80012b6fc:  52800038    mov w24, #1
  0x80012b700:  f9400108    ldr x8, [x8]
  0x80012b704:  d63f0100    blr x8
  0x80012b708:  17ffffe5    b #-108
  0x80012b70c:  b9407188    ldr w8, [x12, #112]
  0x80012b710:  79555729    ldrh w9, [x25, #2730]
  0x80012b714:  4b090108    sub w8, w8, w9
  0x80012b718:  b94a3b29    ldr w9, [x25, #2616]
  0x80012b71c:  f945232a    ldr x10, [x25, #2624]
  0x80012b720:  6b08013f    cmp w9, w8
  0x80012b724:  1a9f8108    csel w8, w8, wzr, hi
  0x80012b728:  9b332908    smaddl x8, w8, w19, x10
  0x80012b72c:  b8404d09    ldr w9, [x8, #4]!
  0x80012b730:  360000e9    tbz w9, #0, #28
  0x80012b734:  12800049    mov w9, #-3
  0x80012b738:  885f7d0a    ldxr w10, [x8]
  0x80012b73c:  8a09014a    and x10, x10, x9
  0x80012b740:  b27f014a    orr x10, x10, #0x2
  0x80012b744:  880b7d0a    stxr w11, w10, [x8]
  0x80012b748:  35ffff8b    cbnz w11, #-16
  0x80012b74c:  b94037fc    ldr w28, [sp, #52]
  0x80012b750:  f85f83b0    ldur x16, [x29, #-8]
  0x80012b754:  17fff92b    b #-6996
  0x80012b758:  12800048    mov w8, #-3
  0x80012b75c:  885f7d69    ldxr w9, [x11]
  0x80012b760:  8a080129    and x9, x9, x8
  0x80012b764:  b27f0129    orr x9, x9, #0x2
  0x80012b768:  880a7d69    stxr w10, w9, [x11]
  0x80012b76c:  35ffff8a    cbnz w10, #-16
  0x80012b770:  b940718a    ldr w10, [x12, #112]
  0x80012b774:  7955572b    ldrh w11, [x25, #2730]
  0x80012b778:  4b0b014a    sub w10, w10, w11
  0x80012b77c:  39722b2b    ldrb w11, [x25, #3210]
  0x80012b780:  b94a3b29    ldr w9, [x25, #2616]
  0x80012b784:  f9452328    ldr x8, [x25, #2624]
  0x80012b788:  721c017f    tst w11, #0x10
  0x80012b78c:  b94037fc    ldr w28, [sp, #52]
  0x80012b790:  1a9f17eb    cset w11, eq
  0x80012b794:  17fffc7f    b #-3588
  0x80012b798:  aa1f03ee    mov x14, xzr
  0x80012b79c:  17fffc79    b #-3612
  0x80012b7a0:  2a1f03f4    mov w20, wzr
  0x80012b7a4:  885f7d68    ldxr w8, [x11]
  0x80012b7a8:  b27f0108    orr x8, x8, #0x2
  0x80012b7ac:  88097d68    stxr w9, w8, [x11]
  0x80012b7b0:  34ff94a9    cbz w9, #-3436
  0x80012b7b4:  17fffffc    b #-16
  0x80012b7b8:  aa1903e0    mov x0, x25
  0x80012b7bc:  aa1a03e1    mov x1, x26
  0x80012b7c0:  aa1b03e2    mov x2, x27
  0x80012b7c4:  949a8ef4    bl #40516560
  0x80012b7c8:  17fffc85    b #-3564
  0x80012b7cc:  71000d1f    cmp w8, #3
  0x80012b7d0:  54000601    b.ne #192
  0x80012b7d4:  f001c148    adrp x8, #58896384
  0x80012b7d8:  f9470108    ldr x8, [x8, #3584]
  0x80012b7dc:  f9400108    ldr x8, [x8]
  0x80012b7e0:  aa1a03e0    mov x0, x26
  0x80012b7e4:  2a1f03e1    mov w1, wzr
  0x80012b7e8:  aa1b03e2    mov x2, x27
  0x80012b7ec:  d63f0100    blr x8
  0x80012b7f0:  b94037fc    ldr w28, [sp, #52]
  0x80012b7f4:  17fffc91    b #-3516
  0x80012b7f8:  9001c168    adrp x8, #58900480
  0x80012b7fc:  aa1a03e0    mov x0, x26
  0x80012b800:  f940b108    ldr x8, [x8, #352]
  0x80012b804:  52800021    mov w1, #1
  0x80012b808:  f9400108    ldr x8, [x8]
  0x80012b80c:  d63f0100    blr x8
  0x80012b810:  f85f83b0    ldur x16, [x29, #-8]
  0x80012b814:  17fffc8c    b #-3536
  0x80012b818:  7100091f    cmp w8, #2
  0x80012b81c:  540009e1    b.ne #316
  0x80012b820:  b001c188    adrp x8, #58920960
  0x80012b824:  f946ed08    ldr x8, [x8, #3544]
  0x80012b828:  17ffff41    b #-764
  0x80012b82c:  b94c8b2d    ldr w13, [x25, #3208]
  0x80012b830:  363001cd    tbz w13, #6, #56
  0x80012b834:  b9407188    ldr w8, [x12, #112]
  0x80012b838:  2a1f03f4    mov w20, wzr
  0x80012b83c:  79555729    ldrh w9, [x25, #2730]
  0x80012b840:  4b09010a    sub w10, w8, w9
  0x80012b844:  b94a3b29    ldr w9, [x25, #2616]
  0x80012b848:  f9452328    ldr x8, [x25, #2624]
  0x80012b84c:  6b0a013f    cmp w9, w10
  0x80012b850:  1a9f814e    csel w14, w10, wzr, hi
  0x80012b854:  9b3321cb    smaddl x11, w14, w19, x8
  0x80012b858:  b8404d6f    ldr w15, [x11, #4]!
  0x80012b85c:  3600008f    tbz w15, #0, #16
  0x80012b860:  b940016f    ldr w15, [x11]
  0x80012b864:  36080e4f    tbz w15, #1, #456
  0x80012b868:  2a1f03f4    mov w20, wzr
  0x80012b86c:  b94037fc    ldr w28, [sp, #52]
  0x80012b870:  2a140318    orr w24, w24, w20
  0x80012b874:  f85f83b0    ldur x16, [x29, #-8]
  0x80012b878:  17fff8e4    b #-7280
  0x80012b87c:  7100091f    cmp w8, #2
  0x80012b880:  54000841    b.ne #264
  0x80012b884:  b001c188    adrp x8, #58920960
  0x80012b888:  f946ed08    ldr x8, [x8, #3544]
  0x80012b88c:  17ffff91    b #-444
  0x80012b890:  7100091f    cmp w8, #2
  0x80012b894:  54000921    b.ne #292
  0x80012b898:  b001c188    adrp x8, #58920960
  0x80012b89c:  f946ed08    ldr x8, [x8, #3544]
  0x80012b8a0:  17ffffcf    b #-196
  0x80012b8a4:  12800048    mov w8, #-3
  0x80012b8a8:  885f7d69    ldxr w9, [x11]
  0x80012b8ac:  8a080129    and x9, x9, x8
  0x80012b8b0:  b27f0129    orr x9, x9, #0x2
  0x80012b8b4:  880a7d69    stxr w10, w9, [x11]
  0x80012b8b8:  35ffff8a    cbnz w10, #-16
  0x80012b8bc:  b940718a    ldr w10, [x12, #112]
  0x80012b8c0:  7955572b    ldrh w11, [x25, #2730]
  0x80012b8c4:  4b0b014a    sub w10, w10, w11
  0x80012b8c8:  39722b2b    ldrb w11, [x25, #3210]
  0x80012b8cc:  b94a3b29    ldr w9, [x25, #2616]
  0x80012b8d0:  f9452328    ldr x8, [x25, #2624]
  0x80012b8d4:  721c017f    tst w11, #0x10
  0x80012b8d8:  b94037fc    ldr w28, [sp, #52]
  0x80012b8dc:  1a9f17eb    cset w11, eq
  0x80012b8e0:  17fffba6    b #-4456
  0x80012b8e4:  aa1f03ee    mov x14, xzr
  0x80012b8e8:  17fffba0    b #-4480
  0x80012b8ec:  aa1903e0    mov x0, x25
  0x80012b8f0:  aa1a03e1    mov x1, x26
  0x80012b8f4:  aa1b03e2    mov x2, x27
  0x80012b8f8:  949a8ea7    bl #40516252
  0x80012b8fc:  17fffbb2    b #-4408
  0x80012b900:  52800034    mov w20, #1
  0x80012b904:  14000013    b #76
  0x80012b908:  71000d1f    cmp w8, #3
  0x80012b90c:  540006e1    b.ne #220
  0x80012b910:  f001c148    adrp x8, #58896384
  0x80012b914:  f9470108    ldr x8, [x8, #3584]
  0x80012b918:  f9400108    ldr x8, [x8]
  0x80012b91c:  aa1a03e0    mov x0, x26
  0x80012b920:  2a1f03e1    mov w1, wzr
  0x80012b924:  aa1b03e2    mov x2, x27
  0x80012b928:  d63f0100    blr x8
  0x80012b92c:  b94037fc    ldr w28, [sp, #52]
  0x80012b930:  17fffbbb    b #-4372
  0x80012b934:  9001c168    adrp x8, #58900480
  0x80012b938:  aa1a03e0    mov x0, x26
  0x80012b93c:  f940b108    ldr x8, [x8, #352]
  0x80012b940:  52800021    mov w1, #1
  0x80012b944:  52800034    mov w20, #1
  0x80012b948:  f9400108    ldr x8, [x8]
  0x80012b94c:  d63f0100    blr x8
  0x80012b950:  f85f83b0    ldur x16, [x29, #-8]
  0x80012b954:  17fffbb6    b #-4392
  0x80012b958:  b94037fc    ldr w28, [sp, #52]
  0x80012b95c:  7100051f    cmp w8, #1
  0x80012b960:  54ff4921    b.ne #-5852
  0x80012b964:  b001c188    adrp x8, #58920960
  0x80012b968:  aa1a03e0    mov x0, x26
  0x80012b96c:  f9413508    ldr x8, [x8, #616]
  0x80012b970:  aa1b03e1    mov x1, x27
  0x80012b974:  52800082    mov w2, #4
  0x80012b978:  f9400108    ldr x8, [x8]
  0x80012b97c:  2a1f03e3    mov w3, wzr
  0x80012b980:  d63f0100    blr x8
  0x80012b984:  17fffa40    b #-5888
  0x80012b988:  b94037fc    ldr w28, [sp, #52]
  0x80012b98c:  7100051f    cmp w8, #1
  0x80012b990:  54ff57e1    b.ne #-5380
  0x80012b994:  b001c188    adrp x8, #58920960
  0x80012b998:  aa1a03e0    mov x0, x26
  0x80012b99c:  f9413508    ldr x8, [x8, #616]
  0x80012b9a0:  aa1b03e1    mov x1, x27
  0x80012b9a4:  52800082    mov w2, #4
  0x80012b9a8:  f9400108    ldr x8, [x8]
  0x80012b9ac:  2a1f03e3    mov w3, wzr
  0x80012b9b0:  d63f0100    blr x8
  0x80012b9b4:  17fffab6    b #-5416
  0x80012b9b8:  b94037fc    ldr w28, [sp, #52]
  0x80012b9bc:  7100051f    cmp w8, #1
  0x80012b9c0:  54ff83c1    b.ne #-3976
  0x80012b9c4:  b001c188    adrp x8, #58920960
  0x80012b9c8:  aa1a03e0    mov x0, x26
  0x80012b9cc:  f9413508    ldr x8, [x8, #616]
  0x80012b9d0:  aa1b03e1    mov x1, x27
  0x80012b9d4:  52800082    mov w2, #4
  0x80012b9d8:  f9400108    ldr x8, [x8]
  0x80012b9dc:  2a1f03e3    mov w3, wzr
  0x80012b9e0:  d63f0100    blr x8
  0x80012b9e4:  17fffc15    b #-4012
  0x80012b9e8:  7100091f    cmp w8, #2
  0x80012b9ec:  54000081    b.ne #16
  0x80012b9f0:  b001c188    adrp x8, #58920960
  0x80012b9f4:  f946ed08    ldr x8, [x8, #3544]
  0x80012b9f8:  17ffffc8    b #-224
  0x80012b9fc:  b94037fc    ldr w28, [sp, #52]
  0x80012ba00:  7100051f    cmp w8, #1
  0x80012ba04:  54ff70c1    b.ne #-4584
  0x80012ba08:  b001c188    adrp x8, #58920960
  0x80012ba0c:  aa1a03e0    mov x0, x26
  0x80012ba10:  f9413508    ldr x8, [x8, #616]
  0x80012ba14:  aa1b03e1    mov x1, x27
  0x80012ba18:  52800082    mov w2, #4
  0x80012ba1c:  f9400108    ldr x8, [x8]
  0x80012ba20:  2a1f03e3    mov w3, wzr
  0x80012ba24:  d63f0100    blr x8
  0x80012ba28:  17fffb7d    b #-4620
  0x80012ba2c:  36a02cad    tbz w13, #20, #1428
  0x80012ba30:  93407dcc    sxtw x12, w14
  0x80012ba34:  5280050d    mov w13, #40
  0x80012ba38:  9b2d218c    smaddl x12, w12, w13, x8
  0x80012ba3c:  f946572d    ldr x13, [x25, #3240]
  0x80012ba40:  f9400d8c    ldr x12, [x12, #24]
  0x80012ba44:  f940018c    ldr x12, [x12]
  0x80012ba48:  7941098c    ldrh w12, [x12, #132]
  0x80012ba4c:  d37be98c    lsl x12, x12, #5
  0x80012ba50:  b40023ad    cbz x13, #1140
  0x80012ba54:  f94089ae    ldr x14, [x13, #272]
  0x80012ba58:  b400008e    cbz x14, #16
  0x80012ba5c:  f946532f    ldr x15, [x25, #3232]
  0x80012ba60:  f9400dce    ldr x14, [x14, #24]
  0x80012ba64:  cb0e01ee    sub x14, x15, x14
  0x80012ba68:  f94081ad    ldr x13, [x13, #256]
  0x80012ba6c:  8b0c01cc    add x12, x14, x12
  0x80012ba70:  f86d698c    ldr x12, [x12, x13]
  0x80012ba74:  b4001d0c    cbz x12, #928
  0x80012ba78:  2a1f03eb    mov w11, wzr
  0x80012ba7c:  6b0a013f    cmp w9, w10
  0x80012ba80:  f9405eba    ldr x26, [x21, #184]
  0x80012ba84:  1a9f8149    csel w9, w10, wzr, hi
  0x80012ba88:  9b332128    smaddl x8, w9, w19, x8
  0x80012ba8c:  f9468729    ldr x9, [x25, #3336]
  0x80012ba90:  f9400d08    ldr x8, [x8, #24]
  0x80012ba94:  f9400108    ldr x8, [x8]
  0x80012ba98:  79410908    ldrh w8, [x8, #132]
  0x80012ba9c:  8b08153b    add x27, x9, x8, lsl #5
  0x80012baa0:  3700014b    tbnz w11, #0, #40
  0x80012baa4:  9001c168    adrp x8, #58900480
  0x80012baa8:  aa1a03e0    mov x0, x26
  0x80012baac:  f940ad08    ldr x8, [x8, #344]
  0x80012bab0:  52800021    mov w1, #1
  0x80012bab4:  aa1b03e2    mov x2, x27
  0x80012bab8:  f9400108    ldr x8, [x8]
  0x80012babc:  d63f0100    blr x8
  0x80012bac0:  39722b28    ldrb w8, [x25, #3210]
  0x80012bac4:  37382988    tbnz w8, #7, #1328
  0x80012bac8:  b001c188    adrp x8, #58920960
  0x80012bacc:  f0016082    adrp x2, #46215168
  0x80012bad0:  910bb042    add x2, x2, #748
  0x80012bad4:  f946a108    ldr x8, [x8, #3392]
  0x80012bad8:  aa1a03e0    mov x0, x26
  0x80012badc:  f9400108    ldr x8, [x8]
  0x80012bae0:  52800061    mov w1, #3
  0x80012bae4:  528001e3    mov w3, #15
  0x80012bae8:  d63f0100    blr x8
  0x80012baec:  b94c8b28    ldr w8, [x25, #3208]
  0x80012baf0:  36a001c8    tbz w8, #20, #56
  0x80012baf4:  37b80168    tbnz w8, #23, #44
  0x80012baf8:  39724328    ldrb w8, [x25, #3216]
  0x80012bafc:  7100111f    cmp w8, #4
  0x80012bb00:  54002841    b.ne #1288
  0x80012bb04:  f001c148    adrp x8, #58896384
  0x80012bb08:  aa1a03e0    mov x0, x26
  0x80012bb0c:  f9470108    ldr x8, [x8, #3584]
  0x80012bb10:  52800201    mov w1, #16
  0x80012bb14:  f9400108    ldr x8, [x8]
  0x80012bb18:  aa1b03e2    mov x2, x27
  0x80012bb1c:  d63f0100    blr x8
  0x80012bb20:  39722b28    ldrb w8, [x25, #3210]
  0x80012bb24:  372827c8    tbnz w8, #5, #1272
  0x80012bb28:  52800034    mov w20, #1
  0x80012bb2c:  17ffff50    b #-704
  0x80012bb30:  12800048    mov w8, #-3
  0x80012bb34:  885f7d69    ldxr w9, [x11]
  0x80012bb38:  8a080129    and x9, x9, x8
  0x80012bb3c:  b27f0129    orr x9, x9, #0x2
  0x80012bb40:  880a7d69    stxr w10, w9, [x11]
  0x80012bb44:  35ffff8a    cbnz w10, #-16
  0x80012bb48:  b940728a    ldr w10, [x20, #112]
  0x80012bb4c:  7955572b    ldrh w11, [x25, #2730]
  0x80012bb50:  4b0b014a    sub w10, w10, w11
  0x80012bb54:  39722b2b    ldrb w11, [x25, #3210]
  0x80012bb58:  b94a3b29    ldr w9, [x25, #2616]
  0x80012bb5c:  f9452328    ldr x8, [x25, #2624]
  0x80012bb60:  721c017f    tst w11, #0x10
  0x80012bb64:  b94037fc    ldr w28, [sp, #52]
  0x80012bb68:  1a9f17eb    cset w11, eq
  0x80012bb6c:  17fffc20    b #-3968
  0x80012bb70:  aa1f03ee    mov x14, xzr
  0x80012bb74:  17fffc1a    b #-3992
  0x80012bb78:  aa1903e0    mov x0, x25
  0x80012bb7c:  aa1a03e1    mov x1, x26
  0x80012bb80:  aa1b03e2    mov x2, x27
  0x80012bb84:  949a8e04    bl #40515600
  0x80012bb88:  17fffc2c    b #-3920
  0x80012bb8c:  71000d1f    cmp w8, #3
  0x80012bb90:  54000da1    b.ne #436
  0x80012bb94:  f001c148    adrp x8, #58896384
  0x80012bb98:  f9470108    ldr x8, [x8, #3584]
  0x80012bb9c:  f9400108    ldr x8, [x8]
  0x80012bba0:  aa1a03e0    mov x0, x26
  0x80012bba4:  2a1f03e1    mov w1, wzr
  0x80012bba8:  aa1b03e2    mov x2, x27
  0x80012bbac:  d63f0100    blr x8
  0x80012bbb0:  b94037fc    ldr w28, [sp, #52]
  0x80012bbb4:  17fffc3c    b #-3856
  0x80012bbb8:  12800048    mov w8, #-3
  0x80012bbbc:  885f7d69    ldxr w9, [x11]
  0x80012bbc0:  8a080129    and x9, x9, x8
  0x80012bbc4:  b27f0129    orr x9, x9, #0x2
  0x80012bbc8:  880a7d69    stxr w10, w9, [x11]
  0x80012bbcc:  35ffff8a    cbnz w10, #-16
  0x80012bbd0:  b940718a    ldr w10, [x12, #112]
  0x80012bbd4:  7955572b    ldrh w11, [x25, #2730]
  0x80012bbd8:  4b0b014a    sub w10, w10, w11
  0x80012bbdc:  39722b2b    ldrb w11, [x25, #3210]
  0x80012bbe0:  b94a3b29    ldr w9, [x25, #2616]
  0x80012bbe4:  f9452328    ldr x8, [x25, #2624]
  0x80012bbe8:  721c017f    tst w11, #0x10
  0x80012bbec:  b94037fc    ldr w28, [sp, #52]
  0x80012bbf0:  1a9f17eb    cset w11, eq
  0x80012bbf4:  17fffc4b    b #-3796
  0x80012bbf8:  aa1f03ee    mov x14, xzr
  0x80012bbfc:  17fffc45    b #-3820
  0x80012bc00:  885f7d68    ldxr w8, [x11]
  0x80012bc04:  b27f0108    orr x8, x8, #0x2
  0x80012bc08:  88097d68    stxr w9, w8, [x11]
  0x80012bc0c:  34ff9f89    cbz w9, #-3088
  0x80012bc10:  17fffffc    b #-16
  0x80012bc14:  aa1903e0    mov x0, x25
  0x80012bc18:  aa1a03e1    mov x1, x26
  0x80012bc1c:  aa1b03e2    mov x2, x27
  0x80012bc20:  949a8ddd    bl #40515444
  0x80012bc24:  17fffc52    b #-3768
  0x80012bc28:  52800034    mov w20, #1
  0x80012bc2c:  14000013    b #76
  0x80012bc30:  71000d1f    cmp w8, #3
  0x80012bc34:  54000921    b.ne #292
  0x80012bc38:  f001c148    adrp x8, #58896384
  0x80012bc3c:  f9470108    ldr x8, [x8, #3584]
  0x80012bc40:  f9400108    ldr x8, [x8]
  0x80012bc44:  aa1a03e0    mov x0, x26
  0x80012bc48:  2a1f03e1    mov w1, wzr
  0x80012bc4c:  aa1b03e2    mov x2, x27
  0x80012bc50:  d63f0100    blr x8
  0x80012bc54:  b94037fc    ldr w28, [sp, #52]
  0x80012bc58:  17fffc5b    b #-3732
  0x80012bc5c:  9001c168    adrp x8, #58900480
  0x80012bc60:  aa1a03e0    mov x0, x26
  0x80012bc64:  f940b108    ldr x8, [x8, #352]
  0x80012bc68:  52800021    mov w1, #1
  0x80012bc6c:  52800034    mov w20, #1
  0x80012bc70:  f9400108    ldr x8, [x8]
  0x80012bc74:  d63f0100    blr x8
  0x80012bc78:  f85f83b0    ldur x16, [x29, #-8]
  0x80012bc7c:  17fffb01    b #-5116
  0x80012bc80:  12800048    mov w8, #-3
  0x80012bc84:  885f7d69    ldxr w9, [x11]
  0x80012bc88:  8a080129    and x9, x9, x8
  0x80012bc8c:  b27f0129    orr x9, x9, #0x2
  0x80012bc90:  880a7d69    stxr w10, w9, [x11]
  0x80012bc94:  35ffff8a    cbnz w10, #-16
  0x80012bc98:  b940718a    ldr w10, [x12, #112]
  0x80012bc9c:  7955572b    ldrh w11, [x25, #2730]
  0x80012bca0:  4b0b014a    sub w10, w10, w11
  0x80012bca4:  39722b2b    ldrb w11, [x25, #3210]
  0x80012bca8:  b94a3b29    ldr w9, [x25, #2616]
  0x80012bcac:  f9452328    ldr x8, [x25, #2624]
  0x80012bcb0:  721c017f    tst w11, #0x10
  0x80012bcb4:  b94037fc    ldr w28, [sp, #52]
  0x80012bcb8:  1a9f17eb    cset w11, eq
  0x80012bcbc:  17fffa4a    b #-5848
  0x80012bcc0:  aa1f03ee    mov x14, xzr
  0x80012bcc4:  17fffa44    b #-5872
  0x80012bcc8:  885f7d68    ldxr w8, [x11]
  0x80012bccc:  b27f0108    orr x8, x8, #0x2
  0x80012bcd0:  88097d68    stxr w9, w8, [x11]
  0x80012bcd4:  34ffcb09    cbz w9, #-1696
  0x80012bcd8:  17fffffc    b #-16
  0x80012bcdc:  aa1903e0    mov x0, x25
  0x80012bce0:  aa1a03e1    mov x1, x26
  0x80012bce4:  aa1b03e2    mov x2, x27
  0x80012bce8:  949a8dab    bl #40515244
  0x80012bcec:  17fffa51    b #-5820
  0x80012bcf0:  52800038    mov w24, #1
  0x80012bcf4:  17fffe51    b #-1724
  0x80012bcf8:  71000d1f    cmp w8, #3
  0x80012bcfc:  54000381    b.ne #112
  0x80012bd00:  f001c148    adrp x8, #58896384
  0x80012bd04:  f9470108    ldr x8, [x8, #3584]
  0x80012bd08:  f9400108    ldr x8, [x8]
  0x80012bd0c:  aa1a03e0    mov x0, x26
  0x80012bd10:  2a1f03e1    mov w1, wzr
  0x80012bd14:  aa1b03e2    mov x2, x27
  0x80012bd18:  d63f0100    blr x8
  0x80012bd1c:  b94037fc    ldr w28, [sp, #52]
  0x80012bd20:  17fffa5a    b #-5784
  0x80012bd24:  9001c168    adrp x8, #58900480
  0x80012bd28:  aa1a03e0    mov x0, x26
  0x80012bd2c:  f940b108    ldr x8, [x8, #352]
  0x80012bd30:  52800021    mov w1, #1
  0x80012bd34:  52800038    mov w24, #1
  0x80012bd38:  f9400108    ldr x8, [x8]
  0x80012bd3c:  d63f0100    blr x8
  0x80012bd40:  17fffe3e    b #-1800
  0x80012bd44:  7100091f    cmp w8, #2
  0x80012bd48:  540001c1    b.ne #56
  0x80012bd4c:  b001c188    adrp x8, #58920960
  0x80012bd50:  f946ed08    ldr x8, [x8, #3544]
  0x80012bd54:  17ffff92    b #-440
  0x80012bd58:  7100091f    cmp w8, #2
  0x80012bd5c:  540002c1    b.ne #88
  0x80012bd60:  b001c188    adrp x8, #58920960
  0x80012bd64:  f946ed08    ldr x8, [x8, #3544]
  0x80012bd68:  17ffffb6    b #-296
  0x80012bd6c:  7100091f    cmp w8, #2
  0x80012bd70:  540003a1    b.ne #116
  0x80012bd74:  b001c188    adrp x8, #58920960
  0x80012bd78:  f946ed08    ldr x8, [x8, #3544]
  0x80012bd7c:  17ffffe3    b #-116
  0x80012bd80:  b94037fc    ldr w28, [sp, #52]
  0x80012bd84:  7100051f    cmp w8, #1
  0x80012bd88:  f85f83b0    ldur x16, [x29, #-8]
  0x80012bd8c:  54ff78e1    b.ne #-4324
  0x80012bd90:  b001c188    adrp x8, #58920960
  0x80012bd94:  aa1a03e0    mov x0, x26
  0x80012bd98:  f9413508    ldr x8, [x8, #616]
  0x80012bd9c:  aa1b03e1    mov x1, x27
  0x80012bda0:  52800082    mov w2, #4
  0x80012bda4:  f9400108    ldr x8, [x8]
  0x80012bda8:  2a1f03e3    mov w3, wzr
  0x80012bdac:  d63f0100    blr x8
  0x80012bdb0:  17fffbbd    b #-4364
  0x80012bdb4:  b94037fc    ldr w28, [sp, #52]
  0x80012bdb8:  7100051f    cmp w8, #1
  0x80012bdbc:  54ff8041    b.ne #-4088
  0x80012bdc0:  b001c188    adrp x8, #58920960
  0x80012bdc4:  aa1a03e0    mov x0, x26
  0x80012bdc8:  f9413508    ldr x8, [x8, #616]
  0x80012bdcc:  aa1b03e1    mov x1, x27
  0x80012bdd0:  52800082    mov w2, #4
  0x80012bdd4:  f9400108    ldr x8, [x8]
  0x80012bdd8:  2a1f03e3    mov w3, wzr
  0x80012bddc:  d63f0100    blr x8
  0x80012bde0:  17fffbf9    b #-4124
  0x80012bde4:  b94037fc    ldr w28, [sp, #52]
  0x80012bde8:  7100051f    cmp w8, #1
  0x80012bdec:  54ff44e1    b.ne #-5988
  0x80012bdf0:  b001c188    adrp x8, #58920960
  0x80012bdf4:  aa1a03e0    mov x0, x26
  0x80012bdf8:  f9413508    ldr x8, [x8, #616]
  0x80012bdfc:  aa1b03e1    mov x1, x27
  0x80012be00:  52800082    mov w2, #4
  0x80012be04:  f9400108    ldr x8, [x8]
  0x80012be08:  2a1f03e3    mov w3, wzr
  0x80012be0c:  d63f0100    blr x8
  0x80012be10:  17fffa1e    b #-6024
  0x80012be14:  2a1f03f4    mov w20, wzr
  0x80012be18:  885f7d68    ldxr w8, [x11]
  0x80012be1c:  b27f0108    orr x8, x8, #0x2
  0x80012be20:  88097d68    stxr w9, w8, [x11]
  0x80012be24:  34ffd249    cbz w9, #-1464
  0x80012be28:  17fffffc    b #-16
  0x80012be2c:  aa1f03ee    mov x14, xzr
  0x80012be30:  17fffd4f    b #-2756
  0x80012be34:  885f7e7f    ldxr wzr, [x19]
  0x80012be38:  88087e7f    stxr w8, wzr, [x19]
  0x80012be3c:  35ffffc8    cbnz w8, #-8
  0x80012be40:  17fff7ae    b #-8520
  0x80012be44:  885f7e7f    ldxr wzr, [x19]
  0x80012be48:  88087e7f    stxr w8, wzr, [x19]
  0x80012be4c:  35ffffc8    cbnz w8, #-8
  0x80012be50:  17fff7b2    b #-8504
  0x80012be54:  885f7e7f    ldxr wzr, [x19]
  0x80012be58:  88087e7f    stxr w8, wzr, [x19]
  0x80012be5c:  35ffffc8    cbnz w8, #-8
  0x80012be60:  17fff7aa    b #-8536
  0x80012be64:  885f7e7f    ldxr wzr, [x19]
  0x80012be68:  88087e7f    stxr w8, wzr, [x19]
  0x80012be6c:  35ffffc8    cbnz w8, #-8
  0x80012be70:  17fff7a8    b #-8544
  0x80012be74:  885f7e7f    ldxr wzr, [x19]
  0x80012be78:  88087e7f    stxr w8, wzr, [x19]
  0x80012be7c:  35ffffc8    cbnz w8, #-8
  0x80012be80:  17fff7a0    b #-8576
  0x80012be84:  885f7e7f    ldxr wzr, [x19]
  0x80012be88:  88087e7f    stxr w8, wzr, [x19]
  0x80012be8c:  35ffffc8    cbnz w8, #-8
  0x80012be90:  17fff7a6    b #-8552
  0x80012be94:  885f7e7f    ldxr wzr, [x19]
  0x80012be98:  88087e7f    stxr w8, wzr, [x19]
  0x80012be9c:  35ffffc8    cbnz w8, #-8
  0x80012bea0:  17fff7a0    b #-8576
  0x80012bea4:  885f7e7f    ldxr wzr, [x19]
  0x80012bea8:  88087e7f    stxr w8, wzr, [x19]
  0x80012beac:  35ffffc8    cbnz w8, #-8
  0x80012beb0:  17fff790    b #-8640
  0x80012beb4:  885f7e7f    ldxr wzr, [x19]
  0x80012beb8:  88087e7f    stxr w8, wzr, [x19]
  0x80012bebc:  35ffffc8    cbnz w8, #-8
  0x80012bec0:  17fff79f    b #-8580
  0x80012bec4:  aa1f03ee    mov x14, xzr
  0x80012bec8:  17fffee9    b #-1116
  0x80012becc:  aa1b03e0    mov x0, x27
  0x80012bed0:  d63f0100    blr x8
  0x80012bed4:  17fff82a    b #-8024
  0x80012bed8:  aa1b03e0    mov x0, x27
  0x80012bedc:  d63f0100    blr x8
  0x80012bee0:  17fff8a6    b #-7528
  0x80012bee4:  aa1b03e0    mov x0, x27
  0x80012bee8:  d63f0100    blr x8
  0x80012beec:  17fff913    b #-7092
  0x80012bef0:  aa1b03e0    mov x0, x27
  0x80012bef4:  d63f0100    blr x8
  0x80012bef8:  17fff992    b #-6584
  0x80012befc:  aa1b03e0    mov x0, x27
  0x80012bf00:  d63f0100    blr x8
  0x80012bf04:  17fffa89    b #-5596
  0x80012bf08:  aa1b03e0    mov x0, x27
  0x80012bf0c:  d63f0100    blr x8
  0x80012bf10:  17fffb0c    b #-5072
  0x80012bf14:  aa1b03e0    mov x0, x27
  0x80012bf18:  d63f0100    blr x8
  0x80012bf1c:  17fffc66    b #-3688
  0x80012bf20:  b94037fc    ldr w28, [sp, #52]
  0x80012bf24:  aa0a03f5    mov x21, x10
  0x80012bf28:  17fffc92    b #-3512
  0x80012bf2c:  aa1b03e0    mov x0, x27
  0x80012bf30:  d63f0100    blr x8
  0x80012bf34:  17fffcb9    b #-3356
  0x80012bf38:  aa1b03e0    mov x0, x27
  0x80012bf3c:  d63f0100    blr x8
  0x80012bf40:  17fffceb    b #-3156
  0x80012bf44:  885f7d68    ldxr w8, [x11]
  0x80012bf48:  b27f0108    orr x8, x8, #0x2
  0x80012bf4c:  88097d68    stxr w9, w8, [x11]
  0x80012bf50:  35ffffa9    cbnz w9, #-12
  0x80012bf54:  b940718a    ldr w10, [x12, #112]
  0x80012bf58:  7955572b    ldrh w11, [x25, #2730]
  0x80012bf5c:  4b0b014a    sub w10, w10, w11
  0x80012bf60:  39722b2b    ldrb w11, [x25, #3210]
  0x80012bf64:  b94a3b29    ldr w9, [x25, #2616]
  0x80012bf68:  f9452328    ldr x8, [x25, #2624]
  0x80012bf6c:  721c017f    tst w11, #0x10
  0x80012bf70:  1a9f17eb    cset w11, eq
  0x80012bf74:  17fffd02    b #-3064
  0x80012bf78:  aa1903e0    mov x0, x25
  0x80012bf7c:  aa1a03e1    mov x1, x26
  0x80012bf80:  aa1b03e2    mov x2, x27
  0x80012bf84:  949a8d04    bl #40514576
  0x80012bf88:  17fffd10    b #-3008
  0x80012bf8c:  71000d1f    cmp w8, #3
  0x80012bf90:  54000561    b.ne #172
  0x80012bf94:  f001c148    adrp x8, #58896384
  0x80012bf98:  f9470108    ldr x8, [x8, #3584]
  0x80012bf9c:  1400002c    b #176
  0x80012bfa0:  9001c168    adrp x8, #58900480
  0x80012bfa4:  aa1a03e0    mov x0, x26
  0x80012bfa8:  f940b108    ldr x8, [x8, #352]
  0x80012bfac:  52800021    mov w1, #1
  0x80012bfb0:  52800038    mov w24, #1
  0x80012bfb4:  f9400108    ldr x8, [x8]
  0x80012bfb8:  d63f0100    blr x8
  0x80012bfbc:  17fffc10    b #-4032
  0x80012bfc0:  885f7d68    ldxr w8, [x11]
  0x80012bfc4:  b27f0108    orr x8, x8, #0x2
  0x80012bfc8:  88097d68    stxr w9, w8, [x11]
  0x80012bfcc:  35ffffa9    cbnz w9, #-12
  0x80012bfd0:  b940718a    ldr w10, [x12, #112]
  0x80012bfd4:  7955572b    ldrh w11, [x25, #2730]
  0x80012bfd8:  4b0b014a    sub w10, w10, w11
  0x80012bfdc:  39722b2b    ldrb w11, [x25, #3210]
  0x80012bfe0:  b94a3b29    ldr w9, [x25, #2616]
  0x80012bfe4:  f9452328    ldr x8, [x25, #2624]
  0x80012bfe8:  721c017f    tst w11, #0x10
  0x80012bfec:  1a9f17eb    cset w11, eq
  0x80012bff0:  17fffea3    b #-1396
  0x80012bff4:  aa1903e0    mov x0, x25
  0x80012bff8:  aa1a03e1    mov x1, x26
  0x80012bffc:  aa1b03e2    mov x2, x27
  0x80012c000:  949a8ce5    bl #40514452
  0x80012c004:  17fffeb1    b #-1340
  0x80012c008:  71000d1f    cmp w8, #3
  0x80012c00c:  54000281    b.ne #80
  0x80012c010:  d001c148    adrp x8, #58892288
  0x80012c014:  f9470108    ldr x8, [x8, #3584]
  0x80012c018:  14000015    b #84
  0x80012c01c:  f001c148    adrp x8, #58896384
  0x80012c020:  aa1a03e0    mov x0, x26
  0x80012c024:  f940b108    ldr x8, [x8, #352]
  0x80012c028:  52800021    mov w1, #1
  0x80012c02c:  52800034    mov w20, #1
  0x80012c030:  f9400108    ldr x8, [x8]
  0x80012c034:  d63f0100    blr x8
  0x80012c038:  17fffe0d    b #-1996
  0x80012c03c:  7100091f    cmp w8, #2
  0x80012c040:  540001e1    b.ne #60
  0x80012c044:  9001c188    adrp x8, #58916864
  0x80012c048:  f946ed08    ldr x8, [x8, #3544]
  0x80012c04c:  f9400108    ldr x8, [x8]
  0x80012c050:  aa1a03e0    mov x0, x26
  0x80012c054:  2a1f03e1    mov w1, wzr
  0x80012c058:  17fffcf0    b #-3136
  0x80012c05c:  7100091f    cmp w8, #2
  0x80012c060:  54000241    b.ne #72
  0x80012c064:  9001c188    adrp x8, #58916864
  0x80012c068:  f946ed08    ldr x8, [x8, #3544]
  0x80012c06c:  f9400108    ldr x8, [x8]
  0x80012c070:  aa1a03e0    mov x0, x26
  0x80012c074:  2a1f03e1    mov w1, wzr
  0x80012c078:  17fffea8    b #-1376
  0x80012c07c:  7100051f    cmp w8, #1
  0x80012c080:  54ff9d01    b.ne #-3168
  0x80012c084:  9001c188    adrp x8, #58916864
  0x80012c088:  aa1a03e0    mov x0, x26
  0x80012c08c:  f9413508    ldr x8, [x8, #616]
  0x80012c090:  aa1b03e1    mov x1, x27
  0x80012c094:  52800082    mov w2, #4
  0x80012c098:  f9400108    ldr x8, [x8]
  0x80012c09c:  2a1f03e3    mov w3, wzr
  0x80012c0a0:  d63f0100    blr x8
  0x80012c0a4:  17fffcdf    b #-3204
  0x80012c0a8:  7100051f    cmp w8, #1
  0x80012c0ac:  54ffd3a1    b.ne #-1420
  0x80012c0b0:  9001c188    adrp x8, #58916864
  0x80012c0b4:  aa1a03e0    mov x0, x26
  0x80012c0b8:  f9413508    ldr x8, [x8, #616]
  0x80012c0bc:  aa1b03e1    mov x1, x27
  0x80012c0c0:  52800082    mov w2, #4
  0x80012c0c4:  f9400108    ldr x8, [x8]
  0x80012c0c8:  2a1f03e3    mov w3, wzr
  0x80012c0cc:  d63f0100    blr x8
  0x80012c0d0:  17fffe94    b #-1456
  0x80012c0d4:  00000000    udf #0
  0x80012c0d8:  00000000    udf #0
  0x80012c0dc:  00000000    udf #0

