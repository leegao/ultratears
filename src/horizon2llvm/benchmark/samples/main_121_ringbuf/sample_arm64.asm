; UltraTears chunk main_121_ringbuf: 1 functions [0x8001da280..0x8001dafa8)

; Function f_8001da280 [0x8001da280..0x8001dafa8)
f_8001da280:
  0x8001da280:  d10643ff    sub sp, sp, #400
  0x8001da284:  a9137bfd    stp x29, x30, [sp, #304]
  0x8001da288:  a9146ffc    stp x28, x27, [sp, #320]
  0x8001da28c:  a91567fa    stp x26, x25, [sp, #336]
  0x8001da290:  a9165ff8    stp x24, x23, [sp, #352]
  0x8001da294:  a91757f6    stp x22, x21, [sp, #368]
  0x8001da298:  a9184ff4    stp x20, x19, [sp, #384]
  0x8001da29c:  9104c3fd    add x29, sp, #304
  0x8001da2a0:  a9402009    ldp x9, x8, [x0]
  0x8001da2a4:  2a0303f7    mov w23, w3
  0x8001da2a8:  9001bba3    adrp x3, #58146816
  0x8001da2ac:  aa0203f3    mov x19, x2
  0x8001da2b0:  aa0003f5    mov x21, x0
  0x8001da2b4:  aa0103f8    mov x24, x1
  0x8001da2b8:  f9400914    ldr x20, [x8, #16]
  0x8001da2bc:  f9404d28    ldr x8, [x9, #152]
  0x8001da2c0:  f9439863    ldr x3, [x3, #1840]
  0x8001da2c4:  eb03011f    cmp x8, x3
  0x8001da2c8:  54003f41    b.ne #2024
  0x8001da2cc:  79403aa8    ldrh w8, [x21, #28]
  0x8001da2d0:  5280078a    mov w10, #60
  0x8001da2d4:  f9402689    ldr x9, [x20, #72]
  0x8001da2d8:  9baa2508    umaddl x8, w8, w10, x9
  0x8001da2dc:  b9801509    ldrsw x9, [x8, #20]
  0x8001da2e0:  f9400a88    ldr x8, [x20, #16]
  0x8001da2e4:  8b090100    add x0, x8, x9
  0x8001da2e8:  b9405409    ldr w9, [x0, #84]
  0x8001da2ec:  52b84005    mov w5, #-1040187392
  0x8001da2f0:  7100053f    cmp w9, #1
  0x8001da2f4:  5400064b    b.lt #200
  0x8001da2f8:  f940168b    ldr x11, [x20, #40]
  0x8001da2fc:  aa1f03ea    mov x10, xzr
  0x8001da300:  b980500c    ldrsw x12, [x0, #80]
  0x8001da304:  f940030d    ldr x13, [x24]
  0x8001da308:  910005ae    add x14, x13, #1
  0x8001da30c:  b980116b    ldrsw x11, [x11, #16]
  0x8001da310:  8b0b010b    add x11, x8, x11
  0x8001da314:  8b0c116b    add x11, x11, x12, lsl #4
  0x8001da318:  b980250c    ldrsw x12, [x8, #36]
  0x8001da31c:  8b0c010c    add x12, x8, x12
  0x8001da320:  91000d8f    add x15, x12, #3
  0x8001da324:  d37ced50    lsl x16, x10, #4
  0x8001da328:  b8b06971    ldrsw x17, [x11, x16]
  0x8001da32c:  8b110190    add x16, x12, x17
  0x8001da330:  eb1001bf    cmp x13, x16
  0x8001da334:  540005a0    b.eq #180
  0x8001da338:  aa1f03f0    mov x16, xzr
  0x8001da33c:  8b1101f1    add x17, x15, x17
  0x8001da340:  8b1001d2    add x18, x14, x16
  0x8001da344:  8b100220    add x0, x17, x16
  0x8001da348:  385ff241    ldurb w1, [x18, #-1]
  0x8001da34c:  385fd002    ldurb w2, [x0, #-3]
  0x8001da350:  6b02003f    cmp w1, w2
  0x8001da354:  540002e1    b.ne #92
  0x8001da358:  34000481    cbz w1, #144
  0x8001da35c:  f150021f    cmp x16, #1024, lsl #12
  0x8001da360:  54000280    b.eq #80
  0x8001da364:  387069c1    ldrb w1, [x14, x16]
  0x8001da368:  385fe002    ldurb w2, [x0, #-2]
  0x8001da36c:  6b02003f    cmp w1, w2
  0x8001da370:  54000201    b.ne #64
  0x8001da374:  340003a1    cbz w1, #116
  0x8001da378:  39400641    ldrb w1, [x18, #1]
  0x8001da37c:  385ff000    ldurb w0, [x0, #-1]
  0x8001da380:  6b00003f    cmp w1, w0
  0x8001da384:  54000161    b.ne #44
  0x8001da388:  34000301    cbz w1, #96
  0x8001da38c:  39400a52    ldrb w18, [x18, #2]
  0x8001da390:  38706a20    ldrb w0, [x17, x16]
  0x8001da394:  6b00025f    cmp w18, w0
  0x8001da398:  540000c1    b.ne #24
  0x8001da39c:  34000272    cbz w18, #76
  0x8001da3a0:  91001210    add x16, x16, #4
  0x8001da3a4:  17ffffe7    b #-100
  0x8001da3a8:  d503201f    nop
  0x8001da3ac:  d503201f    nop
  0x8001da3b0:  9100054a    add x10, x10, #1
  0x8001da3b4:  eb09015f    cmp x10, x9
  0x8001da3b8:  54fffb61    b.ne #-148
  0x8001da3bc:  37005ab7    tbnz w23, #0, #2900
  0x8001da3c0:  52800036    mov w22, #1
  0x8001da3c4:  b001bc28    adrp x8, #58216448
  0x8001da3c8:  f9455d08    ldr x8, [x8, #2744]
  0x8001da3cc:  08dffd08    ldarb w8, [x8]
  0x8001da3d0:  36005ca8    tbz w8, #0, #2964
  0x8001da3d4:  b001bc34    adrp x20, #58216448
  0x8001da3d8:  2a1f03fa    mov w26, wzr
  0x8001da3dc:  f9455a94    ldr x20, [x20, #2736]
  0x8001da3e0:  2a1f03fc    mov w28, wzr
  0x8001da3e4:  140000d0    b #832
  0x8001da3e8:  8b0a1174    add x20, x11, x10, lsl #4
  0x8001da3ec:  aa1403fa    mov x26, x20
  0x8001da3f0:  b8408f5c    ldr w28, [x26, #8]!
  0x8001da3f4:  aa1a03f6    mov x22, x26
  0x8001da3f8:  78dfced7    ldrsh w23, [x22, #-4]!
  0x8001da3fc:  0a05038a    and w10, w28, w5
  0x8001da400:  37f800b7    tbnz w23, #31, #20
  0x8001da404:  f94006a8    ldr x8, [x21, #8]
  0x8001da408:  7941b909    ldrh w9, [x8, #220]
  0x8001da40c:  34000869    cbz w9, #268
  0x8001da410:  794002d7    ldrh w23, [x22]
  0x8001da414:  529ff388    mov w8, #65436
  0x8001da418:  6b37211f    cmp w8, w23, uxth
  0x8001da41c:  54001763    b.lo #748
  0x8001da420:  79400e88    ldrh w8, [x20, #6]
  0x8001da424:  6b05015f    cmp w10, w5
  0x8001da428:  12003914    and w20, w8, #0x7fff
  0x8001da42c:  540025a0    b.eq #1204
  0x8001da430:  2a1f03f9    mov w25, wzr
  0x8001da434:  2a1f03fa    mov w26, wzr
  0x8001da438:  9001c728    adrp x8, #59654144
  0x8001da43c:  91146108    add x8, x8, #1304
  0x8001da440:  f940027b    ldr x27, [x19]
  0x8001da444:  08dffd08    ldarb w8, [x8]
  0x8001da448:  36002a68    tbz w8, #0, #1356
  0x8001da44c:  37783437    tbnz w23, #15, #1668
  0x8001da450:  f94006a8    ldr x8, [x21, #8]
  0x8001da454:  b9406109    ldr w9, [x8, #96]
  0x8001da458:  6b37213f    cmp w9, w23, uxth
  0x8001da45c:  5400374d    b.le #1768
  0x8001da460:  f9403509    ldr x9, [x8, #104]
  0x8001da464:  92403eea    and x10, x23, #0xffff
  0x8001da468:  f86a7937    ldr x23, [x9, x10, lsl #3]
  0x8001da46c:  b4003957    cbz x23, #1832
  0x8001da470:  f94002e8    ldr x8, [x23]
  0x8001da474:  f9404d08    ldr x8, [x8, #152]
  0x8001da478:  eb03011f    cmp x8, x3
  0x8001da47c:  54003c01    b.ne #1920
  0x8001da480:  f94006e8    ldr x8, [x23, #8]
  0x8001da484:  5280078b    mov w11, #60
  0x8001da488:  79403ae9    ldrh w9, [x23, #28]
  0x8001da48c:  f9400908    ldr x8, [x8, #16]
  0x8001da490:  f940250a    ldr x10, [x8, #72]
  0x8001da494:  f9400908    ldr x8, [x8, #16]
  0x8001da498:  9bab2929    umaddl x9, w9, w11, x10
  0x8001da49c:  b9801529    ldrsw x9, [x9, #20]
  0x8001da4a0:  8b090100    add x0, x8, x9
  0x8001da4a4:  35002259    cbnz w25, #1096
  0x8001da4a8:  b9403c08    ldr w8, [x0, #60]
  0x8001da4ac:  0b34a108    add w8, w8, w20, sxth
  0x8001da4b0:  b9404c09    ldr w9, [x0, #76]
  0x8001da4b4:  0b090108    add w8, w8, w9
  0x8001da4b8:  531e7514    lsl w20, w8, #2
  0x8001da4bc:  f9400ae0    ldr x0, [x23, #16]
  0x8001da4c0:  b4000100    cbz x0, #32
  0x8001da4c4:  f9400008    ldr x8, [x0]
  0x8001da4c8:  b001bc29    adrp x9, #58216448
  0x8001da4cc:  f9400908    ldr x8, [x8, #16]
  0x8001da4d0:  f9462929    ldr x9, [x9, #3152]
  0x8001da4d4:  eb09011f    cmp x8, x9
  0x8001da4d8:  540023c1    b.ne #1144
  0x8001da4dc:  f9400400    ldr x0, [x0, #8]
  0x8001da4e0:  8b34c008    add x8, x0, w20, sxtw
  0x8001da4e4:  2a1f03f7    mov w23, wzr
  0x8001da4e8:  927ef508    and x8, x8, #0xfffffffffffffffc
  0x8001da4ec:  f9000268    str x8, [x19]
  0x8001da4f0:  37001359    tbnz w25, #0, #616
  0x8001da4f4:  520002e0    eor w0, w23, #0x1
  0x8001da4f8:  a9584ff4    ldp x20, x19, [sp, #384]
  0x8001da4fc:  a95757f6    ldp x22, x21, [sp, #368]
  0x8001da500:  a9565ff8    ldp x24, x23, [sp, #352]
  0x8001da504:  a95567fa    ldp x26, x25, [sp, #336]
  0x8001da508:  a9546ffc    ldp x28, x27, [sp, #320]
  0x8001da50c:  a9537bfd    ldp x29, x30, [sp, #304]
  0x8001da510:  910643ff    add sp, sp, #400
  0x8001da514:  d65f03c0    ret
  0x8001da518:  b9406109    ldr w9, [x8, #96]
  0x8001da51c:  b90017ea    str w10, [sp, #20]
  0x8001da520:  6b17013f    cmp w9, w23
  0x8001da524:  54003c2d    b.le #1924
  0x8001da528:  f9403508    ldr x8, [x8, #104]
  0x8001da52c:  f8775917    ldr x23, [x8, w23, uxtw #3]
  0x8001da530:  b001bc28    adrp x8, #58216448
  0x8001da534:  f9452d08    ldr x8, [x8, #2648]
  0x8001da538:  08dffd08    ldarb w8, [x8]
  0x8001da53c:  36003ea8    tbz w8, #0, #2004
  0x8001da540:  f90007f3    str x19, [sp, #8]
  0x8001da544:  b4000297    cbz x23, #80
  0x8001da548:  f94002e8    ldr x8, [x23]
  0x8001da54c:  b001bc21    adrp x1, #58216448
  0x8001da550:  aa1703e0    mov x0, x23
  0x8001da554:  aa1803f3    mov x19, x24
  0x8001da558:  2a0403f8    mov w24, w4
  0x8001da55c:  f9400108    ldr x8, [x8]
  0x8001da560:  f9452821    ldr x1, [x1, #2640]
  0x8001da564:  aa1503fb    mov x27, x21
  0x8001da568:  aa0303f5    mov x21, x3
  0x8001da56c:  2a0503f9    mov w25, w5
  0x8001da570:  d63f0100    blr x8
  0x8001da574:  b94017ea    ldr w10, [sp, #20]
  0x8001da578:  2a1803e4    mov w4, w24
  0x8001da57c:  aa1303f8    mov x24, x19
  0x8001da580:  f94007f3    ldr x19, [sp, #8]
  0x8001da584:  2a1903e5    mov w5, w25
  0x8001da588:  aa1503e3    mov x3, x21
  0x8001da58c:  aa1b03f5    mov x21, x27
  0x8001da590:  b5000bc0    cbnz x0, #376
  0x8001da594:  b001bc28    adrp x8, #58216448
  0x8001da598:  f9453508    ldr x8, [x8, #2664]
  0x8001da59c:  08dffd08    ldarb w8, [x8]
  0x8001da5a0:  36002248    tbz w8, #0, #1096
  0x8001da5a4:  b4000297    cbz x23, #80
  0x8001da5a8:  f94002e8    ldr x8, [x23]
  0x8001da5ac:  b001bc21    adrp x1, #58216448
  0x8001da5b0:  aa1703e0    mov x0, x23
  0x8001da5b4:  aa1803f3    mov x19, x24
  0x8001da5b8:  2a0403f8    mov w24, w4
  0x8001da5bc:  f9400108    ldr x8, [x8]
  0x8001da5c0:  f9453021    ldr x1, [x1, #2656]
  0x8001da5c4:  aa1503fb    mov x27, x21
  0x8001da5c8:  aa0303f5    mov x21, x3
  0x8001da5cc:  2a0503f9    mov w25, w5
  0x8001da5d0:  d63f0100    blr x8
  0x8001da5d4:  b94017ea    ldr w10, [sp, #20]
  0x8001da5d8:  2a1803e4    mov w4, w24
  0x8001da5dc:  aa1303f8    mov x24, x19
  0x8001da5e0:  f94007f3    ldr x19, [sp, #8]
  0x8001da5e4:  2a1903e5    mov w5, w25
  0x8001da5e8:  aa1503e3    mov x3, x21
  0x8001da5ec:  aa1b03f5    mov x21, x27
  0x8001da5f0:  b50008c0    cbnz x0, #280
  0x8001da5f4:  b001bc28    adrp x8, #58216448
  0x8001da5f8:  f9453d08    ldr x8, [x8, #2680]
  0x8001da5fc:  08dffd08    ldarb w8, [x8]
  0x8001da600:  36002268    tbz w8, #0, #1100
  0x8001da604:  b4000297    cbz x23, #80
  0x8001da608:  f94002e8    ldr x8, [x23]
  0x8001da60c:  b001bc21    adrp x1, #58216448
  0x8001da610:  aa1703e0    mov x0, x23
  0x8001da614:  aa1803f3    mov x19, x24
  0x8001da618:  2a0403f8    mov w24, w4
  0x8001da61c:  f9400108    ldr x8, [x8]
  0x8001da620:  f9453821    ldr x1, [x1, #2672]
  0x8001da624:  aa1503fb    mov x27, x21
  0x8001da628:  aa0303f5    mov x21, x3
  0x8001da62c:  2a0503f9    mov w25, w5
  0x8001da630:  d63f0100    blr x8
  0x8001da634:  b94017ea    ldr w10, [sp, #20]
  0x8001da638:  2a1803e4    mov w4, w24
  0x8001da63c:  aa1303f8    mov x24, x19
  0x8001da640:  f94007f3    ldr x19, [sp, #8]
  0x8001da644:  2a1903e5    mov w5, w25
  0x8001da648:  aa1503e3    mov x3, x21
  0x8001da64c:  aa1b03f5    mov x21, x27
  0x8001da650:  b50005c0    cbnz x0, #184
  0x8001da654:  b001bc28    adrp x8, #58216448
  0x8001da658:  f9454508    ldr x8, [x8, #2696]
  0x8001da65c:  08dffd08    ldarb w8, [x8]
  0x8001da660:  360038a8    tbz w8, #0, #1812
  0x8001da664:  b4000297    cbz x23, #80
  0x8001da668:  f94002e8    ldr x8, [x23]
  0x8001da66c:  b001bc21    adrp x1, #58216448
  0x8001da670:  aa1703e0    mov x0, x23
  0x8001da674:  aa1803f3    mov x19, x24
  0x8001da678:  2a0403f8    mov w24, w4
  0x8001da67c:  f9400108    ldr x8, [x8]
  0x8001da680:  f9454021    ldr x1, [x1, #2688]
  0x8001da684:  aa1503fb    mov x27, x21
  0x8001da688:  aa0303f5    mov x21, x3
  0x8001da68c:  2a0503f9    mov w25, w5
  0x8001da690:  d63f0100    blr x8
  0x8001da694:  b94017ea    ldr w10, [sp, #20]
  0x8001da698:  2a1803e4    mov w4, w24
  0x8001da69c:  aa1303f8    mov x24, x19
  0x8001da6a0:  f94007f3    ldr x19, [sp, #8]
  0x8001da6a4:  2a1903e5    mov w5, w25
  0x8001da6a8:  aa1503e3    mov x3, x21
  0x8001da6ac:  aa1b03f5    mov x21, x27
  0x8001da6b0:  b50002c0    cbnz x0, #88
  0x8001da6b4:  b001bc28    adrp x8, #58216448
  0x8001da6b8:  f9454d08    ldr x8, [x8, #2712]
  0x8001da6bc:  08dffd08    ldarb w8, [x8]
  0x8001da6c0:  360038c8    tbz w8, #0, #1816
  0x8001da6c4:  b4ffea77    cbz x23, #-692
  0x8001da6c8:  f94002e8    ldr x8, [x23]
  0x8001da6cc:  b001bc21    adrp x1, #58216448
  0x8001da6d0:  aa1703e0    mov x0, x23
  0x8001da6d4:  2a0403f7    mov w23, w4
  0x8001da6d8:  aa1503f9    mov x25, x21
  0x8001da6dc:  f9400108    ldr x8, [x8]
  0x8001da6e0:  f9454821    ldr x1, [x1, #2704]
  0x8001da6e4:  aa0303f5    mov x21, x3
  0x8001da6e8:  2a0503fb    mov w27, w5
  0x8001da6ec:  d63f0100    blr x8
  0x8001da6f0:  b94017ea    ldr w10, [sp, #20]
  0x8001da6f4:  2a1b03e5    mov w5, w27
  0x8001da6f8:  aa1503e3    mov x3, x21
  0x8001da6fc:  aa1903f5    mov x21, x25
  0x8001da700:  2a1703e4    mov w4, w23
  0x8001da704:  b4ffe860    cbz x0, #-756
  0x8001da708:  b9400348    ldr w8, [x26]
  0x8001da70c:  2a1f03f6    mov w22, wzr
  0x8001da710:  91003294    add x20, x20, #12
  0x8001da714:  6b05015f    cmp w10, w5
  0x8001da718:  1207751a    and w26, w8, #0xfe7fffff
  0x8001da71c:  54000040    b.eq #8
  0x8001da720:  3500085a    cbnz w26, #264
  0x8001da724:  f940027b    ldr x27, [x19]
  0x8001da728:  710002df    cmp w22, #0
  0x8001da72c:  927ef688    and x8, x20, #0xfffffffffffffffc
  0x8001da730:  5318638a    ubfx w10, w28, #24, #1
  0x8001da734:  1a9f07f7    cset w23, ne
  0x8001da738:  0a050349    and w9, w26, w5
  0x8001da73c:  aa0a0108    orr x8, x8, x10
  0x8001da740:  f9000268    str x8, [x19]
  0x8001da744:  36b8007c    tbz w28, #23, #12
  0x8001da748:  b27f0108    orr x8, x8, #0x2
  0x8001da74c:  f9000268    str x8, [x19]
  0x8001da750:  6b05013f    cmp w9, w5
  0x8001da754:  54ffed01    b.ne #-608
  0x8001da758:  f1000f7f    cmp x27, #3
  0x8001da75c:  54003768    b.hi #1772
  0x8001da760:  37003744    tbnz w4, #0, #1768
  0x8001da764:  f9400aa0    ldr x0, [x21, #16]
  0x8001da768:  927ef516    and x22, x8, #0xfffffffffffffffc
  0x8001da76c:  f9400008    ldr x8, [x0]
  0x8001da770:  f9402d08    ldr x8, [x8, #88]
  0x8001da774:  d63f0100    blr x8
  0x8001da778:  f9400814    ldr x20, [x0, #16]
  0x8001da77c:  b4000074    cbz x20, #12
  0x8001da780:  f9400288    ldr x8, [x20]
  0x8001da784:  f9000808    str x8, [x0, #16]
  0x8001da788:  12800008    mov w8, #-1
  0x8001da78c:  f9001a88    str x8, [x20, #48]
  0x8001da790:  b001bb88    adrp x8, #58134528
  0x8001da794:  f945bd08    ldr x8, [x8, #2936]
  0x8001da798:  a9017e9f    stp xzr, xzr, [x20, #16]
  0x8001da79c:  a9027e9f    stp xzr, xzr, [x20, #32]
  0x8001da7a0:  a9007e88    stp x8, xzr, [x20]
  0x8001da7a4:  29402408    ldp w8, w9, [x0]
  0x8001da7a8:  93407d08    sxtw x8, w8
  0x8001da7ac:  6b09011f    cmp w8, w9
  0x8001da7b0:  540000ca    b.ge #24
  0x8001da7b4:  f9400409    ldr x9, [x0, #8]
  0x8001da7b8:  f8287934    str x20, [x9, x8, lsl #3]
  0x8001da7bc:  b9400008    ldr w8, [x0]
  0x8001da7c0:  11000508    add w8, w8, #1
  0x8001da7c4:  b9000008    str w8, [x0]
  0x8001da7c8:  f9400308    ldr x8, [x24]
  0x8001da7cc:  52800089    mov w9, #4
  0x8001da7d0:  12003f4a    and w10, w26, #0xffff
  0x8001da7d4:  2905268a    stp w10, w9, [x20, #40]
  0x8001da7d8:  a9005a88    stp x8, x22, [x20]
  0x8001da7dc:  f9400aa0    ldr x0, [x21, #16]
  0x8001da7e0:  f9400008    ldr x8, [x0]
  0x8001da7e4:  f9402908    ldr x8, [x8, #80]
  0x8001da7e8:  d63f0100    blr x8
  0x8001da7ec:  b4000ba0    cbz x0, #372
  0x8001da7f0:  f9400aa0    ldr x0, [x21, #16]
  0x8001da7f4:  f9400008    ldr x8, [x0]
  0x8001da7f8:  f9402908    ldr x8, [x8, #80]
  0x8001da7fc:  d63f0100    blr x8
  0x8001da800:  29422408    ldp w8, w9, [x0, #16]
  0x8001da804:  6b09011f    cmp w8, w9
  0x8001da808:  54000ac3    b.lo #344
  0x8001da80c:  f9400009    ldr x9, [x0]
  0x8001da810:  5100050a    sub w10, w8, #1
  0x8001da814:  b900100a    str w10, [x0, #16]
  0x8001da818:  8b080928    add x8, x9, x8, lsl #2
  0x8001da81c:  f9000a88    str x8, [x20, #16]
  0x8001da820:  b900329f    str wzr, [x20, #48]
  0x8001da824:  14000025    b #148
  0x8001da828:  529ffff7    mov w23, #65535
  0x8001da82c:  529ffff4    mov w20, #65535
  0x8001da830:  0a050348    and w8, w26, w5
  0x8001da834:  6b05011f    cmp w8, w5
  0x8001da838:  1a9f17f9    cset w25, eq
  0x8001da83c:  34ffdffa    cbz w26, #-1028
  0x8001da840:  54ffdfc0    b.eq #-1032
  0x8001da844:  f94006a8    ldr x8, [x21, #8]
  0x8001da848:  12003f41    and w1, w26, #0xffff
  0x8001da84c:  531a6f54    ubfx w20, w26, #26, #2
  0x8001da850:  f9401100    ldr x0, [x8, #32]
  0x8001da854:  f9400008    ldr x8, [x0]
  0x8001da858:  35001dd4    cbnz w20, #952
  0x8001da85c:  b001bc29    adrp x9, #58216448
  0x8001da860:  f9408908    ldr x8, [x8, #272]
  0x8001da864:  f9448529    ldr x9, [x9, #2312]
  0x8001da868:  eb09011f    cmp x8, x9
  0x8001da86c:  54002181    b.ne #1072
  0x8001da870:  f9404c08    ldr x8, [x0, #152]
  0x8001da874:  b4000288    cbz x8, #80
  0x8001da878:  b940900a    ldr w10, [x0, #144]
  0x8001da87c:  6b01015f    cmp w10, w1
  0x8001da880:  1a9f8029    csel w9, w1, wzr, hi
  0x8001da884:  d37c7d2b    ubfiz x11, x9, #4, #32
  0x8001da888:  38eb690b    ldrsb w11, [x8, x11]
  0x8001da88c:  36f81d6b    tbz w11, #31, #940
  0x8001da890:  6b01015f    cmp w10, w1
  0x8001da894:  54001e49    b.ls #968
  0x8001da898:  8b21510a    add x10, x8, w1, uxtw #4
  0x8001da89c:  79c0054a    ldrsh w10, [x10, #2]
  0x8001da8a0:  36f81e2a    tbz w10, #31, #964
  0x8001da8a4:  2a0103e9    mov w9, w1
  0x8001da8a8:  8b091108    add x8, x8, x9, lsl #4
  0x8001da8ac:  f9400508    ldr x8, [x8, #8]
  0x8001da8b0:  b40000a8    cbz x8, #20
  0x8001da8b4:  2a1f03f7    mov w23, wzr
  0x8001da8b8:  927ef508    and x8, x8, #0xfffffffffffffffc
  0x8001da8bc:  f9000268    str x8, [x19]
  0x8001da8c0:  17ffff0d    b #-972
  0x8001da8c4:  b9403009    ldr w9, [x0, #48]
  0x8001da8c8:  6b01013f    cmp w9, w1
  0x8001da8cc:  f9401c08    ldr x8, [x0, #56]
  0x8001da8d0:  54ffff29    b.ls #-28
  0x8001da8d4:  2a1f03f7    mov w23, wzr
  0x8001da8d8:  8b214908    add x8, x8, w1, uxtw #2
  0x8001da8dc:  17fffff7    b #-36
  0x8001da8e0:  b9400348    ldr w8, [x26]
  0x8001da8e4:  1207751a    and w26, w8, #0xfe7fffff
  0x8001da8e8:  17ffffd2    b #-184
  0x8001da8ec:  f94006a8    ldr x8, [x21, #8]
  0x8001da8f0:  f9400908    ldr x8, [x8, #16]
  0x8001da8f4:  f9402908    ldr x8, [x8, #80]
  0x8001da8f8:  b9401909    ldr w9, [x8, #24]
  0x8001da8fc:  8b090108    add x8, x8, x9
  0x8001da900:  b9400109    ldr w9, [x8]
  0x8001da904:  6b3a213f    cmp w9, w26, uxth
  0x8001da908:  54002f0d    b.le #1504
  0x8001da90c:  12003f49    and w9, w26, #0xffff
  0x8001da910:  5280038a    mov w10, #28
  0x8001da914:  9baa2128    umaddl x8, w9, w10, x8
  0x8001da918:  79403d08    ldrh w8, [x8, #30]
  0x8001da91c:  51000909    sub w9, w8, #2
  0x8001da920:  7100113f    cmp w9, #4
  0x8001da924:  54002e28    b.hi #1476
  0x8001da928:  b0015cca    adrp x10, #45715456
  0x8001da92c:  912ff94a    add x10, x10, #3070
  0x8001da930:  10ffdc4b    adr x11, #-1144
  0x8001da934:  7869794c    ldrh w12, [x10, x9, lsl #1]
  0x8001da938:  8b0c096b    add x11, x11, x12, lsl #2
  0x8001da93c:  13003e88    sxth w8, w20
  0x8001da940:  d61f0160    br x11
  0x8001da944:  b9403c09    ldr w9, [x0, #60]
  0x8001da948:  0b080128    add w8, w9, w8
  0x8001da94c:  17fffedb    b #-1172
  0x8001da950:  2a0403f6    mov w22, w4
  0x8001da954:  d63f0100    blr x8
  0x8001da958:  2a1603e4    mov w4, w22
  0x8001da95c:  17fffee1    b #-1148
  0x8001da960:  aa1f03e8    mov x8, xzr
  0x8001da964:  17ffffae    b #-328
  0x8001da968:  b9403c09    ldr w9, [x0, #60]
  0x8001da96c:  5280018b    mov w11, #12
  0x8001da970:  1b0b7d08    mul w8, w8, w11
  0x8001da974:  b9404c0a    ldr w10, [x0, #76]
  0x8001da978:  0b090149    add w9, w10, w9
  0x8001da97c:  b9405c0a    ldr w10, [x0, #92]
  0x8001da980:  0b0a0129    add w9, w9, w10
  0x8001da984:  b9406c0a    ldr w10, [x0, #108]
  0x8001da988:  0b0a0d08    add w8, w8, w10, lsl #3
  0x8001da98c:  0b090914    add w20, w8, w9, lsl #2
  0x8001da990:  17fffecb    b #-1236
  0x8001da994:  9001c720    adrp x0, #59654144
  0x8001da998:  91146000    add x0, x0, #1304
  0x8001da99c:  2a0403f6    mov w22, w4
  0x8001da9a0:  aa0303fc    mov x28, x3
  0x8001da9a4:  94a723ff    bl #43814908
  0x8001da9a8:  aa1c03e3    mov x3, x28
  0x8001da9ac:  2a1603e4    mov w4, w22
  0x8001da9b0:  34ffd4e0    cbz w0, #-1380
  0x8001da9b4:  9001c728    adrp x8, #59654144
  0x8001da9b8:  9001c720    adrp x0, #59654144
  0x8001da9bc:  91146000    add x0, x0, #1304
  0x8001da9c0:  b905111f    str wzr, [x8, #1296]
  0x8001da9c4:  94a723fb    bl #43814892
  0x8001da9c8:  aa1c03e3    mov x3, x28
  0x8001da9cc:  2a1603e4    mov w4, w22
  0x8001da9d0:  17fffe9f    b #-1412
  0x8001da9d4:  b9403c09    ldr w9, [x0, #60]
  0x8001da9d8:  0b080128    add w8, w9, w8
  0x8001da9dc:  b9404c0a    ldr w10, [x0, #76]
  0x8001da9e0:  0b0a0108    add w8, w8, w10
  0x8001da9e4:  17fffeb5    b #-1324
  0x8001da9e8:  b001bc20    adrp x0, #58216448
  0x8001da9ec:  aa0303f9    mov x25, x3
  0x8001da9f0:  f9453400    ldr x0, [x0, #2664]
  0x8001da9f4:  b90007e4    str w4, [sp, #4]
  0x8001da9f8:  2a0503fb    mov w27, w5
  0x8001da9fc:  94a723e9    bl #43814820
  0x8001daa00:  b94017ea    ldr w10, [sp, #20]
  0x8001daa04:  2a1b03e5    mov w5, w27
  0x8001daa08:  aa1903e3    mov x3, x25
  0x8001daa0c:  b94007e4    ldr w4, [sp, #4]
  0x8001daa10:  34ffdca0    cbz w0, #-1132
  0x8001daa14:  b001bc28    adrp x8, #58216448
  0x8001daa18:  9001bba9    adrp x9, #58146816
  0x8001daa1c:  f9453108    ldr x8, [x8, #2656]
  0x8001daa20:  f942f929    ldr x9, [x9, #1520]
  0x8001daa24:  b001bc20    adrp x0, #58216448
  0x8001daa28:  91004129    add x9, x9, #16
  0x8001daa2c:  f9000109    str x9, [x8]
  0x8001daa30:  f9453400    ldr x0, [x0, #2664]
  0x8001daa34:  94a723df    bl #43814780
  0x8001daa38:  b94017ea    ldr w10, [sp, #20]
  0x8001daa3c:  2a1b03e5    mov w5, w27
  0x8001daa40:  aa1903e3    mov x3, x25
  0x8001daa44:  b94007e4    ldr w4, [sp, #4]
  0x8001daa48:  17fffed7    b #-1188
  0x8001daa4c:  b001bc20    adrp x0, #58216448
  0x8001daa50:  aa0303f9    mov x25, x3
  0x8001daa54:  f9453c00    ldr x0, [x0, #2680]
  0x8001daa58:  b90007e4    str w4, [sp, #4]
  0x8001daa5c:  2a0503fb    mov w27, w5
  0x8001daa60:  94a723d0    bl #43814720
  0x8001daa64:  b94017ea    ldr w10, [sp, #20]
  0x8001daa68:  2a1b03e5    mov w5, w27
  0x8001daa6c:  aa1903e3    mov x3, x25
  0x8001daa70:  b94007e4    ldr w4, [sp, #4]
  0x8001daa74:  34ffdc80    cbz w0, #-1136
  0x8001daa78:  b001bc28    adrp x8, #58216448
  0x8001daa7c:  9001bba9    adrp x9, #58146816
  0x8001daa80:  f9453908    ldr x8, [x8, #2672]
  0x8001daa84:  f942f929    ldr x9, [x9, #1520]
  0x8001daa88:  b001bc20    adrp x0, #58216448
  0x8001daa8c:  91004129    add x9, x9, #16
  0x8001daa90:  f9000109    str x9, [x8]
  0x8001daa94:  f9453c00    ldr x0, [x0, #2680]
  0x8001daa98:  94a723c6    bl #43814680
  0x8001daa9c:  b94017ea    ldr w10, [sp, #20]
  0x8001daaa0:  2a1b03e5    mov w5, w27
  0x8001daaa4:  aa1903e3    mov x3, x25
  0x8001daaa8:  b94007e4    ldr w4, [sp, #4]
  0x8001daaac:  17fffed6    b #-1192
  0x8001daab0:  aa1503e0    mov x0, x21
  0x8001daab4:  2a0403f6    mov w22, w4
  0x8001daab8:  aa0303f9    mov x25, x3
  0x8001daabc:  d63f0100    blr x8
  0x8001daac0:  f9400a88    ldr x8, [x20, #16]
  0x8001daac4:  aa1903e3    mov x3, x25
  0x8001daac8:  2a1603e4    mov w4, w22
  0x8001daacc:  17fffe07    b #-2020
  0x8001daad0:  910063e8    add x8, sp, #24
  0x8001daad4:  39048fff    strb wzr, [sp, #291]
  0x8001daad8:  d0015381    adrp x1, #44507136
  0x8001daadc:  91270c21    add x1, x1, #2499
  0x8001daae0:  91003108    add x8, x8, #12
  0x8001daae4:  390093ff    strb wzr, [sp, #36]
  0x8001daae8:  f9000fe8    str x8, [sp, #24]
  0x8001daaec:  52802008    mov w8, #256
  0x8001daaf0:  910063e0    add x0, sp, #24
  0x8001daaf4:  b90023e8    str w8, [sp, #32]
  0x8001daaf8:  f94006a8    ldr x8, [x21, #8]
  0x8001daafc:  2a0403f4    mov w20, w4
  0x8001dab00:  aa1503f6    mov x22, x21
  0x8001dab04:  f9400908    ldr x8, [x8, #16]
  0x8001dab08:  f9400908    ldr x8, [x8, #16]
  0x8001dab0c:  b980250a    ldrsw x10, [x8, #36]
  0x8001dab10:  b9800909    ldrsw x9, [x8, #8]
  0x8001dab14:  8b0a0108    add x8, x8, x10
  0x8001dab18:  8b090102    add x2, x8, x9
  0x8001dab1c:  97fafb51    bl #-1315516
  0x8001dab20:  9001c728    adrp x8, #59654144
  0x8001dab24:  91144108    add x8, x8, #1296
  0x8001dab28:  f9000268    str x8, [x19]
  0x8001dab2c:  52800037    mov w23, #1
  0x8001dab30:  3607ce39    tbz w25, #0, #-1596
  0x8001dab34:  2a1403e4    mov w4, w20
  0x8001dab38:  aa1603f5    mov x21, x22
  0x8001dab3c:  aa1303e9    mov x9, x19
  0x8001dab40:  17ffff06    b #-1000
  0x8001dab44:  39048fff    strb wzr, [sp, #291]
  0x8001dab48:  910063e9    add x9, sp, #24
  0x8001dab4c:  d0015381    adrp x1, #44507136
  0x8001dab50:  91270c21    add x1, x1, #2499
  0x8001dab54:  f9400908    ldr x8, [x8, #16]
  0x8001dab58:  91003129    add x9, x9, #12
  0x8001dab5c:  f9000fe9    str x9, [sp, #24]
  0x8001dab60:  52802009    mov w9, #256
  0x8001dab64:  390093ff    strb wzr, [sp, #36]
  0x8001dab68:  b90023e9    str w9, [sp, #32]
  0x8001dab6c:  910063e0    add x0, sp, #24
  0x8001dab70:  2a0403f4    mov w20, w4
  0x8001dab74:  f9400908    ldr x8, [x8, #16]
  0x8001dab78:  b980250a    ldrsw x10, [x8, #36]
  0x8001dab7c:  b9800909    ldrsw x9, [x8, #8]
  0x8001dab80:  8b0a0108    add x8, x8, x10
  0x8001dab84:  8b090102    add x2, x8, x9
  0x8001dab88:  97fafb36    bl #-1315624
  0x8001dab8c:  f94006a8    ldr x8, [x21, #8]
  0x8001dab90:  2a1403e4    mov w4, w20
  0x8001dab94:  39048fff    strb wzr, [sp, #291]
  0x8001dab98:  910063e9    add x9, sp, #24
  0x8001dab9c:  d0015381    adrp x1, #44507136
  0x8001daba0:  91270c21    add x1, x1, #2499
  0x8001daba4:  f9400908    ldr x8, [x8, #16]
  0x8001daba8:  91003129    add x9, x9, #12
  0x8001dabac:  f9000fe9    str x9, [sp, #24]
  0x8001dabb0:  52802009    mov w9, #256
  0x8001dabb4:  390093ff    strb wzr, [sp, #36]
  0x8001dabb8:  b90023e9    str w9, [sp, #32]
  0x8001dabbc:  910063e0    add x0, sp, #24
  0x8001dabc0:  2a0403f4    mov w20, w4
  0x8001dabc4:  f9400908    ldr x8, [x8, #16]
  0x8001dabc8:  b980250a    ldrsw x10, [x8, #36]
  0x8001dabcc:  b9800909    ldrsw x9, [x8, #8]
  0x8001dabd0:  8b0a0108    add x8, x8, x10
  0x8001dabd4:  8b090102    add x2, x8, x9
  0x8001dabd8:  97fafb22    bl #-1315704
  0x8001dabdc:  9001c728    adrp x8, #59654144
  0x8001dabe0:  91144108    add x8, x8, #1296
  0x8001dabe4:  f9000268    str x8, [x19]
  0x8001dabe8:  52800037    mov w23, #1
  0x8001dabec:  3607c859    tbz w25, #0, #-1784
  0x8001dabf0:  aa1303e9    mov x9, x19
  0x8001dabf4:  2a1403e4    mov w4, w20
  0x8001dabf8:  17fffed8    b #-1184
  0x8001dabfc:  aa1703e0    mov x0, x23
  0x8001dac00:  2a0403f6    mov w22, w4
  0x8001dac04:  d63f0100    blr x8
  0x8001dac08:  2a1603e4    mov w4, w22
  0x8001dac0c:  17fffe26    b #-1896
  0x8001dac10:  f9409108    ldr x8, [x8, #288]
  0x8001dac14:  d63f0100    blr x8
  0x8001dac18:  aa0003e8    mov x8, x0
  0x8001dac1c:  7100069f    cmp w20, #1
  0x8001dac20:  54ffe4a0    b.eq #-876
  0x8001dac24:  71000a9f    cmp w20, #2
  0x8001dac28:  540010a1    b.ne #532
  0x8001dac2c:  2a1f03f7    mov w23, wzr
  0x8001dac30:  91001108    add x8, x8, #4
  0x8001dac34:  17ffff21    b #-892
  0x8001dac38:  92401d6a    and x10, x11, #0xff
  0x8001dac3c:  9103400b    add x11, x0, #208
  0x8001dac40:  8b091108    add x8, x8, x9, lsl #4
  0x8001dac44:  8b0a0d6c    add x12, x11, x10, lsl #3
  0x8001dac48:  7100115f    cmp w10, #4
  0x8001dac4c:  39400501    ldrb w1, [x8, #1]
  0x8001dac50:  9a8b318a    csel x10, x12, x11, lo
  0x8001dac54:  f9400140    ldr x0, [x10]
  0x8001dac58:  17ffff06    b #-1000
  0x8001dac5c:  79c0050a    ldrsh w10, [x8, #2]
  0x8001dac60:  37ffe26a    tbnz w10, #31, #-948
  0x8001dac64:  f940840b    ldr x11, [x0, #264]
  0x8001dac68:  92403d4d    and x13, x10, #0xffff
  0x8001dac6c:  8b091108    add x8, x8, x9, lsl #4
  0x8001dac70:  39400501    ldrb w1, [x8, #1]
  0x8001dac74:  b940196c    ldr w12, [x11, #24]
  0x8001dac78:  f940116b    ldr x11, [x11, #32]
  0x8001dac7c:  6b2a219f    cmp w12, w10, uxth
  0x8001dac80:  5280030c    mov w12, #24
  0x8001dac84:  9a9f81aa    csel x10, x13, xzr, hi
  0x8001dac88:  9bac7d4a    umull x10, w10, w12
  0x8001dac8c:  f86a696a    ldr x10, [x11, x10]
  0x8001dac90:  f9401140    ldr x0, [x10, #32]
  0x8001dac94:  f9400008    ldr x8, [x0]
  0x8001dac98:  f9408908    ldr x8, [x8, #272]
  0x8001dac9c:  d63f0100    blr x8
  0x8001daca0:  aa0003e8    mov x8, x0
  0x8001daca4:  17ffff04    b #-1008
  0x8001daca8:  39048fff    strb wzr, [sp, #291]
  0x8001dacac:  910063e9    add x9, sp, #24
  0x8001dacb0:  d0015381    adrp x1, #44507136
  0x8001dacb4:  91270c21    add x1, x1, #2499
  0x8001dacb8:  f9400908    ldr x8, [x8, #16]
  0x8001dacbc:  91003129    add x9, x9, #12
  0x8001dacc0:  f9000fe9    str x9, [sp, #24]
  0x8001dacc4:  52802009    mov w9, #256
  0x8001dacc8:  390093ff    strb wzr, [sp, #36]
  0x8001daccc:  b90023e9    str w9, [sp, #32]
  0x8001dacd0:  910063e0    add x0, sp, #24
  0x8001dacd4:  2a0403f7    mov w23, w4
  0x8001dacd8:  aa0303f9    mov x25, x3
  0x8001dacdc:  2a0503fb    mov w27, w5
  0x8001dace0:  f9400908    ldr x8, [x8, #16]
  0x8001dace4:  b980250a    ldrsw x10, [x8, #36]
  0x8001dace8:  b9800909    ldrsw x9, [x8, #8]
  0x8001dacec:  8b0a0108    add x8, x8, x10
  0x8001dacf0:  8b090102    add x2, x8, x9
  0x8001dacf4:  97fafadb    bl #-1315988
  0x8001dacf8:  b94017ea    ldr w10, [sp, #20]
  0x8001dacfc:  2a1b03e5    mov w5, w27
  0x8001dad00:  aa1903e3    mov x3, x25
  0x8001dad04:  2a1703e4    mov w4, w23
  0x8001dad08:  aa1f03f7    mov x23, xzr
  0x8001dad0c:  17fffe09    b #-2012
  0x8001dad10:  b001bc20    adrp x0, #58216448
  0x8001dad14:  aa0303f9    mov x25, x3
  0x8001dad18:  f9452c00    ldr x0, [x0, #2648]
  0x8001dad1c:  b90007e4    str w4, [sp, #4]
  0x8001dad20:  2a0503fb    mov w27, w5
  0x8001dad24:  94a7231f    bl #43814012
  0x8001dad28:  b94017ea    ldr w10, [sp, #20]
  0x8001dad2c:  2a1b03e5    mov w5, w27
  0x8001dad30:  aa1903e3    mov x3, x25
  0x8001dad34:  b94007e4    ldr w4, [sp, #4]
  0x8001dad38:  34ffc040    cbz w0, #-2040
  0x8001dad3c:  9001bba8    adrp x8, #58146816
  0x8001dad40:  b001bc29    adrp x9, #58216448
  0x8001dad44:  f942f908    ldr x8, [x8, #1520]
  0x8001dad48:  f9452929    ldr x9, [x9, #2640]
  0x8001dad4c:  b001bc20    adrp x0, #58216448
  0x8001dad50:  91004108    add x8, x8, #16
  0x8001dad54:  f9000128    str x8, [x9]
  0x8001dad58:  f9452c00    ldr x0, [x0, #2648]
  0x8001dad5c:  94a72315    bl #43813972
  0x8001dad60:  b94017ea    ldr w10, [sp, #20]
  0x8001dad64:  2a1b03e5    mov w5, w27
  0x8001dad68:  aa1903e3    mov x3, x25
  0x8001dad6c:  b94007e4    ldr w4, [sp, #4]
  0x8001dad70:  17fffdf4    b #-2096
  0x8001dad74:  b001bc20    adrp x0, #58216448
  0x8001dad78:  aa0303f9    mov x25, x3
  0x8001dad7c:  f9454400    ldr x0, [x0, #2696]
  0x8001dad80:  b90007e4    str w4, [sp, #4]
  0x8001dad84:  2a0503fb    mov w27, w5
  0x8001dad88:  94a72306    bl #43813912
  0x8001dad8c:  b94017ea    ldr w10, [sp, #20]
  0x8001dad90:  2a1b03e5    mov w5, w27
  0x8001dad94:  aa1903e3    mov x3, x25
  0x8001dad98:  b94007e4    ldr w4, [sp, #4]
  0x8001dad9c:  34ffc640    cbz w0, #-1848
  0x8001dada0:  b001bc28    adrp x8, #58216448
  0x8001dada4:  9001bba9    adrp x9, #58146816
  0x8001dada8:  f9454108    ldr x8, [x8, #2688]
  0x8001dadac:  f942f929    ldr x9, [x9, #1520]
  0x8001dadb0:  b001bc20    adrp x0, #58216448
  0x8001dadb4:  91004129    add x9, x9, #16
  0x8001dadb8:  f9000109    str x9, [x8]
  0x8001dadbc:  f9454400    ldr x0, [x0, #2696]
  0x8001dadc0:  94a722fc    bl #43813872
  0x8001dadc4:  b94017ea    ldr w10, [sp, #20]
  0x8001dadc8:  2a1b03e5    mov w5, w27
  0x8001dadcc:  aa1903e3    mov x3, x25
  0x8001dadd0:  b94007e4    ldr w4, [sp, #4]
  0x8001dadd4:  17fffe24    b #-1904
  0x8001dadd8:  b001bc20    adrp x0, #58216448
  0x8001daddc:  aa0303f9    mov x25, x3
  0x8001dade0:  f9454c00    ldr x0, [x0, #2712]
  0x8001dade4:  b90007e4    str w4, [sp, #4]
  0x8001dade8:  2a0503fb    mov w27, w5
  0x8001dadec:  94a722ed    bl #43813812
  0x8001dadf0:  b94017ea    ldr w10, [sp, #20]
  0x8001dadf4:  2a1b03e5    mov w5, w27
  0x8001dadf8:  aa1903e3    mov x3, x25
  0x8001dadfc:  b94007e4    ldr w4, [sp, #4]
  0x8001dae00:  34ffc620    cbz w0, #-1852
  0x8001dae04:  9001bba8    adrp x8, #58146816
  0x8001dae08:  b001bc29    adrp x9, #58216448
  0x8001dae0c:  f942f908    ldr x8, [x8, #1520]
  0x8001dae10:  f9454929    ldr x9, [x9, #2704]
  0x8001dae14:  b001bc20    adrp x0, #58216448
  0x8001dae18:  91004108    add x8, x8, #16
  0x8001dae1c:  f9000128    str x8, [x9]
  0x8001dae20:  f9454c00    ldr x0, [x0, #2712]
  0x8001dae24:  94a722e3    bl #43813772
  0x8001dae28:  b94017ea    ldr w10, [sp, #20]
  0x8001dae2c:  2a1b03e5    mov w5, w27
  0x8001dae30:  aa1903e3    mov x3, x25
  0x8001dae34:  b94007e4    ldr w4, [sp, #4]
  0x8001dae38:  17fffe23    b #-1908
  0x8001dae3c:  2a1f03f7    mov w23, wzr
  0x8001dae40:  91002108    add x8, x8, #8
  0x8001dae44:  17fffe9d    b #-1420
  0x8001dae48:  f9400aa0    ldr x0, [x21, #16]
  0x8001dae4c:  2a0403f4    mov w20, w4
  0x8001dae50:  f9400008    ldr x8, [x0]
  0x8001dae54:  f9402d08    ldr x8, [x8, #88]
  0x8001dae58:  d63f0100    blr x8
  0x8001dae5c:  b9800009    ldrsw x9, [x0]
  0x8001dae60:  34ffb4a9    cbz w9, #-2412
  0x8001dae64:  f9400408    ldr x8, [x0, #8]
  0x8001dae68:  5280002b    mov w11, #1
  0x8001dae6c:  72a0080b    movk w11, #64, lsl #16
  0x8001dae70:  f940030a    ldr x10, [x24]
  0x8001dae74:  8b090d09    add x9, x8, x9, lsl #3
  0x8001dae78:  f940010c    ldr x12, [x8]
  0x8001dae7c:  b9402d8d    ldr w13, [x12, #44]
  0x8001dae80:  710011bf    cmp w13, #4
  0x8001dae84:  540001e1    b.ne #60
  0x8001dae88:  b940318d    ldr w13, [x12, #48]
  0x8001dae8c:  37f801ad    tbnz w13, #31, #52
  0x8001dae90:  f940018d    ldr x13, [x12]
  0x8001dae94:  eb0a01bf    cmp x13, x10
  0x8001dae98:  540001c0    b.eq #56
  0x8001dae9c:  aa0b03ee    mov x14, x11
  0x8001daea0:  aa0a03ef    mov x15, x10
  0x8001daea4:  384015b0    ldrb w16, [x13], #1
  0x8001daea8:  384015f1    ldrb w17, [x15], #1
  0x8001daeac:  6b11021f    cmp w16, w17
  0x8001daeb0:  54000081    b.ne #16
  0x8001daeb4:  340000f0    cbz w16, #28
  0x8001daeb8:  f10005ce    subs x14, x14, #1
  0x8001daebc:  54ffff41    b.ne #-24
  0x8001daec0:  91002108    add x8, x8, #8
  0x8001daec4:  eb09011f    cmp x8, x9
  0x8001daec8:  54fffd81    b.ne #-80
  0x8001daecc:  17fffd8a    b #-2520
  0x8001daed0:  37000094    tbnz w20, #0, #16
  0x8001daed4:  f9400268    ldr x8, [x19]
  0x8001daed8:  927ef508    and x8, x8, #0xfffffffffffffffc
  0x8001daedc:  f9000588    str x8, [x12, #8]
  0x8001daee0:  f9400988    ldr x8, [x12, #16]
  0x8001daee4:  17fffe75    b #-1580
  0x8001daee8:  2a1f03f4    mov w20, wzr
  0x8001daeec:  17fffd74    b #-2608
  0x8001daef0:  b9403c09    ldr w9, [x0, #60]
  0x8001daef4:  b9404c0a    ldr w10, [x0, #76]
  0x8001daef8:  0b090149    add w9, w10, w9
  0x8001daefc:  b9405c0a    ldr w10, [x0, #92]
  0x8001daf00:  0b0a0129    add w9, w9, w10
  0x8001daf04:  531e7529    lsl w9, w9, #2
  0x8001daf08:  0b080d34    add w20, w9, w8, lsl #3
  0x8001daf0c:  17fffd6c    b #-2640
  0x8001daf10:  910063e9    add x9, sp, #24
  0x8001daf14:  39048fff    strb wzr, [sp, #291]
  0x8001daf18:  d0015381    adrp x1, #44507136
  0x8001daf1c:  91270c21    add x1, x1, #2499
  0x8001daf20:  91003129    add x9, x9, #12
  0x8001daf24:  390093ff    strb wzr, [sp, #36]
  0x8001daf28:  f9000fe9    str x9, [sp, #24]
  0x8001daf2c:  52802009    mov w9, #256
  0x8001daf30:  b980250a    ldrsw x10, [x8, #36]
  0x8001daf34:  b90023e9    str w9, [sp, #32]
  0x8001daf38:  910063e0    add x0, sp, #24
  0x8001daf3c:  2a0403f4    mov w20, w4
  0x8001daf40:  b9800909    ldrsw x9, [x8, #8]
  0x8001daf44:  2a0503f6    mov w22, w5
  0x8001daf48:  8b0a0108    add x8, x8, x10
  0x8001daf4c:  8b090102    add x2, x8, x9
  0x8001daf50:  97fafa44    bl #-1316592
  0x8001daf54:  2a1603e5    mov w5, w22
  0x8001daf58:  2a1403e4    mov w4, w20
  0x8001daf5c:  2a1f03f6    mov w22, wzr
  0x8001daf60:  17fffd19    b #-2972
  0x8001daf64:  b001bc20    adrp x0, #58216448
  0x8001daf68:  2a0503f9    mov w25, w5
  0x8001daf6c:  f9455c00    ldr x0, [x0, #2744]
  0x8001daf70:  2a0403f7    mov w23, w4
  0x8001daf74:  94a7228b    bl #43813420
  0x8001daf78:  b001bc34    adrp x20, #58216448
  0x8001daf7c:  f9455a94    ldr x20, [x20, #2736]
  0x8001daf80:  340000a0    cbz w0, #20
  0x8001daf84:  b900029f    str wzr, [x20]
  0x8001daf88:  b001bc20    adrp x0, #58216448
  0x8001daf8c:  f9455c00    ldr x0, [x0, #2744]
  0x8001daf90:  94a72288    bl #43813408
  0x8001daf94:  2a1f03fa    mov w26, wzr
  0x8001daf98:  2a1f03fc    mov w28, wzr
  0x8001daf9c:  2a1703e4    mov w4, w23
  0x8001dafa0:  2a1903e5    mov w5, w25
  0x8001dafa4:  17fffde0    b #-2176

