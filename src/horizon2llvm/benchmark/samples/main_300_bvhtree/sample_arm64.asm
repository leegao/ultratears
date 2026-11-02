; UltraTears chunk main_300_bvhtree: 2 functions [0x8004e71b0..0x8004e9400)

; Function f_8004e71b0 [0x8004e71b0..0x8004e7bd0)
f_8004e71b0:
  0x8004e71b0:  d10283ff    sub sp, sp, #160
  0x8004e71b4:  a9057bfd    stp x29, x30, [sp, #80]
  0x8004e71b8:  a90667fa    stp x26, x25, [sp, #96]
  0x8004e71bc:  a9075ff8    stp x24, x23, [sp, #112]
  0x8004e71c0:  a90857f6    stp x22, x21, [sp, #128]
  0x8004e71c4:  a9094ff4    stp x20, x19, [sp, #144]
  0x8004e71c8:  910143fd    add x29, sp, #80
  0x8004e71cc:  b4002ac2    cbz x2, #1368
  0x8004e71d0:  f9400448    ldr x8, [x2, #8]
  0x8004e71d4:  b4002a88    cbz x8, #1360
  0x8004e71d8:  b001a329    adrp x9, #54939648
  0x8004e71dc:  528000ca    mov w10, #6
  0x8004e71e0:  f947ad29    ldr x9, [x9, #3928]
  0x8004e71e4:  f9400129    ldr x9, [x9]
  0x8004e71e8:  b9496129    ldr w9, [x9, #2400]
  0x8004e71ec:  6a29015f    bics wzr, w10, w9
  0x8004e71f0:  540029a1    b.ne #1332
  0x8004e71f4:  b980784a    ldrsw x10, [x2, #120]
  0x8004e71f8:  34002cca    cbz w10, #1432
  0x8004e71fc:  f9404049    ldr x9, [x2, #128]
  0x8004e7200:  d37df14a    lsl x10, x10, #3
  0x8004e7204:  f9400134    ldr x20, [x9]
  0x8004e7208:  3940028b    ldrb w11, [x20]
  0x8004e720c:  35002c8b    cbnz w11, #1424
  0x8004e7210:  f9400849    ldr x9, [x2, #16]
  0x8004e7214:  f100013f    cmp x9, #0
  0x8004e7218:  9a890108    csel x8, x8, x9, eq
  0x8004e721c:  39400109    ldrb w9, [x8]
  0x8004e7220:  12000d2a    and w10, w9, #0xf
  0x8004e7224:  6b03015f    cmp w10, w3
  0x8004e7228:  540027a8    b.hi #1268
  0x8004e722c:  2d430440    ldp s0, s1, [x2, #24]
  0x8004e7230:  52800029    mov w9, #1
  0x8004e7234:  2d440c45    ldp s5, s3, [x2, #32]
  0x8004e7238:  1aca2129    lsl w9, w9, w10
  0x8004e723c:  bd402c42    ldr s2, [x2, #44]
  0x8004e7240:  1e210861    fmul s1, s3, s1
  0x8004e7244:  1e200860    fmul s0, s3, s0
  0x8004e7248:  1e222804    fadd s4, s0, s2
  0x8004e724c:  bd403440    ldr s0, [x2, #52]
  0x8004e7250:  1e202822    fadd s2, s1, s0
  0x8004e7254:  1e220121    scvtf s1, w9
  0x8004e7258:  1e250860    fmul s0, s3, s5
  0x8004e725c:  d0014469    adrp x9, #42524672
  0x8004e7260:  91079129    add x9, x9, #484
  0x8004e7264:  1e211803    fdiv s3, s0, s1
  0x8004e7268:  3400022a    cbz w10, #68
  0x8004e726c:  b940090b    ldr w11, [x8, #8]
  0x8004e7270:  1e204060    fmov s0, s3
  0x8004e7274:  2a0a03ec    mov w12, w10
  0x8004e7278:  d503201f    nop
  0x8004e727c:  d503201f    nop
  0x8004e7280:  1200056d    and w13, w11, #0x3
  0x8004e7284:  53027d6b    lsr w11, w11, #2
  0x8004e7288:  8b2d4d2d    add x13, x9, w13, uxtw #3
  0x8004e728c:  7100058c    subs w12, w12, #1
  0x8004e7290:  2d4015a1    ldp s1, s5, [x13]
  0x8004e7294:  1e250805    fmul s5, s0, s5
  0x8004e7298:  1e210801    fmul s1, s0, s1
  0x8004e729c:  1e202800    fadd s0, s0, s0
  0x8004e72a0:  1e252842    fadd s2, s2, s5
  0x8004e72a4:  1e212884    fadd s4, s4, s1
  0x8004e72a8:  54fffec1    b.ne #-40
  0x8004e72ac:  2d470440    ldp s0, s1, [x2, #56]
  0x8004e72b0:  1e2c1005    fmov s5, #0.50000000
  0x8004e72b4:  2d401c26    ldp s6, s7, [x1]
  0x8004e72b8:  14000011    b #68
  0x8004e72bc:  d503201f    nop
  0x8004e72c0:  3940010b    ldrb w11, [x8]
  0x8004e72c4:  53047d6c    lsr w12, w11, #4
  0x8004e72c8:  121b056b    and w11, w11, #0x60
  0x8004e72cc:  1e232863    fadd s3, s3, s3
  0x8004e72d0:  321f018c    orr w12, w12, #0x2
  0x8004e72d4:  f9400d08    ldr x8, [x8, #24]
  0x8004e72d8:  5100054a    sub w10, w10, #1
  0x8004e72dc:  1200098c    and w12, w12, #0x7
  0x8004e72e0:  71000d9f    cmp w12, #3
  0x8004e72e4:  1e320e24    fcsel s4, s17, s18, eq
  0x8004e72e8:  1e214211    fneg s17, s16
  0x8004e72ec:  7100817f    cmp w11, #32
  0x8004e72f0:  1e300e30    fcsel s16, s17, s16, eq
  0x8004e72f4:  1e302842    fadd s2, s2, s16
  0x8004e72f8:  b4002468    cbz x8, #1164
  0x8004e72fc:  1e250870    fmul s16, s3, s5
  0x8004e7300:  1e303891    fsub s17, s4, s16
  0x8004e7304:  1e242a12    fadd s18, s16, s4
  0x8004e7308:  1e262220    fcmp s17, s6
  0x8004e730c:  1e3294c0    fccmp s6, s18, #0, ls
  0x8004e7310:  54fffd85    b.pl #-80
  0x8004e7314:  1e303853    fsub s19, s2, s16
  0x8004e7318:  1e222a14    fadd s20, s16, s2
  0x8004e731c:  3940010b    ldrb w11, [x8]
  0x8004e7320:  1e272260    fcmp s19, s7
  0x8004e7324:  1e3494e0    fccmp s7, s20, #0, ls
  0x8004e7328:  54fffce5    b.pl #-100
  0x8004e732c:  53077d6b    lsr w11, w11, #7
  0x8004e7330:  6b0a006a    subs w10, w3, w10
  0x8004e7334:  540002e0    b.eq #92
  0x8004e7338:  2a1f03ec    mov w12, wzr
  0x8004e733c:  1e2420c0    fcmp s6, s4
  0x8004e7340:  1a9fb7ed    cset w13, ge
  0x8004e7344:  1e2220e0    fcmp s7, s2
  0x8004e7348:  1a9fb7ee    cset w14, ge
  0x8004e734c:  aa0e05ad    orr x13, x13, x14, lsl #1
  0x8004e7350:  8b0d0d0e    add x14, x8, x13, lsl #3
  0x8004e7354:  f94011ce    ldr x14, [x14, #32]
  0x8004e7358:  b40001ce    cbz x14, #56
  0x8004e735c:  aa0e03e8    mov x8, x14
  0x8004e7360:  39c001ce    ldrsb w14, [x14]
  0x8004e7364:  36f81e4e    tbz w14, #31, #968
  0x8004e7368:  8b0d0d2d    add x13, x9, x13, lsl #3
  0x8004e736c:  1e250863    fmul s3, s3, s5
  0x8004e7370:  1100058c    add w12, w12, #1
  0x8004e7374:  6b0a019f    cmp w12, w10
  0x8004e7378:  2d4045b0    ldp s16, s17, [x13]
  0x8004e737c:  1e310871    fmul s17, s3, s17
  0x8004e7380:  1e300870    fmul s16, s3, s16
  0x8004e7384:  1e312842    fadd s2, s2, s17
  0x8004e7388:  1e302884    fadd s4, s4, s16
  0x8004e738c:  54fffd83    b.lo #-80
  0x8004e7390:  1280000a    mov w10, #-1
  0x8004e7394:  f9000848    str x8, [x2, #16]
  0x8004e7398:  340020eb    cbz w11, #1052
  0x8004e739c:  3940068b    ldrb w11, [x20, #1]
  0x8004e73a0:  5280002c    mov w12, #1
  0x8004e73a4:  1acb218b    lsl w11, w12, w11
  0x8004e73a8:  b9400d0c    ldr w12, [x8, #12]
  0x8004e73ac:  6a0b019f    tst w12, w11
  0x8004e73b0:  54002060    b.eq #1036
  0x8004e73b4:  528000cc    mov w12, #6
  0x8004e73b8:  aa0803eb    mov x11, x8
  0x8004e73bc:  b9400d6d    ldr w13, [x11, #12]
  0x8004e73c0:  3940068e    ldrb w14, [x20, #1]
  0x8004e73c4:  1ace25af    lsr w15, w13, w14
  0x8004e73c8:  3600026f    tbz w15, #0, #76
  0x8004e73cc:  1ace214e    lsl w14, w10, w14
  0x8004e73d0:  0a2e01ad    bic w13, w13, w14
  0x8004e73d4:  710009bf    cmp w13, #2
  0x8004e73d8:  54001b82    b.hs #880
  0x8004e73dc:  f940096e    ldr x14, [x11, #16]
  0x8004e73e0:  f86d59ce    ldr x14, [x14, w13, uxtw #3]
  0x8004e73e4:  b400018e    cbz x14, #48
  0x8004e73e8:  910061cd    add x13, x14, #24
  0x8004e73ec:  885f7daf    ldxr w15, [x13]
  0x8004e73f0:  110005f0    add w16, w15, #1
  0x8004e73f4:  88117db0    stxr w17, w16, [x13]
  0x8004e73f8:  35ffffb1    cbnz w17, #-12
  0x8004e73fc:  f26205ff    tst x15, #0xc0000000
  0x8004e7400:  54000220    b.eq #68
  0x8004e7404:  885f7dae    ldxr w14, [x13]
  0x8004e7408:  510005ce    sub w14, w14, #1
  0x8004e740c:  880f7dae    stxr w15, w14, [x13]
  0x8004e7410:  35ffffaf    cbnz w15, #-12
  0x8004e7414:  f9400d6d    ldr x13, [x11, #24]
  0x8004e7418:  b4001b2d    cbz x13, #868
  0x8004e741c:  3940016b    ldrb w11, [x11]
  0x8004e7420:  d344196b    ubfx x11, x11, #4, #3
  0x8004e7424:  8b0b0d2b    add x11, x9, x11, lsl #3
  0x8004e7428:  2d401d66    ldp s6, s7, [x11]
  0x8004e742c:  aa0d03eb    mov x11, x13
  0x8004e7430:  1f0388e2    fmsub s2, s7, s3, s2
  0x8004e7434:  1f0390c4    fmsub s4, s6, s3, s4
  0x8004e7438:  1e232863    fadd s3, s3, s3
  0x8004e743c:  b5fffc0d    cbnz x13, #-128
  0x8004e7440:  140000b9    b #740
  0x8004e7444:  794025ce    ldrh w14, [x14, #18]
  0x8004e7448:  6a2e019f    bics wzr, w12, w14
  0x8004e744c:  54fffdc1    b.ne #-72
  0x8004e7450:  b9400d6d    ldr w13, [x11, #12]
  0x8004e7454:  3940068e    ldrb w14, [x20, #1]
  0x8004e7458:  1ace25af    lsr w15, w13, w14
  0x8004e745c:  3607fdcf    tbz w15, #0, #-72
  0x8004e7460:  1ace214e    lsl w14, w10, w14
  0x8004e7464:  0a2e01ad    bic w13, w13, w14
  0x8004e7468:  710009bf    cmp w13, #2
  0x8004e746c:  2a0d03ef    mov w15, w13
  0x8004e7470:  54001c02    b.hs #896
  0x8004e7474:  f940096e    ldr x14, [x11, #16]
  0x8004e7478:  f86f59cf    ldr x15, [x14, w15, uxtw #3]
  0x8004e747c:  b4001e2f    cbz x15, #964
  0x8004e7480:  794025f0    ldrh w16, [x15, #18]
  0x8004e7484:  36101d10    tbz w16, #2, #928
  0x8004e7488:  eb0b011f    cmp x8, x11
  0x8004e748c:  52800028    mov w8, #1
  0x8004e7490:  1a881513    cinc w19, w8, eq
  0x8004e7494:  710009bf    cmp w13, #2
  0x8004e7498:  54002002    b.hs #1024
  0x8004e749c:  f86d59d5    ldr x21, [x14, w13, uxtw #3]
  0x8004e74a0:  794026a8    ldrh w8, [x21, #18]
  0x8004e74a4:  2d401c26    ldp s6, s7, [x1]
  0x8004e74a8:  37602128    tbnz w8, #12, #1060
  0x8004e74ac:  1f058862    fmsub s2, s3, s5, s2
  0x8004e74b0:  f94006a9    ldr x9, [x21, #8]
  0x8004e74b4:  2a0403f8    mov w24, w4
  0x8004e74b8:  8b181529    add x9, x9, x24, lsl #5
  0x8004e74bc:  7949f92c    ldrh w12, [x9, #1276]
  0x8004e74c0:  1e2238e2    fsub s2, s7, s2
  0x8004e74c4:  1f059067    fmsub s7, s3, s5, s4
  0x8004e74c8:  1e2e1004    fmov s4, #1.00000000
  0x8004e74cc:  1e231883    fdiv s3, s4, s3
  0x8004e74d0:  1e2738c5    fsub s5, s6, s7
  0x8004e74d4:  7d4a0126    ldr h6, [x9, #1280]
  0x8004e74d8:  1e250865    fmul s5, s3, s5
  0x8004e74dc:  1e220862    fmul s2, s3, s2
  0x8004e74e0:  bd450523    ldr s3, [x9, #1284]
  0x8004e74e4:  1e2328a3    fadd s3, s5, s3
  0x8004e74e8:  7e21d8c6    ucvtf s6, s6
  0x8004e74ec:  7d4a0525    ldr h5, [x9, #1282]
  0x8004e74f0:  1e260866    fmul s6, s3, s6
  0x8004e74f4:  bd450923    ldr s3, [x9, #1288]
  0x8004e74f8:  1e232842    fadd s2, s2, s3
  0x8004e74fc:  7e21d8a5    ucvtf s5, s5
  0x8004e7500:  2f00e403    movi d3, #0000000000000000
  0x8004e7504:  1e2020c8    fcmp s6, #0.0
  0x8004e7508:  1e250845    fmul s5, s2, s5
  0x8004e750c:  2f00e402    movi d2, #0000000000000000
  0x8004e7510:  540000c4    b.mi #24
  0x8004e7514:  1e230187    ucvtf s7, w12
  0x8004e7518:  1e2428c2    fadd s2, s6, s4
  0x8004e751c:  1e272040    fcmp s2, s7
  0x8004e7520:  1e2040c2    fmov s2, s6
  0x8004e7524:  5400108c    b.gt #528
  0x8004e7528:  5ea1b846    fcvtzs s6, s2
  0x8004e752c:  1e38004d    fcvtzs w13, s2
  0x8004e7530:  1e202048    fcmp s2, #0.0
  0x8004e7534:  7949fd2f    ldrh w15, [x9, #1278]
  0x8004e7538:  1a9fa7ee    cset w14, lt
  0x8004e753c:  5e21d8c6    scvtf s6, s6
  0x8004e7540:  1e262040    fcmp s2, s6
  0x8004e7544:  1a8e03ee    csel w14, wzr, w14, eq
  0x8004e7548:  1e2020a8    fcmp s5, #0.0
  0x8004e754c:  4b0e01ad    sub w13, w13, w14
  0x8004e7550:  1e2201a6    scvtf s6, w13
  0x8004e7554:  1e263842    fsub s2, s2, s6
  0x8004e7558:  540000c4    b.mi #24
  0x8004e755c:  1e2301e6    ucvtf s6, w15
  0x8004e7560:  1e2428a3    fadd s3, s5, s4
  0x8004e7564:  1e262060    fcmp s3, s6
  0x8004e7568:  1e2040a3    fmov s3, s5
  0x8004e756c:  54000d2c    b.gt #420
  0x8004e7570:  5ea1b864    fcvtzs s4, s3
  0x8004e7574:  1e38006e    fcvtzs w14, s3
  0x8004e7578:  1e202068    fcmp s3, #0.0
  0x8004e757c:  510005ef    sub w15, w15, #1
  0x8004e7580:  f9427931    ldr x17, [x9, #1264]
  0x8004e7584:  5100058c    sub w12, w12, #1
  0x8004e7588:  1e203821    fsub s1, s1, s0
  0x8004e758c:  1a9fa7f0    cset w16, lt
  0x8004e7590:  5e21d884    scvtf s4, s4
  0x8004e7594:  1e242060    fcmp s3, s4
  0x8004e7598:  1a9003f0    csel w16, wzr, w16, eq
  0x8004e759c:  4b1001d0    sub w16, w14, w16
  0x8004e75a0:  7949f12e    ldrh w14, [x9, #1272]
  0x8004e75a4:  3953e929    ldrb w9, [x9, #1274]
  0x8004e75a8:  1e220204    scvtf s4, w16
  0x8004e75ac:  6b0f021f    cmp w16, w15
  0x8004e75b0:  1a8fb212    csel w18, w16, w15, lt
  0x8004e75b4:  7201021f    tst w16, #0x80000000
  0x8004e75b8:  1a9213f2    csel w18, wzr, w18, ne
  0x8004e75bc:  6b0c01bf    cmp w13, w12
  0x8004e75c0:  1a8cb1a4    csel w4, w13, w12, lt
  0x8004e75c4:  720101bf    tst w13, #0x80000000
  0x8004e75c8:  9b327dd2    smull x18, w14, w18
  0x8004e75cc:  1a8413e4    csel w4, wzr, w4, ne
  0x8004e75d0:  9b247d27    smull x7, w9, w4
  0x8004e75d4:  9b244924    smaddl x4, w9, w4, x18
  0x8004e75d8:  1e243863    fsub s3, s3, s4
  0x8004e75dc:  7c646a24    ldr h4, [x17, x4]
  0x8004e75e0:  529fe004    mov w4, #65280
  0x8004e75e4:  72a8efe4    movk w4, #18303, lsl #16
  0x8004e75e8:  1e270085    fmov s5, w4
  0x8004e75ec:  110005a4    add w4, w13, #1
  0x8004e75f0:  6b0c009f    cmp w4, w12
  0x8004e75f4:  1a8da58c    csinc w12, w12, w13, ge
  0x8004e75f8:  310005bf    cmn w13, #1
  0x8004e75fc:  1a8cb3ec    csel w12, wzr, w12, lt
  0x8004e7600:  9b2c492d    smaddl x13, w9, w12, x18
  0x8004e7604:  9b2c7d29    smull x9, w9, w12
  0x8004e7608:  93407d29    sxtw x9, w9
  0x8004e760c:  529fe00c    mov w12, #65280
  0x8004e7610:  72a8efec    movk w12, #18303, lsl #16
  0x8004e7614:  7e21d884    ucvtf s4, s4
  0x8004e7618:  1e270187    fmov s7, w12
  0x8004e761c:  7c6d6a26    ldr h6, [x17, x13]
  0x8004e7620:  1100060d    add w13, w16, #1
  0x8004e7624:  6b0f01bf    cmp w13, w15
  0x8004e7628:  1a90a5ed    csinc w13, w15, w16, ge
  0x8004e762c:  3100061f    cmn w16, #1
  0x8004e7630:  93407cef    sxtw x15, w7
  0x8004e7634:  1a8db3ed    csel w13, wzr, w13, lt
  0x8004e7638:  9b2d3dcf    smaddl x15, w14, w13, x15
  0x8004e763c:  9b2d25c9    smaddl x9, w14, w13, x9
  0x8004e7640:  7c696a30    ldr h16, [x17, x9]
  0x8004e7644:  1e251884    fdiv s4, s4, s5
  0x8004e7648:  7e21d8c5    ucvtf s5, s6
  0x8004e764c:  7c6f6a26    ldr h6, [x17, x15]
  0x8004e7650:  1e2718a5    fdiv s5, s5, s7
  0x8004e7654:  7e21d8c6    ucvtf s6, s6
  0x8004e7658:  1e2718c6    fdiv s6, s6, s7
  0x8004e765c:  7e21da10    ucvtf s16, s16
  0x8004e7660:  1e271a07    fdiv s7, s16, s7
  0x8004e7664:  1e2438a5    fsub s5, s5, s4
  0x8004e7668:  1f0210a4    fmadd s4, s5, s2, s4
  0x8004e766c:  1e2638e5    fsub s5, s7, s6
  0x8004e7670:  1f0218a2    fmadd s2, s5, s2, s6
  0x8004e7674:  1e243842    fsub s2, s2, s4
  0x8004e7678:  1f031042    fmadd s2, s2, s3, s4
  0x8004e767c:  1f020023    fmadd s3, s1, s2, s0
  0x8004e7680:  bd000003    str s3, [x0]
  0x8004e7684:  b9400d6c    ldr w12, [x11, #12]
  0x8004e7688:  3940068d    ldrb w13, [x20, #1]
  0x8004e768c:  1acd2589    lsr w9, w12, w13
  0x8004e7690:  360001a9    tbz w9, #0, #52
  0x8004e7694:  f9400969    ldr x9, [x11, #16]
  0x8004e7698:  1acd214a    lsl w10, w10, w13
  0x8004e769c:  0a2a018a    bic w10, w12, w10
  0x8004e76a0:  7100095f    cmp w10, #2
  0x8004e76a4:  54002722    b.hs #1252
  0x8004e76a8:  f86a5929    ldr x9, [x9, w10, uxtw #3]
  0x8004e76ac:  b40000c9    cbz x9, #24
  0x8004e76b0:  91006129    add x9, x9, #24
  0x8004e76b4:  885f7d2a    ldxr w10, [x9]
  0x8004e76b8:  5100054a    sub w10, w10, #1
  0x8004e76bc:  880b7d2a    stxr w11, w10, [x9]
  0x8004e76c0:  35ffffab    cbnz w11, #-12
  0x8004e76c4:  37001526    tbnz w6, #0, #676
  0x8004e76c8:  36000145    tbz w5, #0, #40
  0x8004e76cc:  52801fe8    mov w8, #255
  0x8004e76d0:  d10043a0    sub x0, x29, #16
  0x8004e76d4:  b81f03a8    stur w8, [x29, #-16]
  0x8004e76d8:  9400013e    bl #1272
  0x8004e76dc:  7100067f    cmp w19, #1
  0x8004e76e0:  12800028    mov w8, #-2
  0x8004e76e4:  1a880508    cinc w8, w8, ne
  0x8004e76e8:  31000c1f    cmn w0, #3
  0x8004e76ec:  540002a8    b.hi #84
  0x8004e76f0:  2a1303e0    mov w0, w19
  0x8004e76f4:  a9494ff4    ldp x20, x19, [sp, #144]
  0x8004e76f8:  a94857f6    ldp x22, x21, [sp, #128]
  0x8004e76fc:  a9475ff8    ldp x24, x23, [sp, #112]
  0x8004e7700:  a94667fa    ldp x26, x25, [sp, #96]
  0x8004e7704:  a9457bfd    ldp x29, x30, [sp, #80]
  0x8004e7708:  910283ff    add sp, sp, #160
  0x8004e770c:  d65f03c0    ret
  0x8004e7710:  1e3e1003    fmov s3, #-1.00000000
  0x8004e7714:  1e2328c3    fadd s3, s6, s3
  0x8004e7718:  17ffff96    b #-424
  0x8004e771c:  f9400d08    ldr x8, [x8, #24]
  0x8004e7720:  17fffebf    b #-1284
  0x8004e7724:  2a1f03f3    mov w19, wzr
  0x8004e7728:  17fffff2    b #-56
  0x8004e772c:  2a1f03eb    mov w11, wzr
  0x8004e7730:  17ffff0e    b #-968
  0x8004e7734:  1e3e1002    fmov s2, #-1.00000000
  0x8004e7738:  1e2228e2    fadd s2, s7, s2
  0x8004e773c:  17ffff7b    b #-532
  0x8004e7740:  2a0803f3    mov w19, w8
  0x8004e7744:  17ffffeb    b #-84
  0x8004e7748:  53017dae    lsr w14, w13, #1
  0x8004e774c:  1200f1ce    and w14, w14, #0x55555555
  0x8004e7750:  4b0e01ad    sub w13, w13, w14
  0x8004e7754:  1200e5ae    and w14, w13, #0x33333333
  0x8004e7758:  53027dad    lsr w13, w13, #2
  0x8004e775c:  1200e5ad    and w13, w13, #0x33333333
  0x8004e7760:  0b0e01ad    add w13, w13, w14
  0x8004e7764:  0b4d11ad    add w13, w13, w13, lsr #4
  0x8004e7768:  1200cdad    and w13, w13, #0xf0f0f0f
  0x8004e776c:  0b4d21ad    add w13, w13, w13, lsr #8
  0x8004e7770:  0b4d41ad    add w13, w13, w13, lsr #16
  0x8004e7774:  120015ad    and w13, w13, #0x3f
  0x8004e7778:  17ffff19    b #-924
  0x8004e777c:  aa1f03eb    mov x11, xzr
  0x8004e7780:  17ffff29    b #-860
  0x8004e7784:  f900085f    str xzr, [x2, #16]
  0x8004e7788:  12800053    mov w19, #-3
  0x8004e778c:  17ffffcf    b #-196
  0x8004e7790:  b001aef4    adrp x20, #56479744
  0x8004e7794:  91258294    add x20, x20, #2400
  0x8004e7798:  17fffe9e    b #-1416
  0x8004e779c:  b001a374    adrp x20, #54972416
  0x8004e77a0:  91002129    add x9, x9, #8
  0x8004e77a4:  f942b294    ldr x20, [x20, #1376]
  0x8004e77a8:  f100214a    subs x10, x10, #8
  0x8004e77ac:  54ffd2c1    b.ne #-1448
  0x8004e77b0:  17fffe98    b #-1440
  0x8004e77b4:  2a0a03f3    mov w19, w10
  0x8004e77b8:  17ffffc4    b #-240
  0x8004e77bc:  f9400d0c    ldr x12, [x8, #24]
  0x8004e77c0:  b4001fec    cbz x12, #1020
  0x8004e77c4:  39400108    ldrb w8, [x8]
  0x8004e77c8:  d3441908    ubfx x8, x8, #4, #3
  0x8004e77cc:  8b080d28    add x8, x9, x8, lsl #3
  0x8004e77d0:  2a1f03f3    mov w19, wzr
  0x8004e77d4:  2d401d06    ldp s6, s7, [x8]
  0x8004e77d8:  aa0c03e8    mov x8, x12
  0x8004e77dc:  1f0388e2    fmsub s2, s7, s3, s2
  0x8004e77e0:  1f0390c4    fmsub s4, s6, s3, s4
  0x8004e77e4:  1e232863    fadd s3, s3, s3
  0x8004e77e8:  b5ffde0c    cbnz x12, #-1088
  0x8004e77ec:  17ffffc1    b #-252
  0x8004e77f0:  53017dae    lsr w14, w13, #1
  0x8004e77f4:  1200f1ce    and w14, w14, #0x55555555
  0x8004e77f8:  4b0e01ae    sub w14, w13, w14
  0x8004e77fc:  1200e5cf    and w15, w14, #0x33333333
  0x8004e7800:  53027dce    lsr w14, w14, #2
  0x8004e7804:  1200e5ce    and w14, w14, #0x33333333
  0x8004e7808:  0b0f01ce    add w14, w14, w15
  0x8004e780c:  0b4e11ce    add w14, w14, w14, lsr #4
  0x8004e7810:  1200cdce    and w14, w14, #0xf0f0f0f
  0x8004e7814:  0b4e21ce    add w14, w14, w14, lsr #8
  0x8004e7818:  0b4e41ce    add w14, w14, w14, lsr #16
  0x8004e781c:  120015cf    and w15, w14, #0x3f
  0x8004e7820:  17ffff15    b #-940
  0x8004e7824:  f94005f0    ldr x16, [x15, #8]
  0x8004e7828:  b40000d0    cbz x16, #24
  0x8004e782c:  b94019f0    ldr w16, [x15, #24]
  0x8004e7830:  34000090    cbz w16, #16
  0x8004e7834:  b94019ef    ldr w15, [x15, #24]
  0x8004e7838:  531e7def    lsr w15, w15, #30
  0x8004e783c:  34ffe26f    cbz w15, #-948
  0x8004e7840:  710009bf    cmp w13, #2
  0x8004e7844:  540001a3    b.lo #52
  0x8004e7848:  53017daf    lsr w15, w13, #1
  0x8004e784c:  1200f1ef    and w15, w15, #0x55555555
  0x8004e7850:  4b0f01ad    sub w13, w13, w15
  0x8004e7854:  1200e5af    and w15, w13, #0x33333333
  0x8004e7858:  53027dad    lsr w13, w13, #2
  0x8004e785c:  1200e5ad    and w13, w13, #0x33333333
  0x8004e7860:  0b0f01ad    add w13, w13, w15
  0x8004e7864:  0b4d11ad    add w13, w13, w13, lsr #4
  0x8004e7868:  1200cdad    and w13, w13, #0xf0f0f0f
  0x8004e786c:  0b4d21ad    add w13, w13, w13, lsr #8
  0x8004e7870:  0b4d41ad    add w13, w13, w13, lsr #16
  0x8004e7874:  120015ad    and w13, w13, #0x3f
  0x8004e7878:  f86d59cd    ldr x13, [x14, w13, uxtw #3]
  0x8004e787c:  b4ffdccd    cbz x13, #-1128
  0x8004e7880:  910061ad    add x13, x13, #24
  0x8004e7884:  885f7dae    ldxr w14, [x13]
  0x8004e7888:  510005ce    sub w14, w14, #1
  0x8004e788c:  880f7dae    stxr w15, w14, [x13]
  0x8004e7890:  35ffffaf    cbnz w15, #-12
  0x8004e7894:  17fffee0    b #-1152
  0x8004e7898:  53017da8    lsr w8, w13, #1
  0x8004e789c:  1200f108    and w8, w8, #0x55555555
  0x8004e78a0:  4b0801a8    sub w8, w13, w8
  0x8004e78a4:  1200e509    and w9, w8, #0x33333333
  0x8004e78a8:  53027d08    lsr w8, w8, #2
  0x8004e78ac:  1200e508    and w8, w8, #0x33333333
  0x8004e78b0:  0b090108    add w8, w8, w9
  0x8004e78b4:  0b481108    add w8, w8, w8, lsr #4
  0x8004e78b8:  1200cd08    and w8, w8, #0xf0f0f0f
  0x8004e78bc:  0b482108    add w8, w8, w8, lsr #8
  0x8004e78c0:  0b484108    add w8, w8, w8, lsr #16
  0x8004e78c4:  1200150d    and w13, w8, #0x3f
  0x8004e78c8:  17fffef5    b #-1068
  0x8004e78cc:  f94006a9    ldr x9, [x21, #8]
  0x8004e78d0:  f81e83a0    stur x0, [x29, #-24]
  0x8004e78d4:  2a0303fa    mov w26, w3
  0x8004e78d8:  a90187e2    stp x2, x1, [sp, #24]
  0x8004e78dc:  aa1f03e1    mov x1, xzr
  0x8004e78e0:  2a0503f8    mov w24, w5
  0x8004e78e4:  2a0603f6    mov w22, w6
  0x8004e78e8:  2a0403f9    mov w25, w4
  0x8004e78ec:  bc1e43a0    stur s0, [x29, #-28]
  0x8004e78f0:  aa0b03f7    mov x23, x11
  0x8004e78f4:  910b4128    add x8, x9, #720
  0x8004e78f8:  f9419129    ldr x9, [x9, #800]
  0x8004e78fc:  bd0017e1    str s1, [sp, #20]
  0x8004e7900:  aa0803e0    mov x0, x8
  0x8004e7904:  bc1e03a3    stur s3, [x29, #-32]
  0x8004e7908:  aa0903e2    mov x2, x9
  0x8004e790c:  bd0013e2    str s2, [sp, #16]
  0x8004e7910:  bc1dc3a4    stur s4, [x29, #-36]
  0x8004e7914:  bd000fe6    str s6, [sp, #12]
  0x8004e7918:  bd002be7    str s7, [sp, #40]
  0x8004e791c:  948bf3b7    bl #36687580
  0x8004e7920:  bd402be7    ldr s7, [sp, #40]
  0x8004e7924:  1e2c1005    fmov s5, #0.50000000
  0x8004e7928:  aa1703eb    mov x11, x23
  0x8004e792c:  2d418be6    ldp s6, s2, [sp, #12]
  0x8004e7930:  1280000a    mov w10, #-1
  0x8004e7934:  2d7b8fa4    ldp s4, s3, [x29, #-36]
  0x8004e7938:  2a1903e4    mov w4, w25
  0x8004e793c:  bd4017e1    ldr s1, [sp, #20]
  0x8004e7940:  2a1603e6    mov w6, w22
  0x8004e7944:  2a1803e5    mov w5, w24
  0x8004e7948:  bc5e43a0    ldur s0, [x29, #-28]
  0x8004e794c:  2a1a03e3    mov w3, w26
  0x8004e7950:  794026a8    ldrh w8, [x21, #18]
  0x8004e7954:  12137908    and w8, w8, #0xffffefff
  0x8004e7958:  790026a8    strh w8, [x21, #18]
  0x8004e795c:  f85e83a0    ldur x0, [x29, #-24]
  0x8004e7960:  a94187e2    ldp x2, x1, [sp, #24]
  0x8004e7964:  17fffed2    b #-1208
  0x8004e7968:  b95df848    ldr w8, [x2, #7672]
  0x8004e796c:  2a0503f4    mov w20, w5
  0x8004e7970:  aa0103f5    mov x21, x1
  0x8004e7974:  2a0303f7    mov w23, w3
  0x8004e7978:  aa0203f6    mov x22, x2
  0x8004e797c:  f81e83a0    stur x0, [x29, #-24]
  0x8004e7980:  34000fa8    cbz w8, #500
  0x8004e7984:  5283b908    mov w8, #7624
  0x8004e7988:  aa1603f9    mov x25, x22
  0x8004e798c:  8b0802da    add x26, x22, x8
  0x8004e7990:  aa1a03e0    mov x0, x26
  0x8004e7994:  97eed17f    bl #-4504068
  0x8004e7998:  f94efacb    ldr x11, [x22, #7664]
  0x8004e799c:  5283bd08    mov w8, #7656
  0x8004e79a0:  8b0802ca    add x10, x22, x8
  0x8004e79a4:  eb0a017f    cmp x11, x10
  0x8004e79a8:  54000e20    b.eq #452
  0x8004e79ac:  b99dfec8    ldrsw x8, [x22, #7676]
  0x8004e79b0:  cb0803e9    neg x9, x8
  0x8004e79b4:  cb08014a    sub x10, x10, x8
  0x8004e79b8:  2d4002a1    ldp s1, s0, [x21]
  0x8004e79bc:  cb080179    sub x25, x11, x8
  0x8004e79c0:  aa1503eb    mov x11, x21
  0x8004e79c4:  5280014b    mov w11, #10
  0x8004e79c8:  b942972c    ldr w12, [x25, #660]
  0x8004e79cc:  6a2c017f    bics wzr, w11, w12
  0x8004e79d0:  54000061    b.ne #12
  0x8004e79d4:  3940a32c    ldrb w12, [x25, #40]
  0x8004e79d8:  340000ec    cbz w12, #28
  0x8004e79dc:  8b08032c    add x12, x25, x8
  0x8004e79e0:  f940058c    ldr x12, [x12, #8]
  0x8004e79e4:  8b090199    add x25, x12, x9
  0x8004e79e8:  eb0a033f    cmp x25, x10
  0x8004e79ec:  54fffee1    b.ne #-36
  0x8004e79f0:  1400005f    b #380
  0x8004e79f4:  bd405322    ldr s2, [x25, #80]
  0x8004e79f8:  1e212040    fcmp s2, s1
  0x8004e79fc:  bd405b23    ldr s3, [x25, #88]
  0x8004e7a00:  1e239422    fccmp s1, s3, #2, ls
  0x8004e7a04:  54fffec8    b.hi #-40
  0x8004e7a08:  bd405724    ldr s4, [x25, #84]
  0x8004e7a0c:  1e202080    fcmp s4, s0
  0x8004e7a10:  54fffe68    b.hi #-52
  0x8004e7a14:  bd405f25    ldr s5, [x25, #92]
  0x8004e7a18:  1e252000    fcmp s0, s5
  0x8004e7a1c:  54fffe08    b.hi #-64
  0x8004e7a20:  1e223821    fsub s1, s1, s2
  0x8004e7a24:  1e223862    fsub s2, s3, s2
  0x8004e7a28:  8b181738    add x24, x25, x24, lsl #5
  0x8004e7a2c:  1e2438a3    fsub s3, s5, s4
  0x8004e7a30:  d10043a0    sub x0, x29, #16
  0x8004e7a34:  52800021    mov w1, #1
  0x8004e7a38:  1e221821    fdiv s1, s1, s2
  0x8004e7a3c:  1e243802    fsub s2, s0, s4
  0x8004e7a40:  2d589300    ldp s0, s4, [x24, #196]
  0x8004e7a44:  1e202820    fadd s0, s1, s0
  0x8004e7a48:  7d418301    ldr h1, [x24, #192]
  0x8004e7a4c:  7e21d821    ucvtf s1, s1
  0x8004e7a50:  1e210800    fmul s0, s0, s1
  0x8004e7a54:  1e231841    fdiv s1, s2, s3
  0x8004e7a58:  7d418702    ldr h2, [x24, #194]
  0x8004e7a5c:  7d417f03    ldr h3, [x24, #190]
  0x8004e7a60:  7e21d842    ucvtf s2, s2
  0x8004e7a64:  7e21d863    ucvtf s3, s3
  0x8004e7a68:  1e242821    fadd s1, s1, s4
  0x8004e7a6c:  1e220821    fmul s1, s1, s2
  0x8004e7a70:  7d417b02    ldr h2, [x24, #188]
  0x8004e7a74:  7e21d842    ucvtf s2, s2
  0x8004e7a78:  945cdca9    bl #24343204
  0x8004e7a7c:  79417f0b    ldrh w11, [x24, #190]
  0x8004e7a80:  5100056b    sub w11, w11, #1
  0x8004e7a84:  79417b0a    ldrh w10, [x24, #188]
  0x8004e7a88:  297e27a8    ldp w8, w9, [x29, #-16]
  0x8004e7a8c:  5100054a    sub w10, w10, #1
  0x8004e7a90:  3942eb10    ldrb w16, [x24, #186]
  0x8004e7a94:  7941730c    ldrh w12, [x24, #184]
  0x8004e7a98:  6b0b013f    cmp w9, w11
  0x8004e7a9c:  f9405b0d    ldr x13, [x24, #176]
  0x8004e7aa0:  1a8bb12e    csel w14, w9, w11, lt
  0x8004e7aa4:  7100013f    cmp w9, #0
  0x8004e7aa8:  1a8eb3ee    csel w14, wzr, w14, lt
  0x8004e7aac:  6b0a011f    cmp w8, w10
  0x8004e7ab0:  1a8ab10f    csel w15, w8, w10, lt
  0x8004e7ab4:  7100011f    cmp w8, #0
  0x8004e7ab8:  1a8fb3ef    csel w15, wzr, w15, lt
  0x8004e7abc:  9b2f7e0f    smull x15, w16, w15
  0x8004e7ac0:  9b2e3d91    smaddl x17, w12, w14, x15
  0x8004e7ac4:  7c7169a0    ldr h0, [x13, x17]
  0x8004e7ac8:  90014051    adrp x17, #41975808
  0x8004e7acc:  bd45ba21    ldr s1, [x17, #1464]
  0x8004e7ad0:  11000511    add w17, w8, #1
  0x8004e7ad4:  6b0a023f    cmp w17, w10
  0x8004e7ad8:  1a88a54a    csinc w10, w10, w8, ge
  0x8004e7adc:  3100051f    cmn w8, #1
  0x8004e7ae0:  1a8ab3e8    csel w8, wzr, w10, lt
  0x8004e7ae4:  9b287e08    smull x8, w16, w8
  0x8004e7ae8:  9b2e218a    smaddl x10, w12, w14, x8
  0x8004e7aec:  7e21d800    ucvtf s0, s0
  0x8004e7af0:  1e211800    fdiv s0, s0, s1
  0x8004e7af4:  7c6a69a2    ldr h2, [x13, x10]
  0x8004e7af8:  1100052a    add w10, w9, #1
  0x8004e7afc:  6b0b015f    cmp w10, w11
  0x8004e7b00:  1a89a56a    csinc w10, w11, w9, ge
  0x8004e7b04:  3100053f    cmn w9, #1
  0x8004e7b08:  1a8ab3e9    csel w9, wzr, w10, lt
  0x8004e7b0c:  9b293d8a    smaddl x10, w12, w9, x15
  0x8004e7b10:  9b292188    smaddl x8, w12, w9, x8
  0x8004e7b14:  7c6a69a3    ldr h3, [x13, x10]
  0x8004e7b18:  7c6869a4    ldr h4, [x13, x8]
  0x8004e7b1c:  f85e83a8    ldur x8, [x29, #-24]
  0x8004e7b20:  7e21d842    ucvtf s2, s2
  0x8004e7b24:  1e211842    fdiv s2, s2, s1
  0x8004e7b28:  7e21d863    ucvtf s3, s3
  0x8004e7b2c:  1e211863    fdiv s3, s3, s1
  0x8004e7b30:  7e21d884    ucvtf s4, s4
  0x8004e7b34:  1e203842    fsub s2, s2, s0
  0x8004e7b38:  1e211881    fdiv s1, s4, s1
  0x8004e7b3c:  2d7f17a4    ldp s4, s5, [x29, #-8]
  0x8004e7b40:  1f040040    fmadd s0, s2, s4, s0
  0x8004e7b44:  1e233821    fsub s1, s1, s3
  0x8004e7b48:  1f040c21    fmadd s1, s1, s4, s3
  0x8004e7b4c:  1e203821    fsub s1, s1, s0
  0x8004e7b50:  1f050020    fmadd s0, s1, s5, s0
  0x8004e7b54:  2d4c0b21    ldp s1, s2, [x25, #96]
  0x8004e7b58:  1e213842    fsub s2, s2, s1
  0x8004e7b5c:  1f000443    fmadd s3, s2, s0, s1
  0x8004e7b60:  bd400101    ldr s1, [x8]
  0x8004e7b64:  1e232820    fadd s0, s1, s3
  0x8004e7b68:  bd000100    str s0, [x8]
  0x8004e7b6c:  aa1a03e0    mov x0, x26
  0x8004e7b70:  97eed109    bl #-4504540
  0x8004e7b74:  2a1703e3    mov w3, w23
  0x8004e7b78:  aa1603e2    mov x2, x22
  0x8004e7b7c:  aa1503e1    mov x1, x21
  0x8004e7b80:  2a1403e5    mov w5, w20
  0x8004e7b84:  17fffed1    b #-1212
  0x8004e7b88:  53017d4b    lsr w11, w10, #1
  0x8004e7b8c:  1200f16b    and w11, w11, #0x55555555
  0x8004e7b90:  4b0b014a    sub w10, w10, w11
  0x8004e7b94:  1200e54b    and w11, w10, #0x33333333
  0x8004e7b98:  53027d4a    lsr w10, w10, #2
  0x8004e7b9c:  1200e54a    and w10, w10, #0x33333333
  0x8004e7ba0:  0b0b014a    add w10, w10, w11
  0x8004e7ba4:  0b4a114a    add w10, w10, w10, lsr #4
  0x8004e7ba8:  1200cd4a    and w10, w10, #0xf0f0f0f
  0x8004e7bac:  0b4a214a    add w10, w10, w10, lsr #8
  0x8004e7bb0:  0b4a414a    add w10, w10, w10, lsr #16
  0x8004e7bb4:  1200154a    and w10, w10, #0x3f
  0x8004e7bb8:  17fffebc    b #-1296
  0x8004e7bbc:  aa1f03e8    mov x8, xzr
  0x8004e7bc0:  17ffff03    b #-1012
  0x8004e7bc4:  00000000    udf #0
  0x8004e7bc8:  00000000    udf #0
  0x8004e7bcc:  00000000    udf #0

; Function f_8004e8eec [0x8004e8eec..0x8004e9400)
f_8004e8eec:
  0x8004e8eec:  d101c3ff    sub sp, sp, #112
  0x8004e8ef0:  a9017bfd    stp x29, x30, [sp, #16]
  0x8004e8ef4:  a9026ffc    stp x28, x27, [sp, #32]
  0x8004e8ef8:  a90367fa    stp x26, x25, [sp, #48]
  0x8004e8efc:  a9045ff8    stp x24, x23, [sp, #64]
  0x8004e8f00:  a90557f6    stp x22, x21, [sp, #80]
  0x8004e8f04:  a9064ff4    stp x20, x19, [sp, #96]
  0x8004e8f08:  910043fd    add x29, sp, #16
  0x8004e8f0c:  39400008    ldrb w8, [x0]
  0x8004e8f10:  528000e9    mov w9, #7
  0x8004e8f14:  5280002a    mov w10, #1
  0x8004e8f18:  f940041c    ldr x28, [x0, #8]
  0x8004e8f1c:  1280000d    mov w13, #-1
  0x8004e8f20:  531e74b3    lsl w19, w5, #2
  0x8004e8f24:  aa0003f4    mov x20, x0
  0x8004e8f28:  2a0303f9    mov w25, w3
  0x8004e8f2c:  4b080129    sub w9, w9, w8
  0x8004e8f30:  b9400048    ldr w8, [x2]
  0x8004e8f34:  b8736b9a    ldr w26, [x28, x19]
  0x8004e8f38:  1ac9214a    lsl w10, w10, w9
  0x8004e8f3c:  1ac921ae    lsl w14, w13, w9
  0x8004e8f40:  1ac92469    lsr w9, w3, w9
  0x8004e8f44:  12000136    and w22, w9, #0x1
  0x8004e8f48:  6a08014b    ands w11, w10, w8
  0x8004e8f4c:  1a9f07e9    cset w9, ne
  0x8004e8f50:  6a04015f    tst w10, w4
  0x8004e8f54:  2a0906c9    orr w9, w22, w9, lsl #1
  0x8004e8f58:  1a9f07fb    cset w27, ne
  0x8004e8f5c:  331e0369    bfi w9, w27, #2, #1
  0x8004e8f60:  340005ab    cbz w11, #180
  0x8004e8f64:  1ac9274a    lsr w10, w26, w9
  0x8004e8f68:  3700010a    tbnz w10, #0, #32
  0x8004e8f6c:  0a0801c8    and w8, w14, w8
  0x8004e8f70:  51000508    sub w8, w8, #1
  0x8004e8f74:  b9000048    str w8, [x2]
  0x8004e8f78:  6b06011f    cmp w8, w6
  0x8004e8f7c:  5400048a    b.ge #144
  0x8004e8f80:  2a1f03e0    mov w0, wzr
  0x8004e8f84:  14000043    b #268
  0x8004e8f88:  f9400e80    ldr x0, [x20, #24]
  0x8004e8f8c:  b4001b60    cbz x0, #876
  0x8004e8f90:  1ac921a8    lsl w8, w13, w9
  0x8004e8f94:  b81fc3a7    stur w7, [x29, #-4]
  0x8004e8f98:  120000e7    and w7, w7, #0x1
  0x8004e8f9c:  0a280348    bic w8, w26, w8
  0x8004e8fa0:  2a1903e3    mov w3, w25
  0x8004e8fa4:  b9000bee    str w14, [sp, #8]
  0x8004e8fa8:  53017d09    lsr w9, w8, #1
  0x8004e8fac:  aa0103f7    mov x23, x1
  0x8004e8fb0:  29001be4    stp w4, w6, [sp]
  0x8004e8fb4:  1200f129    and w9, w9, #0x55555555
  0x8004e8fb8:  aa0203f8    mov x24, x2
  0x8004e8fbc:  4b090108    sub w8, w8, w9
  0x8004e8fc0:  52800669    mov w9, #51
  0x8004e8fc4:  0a09010a    and w10, w8, w9
  0x8004e8fc8:  0a480928    and w8, w9, w8, lsr #2
  0x8004e8fcc:  0b0a0108    add w8, w8, w10
  0x8004e8fd0:  0b481108    add w8, w8, w8, lsr #4
  0x8004e8fd4:  92400d08    and x8, x8, #0xf
  0x8004e8fd8:  8b5a2115    add x21, x8, x26, lsr #8
  0x8004e8fdc:  2a1503e5    mov w5, w21
  0x8004e8fe0:  97ffffc3    bl #-244
  0x8004e8fe4:  37000660    tbnz w0, #0, #204
  0x8004e8fe8:  b9400308    ldr w8, [x24]
  0x8004e8fec:  aa1703e1    mov x1, x23
  0x8004e8ff0:  1280000d    mov w13, #-1
  0x8004e8ff4:  b85fc3a7    ldur w7, [x29, #-4]
  0x8004e8ff8:  aa1803e2    mov x2, x24
  0x8004e8ffc:  b94003e4    ldr w4, [sp]
  0x8004e9000:  2940bbe6    ldp w6, w14, [sp, #4]
  0x8004e9004:  6b06011f    cmp w8, w6
  0x8004e9008:  54fffbcb    b.lt #-136
  0x8004e900c:  531e7769    lsl w9, w27, #2
  0x8004e9010:  2a160129    orr w9, w9, w22
  0x8004e9014:  12001f4a    and w10, w26, #0xff
  0x8004e9018:  1ac9254a    lsr w10, w10, w9
  0x8004e901c:  36001aca    tbz w10, #0, #856
  0x8004e9020:  f9400e80    ldr x0, [x20, #24]
  0x8004e9024:  b4000980    cbz x0, #304
  0x8004e9028:  b8736b88    ldr w8, [x28, x19]
  0x8004e902c:  1ac921a9    lsl w9, w13, w9
  0x8004e9030:  120000e7    and w7, w7, #0x1
  0x8004e9034:  2a1903e3    mov w3, w25
  0x8004e9038:  aa0103f3    mov x19, x1
  0x8004e903c:  0a290109    bic w9, w8, w9
  0x8004e9040:  53017d2a    lsr w10, w9, #1
  0x8004e9044:  1200f14a    and w10, w10, #0x55555555
  0x8004e9048:  4b0a0129    sub w9, w9, w10
  0x8004e904c:  5280066a    mov w10, #51
  0x8004e9050:  0a0a012b    and w11, w9, w10
  0x8004e9054:  0a490949    and w9, w10, w9, lsr #2
  0x8004e9058:  0b0b0129    add w9, w9, w11
  0x8004e905c:  0b491129    add w9, w9, w9, lsr #4
  0x8004e9060:  92400d29    and x9, x9, #0xf
  0x8004e9064:  8b48213a    add x26, x9, x8, lsr #8
  0x8004e9068:  2a1a03e5    mov w5, w26
  0x8004e906c:  97ffffa0    bl #-384
  0x8004e9070:  3607f880    tbz w0, #0, #-240
  0x8004e9074:  39400288    ldrb w8, [x20]
  0x8004e9078:  aa1303e3    mov x3, x19
  0x8004e907c:  7100191f    cmp w8, #6
  0x8004e9080:  54000ae0    b.eq #348
  0x8004e9084:  7100151f    cmp w8, #5
  0x8004e9088:  54000cc0    b.eq #408
  0x8004e908c:  52800020    mov w0, #1
  0x8004e9090:  a9464ff4    ldp x20, x19, [sp, #96]
  0x8004e9094:  a94557f6    ldp x22, x21, [sp, #80]
  0x8004e9098:  a9445ff8    ldp x24, x23, [sp, #64]
  0x8004e909c:  a94367fa    ldp x26, x25, [sp, #48]
  0x8004e90a0:  a9426ffc    ldp x28, x27, [sp, #32]
  0x8004e90a4:  a9417bfd    ldp x29, x30, [sp, #16]
  0x8004e90a8:  9101c3ff    add sp, sp, #112
  0x8004e90ac:  d65f03c0    ret
  0x8004e90b0:  39400288    ldrb w8, [x20]
  0x8004e90b4:  7100191f    cmp w8, #6
  0x8004e90b8:  54000fc0    b.eq #504
  0x8004e90bc:  7100151f    cmp w8, #5
  0x8004e90c0:  54fffe61    b.ne #-52
  0x8004e90c4:  f9400a88    ldr x8, [x20, #16]
  0x8004e90c8:  f9406508    ldr x8, [x8, #200]
  0x8004e90cc:  b40017e8    cbz x8, #764
  0x8004e90d0:  52800289    mov w9, #20
  0x8004e90d4:  9ba922a2    umaddl x2, w21, w9, x8
  0x8004e90d8:  39400048    ldrb w8, [x2]
  0x8004e90dc:  39400449    ldrb w9, [x2, #1]
  0x8004e90e0:  3940084a    ldrb w10, [x2, #2]
  0x8004e90e4:  39400c4b    ldrb w11, [x2, #3]
  0x8004e90e8:  3940104c    ldrb w12, [x2, #4]
  0x8004e90ec:  3940144d    ldrb w13, [x2, #5]
  0x8004e90f0:  3940184e    ldrb w14, [x2, #6]
  0x8004e90f4:  39401c4f    ldrb w15, [x2, #7]
  0x8004e90f8:  39402050    ldrb w16, [x2, #8]
  0x8004e90fc:  39402440    ldrb w0, [x2, #9]
  0x8004e9100:  39402851    ldrb w17, [x2, #10]
  0x8004e9104:  39402c52    ldrb w18, [x2, #11]
  0x8004e9108:  29418841    ldp w1, w2, [x2, #12]
  0x8004e910c:  390082e8    strb w8, [x23, #32]
  0x8004e9110:  394002e8    ldrb w8, [x23]
  0x8004e9114:  321e0108    orr w8, w8, #0x4
  0x8004e9118:  390086e9    strb w9, [x23, #33]
  0x8004e911c:  39008aea    strb w10, [x23, #34]
  0x8004e9120:  39008eeb    strb w11, [x23, #35]
  0x8004e9124:  390092ec    strb w12, [x23, #36]
  0x8004e9128:  390096ed    strb w13, [x23, #37]
  0x8004e912c:  39009aee    strb w14, [x23, #38]
  0x8004e9130:  39009eef    strb w15, [x23, #39]
  0x8004e9134:  3900a2f0    strb w16, [x23, #40]
  0x8004e9138:  3900a6e0    strb w0, [x23, #41]
  0x8004e913c:  52800020    mov w0, #1
  0x8004e9140:  3900aaf1    strb w17, [x23, #42]
  0x8004e9144:  3900aef2    strb w18, [x23, #43]
  0x8004e9148:  29058ae1    stp w1, w2, [x23, #44]
  0x8004e914c:  390002e8    strb w8, [x23]
  0x8004e9150:  17ffffd0    b #-192
  0x8004e9154:  f9400a8a    ldr x10, [x20, #16]
  0x8004e9158:  f9405d4a    ldr x10, [x10, #184]
  0x8004e915c:  b4000caa    cbz x10, #404
  0x8004e9160:  b8736b8b    ldr w11, [x28, x19]
  0x8004e9164:  1ac921a9    lsl w9, w13, w9
  0x8004e9168:  0a290169    bic w9, w11, w9
  0x8004e916c:  53017d2c    lsr w12, w9, #1
  0x8004e9170:  1200f18c    and w12, w12, #0x55555555
  0x8004e9174:  4b0c0129    sub w9, w9, w12
  0x8004e9178:  5280066c    mov w12, #51
  0x8004e917c:  0a0c012d    and w13, w9, w12
  0x8004e9180:  0a490989    and w9, w12, w9, lsr #2
  0x8004e9184:  0b0d0129    add w9, w9, w13
  0x8004e9188:  0b491129    add w9, w9, w9, lsr #4
  0x8004e918c:  12000d29    and w9, w9, #0xf
  0x8004e9190:  0b4b2129    add w9, w9, w11, lsr #8
  0x8004e9194:  d001a92b    adrp x11, #55730176
  0x8004e9198:  b9470d6b    ldr w11, [x11, #1804]
  0x8004e919c:  1b0b7d29    mul w9, w9, w11
  0x8004e91a0:  1200092b    and w11, w9, #0x7
  0x8004e91a4:  8b490d49    add x9, x10, x9, lsr #3
  0x8004e91a8:  7940012a    ldrh w10, [x9]
  0x8004e91ac:  39400929    ldrb w9, [x9, #2]
  0x8004e91b0:  2a094149    orr w9, w10, w9, lsl #16
  0x8004e91b4:  1acb2529    lsr w9, w9, w11
  0x8004e91b8:  12003d29    and w9, w9, #0xffff
  0x8004e91bc:  37000da7    tbnz w7, #0, #436
  0x8004e91c0:  36100da9    tbz w9, #2, #436
  0x8004e91c4:  39400028    ldrb w8, [x1]
  0x8004e91c8:  79003829    strh w9, [x1, #28]
  0x8004e91cc:  52800020    mov w0, #1
  0x8004e91d0:  32000108    orr w8, w8, #0x1
  0x8004e91d4:  39000028    strb w8, [x1]
  0x8004e91d8:  17ffffae    b #-328
  0x8004e91dc:  f9400a88    ldr x8, [x20, #16]
  0x8004e91e0:  f9406108    ldr x8, [x8, #192]
  0x8004e91e4:  b4000108    cbz x8, #32
  0x8004e91e8:  d001a929    adrp x9, #55730176
  0x8004e91ec:  b9470929    ldr w9, [x9, #1800]
  0x8004e91f0:  1b1a7d29    mul w9, w9, w26
  0x8004e91f4:  d343fd2a    lsr x10, x9, #3
  0x8004e91f8:  12000929    and w9, w9, #0x7
  0x8004e91fc:  786a6908    ldrh w8, [x8, x10]
  0x8004e9200:  1ac92508    lsr w8, w8, w9
  0x8004e9204:  39007868    strb w8, [x3, #30]
  0x8004e9208:  39400068    ldrb w8, [x3]
  0x8004e920c:  321f0108    orr w8, w8, #0x2
  0x8004e9210:  39000068    strb w8, [x3]
  0x8004e9214:  39400288    ldrb w8, [x20]
  0x8004e9218:  7100151f    cmp w8, #5
  0x8004e921c:  54fff381    b.ne #-400
  0x8004e9220:  f9400a88    ldr x8, [x20, #16]
  0x8004e9224:  f9406508    ldr x8, [x8, #200]
  0x8004e9228:  b4000b08    cbz x8, #352
  0x8004e922c:  52800289    mov w9, #20
  0x8004e9230:  9ba92342    umaddl x2, w26, w9, x8
  0x8004e9234:  39400048    ldrb w8, [x2]
  0x8004e9238:  39400449    ldrb w9, [x2, #1]
  0x8004e923c:  3940084a    ldrb w10, [x2, #2]
  0x8004e9240:  39400c4b    ldrb w11, [x2, #3]
  0x8004e9244:  3940104c    ldrb w12, [x2, #4]
  0x8004e9248:  3940144d    ldrb w13, [x2, #5]
  0x8004e924c:  3940184e    ldrb w14, [x2, #6]
  0x8004e9250:  39401c4f    ldrb w15, [x2, #7]
  0x8004e9254:  39402050    ldrb w16, [x2, #8]
  0x8004e9258:  39402440    ldrb w0, [x2, #9]
  0x8004e925c:  39402851    ldrb w17, [x2, #10]
  0x8004e9260:  39402c52    ldrb w18, [x2, #11]
  0x8004e9264:  29418841    ldp w1, w2, [x2, #12]
  0x8004e9268:  39008068    strb w8, [x3, #32]
  0x8004e926c:  39400068    ldrb w8, [x3]
  0x8004e9270:  321e0108    orr w8, w8, #0x4
  0x8004e9274:  3900a460    strb w0, [x3, #41]
  0x8004e9278:  52800020    mov w0, #1
  0x8004e927c:  39008469    strb w9, [x3, #33]
  0x8004e9280:  3900886a    strb w10, [x3, #34]
  0x8004e9284:  39008c6b    strb w11, [x3, #35]
  0x8004e9288:  3900906c    strb w12, [x3, #36]
  0x8004e928c:  3900946d    strb w13, [x3, #37]
  0x8004e9290:  3900986e    strb w14, [x3, #38]
  0x8004e9294:  39009c6f    strb w15, [x3, #39]
  0x8004e9298:  3900a070    strb w16, [x3, #40]
  0x8004e929c:  3900a871    strb w17, [x3, #42]
  0x8004e92a0:  3900ac72    strb w18, [x3, #43]
  0x8004e92a4:  29058861    stp w1, w2, [x3, #44]
  0x8004e92a8:  39000068    strb w8, [x3]
  0x8004e92ac:  17ffff79    b #-540
  0x8004e92b0:  f9400a88    ldr x8, [x20, #16]
  0x8004e92b4:  f9406108    ldr x8, [x8, #192]
  0x8004e92b8:  b4000108    cbz x8, #32
  0x8004e92bc:  d001a929    adrp x9, #55730176
  0x8004e92c0:  b9470929    ldr w9, [x9, #1800]
  0x8004e92c4:  1b157d29    mul w9, w9, w21
  0x8004e92c8:  d343fd2a    lsr x10, x9, #3
  0x8004e92cc:  12000929    and w9, w9, #0x7
  0x8004e92d0:  786a6908    ldrh w8, [x8, x10]
  0x8004e92d4:  1ac92508    lsr w8, w8, w9
  0x8004e92d8:  39007ae8    strb w8, [x23, #30]
  0x8004e92dc:  394002e8    ldrb w8, [x23]
  0x8004e92e0:  321f0108    orr w8, w8, #0x2
  0x8004e92e4:  390002e8    strb w8, [x23]
  0x8004e92e8:  39400288    ldrb w8, [x20]
  0x8004e92ec:  17ffff74    b #-560
  0x8004e92f0:  2a1f03e9    mov w9, wzr
  0x8004e92f4:  17ffffb2    b #-312
  0x8004e92f8:  f9400a8a    ldr x10, [x20, #16]
  0x8004e92fc:  f9405d4a    ldr x10, [x10, #184]
  0x8004e9300:  b400034a    cbz x10, #104
  0x8004e9304:  1ac921a9    lsl w9, w13, w9
  0x8004e9308:  0a290349    bic w9, w26, w9
  0x8004e930c:  53017d2b    lsr w11, w9, #1
  0x8004e9310:  1200f16b    and w11, w11, #0x55555555
  0x8004e9314:  4b0b0129    sub w9, w9, w11
  0x8004e9318:  5280066b    mov w11, #51
  0x8004e931c:  0a0b012c    and w12, w9, w11
  0x8004e9320:  0a490969    and w9, w11, w9, lsr #2
  0x8004e9324:  d001a92b    adrp x11, #55730176
  0x8004e9328:  b9470d6b    ldr w11, [x11, #1804]
  0x8004e932c:  0b0c0129    add w9, w9, w12
  0x8004e9330:  0b491129    add w9, w9, w9, lsr #4
  0x8004e9334:  12000d29    and w9, w9, #0xf
  0x8004e9338:  0b5a2129    add w9, w9, w26, lsr #8
  0x8004e933c:  1b097d69    mul w9, w11, w9
  0x8004e9340:  1200092b    and w11, w9, #0x7
  0x8004e9344:  8b490d49    add x9, x10, x9, lsr #3
  0x8004e9348:  7940012a    ldrh w10, [x9]
  0x8004e934c:  39400929    ldrb w9, [x9, #2]
  0x8004e9350:  2a094149    orr w9, w10, w9, lsl #16
  0x8004e9354:  1acb2529    lsr w9, w9, w11
  0x8004e9358:  12003d29    and w9, w9, #0xffff
  0x8004e935c:  37000327    tbnz w7, #0, #100
  0x8004e9360:  3717f329    tbnz w9, #2, #-412
  0x8004e9364:  17ffff02    b #-1016
  0x8004e9368:  2a1f03e9    mov w9, wzr
  0x8004e936c:  17fffffc    b #-16
  0x8004e9370:  371ff2a9    tbnz w9, #3, #-428
  0x8004e9374:  0a0e0108    and w8, w8, w14
  0x8004e9378:  2a1f03e0    mov w0, wzr
  0x8004e937c:  51000508    sub w8, w8, #1
  0x8004e9380:  b9000048    str w8, [x2]
  0x8004e9384:  17ffff43    b #-756
  0x8004e9388:  2a1f03e9    mov w9, wzr
  0x8004e938c:  2a1f03ea    mov w10, wzr
  0x8004e9390:  2a1f03eb    mov w11, wzr
  0x8004e9394:  2a1f03ec    mov w12, wzr
  0x8004e9398:  2a1f03ed    mov w13, wzr
  0x8004e939c:  2a1f03ee    mov w14, wzr
  0x8004e93a0:  2a1f03ef    mov w15, wzr
  0x8004e93a4:  2a1f03f0    mov w16, wzr
  0x8004e93a8:  2a1f03f1    mov w17, wzr
  0x8004e93ac:  2a1f03f2    mov w18, wzr
  0x8004e93b0:  2a1f03e1    mov w1, wzr
  0x8004e93b4:  2a1f03e2    mov w2, wzr
  0x8004e93b8:  52801fe0    mov w0, #255
  0x8004e93bc:  17ffffab    b #-340
  0x8004e93c0:  361fdd69    tbz w9, #3, #-1108
  0x8004e93c4:  17ffff80    b #-512
  0x8004e93c8:  2a1f03e9    mov w9, wzr
  0x8004e93cc:  2a1f03ea    mov w10, wzr
  0x8004e93d0:  2a1f03eb    mov w11, wzr
  0x8004e93d4:  2a1f03ec    mov w12, wzr
  0x8004e93d8:  2a1f03ed    mov w13, wzr
  0x8004e93dc:  2a1f03ee    mov w14, wzr
  0x8004e93e0:  2a1f03ef    mov w15, wzr
  0x8004e93e4:  2a1f03f0    mov w16, wzr
  0x8004e93e8:  2a1f03f1    mov w17, wzr
  0x8004e93ec:  2a1f03f2    mov w18, wzr
  0x8004e93f0:  2a1f03e1    mov w1, wzr
  0x8004e93f4:  2a1f03e2    mov w2, wzr
  0x8004e93f8:  52801fe0    mov w0, #255
  0x8004e93fc:  17ffff44    b #-752

