; UltraTears chunk main_083_buddy: 1 functions [0x80015f120..0x8001603b0)

; Function f_80015f120 [0x80015f120..0x8001603b0)
f_80015f120:
  0x80015f120:  d10603ff    sub sp, sp, #384
  0x80015f124:  a9127bfd    stp x29, x30, [sp, #288]
  0x80015f128:  a9136ffc    stp x28, x27, [sp, #304]
  0x80015f12c:  a91467fa    stp x26, x25, [sp, #320]
  0x80015f130:  a9155ff8    stp x24, x23, [sp, #336]
  0x80015f134:  a91657f6    stp x22, x21, [sp, #352]
  0x80015f138:  a9174ff4    stp x20, x19, [sp, #368]
  0x80015f13c:  910483fd    add x29, sp, #288
  0x80015f140:  a9402009    ldp x9, x8, [x0]
  0x80015f144:  2a0303f7    mov w23, w3
  0x80015f148:  f001bf63    adrp x3, #58650624
  0x80015f14c:  aa0203f3    mov x19, x2
  0x80015f150:  aa0003f5    mov x21, x0
  0x80015f154:  aa0103f6    mov x22, x1
  0x80015f158:  f9400914    ldr x20, [x8, #16]
  0x80015f15c:  f9404d28    ldr x8, [x9, #152]
  0x80015f160:  f9439863    ldr x3, [x3, #1840]
  0x80015f164:  eb03011f    cmp x8, x3
  0x80015f168:  54004de1    b.ne #2492
  0x80015f16c:  79403aa8    ldrh w8, [x21, #28]
  0x80015f170:  5280078a    mov w10, #60
  0x80015f174:  f9402689    ldr x9, [x20, #72]
  0x80015f178:  9baa2508    umaddl x8, w8, w10, x9
  0x80015f17c:  b9801509    ldrsw x9, [x8, #20]
  0x80015f180:  f9400a88    ldr x8, [x20, #16]
  0x80015f184:  8b090100    add x0, x8, x9
  0x80015f188:  b9404409    ldr w9, [x0, #68]
  0x80015f18c:  7100053f    cmp w9, #1
  0x80015f190:  5400060b    b.lt #192
  0x80015f194:  f940168b    ldr x11, [x20, #40]
  0x80015f198:  aa1f03ea    mov x10, xzr
  0x80015f19c:  b980400c    ldrsw x12, [x0, #64]
  0x80015f1a0:  f94002cd    ldr x13, [x22]
  0x80015f1a4:  910005ae    add x14, x13, #1
  0x80015f1a8:  b980096b    ldrsw x11, [x11, #8]
  0x80015f1ac:  8b0b010b    add x11, x8, x11
  0x80015f1b0:  8b0c116b    add x11, x11, x12, lsl #4
  0x80015f1b4:  b980250c    ldrsw x12, [x8, #36]
  0x80015f1b8:  8b0c010c    add x12, x8, x12
  0x80015f1bc:  91000d8f    add x15, x12, #3
  0x80015f1c0:  d37ced50    lsl x16, x10, #4
  0x80015f1c4:  b8b06971    ldrsw x17, [x11, x16]
  0x80015f1c8:  8b110190    add x16, x12, x17
  0x80015f1cc:  eb1001bf    cmp x13, x16
  0x80015f1d0:  54000680    b.eq #208
  0x80015f1d4:  aa1f03f0    mov x16, xzr
  0x80015f1d8:  8b1101f1    add x17, x15, x17
  0x80015f1dc:  8b1001d2    add x18, x14, x16
  0x80015f1e0:  8b100220    add x0, x17, x16
  0x80015f1e4:  385ff241    ldurb w1, [x18, #-1]
  0x80015f1e8:  385fd002    ldurb w2, [x0, #-3]
  0x80015f1ec:  6b02003f    cmp w1, w2
  0x80015f1f0:  540002a1    b.ne #84
  0x80015f1f4:  34000561    cbz w1, #172
  0x80015f1f8:  f150021f    cmp x16, #1024, lsl #12
  0x80015f1fc:  54000240    b.eq #72
  0x80015f200:  387069c1    ldrb w1, [x14, x16]
  0x80015f204:  385fe002    ldurb w2, [x0, #-2]
  0x80015f208:  6b02003f    cmp w1, w2
  0x80015f20c:  540001c1    b.ne #56
  0x80015f210:  34000481    cbz w1, #144
  0x80015f214:  39400641    ldrb w1, [x18, #1]
  0x80015f218:  385ff000    ldurb w0, [x0, #-1]
  0x80015f21c:  6b00003f    cmp w1, w0
  0x80015f220:  54000121    b.ne #36
  0x80015f224:  340003e1    cbz w1, #124
  0x80015f228:  39400a52    ldrb w18, [x18, #2]
  0x80015f22c:  38706a20    ldrb w0, [x17, x16]
  0x80015f230:  6b00025f    cmp w18, w0
  0x80015f234:  54000081    b.ne #16
  0x80015f238:  34000352    cbz w18, #104
  0x80015f23c:  91001210    add x16, x16, #4
  0x80015f240:  17ffffe7    b #-100
  0x80015f244:  9100054a    add x10, x10, #1
  0x80015f248:  eb09015f    cmp x10, x9
  0x80015f24c:  54fffba1    b.ne #-140
  0x80015f250:  36000217    tbz w23, #0, #64
  0x80015f254:  910023e9    add x9, sp, #8
  0x80015f258:  39044fff    strb wzr, [sp, #275]
  0x80015f25c:  b0015761    adrp x1, #45010944
  0x80015f260:  91270c21    add x1, x1, #2499
  0x80015f264:  91003129    add x9, x9, #12
  0x80015f268:  390053ff    strb wzr, [sp, #20]
  0x80015f26c:  f90007e9    str x9, [sp, #8]
  0x80015f270:  52802009    mov w9, #256
  0x80015f274:  b980250a    ldrsw x10, [x8, #36]
  0x80015f278:  b90013e9    str w9, [sp, #16]
  0x80015f27c:  910023e0    add x0, sp, #8
  0x80015f280:  b9800909    ldrsw x9, [x8, #8]
  0x80015f284:  8b0a0108    add x8, x8, x10
  0x80015f288:  8b090102    add x2, x8, x9
  0x80015f28c:  97fce975    bl #-809516
  0x80015f290:  9001c008    adrp x8, #58720256
  0x80015f294:  520002f7    eor w23, w23, #0x1
  0x80015f298:  f9452108    ldr x8, [x8, #2624]
  0x80015f29c:  140001e2    b #1928
  0x80015f2a0:  8b0a117a    add x26, x11, x10, lsl #4
  0x80015f2a4:  52b84019    mov w25, #-1040187392
  0x80015f2a8:  aa1a03fb    mov x27, x26
  0x80015f2ac:  b8408f68    ldr w8, [x27, #8]!
  0x80015f2b0:  aa1b03f4    mov x20, x27
  0x80015f2b4:  78dfce97    ldrsh w23, [x20, #-4]!
  0x80015f2b8:  0a19011c    and w28, w8, w25
  0x80015f2bc:  36f81117    tbz w23, #31, #544
  0x80015f2c0:  529ff388    mov w8, #65436
  0x80015f2c4:  6b37211f    cmp w8, w23, uxth
  0x80015f2c8:  54000382    b.hs #112
  0x80015f2cc:  b9400368    ldr w8, [x27]
  0x80015f2d0:  6b19039f    cmp w28, w25
  0x80015f2d4:  12077514    and w20, w8, #0xfe7fffff
  0x80015f2d8:  54000040    b.eq #8
  0x80015f2dc:  35003574    cbnz w20, #1708
  0x80015f2e0:  9001c009    adrp x9, #58720256
  0x80015f2e4:  9001c00a    adrp x10, #58720256
  0x80015f2e8:  f9451929    ldr x9, [x9, #2608]
  0x80015f2ec:  f9451d4a    ldr x10, [x10, #2616]
  0x80015f2f0:  2a1f03f7    mov w23, wzr
  0x80015f2f4:  b9400f4b    ldr w11, [x26, #12]
  0x80015f2f8:  7100017f    cmp w11, #0
  0x80015f2fc:  9a890158    csel x24, x10, x9, eq
  0x80015f300:  6a28033f    bics wzr, w25, w8
  0x80015f304:  f9400279    ldr x25, [x19]
  0x80015f308:  f9000278    str x24, [x19]
  0x80015f30c:  54000820    b.eq #260
  0x80015f310:  52800028    mov w8, #1
  0x80015f314:  a9574ff4    ldp x20, x19, [sp, #368]
  0x80015f318:  0a370100    bic w0, w8, w23
  0x80015f31c:  a95657f6    ldp x22, x21, [sp, #352]
  0x80015f320:  a9555ff8    ldp x24, x23, [sp, #336]
  0x80015f324:  a95467fa    ldp x26, x25, [sp, #320]
  0x80015f328:  a9536ffc    ldp x28, x27, [sp, #304]
  0x80015f32c:  a9527bfd    ldp x29, x30, [sp, #288]
  0x80015f330:  910603ff    add sp, sp, #384
  0x80015f334:  d65f03c0    ret
  0x80015f338:  79400f48    ldrh w8, [x26, #6]
  0x80015f33c:  6b19039f    cmp w28, w25
  0x80015f340:  12003918    and w24, w8, #0x7fff
  0x80015f344:  54003a60    b.eq #1868
  0x80015f348:  2a1f03fa    mov w26, wzr
  0x80015f34c:  2a1f03f4    mov w20, wzr
  0x80015f350:  f001cae8    adrp x8, #60157952
  0x80015f354:  9114a108    add x8, x8, #1320
  0x80015f358:  f9400279    ldr x25, [x19]
  0x80015f35c:  08dffd08    ldarb w8, [x8]
  0x80015f360:  36003c28    tbz w8, #0, #1924
  0x80015f364:  37783f17    tbnz w23, #15, #2016
  0x80015f368:  f94006a8    ldr x8, [x21, #8]
  0x80015f36c:  b9406109    ldr w9, [x8, #96]
  0x80015f370:  6b37213f    cmp w9, w23, uxth
  0x80015f374:  540041cd    b.le #2104
  0x80015f378:  f9403509    ldr x9, [x8, #104]
  0x80015f37c:  92403eea    and x10, x23, #0xffff
  0x80015f380:  f86a7937    ldr x23, [x9, x10, lsl #3]
  0x80015f384:  b40043d7    cbz x23, #2168
  0x80015f388:  f94002e8    ldr x8, [x23]
  0x80015f38c:  f9404d08    ldr x8, [x8, #152]
  0x80015f390:  eb03011f    cmp x8, x3
  0x80015f394:  54004641    b.ne #2248
  0x80015f398:  f94006e8    ldr x8, [x23, #8]
  0x80015f39c:  5280078b    mov w11, #60
  0x80015f3a0:  79403ae9    ldrh w9, [x23, #28]
  0x80015f3a4:  f9400908    ldr x8, [x8, #16]
  0x80015f3a8:  f940250a    ldr x10, [x8, #72]
  0x80015f3ac:  f9400908    ldr x8, [x8, #16]
  0x80015f3b0:  9bab2929    umaddl x9, w9, w11, x10
  0x80015f3b4:  b9801529    ldrsw x9, [x9, #20]
  0x80015f3b8:  8b090100    add x0, x8, x9
  0x80015f3bc:  3500339a    cbnz w26, #1648
  0x80015f3c0:  b9403c08    ldr w8, [x0, #60]
  0x80015f3c4:  0b38a108    add w8, w8, w24, sxth
  0x80015f3c8:  531e7518    lsl w24, w8, #2
  0x80015f3cc:  f9400ae0    ldr x0, [x23, #16]
  0x80015f3d0:  b4000180    cbz x0, #48
  0x80015f3d4:  f9400008    ldr x8, [x0]
  0x80015f3d8:  9001c009    adrp x9, #58720256
  0x80015f3dc:  f9400908    ldr x8, [x8, #16]
  0x80015f3e0:  f9462929    ldr x9, [x9, #3152]
  0x80015f3e4:  eb09011f    cmp x8, x9
  0x80015f3e8:  540000a0    b.eq #20
  0x80015f3ec:  9001c009    adrp x9, #58720256
  0x80015f3f0:  f9464529    ldr x9, [x9, #3208]
  0x80015f3f4:  eb09011f    cmp x8, x9
  0x80015f3f8:  54002b81    b.ne #1392
  0x80015f3fc:  f9400400    ldr x0, [x0, #8]
  0x80015f400:  8b38c018    add x24, x0, w24, sxtw
  0x80015f404:  2a1f03f7    mov w23, wzr
  0x80015f408:  f9000278    str x24, [x19]
  0x80015f40c:  3607f83a    tbz w26, #0, #-252
  0x80015f410:  2a0403fb    mov w27, w4
  0x80015f414:  f9400aa0    ldr x0, [x21, #16]
  0x80015f418:  f9400008    ldr x8, [x0]
  0x80015f41c:  f9402d08    ldr x8, [x8, #88]
  0x80015f420:  d63f0100    blr x8
  0x80015f424:  b50076f9    cbnz x25, #3804
  0x80015f428:  370076db    tbnz w27, #0, #3800
  0x80015f42c:  f9400819    ldr x25, [x0, #16]
  0x80015f430:  b4000079    cbz x25, #12
  0x80015f434:  f9400328    ldr x8, [x25]
  0x80015f438:  f9000808    str x8, [x0, #16]
  0x80015f43c:  12800008    mov w8, #-1
  0x80015f440:  f9001b28    str x8, [x25, #48]
  0x80015f444:  9001bf68    adrp x8, #58638336
  0x80015f448:  f945bd08    ldr x8, [x8, #2936]
  0x80015f44c:  a9017f3f    stp xzr, xzr, [x25, #16]
  0x80015f450:  a9027f3f    stp xzr, xzr, [x25, #32]
  0x80015f454:  a9007f28    stp x8, xzr, [x25]
  0x80015f458:  29402408    ldp w8, w9, [x0]
  0x80015f45c:  93407d08    sxtw x8, w8
  0x80015f460:  6b09011f    cmp w8, w9
  0x80015f464:  540000ca    b.ge #24
  0x80015f468:  f9400409    ldr x9, [x0, #8]
  0x80015f46c:  f8287939    str x25, [x9, x8, lsl #3]
  0x80015f470:  b9400008    ldr w8, [x0]
  0x80015f474:  11000508    add w8, w8, #1
  0x80015f478:  b9000008    str w8, [x0]
  0x80015f47c:  f94002c8    ldr x8, [x22]
  0x80015f480:  52800049    mov w9, #2
  0x80015f484:  12003e8a    and w10, w20, #0xffff
  0x80015f488:  2905272a    stp w10, w9, [x25, #40]
  0x80015f48c:  a9006328    stp x8, x24, [x25]
  0x80015f490:  f9400aa0    ldr x0, [x21, #16]
  0x80015f494:  f9400008    ldr x8, [x0]
  0x80015f498:  f9402908    ldr x8, [x8, #80]
  0x80015f49c:  d63f0100    blr x8
  0x80015f4a0:  b4007580    cbz x0, #3760
  0x80015f4a4:  f9400aa0    ldr x0, [x21, #16]
  0x80015f4a8:  f9400008    ldr x8, [x0]
  0x80015f4ac:  f9402908    ldr x8, [x8, #80]
  0x80015f4b0:  d63f0100    blr x8
  0x80015f4b4:  29422408    ldp w8, w9, [x0, #16]
  0x80015f4b8:  6b09011f    cmp w8, w9
  0x80015f4bc:  540074a3    b.lo #3732
  0x80015f4c0:  f9400009    ldr x9, [x0]
  0x80015f4c4:  5100050a    sub w10, w8, #1
  0x80015f4c8:  b900100a    str w10, [x0, #16]
  0x80015f4cc:  8b080928    add x8, x9, x8, lsl #2
  0x80015f4d0:  f9000b28    str x8, [x25, #16]
  0x80015f4d4:  b900333f    str wzr, [x25, #48]
  0x80015f4d8:  14000153    b #1356
  0x80015f4dc:  f94006a8    ldr x8, [x21, #8]
  0x80015f4e0:  7941b909    ldrh w9, [x8, #220]
  0x80015f4e4:  35002229    cbnz w9, #1092
  0x80015f4e8:  b9406109    ldr w9, [x8, #96]
  0x80015f4ec:  6b17013f    cmp w9, w23
  0x80015f4f0:  54003c0d    b.le #1920
  0x80015f4f4:  f9403508    ldr x8, [x8, #104]
  0x80015f4f8:  f8775917    ldr x23, [x8, w23, uxtw #3]
  0x80015f4fc:  9001c008    adrp x8, #58720256
  0x80015f500:  f9452d08    ldr x8, [x8, #2648]
  0x80015f504:  08dffd08    ldarb w8, [x8]
  0x80015f508:  36003e28    tbz w8, #0, #1988
  0x80015f50c:  b001c0c9    adrp x9, #58822656
  0x80015f510:  f941b529    ldr x9, [x9, #872]
  0x80015f514:  b4000737    cbz x23, #228
  0x80015f518:  f94002e8    ldr x8, [x23]
  0x80015f51c:  f9400108    ldr x8, [x8]
  0x80015f520:  eb09011f    cmp x8, x9
  0x80015f524:  540004a1    b.ne #148
  0x80015f528:  b001c0c8    adrp x8, #58822656
  0x80015f52c:  f941bd08    ldr x8, [x8, #888]
  0x80015f530:  08dffd08    ldarb w8, [x8]
  0x80015f534:  36004b48    tbz w8, #0, #2408
  0x80015f538:  f001bf68    adrp x8, #58650624
  0x80015f53c:  f9430108    ldr x8, [x8, #1536]
  0x80015f540:  08dffd08    ldarb w8, [x8]
  0x80015f544:  36004dc8    tbz w8, #0, #2488
  0x80015f548:  f001bf68    adrp x8, #58650624
  0x80015f54c:  f9430d08    ldr x8, [x8, #1560]
  0x80015f550:  08dffd08    ldarb w8, [x8]
  0x80015f554:  37000528    tbnz w8, #0, #164
  0x80015f558:  f001bf60    adrp x0, #58650624
  0x80015f55c:  aa0303f8    mov x24, x3
  0x80015f560:  f9430c00    ldr x0, [x0, #1560]
  0x80015f564:  b90007e4    str w4, [sp, #4]
  0x80015f568:  94a9110e    bl #44319800
  0x80015f56c:  b001c0c9    adrp x9, #58822656
  0x80015f570:  aa1803e3    mov x3, x24
  0x80015f574:  f941b529    ldr x9, [x9, #872]
  0x80015f578:  b94007e4    ldr w4, [sp, #4]
  0x80015f57c:  340003e0    cbz w0, #124
  0x80015f580:  9001bf68    adrp x8, #58638336
  0x80015f584:  f001bf69    adrp x9, #58650624
  0x80015f588:  f9440508    ldr x8, [x8, #2056]
  0x80015f58c:  f9430929    ldr x9, [x9, #1552]
  0x80015f590:  f001bf60    adrp x0, #58650624
  0x80015f594:  91004108    add x8, x8, #16
  0x80015f598:  f9000128    str x8, [x9]
  0x80015f59c:  f9430c00    ldr x0, [x0, #1560]
  0x80015f5a0:  94a91104    bl #44319760
  0x80015f5a4:  b001c0c9    adrp x9, #58822656
  0x80015f5a8:  aa1803e3    mov x3, x24
  0x80015f5ac:  f941b529    ldr x9, [x9, #872]
  0x80015f5b0:  b94007e4    ldr w4, [sp, #4]
  0x80015f5b4:  14000011    b #68
  0x80015f5b8:  9001c001    adrp x1, #58720256
  0x80015f5bc:  aa1703e0    mov x0, x23
  0x80015f5c0:  f9452821    ldr x1, [x1, #2640]
  0x80015f5c4:  2a0403f8    mov w24, w4
  0x80015f5c8:  aa1303f9    mov x25, x19
  0x80015f5cc:  aa1603f3    mov x19, x22
  0x80015f5d0:  aa0303f6    mov x22, x3
  0x80015f5d4:  d63f0100    blr x8
  0x80015f5d8:  b001c0c9    adrp x9, #58822656
  0x80015f5dc:  aa1603e3    mov x3, x22
  0x80015f5e0:  f941b529    ldr x9, [x9, #872]
  0x80015f5e4:  aa1303f6    mov x22, x19
  0x80015f5e8:  aa1903f3    mov x19, x25
  0x80015f5ec:  52b84019    mov w25, #-1040187392
  0x80015f5f0:  2a1803e4    mov w4, w24
  0x80015f5f4:  b5ffe6c0    cbnz x0, #-808
  0x80015f5f8:  9001c008    adrp x8, #58720256
  0x80015f5fc:  f9453508    ldr x8, [x8, #2664]
  0x80015f600:  08dffd08    ldarb w8, [x8]
  0x80015f604:  360038c8    tbz w8, #0, #1816
  0x80015f608:  b4000737    cbz x23, #228
  0x80015f60c:  f94002e8    ldr x8, [x23]
  0x80015f610:  f9400108    ldr x8, [x8]
  0x80015f614:  eb09011f    cmp x8, x9
  0x80015f618:  540004a1    b.ne #148
  0x80015f61c:  b001c0c8    adrp x8, #58822656
  0x80015f620:  f941bd08    ldr x8, [x8, #888]
  0x80015f624:  08dffd08    ldarb w8, [x8]
  0x80015f628:  360049a8    tbz w8, #0, #2356
  0x80015f62c:  f001bf68    adrp x8, #58650624
  0x80015f630:  f9430108    ldr x8, [x8, #1536]
  0x80015f634:  08dffd08    ldarb w8, [x8]
  0x80015f638:  36004c28    tbz w8, #0, #2436
  0x80015f63c:  f001bf68    adrp x8, #58650624
  0x80015f640:  f9430d08    ldr x8, [x8, #1560]
  0x80015f644:  08dffd08    ldarb w8, [x8]
  0x80015f648:  37000528    tbnz w8, #0, #164
  0x80015f64c:  f001bf60    adrp x0, #58650624
  0x80015f650:  aa0303f8    mov x24, x3
  0x80015f654:  f9430c00    ldr x0, [x0, #1560]
  0x80015f658:  b90007e4    str w4, [sp, #4]
  0x80015f65c:  94a910d1    bl #44319556
  0x80015f660:  b001c0c9    adrp x9, #58822656
  0x80015f664:  aa1803e3    mov x3, x24
  0x80015f668:  f941b529    ldr x9, [x9, #872]
  0x80015f66c:  b94007e4    ldr w4, [sp, #4]
  0x80015f670:  340003e0    cbz w0, #124
  0x80015f674:  9001bf68    adrp x8, #58638336
  0x80015f678:  f001bf69    adrp x9, #58650624
  0x80015f67c:  f9440508    ldr x8, [x8, #2056]
  0x80015f680:  f9430929    ldr x9, [x9, #1552]
  0x80015f684:  f001bf60    adrp x0, #58650624
  0x80015f688:  91004108    add x8, x8, #16
  0x80015f68c:  f9000128    str x8, [x9]
  0x80015f690:  f9430c00    ldr x0, [x0, #1560]
  0x80015f694:  94a910c7    bl #44319516
  0x80015f698:  b001c0c9    adrp x9, #58822656
  0x80015f69c:  aa1803e3    mov x3, x24
  0x80015f6a0:  f941b529    ldr x9, [x9, #872]
  0x80015f6a4:  b94007e4    ldr w4, [sp, #4]
  0x80015f6a8:  14000011    b #68
  0x80015f6ac:  9001c001    adrp x1, #58720256
  0x80015f6b0:  aa1703e0    mov x0, x23
  0x80015f6b4:  f9453021    ldr x1, [x1, #2656]
  0x80015f6b8:  2a0403f8    mov w24, w4
  0x80015f6bc:  aa1303f9    mov x25, x19
  0x80015f6c0:  aa1603f3    mov x19, x22
  0x80015f6c4:  aa0303f6    mov x22, x3
  0x80015f6c8:  d63f0100    blr x8
  0x80015f6cc:  b001c0c9    adrp x9, #58822656
  0x80015f6d0:  aa1603e3    mov x3, x22
  0x80015f6d4:  f941b529    ldr x9, [x9, #872]
  0x80015f6d8:  aa1303f6    mov x22, x19
  0x80015f6dc:  aa1903f3    mov x19, x25
  0x80015f6e0:  52b84019    mov w25, #-1040187392
  0x80015f6e4:  2a1803e4    mov w4, w24
  0x80015f6e8:  b5ffdf20    cbnz x0, #-1052
  0x80015f6ec:  9001c008    adrp x8, #58720256
  0x80015f6f0:  f9453d08    ldr x8, [x8, #2680]
  0x80015f6f4:  08dffd08    ldarb w8, [x8]
  0x80015f6f8:  36003428    tbz w8, #0, #1668
  0x80015f6fc:  b4000737    cbz x23, #228
  0x80015f700:  f94002e8    ldr x8, [x23]
  0x80015f704:  f9400108    ldr x8, [x8]
  0x80015f708:  eb09011f    cmp x8, x9
  0x80015f70c:  540004a1    b.ne #148
  0x80015f710:  b001c0c8    adrp x8, #58822656
  0x80015f714:  f941bd08    ldr x8, [x8, #888]
  0x80015f718:  08dffd08    ldarb w8, [x8]
  0x80015f71c:  36004e08    tbz w8, #0, #2496
  0x80015f720:  f001bf68    adrp x8, #58650624
  0x80015f724:  f9430108    ldr x8, [x8, #1536]
  0x80015f728:  08dffd08    ldarb w8, [x8]
  0x80015f72c:  36005088    tbz w8, #0, #2576
  0x80015f730:  f001bf68    adrp x8, #58650624
  0x80015f734:  f9430d08    ldr x8, [x8, #1560]
  0x80015f738:  08dffd08    ldarb w8, [x8]
  0x80015f73c:  37000528    tbnz w8, #0, #164
  0x80015f740:  f001bf60    adrp x0, #58650624
  0x80015f744:  aa0303f8    mov x24, x3
  0x80015f748:  f9430c00    ldr x0, [x0, #1560]
  0x80015f74c:  b90007e4    str w4, [sp, #4]
  0x80015f750:  94a91094    bl #44319312
  0x80015f754:  b001c0c9    adrp x9, #58822656
  0x80015f758:  aa1803e3    mov x3, x24
  0x80015f75c:  f941b529    ldr x9, [x9, #872]
  0x80015f760:  b94007e4    ldr w4, [sp, #4]
  0x80015f764:  340003e0    cbz w0, #124
  0x80015f768:  9001bf68    adrp x8, #58638336
  0x80015f76c:  f001bf69    adrp x9, #58650624
  0x80015f770:  f9440508    ldr x8, [x8, #2056]
  0x80015f774:  f9430929    ldr x9, [x9, #1552]
  0x80015f778:  f001bf60    adrp x0, #58650624
  0x80015f77c:  91004108    add x8, x8, #16
  0x80015f780:  f9000128    str x8, [x9]
  0x80015f784:  f9430c00    ldr x0, [x0, #1560]
  0x80015f788:  94a9108a    bl #44319272
  0x80015f78c:  b001c0c9    adrp x9, #58822656
  0x80015f790:  aa1803e3    mov x3, x24
  0x80015f794:  f941b529    ldr x9, [x9, #872]
  0x80015f798:  b94007e4    ldr w4, [sp, #4]
  0x80015f79c:  14000011    b #68
  0x80015f7a0:  9001c001    adrp x1, #58720256
  0x80015f7a4:  aa1703e0    mov x0, x23
  0x80015f7a8:  f9453821    ldr x1, [x1, #2672]
  0x80015f7ac:  2a0403f8    mov w24, w4
  0x80015f7b0:  aa1303f9    mov x25, x19
  0x80015f7b4:  aa1603f3    mov x19, x22
  0x80015f7b8:  aa0303f6    mov x22, x3
  0x80015f7bc:  d63f0100    blr x8
  0x80015f7c0:  b001c0c9    adrp x9, #58822656
  0x80015f7c4:  aa1603e3    mov x3, x22
  0x80015f7c8:  f941b529    ldr x9, [x9, #872]
  0x80015f7cc:  aa1303f6    mov x22, x19
  0x80015f7d0:  aa1903f3    mov x19, x25
  0x80015f7d4:  52b84019    mov w25, #-1040187392
  0x80015f7d8:  2a1803e4    mov w4, w24
  0x80015f7dc:  b5ffd780    cbnz x0, #-1296
  0x80015f7e0:  9001c008    adrp x8, #58720256
  0x80015f7e4:  f9454508    ldr x8, [x8, #2696]
  0x80015f7e8:  08dffd08    ldarb w8, [x8]
  0x80015f7ec:  36002f88    tbz w8, #0, #1520
  0x80015f7f0:  b4000737    cbz x23, #228
  0x80015f7f4:  f94002e8    ldr x8, [x23]
  0x80015f7f8:  f9400108    ldr x8, [x8]
  0x80015f7fc:  eb09011f    cmp x8, x9
  0x80015f800:  540004a1    b.ne #148
  0x80015f804:  b001c0c8    adrp x8, #58822656
  0x80015f808:  f941bd08    ldr x8, [x8, #888]
  0x80015f80c:  08dffd08    ldarb w8, [x8]
  0x80015f810:  36004068    tbz w8, #0, #2060
  0x80015f814:  f001bf68    adrp x8, #58650624
  0x80015f818:  f9430108    ldr x8, [x8, #1536]
  0x80015f81c:  08dffd08    ldarb w8, [x8]
  0x80015f820:  360042e8    tbz w8, #0, #2140
  0x80015f824:  f001bf68    adrp x8, #58650624
  0x80015f828:  f9430d08    ldr x8, [x8, #1560]
  0x80015f82c:  08dffd08    ldarb w8, [x8]
  0x80015f830:  37000528    tbnz w8, #0, #164
  0x80015f834:  f001bf60    adrp x0, #58650624
  0x80015f838:  aa0303f8    mov x24, x3
  0x80015f83c:  f9430c00    ldr x0, [x0, #1560]
  0x80015f840:  b90007e4    str w4, [sp, #4]
  0x80015f844:  94a91057    bl #44319068
  0x80015f848:  b001c0c9    adrp x9, #58822656
  0x80015f84c:  aa1803e3    mov x3, x24
  0x80015f850:  f941b529    ldr x9, [x9, #872]
  0x80015f854:  b94007e4    ldr w4, [sp, #4]
  0x80015f858:  340003e0    cbz w0, #124
  0x80015f85c:  9001bf68    adrp x8, #58638336
  0x80015f860:  f001bf69    adrp x9, #58650624
  0x80015f864:  f9440508    ldr x8, [x8, #2056]
  0x80015f868:  f9430929    ldr x9, [x9, #1552]
  0x80015f86c:  f001bf60    adrp x0, #58650624
  0x80015f870:  91004108    add x8, x8, #16
  0x80015f874:  f9000128    str x8, [x9]
  0x80015f878:  f9430c00    ldr x0, [x0, #1560]
  0x80015f87c:  94a9104d    bl #44319028
  0x80015f880:  b001c0c9    adrp x9, #58822656
  0x80015f884:  aa1803e3    mov x3, x24
  0x80015f888:  f941b529    ldr x9, [x9, #872]
  0x80015f88c:  b94007e4    ldr w4, [sp, #4]
  0x80015f890:  14000011    b #68
  0x80015f894:  9001c001    adrp x1, #58720256
  0x80015f898:  aa1703e0    mov x0, x23
  0x80015f89c:  f9454021    ldr x1, [x1, #2688]
  0x80015f8a0:  2a0403f8    mov w24, w4
  0x80015f8a4:  aa1303f9    mov x25, x19
  0x80015f8a8:  aa1603f3    mov x19, x22
  0x80015f8ac:  aa0303f6    mov x22, x3
  0x80015f8b0:  d63f0100    blr x8
  0x80015f8b4:  b001c0c9    adrp x9, #58822656
  0x80015f8b8:  aa1603e3    mov x3, x22
  0x80015f8bc:  f941b529    ldr x9, [x9, #872]
  0x80015f8c0:  aa1303f6    mov x22, x19
  0x80015f8c4:  aa1903f3    mov x19, x25
  0x80015f8c8:  52b84019    mov w25, #-1040187392
  0x80015f8cc:  2a1803e4    mov w4, w24
  0x80015f8d0:  b5ffcfe0    cbnz x0, #-1540
  0x80015f8d4:  9001c008    adrp x8, #58720256
  0x80015f8d8:  f9454d08    ldr x8, [x8, #2712]
  0x80015f8dc:  08dffd08    ldarb w8, [x8]
  0x80015f8e0:  36002ae8    tbz w8, #0, #1372
  0x80015f8e4:  b4000237    cbz x23, #68
  0x80015f8e8:  f94002e8    ldr x8, [x23]
  0x80015f8ec:  f9400108    ldr x8, [x8]
  0x80015f8f0:  eb09011f    cmp x8, x9
  0x80015f8f4:  540001e1    b.ne #60
  0x80015f8f8:  b001c0c8    adrp x8, #58822656
  0x80015f8fc:  f941bd08    ldr x8, [x8, #888]
  0x80015f900:  08dffd08    ldarb w8, [x8]
  0x80015f904:  360044c8    tbz w8, #0, #2200
  0x80015f908:  f001bf68    adrp x8, #58650624
  0x80015f90c:  f9430108    ldr x8, [x8, #1536]
  0x80015f910:  08dffd08    ldarb w8, [x8]
  0x80015f914:  360046c8    tbz w8, #0, #2264
  0x80015f918:  f001bf68    adrp x8, #58650624
  0x80015f91c:  f9430d08    ldr x8, [x8, #1560]
  0x80015f920:  08dffd08    ldarb w8, [x8]
  0x80015f924:  360048c8    tbz w8, #0, #2328
  0x80015f928:  79400297    ldrh w23, [x20]
  0x80015f92c:  17fffe65    b #-1644
  0x80015f930:  9001c001    adrp x1, #58720256
  0x80015f934:  aa1703e0    mov x0, x23
  0x80015f938:  f9454821    ldr x1, [x1, #2704]
  0x80015f93c:  2a0403f7    mov w23, w4
  0x80015f940:  aa1303f8    mov x24, x19
  0x80015f944:  aa1603f3    mov x19, x22
  0x80015f948:  aa0303f6    mov x22, x3
  0x80015f94c:  d63f0100    blr x8
  0x80015f950:  aa1603e3    mov x3, x22
  0x80015f954:  aa1303f6    mov x22, x19
  0x80015f958:  aa1803f3    mov x19, x24
  0x80015f95c:  2a1703e4    mov w4, w23
  0x80015f960:  b5ffcb60    cbnz x0, #-1684
  0x80015f964:  17fffff1    b #-60
  0x80015f968:  9001c009    adrp x9, #58720256
  0x80015f96c:  f9467d29    ldr x9, [x9, #3320]
  0x80015f970:  eb09011f    cmp x8, x9
  0x80015f974:  54ffd440    b.eq #-1400
  0x80015f978:  2a0403f7    mov w23, w4
  0x80015f97c:  d63f0100    blr x8
  0x80015f980:  2a1703e4    mov w4, w23
  0x80015f984:  17fffe9f    b #-1412
  0x80015f988:  529ffff7    mov w23, #65535
  0x80015f98c:  529ffff8    mov w24, #65535
  0x80015f990:  0a190288    and w8, w20, w25
  0x80015f994:  6b19011f    cmp w8, w25
  0x80015f998:  1a9f17fa    cset w26, eq
  0x80015f99c:  34ffcdb4    cbz w20, #-1612
  0x80015f9a0:  54ffcd80    b.eq #-1616
  0x80015f9a4:  f94006a8    ldr x8, [x21, #8]
  0x80015f9a8:  9001c009    adrp x9, #58720256
  0x80015f9ac:  12003e81    and w1, w20, #0xffff
  0x80015f9b0:  f9401100    ldr x0, [x8, #32]
  0x80015f9b4:  f9400008    ldr x8, [x0]
  0x80015f9b8:  f9408d08    ldr x8, [x8, #280]
  0x80015f9bc:  f9448929    ldr x9, [x9, #2320]
  0x80015f9c0:  eb09011f    cmp x8, x9
  0x80015f9c4:  54004961    b.ne #2348
  0x80015f9c8:  f9405408    ldr x8, [x0, #168]
  0x80015f9cc:  b4000208    cbz x8, #64
  0x80015f9d0:  b940a00a    ldr w10, [x0, #160]
  0x80015f9d4:  6b01015f    cmp w10, w1
  0x80015f9d8:  1a9f8029    csel w9, w1, wzr, hi
  0x80015f9dc:  d37c7d2b    ubfiz x11, x9, #4, #32
  0x80015f9e0:  38eb690b    ldrsb w11, [x8, x11]
  0x80015f9e4:  36f8454b    tbz w11, #31, #2216
  0x80015f9e8:  6b01015f    cmp w10, w1
  0x80015f9ec:  54004629    b.ls #2244
  0x80015f9f0:  8b21510a    add x10, x8, w1, uxtw #4
  0x80015f9f4:  79c0054a    ldrsh w10, [x10, #2]
  0x80015f9f8:  36f8460a    tbz w10, #31, #2240
  0x80015f9fc:  2a0103e9    mov w9, w1
  0x80015fa00:  8b091108    add x8, x8, x9, lsl #4
  0x80015fa04:  f9400508    ldr x8, [x8, #8]
  0x80015fa08:  b5004788    cbnz x8, #2288
  0x80015fa0c:  b9404009    ldr w9, [x0, #64]
  0x80015fa10:  6b01013f    cmp w9, w1
  0x80015fa14:  f9402408    ldr x8, [x0, #72]
  0x80015fa18:  54004709    b.ls #2272
  0x80015fa1c:  2a1f03f7    mov w23, wzr
  0x80015fa20:  8b214108    add x8, x8, w1, uxtw
  0x80015fa24:  f9000268    str x8, [x19]
  0x80015fa28:  17fffe3a    b #-1816
  0x80015fa2c:  f94006a8    ldr x8, [x21, #8]
  0x80015fa30:  f9400908    ldr x8, [x8, #16]
  0x80015fa34:  f9402908    ldr x8, [x8, #80]
  0x80015fa38:  b9401909    ldr w9, [x8, #24]
  0x80015fa3c:  8b090108    add x8, x8, x9
  0x80015fa40:  b9400109    ldr w9, [x8]
  0x80015fa44:  6b34213f    cmp w9, w20, uxth
  0x80015fa48:  540002ad    b.le #84
  0x80015fa4c:  12003e89    and w9, w20, #0xffff
  0x80015fa50:  5280038a    mov w10, #28
  0x80015fa54:  9baa2128    umaddl x8, w9, w10, x8
  0x80015fa58:  79403d08    ldrh w8, [x8, #30]
  0x80015fa5c:  51000909    sub w9, w8, #2
  0x80015fa60:  7100113f    cmp w9, #4
  0x80015fa64:  540001c8    b.hi #56
  0x80015fa68:  900160aa    adrp x10, #46219264
  0x80015fa6c:  9130214a    add x10, x10, #3080
  0x80015fa70:  10ffcacb    adr x11, #-1704
  0x80015fa74:  7869794c    ldrh w12, [x10, x9, lsl #1]
  0x80015fa78:  8b0c096b    add x11, x11, x12, lsl #2
  0x80015fa7c:  13003f08    sxth w8, w24
  0x80015fa80:  d61f0160    br x11
  0x80015fa84:  b9403c09    ldr w9, [x0, #60]
  0x80015fa88:  0b080128    add w8, w9, w8
  0x80015fa8c:  17fffe4f    b #-1732
  0x80015fa90:  b9400368    ldr w8, [x27]
  0x80015fa94:  12077514    and w20, w8, #0xfe7fffff
  0x80015fa98:  17ffffbe    b #-264
  0x80015fa9c:  2a1f03f8    mov w24, wzr
  0x80015faa0:  17fffe4b    b #-1748
  0x80015faa4:  b9403c09    ldr w9, [x0, #60]
  0x80015faa8:  0b080128    add w8, w9, w8
  0x80015faac:  b9404c0a    ldr w10, [x0, #76]
  0x80015fab0:  0b0a0108    add w8, w8, w10
  0x80015fab4:  17fffe45    b #-1772
  0x80015fab8:  b9403c09    ldr w9, [x0, #60]
  0x80015fabc:  5280018b    mov w11, #12
  0x80015fac0:  1b0b7d08    mul w8, w8, w11
  0x80015fac4:  b9404c0a    ldr w10, [x0, #76]
  0x80015fac8:  0b090149    add w9, w10, w9
  0x80015facc:  b9405c0a    ldr w10, [x0, #92]
  0x80015fad0:  0b0a0129    add w9, w9, w10
  0x80015fad4:  b9406c0a    ldr w10, [x0, #108]
  0x80015fad8:  0b0a0d08    add w8, w8, w10, lsl #3
  0x80015fadc:  0b090918    add w24, w8, w9, lsl #2
  0x80015fae0:  17fffe3b    b #-1812
  0x80015fae4:  f001cae0    adrp x0, #60157952
  0x80015fae8:  9114a000    add x0, x0, #1320
  0x80015faec:  2a0403fb    mov w27, w4
  0x80015faf0:  aa0303fc    mov x28, x3
  0x80015faf4:  94a90fab    bl #44318380
  0x80015faf8:  aa1c03e3    mov x3, x28
  0x80015fafc:  2a1b03e4    mov w4, w27
  0x80015fb00:  34ffc320    cbz w0, #-1948
  0x80015fb04:  f001cae8    adrp x8, #60157952
  0x80015fb08:  f001cae0    adrp x0, #60157952
  0x80015fb0c:  9114a000    add x0, x0, #1320
  0x80015fb10:  3914811f    strb wzr, [x8, #1312]
  0x80015fb14:  94a90fa7    bl #44318364
  0x80015fb18:  aa1c03e3    mov x3, x28
  0x80015fb1c:  2a1b03e4    mov w4, w27
  0x80015fb20:  17fffe11    b #-1980
  0x80015fb24:  aa1503e0    mov x0, x21
  0x80015fb28:  2a0403f8    mov w24, w4
  0x80015fb2c:  aa0303f9    mov x25, x3
  0x80015fb30:  d63f0100    blr x8
  0x80015fb34:  f9400a88    ldr x8, [x20, #16]
  0x80015fb38:  aa1903e3    mov x3, x25
  0x80015fb3c:  2a1803e4    mov w4, w24
  0x80015fb40:  17fffd92    b #-2488
  0x80015fb44:  910023e8    add x8, sp, #8
  0x80015fb48:  39044fff    strb wzr, [sp, #275]
  0x80015fb4c:  b0015761    adrp x1, #45010944
  0x80015fb50:  91270c21    add x1, x1, #2499
  0x80015fb54:  91003108    add x8, x8, #12
  0x80015fb58:  390053ff    strb wzr, [sp, #20]
  0x80015fb5c:  f90007e8    str x8, [sp, #8]
  0x80015fb60:  52802008    mov w8, #256
  0x80015fb64:  910023e0    add x0, sp, #8
  0x80015fb68:  b90013e8    str w8, [sp, #16]
  0x80015fb6c:  f94006a8    ldr x8, [x21, #8]
  0x80015fb70:  2a0403fb    mov w27, w4
  0x80015fb74:  f9400908    ldr x8, [x8, #16]
  0x80015fb78:  f9400908    ldr x8, [x8, #16]
  0x80015fb7c:  b980250a    ldrsw x10, [x8, #36]
  0x80015fb80:  b9800909    ldrsw x9, [x8, #8]
  0x80015fb84:  8b0a0108    add x8, x8, x10
  0x80015fb88:  8b090102    add x2, x8, x9
  0x80015fb8c:  97fce735    bl #-811820
  0x80015fb90:  f001caf8    adrp x24, #60157952
  0x80015fb94:  91148318    add x24, x24, #1312
  0x80015fb98:  f9000278    str x24, [x19]
  0x80015fb9c:  52800037    mov w23, #1
  0x80015fba0:  3607bb9a    tbz w26, #0, #-2192
  0x80015fba4:  aa1303e8    mov x8, x19
  0x80015fba8:  17fffe1b    b #-1940
  0x80015fbac:  39044fff    strb wzr, [sp, #275]
  0x80015fbb0:  910023e9    add x9, sp, #8
  0x80015fbb4:  b0015761    adrp x1, #45010944
  0x80015fbb8:  91270c21    add x1, x1, #2499
  0x80015fbbc:  f9400908    ldr x8, [x8, #16]
  0x80015fbc0:  91003129    add x9, x9, #12
  0x80015fbc4:  f90007e9    str x9, [sp, #8]
  0x80015fbc8:  52802009    mov w9, #256
  0x80015fbcc:  390053ff    strb wzr, [sp, #20]
  0x80015fbd0:  b90013e9    str w9, [sp, #16]
  0x80015fbd4:  910023e0    add x0, sp, #8
  0x80015fbd8:  2a0403f7    mov w23, w4
  0x80015fbdc:  f9400908    ldr x8, [x8, #16]
  0x80015fbe0:  b980250a    ldrsw x10, [x8, #36]
  0x80015fbe4:  b9800909    ldrsw x9, [x8, #8]
  0x80015fbe8:  8b0a0108    add x8, x8, x10
  0x80015fbec:  8b090102    add x2, x8, x9
  0x80015fbf0:  97fce71c    bl #-811920
  0x80015fbf4:  f94006a8    ldr x8, [x21, #8]
  0x80015fbf8:  2a1703e4    mov w4, w23
  0x80015fbfc:  39044fff    strb wzr, [sp, #275]
  0x80015fc00:  910023e9    add x9, sp, #8
  0x80015fc04:  b0015761    adrp x1, #45010944
  0x80015fc08:  91270c21    add x1, x1, #2499
  0x80015fc0c:  f9400908    ldr x8, [x8, #16]
  0x80015fc10:  91003129    add x9, x9, #12
  0x80015fc14:  f90007e9    str x9, [sp, #8]
  0x80015fc18:  52802009    mov w9, #256
  0x80015fc1c:  390053ff    strb wzr, [sp, #20]
  0x80015fc20:  b90013e9    str w9, [sp, #16]
  0x80015fc24:  910023e0    add x0, sp, #8
  0x80015fc28:  2a0403fb    mov w27, w4
  0x80015fc2c:  f9400908    ldr x8, [x8, #16]
  0x80015fc30:  b980250a    ldrsw x10, [x8, #36]
  0x80015fc34:  b9800909    ldrsw x9, [x8, #8]
  0x80015fc38:  8b0a0108    add x8, x8, x10
  0x80015fc3c:  8b090102    add x2, x8, x9
  0x80015fc40:  97fce708    bl #-812000
  0x80015fc44:  f001caf8    adrp x24, #60157952
  0x80015fc48:  91148318    add x24, x24, #1312
  0x80015fc4c:  f9000278    str x24, [x19]
  0x80015fc50:  52800037    mov w23, #1
  0x80015fc54:  3607b5fa    tbz w26, #0, #-2372
  0x80015fc58:  17fffdef    b #-2116
  0x80015fc5c:  aa1703e0    mov x0, x23
  0x80015fc60:  2a0403fb    mov w27, w4
  0x80015fc64:  d63f0100    blr x8
  0x80015fc68:  2a1b03e4    mov w4, w27
  0x80015fc6c:  17fffdd4    b #-2224
  0x80015fc70:  39044fff    strb wzr, [sp, #275]
  0x80015fc74:  910023e9    add x9, sp, #8
  0x80015fc78:  b0015761    adrp x1, #45010944
  0x80015fc7c:  91270c21    add x1, x1, #2499
  0x80015fc80:  f9400908    ldr x8, [x8, #16]
  0x80015fc84:  91003129    add x9, x9, #12
  0x80015fc88:  f90007e9    str x9, [sp, #8]
  0x80015fc8c:  52802009    mov w9, #256
  0x80015fc90:  390053ff    strb wzr, [sp, #20]
  0x80015fc94:  b90013e9    str w9, [sp, #16]
  0x80015fc98:  910023e0    add x0, sp, #8
  0x80015fc9c:  2a0403f7    mov w23, w4
  0x80015fca0:  aa0303f8    mov x24, x3
  0x80015fca4:  f9400908    ldr x8, [x8, #16]
  0x80015fca8:  b980250a    ldrsw x10, [x8, #36]
  0x80015fcac:  b9800909    ldrsw x9, [x8, #8]
  0x80015fcb0:  8b0a0108    add x8, x8, x10
  0x80015fcb4:  8b090102    add x2, x8, x9
  0x80015fcb8:  97fce6ea    bl #-812120
  0x80015fcbc:  aa1803e3    mov x3, x24
  0x80015fcc0:  2a1703e4    mov w4, w23
  0x80015fcc4:  aa1f03f7    mov x23, xzr
  0x80015fcc8:  17fffe0d    b #-1996
  0x80015fccc:  9001c000    adrp x0, #58720256
  0x80015fcd0:  aa0303f8    mov x24, x3
  0x80015fcd4:  f9452c00    ldr x0, [x0, #2648]
  0x80015fcd8:  b90007e4    str w4, [sp, #4]
  0x80015fcdc:  94a90f31    bl #44317892
  0x80015fce0:  b94007e4    ldr w4, [sp, #4]
  0x80015fce4:  aa1803e3    mov x3, x24
  0x80015fce8:  34ffc120    cbz w0, #-2012
  0x80015fcec:  f001bf68    adrp x8, #58650624
  0x80015fcf0:  9001c009    adrp x9, #58720256
  0x80015fcf4:  f942f908    ldr x8, [x8, #1520]
  0x80015fcf8:  f9452929    ldr x9, [x9, #2640]
  0x80015fcfc:  9001c000    adrp x0, #58720256
  0x80015fd00:  91004108    add x8, x8, #16
  0x80015fd04:  f9000128    str x8, [x9]
  0x80015fd08:  f9452c00    ldr x0, [x0, #2648]
  0x80015fd0c:  94a90f29    bl #44317860
  0x80015fd10:  b94007e4    ldr w4, [sp, #4]
  0x80015fd14:  aa1803e3    mov x3, x24
  0x80015fd18:  17fffdfd    b #-2060
  0x80015fd1c:  9001c000    adrp x0, #58720256
  0x80015fd20:  aa0303f8    mov x24, x3
  0x80015fd24:  f9453400    ldr x0, [x0, #2664]
  0x80015fd28:  b90007e4    str w4, [sp, #4]
  0x80015fd2c:  94a90f1d    bl #44317812
  0x80015fd30:  b001c0c9    adrp x9, #58822656
  0x80015fd34:  aa1803e3    mov x3, x24
  0x80015fd38:  f941b529    ldr x9, [x9, #872]
  0x80015fd3c:  b94007e4    ldr w4, [sp, #4]
  0x80015fd40:  34ffc640    cbz w0, #-1848
  0x80015fd44:  f001bf68    adrp x8, #58650624
  0x80015fd48:  9001c009    adrp x9, #58720256
  0x80015fd4c:  f942f908    ldr x8, [x8, #1520]
  0x80015fd50:  f9453129    ldr x9, [x9, #2656]
  0x80015fd54:  9001c000    adrp x0, #58720256
  0x80015fd58:  91004108    add x8, x8, #16
  0x80015fd5c:  f9000128    str x8, [x9]
  0x80015fd60:  f9453400    ldr x0, [x0, #2664]
  0x80015fd64:  94a90f13    bl #44317772
  0x80015fd68:  b001c0c9    adrp x9, #58822656
  0x80015fd6c:  aa1803e3    mov x3, x24
  0x80015fd70:  f941b529    ldr x9, [x9, #872]
  0x80015fd74:  b94007e4    ldr w4, [sp, #4]
  0x80015fd78:  17fffe24    b #-1904
  0x80015fd7c:  9001c000    adrp x0, #58720256
  0x80015fd80:  aa0303f8    mov x24, x3
  0x80015fd84:  f9453c00    ldr x0, [x0, #2680]
  0x80015fd88:  b90007e4    str w4, [sp, #4]
  0x80015fd8c:  94a90f05    bl #44317716
  0x80015fd90:  b001c0c9    adrp x9, #58822656
  0x80015fd94:  aa1803e3    mov x3, x24
  0x80015fd98:  f941b529    ldr x9, [x9, #872]
  0x80015fd9c:  b94007e4    ldr w4, [sp, #4]
  0x80015fda0:  34ffcae0    cbz w0, #-1700
  0x80015fda4:  f001bf68    adrp x8, #58650624
  0x80015fda8:  9001c009    adrp x9, #58720256
  0x80015fdac:  f942f908    ldr x8, [x8, #1520]
  0x80015fdb0:  f9453929    ldr x9, [x9, #2672]
  0x80015fdb4:  9001c000    adrp x0, #58720256
  0x80015fdb8:  91004108    add x8, x8, #16
  0x80015fdbc:  f9000128    str x8, [x9]
  0x80015fdc0:  f9453c00    ldr x0, [x0, #2680]
  0x80015fdc4:  94a90efb    bl #44317676
  0x80015fdc8:  b001c0c9    adrp x9, #58822656
  0x80015fdcc:  aa1803e3    mov x3, x24
  0x80015fdd0:  f941b529    ldr x9, [x9, #872]
  0x80015fdd4:  b94007e4    ldr w4, [sp, #4]
  0x80015fdd8:  17fffe49    b #-1756
  0x80015fddc:  9001c000    adrp x0, #58720256
  0x80015fde0:  aa0303f8    mov x24, x3
  0x80015fde4:  f9454400    ldr x0, [x0, #2696]
  0x80015fde8:  b90007e4    str w4, [sp, #4]
  0x80015fdec:  94a90eed    bl #44317620
  0x80015fdf0:  b001c0c9    adrp x9, #58822656
  0x80015fdf4:  aa1803e3    mov x3, x24
  0x80015fdf8:  f941b529    ldr x9, [x9, #872]
  0x80015fdfc:  b94007e4    ldr w4, [sp, #4]
  0x80015fe00:  34ffcf80    cbz w0, #-1552
  0x80015fe04:  f001bf68    adrp x8, #58650624
  0x80015fe08:  9001c009    adrp x9, #58720256
  0x80015fe0c:  f942f908    ldr x8, [x8, #1520]
  0x80015fe10:  f9454129    ldr x9, [x9, #2688]
  0x80015fe14:  9001c000    adrp x0, #58720256
  0x80015fe18:  91004108    add x8, x8, #16
  0x80015fe1c:  f9000128    str x8, [x9]
  0x80015fe20:  f9454400    ldr x0, [x0, #2696]
  0x80015fe24:  94a90ee3    bl #44317580
  0x80015fe28:  b001c0c9    adrp x9, #58822656
  0x80015fe2c:  aa1803e3    mov x3, x24
  0x80015fe30:  f941b529    ldr x9, [x9, #872]
  0x80015fe34:  b94007e4    ldr w4, [sp, #4]
  0x80015fe38:  17fffe6e    b #-1608
  0x80015fe3c:  9001c000    adrp x0, #58720256
  0x80015fe40:  aa0303f8    mov x24, x3
  0x80015fe44:  f9454c00    ldr x0, [x0, #2712]
  0x80015fe48:  b90007e4    str w4, [sp, #4]
  0x80015fe4c:  94a90ed5    bl #44317524
  0x80015fe50:  b001c0c9    adrp x9, #58822656
  0x80015fe54:  aa1803e3    mov x3, x24
  0x80015fe58:  f941b529    ldr x9, [x9, #872]
  0x80015fe5c:  b94007e4    ldr w4, [sp, #4]
  0x80015fe60:  34ffd420    cbz w0, #-1404
  0x80015fe64:  f001bf68    adrp x8, #58650624
  0x80015fe68:  9001c009    adrp x9, #58720256
  0x80015fe6c:  f942f908    ldr x8, [x8, #1520]
  0x80015fe70:  f9454929    ldr x9, [x9, #2704]
  0x80015fe74:  9001c000    adrp x0, #58720256
  0x80015fe78:  91004108    add x8, x8, #16
  0x80015fe7c:  f9000128    str x8, [x9]
  0x80015fe80:  f9454c00    ldr x0, [x0, #2712]
  0x80015fe84:  94a90ecb    bl #44317484
  0x80015fe88:  b001c0c9    adrp x9, #58822656
  0x80015fe8c:  aa1803e3    mov x3, x24
  0x80015fe90:  f941b529    ldr x9, [x9, #872]
  0x80015fe94:  b94007e4    ldr w4, [sp, #4]
  0x80015fe98:  17fffe93    b #-1460
  0x80015fe9c:  b001c0c0    adrp x0, #58822656
  0x80015fea0:  aa0303f8    mov x24, x3
  0x80015fea4:  f941bc00    ldr x0, [x0, #888]
  0x80015fea8:  b90007e4    str w4, [sp, #4]
  0x80015feac:  94a90ebd    bl #44317428
  0x80015feb0:  b001c0c9    adrp x9, #58822656
  0x80015feb4:  aa1803e3    mov x3, x24
  0x80015feb8:  f941b529    ldr x9, [x9, #872]
  0x80015febc:  b94007e4    ldr w4, [sp, #4]
  0x80015fec0:  34ffb3c0    cbz w0, #-2440
  0x80015fec4:  f001bf68    adrp x8, #58650624
  0x80015fec8:  b001c0c9    adrp x9, #58822656
  0x80015fecc:  f942f908    ldr x8, [x8, #1520]
  0x80015fed0:  f941b929    ldr x9, [x9, #880]
  0x80015fed4:  b001c0c0    adrp x0, #58822656
  0x80015fed8:  91004108    add x8, x8, #16
  0x80015fedc:  f9000128    str x8, [x9]
  0x80015fee0:  f941bc00    ldr x0, [x0, #888]
  0x80015fee4:  94a90eb3    bl #44317388
  0x80015fee8:  b001c0c9    adrp x9, #58822656
  0x80015feec:  aa1803e3    mov x3, x24
  0x80015fef0:  f941b529    ldr x9, [x9, #872]
  0x80015fef4:  b94007e4    ldr w4, [sp, #4]
  0x80015fef8:  17fffd90    b #-2496
  0x80015fefc:  f001bf60    adrp x0, #58650624
  0x80015ff00:  aa0303f8    mov x24, x3
  0x80015ff04:  f9430000    ldr x0, [x0, #1536]
  0x80015ff08:  b90007e4    str w4, [sp, #4]
  0x80015ff0c:  94a90ea5    bl #44317332
  0x80015ff10:  b001c0c9    adrp x9, #58822656
  0x80015ff14:  aa1803e3    mov x3, x24
  0x80015ff18:  f941b529    ldr x9, [x9, #872]
  0x80015ff1c:  b94007e4    ldr w4, [sp, #4]
  0x80015ff20:  34ffb140    cbz w0, #-2520
  0x80015ff24:  f001bf68    adrp x8, #58650624
  0x80015ff28:  f001bf69    adrp x9, #58650624
  0x80015ff2c:  f9430508    ldr x8, [x8, #1544]
  0x80015ff30:  f942fd29    ldr x9, [x9, #1528]
  0x80015ff34:  f001bf60    adrp x0, #58650624
  0x80015ff38:  91004108    add x8, x8, #16
  0x80015ff3c:  f9000128    str x8, [x9]
  0x80015ff40:  f9430000    ldr x0, [x0, #1536]
  0x80015ff44:  94a90e9b    bl #44317292
  0x80015ff48:  b001c0c9    adrp x9, #58822656
  0x80015ff4c:  aa1803e3    mov x3, x24
  0x80015ff50:  f941b529    ldr x9, [x9, #872]
  0x80015ff54:  b94007e4    ldr w4, [sp, #4]
  0x80015ff58:  17fffd7c    b #-2576
  0x80015ff5c:  b001c0c0    adrp x0, #58822656
  0x80015ff60:  aa0303f8    mov x24, x3
  0x80015ff64:  f941bc00    ldr x0, [x0, #888]
  0x80015ff68:  b90007e4    str w4, [sp, #4]
  0x80015ff6c:  94a90e8d    bl #44317236
  0x80015ff70:  b001c0c9    adrp x9, #58822656
  0x80015ff74:  aa1803e3    mov x3, x24
  0x80015ff78:  f941b529    ldr x9, [x9, #872]
  0x80015ff7c:  b94007e4    ldr w4, [sp, #4]
  0x80015ff80:  34ffb560    cbz w0, #-2388
  0x80015ff84:  f001bf68    adrp x8, #58650624
  0x80015ff88:  b001c0c9    adrp x9, #58822656
  0x80015ff8c:  f942f908    ldr x8, [x8, #1520]
  0x80015ff90:  f941b929    ldr x9, [x9, #880]
  0x80015ff94:  b001c0c0    adrp x0, #58822656
  0x80015ff98:  91004108    add x8, x8, #16
  0x80015ff9c:  f9000128    str x8, [x9]
  0x80015ffa0:  f941bc00    ldr x0, [x0, #888]
  0x80015ffa4:  94a90e83    bl #44317196
  0x80015ffa8:  b001c0c9    adrp x9, #58822656
  0x80015ffac:  aa1803e3    mov x3, x24
  0x80015ffb0:  f941b529    ldr x9, [x9, #872]
  0x80015ffb4:  b94007e4    ldr w4, [sp, #4]
  0x80015ffb8:  17fffd9d    b #-2444
  0x80015ffbc:  f001bf60    adrp x0, #58650624
  0x80015ffc0:  aa0303f8    mov x24, x3
  0x80015ffc4:  f9430000    ldr x0, [x0, #1536]
  0x80015ffc8:  b90007e4    str w4, [sp, #4]
  0x80015ffcc:  94a90e75    bl #44317140
  0x80015ffd0:  b001c0c9    adrp x9, #58822656
  0x80015ffd4:  aa1803e3    mov x3, x24
  0x80015ffd8:  f941b529    ldr x9, [x9, #872]
  0x80015ffdc:  b94007e4    ldr w4, [sp, #4]
  0x80015ffe0:  34ffb2e0    cbz w0, #-2468
  0x80015ffe4:  f001bf68    adrp x8, #58650624
  0x80015ffe8:  f001bf69    adrp x9, #58650624
  0x80015ffec:  f9430508    ldr x8, [x8, #1544]
  0x80015fff0:  f942fd29    ldr x9, [x9, #1528]
  0x80015fff4:  f001bf60    adrp x0, #58650624
  0x80015fff8:  91004108    add x8, x8, #16
  0x80015fffc:  f9000128    str x8, [x9]
  0x800160000:  f9430000    ldr x0, [x0, #1536]
  0x800160004:  94a90e6b    bl #44317100
  0x800160008:  9001c0c9    adrp x9, #58818560
  0x80016000c:  aa1803e3    mov x3, x24
  0x800160010:  f941b529    ldr x9, [x9, #872]
  0x800160014:  b94007e4    ldr w4, [sp, #4]
  0x800160018:  17fffd89    b #-2524
  0x80016001c:  9001c0c0    adrp x0, #58818560
  0x800160020:  aa0303f8    mov x24, x3
  0x800160024:  f941bc00    ldr x0, [x0, #888]
  0x800160028:  b90007e4    str w4, [sp, #4]
  0x80016002c:  94a90e5d    bl #44317044
  0x800160030:  9001c0c9    adrp x9, #58818560
  0x800160034:  aa1803e3    mov x3, x24
  0x800160038:  f941b529    ldr x9, [x9, #872]
  0x80016003c:  b94007e4    ldr w4, [sp, #4]
  0x800160040:  34ffbea0    cbz w0, #-2092
  0x800160044:  d001bf68    adrp x8, #58646528
  0x800160048:  9001c0c9    adrp x9, #58818560
  0x80016004c:  f942f908    ldr x8, [x8, #1520]
  0x800160050:  f941b929    ldr x9, [x9, #880]
  0x800160054:  9001c0c0    adrp x0, #58818560
  0x800160058:  91004108    add x8, x8, #16
  0x80016005c:  f9000128    str x8, [x9]
  0x800160060:  f941bc00    ldr x0, [x0, #888]
  0x800160064:  94a90e53    bl #44317004
  0x800160068:  9001c0c9    adrp x9, #58818560
  0x80016006c:  aa1803e3    mov x3, x24
  0x800160070:  f941b529    ldr x9, [x9, #872]
  0x800160074:  b94007e4    ldr w4, [sp, #4]
  0x800160078:  17fffde7    b #-2148
  0x80016007c:  d001bf60    adrp x0, #58646528
  0x800160080:  aa0303f8    mov x24, x3
  0x800160084:  f9430000    ldr x0, [x0, #1536]
  0x800160088:  b90007e4    str w4, [sp, #4]
  0x80016008c:  94a90e45    bl #44316948
  0x800160090:  9001c0c9    adrp x9, #58818560
  0x800160094:  aa1803e3    mov x3, x24
  0x800160098:  f941b529    ldr x9, [x9, #872]
  0x80016009c:  b94007e4    ldr w4, [sp, #4]
  0x8001600a0:  34ffbc20    cbz w0, #-2172
  0x8001600a4:  d001bf68    adrp x8, #58646528
  0x8001600a8:  d001bf69    adrp x9, #58646528
  0x8001600ac:  f9430508    ldr x8, [x8, #1544]
  0x8001600b0:  f942fd29    ldr x9, [x9, #1528]
  0x8001600b4:  d001bf60    adrp x0, #58646528
  0x8001600b8:  91004108    add x8, x8, #16
  0x8001600bc:  f9000128    str x8, [x9]
  0x8001600c0:  f9430000    ldr x0, [x0, #1536]
  0x8001600c4:  94a90e3b    bl #44316908
  0x8001600c8:  9001c0c9    adrp x9, #58818560
  0x8001600cc:  aa1803e3    mov x3, x24
  0x8001600d0:  f941b529    ldr x9, [x9, #872]
  0x8001600d4:  b94007e4    ldr w4, [sp, #4]
  0x8001600d8:  17fffdd3    b #-2228
  0x8001600dc:  9001c0c0    adrp x0, #58818560
  0x8001600e0:  aa0303f8    mov x24, x3
  0x8001600e4:  f941bc00    ldr x0, [x0, #888]
  0x8001600e8:  b90007e4    str w4, [sp, #4]
  0x8001600ec:  94a90e2d    bl #44316852
  0x8001600f0:  9001c0c9    adrp x9, #58818560
  0x8001600f4:  aa1803e3    mov x3, x24
  0x8001600f8:  f941b529    ldr x9, [x9, #872]
  0x8001600fc:  b94007e4    ldr w4, [sp, #4]
  0x800160100:  34ffb100    cbz w0, #-2528
  0x800160104:  d001bf68    adrp x8, #58646528
  0x800160108:  9001c0c9    adrp x9, #58818560
  0x80016010c:  f942f908    ldr x8, [x8, #1520]
  0x800160110:  f941b929    ldr x9, [x9, #880]
  0x800160114:  9001c0c0    adrp x0, #58818560
  0x800160118:  91004108    add x8, x8, #16
  0x80016011c:  f9000128    str x8, [x9]
  0x800160120:  f941bc00    ldr x0, [x0, #888]
  0x800160124:  94a90e23    bl #44316812
  0x800160128:  9001c0c9    adrp x9, #58818560
  0x80016012c:  aa1803e3    mov x3, x24
  0x800160130:  f941b529    ldr x9, [x9, #872]
  0x800160134:  b94007e4    ldr w4, [sp, #4]
  0x800160138:  17fffd7a    b #-2584
  0x80016013c:  d001bf60    adrp x0, #58646528
  0x800160140:  aa0303f8    mov x24, x3
  0x800160144:  f9430000    ldr x0, [x0, #1536]
  0x800160148:  b90007e4    str w4, [sp, #4]
  0x80016014c:  94a90e15    bl #44316756
  0x800160150:  9001c0c9    adrp x9, #58818560
  0x800160154:  aa1803e3    mov x3, x24
  0x800160158:  f941b529    ldr x9, [x9, #872]
  0x80016015c:  b94007e4    ldr w4, [sp, #4]
  0x800160160:  34ffae80    cbz w0, #-2608
  0x800160164:  d001bf68    adrp x8, #58646528
  0x800160168:  d001bf69    adrp x9, #58646528
  0x80016016c:  f9430508    ldr x8, [x8, #1544]
  0x800160170:  f942fd29    ldr x9, [x9, #1528]
  0x800160174:  d001bf60    adrp x0, #58646528
  0x800160178:  91004108    add x8, x8, #16
  0x80016017c:  f9000128    str x8, [x9]
  0x800160180:  f9430000    ldr x0, [x0, #1536]
  0x800160184:  94a90e0b    bl #44316716
  0x800160188:  9001c0c9    adrp x9, #58818560
  0x80016018c:  aa1803e3    mov x3, x24
  0x800160190:  f941b529    ldr x9, [x9, #872]
  0x800160194:  b94007e4    ldr w4, [sp, #4]
  0x800160198:  17fffd66    b #-2664
  0x80016019c:  9001c0c0    adrp x0, #58818560
  0x8001601a0:  2a0403f7    mov w23, w4
  0x8001601a4:  f941bc00    ldr x0, [x0, #888]
  0x8001601a8:  aa0303f8    mov x24, x3
  0x8001601ac:  94a90dfd    bl #44316660
  0x8001601b0:  aa1803e3    mov x3, x24
  0x8001601b4:  2a1703e4    mov w4, w23
  0x8001601b8:  34ffba80    cbz w0, #-2224
  0x8001601bc:  d001bf68    adrp x8, #58646528
  0x8001601c0:  9001c0c9    adrp x9, #58818560
  0x8001601c4:  f942f908    ldr x8, [x8, #1520]
  0x8001601c8:  f941b929    ldr x9, [x9, #880]
  0x8001601cc:  9001c0c0    adrp x0, #58818560
  0x8001601d0:  91004108    add x8, x8, #16
  0x8001601d4:  f9000128    str x8, [x9]
  0x8001601d8:  f941bc00    ldr x0, [x0, #888]
  0x8001601dc:  94a90df5    bl #44316628
  0x8001601e0:  aa1803e3    mov x3, x24
  0x8001601e4:  2a1703e4    mov w4, w23
  0x8001601e8:  17fffdc8    b #-2272
  0x8001601ec:  d001bf60    adrp x0, #58646528
  0x8001601f0:  2a0403f7    mov w23, w4
  0x8001601f4:  f9430000    ldr x0, [x0, #1536]
  0x8001601f8:  aa0303f8    mov x24, x3
  0x8001601fc:  94a90de9    bl #44316580
  0x800160200:  aa1803e3    mov x3, x24
  0x800160204:  2a1703e4    mov w4, w23
  0x800160208:  34ffb880    cbz w0, #-2288
  0x80016020c:  d001bf68    adrp x8, #58646528
  0x800160210:  d001bf69    adrp x9, #58646528
  0x800160214:  f9430508    ldr x8, [x8, #1544]
  0x800160218:  f942fd29    ldr x9, [x9, #1528]
  0x80016021c:  d001bf60    adrp x0, #58646528
  0x800160220:  91004108    add x8, x8, #16
  0x800160224:  f9000128    str x8, [x9]
  0x800160228:  f9430000    ldr x0, [x0, #1536]
  0x80016022c:  94a90de1    bl #44316548
  0x800160230:  aa1803e3    mov x3, x24
  0x800160234:  2a1703e4    mov w4, w23
  0x800160238:  17fffdb8    b #-2336
  0x80016023c:  d001bf60    adrp x0, #58646528
  0x800160240:  2a0403f7    mov w23, w4
  0x800160244:  f9430c00    ldr x0, [x0, #1560]
  0x800160248:  aa0303f8    mov x24, x3
  0x80016024c:  94a90dd5    bl #44316500
  0x800160250:  aa1803e3    mov x3, x24
  0x800160254:  2a1703e4    mov w4, w23
  0x800160258:  34ffb680    cbz w0, #-2352
  0x80016025c:  f001bf48    adrp x8, #58634240
  0x800160260:  d001bf69    adrp x9, #58646528
  0x800160264:  f9440508    ldr x8, [x8, #2056]
  0x800160268:  f9430929    ldr x9, [x9, #1552]
  0x80016026c:  d001bf60    adrp x0, #58646528
  0x800160270:  91004108    add x8, x8, #16
  0x800160274:  f9000128    str x8, [x9]
  0x800160278:  f9430c00    ldr x0, [x0, #1560]
  0x80016027c:  94a90dcd    bl #44316468
  0x800160280:  aa1803e3    mov x3, x24
  0x800160284:  2a1703e4    mov w4, w23
  0x800160288:  17fffda8    b #-2400
  0x80016028c:  92401d6a    and x10, x11, #0xff
  0x800160290:  9103400b    add x11, x0, #208
  0x800160294:  8b091108    add x8, x8, x9, lsl #4
  0x800160298:  8b0a0d6c    add x12, x11, x10, lsl #3
  0x80016029c:  7100115f    cmp w10, #4
  0x8001602a0:  39400501    ldrb w1, [x8, #1]
  0x8001602a4:  9a8b318a    csel x10, x12, x11, lo
  0x8001602a8:  f9400140    ldr x0, [x10]
  0x8001602ac:  17fffdc7    b #-2276
  0x8001602b0:  79c0050a    ldrsh w10, [x8, #2]
  0x8001602b4:  37ffba8a    tbnz w10, #31, #-2224
  0x8001602b8:  f940840b    ldr x11, [x0, #264]
  0x8001602bc:  92403d4d    and x13, x10, #0xffff
  0x8001602c0:  8b091108    add x8, x8, x9, lsl #4
  0x8001602c4:  39400501    ldrb w1, [x8, #1]
  0x8001602c8:  b940196c    ldr w12, [x11, #24]
  0x8001602cc:  f940116b    ldr x11, [x11, #32]
  0x8001602d0:  6b2a219f    cmp w12, w10, uxth
  0x8001602d4:  5280030c    mov w12, #24
  0x8001602d8:  9a9f81aa    csel x10, x13, xzr, hi
  0x8001602dc:  9bac7d4a    umull x10, w10, w12
  0x8001602e0:  f86a696a    ldr x10, [x11, x10]
  0x8001602e4:  f9401140    ldr x0, [x10, #32]
  0x8001602e8:  f9400008    ldr x8, [x0]
  0x8001602ec:  f9408d08    ldr x8, [x8, #280]
  0x8001602f0:  d63f0100    blr x8
  0x8001602f4:  aa0003e8    mov x8, x0
  0x8001602f8:  2a1f03f7    mov w23, wzr
  0x8001602fc:  17fffdca    b #-2264
  0x800160300:  b9800009    ldrsw x9, [x0]
  0x800160304:  34ff8069    cbz w9, #-4084
  0x800160308:  f9400408    ldr x8, [x0, #8]
  0x80016030c:  2a1b03f1    mov w17, w27
  0x800160310:  8b090d09    add x9, x8, x9, lsl #3
  0x800160314:  f94002ca    ldr x10, [x22]
  0x800160318:  f940010b    ldr x11, [x8]
  0x80016031c:  b9402d6c    ldr w12, [x11, #44]
  0x800160320:  7100099f    cmp w12, #2
  0x800160324:  540003e1    b.ne #124
  0x800160328:  b940316c    ldr w12, [x11, #48]
  0x80016032c:  37f803ac    tbnz w12, #31, #116
  0x800160330:  f940016c    ldr x12, [x11]
  0x800160334:  eb0a019f    cmp x12, x10
  0x800160338:  54000201    b.ne #64
  0x80016033c:  37000071    tbnz w17, #0, #12
  0x800160340:  f9400268    ldr x8, [x19]
  0x800160344:  f9000568    str x8, [x11, #8]
  0x800160348:  f9400968    ldr x8, [x11, #16]
  0x80016034c:  17fffdb6    b #-2344
  0x800160350:  aa1f03e8    mov x8, xzr
  0x800160354:  17fffc5f    b #-3716
  0x800160358:  b9403c09    ldr w9, [x0, #60]
  0x80016035c:  b9404c0a    ldr w10, [x0, #76]
  0x800160360:  0b090149    add w9, w10, w9
  0x800160364:  b9405c0a    ldr w10, [x0, #92]
  0x800160368:  0b0a0129    add w9, w9, w10
  0x80016036c:  531e7529    lsl w9, w9, #2
  0x800160370:  0b080d38    add w24, w9, w8, lsl #3
  0x800160374:  17fffc16    b #-4008
  0x800160378:  5280002d    mov w13, #1
  0x80016037c:  72a0080d    movk w13, #64, lsl #16
  0x800160380:  aa0a03ee    mov x14, x10
  0x800160384:  3840158f    ldrb w15, [x12], #1
  0x800160388:  384015d0    ldrb w16, [x14], #1
  0x80016038c:  6b1001ff    cmp w15, w16
  0x800160390:  54000081    b.ne #16
  0x800160394:  34fffd4f    cbz w15, #-88
  0x800160398:  f10005ad    subs x13, x13, #1
  0x80016039c:  54ffff41    b.ne #-24
  0x8001603a0:  91002108    add x8, x8, #8
  0x8001603a4:  eb09011f    cmp x8, x9
  0x8001603a8:  54fffb81    b.ne #-144
  0x8001603ac:  17fffbd9    b #-4252

