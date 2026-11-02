; UltraTears chunk main_1163_spatialhash: 1 functions [0x8021c31d4..0x8021c435c)

; Function f_8021c31d4 [0x8021c31d4..0x8021c435c)
f_8021c31d4:
  0x8021c31d4:  d101c3ff    sub sp, sp, #112
  0x8021c31d8:  6d012beb    stp d11, d10, [sp, #16]
  0x8021c31dc:  6d0223e9    stp d9, d8, [sp, #32]
  0x8021c31e0:  a9037bfd    stp x29, x30, [sp, #48]
  0x8021c31e4:  a9045ff8    stp x24, x23, [sp, #64]
  0x8021c31e8:  a90557f6    stp x22, x21, [sp, #80]
  0x8021c31ec:  a9064ff4    stp x20, x19, [sp, #96]
  0x8021c31f0:  9100c3fd    add x29, sp, #48
  0x8021c31f4:  5100e028    sub w8, w1, #56
  0x8021c31f8:  2a0103f4    mov w20, w1
  0x8021c31fc:  aa0003f3    mov x19, x0
  0x8021c3200:  7100311f    cmp w8, #12
  0x8021c3204:  540026c9    b.ls #1240
  0x8021c3208:  f9404a76    ldr x22, [x19, #144]
  0x8021c320c:  2f00e408    movi d8, #0000000000000000
  0x8021c3210:  b4000ab6    cbz x22, #340
  0x8021c3214:  f9404e68    ldr x8, [x19, #152]
  0x8021c3218:  b4000a68    cbz x8, #332
  0x8021c321c:  f9405260    ldr x0, [x19, #160]
  0x8021c3220:  b4000a20    cbz x0, #324
  0x8021c3224:  7100ce9f    cmp w20, #51
  0x8021c3228:  540012c0    b.eq #600
  0x8021c322c:  f9401e68    ldr x8, [x19, #56]
  0x8021c3230:  2a0203f5    mov w21, w2
  0x8021c3234:  b50055c8    cbnz x8, #2744
  0x8021c3238:  7100569f    cmp w20, #21
  0x8021c323c:  540000e8    b.hi #28
  0x8021c3240:  52800028    mov w8, #1
  0x8021c3244:  52804009    mov w9, #512
  0x8021c3248:  72a00609    movk w9, #48, lsl #16
  0x8021c324c:  1ad42108    lsl w8, w8, w20
  0x8021c3250:  6a09011f    tst w8, w9
  0x8021c3254:  54000da1    b.ne #436
  0x8021c3258:  f9401a68    ldr x8, [x19, #48]
  0x8021c325c:  b50055e8    cbnz x8, #2748
  0x8021c3260:  5100c688    sub w8, w20, #49
  0x8021c3264:  7100091f    cmp w8, #2
  0x8021c3268:  54005723    b.lo #2788
  0x8021c326c:  bd40aa6a    ldr s10, [x19, #168]
  0x8021c3270:  1e2e1009    fmov s9, #1.00000000
  0x8021c3274:  1e202148    fcmp s10, #0.0
  0x8021c3278:  54005708    b.hi #2784
  0x8021c327c:  7100569f    cmp w20, #21
  0x8021c3280:  54001200    b.eq #576
  0x8021c3284:  7100529f    cmp w20, #20
  0x8021c3288:  540012c0    b.eq #600
  0x8021c328c:  7100269f    cmp w20, #9
  0x8021c3290:  54001380    b.eq #624
  0x8021c3294:  bd41daca    ldr s10, [x22, #472]
  0x8021c3298:  1e202148    fcmp s10, #0.0
  0x8021c329c:  54005888    b.hi #2832
  0x8021c32a0:  7100ca9f    cmp w20, #50
  0x8021c32a4:  540059c0    b.eq #2872
  0x8021c32a8:  7100c69f    cmp w20, #49
  0x8021c32ac:  54005a00    b.eq #2880
  0x8021c32b0:  bd401eca    ldr s10, [x22, #28]
  0x8021c32b4:  1e202148    fcmp s10, #0.0
  0x8021c32b8:  540037e9    b.ls #1788
  0x8021c32bc:  1e292140    fcmp s10, s9
  0x8021c32c0:  9100c2d7    add x23, x22, #48
  0x8021c32c4:  540006eb    b.lt #220
  0x8021c32c8:  b9401ac8    ldr w8, [x22, #24]
  0x8021c32cc:  52800309    mov w9, #24
  0x8021c32d0:  9ba95d09    umaddl x9, w8, w9, x23
  0x8021c32d4:  7100211f    cmp w8, #8
  0x8021c32d8:  9a973120    csel x0, x9, x23, lo
  0x8021c32dc:  2a1403e1    mov w1, w20
  0x8021c32e0:  2a1503e2    mov w2, w21
  0x8021c32e4:  9793a82a    bl #-28401496
  0x8021c32e8:  1e204008    fmov s8, s0
  0x8021c32ec:  7100969f    cmp w20, #37
  0x8021c32f0:  540004cc    b.gt #152
  0x8021c32f4:  51003288    sub w8, w20, #12
  0x8021c32f8:  7100311f    cmp w8, #12
  0x8021c32fc:  54000788    b.hi #240
  0x8021c3300:  b0005a09    adrp x9, #11800576
  0x8021c3304:  91309129    add x9, x9, #3108
  0x8021c3308:  1000008a    adr x10, #16
  0x8021c330c:  3868692b    ldrb w11, [x9, x8]
  0x8021c3310:  8b0b094a    add x10, x10, x11, lsl #2
  0x8021c3314:  d61f0140    br x10
  0x8021c3318:  f9404e73    ldr x19, [x19, #152]
  0x8021c331c:  bd401260    ldr s0, [x19, #16]
  0x8021c3320:  1e202008    fcmp s0, #0.0
  0x8021c3324:  54005a89    b.ls #2896
  0x8021c3328:  1e292000    fcmp s0, s9
  0x8021c332c:  54005b6b    b.lt #2924
  0x8021c3330:  f9400668    ldr x8, [x19, #8]
  0x8021c3334:  2f00e400    movi d0, #0000000000000000
  0x8021c3338:  f9400508    ldr x8, [x8, #8]
  0x8021c333c:  b4000108    cbz x8, #32
  0x8021c3340:  f940a914    ldr x20, [x8, #336]
  0x8021c3344:  b40000d4    cbz x20, #24
  0x8021c3348:  3941fa88    ldrb w8, [x20, #126]
  0x8021c334c:  37000068    tbnz w8, #0, #12
  0x8021c3350:  f9400a88    ldr x8, [x20, #16]
  0x8021c3354:  b5000708    cbnz x8, #224
  0x8021c3358:  bd405280    ldr s0, [x20, #80]
  0x8021c335c:  1e202100    fcmp s8, s0
  0x8021c3360:  1e28cc08    fcsel s8, s0, s8, gt
  0x8021c3364:  1e204100    fmov s0, s8
  0x8021c3368:  6d4223e9    ldp d9, d8, [sp, #32]
  0x8021c336c:  6d412beb    ldp d11, d10, [sp, #16]
  0x8021c3370:  a9464ff4    ldp x20, x19, [sp, #96]
  0x8021c3374:  a94557f6    ldp x22, x21, [sp, #80]
  0x8021c3378:  a9445ff8    ldp x24, x23, [sp, #64]
  0x8021c337c:  a9437bfd    ldp x29, x30, [sp, #48]
  0x8021c3380:  9101c3ff    add sp, sp, #112
  0x8021c3384:  d65f03c0    ret
  0x8021c3388:  71009a9f    cmp w20, #38
  0x8021c338c:  54001a20    b.eq #836
  0x8021c3390:  71009e9f    cmp w20, #39
  0x8021c3394:  54fffe81    b.ne #-48
  0x8021c3398:  bd40b660    ldr s0, [x19, #180]
  0x8021c339c:  140000ce    b #824
  0x8021c33a0:  b94016c8    ldr w8, [x22, #20]
  0x8021c33a4:  52800318    mov w24, #24
  0x8021c33a8:  2a1403e1    mov w1, w20
  0x8021c33ac:  2a1503e2    mov w2, w21
  0x8021c33b0:  9bb85d09    umaddl x9, w8, w24, x23
  0x8021c33b4:  7100211f    cmp w8, #8
  0x8021c33b8:  9a973120    csel x0, x9, x23, lo
  0x8021c33bc:  9793a7f4    bl #-28401712
  0x8021c33c0:  b9401ac8    ldr w8, [x22, #24]
  0x8021c33c4:  1e204008    fmov s8, s0
  0x8021c33c8:  9bb85d09    umaddl x9, w8, w24, x23
  0x8021c33cc:  7100211f    cmp w8, #8
  0x8021c33d0:  9a973120    csel x0, x9, x23, lo
  0x8021c33d4:  2a1403e1    mov w1, w20
  0x8021c33d8:  2a1503e2    mov w2, w21
  0x8021c33dc:  9793a7ec    bl #-28401744
  0x8021c33e0:  1e283800    fsub s0, s0, s8
  0x8021c33e4:  1f0a2008    fmadd s8, s0, s10, s8
  0x8021c33e8:  17ffffc1    b #-252
  0x8021c33ec:  71001a9f    cmp w20, #6
  0x8021c33f0:  54fffba1    b.ne #-140
  0x8021c33f4:  f0005948    adrp x8, #11710464
  0x8021c33f8:  bd40ae60    ldr s0, [x19, #172]
  0x8021c33fc:  bd4af501    ldr s1, [x8, #2804]
  0x8021c3400:  1e210808    fmul s8, s0, s1
  0x8021c3404:  17ffffd8    b #-160
  0x8021c3408:  6d4223e9    ldp d9, d8, [sp, #32]
  0x8021c340c:  aa1603e0    mov x0, x22
  0x8021c3410:  6d412beb    ldp d11, d10, [sp, #16]
  0x8021c3414:  2a1403e1    mov w1, w20
  0x8021c3418:  2a1503e2    mov w2, w21
  0x8021c341c:  a9464ff4    ldp x20, x19, [sp, #96]
  0x8021c3420:  a94557f6    ldp x22, x21, [sp, #80]
  0x8021c3424:  a9445ff8    ldp x24, x23, [sp, #64]
  0x8021c3428:  a9437bfd    ldp x29, x30, [sp, #48]
  0x8021c342c:  9101c3ff    add sp, sp, #112
  0x8021c3430:  1793ae04    b #-28395504
  0x8021c3434:  f9400e88    ldr x8, [x20, #24]
  0x8021c3438:  b4fff908    cbz x8, #-224
  0x8021c343c:  b9400d09    ldr w9, [x8, #12]
  0x8021c3440:  b940228a    ldr w10, [x20, #32]
  0x8021c3444:  6b0a013f    cmp w9, w10
  0x8021c3448:  54fff881    b.ne #-240
  0x8021c344c:  f9400113    ldr x19, [x8]
  0x8021c3450:  b4fff853    cbz x19, #-248
  0x8021c3454:  97ff767e    bl #-140808
  0x8021c3458:  f9400268    ldr x8, [x19]
  0x8021c345c:  aa0003e1    mov x1, x0
  0x8021c3460:  aa1303e0    mov x0, x19
  0x8021c3464:  f9400108    ldr x8, [x8]
  0x8021c3468:  d63f0100    blr x8
  0x8021c346c:  b4fff760    cbz x0, #-276
  0x8021c3470:  3941f808    ldrb w8, [x0, #126]
  0x8021c3474:  aa0003f4    mov x20, x0
  0x8021c3478:  3607f6c8    tbz w8, #0, #-296
  0x8021c347c:  17ffffb7    b #-292
  0x8021c3480:  bd401101    ldr s1, [x8, #16]
  0x8021c3484:  1e202028    fcmp s1, #0.0
  0x8021c3488:  540053c9    b.ls #2680
  0x8021c348c:  1e2e1000    fmov s0, #1.00000000
  0x8021c3490:  1e202020    fcmp s1, s0
  0x8021c3494:  5400546b    b.lt #2700
  0x8021c3498:  f9400508    ldr x8, [x8, #8]
  0x8021c349c:  f9400509    ldr x9, [x8, #8]
  0x8021c34a0:  b4fff629    cbz x9, #-316
  0x8021c34a4:  f940a929    ldr x9, [x9, #336]
  0x8021c34a8:  b4fff5e9    cbz x9, #-324
  0x8021c34ac:  39400108    ldrb w8, [x8]
  0x8021c34b0:  7200011f    tst w8, #0x1
  0x8021c34b4:  2f00e401    movi d1, #0000000000000000
  0x8021c34b8:  1e200c28    fcsel s8, s1, s0, eq
  0x8021c34bc:  17ffffaa    b #-344
  0x8021c34c0:  f940f2c8    ldr x8, [x22, #480]
  0x8021c34c4:  f940a916    ldr x22, [x8, #336]
  0x8021c34c8:  3940fac8    ldrb w8, [x22, #62]
  0x8021c34cc:  37000068    tbnz w8, #0, #12
  0x8021c34d0:  f9400ac8    ldr x8, [x22, #16]
  0x8021c34d4:  b5001228    cbnz x8, #580
  0x8021c34d8:  bd4032c8    ldr s8, [x22, #48]
  0x8021c34dc:  17ffff84    b #-496
  0x8021c34e0:  f940f2c8    ldr x8, [x22, #480]
  0x8021c34e4:  f940a916    ldr x22, [x8, #336]
  0x8021c34e8:  3940f6c8    ldrb w8, [x22, #61]
  0x8021c34ec:  37000068    tbnz w8, #0, #12
  0x8021c34f0:  f9400ac8    ldr x8, [x22, #16]
  0x8021c34f4:  b5001388    cbnz x8, #624
  0x8021c34f8:  bd4036c8    ldr s8, [x22, #52]
  0x8021c34fc:  17ffff7c    b #-528
  0x8021c3500:  f940f2c8    ldr x8, [x22, #480]
  0x8021c3504:  f940a916    ldr x22, [x8, #336]
  0x8021c3508:  3940f2c8    ldrb w8, [x22, #60]
  0x8021c350c:  37000068    tbnz w8, #0, #12
  0x8021c3510:  f9400ac8    ldr x8, [x22, #16]
  0x8021c3514:  b50014e8    cbnz x8, #668
  0x8021c3518:  bd403ac8    ldr s8, [x22, #56]
  0x8021c351c:  17ffff74    b #-560
  0x8021c3520:  f9400668    ldr x8, [x19, #8]
  0x8021c3524:  f940a900    ldr x0, [x8, #336]
  0x8021c3528:  39420008    ldrb w8, [x0, #128]
  0x8021c352c:  aa0003f5    mov x21, x0
  0x8021c3530:  36001668    tbz w8, #0, #716
  0x8021c3534:  f94026a0    ldr x0, [x21, #72]
  0x8021c3538:  3941cc08    ldrb w8, [x0, #115]
  0x8021c353c:  aa0003f5    mov x21, x0
  0x8021c3540:  360051a8    tbz w8, #0, #2612
  0x8021c3544:  bd404ea0    ldr s0, [x21, #76]
  0x8021c3548:  1e200908    fmul s8, s8, s0
  0x8021c354c:  f9404e73    ldr x19, [x19, #152]
  0x8021c3550:  bd401260    ldr s0, [x19, #16]
  0x8021c3554:  1e202008    fcmp s0, #0.0
  0x8021c3558:  54005329    b.ls #2660
  0x8021c355c:  1e292000    fcmp s0, s9
  0x8021c3560:  540053eb    b.lt #2684
  0x8021c3564:  f9400668    ldr x8, [x19, #8]
  0x8021c3568:  2f00e400    movi d0, #0000000000000000
  0x8021c356c:  f9400508    ldr x8, [x8, #8]
  0x8021c3570:  b4000b28    cbz x8, #356
  0x8021c3574:  f940a900    ldr x0, [x8, #336]
  0x8021c3578:  b4000ae0    cbz x0, #348
  0x8021c357c:  3941e008    ldrb w8, [x0, #120]
  0x8021c3580:  aa0003f4    mov x20, x0
  0x8021c3584:  360054e8    tbz w8, #0, #2716
  0x8021c3588:  bd404280    ldr s0, [x20, #64]
  0x8021c358c:  14000052    b #328
  0x8021c3590:  f9400668    ldr x8, [x19, #8]
  0x8021c3594:  f940a900    ldr x0, [x8, #336]
  0x8021c3598:  39420008    ldrb w8, [x0, #128]
  0x8021c359c:  aa0003f5    mov x21, x0
  0x8021c35a0:  360015a8    tbz w8, #0, #692
  0x8021c35a4:  f94026a0    ldr x0, [x21, #72]
  0x8021c35a8:  3941d008    ldrb w8, [x0, #116]
  0x8021c35ac:  aa0003f5    mov x21, x0
  0x8021c35b0:  360055c8    tbz w8, #0, #2744
  0x8021c35b4:  bd404aa0    ldr s0, [x21, #72]
  0x8021c35b8:  1e200908    fmul s8, s8, s0
  0x8021c35bc:  f9404e73    ldr x19, [x19, #152]
  0x8021c35c0:  bd401260    ldr s0, [x19, #16]
  0x8021c35c4:  1e202008    fcmp s0, #0.0
  0x8021c35c8:  54005749    b.ls #2792
  0x8021c35cc:  1e292000    fcmp s0, s9
  0x8021c35d0:  5400582b    b.lt #2820
  0x8021c35d4:  f9400668    ldr x8, [x19, #8]
  0x8021c35d8:  2f00e400    movi d0, #0000000000000000
  0x8021c35dc:  f9400508    ldr x8, [x8, #8]
  0x8021c35e0:  b40007a8    cbz x8, #244
  0x8021c35e4:  f940a900    ldr x0, [x8, #336]
  0x8021c35e8:  b4000760    cbz x0, #236
  0x8021c35ec:  3941e408    ldrb w8, [x0, #121]
  0x8021c35f0:  aa0003f4    mov x20, x0
  0x8021c35f4:  36005988    tbz w8, #0, #2864
  0x8021c35f8:  bd403e80    ldr s0, [x20, #60]
  0x8021c35fc:  14000036    b #216
  0x8021c3600:  f9400668    ldr x8, [x19, #8]
  0x8021c3604:  f940a900    ldr x0, [x8, #336]
  0x8021c3608:  39420008    ldrb w8, [x0, #128]
  0x8021c360c:  aa0003f5    mov x21, x0
  0x8021c3610:  360014e8    tbz w8, #0, #668
  0x8021c3614:  f94026a0    ldr x0, [x21, #72]
  0x8021c3618:  3941c808    ldrb w8, [x0, #114]
  0x8021c361c:  aa0003f5    mov x21, x0
  0x8021c3620:  36005a68    tbz w8, #0, #2892
  0x8021c3624:  f9404e73    ldr x19, [x19, #152]
  0x8021c3628:  bd4052a0    ldr s0, [x21, #80]
  0x8021c362c:  bd401261    ldr s1, [x19, #16]
  0x8021c3630:  1e202028    fcmp s1, #0.0
  0x8021c3634:  54005c09    b.ls #2944
  0x8021c3638:  1e292020    fcmp s1, s9
  0x8021c363c:  54005d4b    b.lt #2984
  0x8021c3640:  f9400668    ldr x8, [x19, #8]
  0x8021c3644:  2f00e401    movi d1, #0000000000000000
  0x8021c3648:  f9400508    ldr x8, [x8, #8]
  0x8021c364c:  b40000e8    cbz x8, #28
  0x8021c3650:  f940a900    ldr x0, [x8, #336]
  0x8021c3654:  b40000a0    cbz x0, #20
  0x8021c3658:  3941dc08    ldrb w8, [x0, #119]
  0x8021c365c:  aa0003f4    mov x20, x0
  0x8021c3660:  36005ee8    tbz w8, #0, #3036
  0x8021c3664:  bd404681    ldr s1, [x20, #68]
  0x8021c3668:  1e210803    fmul s3, s0, s1
  0x8021c366c:  1e230908    fmul s8, s8, s3
  0x8021c3670:  17ffff3d    b #-780
  0x8021c3674:  f9400668    ldr x8, [x19, #8]
  0x8021c3678:  f940a900    ldr x0, [x8, #336]
  0x8021c367c:  39420008    ldrb w8, [x0, #128]
  0x8021c3680:  aa0003f4    mov x20, x0
  0x8021c3684:  36001408    tbz w8, #0, #640
  0x8021c3688:  f9402680    ldr x0, [x20, #72]
  0x8021c368c:  3941d408    ldrb w8, [x0, #117]
  0x8021c3690:  aa0003f4    mov x20, x0
  0x8021c3694:  36005fc8    tbz w8, #0, #3064
  0x8021c3698:  bd405a80    ldr s0, [x20, #88]
  0x8021c369c:  1400000b    b #44
  0x8021c36a0:  f9400668    ldr x8, [x19, #8]
  0x8021c36a4:  f940a900    ldr x0, [x8, #336]
  0x8021c36a8:  39420008    ldrb w8, [x0, #128]
  0x8021c36ac:  aa0003f4    mov x20, x0
  0x8021c36b0:  36001568    tbz w8, #0, #684
  0x8021c36b4:  f9402680    ldr x0, [x20, #72]
  0x8021c36b8:  3941d808    ldrb w8, [x0, #118]
  0x8021c36bc:  aa0003f4    mov x20, x0
  0x8021c36c0:  360060a8    tbz w8, #0, #3092
  0x8021c36c4:  bd405680    ldr s0, [x20, #84]
  0x8021c36c8:  1e202908    fadd s8, s8, s0
  0x8021c36cc:  17ffff26    b #-872
  0x8021c36d0:  bd40b260    ldr s0, [x19, #176]
  0x8021c36d4:  1e200908    fmul s8, s8, s0
  0x8021c36d8:  17ffff23    b #-884
  0x8021c36dc:  7101129f    cmp w20, #68
  0x8021c36e0:  540019a1    b.ne #820
  0x8021c36e4:  f9403268    ldr x8, [x19, #96]
  0x8021c36e8:  f000bcb5    adrp x21, #24735744
  0x8021c36ec:  f000bcb3    adrp x19, #24735744
  0x8021c36f0:  f940e2b5    ldr x21, [x21, #448]
  0x8021c36f4:  f940a900    ldr x0, [x8, #336]
  0x8021c36f8:  f940de73    ldr x19, [x19, #440]
  0x8021c36fc:  39424c08    ldrb w8, [x0, #147]
  0x8021c3700:  aa0003f6    mov x22, x0
  0x8021c3704:  37000068    tbnz w8, #0, #12
  0x8021c3708:  f9400ac8    ldr x8, [x22, #16]
  0x8021c370c:  b5001628    cbnz x8, #708
  0x8021c3710:  bd4082c8    ldr s8, [x22, #128]
  0x8021c3714:  17ffff14    b #-944
  0x8021c3718:  f9400ec8    ldr x8, [x22, #24]
  0x8021c371c:  b4ffede8    cbz x8, #-580
  0x8021c3720:  b9400d09    ldr w9, [x8, #12]
  0x8021c3724:  b94022ca    ldr w10, [x22, #32]
  0x8021c3728:  6b0a013f    cmp w9, w10
  0x8021c372c:  54ffed61    b.ne #-596
  0x8021c3730:  f9400115    ldr x21, [x8]
  0x8021c3734:  b4ffed35    cbz x21, #-604
  0x8021c3738:  97ff867c    bl #-124432
  0x8021c373c:  f94002a8    ldr x8, [x21]
  0x8021c3740:  aa0003e1    mov x1, x0
  0x8021c3744:  aa1503e0    mov x0, x21
  0x8021c3748:  f9400108    ldr x8, [x8]
  0x8021c374c:  d63f0100    blr x8
  0x8021c3750:  b4ffec40    cbz x0, #-632
  0x8021c3754:  3940f808    ldrb w8, [x0, #62]
  0x8021c3758:  aa0003f6    mov x22, x0
  0x8021c375c:  3607eba8    tbz w8, #0, #-652
  0x8021c3760:  17ffff5e    b #-648
  0x8021c3764:  f9400ec8    ldr x8, [x22, #24]
  0x8021c3768:  b4ffec88    cbz x8, #-624
  0x8021c376c:  b9400d09    ldr w9, [x8, #12]
  0x8021c3770:  b94022ca    ldr w10, [x22, #32]
  0x8021c3774:  6b0a013f    cmp w9, w10
  0x8021c3778:  54ffec01    b.ne #-640
  0x8021c377c:  f9400115    ldr x21, [x8]
  0x8021c3780:  b4ffebd5    cbz x21, #-648
  0x8021c3784:  97ff8669    bl #-124508
  0x8021c3788:  f94002a8    ldr x8, [x21]
  0x8021c378c:  aa0003e1    mov x1, x0
  0x8021c3790:  aa1503e0    mov x0, x21
  0x8021c3794:  f9400108    ldr x8, [x8]
  0x8021c3798:  d63f0100    blr x8
  0x8021c379c:  b4ffeae0    cbz x0, #-676
  0x8021c37a0:  3940f408    ldrb w8, [x0, #61]
  0x8021c37a4:  aa0003f6    mov x22, x0
  0x8021c37a8:  3607ea48    tbz w8, #0, #-696
  0x8021c37ac:  17ffff53    b #-692
  0x8021c37b0:  f9400ec8    ldr x8, [x22, #24]
  0x8021c37b4:  b4ffeb28    cbz x8, #-668
  0x8021c37b8:  b9400d09    ldr w9, [x8, #12]
  0x8021c37bc:  b94022ca    ldr w10, [x22, #32]
  0x8021c37c0:  6b0a013f    cmp w9, w10
  0x8021c37c4:  54ffeaa1    b.ne #-684
  0x8021c37c8:  f9400115    ldr x21, [x8]
  0x8021c37cc:  b4ffea75    cbz x21, #-692
  0x8021c37d0:  97ff8656    bl #-124584
  0x8021c37d4:  f94002a8    ldr x8, [x21]
  0x8021c37d8:  aa0003e1    mov x1, x0
  0x8021c37dc:  aa1503e0    mov x0, x21
  0x8021c37e0:  f9400108    ldr x8, [x8]
  0x8021c37e4:  d63f0100    blr x8
  0x8021c37e8:  b4ffe980    cbz x0, #-720
  0x8021c37ec:  3940f008    ldrb w8, [x0, #60]
  0x8021c37f0:  aa0003f6    mov x22, x0
  0x8021c37f4:  3607e8e8    tbz w8, #0, #-740
  0x8021c37f8:  17ffff48    b #-736
  0x8021c37fc:  f9400aa8    ldr x8, [x21, #16]
  0x8021c3800:  b4ffe9a8    cbz x8, #-716
  0x8021c3804:  f9400ea8    ldr x8, [x21, #24]
  0x8021c3808:  b4ffe968    cbz x8, #-724
  0x8021c380c:  b9400d09    ldr w9, [x8, #12]
  0x8021c3810:  b94022aa    ldr w10, [x21, #32]
  0x8021c3814:  6b0a013f    cmp w9, w10
  0x8021c3818:  54ffe8e1    b.ne #-740
  0x8021c381c:  f9400114    ldr x20, [x8]
  0x8021c3820:  b4ffe8b4    cbz x20, #-748
  0x8021c3824:  f000bca8    adrp x8, #24735744
  0x8021c3828:  f9414508    ldr x8, [x8, #648]
  0x8021c382c:  08dffd08    ldarb w8, [x8]
  0x8021c3830:  36001d28    tbz w8, #0, #932
  0x8021c3834:  f9400288    ldr x8, [x20]
  0x8021c3838:  f000bca1    adrp x1, #24735744
  0x8021c383c:  aa1403e0    mov x0, x20
  0x8021c3840:  f9400108    ldr x8, [x8]
  0x8021c3844:  f9414021    ldr x1, [x1, #640]
  0x8021c3848:  d63f0100    blr x8
  0x8021c384c:  b5ffe6e0    cbnz x0, #-804
  0x8021c3850:  17ffff39    b #-796
  0x8021c3854:  f9400aa8    ldr x8, [x21, #16]
  0x8021c3858:  b4ffea68    cbz x8, #-692
  0x8021c385c:  f9400ea8    ldr x8, [x21, #24]
  0x8021c3860:  b4ffea28    cbz x8, #-700
  0x8021c3864:  b9400d09    ldr w9, [x8, #12]
  0x8021c3868:  b94022aa    ldr w10, [x21, #32]
  0x8021c386c:  6b0a013f    cmp w9, w10
  0x8021c3870:  54ffe9a1    b.ne #-716
  0x8021c3874:  f9400114    ldr x20, [x8]
  0x8021c3878:  b4ffe974    cbz x20, #-724
  0x8021c387c:  f000bca8    adrp x8, #24735744
  0x8021c3880:  f9414508    ldr x8, [x8, #648]
  0x8021c3884:  08dffd08    ldarb w8, [x8]
  0x8021c3888:  36001c28    tbz w8, #0, #900
  0x8021c388c:  f9400288    ldr x8, [x20]
  0x8021c3890:  f000bca1    adrp x1, #24735744
  0x8021c3894:  aa1403e0    mov x0, x20
  0x8021c3898:  f9400108    ldr x8, [x8]
  0x8021c389c:  f9414021    ldr x1, [x1, #640]
  0x8021c38a0:  d63f0100    blr x8
  0x8021c38a4:  b5ffe7a0    cbnz x0, #-780
  0x8021c38a8:  17ffff3f    b #-772
  0x8021c38ac:  f9400aa8    ldr x8, [x21, #16]
  0x8021c38b0:  b4ffeb28    cbz x8, #-668
  0x8021c38b4:  f9400ea8    ldr x8, [x21, #24]
  0x8021c38b8:  b4ffeae8    cbz x8, #-676
  0x8021c38bc:  b9400d09    ldr w9, [x8, #12]
  0x8021c38c0:  b94022aa    ldr w10, [x21, #32]
  0x8021c38c4:  6b0a013f    cmp w9, w10
  0x8021c38c8:  54ffea61    b.ne #-692
  0x8021c38cc:  f9400114    ldr x20, [x8]
  0x8021c38d0:  b4ffea34    cbz x20, #-700
  0x8021c38d4:  f000bca8    adrp x8, #24735744
  0x8021c38d8:  f9414508    ldr x8, [x8, #648]
  0x8021c38dc:  08dffd08    ldarb w8, [x8]
  0x8021c38e0:  36001b28    tbz w8, #0, #868
  0x8021c38e4:  f9400288    ldr x8, [x20]
  0x8021c38e8:  f000bca1    adrp x1, #24735744
  0x8021c38ec:  aa1403e0    mov x0, x20
  0x8021c38f0:  f9400108    ldr x8, [x8]
  0x8021c38f4:  f9414021    ldr x1, [x1, #640]
  0x8021c38f8:  d63f0100    blr x8
  0x8021c38fc:  b5ffe860    cbnz x0, #-756
  0x8021c3900:  17ffff45    b #-748
  0x8021c3904:  f9400a88    ldr x8, [x20, #16]
  0x8021c3908:  b4ffec08    cbz x8, #-640
  0x8021c390c:  f9400e88    ldr x8, [x20, #24]
  0x8021c3910:  b4ffebc8    cbz x8, #-648
  0x8021c3914:  b9400d09    ldr w9, [x8, #12]
  0x8021c3918:  b940228a    ldr w10, [x20, #32]
  0x8021c391c:  6b0a013f    cmp w9, w10
  0x8021c3920:  54ffeb41    b.ne #-664
  0x8021c3924:  f9400113    ldr x19, [x8]
  0x8021c3928:  b4ffeb13    cbz x19, #-672
  0x8021c392c:  f000bca8    adrp x8, #24735744
  0x8021c3930:  f9414508    ldr x8, [x8, #648]
  0x8021c3934:  08dffd08    ldarb w8, [x8]
  0x8021c3938:  36001a28    tbz w8, #0, #836
  0x8021c393c:  f9400268    ldr x8, [x19]
  0x8021c3940:  f000bca1    adrp x1, #24735744
  0x8021c3944:  aa1303e0    mov x0, x19
  0x8021c3948:  f9400108    ldr x8, [x8]
  0x8021c394c:  f9414021    ldr x1, [x1, #640]
  0x8021c3950:  d63f0100    blr x8
  0x8021c3954:  b5ffe940    cbnz x0, #-728
  0x8021c3958:  17ffff4c    b #-720
  0x8021c395c:  f9400a88    ldr x8, [x20, #16]
  0x8021c3960:  b4ffeaa8    cbz x8, #-684
  0x8021c3964:  f9400e88    ldr x8, [x20, #24]
  0x8021c3968:  b4ffea68    cbz x8, #-692
  0x8021c396c:  b9400d09    ldr w9, [x8, #12]
  0x8021c3970:  b940228a    ldr w10, [x20, #32]
  0x8021c3974:  6b0a013f    cmp w9, w10
  0x8021c3978:  54ffe9e1    b.ne #-708
  0x8021c397c:  f9400113    ldr x19, [x8]
  0x8021c3980:  b4ffe9b3    cbz x19, #-716
  0x8021c3984:  f000bca8    adrp x8, #24735744
  0x8021c3988:  f9414508    ldr x8, [x8, #648]
  0x8021c398c:  08dffd08    ldarb w8, [x8]
  0x8021c3990:  36001928    tbz w8, #0, #804
  0x8021c3994:  f9400268    ldr x8, [x19]
  0x8021c3998:  f000bca1    adrp x1, #24735744
  0x8021c399c:  aa1303e0    mov x0, x19
  0x8021c39a0:  f9400108    ldr x8, [x8]
  0x8021c39a4:  f9414021    ldr x1, [x1, #640]
  0x8021c39a8:  d63f0100    blr x8
  0x8021c39ac:  b5ffe7e0    cbnz x0, #-772
  0x8021c39b0:  17ffff41    b #-764
  0x8021c39b4:  b94016c9    ldr w9, [x22, #20]
  0x8021c39b8:  9100c2c8    add x8, x22, #48
  0x8021c39bc:  5280030a    mov w10, #24
  0x8021c39c0:  9baa212a    umaddl x10, w9, w10, x8
  0x8021c39c4:  7100213f    cmp w9, #8
  0x8021c39c8:  9a883140    csel x0, x10, x8, lo
  0x8021c39cc:  17fffe44    b #-1776
  0x8021c39d0:  f9400ec8    ldr x8, [x22, #24]
  0x8021c39d4:  b4ffe9e8    cbz x8, #-708
  0x8021c39d8:  b9400d09    ldr w9, [x8, #12]
  0x8021c39dc:  b94022ca    ldr w10, [x22, #32]
  0x8021c39e0:  6b0a013f    cmp w9, w10
  0x8021c39e4:  54ffe961    b.ne #-724
  0x8021c39e8:  f9400114    ldr x20, [x8]
  0x8021c39ec:  b4ffe934    cbz x20, #-732
  0x8021c39f0:  08dffea8    ldarb w8, [x21]
  0x8021c39f4:  36000d88    tbz w8, #0, #432
  0x8021c39f8:  f9400288    ldr x8, [x20]
  0x8021c39fc:  aa1403e0    mov x0, x20
  0x8021c3a00:  aa1303e1    mov x1, x19
  0x8021c3a04:  f9400108    ldr x8, [x8]
  0x8021c3a08:  d63f0100    blr x8
  0x8021c3a0c:  b5ffe780    cbnz x0, #-784
  0x8021c3a10:  17ffff40    b #-768
  0x8021c3a14:  2f00e408    movi d8, #0000000000000000
  0x8021c3a18:  5100e688    sub w8, w20, #57
  0x8021c3a1c:  7100211f    cmp w8, #8
  0x8021c3a20:  54ffca28    b.hi #-1724
  0x8021c3a24:  b0005a09    adrp x9, #11800576
  0x8021c3a28:  9130c929    add x9, x9, #3122
  0x8021c3a2c:  10ffc9ca    adr x10, #-1736
  0x8021c3a30:  7868792b    ldrh w11, [x9, x8, lsl #1]
  0x8021c3a34:  8b0b094a    add x10, x10, x11, lsl #2
  0x8021c3a38:  d61f0140    br x10
  0x8021c3a3c:  f9403268    ldr x8, [x19, #96]
  0x8021c3a40:  f000bcb5    adrp x21, #24735744
  0x8021c3a44:  f000bcb3    adrp x19, #24735744
  0x8021c3a48:  f940e2b5    ldr x21, [x21, #448]
  0x8021c3a4c:  f940a900    ldr x0, [x8, #336]
  0x8021c3a50:  f940de73    ldr x19, [x19, #440]
  0x8021c3a54:  39423808    ldrb w8, [x0, #142]
  0x8021c3a58:  aa0003f6    mov x22, x0
  0x8021c3a5c:  37000068    tbnz w8, #0, #12
  0x8021c3a60:  f9400ac8    ldr x8, [x22, #16]
  0x8021c3a64:  b50005c8    cbnz x8, #184
  0x8021c3a68:  bd406ec8    ldr s8, [x22, #108]
  0x8021c3a6c:  17fffe3e    b #-1800
  0x8021c3a70:  f9403268    ldr x8, [x19, #96]
  0x8021c3a74:  f000bcb5    adrp x21, #24735744
  0x8021c3a78:  f000bcb3    adrp x19, #24735744
  0x8021c3a7c:  f940e2b5    ldr x21, [x21, #448]
  0x8021c3a80:  f940a900    ldr x0, [x8, #336]
  0x8021c3a84:  f940de73    ldr x19, [x19, #440]
  0x8021c3a88:  39424008    ldrb w8, [x0, #144]
  0x8021c3a8c:  aa0003f6    mov x22, x0
  0x8021c3a90:  37000068    tbnz w8, #0, #12
  0x8021c3a94:  f9400ac8    ldr x8, [x22, #16]
  0x8021c3a98:  b5000208    cbnz x8, #64
  0x8021c3a9c:  bd4052c8    ldr s8, [x22, #80]
  0x8021c3aa0:  17fffe31    b #-1852
  0x8021c3aa4:  f9403268    ldr x8, [x19, #96]
  0x8021c3aa8:  f000bcb5    adrp x21, #24735744
  0x8021c3aac:  f000bcb3    adrp x19, #24735744
  0x8021c3ab0:  f940e2b5    ldr x21, [x21, #448]
  0x8021c3ab4:  f940a900    ldr x0, [x8, #336]
  0x8021c3ab8:  f940de73    ldr x19, [x19, #440]
  0x8021c3abc:  39423c08    ldrb w8, [x0, #143]
  0x8021c3ac0:  aa0003f6    mov x22, x0
  0x8021c3ac4:  37000068    tbnz w8, #0, #12
  0x8021c3ac8:  f9400ac8    ldr x8, [x22, #16]
  0x8021c3acc:  b50004a8    cbnz x8, #148
  0x8021c3ad0:  bd4066c8    ldr s8, [x22, #100]
  0x8021c3ad4:  17fffe24    b #-1904
  0x8021c3ad8:  f9400ec8    ldr x8, [x22, #24]
  0x8021c3adc:  b4fffe08    cbz x8, #-64
  0x8021c3ae0:  b9400d09    ldr w9, [x8, #12]
  0x8021c3ae4:  b94022ca    ldr w10, [x22, #32]
  0x8021c3ae8:  6b0a013f    cmp w9, w10
  0x8021c3aec:  54fffd81    b.ne #-80
  0x8021c3af0:  f9400114    ldr x20, [x8]
  0x8021c3af4:  b4fffd54    cbz x20, #-88
  0x8021c3af8:  08dffea8    ldarb w8, [x21]
  0x8021c3afc:  36001408    tbz w8, #0, #640
  0x8021c3b00:  f9400288    ldr x8, [x20]
  0x8021c3b04:  aa1403e0    mov x0, x20
  0x8021c3b08:  aa1303e1    mov x1, x19
  0x8021c3b0c:  f9400108    ldr x8, [x8]
  0x8021c3b10:  d63f0100    blr x8
  0x8021c3b14:  b5fffba0    cbnz x0, #-140
  0x8021c3b18:  17ffffe1    b #-124
  0x8021c3b1c:  f9400ec8    ldr x8, [x22, #24]
  0x8021c3b20:  b4fffa48    cbz x8, #-184
  0x8021c3b24:  b9400d09    ldr w9, [x8, #12]
  0x8021c3b28:  b94022ca    ldr w10, [x22, #32]
  0x8021c3b2c:  6b0a013f    cmp w9, w10
  0x8021c3b30:  54fff9c1    b.ne #-200
  0x8021c3b34:  f9400114    ldr x20, [x8]
  0x8021c3b38:  b4fff994    cbz x20, #-208
  0x8021c3b3c:  08dffea8    ldarb w8, [x21]
  0x8021c3b40:  360016a8    tbz w8, #0, #724
  0x8021c3b44:  f9400288    ldr x8, [x20]
  0x8021c3b48:  aa1403e0    mov x0, x20
  0x8021c3b4c:  aa1303e1    mov x1, x19
  0x8021c3b50:  f9400108    ldr x8, [x8]
  0x8021c3b54:  d63f0100    blr x8
  0x8021c3b58:  b5fff7e0    cbnz x0, #-260
  0x8021c3b5c:  17ffffc3    b #-244
  0x8021c3b60:  f9400ec8    ldr x8, [x22, #24]
  0x8021c3b64:  b4fffb68    cbz x8, #-148
  0x8021c3b68:  b9400d09    ldr w9, [x8, #12]
  0x8021c3b6c:  b94022ca    ldr w10, [x22, #32]
  0x8021c3b70:  6b0a013f    cmp w9, w10
  0x8021c3b74:  54fffae1    b.ne #-164
  0x8021c3b78:  f9400114    ldr x20, [x8]
  0x8021c3b7c:  b4fffab4    cbz x20, #-172
  0x8021c3b80:  08dffea8    ldarb w8, [x21]
  0x8021c3b84:  36001608    tbz w8, #0, #704
  0x8021c3b88:  f9400288    ldr x8, [x20]
  0x8021c3b8c:  aa1403e0    mov x0, x20
  0x8021c3b90:  aa1303e1    mov x1, x19
  0x8021c3b94:  f9400108    ldr x8, [x8]
  0x8021c3b98:  d63f0100    blr x8
  0x8021c3b9c:  b5fff900    cbnz x0, #-224
  0x8021c3ba0:  17ffffcc    b #-208
  0x8021c3ba4:  f000bca0    adrp x0, #24735744
  0x8021c3ba8:  f940e000    ldr x0, [x0, #448]
  0x8021c3bac:  94277f7d    bl #10354164
  0x8021c3bb0:  34fff240    cbz w0, #-440
  0x8021c3bb4:  9000bc48    adrp x8, #24674304
  0x8021c3bb8:  f000bca0    adrp x0, #24735744
  0x8021c3bbc:  f944ad08    ldr x8, [x8, #2392]
  0x8021c3bc0:  91004108    add x8, x8, #16
  0x8021c3bc4:  f9000268    str x8, [x19]
  0x8021c3bc8:  f940e000    ldr x0, [x0, #448]
  0x8021c3bcc:  94277f79    bl #10354148
  0x8021c3bd0:  17ffff8a    b #-472
  0x8021c3bd4:  f000bca0    adrp x0, #24735744
  0x8021c3bd8:  f9414400    ldr x0, [x0, #648]
  0x8021c3bdc:  94277f71    bl #10354116
  0x8021c3be0:  34ffe2a0    cbz w0, #-940
  0x8021c3be4:  9000bc48    adrp x8, #24674304
  0x8021c3be8:  f000bca9    adrp x9, #24735744
  0x8021c3bec:  f944ad08    ldr x8, [x8, #2392]
  0x8021c3bf0:  f9414129    ldr x9, [x9, #640]
  0x8021c3bf4:  f000bca0    adrp x0, #24735744
  0x8021c3bf8:  91004108    add x8, x8, #16
  0x8021c3bfc:  f9000128    str x8, [x9]
  0x8021c3c00:  f9414400    ldr x0, [x0, #648]
  0x8021c3c04:  94277f6b    bl #10354092
  0x8021c3c08:  17ffff0b    b #-980
  0x8021c3c0c:  f000bca0    adrp x0, #24735744
  0x8021c3c10:  f9414400    ldr x0, [x0, #648]
  0x8021c3c14:  94277f63    bl #10354060
  0x8021c3c18:  34ffe3a0    cbz w0, #-908
  0x8021c3c1c:  9000bc48    adrp x8, #24674304
  0x8021c3c20:  f000bca9    adrp x9, #24735744
  0x8021c3c24:  f944ad08    ldr x8, [x8, #2392]
  0x8021c3c28:  f9414129    ldr x9, [x9, #640]
  0x8021c3c2c:  f000bca0    adrp x0, #24735744
  0x8021c3c30:  91004108    add x8, x8, #16
  0x8021c3c34:  f9000128    str x8, [x9]
  0x8021c3c38:  f9414400    ldr x0, [x0, #648]
  0x8021c3c3c:  94277f5d    bl #10354036
  0x8021c3c40:  17ffff13    b #-948
  0x8021c3c44:  f000bca0    adrp x0, #24735744
  0x8021c3c48:  f9414400    ldr x0, [x0, #648]
  0x8021c3c4c:  94277f55    bl #10354004
  0x8021c3c50:  34ffe4a0    cbz w0, #-876
  0x8021c3c54:  9000bc48    adrp x8, #24674304
  0x8021c3c58:  f000bca9    adrp x9, #24735744
  0x8021c3c5c:  f944ad08    ldr x8, [x8, #2392]
  0x8021c3c60:  f9414129    ldr x9, [x9, #640]
  0x8021c3c64:  f000bca0    adrp x0, #24735744
  0x8021c3c68:  91004108    add x8, x8, #16
  0x8021c3c6c:  f9000128    str x8, [x9]
  0x8021c3c70:  f9414400    ldr x0, [x0, #648]
  0x8021c3c74:  94277f4f    bl #10353980
  0x8021c3c78:  17ffff1b    b #-916
  0x8021c3c7c:  f000bca0    adrp x0, #24735744
  0x8021c3c80:  f9414400    ldr x0, [x0, #648]
  0x8021c3c84:  94277f47    bl #10353948
  0x8021c3c88:  34ffe5a0    cbz w0, #-844
  0x8021c3c8c:  9000bc48    adrp x8, #24674304
  0x8021c3c90:  f000bca9    adrp x9, #24735744
  0x8021c3c94:  f944ad08    ldr x8, [x8, #2392]
  0x8021c3c98:  f9414129    ldr x9, [x9, #640]
  0x8021c3c9c:  f000bca0    adrp x0, #24735744
  0x8021c3ca0:  91004108    add x8, x8, #16
  0x8021c3ca4:  f9000128    str x8, [x9]
  0x8021c3ca8:  f9414400    ldr x0, [x0, #648]
  0x8021c3cac:  94277f41    bl #10353924
  0x8021c3cb0:  17ffff23    b #-884
  0x8021c3cb4:  f000bca0    adrp x0, #24735744
  0x8021c3cb8:  f9414400    ldr x0, [x0, #648]
  0x8021c3cbc:  94277f39    bl #10353892
  0x8021c3cc0:  34ffe6a0    cbz w0, #-812
  0x8021c3cc4:  f000bca8    adrp x8, #24735744
  0x8021c3cc8:  9000bc49    adrp x9, #24674304
  0x8021c3ccc:  f9414108    ldr x8, [x8, #640]
  0x8021c3cd0:  f944ad29    ldr x9, [x9, #2392]
  0x8021c3cd4:  f000bca0    adrp x0, #24735744
  0x8021c3cd8:  91004129    add x9, x9, #16
  0x8021c3cdc:  f9000109    str x9, [x8]
  0x8021c3ce0:  f9414400    ldr x0, [x0, #648]
  0x8021c3ce4:  94277f33    bl #10353868
  0x8021c3ce8:  17ffff2b    b #-852
  0x8021c3cec:  f940a908    ldr x8, [x8, #336]
  0x8021c3cf0:  b4ffaa48    cbz x8, #-2744
  0x8021c3cf4:  7100569f    cmp w20, #21
  0x8021c3cf8:  54000f80    b.eq #496
  0x8021c3cfc:  7100529f    cmp w20, #20
  0x8021c3d00:  54000fa0    b.eq #500
  0x8021c3d04:  7100269f    cmp w20, #9
  0x8021c3d08:  54ffaa81    b.ne #-2736
  0x8021c3d0c:  aa0803e0    mov x0, x8
  0x8021c3d10:  97ff8570    bl #-125504
  0x8021c3d14:  14000039    b #228
  0x8021c3d18:  f9400109    ldr x9, [x8]
  0x8021c3d1c:  2a1403e1    mov w1, w20
  0x8021c3d20:  2a1503e2    mov w2, w21
  0x8021c3d24:  6d4223e9    ldp d9, d8, [sp, #32]
  0x8021c3d28:  aa0803e0    mov x0, x8
  0x8021c3d2c:  6d412beb    ldp d11, d10, [sp, #16]
  0x8021c3d30:  f9401d23    ldr x3, [x9, #56]
  0x8021c3d34:  a9464ff4    ldp x20, x19, [sp, #96]
  0x8021c3d38:  a94557f6    ldp x22, x21, [sp, #80]
  0x8021c3d3c:  a9445ff8    ldp x24, x23, [sp, #64]
  0x8021c3d40:  a9437bfd    ldp x29, x30, [sp, #48]
  0x8021c3d44:  9101c3ff    add sp, sp, #112
  0x8021c3d48:  d61f0060    br x3
  0x8021c3d4c:  52a85688    mov w8, #1119092736
  0x8021c3d50:  1e270108    fmov s8, w8
  0x8021c3d54:  17fffd84    b #-2544
  0x8021c3d58:  1e292140    fcmp s10, s9
  0x8021c3d5c:  54ffac0a    b.ge #-2688
  0x8021c3d60:  aa1603e0    mov x0, x22
  0x8021c3d64:  2a1403e1    mov w1, w20
  0x8021c3d68:  2a1503e2    mov w2, w21
  0x8021c3d6c:  9793abb5    bl #-28397868
  0x8021c3d70:  f9405260    ldr x0, [x19, #160]
  0x8021c3d74:  1e204008    fmov s8, s0
  0x8021c3d78:  17fffd97    b #-2468
  0x8021c3d7c:  f000bca0    adrp x0, #24735744
  0x8021c3d80:  f940e000    ldr x0, [x0, #448]
  0x8021c3d84:  94277f07    bl #10353692
  0x8021c3d88:  34ffebc0    cbz w0, #-648
  0x8021c3d8c:  9000bc48    adrp x8, #24674304
  0x8021c3d90:  f000bca0    adrp x0, #24735744
  0x8021c3d94:  f944ad08    ldr x8, [x8, #2392]
  0x8021c3d98:  91004108    add x8, x8, #16
  0x8021c3d9c:  f9000268    str x8, [x19]
  0x8021c3da0:  f940e000    ldr x0, [x0, #448]
  0x8021c3da4:  94277f03    bl #10353676
  0x8021c3da8:  17ffff56    b #-680
  0x8021c3dac:  1e292140    fcmp s10, s9
  0x8021c3db0:  5400028a    b.ge #80
  0x8021c3db4:  910022c0    add x0, x22, #8
  0x8021c3db8:  2a1403e1    mov w1, w20
  0x8021c3dbc:  2a1503e2    mov w2, w21
  0x8021c3dc0:  97ffcaf9    bl #-54300
  0x8021c3dc4:  9103c2c0    add x0, x22, #240
  0x8021c3dc8:  2a1403e1    mov w1, w20
  0x8021c3dcc:  1e204008    fmov s8, s0
  0x8021c3dd0:  2a1503e2    mov w2, w21
  0x8021c3dd4:  97ffcaf4    bl #-54320
  0x8021c3dd8:  17fffd82    b #-2552
  0x8021c3ddc:  f94016c8    ldr x8, [x22, #40]
  0x8021c3de0:  f940a900    ldr x0, [x8, #336]
  0x8021c3de4:  97ffa10f    bl #-97220
  0x8021c3de8:  14000004    b #16
  0x8021c3dec:  f94016c8    ldr x8, [x22, #40]
  0x8021c3df0:  f940a900    ldr x0, [x8, #336]
  0x8021c3df4:  97ffa0f6    bl #-97320
  0x8021c3df8:  bd400008    ldr s8, [x0]
  0x8021c3dfc:  17fffd5a    b #-2712
  0x8021c3e00:  9103c2c0    add x0, x22, #240
  0x8021c3e04:  2a1403e1    mov w1, w20
  0x8021c3e08:  2a1503e2    mov w2, w21
  0x8021c3e0c:  97ffcae6    bl #-54376
  0x8021c3e10:  17fffd36    b #-2856
  0x8021c3e14:  f000bca0    adrp x0, #24735744
  0x8021c3e18:  f940e000    ldr x0, [x0, #448]
  0x8021c3e1c:  94277ee1    bl #10353540
  0x8021c3e20:  34ffe920    cbz w0, #-732
  0x8021c3e24:  9000bc48    adrp x8, #24674304
  0x8021c3e28:  f000bca0    adrp x0, #24735744
  0x8021c3e2c:  f944ad08    ldr x8, [x8, #2392]
  0x8021c3e30:  91004108    add x8, x8, #16
  0x8021c3e34:  f9000268    str x8, [x19]
  0x8021c3e38:  f940e000    ldr x0, [x0, #448]
  0x8021c3e3c:  94277edd    bl #10353524
  0x8021c3e40:  17ffff41    b #-764
  0x8021c3e44:  f000bca0    adrp x0, #24735744
  0x8021c3e48:  f940e000    ldr x0, [x0, #448]
  0x8021c3e4c:  94277ed5    bl #10353492
  0x8021c3e50:  34ffe9c0    cbz w0, #-712
  0x8021c3e54:  9000bc48    adrp x8, #24674304
  0x8021c3e58:  f000bca0    adrp x0, #24735744
  0x8021c3e5c:  f944ad08    ldr x8, [x8, #2392]
  0x8021c3e60:  91004108    add x8, x8, #16
  0x8021c3e64:  f9000268    str x8, [x19]
  0x8021c3e68:  f940e000    ldr x0, [x0, #448]
  0x8021c3e6c:  94277ed1    bl #10353476
  0x8021c3e70:  17ffff46    b #-744
  0x8021c3e74:  f9400268    ldr x8, [x19]
  0x8021c3e78:  2f00e400    movi d0, #0000000000000000
  0x8021c3e7c:  f9400508    ldr x8, [x8, #8]
  0x8021c3e80:  b4ffa6e8    cbz x8, #-2852
  0x8021c3e84:  f940a900    ldr x0, [x8, #336]
  0x8021c3e88:  b4ffa6a0    cbz x0, #-2860
  0x8021c3e8c:  97ff75ef    bl #-141380
  0x8021c3e90:  bd400000    ldr s0, [x0]
  0x8021c3e94:  17fffd32    b #-2872
  0x8021c3e98:  f9400268    ldr x8, [x19]
  0x8021c3e9c:  1e204009    fmov s9, s0
  0x8021c3ea0:  2f00e40a    movi d10, #0000000000000000
  0x8021c3ea4:  2f00e40b    movi d11, #0000000000000000
  0x8021c3ea8:  f9400508    ldr x8, [x8, #8]
  0x8021c3eac:  b40000a8    cbz x8, #20
  0x8021c3eb0:  f940a900    ldr x0, [x8, #336]
  0x8021c3eb4:  b4000060    cbz x0, #12
  0x8021c3eb8:  97ff75e4    bl #-141424
  0x8021c3ebc:  bd40000b    ldr s11, [x0]
  0x8021c3ec0:  f9400668    ldr x8, [x19, #8]
  0x8021c3ec4:  f9400508    ldr x8, [x8, #8]
  0x8021c3ec8:  b40000a8    cbz x8, #20
  0x8021c3ecc:  f940a900    ldr x0, [x8, #336]
  0x8021c3ed0:  b4000060    cbz x0, #12
  0x8021c3ed4:  97ff75dd    bl #-141452
  0x8021c3ed8:  bd40000a    ldr s10, [x0]
  0x8021c3edc:  1e2b3940    fsub s0, s10, s11
  0x8021c3ee0:  1f092c00    fmadd s0, s0, s9, s11
  0x8021c3ee4:  17fffd1e    b #-2952
  0x8021c3ee8:  aa0803e0    mov x0, x8
  0x8021c3eec:  97ff853b    bl #-125716
  0x8021c3ef0:  17ffffc2    b #-248
  0x8021c3ef4:  aa0803e0    mov x0, x8
  0x8021c3ef8:  97ff8517    bl #-125860
  0x8021c3efc:  17ffffbf    b #-260
  0x8021c3f00:  f9400108    ldr x8, [x8]
  0x8021c3f04:  f9400509    ldr x9, [x8, #8]
  0x8021c3f08:  b4ffa2e9    cbz x9, #-2980
  0x8021c3f0c:  f940a929    ldr x9, [x9, #336]
  0x8021c3f10:  b4ffa2a9    cbz x9, #-2988
  0x8021c3f14:  39400108    ldrb w8, [x8]
  0x8021c3f18:  1e2e1000    fmov s0, #1.00000000
  0x8021c3f1c:  17fffd65    b #-2668
  0x8021c3f20:  f9400109    ldr x9, [x8]
  0x8021c3f24:  2f00e402    movi d2, #0000000000000000
  0x8021c3f28:  2f00e403    movi d3, #0000000000000000
  0x8021c3f2c:  f940052a    ldr x10, [x9, #8]
  0x8021c3f30:  b40000ca    cbz x10, #24
  0x8021c3f34:  f940a94a    ldr x10, [x10, #336]
  0x8021c3f38:  b400008a    cbz x10, #16
  0x8021c3f3c:  39400129    ldrb w9, [x9]
  0x8021c3f40:  7200013f    tst w9, #0x1
  0x8021c3f44:  1e200c63    fcsel s3, s3, s0, eq
  0x8021c3f48:  f9400508    ldr x8, [x8, #8]
  0x8021c3f4c:  f9400509    ldr x9, [x8, #8]
  0x8021c3f50:  b40000c9    cbz x9, #24
  0x8021c3f54:  f940a929    ldr x9, [x9, #336]
  0x8021c3f58:  b4000089    cbz x9, #16
  0x8021c3f5c:  39400108    ldrb w8, [x8]
  0x8021c3f60:  7200011f    tst w8, #0x1
  0x8021c3f64:  1e200c42    fcsel s2, s2, s0, eq
  0x8021c3f68:  1e233840    fsub s0, s2, s3
  0x8021c3f6c:  1f010c00    fmadd s0, s0, s1, s3
  0x8021c3f70:  17fffcfe    b #-3080
  0x8021c3f74:  f9400aa8    ldr x8, [x21, #16]
  0x8021c3f78:  b4ffae68    cbz x8, #-2612
  0x8021c3f7c:  f9400ea8    ldr x8, [x21, #24]
  0x8021c3f80:  b4ffae28    cbz x8, #-2620
  0x8021c3f84:  b9400d09    ldr w9, [x8, #12]
  0x8021c3f88:  b94022aa    ldr w10, [x21, #32]
  0x8021c3f8c:  6b0a013f    cmp w9, w10
  0x8021c3f90:  54ffada1    b.ne #-2636
  0x8021c3f94:  f9400114    ldr x20, [x8]
  0x8021c3f98:  b4ffad74    cbz x20, #-2644
  0x8021c3f9c:  97ff817e    bl #-129544
  0x8021c3fa0:  f9400288    ldr x8, [x20]
  0x8021c3fa4:  aa0003e1    mov x1, x0
  0x8021c3fa8:  aa1403e0    mov x0, x20
  0x8021c3fac:  f9400108    ldr x8, [x8]
  0x8021c3fb0:  d63f0100    blr x8
  0x8021c3fb4:  b5ffac20    cbnz x0, #-2684
  0x8021c3fb8:  17fffd63    b #-2676
  0x8021c3fbc:  f9400268    ldr x8, [x19]
  0x8021c3fc0:  2f00e400    movi d0, #0000000000000000
  0x8021c3fc4:  f9400508    ldr x8, [x8, #8]
  0x8021c3fc8:  b4ffb868    cbz x8, #-2292
  0x8021c3fcc:  f940a900    ldr x0, [x8, #336]
  0x8021c3fd0:  b4ffb820    cbz x0, #-2300
  0x8021c3fd4:  97ff74ef    bl #-142404
  0x8021c3fd8:  1400003d    b #244
  0x8021c3fdc:  f9400268    ldr x8, [x19]
  0x8021c3fe0:  1e204009    fmov s9, s0
  0x8021c3fe4:  2f00e40a    movi d10, #0000000000000000
  0x8021c3fe8:  2f00e40b    movi d11, #0000000000000000
  0x8021c3fec:  f9400508    ldr x8, [x8, #8]
  0x8021c3ff0:  b40000a8    cbz x8, #20
  0x8021c3ff4:  f940a900    ldr x0, [x8, #336]
  0x8021c3ff8:  b4000060    cbz x0, #12
  0x8021c3ffc:  97ff74e5    bl #-142444
  0x8021c4000:  bd40000b    ldr s11, [x0]
  0x8021c4004:  f9400668    ldr x8, [x19, #8]
  0x8021c4008:  f9400508    ldr x8, [x8, #8]
  0x8021c400c:  b4000868    cbz x8, #268
  0x8021c4010:  f940a900    ldr x0, [x8, #336]
  0x8021c4014:  b4000820    cbz x0, #260
  0x8021c4018:  97ff74de    bl #-142472
  0x8021c401c:  1400003e    b #248
  0x8021c4020:  f9400a88    ldr x8, [x20, #16]
  0x8021c4024:  b4ffab28    cbz x8, #-2716
  0x8021c4028:  f9400e88    ldr x8, [x20, #24]
  0x8021c402c:  b4ffaae8    cbz x8, #-2724
  0x8021c4030:  b9400d09    ldr w9, [x8, #12]
  0x8021c4034:  b940228a    ldr w10, [x20, #32]
  0x8021c4038:  6b0a013f    cmp w9, w10
  0x8021c403c:  54ffaa61    b.ne #-2740
  0x8021c4040:  f9400113    ldr x19, [x8]
  0x8021c4044:  b4ffaa33    cbz x19, #-2748
  0x8021c4048:  97ff7381    bl #-143868
  0x8021c404c:  f9400268    ldr x8, [x19]
  0x8021c4050:  aa0003e1    mov x1, x0
  0x8021c4054:  aa1303e0    mov x0, x19
  0x8021c4058:  f9400108    ldr x8, [x8]
  0x8021c405c:  d63f0100    blr x8
  0x8021c4060:  b5ffa8e0    cbnz x0, #-2788
  0x8021c4064:  17fffd49    b #-2780
  0x8021c4068:  f9400aa8    ldr x8, [x21, #16]
  0x8021c406c:  b4ffaa48    cbz x8, #-2744
  0x8021c4070:  f9400ea8    ldr x8, [x21, #24]
  0x8021c4074:  b4ffaa08    cbz x8, #-2752
  0x8021c4078:  b9400d09    ldr w9, [x8, #12]
  0x8021c407c:  b94022aa    ldr w10, [x21, #32]
  0x8021c4080:  6b0a013f    cmp w9, w10
  0x8021c4084:  54ffa981    b.ne #-2768
  0x8021c4088:  f9400114    ldr x20, [x8]
  0x8021c408c:  b4ffa954    cbz x20, #-2776
  0x8021c4090:  97ff8141    bl #-129788
  0x8021c4094:  f9400288    ldr x8, [x20]
  0x8021c4098:  aa0003e1    mov x1, x0
  0x8021c409c:  aa1403e0    mov x0, x20
  0x8021c40a0:  f9400108    ldr x8, [x8]
  0x8021c40a4:  d63f0100    blr x8
  0x8021c40a8:  b5ffa800    cbnz x0, #-2816
  0x8021c40ac:  17fffd42    b #-2808
  0x8021c40b0:  f9400268    ldr x8, [x19]
  0x8021c40b4:  2f00e400    movi d0, #0000000000000000
  0x8021c40b8:  f9400508    ldr x8, [x8, #8]
  0x8021c40bc:  b4ffb0c8    cbz x8, #-2536
  0x8021c40c0:  f940a900    ldr x0, [x8, #336]
  0x8021c40c4:  b4ffb080    cbz x0, #-2544
  0x8021c40c8:  97ff74d0    bl #-142528
  0x8021c40cc:  bd400000    ldr s0, [x0]
  0x8021c40d0:  17fffd81    b #-2556
  0x8021c40d4:  f9400268    ldr x8, [x19]
  0x8021c40d8:  1e204009    fmov s9, s0
  0x8021c40dc:  2f00e40a    movi d10, #0000000000000000
  0x8021c40e0:  2f00e40b    movi d11, #0000000000000000
  0x8021c40e4:  f9400508    ldr x8, [x8, #8]
  0x8021c40e8:  b40000a8    cbz x8, #20
  0x8021c40ec:  f940a900    ldr x0, [x8, #336]
  0x8021c40f0:  b4000060    cbz x0, #12
  0x8021c40f4:  97ff74c5    bl #-142572
  0x8021c40f8:  bd40000b    ldr s11, [x0]
  0x8021c40fc:  f9400668    ldr x8, [x19, #8]
  0x8021c4100:  f9400508    ldr x8, [x8, #8]
  0x8021c4104:  b40000a8    cbz x8, #20
  0x8021c4108:  f940a900    ldr x0, [x8, #336]
  0x8021c410c:  b4000060    cbz x0, #12
  0x8021c4110:  97ff74be    bl #-142600
  0x8021c4114:  bd40000a    ldr s10, [x0]
  0x8021c4118:  1e2b3940    fsub s0, s10, s11
  0x8021c411c:  1f092c00    fmadd s0, s0, s9, s11
  0x8021c4120:  17fffd6d    b #-2636
  0x8021c4124:  f9400a88    ldr x8, [x20, #16]
  0x8021c4128:  b4ffa688    cbz x8, #-2864
  0x8021c412c:  f9400e88    ldr x8, [x20, #24]
  0x8021c4130:  b4ffa648    cbz x8, #-2872
  0x8021c4134:  b9400d09    ldr w9, [x8, #12]
  0x8021c4138:  b940228a    ldr w10, [x20, #32]
  0x8021c413c:  6b0a013f    cmp w9, w10
  0x8021c4140:  54ffa5c1    b.ne #-2888
  0x8021c4144:  f9400113    ldr x19, [x8]
  0x8021c4148:  b4ffa593    cbz x19, #-2896
  0x8021c414c:  97ff7340    bl #-144128
  0x8021c4150:  f9400268    ldr x8, [x19]
  0x8021c4154:  aa0003e1    mov x1, x0
  0x8021c4158:  aa1303e0    mov x0, x19
  0x8021c415c:  f9400108    ldr x8, [x8]
  0x8021c4160:  d63f0100    blr x8
  0x8021c4164:  b5ffa440    cbnz x0, #-2936
  0x8021c4168:  17fffd24    b #-2928
  0x8021c416c:  f9400aa8    ldr x8, [x21, #16]
  0x8021c4170:  b4ffa5a8    cbz x8, #-2892
  0x8021c4174:  f9400ea8    ldr x8, [x21, #24]
  0x8021c4178:  b4ffa568    cbz x8, #-2900
  0x8021c417c:  b9400d09    ldr w9, [x8, #12]
  0x8021c4180:  b94022aa    ldr w10, [x21, #32]
  0x8021c4184:  6b0a013f    cmp w9, w10
  0x8021c4188:  54ffa4e1    b.ne #-2916
  0x8021c418c:  f9400114    ldr x20, [x8]
  0x8021c4190:  b4ffa4b4    cbz x20, #-2924
  0x8021c4194:  97ff8100    bl #-130048
  0x8021c4198:  f9400288    ldr x8, [x20]
  0x8021c419c:  aa0003e1    mov x1, x0
  0x8021c41a0:  aa1403e0    mov x0, x20
  0x8021c41a4:  f9400108    ldr x8, [x8]
  0x8021c41a8:  d63f0100    blr x8
  0x8021c41ac:  b5ffa360    cbnz x0, #-2964
  0x8021c41b0:  17fffd1d    b #-2956
  0x8021c41b4:  f9400268    ldr x8, [x19]
  0x8021c41b8:  1e204009    fmov s9, s0
  0x8021c41bc:  2f00e401    movi d1, #0000000000000000
  0x8021c41c0:  f9400508    ldr x8, [x8, #8]
  0x8021c41c4:  b40000c8    cbz x8, #24
  0x8021c41c8:  f940a900    ldr x0, [x8, #336]
  0x8021c41cc:  1e204120    fmov s0, s9
  0x8021c41d0:  b4ffa4c0    cbz x0, #-2920
  0x8021c41d4:  97ff7451    bl #-143036
  0x8021c41d8:  bd400001    ldr s1, [x0]
  0x8021c41dc:  1e204120    fmov s0, s9
  0x8021c41e0:  17fffd22    b #-2936
  0x8021c41e4:  f9400268    ldr x8, [x19]
  0x8021c41e8:  1e204029    fmov s9, s1
  0x8021c41ec:  2f00e40a    movi d10, #0000000000000000
  0x8021c41f0:  2f00e40b    movi d11, #0000000000000000
  0x8021c41f4:  bd000fe0    str s0, [sp, #12]
  0x8021c41f8:  f9400508    ldr x8, [x8, #8]
  0x8021c41fc:  b40000a8    cbz x8, #20
  0x8021c4200:  f940a900    ldr x0, [x8, #336]
  0x8021c4204:  b4000060    cbz x0, #12
  0x8021c4208:  97ff7444    bl #-143088
  0x8021c420c:  bd40000b    ldr s11, [x0]
  0x8021c4210:  f9400668    ldr x8, [x19, #8]
  0x8021c4214:  f9400508    ldr x8, [x8, #8]
  0x8021c4218:  b40000a8    cbz x8, #20
  0x8021c421c:  f940a900    ldr x0, [x8, #336]
  0x8021c4220:  b4000060    cbz x0, #12
  0x8021c4224:  97ff743d    bl #-143116
  0x8021c4228:  bd40000a    ldr s10, [x0]
  0x8021c422c:  1e2b3940    fsub s0, s10, s11
  0x8021c4230:  1f092c01    fmadd s1, s0, s9, s11
  0x8021c4234:  bd400fe0    ldr s0, [sp, #12]
  0x8021c4238:  17fffd0c    b #-3024
  0x8021c423c:  f9400a88    ldr x8, [x20, #16]
  0x8021c4240:  b4ffa128    cbz x8, #-3036
  0x8021c4244:  f9400e88    ldr x8, [x20, #24]
  0x8021c4248:  b4ffa0e8    cbz x8, #-3044
  0x8021c424c:  b9400d09    ldr w9, [x8, #12]
  0x8021c4250:  b940228a    ldr w10, [x20, #32]
  0x8021c4254:  6b0a013f    cmp w9, w10
  0x8021c4258:  54ffa061    b.ne #-3060
  0x8021c425c:  f9400113    ldr x19, [x8]
  0x8021c4260:  b4ffa033    cbz x19, #-3068
  0x8021c4264:  1e204009    fmov s9, s0
  0x8021c4268:  97ff72f9    bl #-144412
  0x8021c426c:  f9400268    ldr x8, [x19]
  0x8021c4270:  aa0003e1    mov x1, x0
  0x8021c4274:  aa1303e0    mov x0, x19
  0x8021c4278:  f9400108    ldr x8, [x8]
  0x8021c427c:  d63f0100    blr x8
  0x8021c4280:  1e204120    fmov s0, s9
  0x8021c4284:  b5ff9ea0    cbnz x0, #-3116
  0x8021c4288:  17fffcf7    b #-3108
  0x8021c428c:  f9400a88    ldr x8, [x20, #16]
  0x8021c4290:  b4ffa048    cbz x8, #-3064
  0x8021c4294:  f9400e88    ldr x8, [x20, #24]
  0x8021c4298:  b4ffa008    cbz x8, #-3072
  0x8021c429c:  b9400d09    ldr w9, [x8, #12]
  0x8021c42a0:  b940228a    ldr w10, [x20, #32]
  0x8021c42a4:  6b0a013f    cmp w9, w10
  0x8021c42a8:  54ff9f81    b.ne #-3088
  0x8021c42ac:  f9400113    ldr x19, [x8]
  0x8021c42b0:  b4ff9f53    cbz x19, #-3096
  0x8021c42b4:  97ff80b8    bl #-130336
  0x8021c42b8:  f9400268    ldr x8, [x19]
  0x8021c42bc:  aa0003e1    mov x1, x0
  0x8021c42c0:  aa1303e0    mov x0, x19
  0x8021c42c4:  f9400108    ldr x8, [x8]
  0x8021c42c8:  d63f0100    blr x8
  0x8021c42cc:  b5ff9e00    cbnz x0, #-3136
  0x8021c42d0:  17fffcf2    b #-3128
  0x8021c42d4:  f9400a88    ldr x8, [x20, #16]
  0x8021c42d8:  b4ff9f68    cbz x8, #-3092
  0x8021c42dc:  f9400e88    ldr x8, [x20, #24]
  0x8021c42e0:  b4ff9f28    cbz x8, #-3100
  0x8021c42e4:  b9400d09    ldr w9, [x8, #12]
  0x8021c42e8:  b940228a    ldr w10, [x20, #32]
  0x8021c42ec:  6b0a013f    cmp w9, w10
  0x8021c42f0:  54ff9ea1    b.ne #-3116
  0x8021c42f4:  f9400113    ldr x19, [x8]
  0x8021c42f8:  b4ff9e73    cbz x19, #-3124
  0x8021c42fc:  97ff80a6    bl #-130408
  0x8021c4300:  f9400268    ldr x8, [x19]
  0x8021c4304:  aa0003e1    mov x1, x0
  0x8021c4308:  aa1303e0    mov x0, x19
  0x8021c430c:  f9400108    ldr x8, [x8]
  0x8021c4310:  d63f0100    blr x8
  0x8021c4314:  b5ff9d20    cbnz x0, #-3164
  0x8021c4318:  17fffceb    b #-3156
  0x8021c431c:  f9403268    ldr x8, [x19, #96]
  0x8021c4320:  f940a900    ldr x0, [x8, #336]
  0x8021c4324:  97ff4966    bl #-186984
  0x8021c4328:  17fffeb4    b #-1328
  0x8021c432c:  f9403268    ldr x8, [x19, #96]
  0x8021c4330:  f940a900    ldr x0, [x8, #336]
  0x8021c4334:  97ff499a    bl #-186776
  0x8021c4338:  17fffeb0    b #-1344
  0x8021c433c:  f9403268    ldr x8, [x19, #96]
  0x8021c4340:  f940a900    ldr x0, [x8, #336]
  0x8021c4344:  97ff49b2    bl #-186680
  0x8021c4348:  17fffeac    b #-1360
  0x8021c434c:  f9403268    ldr x8, [x19, #96]
  0x8021c4350:  f940a900    ldr x0, [x8, #336]
  0x8021c4354:  97ff49ca    bl #-186584
  0x8021c4358:  17fffea8    b #-1376

