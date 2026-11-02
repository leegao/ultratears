; UltraTears chunk main_163_actor: 1 functions [0x80029e418..0x80029f350)

; Function f_80029e418 [0x80029e418..0x80029f350)
f_80029e418:
  0x80029e418:  f9400808    ldr x8, [x0, #16]
  0x80029e41c:  b100051f    cmn x8, #1
  0x80029e420:  54004380    b.eq #2160
  0x80029e424:  a9ba7bfd    stp x29, x30, [sp, #-96]!
  0x80029e428:  a9016ffc    stp x28, x27, [sp, #16]
  0x80029e42c:  910003fd    mov x29, sp
  0x80029e430:  a90267fa    stp x26, x25, [sp, #32]
  0x80029e434:  a9035ff8    stp x24, x23, [sp, #48]
  0x80029e438:  a90457f6    stp x22, x21, [sp, #64]
  0x80029e43c:  a9054ff4    stp x20, x19, [sp, #80]
  0x80029e440:  d1402bff    sub sp, sp, #10, lsl #12
  0x80029e444:  d10403ff    sub sp, sp, #256
  0x80029e448:  f9401428    ldr x8, [x1, #40]
  0x80029e44c:  aa0103f4    mov x20, x1
  0x80029e450:  b9401115    ldr w21, [x8, #16]
  0x80029e454:  710006bf    cmp w21, #1
  0x80029e458:  540011eb    b.lt #572
  0x80029e45c:  aa0003f3    mov x19, x0
  0x80029e460:  f9400680    ldr x0, [x20, #8]
  0x80029e464:  d37df2a1    lsl x1, x21, #3
  0x80029e468:  52800102    mov w2, #8
  0x80029e46c:  2a1f03e3    mov w3, wzr
  0x80029e470:  97f76e2c    bl #-2246480
  0x80029e474:  b4000100    cbz x0, #32
  0x80029e478:  aa1503e8    mov x8, x21
  0x80029e47c:  aa0003e9    mov x9, x0
  0x80029e480:  f1000508    subs x8, x8, #1
  0x80029e484:  f800853f    str xzr, [x9], #8
  0x80029e488:  54ffffc1    b.ne #-8
  0x80029e48c:  b9003275    str w21, [x19, #48]
  0x80029e490:  f9001e60    str x0, [x19, #56]
  0x80029e494:  f9400681    ldr x1, [x20, #8]
  0x80029e498:  52813500    mov w0, #2472
  0x80029e49c:  52800102    mov w2, #8
  0x80029e4a0:  97fc0c3c    bl #-1036048
  0x80029e4a4:  aa0003f5    mov x21, x0
  0x80029e4a8:  940003aa    bl #3752
  0x80029e4ac:  aa1303f9    mov x25, x19
  0x80029e4b0:  b001b6d8    adrp x24, #57511936
  0x80029e4b4:  f8418f28    ldr x8, [x25, #24]!
  0x80029e4b8:  f81f8335    stur x21, [x25, #-8]
  0x80029e4bc:  f9450b18    ldr x24, [x24, #2576]
  0x80029e4c0:  b4002cc8    cbz x8, #1432
  0x80029e4c4:  f940a908    ldr x8, [x8, #336]
  0x80029e4c8:  b4002c88    cbz x8, #1424
  0x80029e4cc:  f9401688    ldr x8, [x20, #40]
  0x80029e4d0:  b940111a    ldr w26, [x8, #16]
  0x80029e4d4:  3400079a    cbz w26, #240
  0x80029e4d8:  9001b5b6    adrp x22, #57360384
  0x80029e4dc:  9001b5b5    adrp x21, #57360384
  0x80029e4e0:  f9465ad6    ldr x22, [x22, #3248]
  0x80029e4e4:  f94656b5    ldr x21, [x21, #3240]
  0x80029e4e8:  aa1f03fb    mov x27, xzr
  0x80029e4ec:  b9402268    ldr w8, [x19, #32]
  0x80029e4f0:  eb08037f    cmp x27, x8
  0x80029e4f4:  f9401669    ldr x9, [x19, #40]
  0x80029e4f8:  9a9f336a    csel x10, x27, xzr, lo
  0x80029e4fc:  f86a792a    ldr x10, [x9, x10, lsl #3]
  0x80029e500:  b40000ea    cbz x10, #28
  0x80029e504:  f940054a    ldr x10, [x10, #8]
  0x80029e508:  b40000aa    cbz x10, #20
  0x80029e50c:  91004140    add x0, x10, #16
  0x80029e510:  9401ddc1    bl #489220
  0x80029e514:  b9402268    ldr w8, [x19, #32]
  0x80029e518:  f9401669    ldr x9, [x19, #40]
  0x80029e51c:  eb1b011f    cmp x8, x27
  0x80029e520:  9a9f8368    csel x8, x27, xzr, hi
  0x80029e524:  f8687928    ldr x8, [x9, x8, lsl #3]
  0x80029e528:  b40002a8    cbz x8, #84
  0x80029e52c:  f9400517    ldr x23, [x8, #8]
  0x80029e530:  b4003617    cbz x23, #1728
  0x80029e534:  f94016e8    ldr x8, [x23, #40]
  0x80029e538:  b4000228    cbz x8, #68
  0x80029e53c:  f940a900    ldr x0, [x8, #336]
  0x80029e540:  08dffec8    ldarb w8, [x22]
  0x80029e544:  360036a8    tbz w8, #0, #1748
  0x80029e548:  b4003540    cbz x0, #1704
  0x80029e54c:  f9400008    ldr x8, [x0]
  0x80029e550:  aa1503e1    mov x1, x21
  0x80029e554:  f9400108    ldr x8, [x8]
  0x80029e558:  d63f0100    blr x8
  0x80029e55c:  b40034a0    cbz x0, #1684
  0x80029e560:  f94016e8    ldr x8, [x23, #40]
  0x80029e564:  b40000c8    cbz x8, #24
  0x80029e568:  91059109    add x9, x8, #356
  0x80029e56c:  885f7d2a    ldxr w10, [x9]
  0x80029e570:  1100054a    add w10, w10, #1
  0x80029e574:  880b7d2a    stxr w11, w10, [x9]
  0x80029e578:  35ffffab    cbnz w11, #-12
  0x80029e57c:  b9403269    ldr w9, [x19, #48]
  0x80029e580:  eb09037f    cmp x27, x9
  0x80029e584:  f9401e6a    ldr x10, [x19, #56]
  0x80029e588:  9a9f336b    csel x11, x27, xzr, lo
  0x80029e58c:  f86b7949    ldr x9, [x10, x11, lsl #3]
  0x80029e590:  f82b7948    str x8, [x10, x11, lsl #3]
  0x80029e594:  b5003649    cbnz x9, #1736
  0x80029e598:  b9403268    ldr w8, [x19, #48]
  0x80029e59c:  eb08037f    cmp x27, x8
  0x80029e5a0:  f9401e69    ldr x9, [x19, #56]
  0x80029e5a4:  9a9f3368    csel x8, x27, xzr, lo
  0x80029e5a8:  f8687928    ldr x8, [x9, x8, lsl #3]
  0x80029e5ac:  b4003268    cbz x8, #1612
  0x80029e5b0:  f940a908    ldr x8, [x8, #336]
  0x80029e5b4:  b4003228    cbz x8, #1604
  0x80029e5b8:  9100077b    add x27, x27, #1
  0x80029e5bc:  eb1a037f    cmp x27, x26
  0x80029e5c0:  54fff961    b.ne #-212
  0x80029e5c4:  d10163b6    sub x22, x29, #88
  0x80029e5c8:  b0014b89    adrp x9, #43454464
  0x80029e5cc:  91047d29    add x9, x9, #287
  0x80029e5d0:  a903a6df    stp xzr, x9, [x22, #56]
  0x80029e5d4:  f9400329    ldr x9, [x25]
  0x80029e5d8:  a902fedf    stp xzr, xzr, [x22, #40]
  0x80029e5dc:  b001b6d5    adrp x21, #57511936
  0x80029e5e0:  9100c268    add x8, x19, #48
  0x80029e5e4:  f90026df    str xzr, [x22, #72]
  0x80029e5e8:  390042df    strb wzr, [x22, #16]
  0x80029e5ec:  a901fedf    stp xzr, xzr, [x22, #24]
  0x80029e5f0:  f94506b5    ldr x21, [x21, #2568]
  0x80029e5f4:  f940a920    ldr x0, [x9, #336]
  0x80029e5f8:  a90022d9    stp x25, x8, [x22]
  0x80029e5fc:  39417008    ldrb w8, [x0, #92]
  0x80029e600:  aa0003f7    mov x23, x0
  0x80029e604:  37000068    tbnz w8, #0, #12
  0x80029e608:  f9400ae8    ldr x8, [x23, #16]
  0x80029e60c:  b50027e8    cbnz x8, #1276
  0x80029e610:  39416ae8    ldrb w8, [x23, #90]
  0x80029e614:  9100e3e0    add x0, sp, #56
  0x80029e618:  d10163a1    sub x1, x29, #88
  0x80029e61c:  9100e3f5    add x21, sp, #56
  0x80029e620:  390042c8    strb w8, [x22, #16]
  0x80029e624:  94000492    bl #4680
  0x80029e628:  52804b08    mov w8, #600
  0x80029e62c:  a941ae8a    ldp x10, x11, [x20, #24]
  0x80029e630:  b9003ec8    str w8, [x22, #60]
  0x80029e634:  a9402289    ldp x9, x8, [x20]
  0x80029e638:  f9400a60    ldr x0, [x19, #16]
  0x80029e63c:  d10103a1    sub x1, x29, #64
  0x80029e640:  a902d6cb    stp x11, x21, [x22, #40]
  0x80029e644:  a901aac8    stp x8, x10, [x22, #24]
  0x80029e648:  f9410d28    ldr x8, [x9, #536]
  0x80029e64c:  f90022c8    str x8, [x22, #64]
  0x80029e650:  529a0008    mov w8, #53248
  0x80029e654:  72a000e8    movk w8, #7, lsl #16
  0x80029e658:  b9004ac8    str w8, [x22, #72]
  0x80029e65c:  94000b2f    bl #11452
  0x80029e660:  f9400288    ldr x8, [x20]
  0x80029e664:  f941b914    ldr x20, [x8, #880]
  0x80029e668:  b40000f4    cbz x20, #28
  0x80029e66c:  aa1403e1    mov x1, x20
  0x80029e670:  f84b0c28    ldr x8, [x1, #176]!
  0x80029e674:  b50023a8    cbnz x8, #1140
  0x80029e678:  f9406a88    ldr x8, [x20, #208]
  0x80029e67c:  f27ff916    ands x22, x8, #0xfffffffffffffffe
  0x80029e680:  540001e1    b.ne #60
  0x80029e684:  f9400a68    ldr x8, [x19, #16]
  0x80029e688:  39660109    ldrb w9, [x8, #2432]
  0x80029e68c:  37183069    tbnz w9, #3, #1548
  0x80029e690:  37202349    tbnz w9, #4, #1128
  0x80029e694:  52800020    mov w0, #1
  0x80029e698:  91402bff    add sp, sp, #10, lsl #12
  0x80029e69c:  910403ff    add sp, sp, #256
  0x80029e6a0:  a9454ff4    ldp x20, x19, [sp, #80]
  0x80029e6a4:  a94457f6    ldp x22, x21, [sp, #64]
  0x80029e6a8:  a9435ff8    ldp x24, x23, [sp, #48]
  0x80029e6ac:  a94267fa    ldp x26, x25, [sp, #32]
  0x80029e6b0:  a9416ffc    ldp x28, x27, [sp, #16]
  0x80029e6b4:  a8c67bfd    ldp x29, x30, [sp], #96
  0x80029e6b8:  d65f03c0    ret
  0x80029e6bc:  b94012d7    ldr w23, [x22, #16]
  0x80029e6c0:  710006ff    cmp w23, #1
  0x80029e6c4:  54fffe0b    b.lt #-64
  0x80029e6c8:  f9400a74    ldr x20, [x19, #16]
  0x80029e6cc:  aa1f03f8    mov x24, xzr
  0x80029e6d0:  52800039    mov w25, #1
  0x80029e6d4:  72a00819    movk w25, #64, lsl #16
  0x80029e6d8:  5280191a    mov w26, #200
  0x80029e6dc:  900156db    adrp x27, #44924928
  0x80029e6e0:  9121237b    add x27, x27, #2120
  0x80029e6e4:  b94002c9    ldr w9, [x22]
  0x80029e6e8:  eb09031f    cmp x24, x9
  0x80029e6ec:  f94006c8    ldr x8, [x22, #8]
  0x80029e6f0:  9a9f3309    csel x9, x24, xzr, lo
  0x80029e6f4:  9b1a7d2a    mul x10, x9, x26
  0x80029e6f8:  b86a690a    ldr w10, [x8, x10]
  0x80029e6fc:  5100054a    sub w10, w10, #1
  0x80029e700:  71004d5f    cmp w10, #19
  0x80029e704:  540007a8    b.hi #244
  0x80029e708:  1000008b    adr x11, #16
  0x80029e70c:  786a7b6c    ldrh w12, [x27, x10, lsl #1]
  0x80029e710:  8b0c096b    add x11, x11, x12, lsl #2
  0x80029e714:  d61f0160    br x11
  0x80029e718:  9b1a212d    madd x13, x9, x26, x8
  0x80029e71c:  f8408da8    ldr x8, [x13, #8]!
  0x80029e720:  b98009a9    ldrsw x9, [x13, #8]
  0x80029e724:  8b080128    add x8, x9, x8
  0x80029e728:  381ff11f    sturb wzr, [x8, #-1]
  0x80029e72c:  b94002c8    ldr w8, [x22]
  0x80029e730:  b9418a8a    ldr w10, [x20, #392]
  0x80029e734:  eb08031f    cmp x24, x8
  0x80029e738:  9a9f3309    csel x9, x24, xzr, lo
  0x80029e73c:  340005ea    cbz w10, #188
  0x80029e740:  f94006cc    ldr x12, [x22, #8]
  0x80029e744:  2a1f03e8    mov w8, wzr
  0x80029e748:  aa1f03eb    mov x11, xzr
  0x80029e74c:  f94001ad    ldr x13, [x13]
  0x80029e750:  9b1a3129    madd x9, x9, x26, x12
  0x80029e754:  f940ca8c    ldr x12, [x20, #400]
  0x80029e758:  39426129    ldrb w9, [x9, #152]
  0x80029e75c:  937d7d6e    sbfiz x14, x11, #3, #32
  0x80029e760:  aa0d03ef    mov x15, x13
  0x80029e764:  aa1903f0    mov x16, x25
  0x80029e768:  f86e698e    ldr x14, [x12, x14]
  0x80029e76c:  eb0e01bf    cmp x13, x14
  0x80029e770:  540002a0    b.eq #84
  0x80029e774:  384015f1    ldrb w17, [x15], #1
  0x80029e778:  384015d2    ldrb w18, [x14], #1
  0x80029e77c:  6b12023f    cmp w17, w18
  0x80029e780:  54000081    b.ne #16
  0x80029e784:  34000211    cbz w17, #64
  0x80029e788:  f1000610    subs x16, x16, #1
  0x80029e78c:  54ffff41    b.ne #-24
  0x80029e790:  9100056e    add x14, x11, #1
  0x80029e794:  11000508    add w8, w8, #1
  0x80029e798:  92407dcb    and x11, x14, #0xffffffff
  0x80029e79c:  6b0e015f    cmp w10, w14
  0x80029e7a0:  54fffde1    b.ne #-68
  0x80029e7a4:  14000015    b #84
  0x80029e7a8:  f150017f    cmp x11, #1024, lsl #12
  0x80029e7ac:  54005740    b.eq #2792
  0x80029e7b0:  386b694c    ldrb w12, [x10, x11]
  0x80029e7b4:  91000569    add x9, x11, #1
  0x80029e7b8:  aa0903eb    mov x11, x9
  0x80029e7bc:  35ffff6c    cbnz w12, #-20
  0x80029e7c0:  140002b6    b #2776
  0x80029e7c4:  b9419a8a    ldr w10, [x20, #408]
  0x80029e7c8:  6b08015f    cmp w10, w8
  0x80029e7cc:  5400016d    b.le #44
  0x80029e7d0:  f940d28a    ldr x10, [x20, #416]
  0x80029e7d4:  1a9f810b    csel w11, w8, wzr, hi
  0x80029e7d8:  382b4949    strb w9, [x10, w11, uxtw]
  0x80029e7dc:  b941ea89    ldr w9, [x20, #488]
  0x80029e7e0:  f940fa8a    ldr x10, [x20, #496]
  0x80029e7e4:  6b08013f    cmp w9, w8
  0x80029e7e8:  1a9f8108    csel w8, w8, wzr, hi
  0x80029e7ec:  38684949    ldrb w9, [x10, w8, uxtw]
  0x80029e7f0:  11000529    add w9, w9, #1
  0x80029e7f4:  38284949    strb w9, [x10, w8, uxtw]
  0x80029e7f8:  91000718    add x24, x24, #1
  0x80029e7fc:  eb17031f    cmp x24, x23
  0x80029e800:  54fff721    b.ne #-284
  0x80029e804:  17ffffa0    b #-384
  0x80029e808:  9b1a212d    madd x13, x9, x26, x8
  0x80029e80c:  f8408da8    ldr x8, [x13, #8]!
  0x80029e810:  b98009a9    ldrsw x9, [x13, #8]
  0x80029e814:  8b080128    add x8, x9, x8
  0x80029e818:  381ff11f    sturb wzr, [x8, #-1]
  0x80029e81c:  b94002c8    ldr w8, [x22]
  0x80029e820:  b9409a8a    ldr w10, [x20, #152]
  0x80029e824:  eb08031f    cmp x24, x8
  0x80029e828:  9a9f3309    csel x9, x24, xzr, lo
  0x80029e82c:  34fffe6a    cbz w10, #-52
  0x80029e830:  f94006cc    ldr x12, [x22, #8]
  0x80029e834:  2a1f03e8    mov w8, wzr
  0x80029e838:  aa1f03eb    mov x11, xzr
  0x80029e83c:  f94001ad    ldr x13, [x13]
  0x80029e840:  9b1a3129    madd x9, x9, x26, x12
  0x80029e844:  f940528c    ldr x12, [x20, #160]
  0x80029e848:  b9409929    ldr w9, [x9, #152]
  0x80029e84c:  937d7d6e    sbfiz x14, x11, #3, #32
  0x80029e850:  aa0d03ef    mov x15, x13
  0x80029e854:  aa1903f0    mov x16, x25
  0x80029e858:  f86e698e    ldr x14, [x12, x14]
  0x80029e85c:  eb0e01bf    cmp x13, x14
  0x80029e860:  540001c0    b.eq #56
  0x80029e864:  384015f1    ldrb w17, [x15], #1
  0x80029e868:  384015d2    ldrb w18, [x14], #1
  0x80029e86c:  6b12023f    cmp w17, w18
  0x80029e870:  54000081    b.ne #16
  0x80029e874:  34000131    cbz w17, #36
  0x80029e878:  f1000610    subs x16, x16, #1
  0x80029e87c:  54ffff41    b.ne #-24
  0x80029e880:  9100056e    add x14, x11, #1
  0x80029e884:  11000508    add w8, w8, #1
  0x80029e888:  92407dcb    and x11, x14, #0xffffffff
  0x80029e88c:  6b0e015f    cmp w10, w14
  0x80029e890:  54fffde1    b.ne #-68
  0x80029e894:  17ffffd9    b #-156
  0x80029e898:  b940aa8a    ldr w10, [x20, #168]
  0x80029e89c:  6b08015f    cmp w10, w8
  0x80029e8a0:  54fffacd    b.le #-168
  0x80029e8a4:  f9405a8a    ldr x10, [x20, #176]
  0x80029e8a8:  1a9f810b    csel w11, w8, wzr, hi
  0x80029e8ac:  b82b5949    str w9, [x10, w11, uxtw #2]
  0x80029e8b0:  b940fa89    ldr w9, [x20, #248]
  0x80029e8b4:  f940828a    ldr x10, [x20, #256]
  0x80029e8b8:  17ffffcb    b #-212
  0x80029e8bc:  9b1a212a    madd x10, x9, x26, x8
  0x80029e8c0:  f8408d48    ldr x8, [x10, #8]!
  0x80029e8c4:  b9800949    ldrsw x9, [x10, #8]
  0x80029e8c8:  8b080128    add x8, x9, x8
  0x80029e8cc:  381ff11f    sturb wzr, [x8, #-1]
  0x80029e8d0:  b94002c8    ldr w8, [x22]
  0x80029e8d4:  b9454a89    ldr w9, [x20, #1352]
  0x80029e8d8:  eb08031f    cmp x24, x8
  0x80029e8dc:  9a9f3308    csel x8, x24, xzr, lo
  0x80029e8e0:  34fff8c9    cbz w9, #-232
  0x80029e8e4:  f94006cb    ldr x11, [x22, #8]
  0x80029e8e8:  9b1a2d08    madd x8, x8, x26, x11
  0x80029e8ec:  f942aa8b    ldr x11, [x20, #1360]
  0x80029e8f0:  f940014c    ldr x12, [x10]
  0x80029e8f4:  f940016d    ldr x13, [x11]
  0x80029e8f8:  b9409908    ldr w8, [x8, #152]
  0x80029e8fc:  eb0d019f    cmp x12, x13
  0x80029e900:  54004240    b.eq #2120
  0x80029e904:  aa1f03ee    mov x14, xzr
  0x80029e908:  2a1f03ea    mov w10, wzr
  0x80029e90c:  aa1f03ef    mov x15, xzr
  0x80029e910:  386f6990    ldrb w16, [x12, x15]
  0x80029e914:  386f69b1    ldrb w17, [x13, x15]
  0x80029e918:  6b11021f    cmp w16, w17
  0x80029e91c:  54001341    b.ne #616
  0x80029e920:  340000b0    cbz w16, #20
  0x80029e924:  910005ef    add x15, x15, #1
  0x80029e928:  eb0f033f    cmp x25, x15
  0x80029e92c:  54ffff21    b.ne #-28
  0x80029e930:  14000095    b #596
  0x80029e934:  b9455a89    ldr w9, [x20, #1368]
  0x80029e938:  6b0a013f    cmp w9, w10
  0x80029e93c:  54fff5ed    b.le #-324
  0x80029e940:  f942b289    ldr x9, [x20, #1376]
  0x80029e944:  1a9f814b    csel w11, w10, wzr, hi
  0x80029e948:  b82b5928    str w8, [x9, w11, uxtw #2]
  0x80029e94c:  b945aa88    ldr w8, [x20, #1448]
  0x80029e950:  f942da89    ldr x9, [x20, #1456]
  0x80029e954:  6b0a011f    cmp w8, w10
  0x80029e958:  1a9f8148    csel w8, w10, wzr, hi
  0x80029e95c:  3868492a    ldrb w10, [x9, w8, uxtw]
  0x80029e960:  1100054a    add w10, w10, #1
  0x80029e964:  3828492a    strb w10, [x9, w8, uxtw]
  0x80029e968:  17ffffa4    b #-368
  0x80029e96c:  9b1a212d    madd x13, x9, x26, x8
  0x80029e970:  f8408da8    ldr x8, [x13, #8]!
  0x80029e974:  b98009a9    ldrsw x9, [x13, #8]
  0x80029e978:  8b080128    add x8, x9, x8
  0x80029e97c:  381ff11f    sturb wzr, [x8, #-1]
  0x80029e980:  b94002c8    ldr w8, [x22]
  0x80029e984:  b9445a8a    ldr w10, [x20, #1112]
  0x80029e988:  eb08031f    cmp x24, x8
  0x80029e98c:  9a9f3309    csel x9, x24, xzr, lo
  0x80029e990:  34fff34a    cbz w10, #-408
  0x80029e994:  f94006cc    ldr x12, [x22, #8]
  0x80029e998:  2a1f03e8    mov w8, wzr
  0x80029e99c:  aa1f03eb    mov x11, xzr
  0x80029e9a0:  f94001ad    ldr x13, [x13]
  0x80029e9a4:  9b1a3129    madd x9, x9, x26, x12
  0x80029e9a8:  f942328c    ldr x12, [x20, #1120]
  0x80029e9ac:  39426129    ldrb w9, [x9, #152]
  0x80029e9b0:  937d7d6e    sbfiz x14, x11, #3, #32
  0x80029e9b4:  aa0d03ef    mov x15, x13
  0x80029e9b8:  aa1903f0    mov x16, x25
  0x80029e9bc:  f86e698e    ldr x14, [x12, x14]
  0x80029e9c0:  eb0e01bf    cmp x13, x14
  0x80029e9c4:  54000120    b.eq #36
  0x80029e9c8:  384015f1    ldrb w17, [x15], #1
  0x80029e9cc:  384015d2    ldrb w18, [x14], #1
  0x80029e9d0:  6b12023f    cmp w17, w18
  0x80029e9d4:  54001161    b.ne #556
  0x80029e9d8:  34000091    cbz w17, #16
  0x80029e9dc:  f1000610    subs x16, x16, #1
  0x80029e9e0:  54ffff41    b.ne #-24
  0x80029e9e4:  14000087    b #540
  0x80029e9e8:  b9446a8a    ldr w10, [x20, #1128]
  0x80029e9ec:  6b08015f    cmp w10, w8
  0x80029e9f0:  54fff04d    b.le #-504
  0x80029e9f4:  f9423a8a    ldr x10, [x20, #1136]
  0x80029e9f8:  1a9f810b    csel w11, w8, wzr, hi
  0x80029e9fc:  382b4949    strb w9, [x10, w11, uxtw]
  0x80029ea00:  b944ba89    ldr w9, [x20, #1208]
  0x80029ea04:  f942628a    ldr x10, [x20, #1216]
  0x80029ea08:  17ffff77    b #-548
  0x80029ea0c:  aa1f03ed    mov x13, xzr
  0x80029ea10:  386d694e    ldrb w14, [x10, x13]
  0x80029ea14:  386d696f    ldrb w15, [x11, x13]
  0x80029ea18:  6b0f01df    cmp w14, w15
  0x80029ea1c:  540000a1    b.ne #20
  0x80029ea20:  3400400e    cbz w14, #2048
  0x80029ea24:  910005ad    add x13, x13, #1
  0x80029ea28:  eb0d033f    cmp x25, x13
  0x80029ea2c:  54ffff21    b.ne #-28
  0x80029ea30:  9100058b    add x11, x12, #1
  0x80029ea34:  6b0b011f    cmp w8, w11
  0x80029ea38:  54ffee00    b.eq #-576
  0x80029ea3c:  92407d6c    and x12, x11, #0xffffffff
  0x80029ea40:  937d7d6b    sbfiz x11, x11, #3, #32
  0x80029ea44:  1100079c    add w28, w28, #1
  0x80029ea48:  f86b692b    ldr x11, [x9, x11]
  0x80029ea4c:  eb0b015f    cmp x10, x11
  0x80029ea50:  54fffde1    b.ne #-68
  0x80029ea54:  140001f3    b #1996
  0x80029ea58:  f9401e80    ldr x0, [x20, #56]
  0x80029ea5c:  9401dc6e    bl #487864
  0x80029ea60:  f9401e96    ldr x22, [x20, #56]
  0x80029ea64:  f9400ec8    ldr x8, [x22, #24]
  0x80029ea68:  b4000268    cbz x8, #76
  0x80029ea6c:  f940a915    ldr x21, [x8, #336]
  0x80029ea70:  08dfff08    ldarb w8, [x24]
  0x80029ea74:  360034e8    tbz w8, #0, #1692
  0x80029ea78:  b4003275    cbz x21, #1612
  0x80029ea7c:  f94002a8    ldr x8, [x21]
  0x80029ea80:  b001b6c1    adrp x1, #57511936
  0x80029ea84:  aa1503e0    mov x0, x21
  0x80029ea88:  f9400108    ldr x8, [x8]
  0x80029ea8c:  f9450421    ldr x1, [x1, #2568]
  0x80029ea90:  d63f0100    blr x8
  0x80029ea94:  b4003180    cbz x0, #1584
  0x80029ea98:  f9400ec8    ldr x8, [x22, #24]
  0x80029ea9c:  b40000c8    cbz x8, #24
  0x80029eaa0:  91059109    add x9, x8, #356
  0x80029eaa4:  885f7d2a    ldxr w10, [x9]
  0x80029eaa8:  1100054a    add w10, w10, #1
  0x80029eaac:  880b7d2a    stxr w11, w10, [x9]
  0x80029eab0:  35ffffab    cbnz w11, #-12
  0x80029eab4:  f9400335    ldr x21, [x25]
  0x80029eab8:  f9000328    str x8, [x25]
  0x80029eabc:  b4ffd095    cbz x21, #-1520
  0x80029eac0:  910592ba    add x26, x21, #356
  0x80029eac4:  b9400348    ldr w8, [x26]
  0x80029eac8:  71000509    subs w9, w8, #1
  0x80029eacc:  54004040    b.eq #2056
  0x80029ead0:  885f7f4a    ldxr w10, [x26]
  0x80029ead4:  6b0a011f    cmp w8, w10
  0x80029ead8:  54ffff61    b.ne #-20
  0x80029eadc:  880a7f49    stxr w10, w9, [x26]
  0x80029eae0:  34ffcf6a    cbz w10, #-1556
  0x80029eae4:  17fffffb    b #-20
  0x80029eae8:  f9400a60    ldr x0, [x19, #16]
  0x80029eaec:  52800022    mov w2, #1
  0x80029eaf0:  94001b7a    bl #28136
  0x80029eaf4:  17fffee1    b #-1148
  0x80029eaf8:  39410268    ldrb w8, [x19, #64]
  0x80029eafc:  321f0108    orr w8, w8, #0x2
  0x80029eb00:  39010268    strb w8, [x19, #64]
  0x80029eb04:  17fffee4    b #-1136
  0x80029eb08:  f9400ee8    ldr x8, [x23, #24]
  0x80029eb0c:  b4ffd828    cbz x8, #-1276
  0x80029eb10:  b9400d09    ldr w9, [x8, #12]
  0x80029eb14:  b94022ea    ldr w10, [x23, #32]
  0x80029eb18:  6b0a013f    cmp w9, w10
  0x80029eb1c:  54ffd7a1    b.ne #-1292
  0x80029eb20:  f9400100    ldr x0, [x8]
  0x80029eb24:  b4ffd760    cbz x0, #-1300
  0x80029eb28:  08dfff08    ldarb w8, [x24]
  0x80029eb2c:  36003128    tbz w8, #0, #1572
  0x80029eb30:  f9400008    ldr x8, [x0]
  0x80029eb34:  aa1503e1    mov x1, x21
  0x80029eb38:  f9400108    ldr x8, [x8]
  0x80029eb3c:  d63f0100    blr x8
  0x80029eb40:  b5ffd5e0    cbnz x0, #-1348
  0x80029eb44:  17fffeb3    b #-1332
  0x80029eb48:  9b1a212a    madd x10, x9, x26, x8
  0x80029eb4c:  f8408d48    ldr x8, [x10, #8]!
  0x80029eb50:  b9800949    ldrsw x9, [x10, #8]
  0x80029eb54:  8b080128    add x8, x9, x8
  0x80029eb58:  381ff11f    sturb wzr, [x8, #-1]
  0x80029eb5c:  b9400288    ldr w8, [x20]
  0x80029eb60:  34ffe4c8    cbz w8, #-872
  0x80029eb64:  f9400689    ldr x9, [x20, #8]
  0x80029eb68:  f940014a    ldr x10, [x10]
  0x80029eb6c:  f940012b    ldr x11, [x9]
  0x80029eb70:  eb0b015f    cmp x10, x11
  0x80029eb74:  54003540    b.eq #1704
  0x80029eb78:  aa1f03ec    mov x12, xzr
  0x80029eb7c:  2a1f03fc    mov w28, wzr
  0x80029eb80:  17ffffa3    b #-372
  0x80029eb84:  910005cd    add x13, x14, #1
  0x80029eb88:  6b0d013f    cmp w9, w13
  0x80029eb8c:  54ffe360    b.eq #-916
  0x80029eb90:  92407dae    and x14, x13, #0xffffffff
  0x80029eb94:  937d7dad    sbfiz x13, x13, #3, #32
  0x80029eb98:  1100054a    add w10, w10, #1
  0x80029eb9c:  f86d696d    ldr x13, [x11, x13]
  0x80029eba0:  eb0d019f    cmp x12, x13
  0x80029eba4:  54ffeb41    b.ne #-664
  0x80029eba8:  17ffff63    b #-628
  0x80029ebac:  5280190a    mov w10, #200
  0x80029ebb0:  9100e3e2    add x2, sp, #56
  0x80029ebb4:  9b0a2121    madd x1, x9, x10, x8
  0x80029ebb8:  aa1403e0    mov x0, x20
  0x80029ebbc:  f8408c28    ldr x8, [x1, #8]!
  0x80029ebc0:  b9800829    ldrsw x9, [x1, #8]
  0x80029ebc4:  8b080128    add x8, x9, x8
  0x80029ebc8:  381ff11f    sturb wzr, [x8, #-1]
  0x80029ebcc:  b94002c8    ldr w8, [x22]
  0x80029ebd0:  f94006c9    ldr x9, [x22, #8]
  0x80029ebd4:  eb08031f    cmp x24, x8
  0x80029ebd8:  9a9f3308    csel x8, x24, xzr, lo
  0x80029ebdc:  9b0a2508    madd x8, x8, x10, x9
  0x80029ebe0:  f9404d08    ldr x8, [x8, #152]
  0x80029ebe4:  f9001fe8    str x8, [sp, #56]
  0x80029ebe8:  94002360    bl #36224
  0x80029ebec:  17ffff03    b #-1012
  0x80029ebf0:  aa1f03e8    mov x8, xzr
  0x80029ebf4:  17fffe62    b #-1656
  0x80029ebf8:  2a1f03e0    mov w0, wzr
  0x80029ebfc:  17fffea7    b #-1380
  0x80029ec00:  9100056e    add x14, x11, #1
  0x80029ec04:  11000508    add w8, w8, #1
  0x80029ec08:  92407dcb    and x11, x14, #0xffffffff
  0x80029ec0c:  6b0e015f    cmp w10, w14
  0x80029ec10:  54ffed01    b.ne #-608
  0x80029ec14:  17fffef9    b #-1052
  0x80029ec18:  9001b5a8    adrp x8, #57360384
  0x80029ec1c:  aa0003fc    mov x28, x0
  0x80029ec20:  f9465908    ldr x8, [x8, #3248]
  0x80029ec24:  aa0803e0    mov x0, x8
  0x80029ec28:  94a4135e    bl #43011448
  0x80029ec2c:  2a0003e8    mov w8, w0
  0x80029ec30:  aa1c03e0    mov x0, x28
  0x80029ec34:  34ffc8a8    cbz w8, #-1772
  0x80029ec38:  b001b568    adrp x8, #57331712
  0x80029ec3c:  9001b5a0    adrp x0, #57360384
  0x80029ec40:  f944ad08    ldr x8, [x8, #2392]
  0x80029ec44:  91004108    add x8, x8, #16
  0x80029ec48:  f90002a8    str x8, [x21]
  0x80029ec4c:  f9465800    ldr x0, [x0, #3248]
  0x80029ec50:  94a41358    bl #43011424
  0x80029ec54:  aa1c03e0    mov x0, x28
  0x80029ec58:  17fffe3c    b #-1808
  0x80029ec5c:  aa1603fc    mov x28, x22
  0x80029ec60:  91059137    add x23, x9, #356
  0x80029ec64:  f90013e9    str x9, [sp, #32]
  0x80029ec68:  b94002e8    ldr w8, [x23]
  0x80029ec6c:  71000509    subs w9, w8, #1
  0x80029ec70:  54002920    b.eq #1316
  0x80029ec74:  885f7eea    ldxr w10, [x23]
  0x80029ec78:  6b0a011f    cmp w8, w10
  0x80029ec7c:  54ffff61    b.ne #-20
  0x80029ec80:  880a7ee9    stxr w10, w9, [x23]
  0x80029ec84:  aa1c03f6    mov x22, x28
  0x80029ec88:  34ffc88a    cbz w10, #-1776
  0x80029ec8c:  17fffffa    b #-24
  0x80029ec90:  2a1f03e0    mov w0, wzr
  0x80029ec94:  d65f03c0    ret
  0x80029ec98:  39410269    ldrb w9, [x19, #64]
  0x80029ec9c:  32000129    orr w9, w9, #0x1
  0x80029eca0:  39010269    strb w9, [x19, #64]
  0x80029eca4:  39660109    ldrb w9, [x8, #2432]
  0x80029eca8:  17fffe7a    b #-1560
  0x80029ecac:  5280190a    mov w10, #200
  0x80029ecb0:  9100e3e2    add x2, sp, #56
  0x80029ecb4:  9b0a2121    madd x1, x9, x10, x8
  0x80029ecb8:  aa1403e0    mov x0, x20
  0x80029ecbc:  f8408c28    ldr x8, [x1, #8]!
  0x80029ecc0:  b9800829    ldrsw x9, [x1, #8]
  0x80029ecc4:  8b080128    add x8, x9, x8
  0x80029ecc8:  381ff11f    sturb wzr, [x8, #-1]
  0x80029eccc:  b94002c8    ldr w8, [x22]
  0x80029ecd0:  f94006c9    ldr x9, [x22, #8]
  0x80029ecd4:  eb08031f    cmp x24, x8
  0x80029ecd8:  9a9f3308    csel x8, x24, xzr, lo
  0x80029ecdc:  9b0a2508    madd x8, x8, x10, x9
  0x80029ece0:  39426108    ldrb w8, [x8, #152]
  0x80029ece4:  3900e3e8    strb w8, [sp, #56]
  0x80029ece8:  946a2876    bl #27828696
  0x80029ecec:  17fffec3    b #-1268
  0x80029ecf0:  5280190a    mov w10, #200
  0x80029ecf4:  9100e3e2    add x2, sp, #56
  0x80029ecf8:  9b0a2121    madd x1, x9, x10, x8
  0x80029ecfc:  aa1403e0    mov x0, x20
  0x80029ed00:  f8408c28    ldr x8, [x1, #8]!
  0x80029ed04:  b9800829    ldrsw x9, [x1, #8]
  0x80029ed08:  8b080128    add x8, x9, x8
  0x80029ed0c:  381ff11f    sturb wzr, [x8, #-1]
  0x80029ed10:  b94002c8    ldr w8, [x22]
  0x80029ed14:  f94006c9    ldr x9, [x22, #8]
  0x80029ed18:  eb08031f    cmp x24, x8
  0x80029ed1c:  9a9f3308    csel x8, x24, xzr, lo
  0x80029ed20:  9b0a2508    madd x8, x8, x10, x9
  0x80029ed24:  79413108    ldrh w8, [x8, #152]
  0x80029ed28:  790073e8    strh w8, [sp, #56]
  0x80029ed2c:  946a287f    bl #27828732
  0x80029ed30:  17fffeb2    b #-1336
  0x80029ed34:  5280190a    mov w10, #200
  0x80029ed38:  9100e3e2    add x2, sp, #56
  0x80029ed3c:  9b0a2121    madd x1, x9, x10, x8
  0x80029ed40:  aa1403e0    mov x0, x20
  0x80029ed44:  f8408c28    ldr x8, [x1, #8]!
  0x80029ed48:  b9800829    ldrsw x9, [x1, #8]
  0x80029ed4c:  8b080128    add x8, x9, x8
  0x80029ed50:  381ff11f    sturb wzr, [x8, #-1]
  0x80029ed54:  b94002c8    ldr w8, [x22]
  0x80029ed58:  f94006c9    ldr x9, [x22, #8]
  0x80029ed5c:  eb08031f    cmp x24, x8
  0x80029ed60:  9a9f3308    csel x8, x24, xzr, lo
  0x80029ed64:  9b0a2508    madd x8, x8, x10, x9
  0x80029ed68:  f9404d08    ldr x8, [x8, #152]
  0x80029ed6c:  f9001fe8    str x8, [sp, #56]
  0x80029ed70:  946a2888    bl #27828768
  0x80029ed74:  17fffea1    b #-1404
  0x80029ed78:  5280190a    mov w10, #200
  0x80029ed7c:  9100e3e2    add x2, sp, #56
  0x80029ed80:  9b0a2121    madd x1, x9, x10, x8
  0x80029ed84:  aa1403e0    mov x0, x20
  0x80029ed88:  f8408c28    ldr x8, [x1, #8]!
  0x80029ed8c:  b9800829    ldrsw x9, [x1, #8]
  0x80029ed90:  8b080128    add x8, x9, x8
  0x80029ed94:  381ff11f    sturb wzr, [x8, #-1]
  0x80029ed98:  b94002c8    ldr w8, [x22]
  0x80029ed9c:  f94006c9    ldr x9, [x22, #8]
  0x80029eda0:  eb08031f    cmp x24, x8
  0x80029eda4:  9a9f3308    csel x8, x24, xzr, lo
  0x80029eda8:  9b0a2508    madd x8, x8, x10, x9
  0x80029edac:  bd40a102    ldr s2, [x8, #160]
  0x80029edb0:  2d530500    ldp s0, s1, [x8, #152]
  0x80029edb4:  2d0707e0    stp s0, s1, [sp, #56]
  0x80029edb8:  bd0043e2    str s2, [sp, #64]
  0x80029edbc:  9400228b    bl #35372
  0x80029edc0:  17fffe8e    b #-1480
  0x80029edc4:  5280190a    mov w10, #200
  0x80029edc8:  9100e3e2    add x2, sp, #56
  0x80029edcc:  9b0a2121    madd x1, x9, x10, x8
  0x80029edd0:  aa1403e0    mov x0, x20
  0x80029edd4:  f8408c28    ldr x8, [x1, #8]!
  0x80029edd8:  b9800829    ldrsw x9, [x1, #8]
  0x80029eddc:  8b080128    add x8, x9, x8
  0x80029ede0:  381ff11f    sturb wzr, [x8, #-1]
  0x80029ede4:  b94002c8    ldr w8, [x22]
  0x80029ede8:  f94006c9    ldr x9, [x22, #8]
  0x80029edec:  eb08031f    cmp x24, x8
  0x80029edf0:  9a9f3308    csel x8, x24, xzr, lo
  0x80029edf4:  9b0a2508    madd x8, x8, x10, x9
  0x80029edf8:  f9404d08    ldr x8, [x8, #152]
  0x80029edfc:  f9001fe8    str x8, [sp, #56]
  0x80029ee00:  946a28f0    bl #27829184
  0x80029ee04:  17fffe7d    b #-1548
  0x80029ee08:  5280190a    mov w10, #200
  0x80029ee0c:  9100e3e2    add x2, sp, #56
  0x80029ee10:  9b0a2121    madd x1, x9, x10, x8
  0x80029ee14:  aa1403e0    mov x0, x20
  0x80029ee18:  f8408c28    ldr x8, [x1, #8]!
  0x80029ee1c:  b9800829    ldrsw x9, [x1, #8]
  0x80029ee20:  8b080128    add x8, x9, x8
  0x80029ee24:  381ff11f    sturb wzr, [x8, #-1]
  0x80029ee28:  b94002c8    ldr w8, [x22]
  0x80029ee2c:  f94006c9    ldr x9, [x22, #8]
  0x80029ee30:  eb08031f    cmp x24, x8
  0x80029ee34:  9a9f3308    csel x8, x24, xzr, lo
  0x80029ee38:  9b0a2508    madd x8, x8, x10, x9
  0x80029ee3c:  fd404d00    ldr d0, [x8, #152]
  0x80029ee40:  fd001fe0    str d0, [sp, #56]
  0x80029ee44:  946a28f9    bl #27829220
  0x80029ee48:  17fffe6c    b #-1616
  0x80029ee4c:  5280190a    mov w10, #200
  0x80029ee50:  9100e3e2    add x2, sp, #56
  0x80029ee54:  9b0a2121    madd x1, x9, x10, x8
  0x80029ee58:  aa1403e0    mov x0, x20
  0x80029ee5c:  f8408c28    ldr x8, [x1, #8]!
  0x80029ee60:  b9800829    ldrsw x9, [x1, #8]
  0x80029ee64:  8b080128    add x8, x9, x8
  0x80029ee68:  381ff11f    sturb wzr, [x8, #-1]
  0x80029ee6c:  b94002c8    ldr w8, [x22]
  0x80029ee70:  f94006c9    ldr x9, [x22, #8]
  0x80029ee74:  eb08031f    cmp x24, x8
  0x80029ee78:  9a9f3308    csel x8, x24, xzr, lo
  0x80029ee7c:  9b0a2508    madd x8, x8, x10, x9
  0x80029ee80:  f9404d09    ldr x9, [x8, #152]
  0x80029ee84:  b940a108    ldr w8, [x8, #160]
  0x80029ee88:  f9001fe9    str x9, [sp, #56]
  0x80029ee8c:  b90043e8    str w8, [sp, #64]
  0x80029ee90:  946a2900    bl #27829248
  0x80029ee94:  17fffe59    b #-1692
  0x80029ee98:  5280190a    mov w10, #200
  0x80029ee9c:  9100e3e2    add x2, sp, #56
  0x80029eea0:  9b0a2121    madd x1, x9, x10, x8
  0x80029eea4:  aa1403e0    mov x0, x20
  0x80029eea8:  f8408c28    ldr x8, [x1, #8]!
  0x80029eeac:  b9800829    ldrsw x9, [x1, #8]
  0x80029eeb0:  8b080128    add x8, x9, x8
  0x80029eeb4:  381ff11f    sturb wzr, [x8, #-1]
  0x80029eeb8:  b94002c8    ldr w8, [x22]
  0x80029eebc:  f94006c9    ldr x9, [x22, #8]
  0x80029eec0:  eb08031f    cmp x24, x8
  0x80029eec4:  9a9f3308    csel x8, x24, xzr, lo
  0x80029eec8:  9b0a2508    madd x8, x8, x10, x9
  0x80029eecc:  2d530500    ldp s0, s1, [x8, #152]
  0x80029eed0:  2d540d02    ldp s2, s3, [x8, #160]
  0x80029eed4:  2d0707e0    stp s0, s1, [sp, #56]
  0x80029eed8:  2d080fe2    stp s2, s3, [sp, #64]
  0x80029eedc:  946a290b    bl #27829292
  0x80029eee0:  17fffe46    b #-1768
  0x80029eee4:  5280190a    mov w10, #200
  0x80029eee8:  52800482    mov w2, #36
  0x80029eeec:  9b0a2135    madd x21, x9, x10, x8
  0x80029eef0:  9100e3e0    add x0, sp, #56
  0x80029eef4:  f8408ea8    ldr x8, [x21, #8]!
  0x80029eef8:  b9800aa9    ldrsw x9, [x21, #8]
  0x80029eefc:  8b080128    add x8, x9, x8
  0x80029ef00:  381ff11f    sturb wzr, [x8, #-1]
  0x80029ef04:  b94002c8    ldr w8, [x22]
  0x80029ef08:  f94006c9    ldr x9, [x22, #8]
  0x80029ef0c:  eb08031f    cmp x24, x8
  0x80029ef10:  9a9f3308    csel x8, x24, xzr, lo
  0x80029ef14:  9b0a2508    madd x8, x8, x10, x9
  0x80029ef18:  91026101    add x1, x8, #152
  0x80029ef1c:  94a414ad    bl #43012788
  0x80029ef20:  9100e3e2    add x2, sp, #56
  0x80029ef24:  aa1403e0    mov x0, x20
  0x80029ef28:  aa1503e1    mov x1, x21
  0x80029ef2c:  946a2912    bl #27829320
  0x80029ef30:  17fffe32    b #-1848
  0x80029ef34:  5280190a    mov w10, #200
  0x80029ef38:  aa1403e0    mov x0, x20
  0x80029ef3c:  9b0a2121    madd x1, x9, x10, x8
  0x80029ef40:  52800022    mov w2, #1
  0x80029ef44:  2a1f03e3    mov w3, wzr
  0x80029ef48:  f8408c28    ldr x8, [x1, #8]!
  0x80029ef4c:  b9800829    ldrsw x9, [x1, #8]
  0x80029ef50:  8b080128    add x8, x9, x8
  0x80029ef54:  381ff11f    sturb wzr, [x8, #-1]
  0x80029ef58:  b94002c8    ldr w8, [x22]
  0x80029ef5c:  f94006c9    ldr x9, [x22, #8]
  0x80029ef60:  eb08031f    cmp x24, x8
  0x80029ef64:  9a9f3308    csel x8, x24, xzr, lo
  0x80029ef68:  9b0a2508    madd x8, x8, x10, x9
  0x80029ef6c:  3cc98101    ldur q1, [x8, #152]
  0x80029ef70:  3cca8100    ldur q0, [x8, #168]
  0x80029ef74:  ad0087e0    stp q0, q1, [sp, #16]
  0x80029ef78:  3ccb8100    ldur q0, [x8, #184]
  0x80029ef7c:  3d8003e0    str q0, [sp]
  0x80029ef80:  946a2ce6    bl #27833240
  0x80029ef84:  37ffc3a0    tbnz w0, #31, #-1932
  0x80029ef88:  b9482a88    ldr w8, [x20, #2088]
  0x80029ef8c:  6b00011f    cmp w8, w0
  0x80029ef90:  54ffc34d    b.le #-1944
  0x80029ef94:  f9441a88    ldr x8, [x20, #2096]
  0x80029ef98:  5280060a    mov w10, #48
  0x80029ef9c:  2a0003e9    mov w9, w0
  0x80029efa0:  3dc00be1    ldr q1, [sp, #32]
  0x80029efa4:  9baa2008    umaddl x8, w0, w10, x8
  0x80029efa8:  3dc007e0    ldr q0, [sp, #16]
  0x80029efac:  ad000101    stp q1, q0, [x8]
  0x80029efb0:  3dc003e0    ldr q0, [sp]
  0x80029efb4:  3d800900    str q0, [x8, #32]
  0x80029efb8:  b9487a88    ldr w8, [x20, #2168]
  0x80029efbc:  f944428a    ldr x10, [x20, #2176]
  0x80029efc0:  6b00011f    cmp w8, w0
  0x80029efc4:  9a9f8128    csel x8, x9, xzr, hi
  0x80029efc8:  38686949    ldrb w9, [x10, x8]
  0x80029efcc:  11000529    add w9, w9, #1
  0x80029efd0:  38286949    strb w9, [x10, x8]
  0x80029efd4:  17fffe09    b #-2012
  0x80029efd8:  5280190a    mov w10, #200
  0x80029efdc:  9100e3e2    add x2, sp, #56
  0x80029efe0:  9b0a2121    madd x1, x9, x10, x8
  0x80029efe4:  aa1403e0    mov x0, x20
  0x80029efe8:  f8408c28    ldr x8, [x1, #8]!
  0x80029efec:  b9800829    ldrsw x9, [x1, #8]
  0x80029eff0:  8b080128    add x8, x9, x8
  0x80029eff4:  381ff11f    sturb wzr, [x8, #-1]
  0x80029eff8:  b94002c8    ldr w8, [x22]
  0x80029effc:  f94006c9    ldr x9, [x22, #8]
  0x80029f000:  eb08031f    cmp x24, x8
  0x80029f004:  9a9f3308    csel x8, x24, xzr, lo
  0x80029f008:  9b0a2508    madd x8, x8, x10, x9
  0x80029f00c:  2d530500    ldp s0, s1, [x8, #152]
  0x80029f010:  2d540d02    ldp s2, s3, [x8, #160]
  0x80029f014:  2d0707e0    stp s0, s1, [sp, #56]
  0x80029f018:  2d080fe2    stp s2, s3, [sp, #64]
  0x80029f01c:  946a28eb    bl #27829164
  0x80029f020:  17fffdf6    b #-2088
  0x80029f024:  5280190a    mov w10, #200
  0x80029f028:  aa1403e0    mov x0, x20
  0x80029f02c:  9b0a2121    madd x1, x9, x10, x8
  0x80029f030:  52800022    mov w2, #1
  0x80029f034:  2a1f03e3    mov w3, wzr
  0x80029f038:  f8408c28    ldr x8, [x1, #8]!
  0x80029f03c:  b9800829    ldrsw x9, [x1, #8]
  0x80029f040:  8b080128    add x8, x9, x8
  0x80029f044:  381ff11f    sturb wzr, [x8, #-1]
  0x80029f048:  b94002c8    ldr w8, [x22]
  0x80029f04c:  f94006c9    ldr x9, [x22, #8]
  0x80029f050:  eb08031f    cmp x24, x8
  0x80029f054:  9a9f3308    csel x8, x24, xzr, lo
  0x80029f058:  9b0a2508    madd x8, x8, x10, x9
  0x80029f05c:  f9404d08    ldr x8, [x8, #152]
  0x80029f060:  f9001fe8    str x8, [sp, #56]
  0x80029f064:  946a2d3c    bl #27833584
  0x80029f068:  37ffbc80    tbnz w0, #31, #-2160
  0x80029f06c:  2a0003e1    mov w1, w0
  0x80029f070:  9100e3e2    add x2, sp, #56
  0x80029f074:  aa1403e0    mov x0, x20
  0x80029f078:  946a2d54    bl #27833680
  0x80029f07c:  17fffddf    b #-2180
  0x80029f080:  5280190a    mov w10, #200
  0x80029f084:  9100e3e2    add x2, sp, #56
  0x80029f088:  9b0a2121    madd x1, x9, x10, x8
  0x80029f08c:  aa1403e0    mov x0, x20
  0x80029f090:  f8408c28    ldr x8, [x1, #8]!
  0x80029f094:  b9800829    ldrsw x9, [x1, #8]
  0x80029f098:  8b080128    add x8, x9, x8
  0x80029f09c:  381ff11f    sturb wzr, [x8, #-1]
  0x80029f0a0:  b94002c8    ldr w8, [x22]
  0x80029f0a4:  f94006c9    ldr x9, [x22, #8]
  0x80029f0a8:  eb08031f    cmp x24, x8
  0x80029f0ac:  9a9f3308    csel x8, x24, xzr, lo
  0x80029f0b0:  9b0a2508    madd x8, x8, x10, x9
  0x80029f0b4:  bd409900    ldr s0, [x8, #152]
  0x80029f0b8:  bd003be0    str s0, [sp, #56]
  0x80029f0bc:  946a2725    bl #27827348
  0x80029f0c0:  17fffdce    b #-2248
  0x80029f0c4:  aa1f03e8    mov x8, xzr
  0x80029f0c8:  17fffe7b    b #-1556
  0x80029f0cc:  5280190a    mov w10, #200
  0x80029f0d0:  9100e3e2    add x2, sp, #56
  0x80029f0d4:  9b0a2121    madd x1, x9, x10, x8
  0x80029f0d8:  aa1403e0    mov x0, x20
  0x80029f0dc:  f8408c28    ldr x8, [x1, #8]!
  0x80029f0e0:  b9800829    ldrsw x9, [x1, #8]
  0x80029f0e4:  8b080128    add x8, x9, x8
  0x80029f0e8:  381ff11f    sturb wzr, [x8, #-1]
  0x80029f0ec:  b94002c8    ldr w8, [x22]
  0x80029f0f0:  f94006c9    ldr x9, [x22, #8]
  0x80029f0f4:  eb08031f    cmp x24, x8
  0x80029f0f8:  9a9f3308    csel x8, x24, xzr, lo
  0x80029f0fc:  9b0a2508    madd x8, x8, x10, x9
  0x80029f100:  79413108    ldrh w8, [x8, #152]
  0x80029f104:  790073e8    strh w8, [sp, #56]
  0x80029f108:  946a27e6    bl #27828120
  0x80029f10c:  17fffdbb    b #-2324
  0x80029f110:  9001b6c0    adrp x0, #57507840
  0x80029f114:  f9450800    ldr x0, [x0, #2576]
  0x80029f118:  94a41222    bl #43010184
  0x80029f11c:  34ffcae0    cbz w0, #-1700
  0x80029f120:  9001b568    adrp x8, #57327616
  0x80029f124:  9001b6c9    adrp x9, #57507840
  0x80029f128:  f944ad08    ldr x8, [x8, #2392]
  0x80029f12c:  f9450529    ldr x9, [x9, #2568]
  0x80029f130:  9001b6c0    adrp x0, #57507840
  0x80029f134:  91004108    add x8, x8, #16
  0x80029f138:  f9000128    str x8, [x9]
  0x80029f13c:  f9450800    ldr x0, [x0, #2576]
  0x80029f140:  94a4121c    bl #43010160
  0x80029f144:  17fffe4d    b #-1740
  0x80029f148:  2a1f03ea    mov w10, wzr
  0x80029f14c:  17fffdfa    b #-2072
  0x80029f150:  9001b6c8    adrp x8, #57507840
  0x80029f154:  aa0003f9    mov x25, x0
  0x80029f158:  f9450908    ldr x8, [x8, #2576]
  0x80029f15c:  aa0803e0    mov x0, x8
  0x80029f160:  94a41210    bl #43010112
  0x80029f164:  2a0003e8    mov w8, w0
  0x80029f168:  aa1903e0    mov x0, x25
  0x80029f16c:  34ffce28    cbz w8, #-1596
  0x80029f170:  9001b568    adrp x8, #57327616
  0x80029f174:  9001b6c0    adrp x0, #57507840
  0x80029f178:  f944ad08    ldr x8, [x8, #2392]
  0x80029f17c:  91004108    add x8, x8, #16
  0x80029f180:  f90002a8    str x8, [x21]
  0x80029f184:  f9450800    ldr x0, [x0, #2576]
  0x80029f188:  94a4120a    bl #43010088
  0x80029f18c:  aa1903e0    mov x0, x25
  0x80029f190:  17fffe68    b #-1632
  0x80029f194:  b001b568    adrp x8, #57331712
  0x80029f198:  f9461108    ldr x8, [x8, #3104]
  0x80029f19c:  f94013e1    ldr x1, [sp, #32]
  0x80029f1a0:  f9400116    ldr x22, [x8]
  0x80029f1a4:  f9400ec0    ldr x0, [x22, #24]
  0x80029f1a8:  f9400008    ldr x8, [x0]
  0x80029f1ac:  f9401108    ldr x8, [x8, #32]
  0x80029f1b0:  d63f0100    blr x8
  0x80029f1b4:  36000260    tbz w0, #0, #76
  0x80029f1b8:  910182c8    add x8, x22, #96
  0x80029f1bc:  f9000be8    str x8, [sp, #16]
  0x80029f1c0:  f94013e8    ldr x8, [sp, #32]
  0x80029f1c4:  f9401d09    ldr x9, [x8, #56]
  0x80029f1c8:  b980410a    ldrsw x10, [x8, #64]
  0x80029f1cc:  8b090149    add x9, x10, x9
  0x80029f1d0:  381ff13f    sturb wzr, [x9, #-1]
  0x80029f1d4:  f940a900    ldr x0, [x8, #336]
  0x80029f1d8:  f9401d16    ldr x22, [x8, #56]
  0x80029f1dc:  f9400008    ldr x8, [x0]
  0x80029f1e0:  f9403108    ldr x8, [x8, #96]
  0x80029f1e4:  d63f0100    blr x8
  0x80029f1e8:  aa0003e1    mov x1, x0
  0x80029f1ec:  aa1603e0    mov x0, x22
  0x80029f1f0:  97fbd008    bl #-1097696
  0x80029f1f4:  aa0003e1    mov x1, x0
  0x80029f1f8:  f9400be0    ldr x0, [sp, #16]
  0x80029f1fc:  941ca1f5    bl #7505876
  0x80029f200:  885f7ee8    ldxr w8, [x23]
  0x80029f204:  7100051f    cmp w8, #1
  0x80029f208:  54ffd301    b.ne #-1440
  0x80029f20c:  88087eff    stxr w8, wzr, [x23]
  0x80029f210:  aa1c03f6    mov x22, x28
  0x80029f214:  34ff9c28    cbz w8, #-3196
  0x80029f218:  17fffffa    b #-24
  0x80029f21c:  2a1f03fc    mov w28, wzr
  0x80029f220:  b9404288    ldr w8, [x20, #64]
  0x80029f224:  6b1c011f    cmp w8, w28
  0x80029f228:  f9402689    ldr x9, [x20, #72]
  0x80029f22c:  1a9f8388    csel w8, w28, wzr, hi
  0x80029f230:  b8685928    ldr w8, [x9, w8, uxtw #2]
  0x80029f234:  34ffae28    cbz w8, #-2620
  0x80029f238:  b94002c8    ldr w8, [x22]
  0x80029f23c:  eb08031f    cmp x24, x8
  0x80029f240:  b9401289    ldr w9, [x20, #16]
  0x80029f244:  9a9f3308    csel x8, x24, xzr, lo
  0x80029f248:  6b1c013f    cmp w9, w28
  0x80029f24c:  54ffad6d    b.le #-2644
  0x80029f250:  f94006c9    ldr x9, [x22, #8]
  0x80029f254:  9b1a2509    madd x9, x8, x26, x9
  0x80029f258:  b9405288    ldr w8, [x20, #80]
  0x80029f25c:  f9402e8a    ldr x10, [x20, #88]
  0x80029f260:  6b1c011f    cmp w8, w28
  0x80029f264:  1a9f8388    csel w8, w28, wzr, hi
  0x80029f268:  f9404d21    ldr x1, [x9, #152]
  0x80029f26c:  f8685948    ldr x8, [x10, w8, uxtw #3]
  0x80029f270:  f9400115    ldr x21, [x8]
  0x80029f274:  eb0102bf    cmp x21, x1
  0x80029f278:  54000240    b.eq #72
  0x80029f27c:  b40000c1    cbz x1, #24
  0x80029f280:  39400029    ldrb w9, [x1]
  0x80029f284:  340000a9    cbz w9, #20
  0x80029f288:  aa1f03eb    mov x11, xzr
  0x80029f28c:  9100042a    add x10, x1, #1
  0x80029f290:  17fffd46    b #-2792
  0x80029f294:  2a1f03e9    mov w9, wzr
  0x80029f298:  b9400908    ldr w8, [x8, #8]
  0x80029f29c:  aa1503e0    mov x0, x21
  0x80029f2a0:  5100050a    sub w10, w8, #1
  0x80029f2a4:  6b08013f    cmp w9, w8
  0x80029f2a8:  1a8ab13b    csel w27, w9, w10, lt
  0x80029f2ac:  93407f62    sxtw x2, w27
  0x80029f2b0:  94a413c8    bl #43011872
  0x80029f2b4:  383bcabf    strb wzr, [x21, w27, sxtw]
  0x80029f2b8:  f00156bb    adrp x27, #44920832
  0x80029f2bc:  9121237b    add x27, x27, #2120
  0x80029f2c0:  b9408288    ldr w8, [x20, #128]
  0x80029f2c4:  6b1c011f    cmp w8, w28
  0x80029f2c8:  f9404689    ldr x9, [x20, #136]
  0x80029f2cc:  1a9f8388    csel w8, w28, wzr, hi
  0x80029f2d0:  17fffda3    b #-2420
  0x80029f2d4:  b001b568    adrp x8, #57331712
  0x80029f2d8:  aa1503e1    mov x1, x21
  0x80029f2dc:  f9461108    ldr x8, [x8, #3104]
  0x80029f2e0:  f9400116    ldr x22, [x8]
  0x80029f2e4:  f9400ec0    ldr x0, [x22, #24]
  0x80029f2e8:  f9400008    ldr x8, [x0]
  0x80029f2ec:  f9401108    ldr x8, [x8, #32]
  0x80029f2f0:  d63f0100    blr x8
  0x80029f2f4:  36000220    tbz w0, #0, #68
  0x80029f2f8:  f9401ea8    ldr x8, [x21, #56]
  0x80029f2fc:  910182d6    add x22, x22, #96
  0x80029f300:  b98042a9    ldrsw x9, [x21, #64]
  0x80029f304:  8b080128    add x8, x9, x8
  0x80029f308:  381ff11f    sturb wzr, [x8, #-1]
  0x80029f30c:  f940aaa0    ldr x0, [x21, #336]
  0x80029f310:  f9401eb7    ldr x23, [x21, #56]
  0x80029f314:  f9400008    ldr x8, [x0]
  0x80029f318:  f9403108    ldr x8, [x8, #96]
  0x80029f31c:  d63f0100    blr x8
  0x80029f320:  aa0003e1    mov x1, x0
  0x80029f324:  aa1703e0    mov x0, x23
  0x80029f328:  97fbcfba    bl #-1098008
  0x80029f32c:  aa0003e1    mov x1, x0
  0x80029f330:  aa1603e0    mov x0, x22
  0x80029f334:  941ca1a7    bl #7505564
  0x80029f338:  885f7f48    ldxr w8, [x26]
  0x80029f33c:  7100051f    cmp w8, #1
  0x80029f340:  54ffbc21    b.ne #-2172
  0x80029f344:  88087f5f    stxr w8, wzr, [x26]
  0x80029f348:  34ff8c28    cbz w8, #-3708
  0x80029f34c:  17fffffb    b #-20

