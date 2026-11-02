; UltraTears chunk main_107_buddysplit: 1 functions [0x8001a6094..0x8001a6c10)

; Function f_8001a6094 [0x8001a6094..0x8001a6c10)
f_8001a6094:
  0x8001a6094:  7100043f    cmp w1, #1
  0x8001a6098:  5400082b    b.lt #260
  0x8001a609c:  d10283ff    sub sp, sp, #160
  0x8001a60a0:  a9047bfd    stp x29, x30, [sp, #64]
  0x8001a60a4:  a9056ffc    stp x28, x27, [sp, #80]
  0x8001a60a8:  a90667fa    stp x26, x25, [sp, #96]
  0x8001a60ac:  a9075ff8    stp x24, x23, [sp, #112]
  0x8001a60b0:  a90857f6    stp x22, x21, [sp, #128]
  0x8001a60b4:  a9094ff4    stp x20, x19, [sp, #144]
  0x8001a60b8:  910103fd    add x29, sp, #64
  0x8001a60bc:  b001bd3a    adrp x26, #58347520
  0x8001a60c0:  531d7028    lsl w8, w1, #3
  0x8001a60c4:  f945435a    ldr x26, [x26, #2688]
  0x8001a60c8:  2a0303f6    mov w22, w3
  0x8001a60cc:  2a0103f3    mov w19, w1
  0x8001a60d0:  f9400358    ldr x24, [x26]
  0x8001a60d4:  aa0003f4    mov x20, x0
  0x8001a60d8:  93407d17    sxtw x23, w8
  0x8001a60dc:  b4001c78    cbz x24, #908
  0x8001a60e0:  aa0203f5    mov x21, x2
  0x8001a60e4:  b4001102    cbz x2, #544
  0x8001a60e8:  f94002a8    ldr x8, [x21]
  0x8001a60ec:  f001bda9    adrp x9, #58421248
  0x8001a60f0:  f9401908    ldr x8, [x8, #48]
  0x8001a60f4:  f944a529    ldr x9, [x9, #2376]
  0x8001a60f8:  eb09011f    cmp x8, x9
  0x8001a60fc:  54000521    b.ne #164
  0x8001a6100:  b940aaa8    ldr w8, [x21, #168]
  0x8001a6104:  910222b9    add x25, x21, #136
  0x8001a6108:  37001d28    tbnz w8, #0, #932
  0x8001a610c:  aa1f03f8    mov x24, xzr
  0x8001a6110:  f10022ff    cmp x23, #8
  0x8001a6114:  52800108    mov w8, #8
  0x8001a6118:  f9400349    ldr x9, [x26]
  0x8001a611c:  9a8882fb    csel x27, x23, x8, hi
  0x8001a6120:  710002df    cmp w22, #0
  0x8001a6124:  5a9656c8    cneg w8, w22, mi
  0x8001a6128:  5100050a    sub w10, w8, #1
  0x8001a612c:  6a0a011f    tst w8, w10
  0x8001a6130:  54001a41    b.ne #840
  0x8001a6134:  b94082aa    ldr w10, [x21, #128]
  0x8001a6138:  1b167d4a    mul w10, w10, w22
  0x8001a613c:  37f81c0a    tbnz w10, #31, #896
  0x8001a6140:  f9405aab    ldr x11, [x21, #176]
  0x8001a6144:  5100054c    sub w12, w10, #1
  0x8001a6148:  8b0c016b    add x11, x11, x12
  0x8001a614c:  8a2c017a    bic x26, x11, x12
  0x8001a6150:  8b1b034b    add x11, x26, x27
  0x8001a6154:  eb1a017f    cmp x11, x26
  0x8001a6158:  54000ee3    b.lo #476
  0x8001a615c:  f9405eac    ldr x12, [x21, #184]
  0x8001a6160:  eb0b019f    cmp x12, x11
  0x8001a6164:  54000e83    b.lo #464
  0x8001a6168:  f9005aab    str x11, [x21, #176]
  0x8001a616c:  b4000eba    cbz x26, #468
  0x8001a6170:  b5003c58    cbnz x24, #1928
  0x8001a6174:  b400007a    cbz x26, #12
  0x8001a6178:  f900069a    str x26, [x20, #8]
  0x8001a617c:  29004e9f    stp wzr, w19, [x20]
  0x8001a6180:  a9494ff4    ldp x20, x19, [sp, #144]
  0x8001a6184:  a94857f6    ldp x22, x21, [sp, #128]
  0x8001a6188:  a9475ff8    ldp x24, x23, [sp, #112]
  0x8001a618c:  a94667fa    ldp x26, x25, [sp, #96]
  0x8001a6190:  a9456ffc    ldp x28, x27, [sp, #80]
  0x8001a6194:  a9447bfd    ldp x29, x30, [sp, #64]
  0x8001a6198:  910283ff    add sp, sp, #160
  0x8001a619c:  d65f03c0    ret
  0x8001a61a0:  d503201f    nop
  0x8001a61a4:  10346549    adr x9, #429224
  0x8001a61a8:  eb09011f    cmp x8, x9
  0x8001a61ac:  540003a1    b.ne #116
  0x8001a61b0:  f10022ff    cmp x23, #8
  0x8001a61b4:  52800108    mov w8, #8
  0x8001a61b8:  f940035b    ldr x27, [x26]
  0x8001a61bc:  9a8882f9    csel x25, x23, x8, hi
  0x8001a61c0:  710002df    cmp w22, #0
  0x8001a61c4:  5a9656c8    cneg w8, w22, mi
  0x8001a61c8:  51000509    sub w9, w8, #1
  0x8001a61cc:  6a09011f    tst w8, w9
  0x8001a61d0:  54001e01    b.ne #960
  0x8001a61d4:  b940aaa8    ldr w8, [x21, #168]
  0x8001a61d8:  37001f48    tbnz w8, #0, #1000
  0x8001a61dc:  aa1f03f8    mov x24, xzr
  0x8001a61e0:  b94082a8    ldr w8, [x21, #128]
  0x8001a61e4:  1b167d08    mul w8, w8, w22
  0x8001a61e8:  37f81268    tbnz w8, #31, #588
  0x8001a61ec:  f9405aa9    ldr x9, [x21, #176]
  0x8001a61f0:  5100050a    sub w10, w8, #1
  0x8001a61f4:  8b0a0129    add x9, x9, x10
  0x8001a61f8:  8a2a013a    bic x26, x9, x10
  0x8001a61fc:  8b190349    add x9, x26, x25
  0x8001a6200:  eb1a013f    cmp x9, x26
  0x8001a6204:  54001a43    b.lo #840
  0x8001a6208:  f9405eaa    ldr x10, [x21, #184]
  0x8001a620c:  eb09015f    cmp x10, x9
  0x8001a6210:  540019e3    b.lo #828
  0x8001a6214:  f9005aa9    str x9, [x21, #176]
  0x8001a6218:  b4fffaf8    cbz x24, #-164
  0x8001a621c:  140001b7    b #1756
  0x8001a6220:  d503201f    nop
  0x8001a6224:  10eb0969    adr x9, #-171732
  0x8001a6228:  eb09011f    cmp x8, x9
  0x8001a622c:  54000601    b.ne #192
  0x8001a6230:  f10022ff    cmp x23, #8
  0x8001a6234:  52800108    mov w8, #8
  0x8001a6238:  f940035b    ldr x27, [x26]
  0x8001a623c:  9a8882f9    csel x25, x23, x8, hi
  0x8001a6240:  710002df    cmp w22, #0
  0x8001a6244:  5a9656c8    cneg w8, w22, mi
  0x8001a6248:  51000509    sub w9, w8, #1
  0x8001a624c:  6a09011f    tst w8, w9
  0x8001a6250:  54001a01    b.ne #832
  0x8001a6254:  b940aaa8    ldr w8, [x21, #168]
  0x8001a6258:  36000468    tbz w8, #0, #140
  0x8001a625c:  910222b8    add x24, x21, #136
  0x8001a6260:  aa1803e0    mov x0, x24
  0x8001a6264:  94a7f77f    bl #44031484
  0x8001a6268:  b94082a8    ldr w8, [x21, #128]
  0x8001a626c:  1b167d0c    mul w12, w8, w22
  0x8001a6270:  37f81b0c    tbnz w12, #31, #864
  0x8001a6274:  b980c6a9    ldrsw x9, [x21, #196]
  0x8001a6278:  9102c2ba    add x26, x21, #176
  0x8001a627c:  2a0c03ed    mov w13, w12
  0x8001a6280:  f9405eab    ldr x11, [x21, #184]
  0x8001a6284:  7100219f    cmp w12, #8
  0x8001a6288:  cb0903e8    neg x8, x9
  0x8001a628c:  cb09034a    sub x10, x26, x9
  0x8001a6290:  cb09016b    sub x11, x11, x9
  0x8001a6294:  54001b28    b.hi #868
  0x8001a6298:  eb0a017f    cmp x11, x10
  0x8001a629c:  54000180    b.eq #48
  0x8001a62a0:  3942b2ac    ldrb w12, [x21, #172]
  0x8001a62a4:  3500288c    cbnz w12, #1296
  0x8001a62a8:  aa0b03ec    mov x12, x11
  0x8001a62ac:  f9400d9c    ldr x28, [x12, #24]
  0x8001a62b0:  eb19039f    cmp x28, x25
  0x8001a62b4:  54002a62    b.hs #1356
  0x8001a62b8:  8b09018b    add x11, x12, x9
  0x8001a62bc:  f940056b    ldr x11, [x11, #8]
  0x8001a62c0:  8b08016c    add x12, x11, x8
  0x8001a62c4:  eb0a019f    cmp x12, x10
  0x8001a62c8:  54ffff21    b.ne #-28
  0x8001a62cc:  b9000bed    str w13, [sp, #8]
  0x8001a62d0:  b400007b    cbz x27, #12
  0x8001a62d4:  f9400b60    ldr x0, [x27, #16]
  0x8001a62d8:  b5003da0    cbnz x0, #1972
  0x8001a62dc:  aa1f03fa    mov x26, xzr
  0x8001a62e0:  14000185    b #1556
  0x8001a62e4:  aa1f03f8    mov x24, xzr
  0x8001a62e8:  17ffffe0    b #-128
  0x8001a62ec:  aa1503e0    mov x0, x21
  0x8001a62f0:  aa1703e1    mov x1, x23
  0x8001a62f4:  2a1603e2    mov w2, w22
  0x8001a62f8:  d63f0100    blr x8
  0x8001a62fc:  aa0003fa    mov x26, x0
  0x8001a6300:  17ffff9d    b #-396
  0x8001a6304:  9001c8a8    adrp x8, #59850752
  0x8001a6308:  91368108    add x8, x8, #3488
  0x8001a630c:  f9400108    ldr x8, [x8]
  0x8001a6310:  b9404900    ldr w0, [x8, #72]
  0x8001a6314:  94a7f5eb    bl #44029868
  0x8001a6318:  91002308    add x8, x24, #8
  0x8001a631c:  91022009    add x9, x0, #136
  0x8001a6320:  f100001f    cmp x0, #0
  0x8001a6324:  9a890108    csel x8, x8, x9, eq
  0x8001a6328:  f9400115    ldr x21, [x8]
  0x8001a632c:  b5ffedf5    cbnz x21, #-580
  0x8001a6330:  17ffff94    b #-432
  0x8001a6334:  b4000069    cbz x9, #12
  0x8001a6338:  f9400920    ldr x0, [x9, #16]
  0x8001a633c:  b5000f20    cbnz x0, #484
  0x8001a6340:  f9401ea0    ldr x0, [x21, #56]
  0x8001a6344:  b4000b00    cbz x0, #352
  0x8001a6348:  7100251f    cmp w8, #9
  0x8001a634c:  aa1503e9    mov x9, x21
  0x8001a6350:  1a8833fa    csel w26, wzr, w8, lo
  0x8001a6354:  f84c0d28    ldr x8, [x9, #192]!
  0x8001a6358:  f9000be9    str x9, [sp, #16]
  0x8001a635c:  b85e8129    ldur w9, [x9, #-24]
  0x8001a6360:  37180049    tbnz w9, #3, #8
  0x8001a6364:  b40000c8    cbz x8, #24
  0x8001a6368:  f94002a8    ldr x8, [x21]
  0x8001a636c:  aa1503e0    mov x0, x21
  0x8001a6370:  f9401508    ldr x8, [x8, #40]
  0x8001a6374:  d63f0100    blr x8
  0x8001a6378:  f9401ea0    ldr x0, [x21, #56]
  0x8001a637c:  8b3a4368    add x8, x27, w26, uxtw
  0x8001a6380:  9100411c    add x28, x8, #16
  0x8001a6384:  29590aa8    ldp w8, w2, [x21, #200]
  0x8001a6388:  d37ef51b    lsl x27, x8, #2
  0x8001a638c:  f9400008    ldr x8, [x0]
  0x8001a6390:  eb1c037f    cmp x27, x28
  0x8001a6394:  9a9c8361    csel x1, x27, x28, hi
  0x8001a6398:  f90007e1    str x1, [sp, #8]
  0x8001a639c:  f9401908    ldr x8, [x8, #48]
  0x8001a63a0:  d63f0100    blr x8
  0x8001a63a4:  b4003200    cbz x0, #1600
  0x8001a63a8:  aa0003fa    mov x26, x0
  0x8001a63ac:  b940aaa8    ldr w8, [x21, #168]
  0x8001a63b0:  37003408    tbnz w8, #0, #1664
  0x8001a63b4:  aa1903e0    mov x0, x25
  0x8001a63b8:  94a7f72a    bl #44031144
  0x8001a63bc:  a940b3eb    ldp x11, x12, [sp, #8]
  0x8001a63c0:  8b1a0168    add x8, x11, x26
  0x8001a63c4:  b94082aa    ldr w10, [x21, #128]
  0x8001a63c8:  7100055f    cmp w10, #1
  0x8001a63cc:  d1004109    sub x9, x8, #16
  0x8001a63d0:  9a89034a    csel x10, x26, x9, eq
  0x8001a63d4:  a9007d4b    stp x11, xzr, [x10]
  0x8001a63d8:  f94062ab    ldr x11, [x21, #192]
  0x8001a63dc:  b500022b    cbnz x11, #68
  0x8001a63e0:  f900018a    str x10, [x12]
  0x8001a63e4:  9100434b    add x11, x26, #16
  0x8001a63e8:  aa1503e0    mov x0, x21
  0x8001a63ec:  b94082aa    ldr w10, [x21, #128]
  0x8001a63f0:  aa1703e1    mov x1, x23
  0x8001a63f4:  2a1603e2    mov w2, w22
  0x8001a63f8:  7100055f    cmp w10, #1
  0x8001a63fc:  9a9a016a    csel x10, x11, x26, eq
  0x8001a6400:  9a890108    csel x8, x8, x9, eq
  0x8001a6404:  a90b22aa    stp x10, x8, [x21, #176]
  0x8001a6408:  97fb510c    bl #-1227728
  0x8001a640c:  aa0003fa    mov x26, x0
  0x8001a6410:  b4ffeb19    cbz x25, #-672
  0x8001a6414:  aa1903e0    mov x0, x25
  0x8001a6418:  94a7f716    bl #44031064
  0x8001a641c:  17ffff55    b #-684
  0x8001a6420:  aa0b03ec    mov x12, x11
  0x8001a6424:  f940056b    ldr x11, [x11, #8]
  0x8001a6428:  b5ffffcb    cbnz x11, #-8
  0x8001a642c:  9100218c    add x12, x12, #8
  0x8001a6430:  17ffffec    b #-80
  0x8001a6434:  f9405eab    ldr x11, [x21, #184]
  0x8001a6438:  4b0803e9    neg w9, w8
  0x8001a643c:  cb19016a    sub x10, x11, x25
  0x8001a6440:  eb0a017f    cmp x11, x10
  0x8001a6444:  54002fa3    b.lo #1524
  0x8001a6448:  b2607d08    orr x8, x8, #0xffffffff00000000
  0x8001a644c:  8a08015a    and x26, x10, x8
  0x8001a6450:  f9405aa8    ldr x8, [x21, #176]
  0x8001a6454:  eb1a011f    cmp x8, x26
  0x8001a6458:  54002f08    b.hi #1504
  0x8001a645c:  f9005eba    str x26, [x21, #184]
  0x8001a6460:  b4ffe8b8    cbz x24, #-748
  0x8001a6464:  14000125    b #1172
  0x8001a6468:  93407ec0    sxtw x0, w22
  0x8001a646c:  aa1703e1    mov x1, x23
  0x8001a6470:  97fbce1c    bl #-1099664
  0x8001a6474:  17ffffa2    b #-376
  0x8001a6478:  b4000169    cbz x9, #44
  0x8001a647c:  f9400920    ldr x0, [x9, #16]
  0x8001a6480:  b4000120    cbz x0, #36
  0x8001a6484:  a901dff5    stp x21, x23, [sp, #24]
  0x8001a6488:  910063e1    add x1, sp, #24
  0x8001a648c:  b9002bf6    str w22, [sp, #40]
  0x8001a6490:  f9001bfb    str x27, [sp, #48]
  0x8001a6494:  b9003bf6    str w22, [sp, #56]
  0x8001a6498:  f9400008    ldr x8, [x0]
  0x8001a649c:  f9400108    ldr x8, [x8]
  0x8001a64a0:  d63f0100    blr x8
  0x8001a64a4:  aa1f03fa    mov x26, xzr
  0x8001a64a8:  17ffff32    b #-824
  0x8001a64ac:  aa1903e0    mov x0, x25
  0x8001a64b0:  94a7f6ec    bl #44030896
  0x8001a64b4:  aa1903f8    mov x24, x25
  0x8001a64b8:  17ffff16    b #-936
  0x8001a64bc:  f9405eac    ldr x12, [x21, #184]
  0x8001a64c0:  2a0803fc    mov w28, w8
  0x8001a64c4:  4b0a03eb    neg w11, w10
  0x8001a64c8:  cb1b0188    sub x8, x12, x27
  0x8001a64cc:  eb08019f    cmp x12, x8
  0x8001a64d0:  540000c3    b.lo #24
  0x8001a64d4:  b2607d4a    orr x10, x10, #0xffffffff00000000
  0x8001a64d8:  8a0a011a    and x26, x8, x10
  0x8001a64dc:  f9405aa8    ldr x8, [x21, #176]
  0x8001a64e0:  eb1a011f    cmp x8, x26
  0x8001a64e4:  54000509    b.ls #160
  0x8001a64e8:  2a1c03e8    mov w8, w28
  0x8001a64ec:  b4fff2a9    cbz x9, #-428
  0x8001a64f0:  f9400920    ldr x0, [x9, #16]
  0x8001a64f4:  b4fff260    cbz x0, #-436
  0x8001a64f8:  a901dff5    stp x21, x23, [sp, #24]
  0x8001a64fc:  910063e1    add x1, sp, #24
  0x8001a6500:  b9002bf6    str w22, [sp, #40]
  0x8001a6504:  f9001bfb    str x27, [sp, #48]
  0x8001a6508:  b9003beb    str w11, [sp, #56]
  0x8001a650c:  f9400008    ldr x8, [x0]
  0x8001a6510:  f9400108    ldr x8, [x8]
  0x8001a6514:  d63f0100    blr x8
  0x8001a6518:  2a1c03e8    mov w8, w28
  0x8001a651c:  17ffff89    b #-476
  0x8001a6520:  a901dff5    stp x21, x23, [sp, #24]
  0x8001a6524:  910063e1    add x1, sp, #24
  0x8001a6528:  2a0803fa    mov w26, w8
  0x8001a652c:  b9002bf6    str w22, [sp, #40]
  0x8001a6530:  f9001bfb    str x27, [sp, #48]
  0x8001a6534:  b9003bea    str w10, [sp, #56]
  0x8001a6538:  f9400009    ldr x9, [x0]
  0x8001a653c:  f9400129    ldr x9, [x9]
  0x8001a6540:  d63f0120    blr x9
  0x8001a6544:  2a1a03e8    mov w8, w26
  0x8001a6548:  17ffff7e    b #-520
  0x8001a654c:  b400017b    cbz x27, #44
  0x8001a6550:  f9400b60    ldr x0, [x27, #16]
  0x8001a6554:  b4000120    cbz x0, #36
  0x8001a6558:  a901dff5    stp x21, x23, [sp, #24]
  0x8001a655c:  b9002bf6    str w22, [sp, #40]
  0x8001a6560:  f9001bf9    str x25, [sp, #48]
  0x8001a6564:  b9003be8    str w8, [sp, #56]
  0x8001a6568:  f9400008    ldr x8, [x0]
  0x8001a656c:  910063e1    add x1, sp, #24
  0x8001a6570:  f9400108    ldr x8, [x8]
  0x8001a6574:  d63f0100    blr x8
  0x8001a6578:  aa1f03fa    mov x26, xzr
  0x8001a657c:  b4ffdfd8    cbz x24, #-1032
  0x8001a6580:  140000de    b #888
  0x8001a6584:  2a1c03e8    mov w8, w28
  0x8001a6588:  f9005eba    str x26, [x21, #184]
  0x8001a658c:  17fffef8    b #-1056
  0x8001a6590:  b4ffdf9b    cbz x27, #-1040
  0x8001a6594:  f9400b60    ldr x0, [x27, #16]
  0x8001a6598:  b4ffdf40    cbz x0, #-1048
  0x8001a659c:  a901dff5    stp x21, x23, [sp, #24]
  0x8001a65a0:  910063e1    add x1, sp, #24
  0x8001a65a4:  b9002bf6    str w22, [sp, #40]
  0x8001a65a8:  f9001bf9    str x25, [sp, #48]
  0x8001a65ac:  b9003bf6    str w22, [sp, #56]
  0x8001a65b0:  f9400008    ldr x8, [x0]
  0x8001a65b4:  f9400108    ldr x8, [x8]
  0x8001a65b8:  d63f0100    blr x8
  0x8001a65bc:  17fffef1    b #-1084
  0x8001a65c0:  910222b8    add x24, x21, #136
  0x8001a65c4:  aa1803e0    mov x0, x24
  0x8001a65c8:  94a7f6a6    bl #44030616
  0x8001a65cc:  17ffff05    b #-1004
  0x8001a65d0:  4b0c03e8    neg w8, w12
  0x8001a65d4:  aa1503e0    mov x0, x21
  0x8001a65d8:  b9000be8    str w8, [sp, #8]
  0x8001a65dc:  aa1903e1    mov x1, x25
  0x8001a65e0:  3100219f    cmn w12, #8
  0x8001a65e4:  540023a3    b.lo #1140
  0x8001a65e8:  97ff58f8    bl #-171040
  0x8001a65ec:  aa0003ec    mov x12, x0
  0x8001a65f0:  b5001760    cbnz x0, #748
  0x8001a65f4:  17ffff37    b #-804
  0x8001a65f8:  eb0a017f    cmp x11, x10
  0x8001a65fc:  b9000bed    str w13, [sp, #8]
  0x8001a6600:  54ffe680    b.eq #-816
  0x8001a6604:  3942b2ae    ldrb w14, [x21, #172]
  0x8001a6608:  5100058c    sub w12, w12, #1
  0x8001a660c:  aa2c03ed    mvn x13, x12
  0x8001a6610:  3500252e    cbnz w14, #1188
  0x8001a6614:  f9000beb    str x11, [sp, #16]
  0x8001a6618:  f9400beb    ldr x11, [sp, #16]
  0x8001a661c:  f9400d7c    ldr x28, [x11, #24]
  0x8001a6620:  eb19039f    cmp x28, x25
  0x8001a6624:  54000122    b.hs #36
  0x8001a6628:  f9400beb    ldr x11, [sp, #16]
  0x8001a662c:  8b09016b    add x11, x11, x9
  0x8001a6630:  f940056b    ldr x11, [x11, #8]
  0x8001a6634:  8b08016b    add x11, x11, x8
  0x8001a6638:  eb0a017f    cmp x11, x10
  0x8001a663c:  f9000beb    str x11, [sp, #16]
  0x8001a6640:  54fffec1    b.ne #-40
  0x8001a6644:  17ffff23    b #-884
  0x8001a6648:  f9400bee    ldr x14, [sp, #16]
  0x8001a664c:  794025cb    ldrh w11, [x14, #18]
  0x8001a6650:  8b0b01ce    add x14, x14, x11
  0x8001a6654:  910081ce    add x14, x14, #32
  0x8001a6658:  8b0c01cf    add x15, x14, x12
  0x8001a665c:  cb0e032e    sub x14, x25, x14
  0x8001a6660:  8a0d01ef    and x15, x15, x13
  0x8001a6664:  8b0f01ce    add x14, x14, x15
  0x8001a6668:  eb0e039f    cmp x28, x14
  0x8001a666c:  54fffde3    b.lo #-68
  0x8001a6670:  f9400bea    ldr x10, [sp, #16]
  0x8001a6674:  8b09014e    add x14, x10, x9
  0x8001a6678:  91008149    add x9, x10, #32
  0x8001a667c:  f94005ca    ldr x10, [x14, #8]
  0x8001a6680:  8b080148    add x8, x10, x8
  0x8001a6684:  eb1a015f    cmp x10, x26
  0x8001a6688:  9a8803f6    csel x22, xzr, x8, eq
  0x8001a668c:  8b0b0128    add x8, x9, x11
  0x8001a6690:  8b0c010a    add x10, x8, x12
  0x8001a6694:  8a0d014a    and x10, x10, x13
  0x8001a6698:  cb080148    sub x8, x10, x8
  0x8001a669c:  8b190117    add x23, x8, x25
  0x8001a66a0:  f140411f    cmp x8, #16, lsl #12
  0x8001a66a4:  54001e02    b.hs #960
  0x8001a66a8:  f9400bea    ldr x10, [sp, #16]
  0x8001a66ac:  72003d1f    tst w8, #0xffff
  0x8001a66b0:  79002548    strh w8, [x10, #18]
  0x8001a66b4:  540000a0    b.eq #20
  0x8001a66b8:  8b090109    add x9, x8, x9
  0x8001a66bc:  f9400be8    ldr x8, [sp, #16]
  0x8001a66c0:  b2400108    orr x8, x8, #0x1
  0x8001a66c4:  f81f8128    stur x8, [x9, #-8]
  0x8001a66c8:  f9400be8    ldr x8, [sp, #16]
  0x8001a66cc:  f9000d19    str x25, [x8, #24]
  0x8001a66d0:  b980c6a9    ldrsw x9, [x21, #196]
  0x8001a66d4:  8b080128    add x8, x9, x8
  0x8001a66d8:  f9400109    ldr x9, [x8]
  0x8001a66dc:  b4000069    cbz x9, #12
  0x8001a66e0:  f940050a    ldr x10, [x8, #8]
  0x8001a66e4:  f900052a    str x10, [x9, #8]
  0x8001a66e8:  f9400509    ldr x9, [x8, #8]
  0x8001a66ec:  b4000069    cbz x9, #12
  0x8001a66f0:  f940010a    ldr x10, [x8]
  0x8001a66f4:  f900012a    str x10, [x9]
  0x8001a66f8:  a9007d1f    stp xzr, xzr, [x8]
  0x8001a66fc:  b940c2a8    ldr w8, [x21, #192]
  0x8001a6700:  51000508    sub w8, w8, #1
  0x8001a6704:  b900c2a8    str w8, [x21, #192]
  0x8001a6708:  b94082a9    ldr w9, [x21, #128]
  0x8001a670c:  cb17039b    sub x27, x28, x23
  0x8001a6710:  910322a0    add x0, x21, #200
  0x8001a6714:  b980deaa    ldrsw x10, [x21, #220]
  0x8001a6718:  7100053f    cmp w9, #1
  0x8001a671c:  f9400be8    ldr x8, [sp, #16]
  0x8001a6720:  8b0a0101    add x1, x8, x10
  0x8001a6724:  54002021    b.ne #1028
  0x8001a6728:  f9400008    ldr x8, [x0]
  0x8001a672c:  f9000001    str x1, [x0]
  0x8001a6730:  a9000028    stp x8, x0, [x1]
  0x8001a6734:  b4000048    cbz x8, #8
  0x8001a6738:  f9000501    str x1, [x8, #8]
  0x8001a673c:  b940daa8    ldr w8, [x21, #216]
  0x8001a6740:  f100877f    cmp x27, #33
  0x8001a6744:  11000508    add w8, w8, #1
  0x8001a6748:  b900daa8    str w8, [x21, #216]
  0x8001a674c:  54001403    b.lo #640
  0x8001a6750:  f9400be8    ldr x8, [sp, #16]
  0x8001a6754:  79402509    ldrh w9, [x8, #18]
  0x8001a6758:  8b080328    add x8, x25, x8
  0x8001a675c:  8b090108    add x8, x8, x9
  0x8001a6760:  d1008369    sub x9, x27, #32
  0x8001a6764:  f8020d1f    str xzr, [x8, #32]!
  0x8001a6768:  f9000d09    str x9, [x8, #24]
  0x8001a676c:  529fffe9    mov w9, #65535
  0x8001a6770:  b900111f    str wzr, [x8, #16]
  0x8001a6774:  f900051f    str xzr, [x8, #8]
  0x8001a6778:  79002109    strh w9, [x8, #16]
  0x8001a677c:  b980c6a9    ldrsw x9, [x21, #196]
  0x8001a6780:  b4001036    cbz x22, #516
  0x8001a6784:  8b16012a    add x10, x9, x22
  0x8001a6788:  8b090108    add x8, x8, x9
  0x8001a678c:  f9400149    ldr x9, [x10]
  0x8001a6790:  f9000148    str x8, [x10]
  0x8001a6794:  a9002909    stp x9, x10, [x8]
  0x8001a6798:  b4000049    cbz x9, #8
  0x8001a679c:  f9000528    str x8, [x9, #8]
  0x8001a67a0:  b940c2a8    ldr w8, [x21, #192]
  0x8001a67a4:  11000508    add w8, w8, #1
  0x8001a67a8:  b900c2a8    str w8, [x21, #192]
  0x8001a67ac:  f9400bec    ldr x12, [sp, #16]
  0x8001a67b0:  1400004b    b #300
  0x8001a67b4:  7100059f    cmp w12, #1
  0x8001a67b8:  b9000bed    str w13, [sp, #8]
  0x8001a67bc:  54000c21    b.ne #388
  0x8001a67c0:  aa1f03ec    mov x12, xzr
  0x8001a67c4:  f9400d6d    ldr x13, [x11, #24]
  0x8001a67c8:  eb1901bf    cmp x13, x25
  0x8001a67cc:  540000c3    b.lo #24
  0x8001a67d0:  b400008c    cbz x12, #16
  0x8001a67d4:  f9400d8e    ldr x14, [x12, #24]
  0x8001a67d8:  eb0d01df    cmp x14, x13
  0x8001a67dc:  54000049    b.ls #8
  0x8001a67e0:  aa0b03ec    mov x12, x11
  0x8001a67e4:  8b09016b    add x11, x11, x9
  0x8001a67e8:  f940056b    ldr x11, [x11, #8]
  0x8001a67ec:  8b08016b    add x11, x11, x8
  0x8001a67f0:  eb0a017f    cmp x11, x10
  0x8001a67f4:  54fffe81    b.ne #-48
  0x8001a67f8:  b4ffd6cc    cbz x12, #-1320
  0x8001a67fc:  f9400d9c    ldr x28, [x12, #24]
  0x8001a6800:  f9000d99    str x25, [x12, #24]
  0x8001a6804:  79402597    ldrh w23, [x12, #18]
  0x8001a6808:  b980c6ab    ldrsw x11, [x21, #196]
  0x8001a680c:  8b0c0168    add x8, x11, x12
  0x8001a6810:  a940250a    ldp x10, x9, [x8]
  0x8001a6814:  cb0b012b    sub x11, x9, x11
  0x8001a6818:  eb1a013f    cmp x9, x26
  0x8001a681c:  9a8b03f6    csel x22, xzr, x11, eq
  0x8001a6820:  b400006a    cbz x10, #12
  0x8001a6824:  f9000549    str x9, [x10, #8]
  0x8001a6828:  f9400509    ldr x9, [x8, #8]
  0x8001a682c:  b4000069    cbz x9, #12
  0x8001a6830:  f940010a    ldr x10, [x8]
  0x8001a6834:  f900012a    str x10, [x9]
  0x8001a6838:  a9007d1f    stp xzr, xzr, [x8]
  0x8001a683c:  cb19039b    sub x27, x28, x25
  0x8001a6840:  b940c2a8    ldr w8, [x21, #192]
  0x8001a6844:  b94082a9    ldr w9, [x21, #128]
  0x8001a6848:  910322a0    add x0, x21, #200
  0x8001a684c:  51000508    sub w8, w8, #1
  0x8001a6850:  7100053f    cmp w9, #1
  0x8001a6854:  b900c2a8    str w8, [x21, #192]
  0x8001a6858:  b980dea8    ldrsw x8, [x21, #220]
  0x8001a685c:  8b0c0101    add x1, x8, x12
  0x8001a6860:  54000681    b.ne #208
  0x8001a6864:  f9400008    ldr x8, [x0]
  0x8001a6868:  f9000001    str x1, [x0]
  0x8001a686c:  a9000028    stp x8, x0, [x1]
  0x8001a6870:  b4000048    cbz x8, #8
  0x8001a6874:  f9000501    str x1, [x8, #8]
  0x8001a6878:  b940daa8    ldr w8, [x21, #216]
  0x8001a687c:  f100877f    cmp x27, #33
  0x8001a6880:  11000508    add w8, w8, #1
  0x8001a6884:  b900daa8    str w8, [x21, #216]
  0x8001a6888:  540003e3    b.lo #124
  0x8001a688c:  8b0c0328    add x8, x25, x12
  0x8001a6890:  d1008369    sub x9, x27, #32
  0x8001a6894:  8b170108    add x8, x8, x23
  0x8001a6898:  f8020d1f    str xzr, [x8, #32]!
  0x8001a689c:  f9000d09    str x9, [x8, #24]
  0x8001a68a0:  529fffe9    mov w9, #65535
  0x8001a68a4:  b900111f    str wzr, [x8, #16]
  0x8001a68a8:  f900051f    str xzr, [x8, #8]
  0x8001a68ac:  79002109    strh w9, [x8, #16]
  0x8001a68b0:  b980c6a9    ldrsw x9, [x21, #196]
  0x8001a68b4:  b5000316    cbnz x22, #96
  0x8001a68b8:  8b090108    add x8, x8, x9
  0x8001a68bc:  f9400349    ldr x9, [x26]
  0x8001a68c0:  f9000348    str x8, [x26]
  0x8001a68c4:  a9006909    stp x9, x26, [x8]
  0x8001a68c8:  b4000049    cbz x9, #8
  0x8001a68cc:  f9000528    str x8, [x9, #8]
  0x8001a68d0:  b940c2a8    ldr w8, [x21, #192]
  0x8001a68d4:  11000508    add w8, w8, #1
  0x8001a68d8:  b900c2a8    str w8, [x21, #192]
  0x8001a68dc:  b940aaa8    ldr w8, [x21, #168]
  0x8001a68e0:  53107d08    lsr w8, w8, #16
  0x8001a68e4:  79002188    strh w8, [x12, #16]
  0x8001a68e8:  79402588    ldrh w8, [x12, #18]
  0x8001a68ec:  8b080188    add x8, x12, x8
  0x8001a68f0:  9100811a    add x26, x8, #32
  0x8001a68f4:  b4ffc418    cbz x24, #-1920
  0x8001a68f8:  aa1803e0    mov x0, x24
  0x8001a68fc:  94a7f5dd    bl #44029812
  0x8001a6900:  17fffe1d    b #-1932
  0x8001a6904:  eb19039f    cmp x28, x25
  0x8001a6908:  54fffea0    b.eq #-44
  0x8001a690c:  f9000d9c    str x28, [x12, #24]
  0x8001a6910:  17fffff3    b #-52
  0x8001a6914:  8b16012a    add x10, x9, x22
  0x8001a6918:  8b090108    add x8, x8, x9
  0x8001a691c:  f9400149    ldr x9, [x10]
  0x8001a6920:  f9000148    str x8, [x10]
  0x8001a6924:  a9002909    stp x9, x10, [x8]
  0x8001a6928:  b5fffd29    cbnz x9, #-92
  0x8001a692c:  17ffffe9    b #-92
  0x8001a6930:  f9000bec    str x12, [sp, #16]
  0x8001a6934:  94980cd5    bl #39859028
  0x8001a6938:  f9400bec    ldr x12, [sp, #16]
  0x8001a693c:  17ffffcf    b #-196
  0x8001a6940:  7100099f    cmp w12, #2
  0x8001a6944:  540002c1    b.ne #88
  0x8001a6948:  aa1f03ec    mov x12, xzr
  0x8001a694c:  f9400d6d    ldr x13, [x11, #24]
  0x8001a6950:  eb1901bf    cmp x13, x25
  0x8001a6954:  540000c3    b.lo #24
  0x8001a6958:  b400008c    cbz x12, #16
  0x8001a695c:  f9400d8e    ldr x14, [x12, #24]
  0x8001a6960:  eb0d01df    cmp x14, x13
  0x8001a6964:  54000042    b.hs #8
  0x8001a6968:  aa0b03ec    mov x12, x11
  0x8001a696c:  8b09016b    add x11, x11, x9
  0x8001a6970:  f940056b    ldr x11, [x11, #8]
  0x8001a6974:  8b08016b    add x11, x11, x8
  0x8001a6978:  eb0a017f    cmp x11, x10
  0x8001a697c:  54fffe81    b.ne #-48
  0x8001a6980:  17ffff9e    b #-392
  0x8001a6984:  8b090108    add x8, x8, x9
  0x8001a6988:  f9400349    ldr x9, [x26]
  0x8001a698c:  f9000348    str x8, [x26]
  0x8001a6990:  a9006909    stp x9, x26, [x8]
  0x8001a6994:  b5fff049    cbnz x9, #-504
  0x8001a6998:  17ffff82    b #-504
  0x8001a699c:  aa1f03ec    mov x12, xzr
  0x8001a69a0:  f100019f    cmp x12, #0
  0x8001a69a4:  f9400d6d    ldr x13, [x11, #24]
  0x8001a69a8:  9a8c016e    csel x14, x11, x12, eq
  0x8001a69ac:  8b09016b    add x11, x11, x9
  0x8001a69b0:  f940056b    ldr x11, [x11, #8]
  0x8001a69b4:  eb1901bf    cmp x13, x25
  0x8001a69b8:  9a8e318c    csel x12, x12, x14, lo
  0x8001a69bc:  8b08016b    add x11, x11, x8
  0x8001a69c0:  eb0a017f    cmp x11, x10
  0x8001a69c4:  54fffee1    b.ne #-36
  0x8001a69c8:  17ffff8c    b #-464
  0x8001a69cc:  eb17039f    cmp x28, x23
  0x8001a69d0:  54ffeee0    b.eq #-548
  0x8001a69d4:  f9400bec    ldr x12, [sp, #16]
  0x8001a69d8:  8b190368    add x8, x27, x25
  0x8001a69dc:  f9000d88    str x8, [x12, #24]
  0x8001a69e0:  17ffffbf    b #-260
  0x8001a69e4:  eb1b039f    cmp x28, x27
  0x8001a69e8:  54ffd5e2    b.hs #-1348
  0x8001a69ec:  f9401ea0    ldr x0, [x21, #56]
  0x8001a69f0:  b940cea1    ldr w1, [x21, #204]
  0x8001a69f4:  f9400008    ldr x8, [x0]
  0x8001a69f8:  f9404508    ldr x8, [x8, #136]
  0x8001a69fc:  d63f0100    blr x8
  0x8001a6a00:  eb00039f    cmp x28, x0
  0x8001a6a04:  f90007e0    str x0, [sp, #8]
  0x8001a6a08:  54ffd4e8    b.hi #-1380
  0x8001a6a0c:  f9401ea0    ldr x0, [x21, #56]
  0x8001a6a10:  b940cea2    ldr w2, [x21, #204]
  0x8001a6a14:  f94007e1    ldr x1, [sp, #8]
  0x8001a6a18:  f9400008    ldr x8, [x0]
  0x8001a6a1c:  f9401908    ldr x8, [x8, #48]
  0x8001a6a20:  d63f0100    blr x8
  0x8001a6a24:  aa0003fa    mov x26, x0
  0x8001a6a28:  b4ffba40    cbz x0, #-2232
  0x8001a6a2c:  17fffe60    b #-1664
  0x8001a6a30:  aa1f03f9    mov x25, xzr
  0x8001a6a34:  17fffe62    b #-1656
  0x8001a6a38:  b4ffda1b    cbz x27, #-1216
  0x8001a6a3c:  f9400b60    ldr x0, [x27, #16]
  0x8001a6a40:  b4ffd9c0    cbz x0, #-1224
  0x8001a6a44:  a901dff5    stp x21, x23, [sp, #24]
  0x8001a6a48:  b9002bf6    str w22, [sp, #40]
  0x8001a6a4c:  f9001bf9    str x25, [sp, #48]
  0x8001a6a50:  b9003be9    str w9, [sp, #56]
  0x8001a6a54:  17fffec5    b #-1260
  0x8001a6a58:  b9400be2    ldr w2, [sp, #8]
  0x8001a6a5c:  97ff5861    bl #-171644
  0x8001a6a60:  17fffee3    b #-1140
  0x8001a6a64:  f9400be9    ldr x9, [sp, #16]
  0x8001a6a68:  d100810a    sub x10, x8, #32
  0x8001a6a6c:  7900253f    strh wzr, [x9, #18]
  0x8001a6a70:  f9000d2a    str x10, [x9, #24]
  0x8001a6a74:  8b090109    add x9, x8, x9
  0x8001a6a78:  b900113f    str wzr, [x9, #16]
  0x8001a6a7c:  a9007d3f    stp xzr, xzr, [x9]
  0x8001a6a80:  f9000be9    str x9, [sp, #16]
  0x8001a6a84:  f9000d39    str x25, [x9, #24]
  0x8001a6a88:  17ffff20    b #-896
  0x8001a6a8c:  b9400be8    ldr w8, [sp, #8]
  0x8001a6a90:  a901dff5    stp x21, x23, [sp, #24]
  0x8001a6a94:  910063e1    add x1, sp, #24
  0x8001a6a98:  b9002bf6    str w22, [sp, #40]
  0x8001a6a9c:  f9001bf9    str x25, [sp, #48]
  0x8001a6aa0:  b9003be8    str w8, [sp, #56]
  0x8001a6aa4:  f9400008    ldr x8, [x0]
  0x8001a6aa8:  f9400108    ldr x8, [x8]
  0x8001a6aac:  d63f0100    blr x8
  0x8001a6ab0:  17fffe0b    b #-2004
  0x8001a6ab4:  710005df    cmp w14, #1
  0x8001a6ab8:  540003c1    b.ne #120
  0x8001a6abc:  f9000bff    str xzr, [sp, #16]
  0x8001a6ac0:  f9400d6e    ldr x14, [x11, #24]
  0x8001a6ac4:  eb1901df    cmp x14, x25
  0x8001a6ac8:  540000e2    b.hs #28
  0x8001a6acc:  8b09016b    add x11, x11, x9
  0x8001a6ad0:  f940056b    ldr x11, [x11, #8]
  0x8001a6ad4:  8b08016b    add x11, x11, x8
  0x8001a6ad8:  eb0a017f    cmp x11, x10
  0x8001a6adc:  54ffff21    b.ne #-28
  0x8001a6ae0:  14000047    b #284
  0x8001a6ae4:  7940256f    ldrh w15, [x11, #18]
  0x8001a6ae8:  8b0f016f    add x15, x11, x15
  0x8001a6aec:  910081ef    add x15, x15, #32
  0x8001a6af0:  8b0c01f0    add x16, x15, x12
  0x8001a6af4:  cb0f032f    sub x15, x25, x15
  0x8001a6af8:  8a0d0210    and x16, x16, x13
  0x8001a6afc:  8b1001ef    add x15, x15, x16
  0x8001a6b00:  eb0f01df    cmp x14, x15
  0x8001a6b04:  54fffe43    b.lo #-56
  0x8001a6b08:  f9400bef    ldr x15, [sp, #16]
  0x8001a6b0c:  b40000af    cbz x15, #20
  0x8001a6b10:  f9400bef    ldr x15, [sp, #16]
  0x8001a6b14:  f9400def    ldr x15, [x15, #24]
  0x8001a6b18:  eb0e01ff    cmp x15, x14
  0x8001a6b1c:  54fffd89    b.ls #-80
  0x8001a6b20:  f9000beb    str x11, [sp, #16]
  0x8001a6b24:  17ffffea    b #-88
  0x8001a6b28:  94980c58    bl #39858528
  0x8001a6b2c:  17ffff04    b #-1008
  0x8001a6b30:  710009df    cmp w14, #2
  0x8001a6b34:  54000381    b.ne #112
  0x8001a6b38:  f9000bff    str xzr, [sp, #16]
  0x8001a6b3c:  f9400d6e    ldr x14, [x11, #24]
  0x8001a6b40:  eb1901df    cmp x14, x25
  0x8001a6b44:  540000e2    b.hs #28
  0x8001a6b48:  8b09016b    add x11, x11, x9
  0x8001a6b4c:  f940056b    ldr x11, [x11, #8]
  0x8001a6b50:  8b08016b    add x11, x11, x8
  0x8001a6b54:  eb0a017f    cmp x11, x10
  0x8001a6b58:  54ffff21    b.ne #-28
  0x8001a6b5c:  14000028    b #160
  0x8001a6b60:  7940256f    ldrh w15, [x11, #18]
  0x8001a6b64:  8b0f016f    add x15, x11, x15
  0x8001a6b68:  910081ef    add x15, x15, #32
  0x8001a6b6c:  8b0c01f0    add x16, x15, x12
  0x8001a6b70:  cb0f032f    sub x15, x25, x15
  0x8001a6b74:  8a0d0210    and x16, x16, x13
  0x8001a6b78:  8b1001ef    add x15, x15, x16
  0x8001a6b7c:  eb0f01df    cmp x14, x15
  0x8001a6b80:  54fffe43    b.lo #-56
  0x8001a6b84:  f9400bef    ldr x15, [sp, #16]
  0x8001a6b88:  b40000af    cbz x15, #20
  0x8001a6b8c:  f9400bef    ldr x15, [sp, #16]
  0x8001a6b90:  f9400def    ldr x15, [x15, #24]
  0x8001a6b94:  eb0e01ff    cmp x15, x14
  0x8001a6b98:  54fffd82    b.hs #-80
  0x8001a6b9c:  f9000beb    str x11, [sp, #16]
  0x8001a6ba0:  17ffffea    b #-88
  0x8001a6ba4:  f9000bff    str xzr, [sp, #16]
  0x8001a6ba8:  f9400d6e    ldr x14, [x11, #24]
  0x8001a6bac:  eb1901df    cmp x14, x25
  0x8001a6bb0:  540001c3    b.lo #56
  0x8001a6bb4:  7940256f    ldrh w15, [x11, #18]
  0x8001a6bb8:  8b0f016f    add x15, x11, x15
  0x8001a6bbc:  910081ef    add x15, x15, #32
  0x8001a6bc0:  8b0c01f0    add x16, x15, x12
  0x8001a6bc4:  cb0f032f    sub x15, x25, x15
  0x8001a6bc8:  8a0d0210    and x16, x16, x13
  0x8001a6bcc:  8b1001ef    add x15, x15, x16
  0x8001a6bd0:  f9400bf0    ldr x16, [sp, #16]
  0x8001a6bd4:  f100021f    cmp x16, #0
  0x8001a6bd8:  9a900171    csel x17, x11, x16, eq
  0x8001a6bdc:  eb0f01df    cmp x14, x15
  0x8001a6be0:  9a913210    csel x16, x16, x17, lo
  0x8001a6be4:  f9000bf0    str x16, [sp, #16]
  0x8001a6be8:  8b09016b    add x11, x11, x9
  0x8001a6bec:  f940056b    ldr x11, [x11, #8]
  0x8001a6bf0:  8b08016b    add x11, x11, x8
  0x8001a6bf4:  eb0a017f    cmp x11, x10
  0x8001a6bf8:  54fffd81    b.ne #-80
  0x8001a6bfc:  f9400bea    ldr x10, [sp, #16]
  0x8001a6c00:  b4ffb68a    cbz x10, #-2352
  0x8001a6c04:  7940254b    ldrh w11, [x10, #18]
  0x8001a6c08:  f9400d5c    ldr x28, [x10, #24]
  0x8001a6c0c:  17fffe99    b #-1436

