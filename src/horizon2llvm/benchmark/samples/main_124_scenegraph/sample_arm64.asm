; UltraTears chunk main_124_scenegraph: 1 functions [0x8001e8260..0x8001ea404)

; Function f_8001e8260 [0x8001e8260..0x8001ea404)
f_8001e8260:
  0x8001e8260:  a9ba7bfd    stp x29, x30, [sp, #-96]!
  0x8001e8264:  a9016ffc    stp x28, x27, [sp, #16]
  0x8001e8268:  910003fd    mov x29, sp
  0x8001e826c:  a90267fa    stp x26, x25, [sp, #32]
  0x8001e8270:  a9035ff8    stp x24, x23, [sp, #48]
  0x8001e8274:  a90457f6    stp x22, x21, [sp, #64]
  0x8001e8278:  a9054ff4    stp x20, x19, [sp, #80]
  0x8001e827c:  d10843ff    sub sp, sp, #528
  0x8001e8280:  aa0203f4    mov x20, x2
  0x8001e8284:  aa0103f7    mov x23, x1
  0x8001e8288:  b900bbe3    str w3, [sp, #184]
  0x8001e828c:  aa0003f3    mov x19, x0
  0x8001e8290:  b400a041    cbz x1, #5128
  0x8001e8294:  394572e0    ldrb w0, [x23, #348]
  0x8001e8298:  36009f43    tbz w3, #0, #5096
  0x8001e829c:  93407c08    sxtw x8, w0
  0x8001e82a0:  f940028a    ldr x10, [x20]
  0x8001e82a4:  f90063e8    str x8, [sp, #192]
  0x8001e82a8:  f81183bf    stur xzr, [x29, #-232]
  0x8001e82ac:  f001bb0c    adrp x12, #58077184
  0x8001e82b0:  29414288    ldp w8, w16, [x20, #8]
  0x8001e82b4:  b81203bf    stur wzr, [x29, #-224]
  0x8001e82b8:  29426689    ldp w9, w25, [x20, #16]
  0x8001e82bc:  a932ffbf    stp xzr, xzr, [x29, #-216]
  0x8001e82c0:  f940128f    ldr x15, [x20, #32]
  0x8001e82c4:  2943569a    ldp w26, w21, [x20, #24]
  0x8001e82c8:  f9006bea    str x10, [sp, #208]
  0x8001e82cc:  f90073ea    str x10, [sp, #224]
  0x8001e82d0:  2945ae8a    ldp w10, w11, [x20, #44]
  0x8001e82d4:  f81383bf    stur xzr, [x29, #-200]
  0x8001e82d8:  b81403bf    stur wzr, [x29, #-192]
  0x8001e82dc:  f945bd8c    ldr x12, [x12, #2936]
  0x8001e82e0:  a90adff3    stp x19, x23, [sp, #168]
  0x8001e82e4:  a934b3bf    stp xzr, x12, [x29, #-184]
  0x8001e82e8:  b962926c    ldr w12, [x19, #8848]
  0x8001e82ec:  3700b7cb    tbnz w11, #0, #5880
  0x8001e82f0:  5304118d    ubfx w13, w12, #4, #1
  0x8001e82f4:  b9010be8    str w8, [sp, #264]
  0x8001e82f8:  12800008    mov w8, #-1
  0x8001e82fc:  321f01ae    orr w14, w13, #0x2
  0x8001e8300:  b9010ff0    str w16, [sp, #268]
  0x8001e8304:  f10001ff    cmp x15, #0
  0x8001e8308:  1a8e01ad    csel w13, w13, w14, eq
  0x8001e830c:  b90113e9    str w9, [sp, #272]
  0x8001e8310:  53037d6e    lsr w14, w11, #3
  0x8001e8314:  531d716b    lsl w11, w11, #3
  0x8001e8318:  b90117f9    str w25, [sp, #276]
  0x8001e831c:  a950f3f6    ldp x22, x28, [sp, #264]
  0x8001e8320:  b9011bea    str w10, [sp, #280]
  0x8001e8324:  53057d8c    lsr w12, w12, #5
  0x8001e8328:  121c016b    and w11, w11, #0x10
  0x8001e832c:  9ad65d08    .word 0x9ad65d08
  0x8001e8330:  79023bfa    strh w26, [sp, #284]
  0x8001e8334:  121e058c    and w12, w12, #0xc
  0x8001e8338:  79023ff5    strh w21, [sp, #286]
  0x8001e833c:  f9408ff8    ldr x24, [sp, #280]
  0x8001e8340:  331b01cb    bfi w11, w14, #5, #1
  0x8001e8344:  2a0d018c    orr w12, w12, w13
  0x8001e8348:  2a0c017b    orr w27, w11, w12
  0x8001e834c:  f94057f3    ldr x19, [sp, #168]
  0x8001e8350:  9adc5d08    .word 0x9adc5d08
  0x8001e8354:  f90053ef    str x15, [sp, #160]
  0x8001e8358:  b900cff0    str w16, [sp, #204]
  0x8001e835c:  b90123fb    str w27, [sp, #288]
  0x8001e8360:  9ad85d08    .word 0x9ad85d08
  0x8001e8364:  1adb5914    .word 0x1adb5914
  0x8001e8368:  52844a08    mov w8, #8784
  0x8001e836c:  8b080260    add x0, x19, x8
  0x8001e8370:  f9006fe0    str x0, [sp, #216]
  0x8001e8374:  2a3403f7    mvn w23, w20
  0x8001e8378:  b90127f7    str w23, [sp, #292]
  0x8001e837c:  94a6ef39    bl #43760868
  0x8001e8380:  52801fe8    mov w8, #255
  0x8001e8384:  9128e26e    add x14, x19, #2616
  0x8001e8388:  f9002fee    str x14, [sp, #88]
  0x8001e838c:  0a34010a    bic w10, w8, w20
  0x8001e8390:  52800308    mov w8, #24
  0x8001e8394:  9ba8394c    umaddl x12, w10, w8, x14
  0x8001e8398:  2a1703ef    mov w15, w23
  0x8001e839c:  2a1b03f7    mov w23, w27
  0x8001e83a0:  b90057ef    str w15, [sp, #84]
  0x8001e83a4:  aa1603fb    mov x27, x22
  0x8001e83a8:  b9401188    ldr w8, [x12, #16]
  0x8001e83ac:  340005c8    cbz w8, #184
  0x8001e83b0:  f940058d    ldr x13, [x12, #8]
  0x8001e83b4:  eb0c01bf    cmp x13, x12
  0x8001e83b8:  54000560    b.eq #172
  0x8001e83bc:  5280030b    mov w11, #24
  0x8001e83c0:  b940cff0    ldr w16, [sp, #204]
  0x8001e83c4:  12003f48    and w8, w26, #0xffff
  0x8001e83c8:  9bab394a    umaddl x10, w10, w11, x14
  0x8001e83cc:  12003ea9    and w9, w21, #0xffff
  0x8001e83d0:  b980154a    ldrsw x10, [x10, #20]
  0x8001e83d4:  cb0a03eb    neg x11, x10
  0x8001e83d8:  cb0a018c    sub x12, x12, x10
  0x8001e83dc:  cb0a01b5    sub x21, x13, x10
  0x8001e83e0:  b94166ad    ldr w13, [x21, #356]
  0x8001e83e4:  6b0f01bf    cmp w13, w15
  0x8001e83e8:  54000341    b.ne #104
  0x8001e83ec:  b9414aad    ldr w13, [x21, #328]
  0x8001e83f0:  6b1b01bf    cmp w13, w27
  0x8001e83f4:  540002e1    b.ne #92
  0x8001e83f8:  b9414ead    ldr w13, [x21, #332]
  0x8001e83fc:  6b1001bf    cmp w13, w16
  0x8001e8400:  54000281    b.ne #80
  0x8001e8404:  b94152ad    ldr w13, [x21, #336]
  0x8001e8408:  6b1c01bf    cmp w13, w28
  0x8001e840c:  54000221    b.ne #68
  0x8001e8410:  b94156ad    ldr w13, [x21, #340]
  0x8001e8414:  6b1901bf    cmp w13, w25
  0x8001e8418:  540001c1    b.ne #56
  0x8001e841c:  b9415aad    ldr w13, [x21, #344]
  0x8001e8420:  6b1801bf    cmp w13, w24
  0x8001e8424:  54000161    b.ne #44
  0x8001e8428:  7942baad    ldrh w13, [x21, #348]
  0x8001e842c:  6b0801bf    cmp w13, w8
  0x8001e8430:  54000101    b.ne #32
  0x8001e8434:  7942bead    ldrh w13, [x21, #350]
  0x8001e8438:  6b0901bf    cmp w13, w9
  0x8001e843c:  540000a1    b.ne #20
  0x8001e8440:  b94162ad    ldr w13, [x21, #352]
  0x8001e8444:  6b1701bf    cmp w13, w23
  0x8001e8448:  54000740    b.eq #232
  0x8001e844c:  d503201f    nop
  0x8001e8450:  8b0a02ad    add x13, x21, x10
  0x8001e8454:  f94005ad    ldr x13, [x13, #8]
  0x8001e8458:  8b0b01b5    add x21, x13, x11
  0x8001e845c:  eb0c02bf    cmp x21, x12
  0x8001e8460:  54fffc01    b.ne #-128
  0x8001e8464:  f951226c    ldr x12, [x19, #8768]
  0x8001e8468:  52844708    mov w8, #8760
  0x8001e846c:  8b080268    add x8, x19, x8
  0x8001e8470:  eb08019f    cmp x12, x8
  0x8001e8474:  5400f480    b.eq #7824
  0x8001e8478:  b9a24e69    ldrsw x9, [x19, #8780]
  0x8001e847c:  cb0903ea    neg x10, x9
  0x8001e8480:  cb09010b    sub x11, x8, x9
  0x8001e8484:  cb090195    sub x21, x12, x9
  0x8001e8488:  39451aac    ldrb w12, [x21, #326]
  0x8001e848c:  8b0902a8    add x8, x21, x9
  0x8001e8490:  3500f32c    cbnz w12, #7780
  0x8001e8494:  f9400109    ldr x9, [x8]
  0x8001e8498:  b4000069    cbz x9, #12
  0x8001e849c:  f940050a    ldr x10, [x8, #8]
  0x8001e84a0:  f900052a    str x10, [x9, #8]
  0x8001e84a4:  f9400509    ldr x9, [x8, #8]
  0x8001e84a8:  b4000069    cbz x9, #12
  0x8001e84ac:  f940010a    ldr x10, [x8]
  0x8001e84b0:  f900012a    str x10, [x9]
  0x8001e84b4:  a9007d1f    stp xzr, xzr, [x8]
  0x8001e84b8:  b9624a68    ldr w8, [x19, #8776]
  0x8001e84bc:  51000508    sub w8, w8, #1
  0x8001e84c0:  b9224a68    str w8, [x19, #8776]
  0x8001e84c4:  b94a2a68    ldr w8, [x19, #2600]
  0x8001e84c8:  b9624a69    ldr w9, [x19, #8776]
  0x8001e84cc:  4b090108    sub w8, w8, w9
  0x8001e84d0:  52845809    mov w9, #8896
  0x8001e84d4:  8b090269    add x9, x19, x9
  0x8001e84d8:  7940012a    ldrh w10, [x9]
  0x8001e84dc:  6b0a011f    cmp w8, w10
  0x8001e84e0:  5400004d    b.le #8
  0x8001e84e4:  79000128    strh w8, [x9]
  0x8001e84e8:  394592a8    ldrb w8, [x21, #356]
  0x8001e84ec:  52800309    mov w9, #24
  0x8001e84f0:  9ba93909    umaddl x9, w8, w9, x14
  0x8001e84f4:  b9801529    ldrsw x9, [x9, #20]
  0x8001e84f8:  8b150129    add x9, x9, x21
  0x8001e84fc:  a940292b    ldp x11, x10, [x9]
  0x8001e8500:  aa0b014c    orr x12, x10, x11
  0x8001e8504:  b500edac    cbnz x12, #7604
  0x8001e8508:  f9406fe0    ldr x0, [sp, #216]
  0x8001e850c:  94a6eed9    bl #43760484
  0x8001e8510:  910423e1    add x1, sp, #264
  0x8001e8514:  aa1503e0    mov x0, x21
  0x8001e8518:  940019ca    bl #26408
  0x8001e851c:  52800028    mov w8, #1
  0x8001e8520:  aa1f03f9    mov x25, xzr
  0x8001e8524:  b900cfe8    str w8, [sp, #204]
  0x8001e8528:  aa1503f4    mov x20, x21
  0x8001e852c:  14000009    b #36
  0x8001e8530:  39451aa8    ldrb w8, [x21, #326]
  0x8001e8534:  11000508    add w8, w8, #1
  0x8001e8538:  f9406fe0    ldr x0, [sp, #216]
  0x8001e853c:  39051aa8    strb w8, [x21, #326]
  0x8001e8540:  94a6eecc    bl #43760432
  0x8001e8544:  aa1f03f4    mov x20, xzr
  0x8001e8548:  aa1503f9    mov x25, x21
  0x8001e854c:  b900cfff    str wzr, [sp, #204]
  0x8001e8550:  a94f26a8    ldp x8, x9, [x21, #240]
  0x8001e8554:  91002276    add x22, x19, #8
  0x8001e8558:  f94082aa    ldr x10, [x21, #256]
  0x8001e855c:  a933a7a8    stp x8, x9, [x29, #-200]
  0x8001e8560:  a94d26a8    ldp x8, x9, [x21, #208]
  0x8001e8564:  a931a7a8    stp x8, x9, [x29, #-232]
  0x8001e8568:  a94e22a9    ldp x9, x8, [x21, #224]
  0x8001e856c:  a932a3a9    stp x9, x8, [x29, #-216]
  0x8001e8570:  52844e08    mov w8, #8816
  0x8001e8574:  8b080260    add x0, x19, x8
  0x8001e8578:  f9406be8    ldr x8, [sp, #208]
  0x8001e857c:  f9004be0    str x0, [sp, #144]
  0x8001e8580:  a934a3aa    stp x10, x8, [x29, #-184]
  0x8001e8584:  94a6eeb7    bl #43760348
  0x8001e8588:  b962b262    ldr w2, [x19, #8880]
  0x8001e858c:  12800008    mov w8, #-1
  0x8001e8590:  f9004ff6    str x22, [sp, #152]
  0x8001e8594:  3400a2c2    cbz w2, #5208
  0x8001e8598:  f94063e1    ldr x1, [sp, #192]
  0x8001e859c:  52805108    mov w8, #648
  0x8001e85a0:  9b285828    smaddl x8, w1, w8, x22
  0x8001e85a4:  f9515e64    ldr x4, [x19, #8888]
  0x8001e85a8:  f94053e3    ldr x3, [sp, #160]
  0x8001e85ac:  910a0505    add x5, x8, #641
  0x8001e85b0:  b940bbe8    ldr w8, [sp, #184]
  0x8001e85b4:  36008828    tbz w8, #0, #4356
  0x8001e85b8:  b89203a8    ldursw x8, [x29, #-224]
  0x8001e85bc:  f100007f    cmp x3, #0
  0x8001e85c0:  529fffe9    mov w9, #65535
  0x8001e85c4:  f85383aa    ldur x10, [x29, #-200]
  0x8001e85c8:  2a1f03e6    mov w6, wzr
  0x8001e85cc:  aa1f03e7    mov x7, xzr
  0x8001e85d0:  f85483be    ldur x30, [x29, #-184]
  0x8001e85d4:  12800015    mov w21, #-1
  0x8001e85d8:  b90053f5    str w21, [sp, #80]
  0x8001e85dc:  7851c3ba    ldurh w26, [x29, #-228]
  0x8001e85e0:  d100050b    sub x11, x8, #1
  0x8001e85e4:  4b0803e8    neg w8, w8
  0x8001e85e8:  fa401944    ccmp x10, #0, #4, ne
  0x8001e85ec:  f85283aa    ldur x10, [x29, #-216]
  0x8001e85f0:  8b0903c9    add x9, x30, x9
  0x8001e85f4:  93407d08    sxtw x8, w8
  0x8001e85f8:  f90047eb    str x11, [sp, #136]
  0x8001e85fc:  7851e3ab    ldurh w11, [x29, #-226]
  0x8001e8600:  f9003fe8    str x8, [sp, #120]
  0x8001e8604:  1a9f17e8    cset w8, eq
  0x8001e8608:  b85183b0    ldur w16, [x29, #-232]
  0x8001e860c:  b90073e8    str w8, [sp, #112]
  0x8001e8610:  f85303a8    ldur x8, [x29, #-208]
  0x8001e8614:  9270bd29    and x9, x9, #0xffffffffffff0000
  0x8001e8618:  b9003ff0    str w16, [sp, #60]
  0x8001e861c:  b90083eb    str w11, [sp, #128]
  0x8001e8620:  52801d0b    mov w11, #232
  0x8001e8624:  a9062be8    stp x8, x10, [sp, #96]
  0x8001e8628:  b89403a8    ldursw x8, [x29, #-192]
  0x8001e862c:  a90427e8    stp x8, x9, [sp, #64]
  0x8001e8630:  937d7ce8    sbfiz x8, x7, #3, #32
  0x8001e8634:  f8686888    ldr x8, [x4, x8]
  0x8001e8638:  b400ab68    cbz x8, #5484
  0x8001e863c:  394000a9    ldrb w9, [x5]
  0x8001e8640:  b940490a    ldr w10, [x8, #72]
  0x8001e8644:  6b09015f    cmp w10, w9
  0x8001e8648:  f9402908    ldr x8, [x8, #80]
  0x8001e864c:  9a9f8129    csel x9, x9, xzr, hi
  0x8001e8650:  9bab2135    umaddl x21, w9, w11, x8
  0x8001e8654:  f9400ea8    ldr x8, [x21, #24]
  0x8001e8658:  b4004668    cbz x8, #2252
  0x8001e865c:  b94082a8    ldr w8, [x21, #128]
  0x8001e8660:  7100011f    cmp w8, #0
  0x8001e8664:  5400ab2d    b.le #5476
  0x8001e8668:  f9403eaa    ldr x10, [x21, #120]
  0x8001e866c:  b98086a9    ldrsw x9, [x21, #132]
  0x8001e8670:  eb090156    subs x22, x10, x9
  0x8001e8674:  1a9f17e8    cset w8, eq
  0x8001e8678:  b400aaca    cbz x10, #5464
  0x8001e867c:  37004548    tbnz w8, #0, #2216
  0x8001e8680:  394382aa    ldrb w10, [x21, #224]
  0x8001e8684:  aa1e03e8    mov x8, x30
  0x8001e8688:  3700aa8a    tbnz w10, #0, #5456
  0x8001e868c:  9101c2ab    add x11, x21, #112
  0x8001e8690:  cb0903ec    neg x12, x9
  0x8001e8694:  f9401aca    ldr x10, [x22, #48]
  0x8001e8698:  eb08015f    cmp x10, x8
  0x8001e869c:  54004383    b.lo #2160
  0x8001e86a0:  eb0a011f    cmp x8, x10
  0x8001e86a4:  54000522    b.hs #164
  0x8001e86a8:  b9409aa9    ldr w9, [x21, #152]
  0x8001e86ac:  7100053f    cmp w9, #1
  0x8001e86b0:  5400bdeb    b.lt #6076
  0x8001e86b4:  f94046a9    ldr x9, [x21, #136]
  0x8001e86b8:  f940012a    ldr x10, [x9]
  0x8001e86bc:  b400006a    cbz x10, #12
  0x8001e86c0:  f940052b    ldr x11, [x9, #8]
  0x8001e86c4:  f900054b    str x11, [x10, #8]
  0x8001e86c8:  f940052a    ldr x10, [x9, #8]
  0x8001e86cc:  b400006a    cbz x10, #12
  0x8001e86d0:  f940012b    ldr x11, [x9]
  0x8001e86d4:  f900014b    str x11, [x10]
  0x8001e86d8:  a9007d3f    stp xzr, xzr, [x9]
  0x8001e86dc:  b9409aaa    ldr w10, [x21, #152]
  0x8001e86e0:  5100054a    sub w10, w10, #1
  0x8001e86e4:  b9009aaa    str w10, [x21, #152]
  0x8001e86e8:  f9401aca    ldr x10, [x22, #48]
  0x8001e86ec:  b4000069    cbz x9, #12
  0x8001e86f0:  b9809eab    ldrsw x11, [x21, #156]
  0x8001e86f4:  cb0b0129    sub x9, x9, x11
  0x8001e86f8:  cb08014a    sub x10, x10, x8
  0x8001e86fc:  f900192a    str x10, [x9, #48]
  0x8001e8700:  f9400aca    ldr x10, [x22, #16]
  0x8001e8704:  b9401acb    ldr w11, [x22, #24]
  0x8001e8708:  a94236cc    ldp x12, x13, [x22, #32]
  0x8001e870c:  8b08014a    add x10, x10, x8
  0x8001e8710:  b900192b    str w11, [x9, #24]
  0x8001e8714:  f900092a    str x10, [x9, #16]
  0x8001e8718:  a902352c    stp x12, x13, [x9, #32]
  0x8001e871c:  b98086aa    ldrsw x10, [x21, #132]
  0x8001e8720:  8b0a02cb    add x11, x22, x10
  0x8001e8724:  8b090149    add x9, x10, x9
  0x8001e8728:  f940056a    ldr x10, [x11, #8]
  0x8001e872c:  f9000569    str x9, [x11, #8]
  0x8001e8730:  a900292b    stp x11, x10, [x9]
  0x8001e8734:  b400004a    cbz x10, #8
  0x8001e8738:  f9000149    str x9, [x10]
  0x8001e873c:  b94082a9    ldr w9, [x21, #128]
  0x8001e8740:  11000529    add w9, w9, #1
  0x8001e8744:  b90082a9    str w9, [x21, #128]
  0x8001e8748:  f9001ac8    str x8, [x22, #48]
  0x8001e874c:  f9406be8    ldr x8, [sp, #208]
  0x8001e8750:  f9400aca    ldr x10, [x22, #16]
  0x8001e8754:  f9003edf    str xzr, [x22, #120]
  0x8001e8758:  a908fedf    stp xzr, xzr, [x22, #136]
  0x8001e875c:  b9401ac9    ldr w9, [x22, #24]
  0x8001e8760:  f90056c8    str x8, [x22, #168]
  0x8001e8764:  f94022ad    ldr x13, [x21, #64]
  0x8001e8768:  a9422ec8    ldp x8, x11, [x22, #32]
  0x8001e876c:  b400046d    cbz x13, #140
  0x8001e8770:  b94001ac    ldr w12, [x13]
  0x8001e8774:  7100059f    cmp w12, #1
  0x8001e8778:  5400040b    b.lt #128
  0x8001e877c:  f94005ad    ldr x13, [x13, #8]
  0x8001e8780:  aa1f03ee    mov x14, xzr
  0x8001e8784:  d3607dcf    lsl x15, x14, #32
  0x8001e8788:  8b8f71af    add x15, x13, x15, asr #28
  0x8001e878c:  794011ef    ldrh w15, [x15, #8]
  0x8001e8790:  6b1a01ff    cmp w15, w26
  0x8001e8794:  540000e0    b.eq #28
  0x8001e8798:  910005cf    add x15, x14, #1
  0x8001e879c:  92407dee    and x14, x15, #0xffffffff
  0x8001e87a0:  6b0f019f    cmp w12, w15
  0x8001e87a4:  54ffff01    b.ne #-32
  0x8001e87a8:  1400047e    b #4600
  0x8001e87ac:  d503201f    nop
  0x8001e87b0:  93407dcc    sxtw x12, w14
  0x8001e87b4:  d37ced8c    lsl x12, x12, #4
  0x8001e87b8:  f86c69ac    ldr x12, [x13, x12]
  0x8001e87bc:  2a1a03ed    mov w13, w26
  0x8001e87c0:  f940198e    ldr x14, [x12, #48]
  0x8001e87c4:  b400014e    cbz x14, #40
  0x8001e87c8:  f9400988    ldr x8, [x12, #16]
  0x8001e87cc:  b400a828    cbz x8, #5380
  0x8001e87d0:  f9408909    ldr x9, [x8, #272]
  0x8001e87d4:  b500a849    cbnz x9, #5384
  0x8001e87d8:  aa1f03eb    mov x11, xzr
  0x8001e87dc:  b9410d09    ldr w9, [x8, #268]
  0x8001e87e0:  8b0a016a    add x10, x11, x10
  0x8001e87e4:  aa0c03eb    mov x11, x12
  0x8001e87e8:  2a1a03ed    mov w13, w26
  0x8001e87ec:  b94083ec    ldr w12, [sp, #128]
  0x8001e87f0:  790132cd    strh w13, [x22, #152]
  0x8001e87f4:  790136cc    strh w12, [x22, #154]
  0x8001e87f8:  f94047ec    ldr x12, [sp, #136]
  0x8001e87fc:  b90042c9    str w9, [x22, #64]
  0x8001e8800:  8b0c014a    add x10, x10, x12
  0x8001e8804:  f9403fec    ldr x12, [sp, #120]
  0x8001e8808:  a904aec8    stp x8, x11, [x22, #72]
  0x8001e880c:  8a0c014a    and x10, x10, x12
  0x8001e8810:  f94037ec    ldr x12, [sp, #104]
  0x8001e8814:  f9001eca    str x10, [x22, #56]
  0x8001e8818:  8b0a018a    add x10, x12, x10
  0x8001e881c:  f94033ec    ldr x12, [sp, #96]
  0x8001e8820:  b5009e0c    cbnz x12, #5056
  0x8001e8824:  aa1f03ed    mov x13, xzr
  0x8001e8828:  aa1f03ee    mov x14, xzr
  0x8001e882c:  f9002ecc    str x12, [x22, #88]
  0x8001e8830:  b94073ec    ldr w12, [sp, #112]
  0x8001e8834:  a906bacd    stp x13, x14, [x22, #104]
  0x8001e8838:  36009e6c    tbz w12, #0, #5068
  0x8001e883c:  b9009ed0    str w16, [x22, #156]
  0x8001e8840:  b98086a8    ldrsw x8, [x21, #132]
  0x8001e8844:  8b0802c8    add x8, x22, x8
  0x8001e8848:  f9400109    ldr x9, [x8]
  0x8001e884c:  b4000069    cbz x9, #12
  0x8001e8850:  f940050a    ldr x10, [x8, #8]
  0x8001e8854:  f900052a    str x10, [x9, #8]
  0x8001e8858:  f9400509    ldr x9, [x8, #8]
  0x8001e885c:  b4000069    cbz x9, #12
  0x8001e8860:  f940010a    ldr x10, [x8]
  0x8001e8864:  f900012a    str x10, [x9]
  0x8001e8868:  a9007d1f    stp xzr, xzr, [x8]
  0x8001e886c:  aa1503ea    mov x10, x21
  0x8001e8870:  f8458d48    ldr x8, [x10, #88]!
  0x8001e8874:  b9402949    ldr w9, [x10, #40]
  0x8001e8878:  51000529    sub w9, w9, #1
  0x8001e887c:  b9002949    str w9, [x10, #40]
  0x8001e8880:  b9801549    ldrsw x9, [x10, #20]
  0x8001e8884:  8b0902c9    add x9, x22, x9
  0x8001e8888:  f9000149    str x9, [x10]
  0x8001e888c:  a9002928    stp x8, x10, [x9]
  0x8001e8890:  b4000048    cbz x8, #8
  0x8001e8894:  f9000509    str x9, [x8, #8]
  0x8001e8898:  b9406aa8    ldr w8, [x21, #104]
  0x8001e889c:  11000508    add w8, w8, #1
  0x8001e88a0:  b9006aa8    str w8, [x21, #104]
  0x8001e88a4:  a9432aa9    ldp x9, x10, [x21, #48]
  0x8001e88a8:  f9401ac8    ldr x8, [x22, #48]
  0x8001e88ac:  8b080128    add x8, x9, x8
  0x8001e88b0:  eb08015f    cmp x10, x8
  0x8001e88b4:  9a888149    csel x9, x10, x8, hi
  0x8001e88b8:  a90326a8    stp x8, x9, [x21, #48]
  0x8001e88bc:  f94046c8    ldr x8, [x22, #136]
  0x8001e88c0:  b5009b68    cbnz x8, #4972
  0x8001e88c4:  790142df    strh wzr, [x22, #160]
  0x8001e88c8:  f9400ac8    ldr x8, [x22, #16]
  0x8001e88cc:  f9401ac9    ldr x9, [x22, #48]
  0x8001e88d0:  9102c2ad    add x13, x21, #176
  0x8001e88d4:  f9405eae    ldr x14, [x21, #184]
  0x8001e88d8:  eb0d01df    cmp x14, x13
  0x8001e88dc:  54000660    b.eq #204
  0x8001e88e0:  b980c6aa    ldrsw x10, [x21, #196]
  0x8001e88e4:  2a1f03eb    mov w11, wzr
  0x8001e88e8:  2a1f03ef    mov w15, wzr
  0x8001e88ec:  8b080129    add x9, x9, x8
  0x8001e88f0:  cb0a03ec    neg x12, x10
  0x8001e88f4:  cb0a01ad    sub x13, x13, x10
  0x8001e88f8:  cb0a01ce    sub x14, x14, x10
  0x8001e88fc:  d503201f    nop
  0x8001e8900:  a94101d2    ldp x18, x0, [x14, #16]
  0x8001e8904:  eb09025f    cmp x18, x9
  0x8001e8908:  fa403122    ccmp x9, x0, #2, lo
  0x8001e890c:  1a9f87f0    cset w16, ls
  0x8001e8910:  eb12011f    cmp x8, x18
  0x8001e8914:  fa499002    ccmp x0, x9, #2, ls
  0x8001e8918:  1a9f87f1    cset w17, ls
  0x8001e891c:  eb00011f    cmp x8, x0
  0x8001e8920:  fa483242    ccmp x18, x8, #2, lo
  0x8001e8924:  54000129    b.ls #36
  0x8001e8928:  37000110    tbnz w16, #0, #32
  0x8001e892c:  350000f1    cbnz w17, #28
  0x8001e8930:  8b0a01ce    add x14, x14, x10
  0x8001e8934:  f94005ce    ldr x14, [x14, #8]
  0x8001e8938:  8b0c01ce    add x14, x14, x12
  0x8001e893c:  eb0d01df    cmp x14, x13
  0x8001e8940:  54fffe01    b.ne #-64
  0x8001e8944:  14000018    b #96
  0x8001e8948:  794041d0    ldrh w16, [x14, #32]
  0x8001e894c:  794132d1    ldrh w17, [x22, #152]
  0x8001e8950:  6b11021f    cmp w16, w17
  0x8001e8954:  54000161    b.ne #44
  0x8001e8958:  b94025d1    ldr w17, [x14, #36]
  0x8001e895c:  b9409ed2    ldr w18, [x22, #156]
  0x8001e8960:  6b12023f    cmp w17, w18
  0x8001e8964:  794136d0    ldrh w16, [x22, #154]
  0x8001e8968:  540000e1    b.ne #28
  0x8001e896c:  794045d1    ldrh w17, [x14, #34]
  0x8001e8970:  6b10023f    cmp w17, w16
  0x8001e8974:  5400a801    b.ne #5376
  0x8001e8978:  34fffdcf    cbz w15, #-72
  0x8001e897c:  14000007    b #28
  0x8001e8980:  794136d0    ldrh w16, [x22, #154]
  0x8001e8984:  5280002f    mov w15, #1
  0x8001e8988:  390282cf    strb w15, [x22, #160]
  0x8001e898c:  794045cf    ldrh w15, [x14, #34]
  0x8001e8990:  6b1001ff    cmp w15, w16
  0x8001e8994:  54002b61    b.ne #1388
  0x8001e8998:  3500006b    cbnz w11, #12
  0x8001e899c:  5280002f    mov w15, #1
  0x8001e89a0:  17ffffe4    b #-112
  0x8001e89a4:  b4002c16    cbz x22, #1408
  0x8001e89a8:  52845248    mov w8, #8850
  0x8001e89ac:  52801d11    mov w17, #232
  0x8001e89b0:  38686a68    ldrb w8, [x19, x8]
  0x8001e89b4:  37009428    tbnz w8, #0, #4740
  0x8001e89b8:  b962b268    ldr w8, [x19, #8880]
  0x8001e89bc:  340005e8    cbz w8, #188
  0x8001e89c0:  f9515e6a    ldr x10, [x19, #8888]
  0x8001e89c4:  2a1f03e9    mov w9, wzr
  0x8001e89c8:  aa1f03eb    mov x11, xzr
  0x8001e89cc:  937d7d6c    sbfiz x12, x11, #3, #32
  0x8001e89d0:  f86c694d    ldr x13, [x10, x12]
  0x8001e89d4:  b400048d    cbz x13, #144
  0x8001e89d8:  394000af    ldrb w15, [x5]
  0x8001e89dc:  b94049ac    ldr w12, [x13, #72]
  0x8001e89e0:  6b0f019f    cmp w12, w15
  0x8001e89e4:  54009449    b.ls #4744
  0x8001e89e8:  71000d9f    cmp w12, #3
  0x8001e89ec:  54009449    b.ls #4744
  0x8001e89f0:  5280006c    mov w12, #3
  0x8001e89f4:  f94029ae    ldr x14, [x13, #80]
  0x8001e89f8:  9bb139ed    umaddl x13, w15, w17, x14
  0x8001e89fc:  b94081af    ldr w15, [x13, #128]
  0x8001e8a00:  710001ff    cmp w15, #0
  0x8001e8a04:  540093cd    b.le #4728
  0x8001e8a08:  f94039b0    ldr x16, [x13, #112]
  0x8001e8a0c:  b98085ad    ldrsw x13, [x13, #132]
  0x8001e8a10:  eb0d020d    subs x13, x16, x13
  0x8001e8a14:  1a9f17ef    cset w15, eq
  0x8001e8a18:  b4009370    cbz x16, #4716
  0x8001e8a1c:  3700938f    tbnz w15, #0, #4720
  0x8001e8a20:  f94009ad    ldr x13, [x13, #16]
  0x8001e8a24:  9bb1398c    umaddl x12, w12, w17, x14
  0x8001e8a28:  b940818e    ldr w14, [x12, #128]
  0x8001e8a2c:  710001df    cmp w14, #0
  0x8001e8a30:  5400932d    b.le #4708
  0x8001e8a34:  f9403d8f    ldr x15, [x12, #120]
  0x8001e8a38:  b980858c    ldrsw x12, [x12, #132]
  0x8001e8a3c:  eb0c01ec    subs x12, x15, x12
  0x8001e8a40:  1a9f17ee    cset w14, eq
  0x8001e8a44:  b40092cf    cbz x15, #4696
  0x8001e8a48:  370092ee    tbnz w14, #0, #4700
  0x8001e8a4c:  f940198e    ldr x14, [x12, #48]
  0x8001e8a50:  f940098c    ldr x12, [x12, #16]
  0x8001e8a54:  8b0e018c    add x12, x12, x14
  0x8001e8a58:  eb0d019f    cmp x12, x13
  0x8001e8a5c:  1a9f27ec    cset w12, lo
  0x8001e8a60:  2a0c0129    orr w9, w9, w12
  0x8001e8a64:  9100056c    add x12, x11, #1
  0x8001e8a68:  92407d8b    and x11, x12, #0xffffffff
  0x8001e8a6c:  6b0c011f    cmp w8, w12
  0x8001e8a70:  54fffae1    b.ne #-164
  0x8001e8a74:  370091c9    tbnz w9, #0, #4664
  0x8001e8a78:  2a0603fa    mov w26, w6
  0x8001e8a7c:  d001c688    adrp x8, #59580416
  0x8001e8a80:  913c8108    add x8, x8, #3872
  0x8001e8a84:  b962b26a    ldr w10, [x19, #8880]
  0x8001e8a88:  6b1a015f    cmp w10, w26
  0x8001e8a8c:  f9400108    ldr x8, [x8]
  0x8001e8a90:  f9515e69    ldr x9, [x19, #8888]
  0x8001e8a94:  2a1a03ea    mov w10, w26
  0x8001e8a98:  b9400d08    ldr w8, [x8, #12]
  0x8001e8a9c:  540083e9    b.ls #4220
  0x8001e8aa0:  f86ad929    ldr x9, [x9, w10, sxtw #3]
  0x8001e8aa4:  b9004128    str w8, [x9, #64]
  0x8001e8aa8:  b9629268    ldr w8, [x19, #8848]
  0x8001e8aac:  376883a8    tbnz w8, #13, #4212
  0x8001e8ab0:  377083c8    tbnz w8, #14, #4216
  0x8001e8ab4:  a94927e0    ldp x0, x9, [sp, #144]
  0x8001e8ab8:  52805108    mov w8, #648
  0x8001e8abc:  9b282435    smaddl x21, w1, w8, x9
  0x8001e8ac0:  94a6ed6c    bl #43759024
  0x8001e8ac4:  b5005e34    cbnz x20, #3012
  0x8001e8ac8:  f9406fe0    ldr x0, [sp, #216]
  0x8001e8acc:  94a6ed65    bl #43758996
  0x8001e8ad0:  39451b28    ldrb w8, [x25, #326]
  0x8001e8ad4:  51000508    sub w8, w8, #1
  0x8001e8ad8:  f9402fe0    ldr x0, [sp, #88]
  0x8001e8adc:  b94057e1    ldr w1, [sp, #84]
  0x8001e8ae0:  39051b28    strb w8, [x25, #326]
  0x8001e8ae4:  52845248    mov w8, #8850
  0x8001e8ae8:  38686a68    ldrb w8, [x19, x8]
  0x8001e8aec:  370893c8    tbnz w8, #1, #4728
  0x8001e8af0:  39459328    ldrb w8, [x25, #356]
  0x8001e8af4:  52800309    mov w9, #24
  0x8001e8af8:  5280030b    mov w11, #24
  0x8001e8afc:  9ba90109    umaddl x9, w8, w9, x0
  0x8001e8b00:  9bab0108    umaddl x8, w8, w11, x0
  0x8001e8b04:  b8814d2a    ldrsw x10, [x9, #20]!
  0x8001e8b08:  8b19014b    add x11, x10, x25
  0x8001e8b0c:  a940316b    ldp x11, x12, [x11]
  0x8001e8b10:  f100017f    cmp x11, #0
  0x8001e8b14:  1a9f07eb    cset w11, ne
  0x8001e8b18:  b400004c    cbz x12, #8
  0x8001e8b1c:  5280002b    mov w11, #1
  0x8001e8b20:  3400912b    cbz w11, #4644
  0x8001e8b24:  cb0a03eb    neg x11, x10
  0x8001e8b28:  d360ff6c    lsr x12, x27, #32
  0x8001e8b2c:  d360ff8d    lsr x13, x28, #32
  0x8001e8b30:  d360bf0e    ubfx x14, x24, #32, #16
  0x8001e8b34:  d370ff0f    lsr x15, x24, #48
  0x8001e8b38:  52800030    mov w16, #1
  0x8001e8b3c:  aa1903f4    mov x20, x25
  0x8001e8b40:  b9416691    ldr w17, [x20, #356]
  0x8001e8b44:  6b01023f    cmp w17, w1
  0x8001e8b48:  540090e1    b.ne #4636
  0x8001e8b4c:  b9414a91    ldr w17, [x20, #328]
  0x8001e8b50:  6b1b023f    cmp w17, w27
  0x8001e8b54:  540003c1    b.ne #120
  0x8001e8b58:  b9414e91    ldr w17, [x20, #332]
  0x8001e8b5c:  6b0c023f    cmp w17, w12
  0x8001e8b60:  54000361    b.ne #108
  0x8001e8b64:  b9415291    ldr w17, [x20, #336]
  0x8001e8b68:  6b1c023f    cmp w17, w28
  0x8001e8b6c:  54000301    b.ne #96
  0x8001e8b70:  b9415691    ldr w17, [x20, #340]
  0x8001e8b74:  6b0d023f    cmp w17, w13
  0x8001e8b78:  540002a1    b.ne #84
  0x8001e8b7c:  b9415a91    ldr w17, [x20, #344]
  0x8001e8b80:  6b18023f    cmp w17, w24
  0x8001e8b84:  54000241    b.ne #72
  0x8001e8b88:  7942ba91    ldrh w17, [x20, #348]
  0x8001e8b8c:  6b0e023f    cmp w17, w14
  0x8001e8b90:  540001e1    b.ne #60
  0x8001e8b94:  7942be91    ldrh w17, [x20, #350]
  0x8001e8b98:  6b0f023f    cmp w17, w15
  0x8001e8b9c:  54000181    b.ne #48
  0x8001e8ba0:  b9416291    ldr w17, [x20, #352]
  0x8001e8ba4:  6b17023f    cmp w17, w23
  0x8001e8ba8:  54000121    b.ne #36
  0x8001e8bac:  f9400a91    ldr x17, [x20, #16]
  0x8001e8bb0:  f94026d2    ldr x18, [x22, #72]
  0x8001e8bb4:  eb12023f    cmp x17, x18
  0x8001e8bb8:  540000a1    b.ne #20
  0x8001e8bbc:  f9400291    ldr x17, [x20]
  0x8001e8bc0:  f9401ed2    ldr x18, [x22, #56]
  0x8001e8bc4:  eb12023f    cmp x17, x18
  0x8001e8bc8:  54000140    b.eq #40
  0x8001e8bcc:  8b0a0291    add x17, x20, x10
  0x8001e8bd0:  f9400631    ldr x17, [x17, #8]
  0x8001e8bd4:  ab110174    adds x20, x11, x17
  0x8001e8bd8:  1a9f17f2    cset w18, eq
  0x8001e8bdc:  eb08023f    cmp x17, x8
  0x8001e8be0:  1a920211    csel w17, w16, w18, eq
  0x8001e8be4:  34fffaf1    cbz w17, #-164
  0x8001e8be8:  1400045f    b #4476
  0x8001e8bec:  d503201f    nop
  0x8001e8bf0:  b9400a91    ldr w17, [x20, #8]
  0x8001e8bf4:  b94042d2    ldr w18, [x22, #64]
  0x8001e8bf8:  6b12023f    cmp w17, w18
  0x8001e8bfc:  54fffe81    b.ne #-48
  0x8001e8c00:  f9401a91    ldr x17, [x20, #48]
  0x8001e8c04:  f94036d2    ldr x18, [x22, #104]
  0x8001e8c08:  eb12023f    cmp x17, x18
  0x8001e8c0c:  54fffe01    b.ne #-64
  0x8001e8c10:  f9401291    ldr x17, [x20, #32]
  0x8001e8c14:  f9402ed2    ldr x18, [x22, #88]
  0x8001e8c18:  eb12023f    cmp x17, x18
  0x8001e8c1c:  54fffd81    b.ne #-80
  0x8001e8c20:  b9402a91    ldr w17, [x20, #40]
  0x8001e8c24:  b94062d2    ldr w18, [x22, #96]
  0x8001e8c28:  6b12023f    cmp w17, w18
  0x8001e8c2c:  54fffd01    b.ne #-96
  0x8001e8c30:  b9a24e6a    ldrsw x10, [x19, #8780]
  0x8001e8c34:  8b14014a    add x10, x10, x20
  0x8001e8c38:  f940014b    ldr x11, [x10]
  0x8001e8c3c:  b400006b    cbz x11, #12
  0x8001e8c40:  f940054c    ldr x12, [x10, #8]
  0x8001e8c44:  f900056c    str x12, [x11, #8]
  0x8001e8c48:  f940054b    ldr x11, [x10, #8]
  0x8001e8c4c:  f9405bf7    ldr x23, [sp, #176]
  0x8001e8c50:  b400006b    cbz x11, #12
  0x8001e8c54:  f940014c    ldr x12, [x10]
  0x8001e8c58:  f900016c    str x12, [x11]
  0x8001e8c5c:  a9007d5f    stp xzr, xzr, [x10]
  0x8001e8c60:  b9624a6a    ldr w10, [x19, #8776]
  0x8001e8c64:  b9800129    ldrsw x9, [x9]
  0x8001e8c68:  5100054a    sub w10, w10, #1
  0x8001e8c6c:  8b140129    add x9, x9, x20
  0x8001e8c70:  b9224a6a    str w10, [x19, #8776]
  0x8001e8c74:  f940012a    ldr x10, [x9]
  0x8001e8c78:  b400006a    cbz x10, #12
  0x8001e8c7c:  f940052b    ldr x11, [x9, #8]
  0x8001e8c80:  f900054b    str x11, [x10, #8]
  0x8001e8c84:  f940052a    ldr x10, [x9, #8]
  0x8001e8c88:  b400006a    cbz x10, #12
  0x8001e8c8c:  f940012b    ldr x11, [x9]
  0x8001e8c90:  f900014b    str x11, [x10]
  0x8001e8c94:  a9007d3f    stp xzr, xzr, [x9]
  0x8001e8c98:  b9401109    ldr w9, [x8, #16]
  0x8001e8c9c:  51000529    sub w9, w9, #1
  0x8001e8ca0:  b9001109    str w9, [x8, #16]
  0x8001e8ca4:  39450e88    ldrb w8, [x20, #323]
  0x8001e8ca8:  37006808    tbnz w8, #0, #3328
  0x8001e8cac:  52845228    mov w8, #8849
  0x8001e8cb0:  38686a68    ldrb w8, [x19, x8]
  0x8001e8cb4:  373867a8    tbnz w8, #7, #3316
  0x8001e8cb8:  f9406fe0    ldr x0, [sp, #216]
  0x8001e8cbc:  94a6eced    bl #43758516
  0x8001e8cc0:  f9008a95    str x21, [x20, #272]
  0x8001e8cc4:  3905069f    strb wzr, [x20, #321]
  0x8001e8cc8:  39050a9a    strb w26, [x20, #322]
  0x8001e8ccc:  f9006696    str x22, [x20, #200]
  0x8001e8cd0:  394282dc    ldrb w28, [x22, #160]
  0x8001e8cd4:  b40000d7    cbz x23, #24
  0x8001e8cd8:  b9629268    ldr w8, [x19, #8848]
  0x8001e8cdc:  36480068    tbz w8, #9, #12
  0x8001e8ce0:  394286c9    ldrb w9, [x22, #161]
  0x8001e8ce4:  35000fe9    cbnz w9, #508
  0x8001e8ce8:  37508028    tbnz w8, #10, #4100
  0x8001e8cec:  3942e288    ldrb w8, [x20, #184]
  0x8001e8cf0:  d0015aa9    adrp x9, #45441024
  0x8001e8cf4:  9113c129    add x9, x9, #1264
  0x8001e8cf8:  f94073f5    ldr x21, [sp, #224]
  0x8001e8cfc:  8b081128    add x8, x9, x8, lsl #4
  0x8001e8d00:  f9006295    str x21, [x20, #192]
  0x8001e8d04:  f9400a97    ldr x23, [x20, #16]
  0x8001e8d08:  3940010c    ldrb w12, [x8]
  0x8001e8d0c:  b9400d09    ldr w9, [x8, #12]
  0x8001e8d10:  2940a90b    ldp w11, w10, [x8, #4]
  0x8001e8d14:  53101d48    ubfiz w8, w10, #16, #8
  0x8001e8d18:  2a0c03ed    mov w13, w12
  0x8001e8d1c:  2a096108    orr w8, w8, w9, lsl #24
  0x8001e8d20:  33181d6d    bfi w13, w11, #8, #8
  0x8001e8d24:  2a0d0108    orr w8, w8, w13
  0x8001e8d28:  b9006288    str w8, [x20, #96]
  0x8001e8d2c:  b9406a88    ldr w8, [x20, #104]
  0x8001e8d30:  b4004437    cbz x23, #2180
  0x8001e8d34:  f9400298    ldr x24, [x20]
  0x8001e8d38:  3100051f    cmn w8, #1
  0x8001e8d3c:  b9400a99    ldr w25, [x20, #8]
  0x8001e8d40:  f9400e90    ldr x16, [x20, #24]
  0x8001e8d44:  540017e0    b.eq #764
  0x8001e8d48:  aa1403fb    mov x27, x20
  0x8001e8d4c:  f8480f6e    ldr x14, [x27, #128]!
  0x8001e8d50:  f85f036d    ldur x13, [x27, #-16]
  0x8001e8d54:  eb0d031f    cmp x24, x13
  0x8001e8d58:  1a9f17ed    cset w13, eq
  0x8001e8d5c:  eb0e02ff    cmp x23, x14
  0x8001e8d60:  54006101    b.ne #3104
  0x8001e8d64:  b9407a8e    ldr w14, [x20, #120]
  0x8001e8d68:  6b0e033f    cmp w25, w14
  0x8001e8d6c:  1a9f17ee    cset w14, eq
  0x8001e8d70:  360060cd    tbz w13, #0, #3096
  0x8001e8d74:  34000fee    cbz w14, #508
  0x8001e8d78:  7940828d    ldrh w13, [x20, #64]
  0x8001e8d7c:  7941228e    ldrh w14, [x20, #144]
  0x8001e8d80:  6b0e01bf    cmp w13, w14
  0x8001e8d84:  54000f61    b.ne #492
  0x8001e8d88:  7940868d    ldrh w13, [x20, #66]
  0x8001e8d8c:  7941268e    ldrh w14, [x20, #146]
  0x8001e8d90:  6b0e01bf    cmp w13, w14
  0x8001e8d94:  54000ee1    b.ne #476
  0x8001e8d98:  79408a8d    ldrh w13, [x20, #68]
  0x8001e8d9c:  79412a8e    ldrh w14, [x20, #148]
  0x8001e8da0:  6b0e01bf    cmp w13, w14
  0x8001e8da4:  54000e61    b.ne #460
  0x8001e8da8:  79408e8d    ldrh w13, [x20, #70]
  0x8001e8dac:  79412e8e    ldrh w14, [x20, #150]
  0x8001e8db0:  6b0e01bf    cmp w13, w14
  0x8001e8db4:  54000de1    b.ne #444
  0x8001e8db8:  3941228d    ldrb w13, [x20, #72]
  0x8001e8dbc:  3942628e    ldrb w14, [x20, #152]
  0x8001e8dc0:  6b0e01bf    cmp w13, w14
  0x8001e8dc4:  54000d61    b.ne #428
  0x8001e8dc8:  3941268d    ldrb w13, [x20, #73]
  0x8001e8dcc:  3942668e    ldrb w14, [x20, #153]
  0x8001e8dd0:  6b0e01bf    cmp w13, w14
  0x8001e8dd4:  54000ce1    b.ne #412
  0x8001e8dd8:  7940968d    ldrh w13, [x20, #74]
  0x8001e8ddc:  7941368e    ldrh w14, [x20, #154]
  0x8001e8de0:  6b0e01bf    cmp w13, w14
  0x8001e8de4:  54000c61    b.ne #396
  0x8001e8de8:  3942c28f    ldrb w15, [x20, #176]
  0x8001e8dec:  6b0c01ff    cmp w15, w12
  0x8001e8df0:  3941928d    ldrb w13, [x20, #100]
  0x8001e8df4:  3942d28e    ldrb w14, [x20, #180]
  0x8001e8df8:  1a9f17ec    cset w12, eq
  0x8001e8dfc:  6b0e01bf    cmp w13, w14
  0x8001e8e00:  54008321    b.ne #4196
  0x8001e8e04:  3942c68d    ldrb w13, [x20, #177]
  0x8001e8e08:  6b2b01bf    cmp w13, w11, uxtb
  0x8001e8e0c:  1a9f17eb    cset w11, eq
  0x8001e8e10:  36003c6c    tbz w12, #0, #1932
  0x8001e8e14:  3942ca8c    ldrb w12, [x20, #178]
  0x8001e8e18:  6b2a019f    cmp w12, w10, uxtb
  0x8001e8e1c:  1a9f17ea    cset w10, eq
  0x8001e8e20:  36003c2b    tbz w11, #0, #1924
  0x8001e8e24:  3942ce8b    ldrb w11, [x20, #179]
  0x8001e8e28:  6b29017f    cmp w11, w9, uxtb
  0x8001e8e2c:  1a9f17e9    cset w9, eq
  0x8001e8e30:  36003bea    tbz w10, #0, #1916
  0x8001e8e34:  360009e9    tbz w9, #0, #316
  0x8001e8e38:  b940cfe8    ldr w8, [sp, #204]
  0x8001e8e3c:  7100039f    cmp w28, #0
  0x8001e8e40:  1a9f0508    csinc w8, w8, wzr, eq
  0x8001e8e44:  7100051f    cmp w8, #1
  0x8001e8e48:  540001a0    b.eq #52
  0x8001e8e4c:  52845208    mov w8, #8848
  0x8001e8e50:  38686a68    ldrb w8, [x19, x8]
  0x8001e8e54:  37006748    tbnz w8, #0, #3304
  0x8001e8e58:  aa1403e0    mov x0, x20
  0x8001e8e5c:  910843ff    add sp, sp, #528
  0x8001e8e60:  a9454ff4    ldp x20, x19, [sp, #80]
  0x8001e8e64:  a94457f6    ldp x22, x21, [sp, #64]
  0x8001e8e68:  a9435ff8    ldp x24, x23, [sp, #48]
  0x8001e8e6c:  a94267fa    ldp x26, x25, [sp, #32]
  0x8001e8e70:  a9416ffc    ldp x28, x27, [sp, #16]
  0x8001e8e74:  a8c67bfd    ldp x29, x30, [sp], #96
  0x8001e8e78:  d65f03c0    ret
  0x8001e8e7c:  340040bc    cbz w28, #2068
  0x8001e8e80:  2a1f03e2    mov w2, wzr
  0x8001e8e84:  f9406688    ldr x8, [x20, #200]
  0x8001e8e88:  d10223a1    sub x1, x29, #136
  0x8001e8e8c:  aa1403e0    mov x0, x20
  0x8001e8e90:  f9401d09    ldr x9, [x8, #56]
  0x8001e8e94:  b940410a    ldr w10, [x8, #64]
  0x8001e8e98:  f81783a9    stur x9, [x29, #-136]
  0x8001e8e9c:  a944a109    ldp x9, x8, [x8, #72]
  0x8001e8ea0:  b81803aa    stur w10, [x29, #-128]
  0x8001e8ea4:  a938a3a9    stp x9, x8, [x29, #-120]
  0x8001e8ea8:  94000557    bl #5468
  0x8001e8eac:  f9406688    ldr x8, [x20, #200]
  0x8001e8eb0:  f9403509    ldr x9, [x8, #104]
  0x8001e8eb4:  b4fffcc9    cbz x9, #-104
  0x8001e8eb8:  f9402d0a    ldr x10, [x8, #88]
  0x8001e8ebc:  d102a3a1    sub x1, x29, #168
  0x8001e8ec0:  aa1403e0    mov x0, x20
  0x8001e8ec4:  b940610b    ldr w11, [x8, #96]
  0x8001e8ec8:  f81583aa    stur x10, [x29, #-168]
  0x8001e8ecc:  f9403908    ldr x8, [x8, #112]
  0x8001e8ed0:  b81603ab    stur w11, [x29, #-160]
  0x8001e8ed4:  a936a3a9    stp x9, x8, [x29, #-152]
  0x8001e8ed8:  9497f14d    bl #39830836
  0x8001e8edc:  17ffffdc    b #-144
  0x8001e8ee0:  9001bba8    adrp x8, #58146816
  0x8001e8ee4:  f9405ee0    ldr x0, [x23, #184]
  0x8001e8ee8:  52802021    mov w1, #257
  0x8001e8eec:  f9416108    ldr x8, [x8, #704]
  0x8001e8ef0:  f9400108    ldr x8, [x8]
  0x8001e8ef4:  d63f0100    blr x8
  0x8001e8ef8:  b9629268    ldr w8, [x19, #8848]
  0x8001e8efc:  17ffff7b    b #-532
  0x8001e8f00:  52800028    mov w8, #1
  0x8001e8f04:  390286c8    strb w8, [x22, #161]
  0x8001e8f08:  17fffea8    b #-1376
  0x8001e8f0c:  8b0902ca    add x10, x22, x9
  0x8001e8f10:  f940054a    ldr x10, [x10, #8]
  0x8001e8f14:  8b0c0156    add x22, x10, x12
  0x8001e8f18:  eb0b015f    cmp x10, x11
  0x8001e8f1c:  fa401ac4    ccmp x22, #0, #4, ne
  0x8001e8f20:  54ffbba1    b.ne #-2188
  0x8001e8f24:  a9011ffe    stp x30, x7, [sp, #16]
  0x8001e8f28:  2a0203f3    mov w19, w2
  0x8001e8f2c:  2a0603e9    mov w9, w6
  0x8001e8f30:  2a0603f5    mov w21, w6
  0x8001e8f34:  a90293e5    stp x5, x4, [sp, #40]
  0x8001e8f38:  a94123fe    ldp x30, x8, [sp, #16]
  0x8001e8f3c:  2a1303e2    mov w2, w19
  0x8001e8f40:  f94063e1    ldr x1, [sp, #192]
  0x8001e8f44:  2a0903e6    mov w6, w9
  0x8001e8f48:  11000526    add w6, w9, #1
  0x8001e8f4c:  a94293e5    ldp x5, x4, [sp, #40]
  0x8001e8f50:  52801d0b    mov w11, #232
  0x8001e8f54:  b9403ff0    ldr w16, [sp, #60]
  0x8001e8f58:  91000508    add x8, x8, #1
  0x8001e8f5c:  6b08027f    cmp w19, w8
  0x8001e8f60:  a94a4fe3    ldp x3, x19, [sp, #160]
  0x8001e8f64:  92407d07    and x7, x8, #0xffffffff
  0x8001e8f68:  54ffb641    b.ne #-2360
  0x8001e8f6c:  140002a2    b #2696
  0x8001e8f70:  d001c689    adrp x9, #59580416
  0x8001e8f74:  913d4129    add x9, x9, #3920
  0x8001e8f78:  f940013a    ldr x26, [x9]
  0x8001e8f7c:  79555749    ldrh w9, [x26, #2730]
  0x8001e8f80:  f945234a    ldr x10, [x26, #2624]
  0x8001e8f84:  4b090108    sub w8, w8, w9
  0x8001e8f88:  b94a3b49    ldr w9, [x26, #2616]
  0x8001e8f8c:  6b08013f    cmp w9, w8
  0x8001e8f90:  52800509    mov w9, #40
  0x8001e8f94:  1a9f8108    csel w8, w8, wzr, hi
  0x8001e8f98:  9b29290b    smaddl x11, w8, w9, x10
  0x8001e8f9c:  885f7d68    ldxr w8, [x11]
  0x8001e8fa0:  51000509    sub w9, w8, #1
  0x8001e8fa4:  880a7d69    stxr w10, w9, [x11]
  0x8001e8fa8:  35ffffaa    cbnz w10, #-12
  0x8001e8fac:  7100051f    cmp w8, #1
  0x8001e8fb0:  540003a1    b.ne #116
  0x8001e8fb4:  912ac348    add x8, x26, #2736
  0x8001e8fb8:  f9006feb    str x11, [sp, #216]
  0x8001e8fbc:  f9005ff0    str x16, [sp, #184]
  0x8001e8fc0:  885f7d09    ldxr w9, [x8]
  0x8001e8fc4:  51000529    sub w9, w9, #1
  0x8001e8fc8:  880a7d09    stxr w10, w9, [x8]
  0x8001e8fcc:  35ffffaa    cbnz w10, #-12
  0x8001e8fd0:  91286340    add x0, x26, #2584
  0x8001e8fd4:  f9006be0    str x0, [sp, #208]
  0x8001e8fd8:  94a6ec22    bl #43757704
  0x8001e8fdc:  396aa349    ldrb w9, [x26, #2728]
  0x8001e8fe0:  91292348    add x8, x26, #2632
  0x8001e8fe4:  8b09110a    add x10, x8, x9, lsl #4
  0x8001e8fe8:  7100093f    cmp w9, #2
  0x8001e8fec:  9a883148    csel x8, x10, x8, lo
  0x8001e8ff0:  29402909    ldp w9, w10, [x8]
  0x8001e8ff4:  93407d29    sxtw x9, w9
  0x8001e8ff8:  6b0a013f    cmp w9, w10
  0x8001e8ffc:  540000ea    b.ge #28
  0x8001e9000:  f940050a    ldr x10, [x8, #8]
  0x8001e9004:  f9406feb    ldr x11, [sp, #216]
  0x8001e9008:  f829794b    str x11, [x10, x9, lsl #3]
  0x8001e900c:  b9400109    ldr w9, [x8]
  0x8001e9010:  11000529    add w9, w9, #1
  0x8001e9014:  b9000109    str w9, [x8]
  0x8001e9018:  f9406be0    ldr x0, [sp, #208]
  0x8001e901c:  94a6ec15    bl #43757652
  0x8001e9020:  f9405ff0    ldr x16, [sp, #184]
  0x8001e9024:  12800008    mov w8, #-1
  0x8001e9028:  f9003a9f    str xzr, [x20, #112]
  0x8001e902c:  f9001b7f    str xzr, [x27, #48]
  0x8001e9030:  b9006a88    str w8, [x20, #104]
  0x8001e9034:  a9007f7f    stp xzr, xzr, [x27]
  0x8001e9038:  a9017f7f    stp xzr, xzr, [x27, #16]
  0x8001e903c:  a9027f7f    stp xzr, xzr, [x27, #32]
  0x8001e9040:  f9005ff0    str x16, [sp, #184]
  0x8001e9044:  b001c688    adrp x8, #59576320
  0x8001e9048:  913d4108    add x8, x8, #3920
  0x8001e904c:  f940011a    ldr x26, [x8]
  0x8001e9050:  91286340    add x0, x26, #2584
  0x8001e9054:  f9006be0    str x0, [sp, #208]
  0x8001e9058:  94a6ec02    bl #43757576
  0x8001e905c:  b94a7b48    ldr w8, [x26, #2680]
  0x8001e9060:  f90063fa    str x26, [sp, #192]
  0x8001e9064:  7100011f    cmp w8, #0
  0x8001e9068:  5400712d    b.le #3620
  0x8001e906c:  f9454349    ldr x9, [x26, #2688]
  0x8001e9070:  51000508    sub w8, w8, #1
  0x8001e9074:  b90a7b48    str w8, [x26, #2680]
  0x8001e9078:  f9406be0    ldr x0, [sp, #208]
  0x8001e907c:  f868593b    ldr x27, [x9, w8, uxtw #3]
  0x8001e9080:  94a6ebfc    bl #43757552
  0x8001e9084:  f9006ffb    str x27, [sp, #216]
  0x8001e9088:  b400707b    cbz x27, #3596
  0x8001e908c:  f9406be0    ldr x0, [sp, #208]
  0x8001e9090:  94a6ebf4    bl #43757520
  0x8001e9094:  b94a9b48    ldr w8, [x26, #2712]
  0x8001e9098:  71000508    subs w8, w8, #1
  0x8001e909c:  5400724b    b.lt #3656
  0x8001e90a0:  f9455349    ldr x9, [x26, #2720]
  0x8001e90a4:  b90a9b48    str w8, [x26, #2712]
  0x8001e90a8:  f868593a    ldr x26, [x9, w8, uxtw #3]
  0x8001e90ac:  f9406be0    ldr x0, [sp, #208]
  0x8001e90b0:  94a6ebf0    bl #43757504
  0x8001e90b4:  91020348    add x8, x26, #128
  0x8001e90b8:  885f7d09    ldxr w9, [x8]
  0x8001e90bc:  11000529    add w9, w9, #1
  0x8001e90c0:  880a7d09    stxr w10, w9, [x8]
  0x8001e90c4:  35ffffaa    cbnz w10, #-12
  0x8001e90c8:  f9406fe8    ldr x8, [sp, #216]
  0x8001e90cc:  f900011a    str x26, [x8]
  0x8001e90d0:  f001bb09    adrp x9, #58077184
  0x8001e90d4:  91010288    add x8, x20, #64
  0x8001e90d8:  f9461d29    ldr x9, [x9, #3128]
  0x8001e90dc:  f9005be8    str x8, [sp, #176]
  0x8001e90e0:  d10223a0    sub x0, x29, #136
  0x8001e90e4:  f9400128    ldr x8, [x9]
  0x8001e90e8:  f940b501    ldr x1, [x8, #360]
  0x8001e90ec:  f001c148    adrp x8, #58896384
  0x8001e90f0:  910c2108    add x8, x8, #776
  0x8001e90f4:  f9400108    ldr x8, [x8]
  0x8001e90f8:  d63f0100    blr x8
  0x8001e90fc:  f001bb88    adrp x8, #58142720
  0x8001e9100:  d10223a0    sub x0, x29, #136
  0x8001e9104:  f9404d08    ldr x8, [x8, #152]
  0x8001e9108:  f9400108    ldr x8, [x8]
  0x8001e910c:  d63f0100    blr x8
  0x8001e9110:  f001bb88    adrp x8, #58142720
  0x8001e9114:  79408e9a    ldrh w26, [x20, #70]
  0x8001e9118:  d10223a0    sub x0, x29, #136
  0x8001e911c:  79409681    ldrh w1, [x20, #74]
  0x8001e9120:  f9406108    ldr x8, [x8, #192]
  0x8001e9124:  f9400108    ldr x8, [x8]
  0x8001e9128:  d63f0100    blr x8
  0x8001e912c:  f001bb88    adrp x8, #58142720
  0x8001e9130:  79408281    ldrh w1, [x20, #64]
  0x8001e9134:  d10223a0    sub x0, x29, #136
  0x8001e9138:  f9405108    ldr x8, [x8, #160]
  0x8001e913c:  f9400108    ldr x8, [x8]
  0x8001e9140:  d63f0100    blr x8
  0x8001e9144:  f001bb88    adrp x8, #58142720
  0x8001e9148:  79408681    ldrh w1, [x20, #66]
  0x8001e914c:  d10223a0    sub x0, x29, #136
  0x8001e9150:  f9405508    ldr x8, [x8, #168]
  0x8001e9154:  f9400108    ldr x8, [x8]
  0x8001e9158:  d63f0100    blr x8
  0x8001e915c:  f001bb88    adrp x8, #58142720
  0x8001e9160:  79408a81    ldrh w1, [x20, #68]
  0x8001e9164:  d10223a0    sub x0, x29, #136
  0x8001e9168:  f9405908    ldr x8, [x8, #176]
  0x8001e916c:  f9400108    ldr x8, [x8]
  0x8001e9170:  d63f0100    blr x8
  0x8001e9174:  f001bb88    adrp x8, #58142720
  0x8001e9178:  39412681    ldrb w1, [x20, #73]
  0x8001e917c:  d10223a0    sub x0, x29, #136
  0x8001e9180:  f9437908    ldr x8, [x8, #1776]
  0x8001e9184:  f9400108    ldr x8, [x8]
  0x8001e9188:  d63f0100    blr x8
  0x8001e918c:  f001bb88    adrp x8, #58142720
  0x8001e9190:  d10223a0    sub x0, x29, #136
  0x8001e9194:  f9405d08    ldr x8, [x8, #184]
  0x8001e9198:  2a1a03e1    mov w1, w26
  0x8001e919c:  f9400108    ldr x8, [x8]
  0x8001e91a0:  d63f0100    blr x8
  0x8001e91a4:  f001bb88    adrp x8, #58142720
  0x8001e91a8:  39418281    ldrb w1, [x20, #96]
  0x8001e91ac:  d10223a0    sub x0, x29, #136
  0x8001e91b0:  39418682    ldrb w2, [x20, #97]
  0x8001e91b4:  39418a83    ldrb w3, [x20, #98]
  0x8001e91b8:  39418e84    ldrb w4, [x20, #99]
  0x8001e91bc:  f9438108    ldr x8, [x8, #1792]
  0x8001e91c0:  f9400108    ldr x8, [x8]
  0x8001e91c4:  d63f0100    blr x8
  0x8001e91c8:  f001bb88    adrp x8, #58142720
  0x8001e91cc:  39412281    ldrb w1, [x20, #72]
  0x8001e91d0:  d10223a0    sub x0, x29, #136
  0x8001e91d4:  f9437d08    ldr x8, [x8, #1784]
  0x8001e91d8:  f9400108    ldr x8, [x8]
  0x8001e91dc:  d63f0100    blr x8
  0x8001e91e0:  f001bb88    adrp x8, #58142720
  0x8001e91e4:  d10223a0    sub x0, x29, #136
  0x8001e91e8:  f9438508    ldr x8, [x8, #1800]
  0x8001e91ec:  2a1f03e1    mov w1, wzr
  0x8001e91f0:  f9400108    ldr x8, [x8]
  0x8001e91f4:  d63f0100    blr x8
  0x8001e91f8:  39419288    ldrb w8, [x20, #100]
  0x8001e91fc:  37006788    tbnz w8, #0, #3312
  0x8001e9200:  2a1f03e9    mov w9, wzr
  0x8001e9204:  121e010b    and w11, w8, #0x4
  0x8001e9208:  53027d0d    lsr w13, w8, #2
  0x8001e920c:  5100cb4c    sub w12, w26, #50
  0x8001e9210:  53027d6b    lsr w11, w11, #2
  0x8001e9214:  121f01ad    and w13, w13, #0x2
  0x8001e9218:  3317016d    bfi w13, w11, #9, #1
  0x8001e921c:  5301050a    ubfx w10, w8, #1, #1
  0x8001e9220:  7100159f    cmp w12, #5
  0x8001e9224:  1a9f254a    csinc w10, w10, wzr, hs
  0x8001e9228:  7100015f    cmp w10, #0
  0x8001e922c:  321d01ab    orr w11, w13, #0x8
  0x8001e9230:  1a8d116a    csel w10, w11, w13, ne
  0x8001e9234:  7100119f    cmp w12, #4
  0x8001e9238:  54006b49    b.ls #3432
  0x8001e923c:  53037d0b    lsr w11, w8, #3
  0x8001e9240:  531f7908    lsl w8, w8, #1
  0x8001e9244:  d10223a0    sub x0, x29, #136
  0x8001e9248:  121e016b    and w11, w11, #0x4
  0x8001e924c:  121b0108    and w8, w8, #0x20
  0x8001e9250:  2a080128    orr w8, w9, w8
  0x8001e9254:  2a0a0169    orr w9, w11, w10
  0x8001e9258:  2a090101    orr w1, w8, w9
  0x8001e925c:  f001c148    adrp x8, #58896384
  0x8001e9260:  910c6108    add x8, x8, #792
  0x8001e9264:  f9400108    ldr x8, [x8]
  0x8001e9268:  d63f0100    blr x8
  0x8001e926c:  f001bb88    adrp x8, #58142720
  0x8001e9270:  d10223a0    sub x0, x29, #136
  0x8001e9274:  f9406908    ldr x8, [x8, #208]
  0x8001e9278:  aa1703e1    mov x1, x23
  0x8001e927c:  aa1803e2    mov x2, x24
  0x8001e9280:  f9400108    ldr x8, [x8]
  0x8001e9284:  d63f0100    blr x8
  0x8001e9288:  f001bb88    adrp x8, #58142720
  0x8001e928c:  d10223a0    sub x0, x29, #136
  0x8001e9290:  f9438908    ldr x8, [x8, #1808]
  0x8001e9294:  f9400108    ldr x8, [x8]
  0x8001e9298:  d63f0100    blr x8
  0x8001e929c:  f001bb08    adrp x8, #58077184
  0x8001e92a0:  2a1f03e1    mov w1, wzr
  0x8001e92a4:  f947b908    ldr x8, [x8, #3952]
  0x8001e92a8:  52801002    mov w2, #128
  0x8001e92ac:  f940011b    ldr x27, [x8]
  0x8001e92b0:  f9406fe8    ldr x8, [sp, #216]
  0x8001e92b4:  f940011a    ldr x26, [x8]
  0x8001e92b8:  aa1a03e0    mov x0, x26
  0x8001e92bc:  94a6ebb1    bl #43757252
  0x8001e92c0:  f001bb88    adrp x8, #58142720
  0x8001e92c4:  d10223a1    sub x1, x29, #136
  0x8001e92c8:  f9407108    ldr x8, [x8, #224]
  0x8001e92cc:  aa1a03e0    mov x0, x26
  0x8001e92d0:  f9400108    ldr x8, [x8]
  0x8001e92d4:  d63f0100    blr x8
  0x8001e92d8:  91346368    add x8, x27, #3352
  0x8001e92dc:  885f7d09    ldxr w9, [x8]
  0x8001e92e0:  11000529    add w9, w9, #1
  0x8001e92e4:  880a7d09    stxr w10, w9, [x8]
  0x8001e92e8:  35ffffaa    cbnz w10, #-12
  0x8001e92ec:  f94063ee    ldr x14, [sp, #192]
  0x8001e92f0:  396851c8    ldrb w8, [x14, #2580]
  0x8001e92f4:  36106728    tbz w8, #2, #3300
  0x8001e92f8:  f9406fe8    ldr x8, [sp, #216]
  0x8001e92fc:  912ab1cf    add x15, x14, #2732
  0x8001e9300:  f9400108    ldr x8, [x8]
  0x8001e9304:  f9004fe8    str x8, [sp, #152]
  0x8001e9308:  885f7de8    ldxr w8, [x15]
  0x8001e930c:  11000509    add w9, w8, #1
  0x8001e9310:  880a7de9    stxr w10, w9, [x15]
  0x8001e9314:  35ffffaa    cbnz w10, #-12
  0x8001e9318:  b94a39cb    ldr w11, [x14, #2616]
  0x8001e931c:  912ac1c9    add x9, x14, #2736
  0x8001e9320:  5280051b    mov w27, #40
  0x8001e9324:  f90053e9    str x9, [sp, #160]
  0x8001e9328:  5280002a    mov w10, #1
  0x8001e932c:  f9003bef    str x15, [sp, #112]
  0x8001e9330:  51000569    sub w9, w11, #1
  0x8001e9334:  0a080128    and w8, w9, w8
  0x8001e9338:  12800009    mov w9, #-1
  0x8001e933c:  2a0803f5    mov w21, w8
  0x8001e9340:  f94521cc    ldr x12, [x14, #2624]
  0x8001e9344:  6b15017f    cmp w11, w21
  0x8001e9348:  1a9f82ab    csel w11, w21, wzr, hi
  0x8001e934c:  9b3b316b    smaddl x11, w11, w27, x12
  0x8001e9350:  885f7d6c    ldxr w12, [x11]
  0x8001e9354:  eb09019f    cmp x12, x9
  0x8001e9358:  1a9f17f0    cset w16, eq
  0x8001e935c:  54000081    b.ne #16
  0x8001e9360:  880c7d6a    stxr w12, w10, [x11]
  0x8001e9364:  3400026c    cbz w12, #76
  0x8001e9368:  1400018a    b #1576
  0x8001e936c:  885f7dec    ldxr w12, [x15]
  0x8001e9370:  1100058b    add w11, w12, #1
  0x8001e9374:  880d7deb    stxr w13, w11, [x15]
  0x8001e9378:  35ffffad    cbnz w13, #-12
  0x8001e937c:  b94a39cb    ldr w11, [x14, #2616]
  0x8001e9380:  5100056d    sub w13, w11, #1
  0x8001e9384:  0a0c01b5    and w21, w13, w12
  0x8001e9388:  6b0802bf    cmp w21, w8
  0x8001e938c:  54fffda1    b.ne #-76
  0x8001e9390:  f94001c8    ldr x8, [x14]
  0x8001e9394:  2a1003f5    mov w21, w16
  0x8001e9398:  f94063e0    ldr x0, [sp, #192]
  0x8001e939c:  f9400908    ldr x8, [x8, #16]
  0x8001e93a0:  d63f0100    blr x8
  0x8001e93a4:  f94063eb    ldr x11, [sp, #192]
  0x8001e93a8:  2a1503e8    mov w8, w21
  0x8001e93ac:  1400003d    b #244
  0x8001e93b0:  b94a39c8    ldr w8, [x14, #2616]
  0x8001e93b4:  b90093f0    str w16, [sp, #144]
  0x8001e93b8:  6b15011f    cmp w8, w21
  0x8001e93bc:  f94521ca    ldr x10, [x14, #2624]
  0x8001e93c0:  1a9f82a8    csel w8, w21, wzr, hi
  0x8001e93c4:  93407d09    sxtw x9, w8
  0x8001e93c8:  9b3b291b    smaddl x27, w8, w27, x10
  0x8001e93cc:  f9003fe9    str x9, [sp, #120]
  0x8001e93d0:  b001c689    adrp x9, #59576320
  0x8001e93d4:  913c8129    add x9, x9, #3872
  0x8001e93d8:  f90043ea    str x10, [sp, #128]
  0x8001e93dc:  f9400129    ldr x9, [x9]
  0x8001e93e0:  b8408f68    ldr w8, [x27, #8]!
  0x8001e93e4:  b9400d3a    ldr w26, [x9, #12]
  0x8001e93e8:  6b08035f    cmp w26, w8
  0x8001e93ec:  54006080    b.eq #3088
  0x8001e93f0:  b900037a    str w26, [x27]
  0x8001e93f4:  795555c8    ldrh w8, [x14, #2730]
  0x8001e93f8:  b9008bf5    str w21, [sp, #136]
  0x8001e93fc:  0b0802ba    add w26, w21, w8
  0x8001e9400:  b001c695    adrp x21, #59576320
  0x8001e9404:  9137a2b5    add x21, x21, #3560
  0x8001e9408:  f94002a8    ldr x8, [x21]
  0x8001e940c:  9108e11b    add x27, x8, #568
  0x8001e9410:  aa1b03e0    mov x0, x27
  0x8001e9414:  94a6eb13    bl #43756620
  0x8001e9418:  f94002a8    ldr x8, [x21]
  0x8001e941c:  2a1a03e1    mov w1, w26
  0x8001e9420:  aa1f03e3    mov x3, xzr
  0x8001e9424:  9105e100    add x0, x8, #376
  0x8001e9428:  f001c148    adrp x8, #58896384
  0x8001e942c:  91084108    add x8, x8, #528
  0x8001e9430:  f9404ff5    ldr x21, [sp, #152]
  0x8001e9434:  f9400108    ldr x8, [x8]
  0x8001e9438:  aa1503e2    mov x2, x21
  0x8001e943c:  d63f0100    blr x8
  0x8001e9440:  aa1b03e0    mov x0, x27
  0x8001e9444:  94a6eb0b    bl #43756588
  0x8001e9448:  a947a7ea    ldp x10, x9, [sp, #120]
  0x8001e944c:  52800508    mov w8, #40
  0x8001e9450:  aa1503e0    mov x0, x21
  0x8001e9454:  9b28255a    smaddl x26, w10, w8, x9
  0x8001e9458:  f001bb88    adrp x8, #58142720
  0x8001e945c:  f9001355    str x21, [x26, #32]
  0x8001e9460:  f9442108    ldr x8, [x8, #2112]
  0x8001e9464:  f9400108    ldr x8, [x8]
  0x8001e9468:  d63f0100    blr x8
  0x8001e946c:  53030c08    ubfx w8, w0, #3, #1
  0x8001e9470:  b9000748    str w8, [x26, #4]
  0x8001e9474:  f94053ea    ldr x10, [sp, #160]
  0x8001e9478:  885f7d48    ldxr w8, [x10]
  0x8001e947c:  11000508    add w8, w8, #1
  0x8001e9480:  88097d48    stxr w9, w8, [x10]
  0x8001e9484:  35ffffa9    cbnz w9, #-12
  0x8001e9488:  f94063eb    ldr x11, [sp, #192]
  0x8001e948c:  5280051b    mov w27, #40
  0x8001e9490:  b9408be9    ldr w9, [sp, #136]
  0x8001e9494:  79555568    ldrh w8, [x11, #2730]
  0x8001e9498:  0b08013a    add w26, w9, w8
  0x8001e949c:  b94093e8    ldr w8, [sp, #144]
  0x8001e94a0:  f9406ff5    ldr x21, [sp, #216]
  0x8001e94a4:  36005b68    tbz w8, #0, #2924
  0x8001e94a8:  3100075f    cmn w26, #1
  0x8001e94ac:  540066e0    b.eq #3292
  0x8001e94b0:  79555568    ldrh w8, [x11, #2730]
  0x8001e94b4:  4b080348    sub w8, w26, w8
  0x8001e94b8:  b94a3969    ldr w9, [x11, #2616]
  0x8001e94bc:  f945216a    ldr x10, [x11, #2624]
  0x8001e94c0:  6b08013f    cmp w9, w8
  0x8001e94c4:  1a9f8108    csel w8, w8, wzr, hi
  0x8001e94c8:  9b3b2908    smaddl x8, w8, w27, x10
  0x8001e94cc:  f9000d15    str x21, [x8, #24]
  0x8001e94d0:  b9400508    ldr w8, [x8, #4]
  0x8001e94d4:  36000528    tbz w8, #0, #164
  0x8001e94d8:  f94002a8    ldr x8, [x21]
  0x8001e94dc:  f001bb8a    adrp x10, #58142720
  0x8001e94e0:  f9465575    ldr x21, [x11, #3240]
  0x8001e94e4:  79410908    ldrh w8, [x8, #132]
  0x8001e94e8:  f940294a    ldr x10, [x10, #80]
  0x8001e94ec:  d37be91b    lsl x27, x8, #5
  0x8001e94f0:  b4006795    cbz x21, #3312
  0x8001e94f4:  f9408aa8    ldr x8, [x21, #272]
  0x8001e94f8:  b4000088    cbz x8, #16
  0x8001e94fc:  f9465169    ldr x9, [x11, #3232]
  0x8001e9500:  f9400d08    ldr x8, [x8, #24]
  0x8001e9504:  cb080128    sub x8, x9, x8
  0x8001e9508:  8b1b011b    add x27, x8, x27
  0x8001e950c:  f9400148    ldr x8, [x10]
  0x8001e9510:  aa1503e0    mov x0, x21
  0x8001e9514:  d63f0100    blr x8
  0x8001e9518:  37106680    tbnz w0, #2, #3280
  0x8001e951c:  f94063eb    ldr x11, [sp, #192]
  0x8001e9520:  f9465568    ldr x8, [x11, #3240]
  0x8001e9524:  b4000048    cbz x8, #8
  0x8001e9528:  f9408108    ldr x8, [x8, #256]
  0x8001e952c:  f001c14a    adrp x10, #58896384
  0x8001e9530:  9107c14a    add x10, x10, #496
  0x8001e9534:  8b080369    add x9, x27, x8
  0x8001e9538:  f100011f    cmp x8, #0
  0x8001e953c:  9a8903e8    csel x8, xzr, x9, eq
  0x8001e9540:  52800029    mov w9, #1
  0x8001e9544:  f9000109    str x9, [x8]
  0x8001e9548:  f9465568    ldr x8, [x11, #3240]
  0x8001e954c:  b4000048    cbz x8, #8
  0x8001e9550:  f9408108    ldr x8, [x8, #256]
  0x8001e9554:  8b080369    add x9, x27, x8
  0x8001e9558:  f100011f    cmp x8, #0
  0x8001e955c:  9a8903e8    csel x8, xzr, x9, eq
  0x8001e9560:  f900051f    str xzr, [x8, #8]
  0x8001e9564:  b40000b5    cbz x21, #20
  0x8001e9568:  f9400148    ldr x8, [x10]
  0x8001e956c:  aa1503e0    mov x0, x21
  0x8001e9570:  d63f0100    blr x8
  0x8001e9574:  371064e0    tbnz w0, #2, #3228
  0x8001e9578:  a94b23e1    ldp x1, x8, [sp, #176]
  0x8001e957c:  91024280    add x0, x20, #144
  0x8001e9580:  52800502    mov w2, #40
  0x8001e9584:  b9006a9a    str w26, [x20, #104]
  0x8001e9588:  f9003a98    str x24, [x20, #112]
  0x8001e958c:  b9007a99    str w25, [x20, #120]
  0x8001e9590:  a9082297    stp x23, x8, [x20, #128]
  0x8001e9594:  94a6eb0f    bl #43756604
  0x8001e9598:  17fffe28    b #-1888
  0x8001e959c:  2a1f03eb    mov w11, wzr
  0x8001e95a0:  17fffe1d    b #-1932
  0x8001e95a4:  2a1f03ea    mov w10, wzr
  0x8001e95a8:  17fffe1f    b #-1924
  0x8001e95ac:  2a1f03e9    mov w9, wzr
  0x8001e95b0:  17fffe21    b #-1916
  0x8001e95b4:  3100051f    cmn w8, #1
  0x8001e95b8:  54ffc400    b.eq #-1920
  0x8001e95bc:  b001c689    adrp x9, #59576320
  0x8001e95c0:  913d4129    add x9, x9, #3920
  0x8001e95c4:  f9400138    ldr x24, [x9]
  0x8001e95c8:  79555709    ldrh w9, [x24, #2730]
  0x8001e95cc:  f945230a    ldr x10, [x24, #2624]
  0x8001e95d0:  4b090108    sub w8, w8, w9
  0x8001e95d4:  b94a3b09    ldr w9, [x24, #2616]
  0x8001e95d8:  6b08013f    cmp w9, w8
  0x8001e95dc:  52800509    mov w9, #40
  0x8001e95e0:  1a9f8108    csel w8, w8, wzr, hi
  0x8001e95e4:  9b292917    smaddl x23, w8, w9, x10
  0x8001e95e8:  885f7ee8    ldxr w8, [x23]
  0x8001e95ec:  51000509    sub w9, w8, #1
  0x8001e95f0:  880a7ee9    stxr w10, w9, [x23]
  0x8001e95f4:  35ffffaa    cbnz w10, #-12
  0x8001e95f8:  7100051f    cmp w8, #1
  0x8001e95fc:  54000321    b.ne #100
  0x8001e9600:  912ac308    add x8, x24, #2736
  0x8001e9604:  885f7d09    ldxr w9, [x8]
  0x8001e9608:  51000529    sub w9, w9, #1
  0x8001e960c:  880a7d09    stxr w10, w9, [x8]
  0x8001e9610:  35ffffaa    cbnz w10, #-12
  0x8001e9614:  91286315    add x21, x24, #2584
  0x8001e9618:  aa1503e0    mov x0, x21
  0x8001e961c:  94a6ea91    bl #43756100
  0x8001e9620:  396aa309    ldrb w9, [x24, #2728]
  0x8001e9624:  91292308    add x8, x24, #2632
  0x8001e9628:  8b09110a    add x10, x8, x9, lsl #4
  0x8001e962c:  7100093f    cmp w9, #2
  0x8001e9630:  9a883148    csel x8, x10, x8, lo
  0x8001e9634:  29402909    ldp w9, w10, [x8]
  0x8001e9638:  93407d29    sxtw x9, w9
  0x8001e963c:  6b0a013f    cmp w9, w10
  0x8001e9640:  540000ca    b.ge #24
  0x8001e9644:  f940050a    ldr x10, [x8, #8]
  0x8001e9648:  f8297957    str x23, [x10, x9, lsl #3]
  0x8001e964c:  b9400109    ldr w9, [x8]
  0x8001e9650:  11000529    add w9, w9, #1
  0x8001e9654:  b9000109    str w9, [x8]
  0x8001e9658:  aa1503e0    mov x0, x21
  0x8001e965c:  94a6ea85    bl #43756052
  0x8001e9660:  12800008    mov w8, #-1
  0x8001e9664:  f9003a9f    str xzr, [x20, #112]
  0x8001e9668:  f9005a9f    str xzr, [x20, #176]
  0x8001e966c:  b9006a88    str w8, [x20, #104]
  0x8001e9670:  a9087e9f    stp xzr, xzr, [x20, #128]
  0x8001e9674:  a9097e9f    stp xzr, xzr, [x20, #144]
  0x8001e9678:  a90a7e9f    stp xzr, xzr, [x20, #160]
  0x8001e967c:  17fffdef    b #-2116
  0x8001e9680:  52800068    mov w8, #3
  0x8001e9684:  17fffb07    b #-5092
  0x8001e9688:  f9405bf7    ldr x23, [sp, #176]
  0x8001e968c:  17fffd8d    b #-2508
  0x8001e9690:  52800042    mov w2, #2
  0x8001e9694:  17fffdfc    b #-2064
  0x8001e9698:  b001c688    adrp x8, #59576320
  0x8001e969c:  913b5108    add x8, x8, #3796
  0x8001e96a0:  b9400100    ldr w0, [x8]
  0x8001e96a4:  94a6e907    bl #43754524
  0x8001e96a8:  b4006420    cbz x0, #3204
  0x8001e96ac:  51000400    sub w0, w0, #1
  0x8001e96b0:  b940bbe3    ldr w3, [sp, #184]
  0x8001e96b4:  17fffaf9    b #-5148
  0x8001e96b8:  aa1f03e9    mov x9, xzr
  0x8001e96bc:  12800015    mov w21, #-1
  0x8001e96c0:  b900d3ff    str wzr, [sp, #208]
  0x8001e96c4:  52801d0b    mov w11, #232
  0x8001e96c8:  b90053f5    str w21, [sp, #80]
  0x8001e96cc:  b90027e2    str w2, [sp, #36]
  0x8001e96d0:  a90293e5    stp x5, x4, [sp, #40]
  0x8001e96d4:  937d7d28    sbfiz x8, x9, #3, #32
  0x8001e96d8:  f90047e9    str x9, [sp, #136]
  0x8001e96dc:  f8686888    ldr x8, [x4, x8]
  0x8001e96e0:  b40062a8    cbz x8, #3156
  0x8001e96e4:  394000a9    ldrb w9, [x5]
  0x8001e96e8:  b940490a    ldr w10, [x8, #72]
  0x8001e96ec:  6b09015f    cmp w10, w9
  0x8001e96f0:  f9402908    ldr x8, [x8, #80]
  0x8001e96f4:  9a9f8129    csel x9, x9, xzr, hi
  0x8001e96f8:  9bab213a    umaddl x26, w9, w11, x8
  0x8001e96fc:  f9400f48    ldr x8, [x26, #24]
  0x8001e9700:  b4005a28    cbz x8, #2884
  0x8001e9704:  aa1a03f5    mov x21, x26
  0x8001e9708:  f8470ea8    ldr x8, [x21, #112]!
  0x8001e970c:  29422aa9    ldp w9, w10, [x21, #16]
  0x8001e9710:  93407d4a    sxtw x10, w10
  0x8001e9714:  7100013f    cmp w9, #0
  0x8001e9718:  9a9fc108    csel x8, x8, xzr, gt
  0x8001e971c:  cb0a0116    sub x22, x8, x10
  0x8001e9720:  f100011f    cmp x8, #0
  0x8001e9724:  fa401ac4    ccmp x22, #0, #4, ne
  0x8001e9728:  540058e0    b.eq #2844
  0x8001e972c:  d103a3a2    sub x2, x29, #232
  0x8001e9730:  aa1a03e0    mov x0, x26
  0x8001e9734:  aa1603e1    mov x1, x22
  0x8001e9738:  2a1f03e4    mov w4, wzr
  0x8001e973c:  94001612    bl #22600
  0x8001e9740:  36006060    tbz w0, #0, #3084
  0x8001e9744:  52845248    mov w8, #8850
  0x8001e9748:  38686a68    ldrb w8, [x19, x8]
  0x8001e974c:  37006108    tbnz w8, #0, #3104
  0x8001e9750:  b962b268    ldr w8, [x19, #8880]
  0x8001e9754:  52801d11    mov w17, #232
  0x8001e9758:  52805712    mov w18, #696
  0x8001e975c:  f94063e1    ldr x1, [sp, #192]
  0x8001e9760:  340010c8    cbz w8, #536
  0x8001e9764:  f9515e69    ldr x9, [x19, #8888]
  0x8001e9768:  2a1f03ea    mov w10, wzr
  0x8001e976c:  aa1f03eb    mov x11, xzr
  0x8001e9770:  937d7d6c    sbfiz x12, x11, #3, #32
  0x8001e9774:  f86c692c    ldr x12, [x9, x12]
  0x8001e9778:  b400046c    cbz x12, #140
  0x8001e977c:  394a266e    ldrb w14, [x19, #649]
  0x8001e9780:  b940498f    ldr w15, [x12, #72]
  0x8001e9784:  6b0e01ff    cmp w15, w14
  0x8001e9788:  f940298d    ldr x13, [x12, #80]
  0x8001e978c:  9a9f81cc    csel x12, x14, xzr, hi
  0x8001e9790:  71000dff    cmp w15, #3
  0x8001e9794:  9bb1358c    umaddl x12, w12, w17, x13
  0x8001e9798:  9a9f824e    csel x14, x18, xzr, hi
  0x8001e979c:  f940398f    ldr x15, [x12, #112]
  0x8001e97a0:  29503190    ldp w16, w12, [x12, #128]
  0x8001e97a4:  93407d8c    sxtw x12, w12
  0x8001e97a8:  7100021f    cmp w16, #0
  0x8001e97ac:  9a9fc1ef    csel x15, x15, xzr, gt
  0x8001e97b0:  cb0c01ec    sub x12, x15, x12
  0x8001e97b4:  f10001ff    cmp x15, #0
  0x8001e97b8:  fa401984    ccmp x12, #0, #4, ne
  0x8001e97bc:  54005de0    b.eq #3004
  0x8001e97c0:  f940098c    ldr x12, [x12, #16]
  0x8001e97c4:  8b0e01ad    add x13, x13, x14
  0x8001e97c8:  f9403dae    ldr x14, [x13, #120]
  0x8001e97cc:  295035af    ldp w15, w13, [x13, #128]
  0x8001e97d0:  93407dad    sxtw x13, w13
  0x8001e97d4:  710001ff    cmp w15, #0
  0x8001e97d8:  9a9fc1ce    csel x14, x14, xzr, gt
  0x8001e97dc:  cb0d01cd    sub x13, x14, x13
  0x8001e97e0:  f10001df    cmp x14, #0
  0x8001e97e4:  fa4019a4    ccmp x13, #0, #4, ne
  0x8001e97e8:  54005cc0    b.eq #2968
  0x8001e97ec:  f94019ae    ldr x14, [x13, #48]
  0x8001e97f0:  f94009ad    ldr x13, [x13, #16]
  0x8001e97f4:  8b0e01ad    add x13, x13, x14
  0x8001e97f8:  eb0c01bf    cmp x13, x12
  0x8001e97fc:  1a9f27ec    cset w12, lo
  0x8001e9800:  2a0c014a    orr w10, w10, w12
  0x8001e9804:  9100056c    add x12, x11, #1
  0x8001e9808:  92407d8b    and x11, x12, #0xffffffff
  0x8001e980c:  6b0c011f    cmp w8, w12
  0x8001e9810:  54fffb01    b.ne #-160
  0x8001e9814:  3700512a    tbnz w10, #0, #2596
  0x8001e9818:  2a1f03ea    mov w10, wzr
  0x8001e981c:  aa1f03eb    mov x11, xzr
  0x8001e9820:  937d7d6c    sbfiz x12, x11, #3, #32
  0x8001e9824:  f86c692c    ldr x12, [x9, x12]
  0x8001e9828:  b400046c    cbz x12, #140
  0x8001e982c:  3954466e    ldrb w14, [x19, #1297]
  0x8001e9830:  b940498f    ldr w15, [x12, #72]
  0x8001e9834:  6b0e01ff    cmp w15, w14
  0x8001e9838:  f940298d    ldr x13, [x12, #80]
  0x8001e983c:  9a9f81cc    csel x12, x14, xzr, hi
  0x8001e9840:  71000dff    cmp w15, #3
  0x8001e9844:  9bb1358c    umaddl x12, w12, w17, x13
  0x8001e9848:  9a9f824e    csel x14, x18, xzr, hi
  0x8001e984c:  f940398f    ldr x15, [x12, #112]
  0x8001e9850:  29503190    ldp w16, w12, [x12, #128]
  0x8001e9854:  93407d8c    sxtw x12, w12
  0x8001e9858:  7100021f    cmp w16, #0
  0x8001e985c:  9a9fc1ef    csel x15, x15, xzr, gt
  0x8001e9860:  cb0c01ec    sub x12, x15, x12
  0x8001e9864:  f10001ff    cmp x15, #0
  0x8001e9868:  fa401984    ccmp x12, #0, #4, ne
  0x8001e986c:  540058e0    b.eq #2844
  0x8001e9870:  f940098c    ldr x12, [x12, #16]
  0x8001e9874:  8b0e01ad    add x13, x13, x14
  0x8001e9878:  f9403dae    ldr x14, [x13, #120]
  0x8001e987c:  295035af    ldp w15, w13, [x13, #128]
  0x8001e9880:  93407dad    sxtw x13, w13
  0x8001e9884:  710001ff    cmp w15, #0
  0x8001e9888:  9a9fc1ce    csel x14, x14, xzr, gt
  0x8001e988c:  cb0d01cd    sub x13, x14, x13
  0x8001e9890:  f10001df    cmp x14, #0
  0x8001e9894:  fa4019a4    ccmp x13, #0, #4, ne
  0x8001e9898:  540057c0    b.eq #2808
  0x8001e989c:  f94019ae    ldr x14, [x13, #48]
  0x8001e98a0:  f94009ad    ldr x13, [x13, #16]
  0x8001e98a4:  8b0e01ad    add x13, x13, x14
  0x8001e98a8:  eb0c01bf    cmp x13, x12
  0x8001e98ac:  1a9f27ec    cset w12, lo
  0x8001e98b0:  2a0c014a    orr w10, w10, w12
  0x8001e98b4:  9100056c    add x12, x11, #1
  0x8001e98b8:  92407d8b    and x11, x12, #0xffffffff
  0x8001e98bc:  6b0c011f    cmp w8, w12
  0x8001e98c0:  54fffb01    b.ne #-160
  0x8001e98c4:  37004baa    tbnz w10, #0, #2420
  0x8001e98c8:  2a1f03ea    mov w10, wzr
  0x8001e98cc:  aa1f03eb    mov x11, xzr
  0x8001e98d0:  937d7d6c    sbfiz x12, x11, #3, #32
  0x8001e98d4:  f86c692c    ldr x12, [x9, x12]
  0x8001e98d8:  b400046c    cbz x12, #140
  0x8001e98dc:  395e666e    ldrb w14, [x19, #1945]
  0x8001e98e0:  b940498f    ldr w15, [x12, #72]
  0x8001e98e4:  6b0e01ff    cmp w15, w14
  0x8001e98e8:  f940298d    ldr x13, [x12, #80]
  0x8001e98ec:  9a9f81cc    csel x12, x14, xzr, hi
  0x8001e98f0:  71000dff    cmp w15, #3
  0x8001e98f4:  9bb1358c    umaddl x12, w12, w17, x13
  0x8001e98f8:  9a9f824e    csel x14, x18, xzr, hi
  0x8001e98fc:  f940398f    ldr x15, [x12, #112]
  0x8001e9900:  29503190    ldp w16, w12, [x12, #128]
  0x8001e9904:  93407d8c    sxtw x12, w12
  0x8001e9908:  7100021f    cmp w16, #0
  0x8001e990c:  9a9fc1ef    csel x15, x15, xzr, gt
  0x8001e9910:  cb0c01ec    sub x12, x15, x12
  0x8001e9914:  f10001ff    cmp x15, #0
  0x8001e9918:  fa401984    ccmp x12, #0, #4, ne
  0x8001e991c:  540053e0    b.eq #2684
  0x8001e9920:  f940098c    ldr x12, [x12, #16]
  0x8001e9924:  8b0e01ad    add x13, x13, x14
  0x8001e9928:  f9403dae    ldr x14, [x13, #120]
  0x8001e992c:  295035af    ldp w15, w13, [x13, #128]
  0x8001e9930:  93407dad    sxtw x13, w13
  0x8001e9934:  710001ff    cmp w15, #0
  0x8001e9938:  9a9fc1ce    csel x14, x14, xzr, gt
  0x8001e993c:  cb0d01cd    sub x13, x14, x13
  0x8001e9940:  f10001df    cmp x14, #0
  0x8001e9944:  fa4019a4    ccmp x13, #0, #4, ne
  0x8001e9948:  540052c0    b.eq #2648
  0x8001e994c:  f94019ae    ldr x14, [x13, #48]
  0x8001e9950:  f94009ad    ldr x13, [x13, #16]
  0x8001e9954:  8b0e01ad    add x13, x13, x14
  0x8001e9958:  eb0c01bf    cmp x13, x12
  0x8001e995c:  1a9f27ec    cset w12, lo
  0x8001e9960:  2a0c014a    orr w10, w10, w12
  0x8001e9964:  9100056c    add x12, x11, #1
  0x8001e9968:  92407d8b    and x11, x12, #0xffffffff
  0x8001e996c:  6b0c011f    cmp w8, w12
  0x8001e9970:  54fffb01    b.ne #-160
  0x8001e9974:  3700462a    tbnz w10, #0, #2244
  0x8001e9978:  b940d3fa    ldr w26, [sp, #208]
  0x8001e997c:  17fffc40    b #-3840
  0x8001e9980:  2a1f03ed    mov w13, wzr
  0x8001e9984:  17fffcf8    b #-3104
  0x8001e9988:  2a1f03ee    mov w14, wzr
  0x8001e998c:  17fffcfa    b #-3096
  0x8001e9990:  885f7d6c    ldxr w12, [x11]
  0x8001e9994:  1280000d    mov w13, #-1
  0x8001e9998:  eb0d019f    cmp x12, x13
  0x8001e999c:  17fffe6f    b #-1604
  0x8001e99a0:  529fffed    mov w13, #65535
  0x8001e99a4:  17fffb92    b #-4536
  0x8001e99a8:  9103a3e0    add x0, sp, #232
  0x8001e99ac:  f90077ff    str xzr, [sp, #232]
  0x8001e99b0:  a90fffff    stp xzr, xzr, [sp, #248]
  0x8001e99b4:  97f92696    bl #-1795496
  0x8001e99b8:  f94077e8    ldr x8, [sp, #232]
  0x8001e99bc:  d10223a1    sub x1, x29, #136
  0x8001e99c0:  aa1403e0    mov x0, x20
  0x8001e99c4:  b940f3e9    ldr w9, [sp, #240]
  0x8001e99c8:  2a1f03e2    mov w2, wzr
  0x8001e99cc:  f81783a8    stur x8, [x29, #-136]
  0x8001e99d0:  b81803a9    stur w9, [x29, #-128]
  0x8001e99d4:  a94fa7e8    ldp x8, x9, [sp, #248]
  0x8001e99d8:  a938a7a8    stp x8, x9, [x29, #-120]
  0x8001e99dc:  9400028a    bl #2600
  0x8001e99e0:  1400010a    b #1064
  0x8001e99e4:  5280002d    mov w13, #1
  0x8001e99e8:  17fffa43    b #-5876
  0x8001e99ec:  2a0803f5    mov w21, w8
  0x8001e99f0:  b90053e8    str w8, [sp, #80]
  0x8001e99f4:  f9515668    ldr x8, [x19, #8872]
  0x8001e99f8:  b4002468    cbz x8, #1164
  0x8001e99fc:  f94057e9    ldr x9, [sp, #168]
  0x8001e9a00:  f9515121    ldr x1, [x9, #8864]
  0x8001e9a04:  b4002401    cbz x1, #1152
  0x8001e9a08:  b94053fa    ldr w26, [sp, #80]
  0x8001e9a0c:  3100075f    cmn w26, #1
  0x8001e9a10:  f94057f3    ldr x19, [sp, #168]
  0x8001e9a14:  54000620    b.eq #196
  0x8001e9a18:  f85483a9    ldur x9, [x29, #-184]
  0x8001e9a1c:  529fffea    mov w10, #65535
  0x8001e9a20:  52800b00    mov w0, #88
  0x8001e9a24:  52800102    mov w2, #8
  0x8001e9a28:  eb08013f    cmp x9, x8
  0x8001e9a2c:  9a888128    csel x8, x9, x8, hi
  0x8001e9a30:  b9629269    ldr w9, [x19, #8848]
  0x8001e9a34:  8b0a0108    add x8, x8, x10
  0x8001e9a38:  9270bd08    and x8, x8, #0xffffffffffff0000
  0x8001e9a3c:  f9006be8    str x8, [sp, #208]
  0x8001e9a40:  52802088    mov w8, #260
  0x8001e9a44:  7219013f    tst w9, #0x80
  0x8001e9a48:  52800089    mov w9, #4
  0x8001e9a4c:  1a880136    csel w22, w9, w8, eq
  0x8001e9a50:  97feded0    bl #-296128
  0x8001e9a54:  b94a2a64    ldr w4, [x19, #2600]
  0x8001e9a58:  52800021    mov w1, #1
  0x8001e9a5c:  2a1a03e2    mov w2, w26
  0x8001e9a60:  f9515267    ldr x7, [x19, #8864]
  0x8001e9a64:  52800083    mov w3, #4
  0x8001e9a68:  2a1603e6    mov w6, w22
  0x8001e9a6c:  f9406be5    ldr x5, [sp, #208]
  0x8001e9a70:  aa0003f5    mov x21, x0
  0x8001e9a74:  941bbe99    bl #7273060
  0x8001e9a78:  f94063e9    ldr x9, [sp, #192]
  0x8001e9a7c:  52805108    mov w8, #648
  0x8001e9a80:  d103a3a1    sub x1, x29, #232
  0x8001e9a84:  a9498bea    ldp x10, x2, [sp, #152]
  0x8001e9a88:  9b282928    smaddl x8, w9, w8, x10
  0x8001e9a8c:  b9404aa9    ldr w9, [x21, #72]
  0x8001e9a90:  f9402aaa    ldr x10, [x21, #80]
  0x8001e9a94:  394a0508    ldrb w8, [x8, #641]
  0x8001e9a98:  6b08013f    cmp w9, w8
  0x8001e9a9c:  52801d09    mov w9, #232
  0x8001e9aa0:  9a9f8108    csel x8, x8, xzr, hi
  0x8001e9aa4:  9ba92900    umaddl x0, w8, w9, x10
  0x8001e9aa8:  b962b268    ldr w8, [x19, #8880]
  0x8001e9aac:  f9515e69    ldr x9, [x19, #8888]
  0x8001e9ab0:  6b1a011f    cmp w8, w26
  0x8001e9ab4:  1a9f8348    csel w8, w26, wzr, hi
  0x8001e9ab8:  f828d935    str x21, [x9, w8, sxtw #3]
  0x8001e9abc:  b940bbe8    ldr w8, [sp, #184]
  0x8001e9ac0:  12000103    and w3, w8, #0x1
  0x8001e9ac4:  94987d9b    bl #39974508
  0x8001e9ac8:  f94063e1    ldr x1, [sp, #192]
  0x8001e9acc:  aa0003f6    mov x22, x0
  0x8001e9ad0:  2a1a03f5    mov w21, w26
  0x8001e9ad4:  b5ff7d40    cbnz x0, #-4184
  0x8001e9ad8:  aa1303e0    mov x0, x19
  0x8001e9adc:  2a1f03e1    mov w1, wzr
  0x8001e9ae0:  94985dc1    bl #39941892
  0x8001e9ae4:  aa1303e0    mov x0, x19
  0x8001e9ae8:  52800021    mov w1, #1
  0x8001e9aec:  94985dbe    bl #39941880
  0x8001e9af0:  aa1303e0    mov x0, x19
  0x8001e9af4:  52800041    mov w1, #2
  0x8001e9af8:  94985dbb    bl #39941868
  0x8001e9afc:  aa1303e0    mov x0, x19
  0x8001e9b00:  52800061    mov w1, #3
  0x8001e9b04:  94985db8    bl #39941856
  0x8001e9b08:  f94063e1    ldr x1, [sp, #192]
  0x8001e9b0c:  aa1f03f6    mov x22, xzr
  0x8001e9b10:  2a1503fa    mov w26, w21
  0x8001e9b14:  17fffbda    b #-4248
  0x8001e9b18:  2a1f03ea    mov w10, wzr
  0x8001e9b1c:  17fffbe1    b #-4220
  0x8001e9b20:  52800028    mov w8, #1
  0x8001e9b24:  14000002    b #8
  0x8001e9b28:  2a1f03e8    mov w8, wzr
  0x8001e9b2c:  f94057f3    ldr x19, [sp, #168]
  0x8001e9b30:  390282c8    strb w8, [x22, #160]
  0x8001e9b34:  f94063e1    ldr x1, [sp, #192]
  0x8001e9b38:  17fffbdf    b #-4228
  0x8001e9b3c:  39450a88    ldrb w8, [x20, #322]
  0x8001e9b40:  aa1403e0    mov x0, x20
  0x8001e9b44:  b962b269    ldr w9, [x19, #8880]
  0x8001e9b48:  6b08013f    cmp w9, w8
  0x8001e9b4c:  f9515e6a    ldr x10, [x19, #8888]
  0x8001e9b50:  f9408a89    ldr x9, [x20, #272]
  0x8001e9b54:  9a9f8108    csel x8, x8, xzr, hi
  0x8001e9b58:  f8687948    ldr x8, [x10, x8, lsl #3]
  0x8001e9b5c:  394a0529    ldrb w9, [x9, #641]
  0x8001e9b60:  b940490a    ldr w10, [x8, #72]
  0x8001e9b64:  f9402908    ldr x8, [x8, #80]
  0x8001e9b68:  6b09015f    cmp w10, w9
  0x8001e9b6c:  52801d0a    mov w10, #232
  0x8001e9b70:  9a9f8129    csel x9, x9, xzr, hi
  0x8001e9b74:  9baa2133    umaddl x19, w9, w10, x8
  0x8001e9b78:  f00152a8    adrp x8, #44396544
  0x8001e9b7c:  9100cd08    add x8, x8, #51
  0x8001e9b80:  f81783a8    stur x8, [x29, #-136]
  0x8001e9b84:  9497eca3    bl #39826060
  0x8001e9b88:  f81583a0    stur x0, [x29, #-168]
  0x8001e9b8c:  d10223a1    sub x1, x29, #136
  0x8001e9b90:  d102a3a2    sub x2, x29, #168
  0x8001e9b94:  aa1303e0    mov x0, x19
  0x8001e9b98:  aa1603e3    mov x3, x22
  0x8001e9b9c:  94988006    bl #39976984
  0x8001e9ba0:  17fffcae    b #-3400
  0x8001e9ba4:  b94053e8    ldr w8, [sp, #80]
  0x8001e9ba8:  2a0203f3    mov w19, w2
  0x8001e9bac:  2a0603e9    mov w9, w6
  0x8001e9bb0:  a9011ffe    stp x30, x7, [sp, #16]
  0x8001e9bb4:  3100051f    cmn w8, #1
  0x8001e9bb8:  a90293e5    stp x5, x4, [sp, #40]
  0x8001e9bbc:  1a8800c8    csel w8, w6, w8, eq
  0x8001e9bc0:  b90053e8    str w8, [sp, #80]
  0x8001e9bc4:  17fffcdd    b #-3212
  0x8001e9bc8:  aa1f03ea    mov x10, xzr
  0x8001e9bcc:  17fffaa8    b #-5472
  0x8001e9bd0:  52800028    mov w8, #1
  0x8001e9bd4:  17fffaaa    b #-5464
  0x8001e9bd8:  f94027e8    ldr x8, [sp, #72]
  0x8001e9bdc:  17fffaac    b #-5456
  0x8001e9be0:  f94047ec    ldr x12, [sp, #136]
  0x8001e9be4:  aa0803ed    mov x13, x8
  0x8001e9be8:  aa0b03ee    mov x14, x11
  0x8001e9bec:  b90062c9    str w9, [x22, #96]
  0x8001e9bf0:  8b0c014a    add x10, x10, x12
  0x8001e9bf4:  f9403fec    ldr x12, [sp, #120]
  0x8001e9bf8:  8a0c014c    and x12, x10, x12
  0x8001e9bfc:  aa0c03ea    mov x10, x12
  0x8001e9c00:  17fffb0b    b #-5076
  0x8001e9c04:  f94023ec    ldr x12, [sp, #64]
  0x8001e9c08:  b9000869    str w9, [x3, #8]
  0x8001e9c0c:  8b0a018a    add x10, x12, x10
  0x8001e9c10:  4b0c03ec    neg w12, w12
  0x8001e9c14:  a9012c68    stp x8, x11, [x3, #16]
  0x8001e9c18:  93407d8c    sxtw x12, w12
  0x8001e9c1c:  d100054a    sub x10, x10, #1
  0x8001e9c20:  8a0c014a    and x10, x10, x12
  0x8001e9c24:  f900006a    str x10, [x3]
  0x8001e9c28:  17fffb05    b #-5100
  0x8001e9c2c:  52800028    mov w8, #1
  0x8001e9c30:  390282c8    strb w8, [x22, #160]
  0x8001e9c34:  17fffb5d    b #-4748
  0x8001e9c38:  aa1503e0    mov x0, x21
  0x8001e9c3c:  b90027e2    str w2, [sp, #36]
  0x8001e9c40:  b9000fe6    str w6, [sp, #12]
  0x8001e9c44:  a90293e5    stp x5, x4, [sp, #40]
  0x8001e9c48:  a9011ffe    stp x30, x7, [sp, #16]
  0x8001e9c4c:  94987fb3    bl #39976652
  0x8001e9c50:  a9411ffe    ldp x30, x7, [sp, #16]
  0x8001e9c54:  52801d11    mov w17, #232
  0x8001e9c58:  b9400fe6    ldr w6, [sp, #12]
  0x8001e9c5c:  a94293e5    ldp x5, x4, [sp, #40]
  0x8001e9c60:  b94027e2    ldr w2, [sp, #36]
  0x8001e9c64:  f94063e1    ldr x1, [sp, #192]
  0x8001e9c68:  17fffb54    b #-4784
  0x8001e9c6c:  aa1f03ef    mov x15, xzr
  0x8001e9c70:  17fffb5e    b #-4744
  0x8001e9c74:  aa1f03ec    mov x12, xzr
  0x8001e9c78:  17fffb5f    b #-4740
  0x8001e9c7c:  aa1f03f0    mov x16, xzr
  0x8001e9c80:  17fffb63    b #-4724
  0x8001e9c84:  5280002f    mov w15, #1
  0x8001e9c88:  17fffb65    b #-4716
  0x8001e9c8c:  aa1f03ed    mov x13, xzr
  0x8001e9c90:  17fffb65    b #-4716
  0x8001e9c94:  aa1f03ef    mov x15, xzr
  0x8001e9c98:  17fffb68    b #-4704
  0x8001e9c9c:  5280002e    mov w14, #1
  0x8001e9ca0:  17fffb6a    b #-4696
  0x8001e9ca4:  aa1f03ec    mov x12, xzr
  0x8001e9ca8:  17fffb6c    b #-4688
  0x8001e9cac:  aa1503e0    mov x0, x21
  0x8001e9cb0:  aa1603e1    mov x1, x22
  0x8001e9cb4:  2a0203f3    mov w19, w2
  0x8001e9cb8:  a9011ffe    stp x30, x7, [sp, #16]
  0x8001e9cbc:  2a0603f5    mov w21, w6
  0x8001e9cc0:  a90293e5    stp x5, x4, [sp, #40]
  0x8001e9cc4:  94987e4f    bl #39975228
  0x8001e9cc8:  2a1503e9    mov w9, w21
  0x8001e9ccc:  17fffc9b    b #-3476
  0x8001e9cd0:  aa1f03eb    mov x11, xzr
  0x8001e9cd4:  2a1f03e9    mov w9, wzr
  0x8001e9cd8:  17fffac2    b #-5368
  0x8001e9cdc:  f940058b    ldr x11, [x12, #8]
  0x8001e9ce0:  f9400d29    ldr x9, [x9, #24]
  0x8001e9ce4:  cb09016b    sub x11, x11, x9
  0x8001e9ce8:  17fffabd    b #-5388
  0x8001e9cec:  394282c8    ldrb w8, [x22, #160]
  0x8001e9cf0:  34ff7fe8    cbz w8, #-4100
  0x8001e9cf4:  3942e288    ldrb w8, [x20, #184]
  0x8001e9cf8:  7100039f    cmp w28, #0
  0x8001e9cfc:  910383e1    add x1, sp, #224
  0x8001e9d00:  b940cfe2    ldr w2, [sp, #204]
  0x8001e9d04:  aa1403e0    mov x0, x20
  0x8001e9d08:  51017915    sub w21, w8, #94
  0x8001e9d0c:  3a451aa0    ccmn w21, #5, #0, ne
  0x8001e9d10:  1a9f27e3    cset w3, lo
  0x8001e9d14:  94985d08    bl #39941152
  0x8001e9d18:  31001abf    cmn w21, #6
  0x8001e9d1c:  54ff8988    b.hi #-3792
  0x8001e9d20:  f001bb08    adrp x8, #58077184
  0x8001e9d24:  d10223a3    sub x3, x29, #136
  0x8001e9d28:  f947b908    ldr x8, [x8, #3952]
  0x8001e9d2c:  f9405be1    ldr x1, [sp, #176]
  0x8001e9d30:  aa1403e2    mov x2, x20
  0x8001e9d34:  f9400100    ldr x0, [x8]
  0x8001e9d38:  a937ffbf    stp xzr, xzr, [x29, #-136]
  0x8001e9d3c:  94979550    bl #39736640
  0x8001e9d40:  17fffc43    b #-3828
  0x8001e9d44:  b940110b    ldr w11, [x8, #16]
  0x8001e9d48:  7100017f    cmp w11, #0
  0x8001e9d4c:  f940050c    ldr x12, [x8, #8]
  0x8001e9d50:  9a9fc18b    csel x11, x12, xzr, gt
  0x8001e9d54:  b400008b    cbz x11, #16
  0x8001e9d58:  4b0a03ec    neg w12, w10
  0x8001e9d5c:  8b2cc179    add x25, x11, w12, sxtw
  0x8001e9d60:  b50032d9    cbnz x25, #1624
  0x8001e9d64:  f951226c    ldr x12, [x19, #8768]
  0x8001e9d68:  52844708    mov w8, #8760
  0x8001e9d6c:  8b080268    add x8, x19, x8
  0x8001e9d70:  eb08019f    cmp x12, x8
  0x8001e9d74:  54002cc0    b.eq #1432
  0x8001e9d78:  b9a24e69    ldrsw x9, [x19, #8780]
  0x8001e9d7c:  cb0903ea    neg x10, x9
  0x8001e9d80:  f9405bf7    ldr x23, [sp, #176]
  0x8001e9d84:  cb09010b    sub x11, x8, x9
  0x8001e9d88:  cb090194    sub x20, x12, x9
  0x8001e9d8c:  39451a8c    ldrb w12, [x20, #326]
  0x8001e9d90:  8b090288    add x8, x20, x9
  0x8001e9d94:  35002c2c    cbnz w12, #1412
  0x8001e9d98:  f9400109    ldr x9, [x8]
  0x8001e9d9c:  b4000069    cbz x9, #12
  0x8001e9da0:  f940050a    ldr x10, [x8, #8]
  0x8001e9da4:  f900052a    str x10, [x9, #8]
  0x8001e9da8:  f9400509    ldr x9, [x8, #8]
  0x8001e9dac:  b4000069    cbz x9, #12
  0x8001e9db0:  f940010a    ldr x10, [x8]
  0x8001e9db4:  f900012a    str x10, [x9]
  0x8001e9db8:  a9007d1f    stp xzr, xzr, [x8]
  0x8001e9dbc:  b9624a68    ldr w8, [x19, #8776]
  0x8001e9dc0:  51000508    sub w8, w8, #1
  0x8001e9dc4:  b9224a68    str w8, [x19, #8776]
  0x8001e9dc8:  b94a2a68    ldr w8, [x19, #2600]
  0x8001e9dcc:  b9624a69    ldr w9, [x19, #8776]
  0x8001e9dd0:  4b090108    sub w8, w8, w9
  0x8001e9dd4:  52845809    mov w9, #8896
  0x8001e9dd8:  8b090269    add x9, x19, x9
  0x8001e9ddc:  7940012a    ldrh w10, [x9]
  0x8001e9de0:  6b0a011f    cmp w8, w10
  0x8001e9de4:  540003cc    b.gt #120
  0x8001e9de8:  39459288    ldrb w8, [x20, #356]
  0x8001e9dec:  52800309    mov w9, #24
  0x8001e9df0:  9ba90109    umaddl x9, w8, w9, x0
  0x8001e9df4:  b9801529    ldrsw x9, [x9, #20]
  0x8001e9df8:  8b140129    add x9, x9, x20
  0x8001e9dfc:  a940292b    ldp x11, x10, [x9]
  0x8001e9e00:  aa0b014c    orr x12, x10, x11
  0x8001e9e04:  b500012c    cbnz x12, #36
  0x8001e9e08:  f9406fe0    ldr x0, [sp, #216]
  0x8001e9e0c:  94a6e899    bl #43754084
  0x8001e9e10:  910423e1    add x1, sp, #264
  0x8001e9e14:  aa1403e0    mov x0, x20
  0x8001e9e18:  9400138a    bl #20008
  0x8001e9e1c:  52800028    mov w8, #1
  0x8001e9e20:  b900cfe8    str w8, [sp, #204]
  0x8001e9e24:  17fffba7    b #-4452
  0x8001e9e28:  b400006b    cbz x11, #12
  0x8001e9e2c:  f900056a    str x10, [x11, #8]
  0x8001e9e30:  f940052a    ldr x10, [x9, #8]
  0x8001e9e34:  b400006a    cbz x10, #12
  0x8001e9e38:  f940012b    ldr x11, [x9]
  0x8001e9e3c:  f900014b    str x11, [x10]
  0x8001e9e40:  a9007d3f    stp xzr, xzr, [x9]
  0x8001e9e44:  52800309    mov w9, #24
  0x8001e9e48:  9ba90108    umaddl x8, w8, w9, x0
  0x8001e9e4c:  b9401109    ldr w9, [x8, #16]
  0x8001e9e50:  51000529    sub w9, w9, #1
  0x8001e9e54:  b9001109    str w9, [x8, #16]
  0x8001e9e58:  17ffffec    b #-80
  0x8001e9e5c:  79000128    strh w8, [x9]
  0x8001e9e60:  17ffffe2    b #-120
  0x8001e9e64:  2a1f03ec    mov w12, wzr
  0x8001e9e68:  17fffbe7    b #-4196
  0x8001e9e6c:  aa1f03e9    mov x9, xzr
  0x8001e9e70:  17fffa1f    b #-6020
  0x8001e9e74:  5280002b    mov w11, #1
  0x8001e9e78:  390286cb    strb w11, [x22, #161]
  0x8001e9e7c:  34ff55af    cbz w15, #-5452
  0x8001e9e80:  17fffaca    b #-5336
  0x8001e9e84:  f94057f3    ldr x19, [sp, #168]
  0x8001e9e88:  17ffff14    b #-944
  0x8001e9e8c:  f9406be0    ldr x0, [sp, #208]
  0x8001e9e90:  94a6e878    bl #43753952
  0x8001e9e94:  f9400348    ldr x8, [x26]
  0x8001e9e98:  aa1a03e0    mov x0, x26
  0x8001e9e9c:  f9400908    ldr x8, [x8, #16]
  0x8001e9ea0:  d63f0100    blr x8
  0x8001e9ea4:  f9406be0    ldr x0, [sp, #208]
  0x8001e9ea8:  94a6e86e    bl #43753912
  0x8001e9eac:  b94a7b48    ldr w8, [x26, #2680]
  0x8001e9eb0:  7100011f    cmp w8, #0
  0x8001e9eb4:  5400286d    b.le #1292
  0x8001e9eb8:  f94063fa    ldr x26, [sp, #192]
  0x8001e9ebc:  51000508    sub w8, w8, #1
  0x8001e9ec0:  b90a7b48    str w8, [x26, #2680]
  0x8001e9ec4:  f9454349    ldr x9, [x26, #2688]
  0x8001e9ec8:  f9406be0    ldr x0, [sp, #208]
  0x8001e9ecc:  f868593b    ldr x27, [x9, w8, uxtw #3]
  0x8001e9ed0:  94a6e868    bl #43753888
  0x8001e9ed4:  f94057f3    ldr x19, [sp, #168]
  0x8001e9ed8:  f9006ffb    str x27, [sp, #216]
  0x8001e9edc:  b5ff8d9b    cbnz x27, #-3664
  0x8001e9ee0:  1400013c    b #1264
  0x8001e9ee4:  aa1f03fa    mov x26, xzr
  0x8001e9ee8:  17fffc71    b #-3644
  0x8001e9eec:  7940ce88    ldrh w8, [x20, #102]
  0x8001e9ef0:  35000448    cbnz w8, #136
  0x8001e9ef4:  79408e89    ldrh w9, [x20, #70]
  0x8001e9ef8:  aa1f03e8    mov x8, xzr
  0x8001e9efc:  d0015aaa    adrp x10, #45441024
  0x8001e9f00:  910e814a    add x10, x10, #928
  0x8001e9f04:  b868794b    ldr w11, [x10, x8, lsl #2]
  0x8001e9f08:  6b09017f    cmp w11, w9
  0x8001e9f0c:  540000a0    b.eq #20
  0x8001e9f10:  91000508    add x8, x8, #1
  0x8001e9f14:  f101791f    cmp x8, #94
  0x8001e9f18:  54ffff61    b.ne #-20
  0x8001e9f1c:  aa1f03e8    mov x8, xzr
  0x8001e9f20:  f9405be9    ldr x9, [sp, #176]
  0x8001e9f24:  b0015aaa    adrp x10, #45436928
  0x8001e9f28:  912b414a    add x10, x10, #2768
  0x8001e9f2c:  52800721    mov w1, #57
  0x8001e9f30:  d102a3a2    sub x2, x29, #168
  0x8001e9f34:  79400133    ldrh w19, [x9]
  0x8001e9f38:  52800289    mov w9, #20
  0x8001e9f3c:  9b092908    madd x8, x8, x9, x10
  0x8001e9f40:  3940211b    ldrb w27, [x8, #8]
  0x8001e9f44:  b001c688    adrp x8, #59576320
  0x8001e9f48:  9137a108    add x8, x8, #3560
  0x8001e9f4c:  f9400108    ldr x8, [x8]
  0x8001e9f50:  f940b500    ldr x0, [x8, #360]
  0x8001e9f54:  d001c148    adrp x8, #58892288
  0x8001e9f58:  913b2108    add x8, x8, #3784
  0x8001e9f5c:  f9400108    ldr x8, [x8]
  0x8001e9f60:  d63f0100    blr x8
  0x8001e9f64:  b85583a8    ldur w8, [x29, #-168]
  0x8001e9f68:  1b132369    madd w9, w27, w19, w8
  0x8001e9f6c:  4b0803e8    neg w8, w8
  0x8001e9f70:  51000529    sub w9, w9, #1
  0x8001e9f74:  0a080128    and w8, w9, w8
  0x8001e9f78:  93407d01    sxtw x1, w8
  0x8001e9f7c:  f001c148    adrp x8, #58896384
  0x8001e9f80:  910ec108    add x8, x8, #944
  0x8001e9f84:  d10223a0    sub x0, x29, #136
  0x8001e9f88:  f9400108    ldr x8, [x8]
  0x8001e9f8c:  d63f0100    blr x8
  0x8001e9f90:  39419288    ldrb w8, [x20, #100]
  0x8001e9f94:  52800809    mov w9, #64
  0x8001e9f98:  f94057f3    ldr x19, [sp, #168]
  0x8001e9f9c:  17fffc9a    b #-3480
  0x8001e9fa0:  f001bb0a    adrp x10, #58077184
  0x8001e9fa4:  7100cb5f    cmp w26, #50
  0x8001e9fa8:  f947b94a    ldr x10, [x10, #3952]
  0x8001e9fac:  1a9f17ec    cset w12, eq
  0x8001e9fb0:  f940014a    ldr x10, [x10]
  0x8001e9fb4:  b94d114a    ldr w10, [x10, #3344]
  0x8001e9fb8:  53037d4d    lsr w13, w10, #3
  0x8001e9fbc:  1215014a    and w10, w10, #0x800
  0x8001e9fc0:  121901ad    and w13, w13, #0x80
  0x8001e9fc4:  6a4a2d9f    tst w12, w10, lsr #11
  0x8001e9fc8:  2a0b01ab    orr w11, w13, w11
  0x8001e9fcc:  3218016d    orr w13, w11, #0x100
  0x8001e9fd0:  1a8b11aa    csel w10, w13, w11, ne
  0x8001e9fd4:  17fffc9a    b #-3480
  0x8001e9fd8:  f9406fe8    ldr x8, [sp, #216]
  0x8001e9fdc:  aa1503e1    mov x1, x21
  0x8001e9fe0:  f9400100    ldr x0, [x8]
  0x8001e9fe4:  f001c148    adrp x8, #58896384
  0x8001e9fe8:  9113c108    add x8, x8, #1264
  0x8001e9fec:  f9400108    ldr x8, [x8]
  0x8001e9ff0:  d63f0100    blr x8
  0x8001e9ff4:  f94063ee    ldr x14, [sp, #192]
  0x8001e9ff8:  17fffcc0    b #-3328
  0x8001e9ffc:  f94063e0    ldr x0, [sp, #192]
  0x8001ea000:  2a1f03e1    mov w1, wzr
  0x8001ea004:  949795d2    bl #39737160
  0x8001ea008:  f94063ee    ldr x14, [sp, #192]
  0x8001ea00c:  17fffcf9    b #-3100
  0x8001ea010:  f9403beb    ldr x11, [sp, #112]
  0x8001ea014:  885f7d68    ldxr w8, [x11]
  0x8001ea018:  11000509    add w9, w8, #1
  0x8001ea01c:  880a7d69    stxr w10, w9, [x11]
  0x8001ea020:  35ffffaa    cbnz w10, #-12
  0x8001ea024:  f94063e9    ldr x9, [sp, #192]
  0x8001ea028:  5280002a    mov w10, #1
  0x8001ea02c:  f9403bee    ldr x14, [sp, #112]
  0x8001ea030:  b94a392b    ldr w11, [x9, #2616]
  0x8001ea034:  51000569    sub w9, w11, #1
  0x8001ea038:  0a080128    and w8, w9, w8
  0x8001ea03c:  12800009    mov w9, #-1
  0x8001ea040:  2a0803f5    mov w21, w8
  0x8001ea044:  f94063ec    ldr x12, [sp, #192]
  0x8001ea048:  6b15017f    cmp w11, w21
  0x8001ea04c:  5280050d    mov w13, #40
  0x8001ea050:  1a9f82ab    csel w11, w21, wzr, hi
  0x8001ea054:  f945218c    ldr x12, [x12, #2624]
  0x8001ea058:  9b2d316b    smaddl x11, w11, w13, x12
  0x8001ea05c:  885f7d6c    ldxr w12, [x11]
  0x8001ea060:  eb09019f    cmp x12, x9
  0x8001ea064:  1a9f17ec    cset w12, eq
  0x8001ea068:  b90093ec    str w12, [sp, #144]
  0x8001ea06c:  54001081    b.ne #528
  0x8001ea070:  880c7d6a    stxr w12, w10, [x11]
  0x8001ea074:  350019ac    cbnz w12, #820
  0x8001ea078:  f94063e9    ldr x9, [sp, #192]
  0x8001ea07c:  b94a3928    ldr w8, [x9, #2616]
  0x8001ea080:  f945212a    ldr x10, [x9, #2624]
  0x8001ea084:  6b15011f    cmp w8, w21
  0x8001ea088:  1a9f82a8    csel w8, w21, wzr, hi
  0x8001ea08c:  93407d09    sxtw x9, w8
  0x8001ea090:  f90043e9    str x9, [sp, #128]
  0x8001ea094:  9001c689    adrp x9, #59572224
  0x8001ea098:  913c8129    add x9, x9, #3872
  0x8001ea09c:  f90047ea    str x10, [sp, #136]
  0x8001ea0a0:  f9400129    ldr x9, [x9]
  0x8001ea0a4:  b9400d3a    ldr w26, [x9, #12]
  0x8001ea0a8:  52800509    mov w9, #40
  0x8001ea0ac:  9b29291b    smaddl x27, w8, w9, x10
  0x8001ea0b0:  b8408f68    ldr w8, [x27, #8]!
  0x8001ea0b4:  6b08035f    cmp w26, w8
  0x8001ea0b8:  540019e0    b.eq #828
  0x8001ea0bc:  f94063e8    ldr x8, [sp, #192]
  0x8001ea0c0:  b900037a    str w26, [x27]
  0x8001ea0c4:  d001bb13    adrp x19, #58073088
  0x8001ea0c8:  79555508    ldrh w8, [x8, #2730]
  0x8001ea0cc:  f9461e73    ldr x19, [x19, #3128]
  0x8001ea0d0:  0b0802ba    add w26, w21, w8
  0x8001ea0d4:  f9400268    ldr x8, [x19]
  0x8001ea0d8:  9108e11b    add x27, x8, #568
  0x8001ea0dc:  aa1b03e0    mov x0, x27
  0x8001ea0e0:  94a6e7e0    bl #43753344
  0x8001ea0e4:  f9400268    ldr x8, [x19]
  0x8001ea0e8:  2a1a03e1    mov w1, w26
  0x8001ea0ec:  aa1f03e3    mov x3, xzr
  0x8001ea0f0:  9105e100    add x0, x8, #376
  0x8001ea0f4:  d001c148    adrp x8, #58892288
  0x8001ea0f8:  91084108    add x8, x8, #528
  0x8001ea0fc:  f9404ff3    ldr x19, [sp, #152]
  0x8001ea100:  f9400108    ldr x8, [x8]
  0x8001ea104:  aa1303e2    mov x2, x19
  0x8001ea108:  d63f0100    blr x8
  0x8001ea10c:  aa1b03e0    mov x0, x27
  0x8001ea110:  94a6e7d8    bl #43753312
  0x8001ea114:  a94827ea    ldp x10, x9, [sp, #128]
  0x8001ea118:  52800508    mov w8, #40
  0x8001ea11c:  aa1303e0    mov x0, x19
  0x8001ea120:  9b28255a    smaddl x26, w10, w8, x9
  0x8001ea124:  d001bb88    adrp x8, #58138624
  0x8001ea128:  f9001353    str x19, [x26, #32]
  0x8001ea12c:  f9442108    ldr x8, [x8, #2112]
  0x8001ea130:  f9400108    ldr x8, [x8]
  0x8001ea134:  d63f0100    blr x8
  0x8001ea138:  53030c08    ubfx w8, w0, #3, #1
  0x8001ea13c:  b9000748    str w8, [x26, #4]
  0x8001ea140:  f94053ea    ldr x10, [sp, #160]
  0x8001ea144:  885f7d48    ldxr w8, [x10]
  0x8001ea148:  11000508    add w8, w8, #1
  0x8001ea14c:  88097d48    stxr w9, w8, [x10]
  0x8001ea150:  35ffffa9    cbnz w9, #-12
  0x8001ea154:  f94063e8    ldr x8, [sp, #192]
  0x8001ea158:  79555508    ldrh w8, [x8, #2730]
  0x8001ea15c:  0b0802ba    add w26, w21, w8
  0x8001ea160:  f94057f3    ldr x19, [sp, #168]
  0x8001ea164:  5280051b    mov w27, #40
  0x8001ea168:  f94063eb    ldr x11, [sp, #192]
  0x8001ea16c:  f9406ff5    ldr x21, [sp, #216]
  0x8001ea170:  b94093e8    ldr w8, [sp, #144]
  0x8001ea174:  370799a8    tbnz w8, #0, #-3276
  0x8001ea178:  f94063e0    ldr x0, [sp, #192]
  0x8001ea17c:  2a1f03e1    mov w1, wzr
  0x8001ea180:  94979573    bl #39736780
  0x8001ea184:  f94063eb    ldr x11, [sp, #192]
  0x8001ea188:  f9406be0    ldr x0, [sp, #208]
  0x8001ea18c:  aa0b03f3    mov x19, x11
  0x8001ea190:  94a6e7b4    bl #43753168
  0x8001ea194:  912a6261    add x1, x19, #2712
  0x8001ea198:  aa1503e0    mov x0, x21
  0x8001ea19c:  94979399    bl #39734884
  0x8001ea1a0:  b98a7a68    ldrsw x8, [x19, #2680]
  0x8001ea1a4:  b94a7e69    ldr w9, [x19, #2684]
  0x8001ea1a8:  6b09011f    cmp w8, w9
  0x8001ea1ac:  5400010a    b.ge #32
  0x8001ea1b0:  f94063ea    ldr x10, [sp, #192]
  0x8001ea1b4:  f9406feb    ldr x11, [sp, #216]
  0x8001ea1b8:  f9454149    ldr x9, [x10, #2688]
  0x8001ea1bc:  f828792b    str x11, [x9, x8, lsl #3]
  0x8001ea1c0:  b94a7948    ldr w8, [x10, #2680]
  0x8001ea1c4:  11000508    add w8, w8, #1
  0x8001ea1c8:  b90a7948    str w8, [x10, #2680]
  0x8001ea1cc:  f9406be0    ldr x0, [sp, #208]
  0x8001ea1d0:  94a6e7a8    bl #43753120
  0x8001ea1d4:  f94057f3    ldr x19, [sp, #168]
  0x8001ea1d8:  1280001a    mov w26, #-1
  0x8001ea1dc:  17fffce7    b #-3172
  0x8001ea1e0:  aa1f03e8    mov x8, xzr
  0x8001ea1e4:  17fffcd4    b #-3248
  0x8001ea1e8:  91013f68    add x8, x27, #79
  0x8001ea1ec:  927ae761    and x1, x27, #0xffffffffffffffc0
  0x8001ea1f0:  aa1503e0    mov x0, x21
  0x8001ea1f4:  927ae508    and x8, x8, #0xffffffffffffffc0
  0x8001ea1f8:  cb010102    sub x2, x8, x1
  0x8001ea1fc:  d001c148    adrp x8, #58892288
  0x8001ea200:  91074108    add x8, x8, #464
  0x8001ea204:  f9400108    ldr x8, [x8]
  0x8001ea208:  d63f0100    blr x8
  0x8001ea20c:  17fffcc4    b #-3312
  0x8001ea210:  91013f68    add x8, x27, #79
  0x8001ea214:  927ae761    and x1, x27, #0xffffffffffffffc0
  0x8001ea218:  aa1503e0    mov x0, x21
  0x8001ea21c:  927ae508    and x8, x8, #0xffffffffffffffc0
  0x8001ea220:  cb010102    sub x2, x8, x1
  0x8001ea224:  d001c148    adrp x8, #58892288
  0x8001ea228:  91072108    add x8, x8, #456
  0x8001ea22c:  f9400108    ldr x8, [x8]
  0x8001ea230:  d63f0100    blr x8
  0x8001ea234:  17fffcd1    b #-3260
  0x8001ea238:  aa1a03e0    mov x0, x26
  0x8001ea23c:  aa1603e1    mov x1, x22
  0x8001ea240:  94987cf0    bl #39973824
  0x8001ea244:  b940d3f5    ldr w21, [sp, #208]
  0x8001ea248:  b940d3e8    ldr w8, [sp, #208]
  0x8001ea24c:  52801d0b    mov w11, #232
  0x8001ea250:  11000508    add w8, w8, #1
  0x8001ea254:  b94027e2    ldr w2, [sp, #36]
  0x8001ea258:  a94a4fe3    ldp x3, x19, [sp, #160]
  0x8001ea25c:  a94293e5    ldp x5, x4, [sp, #40]
  0x8001ea260:  b900d3e8    str w8, [sp, #208]
  0x8001ea264:  f94047e8    ldr x8, [sp, #136]
  0x8001ea268:  91000508    add x8, x8, #1
  0x8001ea26c:  92407d09    and x9, x8, #0xffffffff
  0x8001ea270:  6b08005f    cmp w2, w8
  0x8001ea274:  54ffa301    b.ne #-2976
  0x8001ea278:  17fffddf    b #-2180
  0x8001ea27c:  885f7dcc    ldxr w12, [x14]
  0x8001ea280:  1100058b    add w11, w12, #1
  0x8001ea284:  880d7dcb    stxr w13, w11, [x14]
  0x8001ea288:  35ffffad    cbnz w13, #-12
  0x8001ea28c:  f94063eb    ldr x11, [sp, #192]
  0x8001ea290:  b94a396b    ldr w11, [x11, #2616]
  0x8001ea294:  5100056d    sub w13, w11, #1
  0x8001ea298:  0a0c01b5    and w21, w13, w12
  0x8001ea29c:  6b0802bf    cmp w21, w8
  0x8001ea2a0:  54ffed21    b.ne #-604
  0x8001ea2a4:  f94063e0    ldr x0, [sp, #192]
  0x8001ea2a8:  f9400008    ldr x8, [x0]
  0x8001ea2ac:  f9400908    ldr x8, [x8, #16]
  0x8001ea2b0:  d63f0100    blr x8
  0x8001ea2b4:  17ffffab    b #-340
  0x8001ea2b8:  b400006b    cbz x11, #12
  0x8001ea2bc:  f900056a    str x10, [x11, #8]
  0x8001ea2c0:  f940052a    ldr x10, [x9, #8]
  0x8001ea2c4:  b400006a    cbz x10, #12
  0x8001ea2c8:  f940012b    ldr x11, [x9]
  0x8001ea2cc:  f900014b    str x11, [x10]
  0x8001ea2d0:  f9402fea    ldr x10, [sp, #88]
  0x8001ea2d4:  a9007d3f    stp xzr, xzr, [x9]
  0x8001ea2d8:  52800309    mov w9, #24
  0x8001ea2dc:  f94057f3    ldr x19, [sp, #168]
  0x8001ea2e0:  9ba92908    umaddl x8, w8, w9, x10
  0x8001ea2e4:  b9401109    ldr w9, [x8, #16]
  0x8001ea2e8:  51000529    sub w9, w9, #1
  0x8001ea2ec:  b9001109    str w9, [x8, #16]
  0x8001ea2f0:  17fff886    b #-7656
  0x8001ea2f4:  f9400508    ldr x8, [x8, #8]
  0x8001ea2f8:  8b0a0115    add x21, x8, x10
  0x8001ea2fc:  eb0b02bf    cmp x21, x11
  0x8001ea300:  54ff0c41    b.ne #-7800
  0x8001ea304:  aa1f03f5    mov x21, xzr
  0x8001ea308:  17fff86f    b #-7748
  0x8001ea30c:  f9405bf7    ldr x23, [sp, #176]
  0x8001ea310:  aa1f03f4    mov x20, xzr
  0x8001ea314:  17fffead    b #-1356
  0x8001ea318:  f9400508    ldr x8, [x8, #8]
  0x8001ea31c:  8b0a0114    add x20, x8, x10
  0x8001ea320:  eb0b029f    cmp x20, x11
  0x8001ea324:  54ffd341    b.ne #-1432
  0x8001ea328:  17fffffa    b #-24
  0x8001ea32c:  94a6e5e9    bl #43751332
  0x8001ea330:  17fffce0    b #-3200
  0x8001ea334:  b94053e8    ldr w8, [sp, #80]
  0x8001ea338:  3100051f    cmn w8, #1
  0x8001ea33c:  b940d3e9    ldr w9, [sp, #208]
  0x8001ea340:  1a880128    csel w8, w9, w8, eq
  0x8001ea344:  b90053e8    str w8, [sp, #80]
  0x8001ea348:  17ffffc0    b #-256
  0x8001ea34c:  b9808748    ldrsw x8, [x26, #132]
  0x8001ea350:  f94053e3    ldr x3, [sp, #160]
  0x8001ea354:  f8686ac9    ldr x9, [x22, x8]
  0x8001ea358:  cb080136    sub x22, x9, x8
  0x8001ea35c:  eb15013f    cmp x9, x21
  0x8001ea360:  fa401ac4    ccmp x22, #0, #4, ne
  0x8001ea364:  54ff9e41    b.ne #-3128
  0x8001ea368:  17ffffb7    b #-292
  0x8001ea36c:  aa1a03e0    mov x0, x26
  0x8001ea370:  94987dea    bl #39974824
  0x8001ea374:  17fffcf7    b #-3108
  0x8001ea378:  aa1f03ec    mov x12, xzr
  0x8001ea37c:  17fffd12    b #-3000
  0x8001ea380:  aa1f03ed    mov x13, xzr
  0x8001ea384:  17fffd1d    b #-2956
  0x8001ea388:  aa1f03ec    mov x12, xzr
  0x8001ea38c:  17fffd3a    b #-2840
  0x8001ea390:  aa1f03ed    mov x13, xzr
  0x8001ea394:  17fffd45    b #-2796
  0x8001ea398:  aa1f03ec    mov x12, xzr
  0x8001ea39c:  17fffd62    b #-2680
  0x8001ea3a0:  aa1f03ed    mov x13, xzr
  0x8001ea3a4:  17fffd6d    b #-2636
  0x8001ea3a8:  885f7d6c    ldxr w12, [x11]
  0x8001ea3ac:  1280000d    mov w13, #-1
  0x8001ea3b0:  eb0d019f    cmp x12, x13
  0x8001ea3b4:  17ffff2c    b #-848
  0x8001ea3b8:  93407d8b    sxtw x11, w12
  0x8001ea3bc:  17fff9db    b #-6292
  0x8001ea3c0:  f9406be0    ldr x0, [sp, #208]
  0x8001ea3c4:  94a6e72b    bl #43752620
  0x8001ea3c8:  f94057f3    ldr x19, [sp, #168]
  0x8001ea3cc:  f94063fa    ldr x26, [sp, #192]
  0x8001ea3d0:  f9400348    ldr x8, [x26]
  0x8001ea3d4:  aa1a03e0    mov x0, x26
  0x8001ea3d8:  f9400908    ldr x8, [x8, #16]
  0x8001ea3dc:  d63f0100    blr x8
  0x8001ea3e0:  aa1a03e0    mov x0, x26
  0x8001ea3e4:  2a1f03e1    mov w1, wzr
  0x8001ea3e8:  949794d9    bl #39736164
  0x8001ea3ec:  f9006fff    str xzr, [sp, #216]
  0x8001ea3f0:  17fffb38    b #-4896
  0x8001ea3f4:  f94063e0    ldr x0, [sp, #192]
  0x8001ea3f8:  2a1f03e1    mov w1, wzr
  0x8001ea3fc:  949794d4    bl #39736144
  0x8001ea400:  17ffff2f    b #-836

