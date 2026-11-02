; UltraTears chunk main_107_freelist: 1 functions [0x8001ac270..0x8001ac914)

; Function f_8001ac270 [0x8001ac270..0x8001ac914)
f_8001ac270:
  0x8001ac270:  d10603ff    sub sp, sp, #384
  0x8001ac274:  a9127bfd    stp x29, x30, [sp, #288]
  0x8001ac278:  a9136ffc    stp x28, x27, [sp, #304]
  0x8001ac27c:  a91467fa    stp x26, x25, [sp, #320]
  0x8001ac280:  a9155ff8    stp x24, x23, [sp, #336]
  0x8001ac284:  a91657f6    stp x22, x21, [sp, #352]
  0x8001ac288:  a9174ff4    stp x20, x19, [sp, #368]
  0x8001ac28c:  910483fd    add x29, sp, #288
  0x8001ac290:  a9402009    ldp x9, x8, [x0]
  0x8001ac294:  d001bd16    adrp x22, #58335232
  0x8001ac298:  aa0403f5    mov x21, x4
  0x8001ac29c:  aa0203f3    mov x19, x2
  0x8001ac2a0:  aa0003f4    mov x20, x0
  0x8001ac2a4:  f9400918    ldr x24, [x8, #16]
  0x8001ac2a8:  f9404d29    ldr x9, [x9, #152]
  0x8001ac2ac:  f9439ad6    ldr x22, [x22, #1840]
  0x8001ac2b0:  eb16013f    cmp x9, x22
  0x8001ac2b4:  540005c1    b.ne #184
  0x8001ac2b8:  79403a89    ldrh w9, [x20, #28]
  0x8001ac2bc:  5280078b    mov w11, #60
  0x8001ac2c0:  f940270a    ldr x10, [x24, #72]
  0x8001ac2c4:  9bab2929    umaddl x9, w9, w11, x10
  0x8001ac2c8:  b980152a    ldrsw x10, [x9, #20]
  0x8001ac2cc:  f9400b09    ldr x9, [x24, #16]
  0x8001ac2d0:  8b0a0120    add x0, x9, x10
  0x8001ac2d4:  b940840a    ldr w10, [x0, #132]
  0x8001ac2d8:  7100055f    cmp w10, #1
  0x8001ac2dc:  5400042b    b.lt #132
  0x8001ac2e0:  f940170b    ldr x11, [x24, #40]
  0x8001ac2e4:  52800290    mov w16, #20
  0x8001ac2e8:  aa1f03f7    mov x23, xzr
  0x8001ac2ec:  b980800f    ldrsw x15, [x0, #128]
  0x8001ac2f0:  f940002c    ldr x12, [x1]
  0x8001ac2f4:  9100058d    add x13, x12, #1
  0x8001ac2f8:  b980296b    ldrsw x11, [x11, #40]
  0x8001ac2fc:  8b0b012e    add x14, x9, x11
  0x8001ac300:  b980252b    ldrsw x11, [x9, #36]
  0x8001ac304:  9b3039f8    smaddl x24, w15, w16, x14
  0x8001ac308:  5280028f    mov w15, #20
  0x8001ac30c:  8b0b012b    add x11, x9, x11
  0x8001ac310:  91000d6e    add x14, x11, #3
  0x8001ac314:  9b0f7ef0    mul x16, x23, x15
  0x8001ac318:  b8b06b11    ldrsw x17, [x24, x16]
  0x8001ac31c:  8b110170    add x16, x11, x17
  0x8001ac320:  eb10019f    cmp x12, x16
  0x8001ac324:  54000400    b.eq #128
  0x8001ac328:  aa1f03f0    mov x16, xzr
  0x8001ac32c:  8b1101d1    add x17, x14, x17
  0x8001ac330:  8b1001b2    add x18, x13, x16
  0x8001ac334:  8b100220    add x0, x17, x16
  0x8001ac338:  385ff241    ldurb w1, [x18, #-1]
  0x8001ac33c:  385fd002    ldurb w2, [x0, #-3]
  0x8001ac340:  6b02003f    cmp w1, w2
  0x8001ac344:  54000081    b.ne #16
  0x8001ac348:  340002e1    cbz w1, #92
  0x8001ac34c:  f150021f    cmp x16, #1024, lsl #12
  0x8001ac350:  54000201    b.ne #64
  0x8001ac354:  910006f7    add x23, x23, #1
  0x8001ac358:  eb0a02ff    cmp x23, x10
  0x8001ac35c:  54fffdc1    b.ne #-72
  0x8001ac360:  37001f03    tbnz w3, #0, #992
  0x8001ac364:  52800028    mov w8, #1
  0x8001ac368:  140000a5    b #660
  0x8001ac36c:  aa1403e0    mov x0, x20
  0x8001ac370:  2a0303f7    mov w23, w3
  0x8001ac374:  aa0103f9    mov x25, x1
  0x8001ac378:  d63f0120    blr x9
  0x8001ac37c:  f9400b09    ldr x9, [x24, #16]
  0x8001ac380:  aa1903e1    mov x1, x25
  0x8001ac384:  2a1703e3    mov w3, w23
  0x8001ac388:  f9400688    ldr x8, [x20, #8]
  0x8001ac38c:  17ffffd2    b #-184
  0x8001ac390:  387069a1    ldrb w1, [x13, x16]
  0x8001ac394:  385fe002    ldurb w2, [x0, #-2]
  0x8001ac398:  6b02003f    cmp w1, w2
  0x8001ac39c:  54fffdc1    b.ne #-72
  0x8001ac3a0:  35001f01    cbnz w1, #992
  0x8001ac3a4:  b5001695    cbnz x21, #720
  0x8001ac3a8:  52800289    mov w9, #20
  0x8001ac3ac:  52b84019    mov w25, #-1040187392
  0x8001ac3b0:  9b0962fb    madd x27, x23, x9, x24
  0x8001ac3b4:  b840cf69    ldr w9, [x27, #12]!
  0x8001ac3b8:  aa1b03fc    mov x28, x27
  0x8001ac3bc:  0a19013a    and w26, w9, w25
  0x8001ac3c0:  78dfcf89    ldrsh w9, [x28, #-4]!
  0x8001ac3c4:  37f80089    tbnz w9, #31, #16
  0x8001ac3c8:  7941b90a    ldrh w10, [x8, #220]
  0x8001ac3cc:  340008aa    cbz w10, #276
  0x8001ac3d0:  79400389    ldrh w9, [x28]
  0x8001ac3d4:  529ff388    mov w8, #65436
  0x8001ac3d8:  6b29211f    cmp w8, w9, uxth
  0x8001ac3dc:  54001043    b.lo #520
  0x8001ac3e0:  6b19035f    cmp w26, w25
  0x8001ac3e4:  540010a0    b.eq #532
  0x8001ac3e8:  f9400688    ldr x8, [x20, #8]
  0x8001ac3ec:  13003d2b    sxth w11, w9
  0x8001ac3f0:  b940610c    ldr w12, [x8, #96]
  0x8001ac3f4:  6b0b019f    cmp w12, w11
  0x8001ac3f8:  540014ad    b.le #660
  0x8001ac3fc:  f940350a    ldr x10, [x8, #104]
  0x8001ac400:  6b0b019f    cmp w12, w11
  0x8001ac404:  54001949    b.ls #808
  0x8001ac408:  93403d29    sxth x9, w9
  0x8001ac40c:  f8697954    ldr x20, [x10, x9, lsl #3]
  0x8001ac410:  b4001634    cbz x20, #708
  0x8001ac414:  52800288    mov w8, #20
  0x8001ac418:  9b0862e8    madd x8, x23, x8, x24
  0x8001ac41c:  79401508    ldrh w8, [x8, #10]
  0x8001ac420:  12003915    and w21, w8, #0x7fff
  0x8001ac424:  f9400288    ldr x8, [x20]
  0x8001ac428:  f9404d08    ldr x8, [x8, #152]
  0x8001ac42c:  eb16011f    cmp x8, x22
  0x8001ac430:  54001821    b.ne #772
  0x8001ac434:  f9400688    ldr x8, [x20, #8]
  0x8001ac438:  5280078b    mov w11, #60
  0x8001ac43c:  79403a89    ldrh w9, [x20, #28]
  0x8001ac440:  f9400908    ldr x8, [x8, #16]
  0x8001ac444:  f940250a    ldr x10, [x8, #72]
  0x8001ac448:  f9400908    ldr x8, [x8, #16]
  0x8001ac44c:  9bab2929    umaddl x9, w9, w11, x10
  0x8001ac450:  b9801529    ldrsw x9, [x9, #20]
  0x8001ac454:  8b090100    add x0, x8, x9
  0x8001ac458:  b9403c08    ldr w8, [x0, #60]
  0x8001ac45c:  5280018b    mov w11, #12
  0x8001ac460:  b9404c09    ldr w9, [x0, #76]
  0x8001ac464:  0b080128    add w8, w9, w8
  0x8001ac468:  b9405c09    ldr w9, [x0, #92]
  0x8001ac46c:  b9407c0a    ldr w10, [x0, #124]
  0x8001ac470:  1b0b7d4a    mul w10, w10, w11
  0x8001ac474:  0b090108    add w8, w8, w9
  0x8001ac478:  b9406c09    ldr w9, [x0, #108]
  0x8001ac47c:  f9400a80    ldr x0, [x20, #16]
  0x8001ac480:  0b080948    add w8, w10, w8, lsl #2
  0x8001ac484:  0b150129    add w9, w9, w21
  0x8001ac488:  0b090d15    add w21, w8, w9, lsl #3
  0x8001ac48c:  b4000100    cbz x0, #32
  0x8001ac490:  f9400008    ldr x8, [x0]
  0x8001ac494:  f001bd89    adrp x9, #58404864
  0x8001ac498:  f9400908    ldr x8, [x8, #16]
  0x8001ac49c:  f9462929    ldr x9, [x9, #3152]
  0x8001ac4a0:  eb09011f    cmp x8, x9
  0x8001ac4a4:  54000b21    b.ne #356
  0x8001ac4a8:  f9400400    ldr x0, [x0, #8]
  0x8001ac4ac:  8b35c009    add x9, x0, w21, sxtw
  0x8001ac4b0:  2a1f03e8    mov w8, wzr
  0x8001ac4b4:  f9000269    str x9, [x19]
  0x8001ac4b8:  a9574ff4    ldp x20, x19, [sp, #368]
  0x8001ac4bc:  7100011f    cmp w8, #0
  0x8001ac4c0:  a95657f6    ldp x22, x21, [sp, #352]
  0x8001ac4c4:  1a9f17e0    cset w0, eq
  0x8001ac4c8:  a9555ff8    ldp x24, x23, [sp, #336]
  0x8001ac4cc:  a95467fa    ldp x26, x25, [sp, #320]
  0x8001ac4d0:  a9536ffc    ldp x28, x27, [sp, #304]
  0x8001ac4d4:  a9527bfd    ldp x29, x30, [sp, #288]
  0x8001ac4d8:  910603ff    add sp, sp, #384
  0x8001ac4dc:  d65f03c0    ret
  0x8001ac4e0:  b940610a    ldr w10, [x8, #96]
  0x8001ac4e4:  6b09015f    cmp w10, w9
  0x8001ac4e8:  5400164d    b.le #712
  0x8001ac4ec:  f9403508    ldr x8, [x8, #104]
  0x8001ac4f0:  f8695915    ldr x21, [x8, w9, uxtw #3]
  0x8001ac4f4:  f001bd88    adrp x8, #58404864
  0x8001ac4f8:  f9452d08    ldr x8, [x8, #2648]
  0x8001ac4fc:  08dffd08    ldarb w8, [x8]
  0x8001ac500:  360017e8    tbz w8, #0, #764
  0x8001ac504:  b4000115    cbz x21, #32
  0x8001ac508:  f94002a8    ldr x8, [x21]
  0x8001ac50c:  f001bd81    adrp x1, #58404864
  0x8001ac510:  aa1503e0    mov x0, x21
  0x8001ac514:  f9400108    ldr x8, [x8]
  0x8001ac518:  f9452821    ldr x1, [x1, #2640]
  0x8001ac51c:  d63f0100    blr x8
  0x8001ac520:  b5000620    cbnz x0, #196
  0x8001ac524:  f001bd88    adrp x8, #58404864
  0x8001ac528:  f9453508    ldr x8, [x8, #2664]
  0x8001ac52c:  08dffd08    ldarb w8, [x8]
  0x8001ac530:  36001828    tbz w8, #0, #772
  0x8001ac534:  b4000115    cbz x21, #32
  0x8001ac538:  f94002a8    ldr x8, [x21]
  0x8001ac53c:  f001bd81    adrp x1, #58404864
  0x8001ac540:  aa1503e0    mov x0, x21
  0x8001ac544:  f9400108    ldr x8, [x8]
  0x8001ac548:  f9453021    ldr x1, [x1, #2656]
  0x8001ac54c:  d63f0100    blr x8
  0x8001ac550:  b50004a0    cbnz x0, #148
  0x8001ac554:  f001bd88    adrp x8, #58404864
  0x8001ac558:  f9453d08    ldr x8, [x8, #2680]
  0x8001ac55c:  08dffd08    ldarb w8, [x8]
  0x8001ac560:  36001868    tbz w8, #0, #780
  0x8001ac564:  b4000115    cbz x21, #32
  0x8001ac568:  f94002a8    ldr x8, [x21]
  0x8001ac56c:  f001bd81    adrp x1, #58404864
  0x8001ac570:  aa1503e0    mov x0, x21
  0x8001ac574:  f9400108    ldr x8, [x8]
  0x8001ac578:  f9453821    ldr x1, [x1, #2672]
  0x8001ac57c:  d63f0100    blr x8
  0x8001ac580:  b5000320    cbnz x0, #100
  0x8001ac584:  f001bd88    adrp x8, #58404864
  0x8001ac588:  f9454508    ldr x8, [x8, #2696]
  0x8001ac58c:  08dffd08    ldarb w8, [x8]
  0x8001ac590:  360018a8    tbz w8, #0, #788
  0x8001ac594:  b4000115    cbz x21, #32
  0x8001ac598:  f94002a8    ldr x8, [x21]
  0x8001ac59c:  f001bd81    adrp x1, #58404864
  0x8001ac5a0:  aa1503e0    mov x0, x21
  0x8001ac5a4:  f9400108    ldr x8, [x8]
  0x8001ac5a8:  f9454021    ldr x1, [x1, #2688]
  0x8001ac5ac:  d63f0100    blr x8
  0x8001ac5b0:  b50001a0    cbnz x0, #52
  0x8001ac5b4:  f001bd88    adrp x8, #58404864
  0x8001ac5b8:  f9454d08    ldr x8, [x8, #2712]
  0x8001ac5bc:  08dffd08    ldarb w8, [x8]
  0x8001ac5c0:  360018e8    tbz w8, #0, #796
  0x8001ac5c4:  b4fff075    cbz x21, #-500
  0x8001ac5c8:  f94002a8    ldr x8, [x21]
  0x8001ac5cc:  f001bd81    adrp x1, #58404864
  0x8001ac5d0:  aa1503e0    mov x0, x21
  0x8001ac5d4:  f9400108    ldr x8, [x8]
  0x8001ac5d8:  f9454821    ldr x1, [x1, #2704]
  0x8001ac5dc:  d63f0100    blr x8
  0x8001ac5e0:  b4ffef80    cbz x0, #-528
  0x8001ac5e4:  b9400368    ldr w8, [x27]
  0x8001ac5e8:  6b19035f    cmp w26, w25
  0x8001ac5ec:  12077509    and w9, w8, #0xfe7fffff
  0x8001ac5f0:  7a401924    ccmp w9, #0, #4, ne
  0x8001ac5f4:  54000161    b.ne #44
  0x8001ac5f8:  2a1f03e8    mov w8, wzr
  0x8001ac5fc:  d001c889    adrp x9, #59842560
  0x8001ac600:  9116c129    add x9, x9, #1456
  0x8001ac604:  17ffffac    b #-336
  0x8001ac608:  f001bd89    adrp x9, #58404864
  0x8001ac60c:  f9464529    ldr x9, [x9, #3208]
  0x8001ac610:  eb09011f    cmp x8, x9
  0x8001ac614:  54fff4a0    b.eq #-364
  0x8001ac618:  d63f0100    blr x8
  0x8001ac61c:  17ffffa4    b #-368
  0x8001ac620:  f9400689    ldr x9, [x20, #8]
  0x8001ac624:  910023e1    add x1, sp, #8
  0x8001ac628:  f940092a    ldr x10, [x9, #16]
  0x8001ac62c:  f9401120    ldr x0, [x9, #32]
  0x8001ac630:  f940194b    ldr x11, [x10, #48]
  0x8001ac634:  f940094a    ldr x10, [x10, #16]
  0x8001ac638:  7940556c    ldrh w12, [x11, #42]
  0x8001ac63c:  8b282188    add x8, x12, w8, uxth
  0x8001ac640:  8b080d68    add x8, x11, x8, lsl #3
  0x8001ac644:  b980254b    ldrsw x11, [x10, #36]
  0x8001ac648:  b9403108    ldr w8, [x8, #48]
  0x8001ac64c:  8b0b014a    add x10, x10, x11
  0x8001ac650:  92405508    and x8, x8, #0x3fffff
  0x8001ac654:  8b080148    add x8, x10, x8
  0x8001ac658:  f90007e8    str x8, [sp, #8]
  0x8001ac65c:  f9400008    ldr x8, [x0]
  0x8001ac660:  f9407d08    ldr x8, [x8, #248]
  0x8001ac664:  d63f0100    blr x8
  0x8001ac668:  2a1f03e8    mov w8, wzr
  0x8001ac66c:  f9000260    str x0, [x19]
  0x8001ac670:  17ffff92    b #-440
  0x8001ac674:  52800289    mov w9, #20
  0x8001ac678:  9b0962e9    madd x9, x23, x9, x24
  0x8001ac67c:  b9800529    ldrsw x9, [x9, #4]
  0x8001ac680:  8b090169    add x9, x11, x9
  0x8001ac684:  f90002a9    str x9, [x21]
  0x8001ac688:  17ffff48    b #-736
  0x8001ac68c:  39044fff    strb wzr, [sp, #275]
  0x8001ac690:  910023e9    add x9, sp, #8
  0x8001ac694:  90015501    adrp x1, #44695552
  0x8001ac698:  91270c21    add x1, x1, #2499
  0x8001ac69c:  f9400908    ldr x8, [x8, #16]
  0x8001ac6a0:  91003129    add x9, x9, #12
  0x8001ac6a4:  f90007e9    str x9, [sp, #8]
  0x8001ac6a8:  52802009    mov w9, #256
  0x8001ac6ac:  390053ff    strb wzr, [sp, #20]
  0x8001ac6b0:  b90013e9    str w9, [sp, #16]
  0x8001ac6b4:  910023e0    add x0, sp, #8
  0x8001ac6b8:  f9400908    ldr x8, [x8, #16]
  0x8001ac6bc:  b980250a    ldrsw x10, [x8, #36]
  0x8001ac6c0:  b9800909    ldrsw x9, [x8, #8]
  0x8001ac6c4:  8b0a0108    add x8, x8, x10
  0x8001ac6c8:  8b090102    add x2, x8, x9
  0x8001ac6cc:  97fbb465    bl #-1125996
  0x8001ac6d0:  f9400688    ldr x8, [x20, #8]
  0x8001ac6d4:  39044fff    strb wzr, [sp, #275]
  0x8001ac6d8:  910023e9    add x9, sp, #8
  0x8001ac6dc:  90015501    adrp x1, #44695552
  0x8001ac6e0:  91270c21    add x1, x1, #2499
  0x8001ac6e4:  f9400908    ldr x8, [x8, #16]
  0x8001ac6e8:  91003129    add x9, x9, #12
  0x8001ac6ec:  f90007e9    str x9, [sp, #8]
  0x8001ac6f0:  52802009    mov w9, #256
  0x8001ac6f4:  390053ff    strb wzr, [sp, #20]
  0x8001ac6f8:  b90013e9    str w9, [sp, #16]
  0x8001ac6fc:  910023e0    add x0, sp, #8
  0x8001ac700:  f9400908    ldr x8, [x8, #16]
  0x8001ac704:  b980250a    ldrsw x10, [x8, #36]
  0x8001ac708:  b9800909    ldrsw x9, [x8, #8]
  0x8001ac70c:  8b0a0108    add x8, x8, x10
  0x8001ac710:  8b090102    add x2, x8, x9
  0x8001ac714:  97fbb453    bl #-1126068
  0x8001ac718:  d001c888    adrp x8, #59842560
  0x8001ac71c:  9116c108    add x8, x8, #1456
  0x8001ac720:  f9000268    str x8, [x19]
  0x8001ac724:  52800028    mov w8, #1
  0x8001ac728:  17ffff64    b #-624
  0x8001ac72c:  aa1f03e9    mov x9, xzr
  0x8001ac730:  17ffff37    b #-804
  0x8001ac734:  aa1403e0    mov x0, x20
  0x8001ac738:  d63f0100    blr x8
  0x8001ac73c:  17ffff47    b #-740
  0x8001ac740:  910023e8    add x8, sp, #8
  0x8001ac744:  39044fff    strb wzr, [sp, #275]
  0x8001ac748:  90015501    adrp x1, #44695552
  0x8001ac74c:  91270c21    add x1, x1, #2499
  0x8001ac750:  91003108    add x8, x8, #12
  0x8001ac754:  390053ff    strb wzr, [sp, #20]
  0x8001ac758:  f90007e8    str x8, [sp, #8]
  0x8001ac75c:  52802008    mov w8, #256
  0x8001ac760:  b980252a    ldrsw x10, [x9, #36]
  0x8001ac764:  b90013e8    str w8, [sp, #16]
  0x8001ac768:  910023e0    add x0, sp, #8
  0x8001ac76c:  b9800928    ldrsw x8, [x9, #8]
  0x8001ac770:  8b0a0129    add x9, x9, x10
  0x8001ac774:  8b080122    add x2, x9, x8
  0x8001ac778:  97fbb43a    bl #-1126168
  0x8001ac77c:  17ffff9f    b #-388
  0x8001ac780:  39400641    ldrb w1, [x18, #1]
  0x8001ac784:  385ff000    ldurb w0, [x0, #-1]
  0x8001ac788:  6b00003f    cmp w1, w0
  0x8001ac78c:  54ffde41    b.ne #-1080
  0x8001ac790:  34ffe0a1    cbz w1, #-1004
  0x8001ac794:  39400a52    ldrb w18, [x18, #2]
  0x8001ac798:  38706a20    ldrb w0, [x17, x16]
  0x8001ac79c:  6b00025f    cmp w18, w0
  0x8001ac7a0:  54ffdda1    b.ne #-1100
  0x8001ac7a4:  34ffe012    cbz w18, #-1024
  0x8001ac7a8:  91001210    add x16, x16, #4
  0x8001ac7ac:  17fffee1    b #-1148
  0x8001ac7b0:  39044fff    strb wzr, [sp, #275]
  0x8001ac7b4:  910023e9    add x9, sp, #8
  0x8001ac7b8:  90015501    adrp x1, #44695552
  0x8001ac7bc:  91270c21    add x1, x1, #2499
  0x8001ac7c0:  f9400908    ldr x8, [x8, #16]
  0x8001ac7c4:  91003129    add x9, x9, #12
  0x8001ac7c8:  f90007e9    str x9, [sp, #8]
  0x8001ac7cc:  52802009    mov w9, #256
  0x8001ac7d0:  390053ff    strb wzr, [sp, #20]
  0x8001ac7d4:  b90013e9    str w9, [sp, #16]
  0x8001ac7d8:  910023e0    add x0, sp, #8
  0x8001ac7dc:  f9400908    ldr x8, [x8, #16]
  0x8001ac7e0:  b980250a    ldrsw x10, [x8, #36]
  0x8001ac7e4:  b9800909    ldrsw x9, [x8, #8]
  0x8001ac7e8:  8b0a0108    add x8, x8, x10
  0x8001ac7ec:  8b090102    add x2, x8, x9
  0x8001ac7f0:  97fbb41c    bl #-1126288
  0x8001ac7f4:  aa1f03f5    mov x21, xzr
  0x8001ac7f8:  17ffff3f    b #-772
  0x8001ac7fc:  f001bd80    adrp x0, #58404864
  0x8001ac800:  f9452c00    ldr x0, [x0, #2648]
  0x8001ac804:  94a7dc67    bl #44003740
  0x8001ac808:  34ffe7e0    cbz w0, #-772
  0x8001ac80c:  f001bd88    adrp x8, #58404864
  0x8001ac810:  d001bd09    adrp x9, #58335232
  0x8001ac814:  f9452908    ldr x8, [x8, #2640]
  0x8001ac818:  f942f929    ldr x9, [x9, #1520]
  0x8001ac81c:  f001bd80    adrp x0, #58404864
  0x8001ac820:  91004129    add x9, x9, #16
  0x8001ac824:  f9000109    str x9, [x8]
  0x8001ac828:  f9452c00    ldr x0, [x0, #2648]
  0x8001ac82c:  94a7dc61    bl #44003716
  0x8001ac830:  17ffff35    b #-812
  0x8001ac834:  f001bd80    adrp x0, #58404864
  0x8001ac838:  f9453400    ldr x0, [x0, #2664]
  0x8001ac83c:  94a7dc59    bl #44003684
  0x8001ac840:  34ffe7a0    cbz w0, #-780
  0x8001ac844:  d001bd08    adrp x8, #58335232
  0x8001ac848:  f001bd89    adrp x9, #58404864
  0x8001ac84c:  f942f908    ldr x8, [x8, #1520]
  0x8001ac850:  f9453129    ldr x9, [x9, #2656]
  0x8001ac854:  f001bd80    adrp x0, #58404864
  0x8001ac858:  91004108    add x8, x8, #16
  0x8001ac85c:  f9000128    str x8, [x9]
  0x8001ac860:  f9453400    ldr x0, [x0, #2664]
  0x8001ac864:  94a7dc53    bl #44003660
  0x8001ac868:  17ffff33    b #-820
  0x8001ac86c:  f001bd80    adrp x0, #58404864
  0x8001ac870:  f9453c00    ldr x0, [x0, #2680]
  0x8001ac874:  94a7dc4b    bl #44003628
  0x8001ac878:  34ffe760    cbz w0, #-788
  0x8001ac87c:  d001bd08    adrp x8, #58335232
  0x8001ac880:  f001bd89    adrp x9, #58404864
  0x8001ac884:  f942f908    ldr x8, [x8, #1520]
  0x8001ac888:  f9453929    ldr x9, [x9, #2672]
  0x8001ac88c:  f001bd80    adrp x0, #58404864
  0x8001ac890:  91004108    add x8, x8, #16
  0x8001ac894:  f9000128    str x8, [x9]
  0x8001ac898:  f9453c00    ldr x0, [x0, #2680]
  0x8001ac89c:  94a7dc45    bl #44003604
  0x8001ac8a0:  17ffff31    b #-828
  0x8001ac8a4:  f001bd80    adrp x0, #58404864
  0x8001ac8a8:  f9454400    ldr x0, [x0, #2696]
  0x8001ac8ac:  94a7dc3d    bl #44003572
  0x8001ac8b0:  34ffe720    cbz w0, #-796
  0x8001ac8b4:  d001bd08    adrp x8, #58335232
  0x8001ac8b8:  f001bd89    adrp x9, #58404864
  0x8001ac8bc:  f942f908    ldr x8, [x8, #1520]
  0x8001ac8c0:  f9454129    ldr x9, [x9, #2688]
  0x8001ac8c4:  f001bd80    adrp x0, #58404864
  0x8001ac8c8:  91004108    add x8, x8, #16
  0x8001ac8cc:  f9000128    str x8, [x9]
  0x8001ac8d0:  f9454400    ldr x0, [x0, #2696]
  0x8001ac8d4:  94a7dc37    bl #44003548
  0x8001ac8d8:  17ffff2f    b #-836
  0x8001ac8dc:  f001bd80    adrp x0, #58404864
  0x8001ac8e0:  f9454c00    ldr x0, [x0, #2712]
  0x8001ac8e4:  94a7dc2f    bl #44003516
  0x8001ac8e8:  34ffe6e0    cbz w0, #-804
  0x8001ac8ec:  f001bd88    adrp x8, #58404864
  0x8001ac8f0:  d001bd09    adrp x9, #58335232
  0x8001ac8f4:  f9454908    ldr x8, [x8, #2704]
  0x8001ac8f8:  f942f929    ldr x9, [x9, #1520]
  0x8001ac8fc:  f001bd80    adrp x0, #58404864
  0x8001ac900:  91004129    add x9, x9, #16
  0x8001ac904:  f9000109    str x9, [x8]
  0x8001ac908:  f9454c00    ldr x0, [x0, #2712]
  0x8001ac90c:  94a7dc29    bl #44003492
  0x8001ac910:  17ffff2d    b #-844

