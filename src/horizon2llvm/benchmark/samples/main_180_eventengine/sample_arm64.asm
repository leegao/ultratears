; UltraTears chunk main_180_eventengine: 1 functions [0x8002d8e30..0x8002da8f0)

; Function f_8002d8e30 [0x8002d8e30..0x8002da8f0)
f_8002d8e30:
  0x8002d8e30:  d10403ff    sub sp, sp, #256
  0x8002d8e34:  a90a7bfd    stp x29, x30, [sp, #160]
  0x8002d8e38:  a90b6ffc    stp x28, x27, [sp, #176]
  0x8002d8e3c:  a90c67fa    stp x26, x25, [sp, #192]
  0x8002d8e40:  a90d5ff8    stp x24, x23, [sp, #208]
  0x8002d8e44:  a90e57f6    stp x22, x21, [sp, #224]
  0x8002d8e48:  a90f4ff4    stp x20, x19, [sp, #240]
  0x8002d8e4c:  910283fd    add x29, sp, #160
  0x8002d8e50:  aa0003f9    mov x25, x0
  0x8002d8e54:  aa0103f3    mov x19, x1
  0x8002d8e58:  aa0003f4    mov x20, x0
  0x8002d8e5c:  f8420f29    ldr x9, [x25, #32]!
  0x8002d8e60:  f100013f    cmp x9, #0
  0x8002d8e64:  1a9f07e8    cset w8, ne
  0x8002d8e68:  b4000c49    cbz x9, #392
  0x8002d8e6c:  f9406536    ldr x22, [x9, #200]
  0x8002d8e70:  f9401689    ldr x9, [x20, #40]
  0x8002d8e74:  b50008e9    cbnz x9, #284
  0x8002d8e78:  f9401a89    ldr x9, [x20, #48]
  0x8002d8e7c:  b5000929    cbnz x9, #292
  0x8002d8e80:  f9401e89    ldr x9, [x20, #56]
  0x8002d8e84:  b5000969    cbnz x9, #300
  0x8002d8e88:  f9402289    ldr x9, [x20, #64]
  0x8002d8e8c:  b50009a9    cbnz x9, #308
  0x8002d8e90:  f9402689    ldr x9, [x20, #72]
  0x8002d8e94:  b50009e9    cbnz x9, #316
  0x8002d8e98:  f9402a89    ldr x9, [x20, #80]
  0x8002d8e9c:  b5000b09    cbnz x9, #352
  0x8002d8ea0:  f9402e89    ldr x9, [x20, #88]
  0x8002d8ea4:  b50009c9    cbnz x9, #312
  0x8002d8ea8:  f9403289    ldr x9, [x20, #96]
  0x8002d8eac:  f100013f    cmp x9, #0
  0x8002d8eb0:  1a9f1508    csinc w8, w8, wzr, ne
  0x8002d8eb4:  36000948    tbz w8, #0, #296
  0x8002d8eb8:  f9407675    ldr x21, [x19, #232]
  0x8002d8ebc:  b4000075    cbz x21, #12
  0x8002d8ec0:  39450268    ldrb w8, [x19, #320]
  0x8002d8ec4:  37000a28    tbnz w8, #0, #324
  0x8002d8ec8:  b940f268    ldr w8, [x19, #240]
  0x8002d8ecc:  8b28ce68    add x8, x19, w8, sxtw #3
  0x8002d8ed0:  f9009116    str x22, [x8, #288]
  0x8002d8ed4:  f9007674    str x20, [x19, #232]
  0x8002d8ed8:  39450268    ldrb w8, [x19, #320]
  0x8002d8edc:  32000108    orr w8, w8, #0x1
  0x8002d8ee0:  39050268    strb w8, [x19, #320]
  0x8002d8ee4:  295e2668    ldp w8, w9, [x19, #240]
  0x8002d8ee8:  93407d08    sxtw x8, w8
  0x8002d8eec:  6b09011f    cmp w8, w9
  0x8002d8ef0:  540000ca    b.ge #24
  0x8002d8ef4:  f9407e69    ldr x9, [x19, #248]
  0x8002d8ef8:  f8287934    str x20, [x9, x8, lsl #3]
  0x8002d8efc:  b940f268    ldr w8, [x19, #240]
  0x8002d8f00:  11000508    add w8, w8, #1
  0x8002d8f04:  b900f268    str w8, [x19, #240]
  0x8002d8f08:  f90007f3    str x19, [sp, #8]
  0x8002d8f0c:  9001b3a8    adrp x8, #57098240
  0x8002d8f10:  d2869b69    mov x9, #13531
  0x8002d8f14:  f2baf6c9    movk x9, #55222, lsl #16
  0x8002d8f18:  f81f83bf    stur xzr, [x29, #-8]
  0x8002d8f1c:  f9478508    ldr x8, [x8, #3848]
  0x8002d8f20:  f2dbd049    movk x9, #56962, lsl #32
  0x8002d8f24:  f2e86369    movk x9, #17179, lsl #48
  0x8002d8f28:  f90023ff    str xzr, [sp, #64]
  0x8002d8f2c:  a93effbf    stp xzr, xzr, [x29, #-24]
  0x8002d8f30:  9001b3ba    adrp x26, #57098240
  0x8002d8f34:  b001b42d    adrp x13, #57167872
  0x8002d8f38:  f001b3ec    adrp x12, #57143296
  0x8002d8f3c:  aa1f03fb    mov x27, xzr
  0x8002d8f40:  f9400108    ldr x8, [x8]
  0x8002d8f44:  a93dffbf    stp xzr, xzr, [x29, #-40]
  0x8002d8f48:  2a1f03f5    mov w21, wzr
  0x8002d8f4c:  5280051c    mov w28, #40
  0x8002d8f50:  d10123ae    sub x14, x29, #72
  0x8002d8f54:  a93cffbf    stp xzr, xzr, [x29, #-56]
  0x8002d8f58:  910043ef    add x15, sp, #16
  0x8002d8f5c:  9b497d08    smulh x8, x8, x9
  0x8002d8f60:  a93bffbf    stp xzr, xzr, [x29, #-72]
  0x8002d8f64:  9352fd09    asr x9, x8, #18
  0x8002d8f68:  a904ffff    stp xzr, xzr, [sp, #72]
  0x8002d8f6c:  f947bb5a    ldr x26, [x26, #3952]
  0x8002d8f70:  a9037fff    stp xzr, xzr, [sp, #48]
  0x8002d8f74:  f94771ad    ldr x13, [x13, #3808]
  0x8002d8f78:  f9418d8c    ldr x12, [x12, #792]
  0x8002d8f7c:  8b48fd28    add x8, x9, x8, lsr #63
  0x8002d8f80:  a9027fff    stp xzr, xzr, [sp, #32]
  0x8002d8f84:  f90003e8    str x8, [sp]
  0x8002d8f88:  a9017fff    stp xzr, xzr, [sp, #16]
  0x8002d8f8c:  14000037    b #220
  0x8002d8f90:  f9406536    ldr x22, [x9, #200]
  0x8002d8f94:  52800028    mov w8, #1
  0x8002d8f98:  f9401a89    ldr x9, [x20, #48]
  0x8002d8f9c:  b4fff729    cbz x9, #-284
  0x8002d8fa0:  f9406536    ldr x22, [x9, #200]
  0x8002d8fa4:  52800028    mov w8, #1
  0x8002d8fa8:  f9401e89    ldr x9, [x20, #56]
  0x8002d8fac:  b4fff6e9    cbz x9, #-292
  0x8002d8fb0:  f9406536    ldr x22, [x9, #200]
  0x8002d8fb4:  52800028    mov w8, #1
  0x8002d8fb8:  f9402289    ldr x9, [x20, #64]
  0x8002d8fbc:  b4fff6a9    cbz x9, #-300
  0x8002d8fc0:  f9406536    ldr x22, [x9, #200]
  0x8002d8fc4:  52800028    mov w8, #1
  0x8002d8fc8:  f9402689    ldr x9, [x20, #72]
  0x8002d8fcc:  b4fff669    cbz x9, #-308
  0x8002d8fd0:  f9406536    ldr x22, [x9, #200]
  0x8002d8fd4:  52800028    mov w8, #1
  0x8002d8fd8:  17ffffb0    b #-320
  0x8002d8fdc:  91002128    add x8, x9, #8
  0x8002d8fe0:  f9406116    ldr x22, [x8, #192]
  0x8002d8fe4:  f9407675    ldr x21, [x19, #232]
  0x8002d8fe8:  b5fff6d5    cbnz x21, #-296
  0x8002d8fec:  17ffffb7    b #-292
  0x8002d8ff0:  d0014c36    adrp x22, #43540480
  0x8002d8ff4:  9107ced6    add x22, x22, #499
  0x8002d8ff8:  17ffff9e    b #-392
  0x8002d8ffc:  f9406536    ldr x22, [x9, #200]
  0x8002d9000:  52800028    mov w8, #1
  0x8002d9004:  17ffffa7    b #-356
  0x8002d9008:  f94002a8    ldr x8, [x21]
  0x8002d900c:  aa1503e0    mov x0, x21
  0x8002d9010:  aa1303e1    mov x1, x19
  0x8002d9014:  f9401508    ldr x8, [x8, #40]
  0x8002d9018:  d63f0100    blr x8
  0x8002d901c:  295e2668    ldp w8, w9, [x19, #240]
  0x8002d9020:  6b09011f    cmp w8, w9
  0x8002d9024:  54fff54a    b.ge #-344
  0x8002d9028:  f9407e69    ldr x9, [x19, #248]
  0x8002d902c:  93407d08    sxtw x8, w8
  0x8002d9030:  f8287935    str x21, [x9, x8, lsl #3]
  0x8002d9034:  b940f268    ldr w8, [x19, #240]
  0x8002d9038:  11000508    add w8, w8, #1
  0x8002d903c:  b900f268    str w8, [x19, #240]
  0x8002d9040:  17ffffa3    b #-372
  0x8002d9044:  885f7edf    ldxr wzr, [x22]
  0x8002d9048:  88087edf    stxr w8, wzr, [x22]
  0x8002d904c:  35ffffc8    cbnz w8, #-8
  0x8002d9050:  910342e8    add x8, x23, #208
  0x8002d9054:  11000775    add w21, w27, #1
  0x8002d9058:  f83b79e8    str x8, [x15, x27, lsl #3]
  0x8002d905c:  9100077b    add x27, x27, #1
  0x8002d9060:  f100237f    cmp x27, #8
  0x8002d9064:  540007e0    b.eq #252
  0x8002d9068:  f87b7b37    ldr x23, [x25, x27, lsl #3]
  0x8002d906c:  b4ffff97    cbz x23, #-16
  0x8002d9070:  b94072e8    ldr w8, [x23, #112]
  0x8002d9074:  3100051f    cmn w8, #1
  0x8002d9078:  54ffff20    b.eq #-28
  0x8002d907c:  f9400349    ldr x9, [x26]
  0x8002d9080:  910382f6    add x22, x23, #224
  0x8002d9084:  7955552a    ldrh w10, [x9, #2730]
  0x8002d9088:  4b0a0108    sub w8, w8, w10
  0x8002d908c:  b94a392a    ldr w10, [x9, #2616]
  0x8002d9090:  f9452129    ldr x9, [x9, #2624]
  0x8002d9094:  6b08015f    cmp w10, w8
  0x8002d9098:  1a9f8108    csel w8, w8, wzr, hi
  0x8002d909c:  9b3c2508    smaddl x8, w8, w28, x9
  0x8002d90a0:  f9401108    ldr x8, [x8, #32]
  0x8002d90a4:  f83b79c8    str x8, [x14, x27, lsl #3]
  0x8002d90a8:  88dffec8    ldar w8, [x22]
  0x8002d90ac:  34fffd28    cbz w8, #-92
  0x8002d90b0:  885ffec1    ldaxr w1, [x22]
  0x8002d90b4:  32010028    orr w8, w1, #0x80000000
  0x8002d90b8:  88097ec8    stxr w9, w8, [x22]
  0x8002d90bc:  35ffffa9    cbnz w9, #-12
  0x8002d90c0:  7200783f    tst w1, #0x7fffffff
  0x8002d90c4:  54fffc00    b.eq #-128
  0x8002d90c8:  aa1403f8    mov x24, x20
  0x8002d90cc:  37f879e1    tbnz w1, #31, #3900
  0x8002d90d0:  f94002e8    ldr x8, [x23]
  0x8002d90d4:  aa1a03f4    mov x20, x26
  0x8002d90d8:  aa0d03f3    mov x19, x13
  0x8002d90dc:  f9400d08    ldr x8, [x8, #24]
  0x8002d90e0:  eb0d011f    cmp x8, x13
  0x8002d90e4:  54007a21    b.ne #3908
  0x8002d90e8:  f9400188    ldr x8, [x12]
  0x8002d90ec:  910342f5    add x21, x23, #208
  0x8002d90f0:  aa0c03fa    mov x26, x12
  0x8002d90f4:  aa1503e0    mov x0, x21
  0x8002d90f8:  d63f0100    blr x8
  0x8002d90fc:  d001b3e8    adrp x8, #57139200
  0x8002d9100:  39439ae1    ldrb w1, [x23, #230]
  0x8002d9104:  aa1503e0    mov x0, x21
  0x8002d9108:  f9419508    ldr x8, [x8, #808]
  0x8002d910c:  52800022    mov w2, #1
  0x8002d9110:  f9400108    ldr x8, [x8]
  0x8002d9114:  d63f0100    blr x8
  0x8002d9118:  d001b3e8    adrp x8, #57139200
  0x8002d911c:  7941cae1    ldrh w1, [x23, #228]
  0x8002d9120:  aa1503e0    mov x0, x21
  0x8002d9124:  f9419108    ldr x8, [x8, #800]
  0x8002d9128:  52800022    mov w2, #1
  0x8002d912c:  f9400108    ldr x8, [x8]
  0x8002d9130:  d63f0100    blr x8
  0x8002d9134:  aa1a03ec    mov x12, x26
  0x8002d9138:  aa1403fa    mov x26, x20
  0x8002d913c:  aa1803f4    mov x20, x24
  0x8002d9140:  aa1303ed    mov x13, x19
  0x8002d9144:  d10123ae    sub x14, x29, #72
  0x8002d9148:  910043ef    add x15, sp, #16
  0x8002d914c:  d503201f    nop
  0x8002d9150:  885f7edf    ldxr wzr, [x22]
  0x8002d9154:  8808fedf    stlxr w8, wzr, [x22]
  0x8002d9158:  35ffffc8    cbnz w8, #-8
  0x8002d915c:  17ffffbd    b #-268
  0x8002d9160:  f9403297    ldr x23, [x20, #96]
  0x8002d9164:  f94007f8    ldr x24, [sp, #8]
  0x8002d9168:  b5001a77    cbnz x23, #844
  0x8002d916c:  f001b408    adrp x8, #57159680
  0x8002d9170:  f9405f00    ldr x0, [x24, #184]
  0x8002d9174:  d10123a2    sub x2, x29, #72
  0x8002d9178:  f85f83a4    ldur x4, [x29, #-8]
  0x8002d917c:  910043e3    add x3, sp, #16
  0x8002d9180:  2a1503e1    mov w1, w21
  0x8002d9184:  f9402be5    ldr x5, [sp, #80]
  0x8002d9188:  f940fd08    ldr x8, [x8, #504]
  0x8002d918c:  f9400108    ldr x8, [x8]
  0x8002d9190:  d63f0100    blr x8
  0x8002d9194:  f9400355    ldr x21, [x26]
  0x8002d9198:  f940032c    ldr x12, [x25]
  0x8002d919c:  b400362c    cbz x12, #1732
  0x8002d91a0:  b94c8aad    ldr w13, [x21, #3208]
  0x8002d91a4:  363035ed    tbz w13, #6, #1724
  0x8002d91a8:  b9407188    ldr w8, [x12, #112]
  0x8002d91ac:  2a1c03f0    mov w16, w28
  0x8002d91b0:  795556a9    ldrh w9, [x21, #2730]
  0x8002d91b4:  4b090109    sub w9, w8, w9
  0x8002d91b8:  b94a3aaa    ldr w10, [x21, #2616]
  0x8002d91bc:  f94522a8    ldr x8, [x21, #2624]
  0x8002d91c0:  6b09015f    cmp w10, w9
  0x8002d91c4:  1a9f812e    csel w14, w9, wzr, hi
  0x8002d91c8:  9b3c21cb    smaddl x11, w14, w28, x8
  0x8002d91cc:  b8404d6f    ldr w15, [x11, #4]!
  0x8002d91d0:  360003af    tbz w15, #0, #116
  0x8002d91d4:  b940016f    ldr w15, [x11]
  0x8002d91d8:  360821cf    tbz w15, #1, #1080
  0x8002d91dc:  2a1f03f9    mov w25, wzr
  0x8002d91e0:  f940168c    ldr x12, [x20, #40]
  0x8002d91e4:  b500036c    cbnz x12, #108
  0x8002d91e8:  f9401a8c    ldr x12, [x20, #48]
  0x8002d91ec:  b500056c    cbnz x12, #172
  0x8002d91f0:  f9401e8c    ldr x12, [x20, #56]
  0x8002d91f4:  b500076c    cbnz x12, #236
  0x8002d91f8:  f940228c    ldr x12, [x20, #64]
  0x8002d91fc:  b500096c    cbnz x12, #300
  0x8002d9200:  f940268c    ldr x12, [x20, #72]
  0x8002d9204:  b5000b6c    cbnz x12, #364
  0x8002d9208:  f9402a8c    ldr x12, [x20, #80]
  0x8002d920c:  b5003c4c    cbnz x12, #1928
  0x8002d9210:  f9402e8c    ldr x12, [x20, #88]
  0x8002d9214:  b500286c    cbnz x12, #1292
  0x8002d9218:  f9403297    ldr x23, [x20, #96]
  0x8002d921c:  b5001bb7    cbnz x23, #884
  0x8002d9220:  35001d79    cbnz w25, #940
  0x8002d9224:  a94f4ff4    ldp x20, x19, [sp, #240]
  0x8002d9228:  a94e57f6    ldp x22, x21, [sp, #224]
  0x8002d922c:  a94d5ff8    ldp x24, x23, [sp, #208]
  0x8002d9230:  a94c67fa    ldp x26, x25, [sp, #192]
  0x8002d9234:  a94b6ffc    ldp x28, x27, [sp, #176]
  0x8002d9238:  a94a7bfd    ldp x29, x30, [sp, #160]
  0x8002d923c:  910403ff    add sp, sp, #256
  0x8002d9240:  d65f03c0    ret
  0x8002d9244:  2a1f03f9    mov w25, wzr
  0x8002d9248:  f940168c    ldr x12, [x20, #40]
  0x8002d924c:  b4fffcec    cbz x12, #-100
  0x8002d9250:  b94c8aad    ldr w13, [x21, #3208]
  0x8002d9254:  363001ad    tbz w13, #6, #52
  0x8002d9258:  b9407188    ldr w8, [x12, #112]
  0x8002d925c:  795556a9    ldrh w9, [x21, #2730]
  0x8002d9260:  4b09010a    sub w10, w8, w9
  0x8002d9264:  b94a3aa9    ldr w9, [x21, #2616]
  0x8002d9268:  f94522a8    ldr x8, [x21, #2624]
  0x8002d926c:  6b0a013f    cmp w9, w10
  0x8002d9270:  1a9f814e    csel w14, w10, wzr, hi
  0x8002d9274:  9b3021cb    smaddl x11, w14, w16, x8
  0x8002d9278:  b8404d6f    ldr w15, [x11, #4]!
  0x8002d927c:  3600006f    tbz w15, #0, #12
  0x8002d9280:  b940016f    ldr w15, [x11]
  0x8002d9284:  3608428f    tbz w15, #1, #2128
  0x8002d9288:  2a1f03f3    mov w19, wzr
  0x8002d928c:  2a130339    orr w25, w25, w19
  0x8002d9290:  f9401a8c    ldr x12, [x20, #48]
  0x8002d9294:  b4fffaec    cbz x12, #-164
  0x8002d9298:  b94c8aad    ldr w13, [x21, #3208]
  0x8002d929c:  363001ad    tbz w13, #6, #52
  0x8002d92a0:  b9407188    ldr w8, [x12, #112]
  0x8002d92a4:  795556a9    ldrh w9, [x21, #2730]
  0x8002d92a8:  4b09010a    sub w10, w8, w9
  0x8002d92ac:  b94a3aa9    ldr w9, [x21, #2616]
  0x8002d92b0:  f94522a8    ldr x8, [x21, #2624]
  0x8002d92b4:  6b0a013f    cmp w9, w10
  0x8002d92b8:  1a9f814e    csel w14, w10, wzr, hi
  0x8002d92bc:  9b3021cb    smaddl x11, w14, w16, x8
  0x8002d92c0:  b8404d6f    ldr w15, [x11, #4]!
  0x8002d92c4:  3600006f    tbz w15, #0, #12
  0x8002d92c8:  b940016f    ldr w15, [x11]
  0x8002d92cc:  3608498f    tbz w15, #1, #2352
  0x8002d92d0:  2a1f03f3    mov w19, wzr
  0x8002d92d4:  2a130339    orr w25, w25, w19
  0x8002d92d8:  f9401e8c    ldr x12, [x20, #56]
  0x8002d92dc:  b4fff8ec    cbz x12, #-228
  0x8002d92e0:  b94c8aad    ldr w13, [x21, #3208]
  0x8002d92e4:  363001ad    tbz w13, #6, #52
  0x8002d92e8:  b9407188    ldr w8, [x12, #112]
  0x8002d92ec:  795556a9    ldrh w9, [x21, #2730]
  0x8002d92f0:  4b09010a    sub w10, w8, w9
  0x8002d92f4:  b94a3aa9    ldr w9, [x21, #2616]
  0x8002d92f8:  f94522a8    ldr x8, [x21, #2624]
  0x8002d92fc:  6b0a013f    cmp w9, w10
  0x8002d9300:  1a9f814e    csel w14, w10, wzr, hi
  0x8002d9304:  9b3021cb    smaddl x11, w14, w16, x8
  0x8002d9308:  b8404d6f    ldr w15, [x11, #4]!
  0x8002d930c:  3600006f    tbz w15, #0, #12
  0x8002d9310:  b940016f    ldr w15, [x11]
  0x8002d9314:  360857cf    tbz w15, #1, #2808
  0x8002d9318:  2a1f03f3    mov w19, wzr
  0x8002d931c:  2a130339    orr w25, w25, w19
  0x8002d9320:  f940228c    ldr x12, [x20, #64]
  0x8002d9324:  b4fff6ec    cbz x12, #-292
  0x8002d9328:  b94c8aad    ldr w13, [x21, #3208]
  0x8002d932c:  363001ad    tbz w13, #6, #52
  0x8002d9330:  b9407188    ldr w8, [x12, #112]
  0x8002d9334:  795556a9    ldrh w9, [x21, #2730]
  0x8002d9338:  4b09010a    sub w10, w8, w9
  0x8002d933c:  b94a3aa9    ldr w9, [x21, #2616]
  0x8002d9340:  f94522a8    ldr x8, [x21, #2624]
  0x8002d9344:  6b0a013f    cmp w9, w10
  0x8002d9348:  1a9f814e    csel w14, w10, wzr, hi
  0x8002d934c:  9b3021cb    smaddl x11, w14, w16, x8
  0x8002d9350:  b8404d6f    ldr w15, [x11, #4]!
  0x8002d9354:  3600006f    tbz w15, #0, #12
  0x8002d9358:  b940016f    ldr w15, [x11]
  0x8002d935c:  36084d4f    tbz w15, #1, #2472
  0x8002d9360:  2a1f03f3    mov w19, wzr
  0x8002d9364:  2a130339    orr w25, w25, w19
  0x8002d9368:  f940268c    ldr x12, [x20, #72]
  0x8002d936c:  b4fff4ec    cbz x12, #-356
  0x8002d9370:  b94c8aad    ldr w13, [x21, #3208]
  0x8002d9374:  3637f4ad    tbz w13, #6, #-364
  0x8002d9378:  b9407188    ldr w8, [x12, #112]
  0x8002d937c:  795556a9    ldrh w9, [x21, #2730]
  0x8002d9380:  4b090109    sub w9, w8, w9
  0x8002d9384:  b94a3aaa    ldr w10, [x21, #2616]
  0x8002d9388:  f94522a8    ldr x8, [x21, #2624]
  0x8002d938c:  6b09015f    cmp w10, w9
  0x8002d9390:  2a0903ee    mov w14, w9
  0x8002d9394:  54006c09    b.ls #3456
  0x8002d9398:  9b3021cb    smaddl x11, w14, w16, x8
  0x8002d939c:  b8404d6f    ldr w15, [x11, #4]!
  0x8002d93a0:  3607f34f    tbz w15, #0, #-408
  0x8002d93a4:  b940016f    ldr w15, [x11]
  0x8002d93a8:  370ff30f    tbnz w15, #1, #-416
  0x8002d93ac:  36a06e0d    tbz w13, #20, #3520
  0x8002d93b0:  93407dcc    sxtw x12, w14
  0x8002d93b4:  5280050d    mov w13, #40
  0x8002d93b8:  9b2d218c    smaddl x12, w12, w13, x8
  0x8002d93bc:  f94656ad    ldr x13, [x21, #3240]
  0x8002d93c0:  f9400d8c    ldr x12, [x12, #24]
  0x8002d93c4:  f940018c    ldr x12, [x12]
  0x8002d93c8:  7941098c    ldrh w12, [x12, #132]
  0x8002d93cc:  d37be98c    lsl x12, x12, #5
  0x8002d93d0:  b4006f0d    cbz x13, #3552
  0x8002d93d4:  f94089ae    ldr x14, [x13, #272]
  0x8002d93d8:  b400008e    cbz x14, #16
  0x8002d93dc:  f94652af    ldr x15, [x21, #3232]
  0x8002d93e0:  f9400dce    ldr x14, [x14, #24]
  0x8002d93e4:  cb0e01ee    sub x14, x15, x14
  0x8002d93e8:  f94081ad    ldr x13, [x13, #256]
  0x8002d93ec:  8b0c01cc    add x12, x14, x12
  0x8002d93f0:  f86d698c    ldr x12, [x12, x13]
  0x8002d93f4:  b400590c    cbz x12, #2848
  0x8002d93f8:  2a1f03eb    mov w11, wzr
  0x8002d93fc:  6b09015f    cmp w10, w9
  0x8002d9400:  f9405f16    ldr x22, [x24, #184]
  0x8002d9404:  1a9f8129    csel w9, w9, wzr, hi
  0x8002d9408:  9b302128    smaddl x8, w9, w16, x8
  0x8002d940c:  f94686a9    ldr x9, [x21, #3336]
  0x8002d9410:  f9400d08    ldr x8, [x8, #24]
  0x8002d9414:  f9400108    ldr x8, [x8]
  0x8002d9418:  79410908    ldrh w8, [x8, #132]
  0x8002d941c:  8b081537    add x23, x9, x8, lsl #5
  0x8002d9420:  3700014b    tbnz w11, #0, #40
  0x8002d9424:  d001b3e8    adrp x8, #57139200
  0x8002d9428:  aa1603e0    mov x0, x22
  0x8002d942c:  f940ad08    ldr x8, [x8, #344]
  0x8002d9430:  52800021    mov w1, #1
  0x8002d9434:  aa1703e2    mov x2, x23
  0x8002d9438:  f9400108    ldr x8, [x8]
  0x8002d943c:  d63f0100    blr x8
  0x8002d9440:  39722aa8    ldrb w8, [x21, #3210]
  0x8002d9444:  37386ba8    tbnz w8, #7, #3444
  0x8002d9448:  f001b408    adrp x8, #57159680
  0x8002d944c:  b0015322    adrp x2, #44453888
  0x8002d9450:  910bb042    add x2, x2, #748
  0x8002d9454:  f946a108    ldr x8, [x8, #3392]
  0x8002d9458:  528000a1    mov w1, #5
  0x8002d945c:  f9400108    ldr x8, [x8]
  0x8002d9460:  aa1603e0    mov x0, x22
  0x8002d9464:  528001e3    mov w3, #15
  0x8002d9468:  d63f0100    blr x8
  0x8002d946c:  b94c8aa8    ldr w8, [x21, #3208]
  0x8002d9470:  36a001c8    tbz w8, #20, #56
  0x8002d9474:  37b80168    tbnz w8, #23, #44
  0x8002d9478:  397242a8    ldrb w8, [x21, #3216]
  0x8002d947c:  7100111f    cmp w8, #4
  0x8002d9480:  54006a61    b.ne #3404
  0x8002d9484:  b001b3e8    adrp x8, #57135104
  0x8002d9488:  aa1603e0    mov x0, x22
  0x8002d948c:  f9470108    ldr x8, [x8, #3584]
  0x8002d9490:  52800201    mov w1, #16
  0x8002d9494:  aa1703e2    mov x2, x23
  0x8002d9498:  f9400108    ldr x8, [x8]
  0x8002d949c:  d63f0100    blr x8
  0x8002d94a0:  39722aa8    ldrb w8, [x21, #3210]
  0x8002d94a4:  37286aa8    tbnz w8, #5, #3412
  0x8002d94a8:  52800039    mov w25, #1
  0x8002d94ac:  2a1c03f0    mov w16, w28
  0x8002d94b0:  17ffff56    b #-680
  0x8002d94b4:  b94072e8    ldr w8, [x23, #112]
  0x8002d94b8:  3100051f    cmn w8, #1
  0x8002d94bc:  54ffe580    b.eq #-848
  0x8002d94c0:  f9400349    ldr x9, [x26]
  0x8002d94c4:  910382f3    add x19, x23, #224
  0x8002d94c8:  7955552a    ldrh w10, [x9, #2730]
  0x8002d94cc:  4b0a0108    sub w8, w8, w10
  0x8002d94d0:  b94a392a    ldr w10, [x9, #2616]
  0x8002d94d4:  f9452129    ldr x9, [x9, #2624]
  0x8002d94d8:  6b08015f    cmp w10, w8
  0x8002d94dc:  1a9f8108    csel w8, w8, wzr, hi
  0x8002d94e0:  9b3c2508    smaddl x8, w8, w28, x9
  0x8002d94e4:  f9401108    ldr x8, [x8, #32]
  0x8002d94e8:  f81f83a8    stur x8, [x29, #-8]
  0x8002d94ec:  88dffe68    ldar w8, [x19]
  0x8002d94f0:  35000088    cbnz w8, #16
  0x8002d94f4:  910342e8    add x8, x23, #208
  0x8002d94f8:  f9002be8    str x8, [sp, #80]
  0x8002d94fc:  17ffff1c    b #-912
  0x8002d9500:  885ffe61    ldaxr w1, [x19]
  0x8002d9504:  32010028    orr w8, w1, #0x80000000
  0x8002d9508:  88097e68    stxr w9, w8, [x19]
  0x8002d950c:  35ffffa9    cbnz w9, #-12
  0x8002d9510:  7200783f    tst w1, #0x7fffffff
  0x8002d9514:  54005600    b.eq #2752
  0x8002d9518:  37f856a1    tbnz w1, #31, #2772
  0x8002d951c:  f94002e8    ldr x8, [x23]
  0x8002d9520:  9001b429    adrp x9, #57163776
  0x8002d9524:  f9400d08    ldr x8, [x8, #24]
  0x8002d9528:  f9477929    ldr x9, [x9, #3824]
  0x8002d952c:  eb09011f    cmp x8, x9
  0x8002d9530:  54006001    b.ne #3072
  0x8002d9534:  f9400188    ldr x8, [x12]
  0x8002d9538:  910342f6    add x22, x23, #208
  0x8002d953c:  aa1603e0    mov x0, x22
  0x8002d9540:  d63f0100    blr x8
  0x8002d9544:  d001b3e8    adrp x8, #57139200
  0x8002d9548:  39439ae1    ldrb w1, [x23, #230]
  0x8002d954c:  aa1603e0    mov x0, x22
  0x8002d9550:  f9419508    ldr x8, [x8, #808]
  0x8002d9554:  2a1f03e2    mov w2, wzr
  0x8002d9558:  f9400108    ldr x8, [x8]
  0x8002d955c:  d63f0100    blr x8
  0x8002d9560:  d001b3e8    adrp x8, #57139200
  0x8002d9564:  7941cae1    ldrh w1, [x23, #228]
  0x8002d9568:  aa1603e0    mov x0, x22
  0x8002d956c:  f9419108    ldr x8, [x8, #800]
  0x8002d9570:  52800022    mov w2, #1
  0x8002d9574:  f9400108    ldr x8, [x8]
  0x8002d9578:  d63f0100    blr x8
  0x8002d957c:  d503201f    nop
  0x8002d9580:  885f7e7f    ldxr wzr, [x19]
  0x8002d9584:  8808fe7f    stlxr w8, wzr, [x19]
  0x8002d9588:  35ffffc8    cbnz w8, #-8
  0x8002d958c:  17ffffda    b #-152
  0x8002d9590:  b94c8aac    ldr w12, [x21, #3208]
  0x8002d9594:  363001ac    tbz w12, #6, #52
  0x8002d9598:  b94072e8    ldr w8, [x23, #112]
  0x8002d959c:  795556a9    ldrh w9, [x21, #2730]
  0x8002d95a0:  4b09010a    sub w10, w8, w9
  0x8002d95a4:  b94a3aa9    ldr w9, [x21, #2616]
  0x8002d95a8:  f94522a8    ldr x8, [x21, #2624]
  0x8002d95ac:  6b0a013f    cmp w9, w10
  0x8002d95b0:  1a9f814d    csel w13, w10, wzr, hi
  0x8002d95b4:  9b3021ab    smaddl x11, w13, w16, x8
  0x8002d95b8:  b8404d6e    ldr w14, [x11, #4]!
  0x8002d95bc:  3600006e    tbz w14, #0, #12
  0x8002d95c0:  b940016e    ldr w14, [x11]
  0x8002d95c4:  3608154e    tbz w14, #1, #680
  0x8002d95c8:  3607e2f9    tbz w25, #0, #-932
  0x8002d95cc:  b94c8aa8    ldr w8, [x21, #3208]
  0x8002d95d0:  120c0508    and w8, w8, #0x300000
  0x8002d95d4:  7144011f    cmp w8, #256, lsl #12
  0x8002d95d8:  54ffe261    b.ne #-948
  0x8002d95dc:  d001b3e8    adrp x8, #57139200
  0x8002d95e0:  f9405f00    ldr x0, [x24, #184]
  0x8002d95e4:  52800021    mov w1, #1
  0x8002d95e8:  f940b108    ldr x8, [x8, #352]
  0x8002d95ec:  a94f4ff4    ldp x20, x19, [sp, #240]
  0x8002d95f0:  a94e57f6    ldp x22, x21, [sp, #224]
  0x8002d95f4:  f9400102    ldr x2, [x8]
  0x8002d95f8:  a94d5ff8    ldp x24, x23, [sp, #208]
  0x8002d95fc:  a94c67fa    ldp x26, x25, [sp, #192]
  0x8002d9600:  a94b6ffc    ldp x28, x27, [sp, #176]
  0x8002d9604:  a94a7bfd    ldp x29, x30, [sp, #160]
  0x8002d9608:  910403ff    add sp, sp, #256
  0x8002d960c:  d61f0040    br x2
  0x8002d9610:  36a0528d    tbz w13, #20, #2640
  0x8002d9614:  93407dcc    sxtw x12, w14
  0x8002d9618:  5280050d    mov w13, #40
  0x8002d961c:  9b2d218c    smaddl x12, w12, w13, x8
  0x8002d9620:  f94656ad    ldr x13, [x21, #3240]
  0x8002d9624:  f9400d8c    ldr x12, [x12, #24]
  0x8002d9628:  f940018c    ldr x12, [x12]
  0x8002d962c:  7941098c    ldrh w12, [x12, #132]
  0x8002d9630:  d37be98c    lsl x12, x12, #5
  0x8002d9634:  b400538d    cbz x13, #2672
  0x8002d9638:  f94089ae    ldr x14, [x13, #272]
  0x8002d963c:  b400008e    cbz x14, #16
  0x8002d9640:  f94652af    ldr x15, [x21, #3232]
  0x8002d9644:  f9400dce    ldr x14, [x14, #24]
  0x8002d9648:  cb0e01ee    sub x14, x15, x14
  0x8002d964c:  f94081ad    ldr x13, [x13, #256]
  0x8002d9650:  8b0c01cc    add x12, x14, x12
  0x8002d9654:  f86d698c    ldr x12, [x12, x13]
  0x8002d9658:  b4002c2c    cbz x12, #1412
  0x8002d965c:  2a1f03eb    mov w11, wzr
  0x8002d9660:  6b09015f    cmp w10, w9
  0x8002d9664:  540049e9    b.ls #2364
  0x8002d9668:  9b302128    smaddl x8, w9, w16, x8
  0x8002d966c:  f94686a9    ldr x9, [x21, #3336]
  0x8002d9670:  f9405f16    ldr x22, [x24, #184]
  0x8002d9674:  f9400d08    ldr x8, [x8, #24]
  0x8002d9678:  f9400108    ldr x8, [x8]
  0x8002d967c:  79410908    ldrh w8, [x8, #132]
  0x8002d9680:  8b081537    add x23, x9, x8, lsl #5
  0x8002d9684:  3700014b    tbnz w11, #0, #40
  0x8002d9688:  d001b3e8    adrp x8, #57139200
  0x8002d968c:  aa1603e0    mov x0, x22
  0x8002d9690:  f940ad08    ldr x8, [x8, #344]
  0x8002d9694:  52800021    mov w1, #1
  0x8002d9698:  aa1703e2    mov x2, x23
  0x8002d969c:  f9400108    ldr x8, [x8]
  0x8002d96a0:  d63f0100    blr x8
  0x8002d96a4:  39722aa8    ldrb w8, [x21, #3210]
  0x8002d96a8:  37385028    tbnz w8, #7, #2564
  0x8002d96ac:  f001b408    adrp x8, #57159680
  0x8002d96b0:  b0015322    adrp x2, #44453888
  0x8002d96b4:  910bb042    add x2, x2, #748
  0x8002d96b8:  f946a108    ldr x8, [x8, #3392]
  0x8002d96bc:  aa1603e0    mov x0, x22
  0x8002d96c0:  f9400108    ldr x8, [x8]
  0x8002d96c4:  2a1f03e1    mov w1, wzr
  0x8002d96c8:  528001e3    mov w3, #15
  0x8002d96cc:  d63f0100    blr x8
  0x8002d96d0:  b94c8aa8    ldr w8, [x21, #3208]
  0x8002d96d4:  36a04f68    tbz w8, #20, #2540
  0x8002d96d8:  37b80168    tbnz w8, #23, #44
  0x8002d96dc:  397242a8    ldrb w8, [x21, #3216]
  0x8002d96e0:  7100111f    cmp w8, #4
  0x8002d96e4:  54004f21    b.ne #2532
  0x8002d96e8:  b001b3e8    adrp x8, #57135104
  0x8002d96ec:  aa1603e0    mov x0, x22
  0x8002d96f0:  f9470108    ldr x8, [x8, #3584]
  0x8002d96f4:  52800201    mov w1, #16
  0x8002d96f8:  aa1703e2    mov x2, x23
  0x8002d96fc:  f9400108    ldr x8, [x8]
  0x8002d9700:  d63f0100    blr x8
  0x8002d9704:  39722aa8    ldrb w8, [x21, #3210]
  0x8002d9708:  37284f68    tbnz w8, #5, #2540
  0x8002d970c:  2a1c03f0    mov w16, w28
  0x8002d9710:  52800039    mov w25, #1
  0x8002d9714:  f940168c    ldr x12, [x20, #40]
  0x8002d9718:  b4ffd68c    cbz x12, #-1328
  0x8002d971c:  17fffecd    b #-1228
  0x8002d9720:  b94c8aad    ldr w13, [x21, #3208]
  0x8002d9724:  3637d7ad    tbz w13, #6, #-1292
  0x8002d9728:  b9407188    ldr w8, [x12, #112]
  0x8002d972c:  795556a9    ldrh w9, [x21, #2730]
  0x8002d9730:  4b09010a    sub w10, w8, w9
  0x8002d9734:  b94a3aa9    ldr w9, [x21, #2616]
  0x8002d9738:  f94522a8    ldr x8, [x21, #2624]
  0x8002d973c:  6b0a013f    cmp w9, w10
  0x8002d9740:  1a9f814e    csel w14, w10, wzr, hi
  0x8002d9744:  9b3021cb    smaddl x11, w14, w16, x8
  0x8002d9748:  b8404d6f    ldr w15, [x11, #4]!
  0x8002d974c:  3607d66f    tbz w15, #0, #-1332
  0x8002d9750:  b940016f    ldr w15, [x11]
  0x8002d9754:  370fd62f    tbnz w15, #1, #-1340
  0x8002d9758:  36a06b6d    tbz w13, #20, #3436
  0x8002d975c:  93407dcc    sxtw x12, w14
  0x8002d9760:  5280050d    mov w13, #40
  0x8002d9764:  9b2d218c    smaddl x12, w12, w13, x8
  0x8002d9768:  f94656ad    ldr x13, [x21, #3240]
  0x8002d976c:  f9400d8c    ldr x12, [x12, #24]
  0x8002d9770:  f940018c    ldr x12, [x12]
  0x8002d9774:  7941098c    ldrh w12, [x12, #132]
  0x8002d9778:  d37be98c    lsl x12, x12, #5
  0x8002d977c:  b4006c6d    cbz x13, #3468
  0x8002d9780:  f94089ae    ldr x14, [x13, #272]
  0x8002d9784:  b400008e    cbz x14, #16
  0x8002d9788:  f94652af    ldr x15, [x21, #3232]
  0x8002d978c:  f9400dce    ldr x14, [x14, #24]
  0x8002d9790:  cb0e01ee    sub x14, x15, x14
  0x8002d9794:  f94081ad    ldr x13, [x13, #256]
  0x8002d9798:  8b0c01cc    add x12, x14, x12
  0x8002d979c:  f86d698c    ldr x12, [x12, x13]
  0x8002d97a0:  b4006b8c    cbz x12, #3440
  0x8002d97a4:  2a1f03eb    mov w11, wzr
  0x8002d97a8:  6b0a013f    cmp w9, w10
  0x8002d97ac:  f9405f16    ldr x22, [x24, #184]
  0x8002d97b0:  1a9f8149    csel w9, w10, wzr, hi
  0x8002d97b4:  9b302128    smaddl x8, w9, w16, x8
  0x8002d97b8:  f94686a9    ldr x9, [x21, #3336]
  0x8002d97bc:  f9400d08    ldr x8, [x8, #24]
  0x8002d97c0:  f9400108    ldr x8, [x8]
  0x8002d97c4:  79410908    ldrh w8, [x8, #132]
  0x8002d97c8:  8b081537    add x23, x9, x8, lsl #5
  0x8002d97cc:  3700014b    tbnz w11, #0, #40
  0x8002d97d0:  d001b3e8    adrp x8, #57139200
  0x8002d97d4:  aa1603e0    mov x0, x22
  0x8002d97d8:  f940ad08    ldr x8, [x8, #344]
  0x8002d97dc:  52800021    mov w1, #1
  0x8002d97e0:  aa1703e2    mov x2, x23
  0x8002d97e4:  f9400108    ldr x8, [x8]
  0x8002d97e8:  d63f0100    blr x8
  0x8002d97ec:  39722aa8    ldrb w8, [x21, #3210]
  0x8002d97f0:  373869c8    tbnz w8, #7, #3384
  0x8002d97f4:  f001b408    adrp x8, #57159680
  0x8002d97f8:  b0015322    adrp x2, #44453888
  0x8002d97fc:  910bb042    add x2, x2, #748
  0x8002d9800:  f946a108    ldr x8, [x8, #3392]
  0x8002d9804:  aa1603e0    mov x0, x22
  0x8002d9808:  f9400108    ldr x8, [x8]
  0x8002d980c:  528000e1    mov w1, #7
  0x8002d9810:  528001e3    mov w3, #15
  0x8002d9814:  d63f0100    blr x8
  0x8002d9818:  b94c8aa8    ldr w8, [x21, #3208]
  0x8002d981c:  36a001c8    tbz w8, #20, #56
  0x8002d9820:  37b80168    tbnz w8, #23, #44
  0x8002d9824:  397242a8    ldrb w8, [x21, #3216]
  0x8002d9828:  7100111f    cmp w8, #4
  0x8002d982c:  54006881    b.ne #3344
  0x8002d9830:  b001b3e8    adrp x8, #57135104
  0x8002d9834:  aa1603e0    mov x0, x22
  0x8002d9838:  f9470108    ldr x8, [x8, #3584]
  0x8002d983c:  52800201    mov w1, #16
  0x8002d9840:  aa1703e2    mov x2, x23
  0x8002d9844:  f9400108    ldr x8, [x8]
  0x8002d9848:  d63f0100    blr x8
  0x8002d984c:  39722aa8    ldrb w8, [x21, #3210]
  0x8002d9850:  372868c8    tbnz w8, #5, #3352
  0x8002d9854:  52800039    mov w25, #1
  0x8002d9858:  2a1c03f0    mov w16, w28
  0x8002d985c:  17fffe6f    b #-1604
  0x8002d9860:  2a1f03f9    mov w25, wzr
  0x8002d9864:  2a1c03f0    mov w16, w28
  0x8002d9868:  17fffe5e    b #-1672
  0x8002d986c:  36a04d6c    tbz w12, #20, #2476
  0x8002d9870:  93407dac    sxtw x12, w13
  0x8002d9874:  5280050d    mov w13, #40
  0x8002d9878:  9b2d218c    smaddl x12, w12, w13, x8
  0x8002d987c:  f94656ad    ldr x13, [x21, #3240]
  0x8002d9880:  f9400d8c    ldr x12, [x12, #24]
  0x8002d9884:  f940018c    ldr x12, [x12]
  0x8002d9888:  7941098c    ldrh w12, [x12, #132]
  0x8002d988c:  d37be98c    lsl x12, x12, #5
  0x8002d9890:  b4004e6d    cbz x13, #2508
  0x8002d9894:  f94089ae    ldr x14, [x13, #272]
  0x8002d9898:  b400008e    cbz x14, #16
  0x8002d989c:  f94652af    ldr x15, [x21, #3232]
  0x8002d98a0:  f9400dce    ldr x14, [x14, #24]
  0x8002d98a4:  cb0e01ee    sub x14, x15, x14
  0x8002d98a8:  f94081ad    ldr x13, [x13, #256]
  0x8002d98ac:  8b0c01cc    add x12, x14, x12
  0x8002d98b0:  f86d698c    ldr x12, [x12, x13]
  0x8002d98b4:  b400386c    cbz x12, #1804
  0x8002d98b8:  2a1f03eb    mov w11, wzr
  0x8002d98bc:  6b0a013f    cmp w9, w10
  0x8002d98c0:  f9405f14    ldr x20, [x24, #184]
  0x8002d98c4:  1a9f8149    csel w9, w10, wzr, hi
  0x8002d98c8:  9b302128    smaddl x8, w9, w16, x8
  0x8002d98cc:  f94686a9    ldr x9, [x21, #3336]
  0x8002d98d0:  f9400d08    ldr x8, [x8, #24]
  0x8002d98d4:  f9400108    ldr x8, [x8]
  0x8002d98d8:  79410908    ldrh w8, [x8, #132]
  0x8002d98dc:  8b081536    add x22, x9, x8, lsl #5
  0x8002d98e0:  3700014b    tbnz w11, #0, #40
  0x8002d98e4:  d001b3e8    adrp x8, #57139200
  0x8002d98e8:  aa1403e0    mov x0, x20
  0x8002d98ec:  f940ad08    ldr x8, [x8, #344]
  0x8002d98f0:  52800021    mov w1, #1
  0x8002d98f4:  aa1603e2    mov x2, x22
  0x8002d98f8:  f9400108    ldr x8, [x8]
  0x8002d98fc:  d63f0100    blr x8
  0x8002d9900:  39722aa8    ldrb w8, [x21, #3210]
  0x8002d9904:  37384b08    tbnz w8, #7, #2400
  0x8002d9908:  394302e8    ldrb w8, [x23, #192]
  0x8002d990c:  1e2e1000    fmov s0, #1.00000000
  0x8002d9910:  aa1403e0    mov x0, x20
  0x8002d9914:  52800021    mov w1, #1
  0x8002d9918:  2a1f03e2    mov w2, wzr
  0x8002d991c:  121f1908    and w8, w8, #0xfe
  0x8002d9920:  7101711f    cmp w8, #92
  0x8002d9924:  52801fe8    mov w8, #255
  0x8002d9928:  1a9f0103    csel w3, w8, wzr, eq
  0x8002d992c:  f001b408    adrp x8, #57159680
  0x8002d9930:  f9415908    ldr x8, [x8, #688]
  0x8002d9934:  f9400108    ldr x8, [x8]
  0x8002d9938:  d63f0100    blr x8
  0x8002d993c:  b94c8aa8    ldr w8, [x21, #3208]
  0x8002d9940:  36a7e468    tbz w8, #20, #-884
  0x8002d9944:  37b80168    tbnz w8, #23, #44
  0x8002d9948:  397242a8    ldrb w8, [x21, #3216]
  0x8002d994c:  7100111f    cmp w8, #4
  0x8002d9950:  54004941    b.ne #2344
  0x8002d9954:  b001b3e8    adrp x8, #57135104
  0x8002d9958:  aa1403e0    mov x0, x20
  0x8002d995c:  f9470108    ldr x8, [x8, #3584]
  0x8002d9960:  52800201    mov w1, #16
  0x8002d9964:  aa1603e2    mov x2, x22
  0x8002d9968:  f9400108    ldr x8, [x8]
  0x8002d996c:  d63f0100    blr x8
  0x8002d9970:  39722aa8    ldrb w8, [x21, #3210]
  0x8002d9974:  362fe2c8    tbz w8, #5, #-936
  0x8002d9978:  d001b3e8    adrp x8, #57139200
  0x8002d997c:  aa1403e0    mov x0, x20
  0x8002d9980:  f940b108    ldr x8, [x8, #352]
  0x8002d9984:  52800021    mov w1, #1
  0x8002d9988:  f9400108    ldr x8, [x8]
  0x8002d998c:  d63f0100    blr x8
  0x8002d9990:  17ffff0f    b #-964
  0x8002d9994:  b94c8aad    ldr w13, [x21, #3208]
  0x8002d9998:  3637c3cd    tbz w13, #6, #-1928
  0x8002d999c:  b9407188    ldr w8, [x12, #112]
  0x8002d99a0:  795556a9    ldrh w9, [x21, #2730]
  0x8002d99a4:  4b09010a    sub w10, w8, w9
  0x8002d99a8:  b94a3aa9    ldr w9, [x21, #2616]
  0x8002d99ac:  f94522a8    ldr x8, [x21, #2624]
  0x8002d99b0:  6b0a013f    cmp w9, w10
  0x8002d99b4:  1a9f814e    csel w14, w10, wzr, hi
  0x8002d99b8:  9b3021cb    smaddl x11, w14, w16, x8
  0x8002d99bc:  b8404d6f    ldr w15, [x11, #4]!
  0x8002d99c0:  3607c28f    tbz w15, #0, #-1968
  0x8002d99c4:  b940016f    ldr w15, [x11]
  0x8002d99c8:  370fc24f    tbnz w15, #1, #-1976
  0x8002d99cc:  36a06a4d    tbz w13, #20, #3400
  0x8002d99d0:  93407dcc    sxtw x12, w14
  0x8002d99d4:  5280050d    mov w13, #40
  0x8002d99d8:  9b2d218c    smaddl x12, w12, w13, x8
  0x8002d99dc:  f94656ad    ldr x13, [x21, #3240]
  0x8002d99e0:  f9400d8c    ldr x12, [x12, #24]
  0x8002d99e4:  f940018c    ldr x12, [x12]
  0x8002d99e8:  7941098c    ldrh w12, [x12, #132]
  0x8002d99ec:  d37be98c    lsl x12, x12, #5
  0x8002d99f0:  b4006b4d    cbz x13, #3432
  0x8002d99f4:  f94089ae    ldr x14, [x13, #272]
  0x8002d99f8:  b400008e    cbz x14, #16
  0x8002d99fc:  f94652af    ldr x15, [x21, #3232]
  0x8002d9a00:  f9400dce    ldr x14, [x14, #24]
  0x8002d9a04:  cb0e01ee    sub x14, x15, x14
  0x8002d9a08:  f94081ad    ldr x13, [x13, #256]
  0x8002d9a0c:  8b0c01cc    add x12, x14, x12
  0x8002d9a10:  f86d698c    ldr x12, [x12, x13]
  0x8002d9a14:  b4002cac    cbz x12, #1428
  0x8002d9a18:  2a1f03eb    mov w11, wzr
  0x8002d9a1c:  6b0a013f    cmp w9, w10
  0x8002d9a20:  f9405f16    ldr x22, [x24, #184]
  0x8002d9a24:  1a9f8149    csel w9, w10, wzr, hi
  0x8002d9a28:  9b302128    smaddl x8, w9, w16, x8
  0x8002d9a2c:  f94686a9    ldr x9, [x21, #3336]
  0x8002d9a30:  f9400d08    ldr x8, [x8, #24]
  0x8002d9a34:  f9400108    ldr x8, [x8]
  0x8002d9a38:  79410908    ldrh w8, [x8, #132]
  0x8002d9a3c:  8b081537    add x23, x9, x8, lsl #5
  0x8002d9a40:  3700014b    tbnz w11, #0, #40
  0x8002d9a44:  d001b3e8    adrp x8, #57139200
  0x8002d9a48:  aa1603e0    mov x0, x22
  0x8002d9a4c:  f940ad08    ldr x8, [x8, #344]
  0x8002d9a50:  52800021    mov w1, #1
  0x8002d9a54:  aa1703e2    mov x2, x23
  0x8002d9a58:  f9400108    ldr x8, [x8]
  0x8002d9a5c:  d63f0100    blr x8
  0x8002d9a60:  39722aa8    ldrb w8, [x21, #3210]
  0x8002d9a64:  373867e8    tbnz w8, #7, #3324
  0x8002d9a68:  f001b408    adrp x8, #57159680
  0x8002d9a6c:  b0015322    adrp x2, #44453888
  0x8002d9a70:  910bb042    add x2, x2, #748
  0x8002d9a74:  f946a108    ldr x8, [x8, #3392]
  0x8002d9a78:  aa1603e0    mov x0, x22
  0x8002d9a7c:  f9400108    ldr x8, [x8]
  0x8002d9a80:  528000c1    mov w1, #6
  0x8002d9a84:  528001e3    mov w3, #15
  0x8002d9a88:  d63f0100    blr x8
  0x8002d9a8c:  b94c8aa8    ldr w8, [x21, #3208]
  0x8002d9a90:  36a001c8    tbz w8, #20, #56
  0x8002d9a94:  37b80168    tbnz w8, #23, #44
  0x8002d9a98:  397242a8    ldrb w8, [x21, #3216]
  0x8002d9a9c:  7100111f    cmp w8, #4
  0x8002d9aa0:  540066a1    b.ne #3284
  0x8002d9aa4:  b001b3e8    adrp x8, #57135104
  0x8002d9aa8:  aa1603e0    mov x0, x22
  0x8002d9aac:  f9470108    ldr x8, [x8, #3584]
  0x8002d9ab0:  52800201    mov w1, #16
  0x8002d9ab4:  aa1703e2    mov x2, x23
  0x8002d9ab8:  f9400108    ldr x8, [x8]
  0x8002d9abc:  d63f0100    blr x8
  0x8002d9ac0:  39722aa8    ldrb w8, [x21, #3210]
  0x8002d9ac4:  372866e8    tbnz w8, #5, #3292
  0x8002d9ac8:  52800039    mov w25, #1
  0x8002d9acc:  2a1c03f0    mov w16, w28
  0x8002d9ad0:  17fffdd0    b #-2240
  0x8002d9ad4:  36a03f2d    tbz w13, #20, #2020
  0x8002d9ad8:  93407dcc    sxtw x12, w14
  0x8002d9adc:  5280050d    mov w13, #40
  0x8002d9ae0:  9b2d218c    smaddl x12, w12, w13, x8
  0x8002d9ae4:  f94656ad    ldr x13, [x21, #3240]
  0x8002d9ae8:  f9400d8c    ldr x12, [x12, #24]
  0x8002d9aec:  f940018c    ldr x12, [x12]
  0x8002d9af0:  7941098c    ldrh w12, [x12, #132]
  0x8002d9af4:  d37be98c    lsl x12, x12, #5
  0x8002d9af8:  b400402d    cbz x13, #2052
  0x8002d9afc:  f94089ae    ldr x14, [x13, #272]
  0x8002d9b00:  b400008e    cbz x14, #16
  0x8002d9b04:  f94652af    ldr x15, [x21, #3232]
  0x8002d9b08:  f9400dce    ldr x14, [x14, #24]
  0x8002d9b0c:  cb0e01ee    sub x14, x15, x14
  0x8002d9b10:  f94081ad    ldr x13, [x13, #256]
  0x8002d9b14:  8b0c01cc    add x12, x14, x12
  0x8002d9b18:  f86d698c    ldr x12, [x12, x13]
  0x8002d9b1c:  b40021ac    cbz x12, #1076
  0x8002d9b20:  2a1f03eb    mov w11, wzr
  0x8002d9b24:  6b0a013f    cmp w9, w10
  0x8002d9b28:  f9405f16    ldr x22, [x24, #184]
  0x8002d9b2c:  1a9f8149    csel w9, w10, wzr, hi
  0x8002d9b30:  9b302128    smaddl x8, w9, w16, x8
  0x8002d9b34:  f94686a9    ldr x9, [x21, #3336]
  0x8002d9b38:  f9400d08    ldr x8, [x8, #24]
  0x8002d9b3c:  f9400108    ldr x8, [x8]
  0x8002d9b40:  79410908    ldrh w8, [x8, #132]
  0x8002d9b44:  8b081537    add x23, x9, x8, lsl #5
  0x8002d9b48:  3700014b    tbnz w11, #0, #40
  0x8002d9b4c:  d001b3e8    adrp x8, #57139200
  0x8002d9b50:  aa1603e0    mov x0, x22
  0x8002d9b54:  f940ad08    ldr x8, [x8, #344]
  0x8002d9b58:  52800021    mov w1, #1
  0x8002d9b5c:  aa1703e2    mov x2, x23
  0x8002d9b60:  f9400108    ldr x8, [x8]
  0x8002d9b64:  d63f0100    blr x8
  0x8002d9b68:  39722aa8    ldrb w8, [x21, #3210]
  0x8002d9b6c:  37383cc8    tbnz w8, #7, #1944
  0x8002d9b70:  f001b408    adrp x8, #57159680
  0x8002d9b74:  b0015322    adrp x2, #44453888
  0x8002d9b78:  910bb042    add x2, x2, #748
  0x8002d9b7c:  f946a108    ldr x8, [x8, #3392]
  0x8002d9b80:  aa1603e0    mov x0, x22
  0x8002d9b84:  f9400108    ldr x8, [x8]
  0x8002d9b88:  52800021    mov w1, #1
  0x8002d9b8c:  528001e3    mov w3, #15
  0x8002d9b90:  52800033    mov w19, #1
  0x8002d9b94:  d63f0100    blr x8
  0x8002d9b98:  b94c8aa8    ldr w8, [x21, #3208]
  0x8002d9b9c:  36a001c8    tbz w8, #20, #56
  0x8002d9ba0:  37b80168    tbnz w8, #23, #44
  0x8002d9ba4:  397242a8    ldrb w8, [x21, #3216]
  0x8002d9ba8:  7100111f    cmp w8, #4
  0x8002d9bac:  54003b61    b.ne #1900
  0x8002d9bb0:  b001b3e8    adrp x8, #57135104
  0x8002d9bb4:  aa1603e0    mov x0, x22
  0x8002d9bb8:  f9470108    ldr x8, [x8, #3584]
  0x8002d9bbc:  52800201    mov w1, #16
  0x8002d9bc0:  aa1703e2    mov x2, x23
  0x8002d9bc4:  f9400108    ldr x8, [x8]
  0x8002d9bc8:  d63f0100    blr x8
  0x8002d9bcc:  39722aa8    ldrb w8, [x21, #3210]
  0x8002d9bd0:  37283ba8    tbnz w8, #5, #1908
  0x8002d9bd4:  2a1c03f0    mov w16, w28
  0x8002d9bd8:  17fffdad    b #-2380
  0x8002d9bdc:  12800048    mov w8, #-3
  0x8002d9be0:  2a1f03f9    mov w25, wzr
  0x8002d9be4:  885f7d69    ldxr w9, [x11]
  0x8002d9be8:  8a080129    and x9, x9, x8
  0x8002d9bec:  b27f0129    orr x9, x9, #0x2
  0x8002d9bf0:  880a7d69    stxr w10, w9, [x11]
  0x8002d9bf4:  34ffaf6a    cbz w10, #-2580
  0x8002d9bf8:  17fffffb    b #-20
  0x8002d9bfc:  36a040ed    tbz w13, #20, #2076
  0x8002d9c00:  93407dcc    sxtw x12, w14
  0x8002d9c04:  5280050d    mov w13, #40
  0x8002d9c08:  9b2d218c    smaddl x12, w12, w13, x8
  0x8002d9c0c:  f94656ad    ldr x13, [x21, #3240]
  0x8002d9c10:  f9400d8c    ldr x12, [x12, #24]
  0x8002d9c14:  f940018c    ldr x12, [x12]
  0x8002d9c18:  7941098c    ldrh w12, [x12, #132]
  0x8002d9c1c:  d37be98c    lsl x12, x12, #5
  0x8002d9c20:  b40041ed    cbz x13, #2108
  0x8002d9c24:  f94089ae    ldr x14, [x13, #272]
  0x8002d9c28:  b400008e    cbz x14, #16
  0x8002d9c2c:  f94652af    ldr x15, [x21, #3232]
  0x8002d9c30:  f9400dce    ldr x14, [x14, #24]
  0x8002d9c34:  cb0e01ee    sub x14, x15, x14
  0x8002d9c38:  f94081ad    ldr x13, [x13, #256]
  0x8002d9c3c:  8b0c01cc    add x12, x14, x12
  0x8002d9c40:  f86d698c    ldr x12, [x12, x13]
  0x8002d9c44:  b4001a2c    cbz x12, #836
  0x8002d9c48:  2a1f03eb    mov w11, wzr
  0x8002d9c4c:  6b0a013f    cmp w9, w10
  0x8002d9c50:  f9405f16    ldr x22, [x24, #184]
  0x8002d9c54:  1a9f8149    csel w9, w10, wzr, hi
  0x8002d9c58:  9b302128    smaddl x8, w9, w16, x8
  0x8002d9c5c:  f94686a9    ldr x9, [x21, #3336]
  0x8002d9c60:  f9400d08    ldr x8, [x8, #24]
  0x8002d9c64:  f9400108    ldr x8, [x8]
  0x8002d9c68:  79410908    ldrh w8, [x8, #132]
  0x8002d9c6c:  8b081537    add x23, x9, x8, lsl #5
  0x8002d9c70:  3700014b    tbnz w11, #0, #40
  0x8002d9c74:  d001b3e8    adrp x8, #57139200
  0x8002d9c78:  aa1603e0    mov x0, x22
  0x8002d9c7c:  f940ad08    ldr x8, [x8, #344]
  0x8002d9c80:  52800021    mov w1, #1
  0x8002d9c84:  aa1703e2    mov x2, x23
  0x8002d9c88:  f9400108    ldr x8, [x8]
  0x8002d9c8c:  d63f0100    blr x8
  0x8002d9c90:  39722aa8    ldrb w8, [x21, #3210]
  0x8002d9c94:  37383e88    tbnz w8, #7, #2000
  0x8002d9c98:  f001b408    adrp x8, #57159680
  0x8002d9c9c:  b0015322    adrp x2, #44453888
  0x8002d9ca0:  910bb042    add x2, x2, #748
  0x8002d9ca4:  f946a108    ldr x8, [x8, #3392]
  0x8002d9ca8:  aa1603e0    mov x0, x22
  0x8002d9cac:  f9400108    ldr x8, [x8]
  0x8002d9cb0:  52800041    mov w1, #2
  0x8002d9cb4:  528001e3    mov w3, #15
  0x8002d9cb8:  d63f0100    blr x8
  0x8002d9cbc:  b94c8aa8    ldr w8, [x21, #3208]
  0x8002d9cc0:  36a001c8    tbz w8, #20, #56
  0x8002d9cc4:  37b80168    tbnz w8, #23, #44
  0x8002d9cc8:  397242a8    ldrb w8, [x21, #3216]
  0x8002d9ccc:  7100111f    cmp w8, #4
  0x8002d9cd0:  54003d41    b.ne #1960
  0x8002d9cd4:  b001b3e8    adrp x8, #57135104
  0x8002d9cd8:  aa1603e0    mov x0, x22
  0x8002d9cdc:  f9470108    ldr x8, [x8, #3584]
  0x8002d9ce0:  52800201    mov w1, #16
  0x8002d9ce4:  aa1703e2    mov x2, x23
  0x8002d9ce8:  f9400108    ldr x8, [x8]
  0x8002d9cec:  d63f0100    blr x8
  0x8002d9cf0:  39722aa8    ldrb w8, [x21, #3210]
  0x8002d9cf4:  37283d88    tbnz w8, #5, #1968
  0x8002d9cf8:  52800033    mov w19, #1
  0x8002d9cfc:  2a1c03f0    mov w16, w28
  0x8002d9d00:  17fffd75    b #-2604
  0x8002d9d04:  36a0442d    tbz w13, #20, #2180
  0x8002d9d08:  93407dcc    sxtw x12, w14
  0x8002d9d0c:  5280050d    mov w13, #40
  0x8002d9d10:  9b2d218c    smaddl x12, w12, w13, x8
  0x8002d9d14:  f94656ad    ldr x13, [x21, #3240]
  0x8002d9d18:  f9400d8c    ldr x12, [x12, #24]
  0x8002d9d1c:  f940018c    ldr x12, [x12]
  0x8002d9d20:  7941098c    ldrh w12, [x12, #132]
  0x8002d9d24:  d37be98c    lsl x12, x12, #5
  0x8002d9d28:  b400452d    cbz x13, #2212
  0x8002d9d2c:  f94089ae    ldr x14, [x13, #272]
  0x8002d9d30:  b400008e    cbz x14, #16
  0x8002d9d34:  f94652af    ldr x15, [x21, #3232]
  0x8002d9d38:  f9400dce    ldr x14, [x14, #24]
  0x8002d9d3c:  cb0e01ee    sub x14, x15, x14
  0x8002d9d40:  f94081ad    ldr x13, [x13, #256]
  0x8002d9d44:  8b0c01cc    add x12, x14, x12
  0x8002d9d48:  f86d698c    ldr x12, [x12, x13]
  0x8002d9d4c:  b4000f2c    cbz x12, #484
  0x8002d9d50:  2a1f03eb    mov w11, wzr
  0x8002d9d54:  6b0a013f    cmp w9, w10
  0x8002d9d58:  f9405f16    ldr x22, [x24, #184]
  0x8002d9d5c:  1a9f8149    csel w9, w10, wzr, hi
  0x8002d9d60:  9b302128    smaddl x8, w9, w16, x8
  0x8002d9d64:  f94686a9    ldr x9, [x21, #3336]
  0x8002d9d68:  f9400d08    ldr x8, [x8, #24]
  0x8002d9d6c:  f9400108    ldr x8, [x8]
  0x8002d9d70:  79410908    ldrh w8, [x8, #132]
  0x8002d9d74:  8b081537    add x23, x9, x8, lsl #5
  0x8002d9d78:  3700014b    tbnz w11, #0, #40
  0x8002d9d7c:  d001b3e8    adrp x8, #57139200
  0x8002d9d80:  aa1603e0    mov x0, x22
  0x8002d9d84:  f940ad08    ldr x8, [x8, #344]
  0x8002d9d88:  52800021    mov w1, #1
  0x8002d9d8c:  aa1703e2    mov x2, x23
  0x8002d9d90:  f9400108    ldr x8, [x8]
  0x8002d9d94:  d63f0100    blr x8
  0x8002d9d98:  39722aa8    ldrb w8, [x21, #3210]
  0x8002d9d9c:  373841c8    tbnz w8, #7, #2104
  0x8002d9da0:  f001b408    adrp x8, #57159680
  0x8002d9da4:  b0015322    adrp x2, #44453888
  0x8002d9da8:  910bb042    add x2, x2, #748
  0x8002d9dac:  f946a108    ldr x8, [x8, #3392]
  0x8002d9db0:  aa1603e0    mov x0, x22
  0x8002d9db4:  f9400108    ldr x8, [x8]
  0x8002d9db8:  52800081    mov w1, #4
  0x8002d9dbc:  528001e3    mov w3, #15
  0x8002d9dc0:  d63f0100    blr x8
  0x8002d9dc4:  b94c8aa8    ldr w8, [x21, #3208]
  0x8002d9dc8:  36a04108    tbz w8, #20, #2080
  0x8002d9dcc:  37b80168    tbnz w8, #23, #44
  0x8002d9dd0:  397242a8    ldrb w8, [x21, #3216]
  0x8002d9dd4:  7100111f    cmp w8, #4
  0x8002d9dd8:  540040c1    b.ne #2072
  0x8002d9ddc:  b001b3e8    adrp x8, #57135104
  0x8002d9de0:  aa1603e0    mov x0, x22
  0x8002d9de4:  f9470108    ldr x8, [x8, #3584]
  0x8002d9de8:  52800201    mov w1, #16
  0x8002d9dec:  aa1703e2    mov x2, x23
  0x8002d9df0:  f9400108    ldr x8, [x8]
  0x8002d9df4:  d63f0100    blr x8
  0x8002d9df8:  39722aa8    ldrb w8, [x21, #3210]
  0x8002d9dfc:  37284108    tbnz w8, #5, #2080
  0x8002d9e00:  2a1c03f0    mov w16, w28
  0x8002d9e04:  52800033    mov w19, #1
  0x8002d9e08:  17fffd57    b #-2724
  0x8002d9e0c:  36a0424d    tbz w13, #20, #2120
  0x8002d9e10:  93407dcc    sxtw x12, w14
  0x8002d9e14:  5280050d    mov w13, #40
  0x8002d9e18:  9b2d218c    smaddl x12, w12, w13, x8
  0x8002d9e1c:  f94656ad    ldr x13, [x21, #3240]
  0x8002d9e20:  f9400d8c    ldr x12, [x12, #24]
  0x8002d9e24:  f940018c    ldr x12, [x12]
  0x8002d9e28:  7941098c    ldrh w12, [x12, #132]
  0x8002d9e2c:  d37be98c    lsl x12, x12, #5
  0x8002d9e30:  b400434d    cbz x13, #2152
  0x8002d9e34:  f94089ae    ldr x14, [x13, #272]
  0x8002d9e38:  b400008e    cbz x14, #16
  0x8002d9e3c:  f94652af    ldr x15, [x21, #3232]
  0x8002d9e40:  f9400dce    ldr x14, [x14, #24]
  0x8002d9e44:  cb0e01ee    sub x14, x15, x14
  0x8002d9e48:  f94081ad    ldr x13, [x13, #256]
  0x8002d9e4c:  8b0c01cc    add x12, x14, x12
  0x8002d9e50:  f86d698c    ldr x12, [x12, x13]
  0x8002d9e54:  b40008ec    cbz x12, #284
  0x8002d9e58:  2a1f03eb    mov w11, wzr
  0x8002d9e5c:  6b0a013f    cmp w9, w10
  0x8002d9e60:  f9405f16    ldr x22, [x24, #184]
  0x8002d9e64:  1a9f8149    csel w9, w10, wzr, hi
  0x8002d9e68:  9b302128    smaddl x8, w9, w16, x8
  0x8002d9e6c:  f94686a9    ldr x9, [x21, #3336]
  0x8002d9e70:  f9400d08    ldr x8, [x8, #24]
  0x8002d9e74:  f9400108    ldr x8, [x8]
  0x8002d9e78:  79410908    ldrh w8, [x8, #132]
  0x8002d9e7c:  8b081537    add x23, x9, x8, lsl #5
  0x8002d9e80:  3700014b    tbnz w11, #0, #40
  0x8002d9e84:  d001b3e8    adrp x8, #57139200
  0x8002d9e88:  aa1603e0    mov x0, x22
  0x8002d9e8c:  f940ad08    ldr x8, [x8, #344]
  0x8002d9e90:  52800021    mov w1, #1
  0x8002d9e94:  aa1703e2    mov x2, x23
  0x8002d9e98:  f9400108    ldr x8, [x8]
  0x8002d9e9c:  d63f0100    blr x8
  0x8002d9ea0:  39722aa8    ldrb w8, [x21, #3210]
  0x8002d9ea4:  37383fe8    tbnz w8, #7, #2044
  0x8002d9ea8:  f001b408    adrp x8, #57159680
  0x8002d9eac:  b0015322    adrp x2, #44453888
  0x8002d9eb0:  910bb042    add x2, x2, #748
  0x8002d9eb4:  f946a108    ldr x8, [x8, #3392]
  0x8002d9eb8:  aa1603e0    mov x0, x22
  0x8002d9ebc:  f9400108    ldr x8, [x8]
  0x8002d9ec0:  52800061    mov w1, #3
  0x8002d9ec4:  528001e3    mov w3, #15
  0x8002d9ec8:  d63f0100    blr x8
  0x8002d9ecc:  b94c8aa8    ldr w8, [x21, #3208]
  0x8002d9ed0:  36a001c8    tbz w8, #20, #56
  0x8002d9ed4:  37b80168    tbnz w8, #23, #44
  0x8002d9ed8:  397242a8    ldrb w8, [x21, #3216]
  0x8002d9edc:  7100111f    cmp w8, #4
  0x8002d9ee0:  54003ea1    b.ne #2004
  0x8002d9ee4:  b001b3e8    adrp x8, #57135104
  0x8002d9ee8:  aa1603e0    mov x0, x22
  0x8002d9eec:  f9470108    ldr x8, [x8, #3584]
  0x8002d9ef0:  52800201    mov w1, #16
  0x8002d9ef4:  aa1703e2    mov x2, x23
  0x8002d9ef8:  f9400108    ldr x8, [x8]
  0x8002d9efc:  d63f0100    blr x8
  0x8002d9f00:  39722aa8    ldrb w8, [x21, #3210]
  0x8002d9f04:  37283ee8    tbnz w8, #5, #2012
  0x8002d9f08:  52800033    mov w19, #1
  0x8002d9f0c:  2a1c03f0    mov w16, w28
  0x8002d9f10:  17fffd03    b #-3060
  0x8002d9f14:  12800048    mov w8, #-3
  0x8002d9f18:  885f7d69    ldxr w9, [x11]
  0x8002d9f1c:  8a080129    and x9, x9, x8
  0x8002d9f20:  b27f0129    orr x9, x9, #0x2
  0x8002d9f24:  880a7d69    stxr w10, w9, [x11]
  0x8002d9f28:  34ff970a    cbz w10, #-3360
  0x8002d9f2c:  17fffffb    b #-20
  0x8002d9f30:  12800048    mov w8, #-3
  0x8002d9f34:  2a1f03f3    mov w19, wzr
  0x8002d9f38:  885f7d69    ldxr w9, [x11]
  0x8002d9f3c:  8a080129    and x9, x9, x8
  0x8002d9f40:  b27f0129    orr x9, x9, #0x2
  0x8002d9f44:  880a7d69    stxr w10, w9, [x11]
  0x8002d9f48:  34ffa0ea    cbz w10, #-3044
  0x8002d9f4c:  17fffffb    b #-20
  0x8002d9f50:  12800048    mov w8, #-3
  0x8002d9f54:  2a1f03f3    mov w19, wzr
  0x8002d9f58:  885f7d69    ldxr w9, [x11]
  0x8002d9f5c:  8a080129    and x9, x9, x8
  0x8002d9f60:  b27f0129    orr x9, x9, #0x2
  0x8002d9f64:  880a7d69    stxr w10, w9, [x11]
  0x8002d9f68:  34ff992a    cbz w10, #-3292
  0x8002d9f6c:  17fffffb    b #-20
  0x8002d9f70:  2a1f03f3    mov w19, wzr
  0x8002d9f74:  885f7d68    ldxr w8, [x11]
  0x8002d9f78:  b27f0108    orr x8, x8, #0x2
  0x8002d9f7c:  88097d68    stxr w9, w8, [x11]
  0x8002d9f80:  34ff9ce9    cbz w9, #-3172
  0x8002d9f84:  17fffffc    b #-16
  0x8002d9f88:  2a1f03f3    mov w19, wzr
  0x8002d9f8c:  885f7d68    ldxr w8, [x11]
  0x8002d9f90:  b27f0108    orr x8, x8, #0x2
  0x8002d9f94:  88097d68    stxr w9, w8, [x11]
  0x8002d9f98:  34ff99e9    cbz w9, #-3268
  0x8002d9f9c:  17fffffc    b #-16
  0x8002d9fa0:  2a1f03e9    mov w9, wzr
  0x8002d9fa4:  17fffdb1    b #-2364
  0x8002d9fa8:  885f7d68    ldxr w8, [x11]
  0x8002d9fac:  b27f0108    orr x8, x8, #0x2
  0x8002d9fb0:  88097d68    stxr w9, w8, [x11]
  0x8002d9fb4:  35ffffa9    cbnz w9, #-12
  0x8002d9fb8:  f94007f8    ldr x24, [sp, #8]
  0x8002d9fbc:  17fffec4    b #-1264
  0x8002d9fc0:  885f7d68    ldxr w8, [x11]
  0x8002d9fc4:  b27f0108    orr x8, x8, #0x2
  0x8002d9fc8:  88097d68    stxr w9, w8, [x11]
  0x8002d9fcc:  34ffafe9    cbz w9, #-2564
  0x8002d9fd0:  17fffffc    b #-16
  0x8002d9fd4:  885f7e7f    ldxr wzr, [x19]
  0x8002d9fd8:  88087e7f    stxr w8, wzr, [x19]
  0x8002d9fdc:  35ffffc8    cbnz w8, #-8
  0x8002d9fe0:  17fffd45    b #-2796
  0x8002d9fe4:  f94003e0    ldr x0, [sp]
  0x8002d9fe8:  97fd0531    bl #-781116
  0x8002d9fec:  b9400268    ldr w8, [x19]
  0x8002d9ff0:  37ffffa8    tbnz w8, #31, #-12
  0x8002d9ff4:  f94007f8    ldr x24, [sp, #8]
  0x8002d9ff8:  885ffe7f    ldaxr wzr, [x19]
  0x8002d9ffc:  88087e7f    stxr w8, wzr, [x19]
  0x8002da000:  35ffffc8    cbnz w8, #-8
  0x8002da004:  17fffd3c    b #-2832
  0x8002da008:  aa0d03f3    mov x19, x13
  0x8002da00c:  aa1a03f4    mov x20, x26
  0x8002da010:  aa0c03fa    mov x26, x12
  0x8002da014:  b94002c8    ldr w8, [x22]
  0x8002da018:  36f80108    tbz w8, #31, #32
  0x8002da01c:  f94003e0    ldr x0, [sp]
  0x8002da020:  97fd0523    bl #-781172
  0x8002da024:  17fffffc    b #-16
  0x8002da028:  aa1703e0    mov x0, x23
  0x8002da02c:  aa0c03fa    mov x26, x12
  0x8002da030:  d63f0100    blr x8
  0x8002da034:  17fffc40    b #-3840
  0x8002da038:  aa1a03ec    mov x12, x26
  0x8002da03c:  aa1403fa    mov x26, x20
  0x8002da040:  aa1803f4    mov x20, x24
  0x8002da044:  aa1303ed    mov x13, x19
  0x8002da048:  d10123ae    sub x14, x29, #72
  0x8002da04c:  910043ef    add x15, sp, #16
  0x8002da050:  885ffedf    ldaxr wzr, [x22]
  0x8002da054:  88087edf    stxr w8, wzr, [x22]
  0x8002da058:  35ffffc8    cbnz w8, #-8
  0x8002da05c:  17fffbfd    b #-4108
  0x8002da060:  12800048    mov w8, #-3
  0x8002da064:  885f7d69    ldxr w9, [x11]
  0x8002da068:  8a080129    and x9, x9, x8
  0x8002da06c:  b27f0129    orr x9, x9, #0x2
  0x8002da070:  880a7d69    stxr w10, w9, [x11]
  0x8002da074:  35ffff8a    cbnz w10, #-16
  0x8002da078:  b9407189    ldr w9, [x12, #112]
  0x8002da07c:  2a1c03f0    mov w16, w28
  0x8002da080:  795556ab    ldrh w11, [x21, #2730]
  0x8002da084:  4b0b0129    sub w9, w9, w11
  0x8002da088:  39722aab    ldrb w11, [x21, #3210]
  0x8002da08c:  b94a3aaa    ldr w10, [x21, #2616]
  0x8002da090:  f94522a8    ldr x8, [x21, #2624]
  0x8002da094:  721c017f    tst w11, #0x10
  0x8002da098:  f94007f8    ldr x24, [sp, #8]
  0x8002da09c:  1a9f17eb    cset w11, eq
  0x8002da0a0:  17fffd70    b #-2624
  0x8002da0a4:  aa1f03ee    mov x14, xzr
  0x8002da0a8:  17fffd6a    b #-2648
  0x8002da0ac:  aa1503e0    mov x0, x21
  0x8002da0b0:  aa1603e1    mov x1, x22
  0x8002da0b4:  aa1703e2    mov x2, x23
  0x8002da0b8:  9493d4b7    bl #38752988
  0x8002da0bc:  17fffd7c    b #-2576
  0x8002da0c0:  52800039    mov w25, #1
  0x8002da0c4:  17fffde8    b #-2144
  0x8002da0c8:  71000d1f    cmp w8, #3
  0x8002da0cc:  54000281    b.ne #80
  0x8002da0d0:  9001b3e8    adrp x8, #57131008
  0x8002da0d4:  f9470108    ldr x8, [x8, #3584]
  0x8002da0d8:  f9400108    ldr x8, [x8]
  0x8002da0dc:  aa1603e0    mov x0, x22
  0x8002da0e0:  2a1f03e1    mov w1, wzr
  0x8002da0e4:  aa1703e2    mov x2, x23
  0x8002da0e8:  d63f0100    blr x8
  0x8002da0ec:  f94007f8    ldr x24, [sp, #8]
  0x8002da0f0:  17fffd85    b #-2540
  0x8002da0f4:  b001b3e8    adrp x8, #57135104
  0x8002da0f8:  aa1603e0    mov x0, x22
  0x8002da0fc:  f940b108    ldr x8, [x8, #352]
  0x8002da100:  52800021    mov w1, #1
  0x8002da104:  52800039    mov w25, #1
  0x8002da108:  f9400108    ldr x8, [x8]
  0x8002da10c:  d63f0100    blr x8
  0x8002da110:  17fffdd5    b #-2220
  0x8002da114:  2a1f03ee    mov w14, wzr
  0x8002da118:  17fffca0    b #-3456
  0x8002da11c:  7100091f    cmp w8, #2
  0x8002da120:  540000e1    b.ne #28
  0x8002da124:  d001b408    adrp x8, #57155584
  0x8002da128:  f946ed08    ldr x8, [x8, #3544]
  0x8002da12c:  17ffffeb    b #-84
  0x8002da130:  aa1703e0    mov x0, x23
  0x8002da134:  d63f0100    blr x8
  0x8002da138:  17fffd12    b #-3000
  0x8002da13c:  f94007f8    ldr x24, [sp, #8]
  0x8002da140:  7100051f    cmp w8, #1
  0x8002da144:  54ffae01    b.ne #-2624
  0x8002da148:  d001b408    adrp x8, #57155584
  0x8002da14c:  aa1603e0    mov x0, x22
  0x8002da150:  f9413508    ldr x8, [x8, #616]
  0x8002da154:  aa1703e1    mov x1, x23
  0x8002da158:  52800082    mov w2, #4
  0x8002da15c:  f9400108    ldr x8, [x8]
  0x8002da160:  2a1f03e3    mov w3, wzr
  0x8002da164:  d63f0100    blr x8
  0x8002da168:  17fffd67    b #-2660
  0x8002da16c:  12800048    mov w8, #-3
  0x8002da170:  885f7d69    ldxr w9, [x11]
  0x8002da174:  8a080129    and x9, x9, x8
  0x8002da178:  b27f0129    orr x9, x9, #0x2
  0x8002da17c:  880a7d69    stxr w10, w9, [x11]
  0x8002da180:  35ffff8a    cbnz w10, #-16
  0x8002da184:  b9407189    ldr w9, [x12, #112]
  0x8002da188:  2a1c03f0    mov w16, w28
  0x8002da18c:  795556ab    ldrh w11, [x21, #2730]
  0x8002da190:  4b0b0129    sub w9, w9, w11
  0x8002da194:  39722aab    ldrb w11, [x21, #3210]
  0x8002da198:  b94a3aaa    ldr w10, [x21, #2616]
  0x8002da19c:  f94522a8    ldr x8, [x21, #2624]
  0x8002da1a0:  721c017f    tst w11, #0x10
  0x8002da1a4:  f94007f8    ldr x24, [sp, #8]
  0x8002da1a8:  1a9f17eb    cset w11, eq
  0x8002da1ac:  17fffc94    b #-3504
  0x8002da1b0:  aa1f03ee    mov x14, xzr
  0x8002da1b4:  17fffc8e    b #-3528
  0x8002da1b8:  aa1503e0    mov x0, x21
  0x8002da1bc:  aa1603e1    mov x1, x22
  0x8002da1c0:  aa1703e2    mov x2, x23
  0x8002da1c4:  9493d474    bl #38752720
  0x8002da1c8:  17fffca0    b #-3456
  0x8002da1cc:  71000d1f    cmp w8, #3
  0x8002da1d0:  540006a1    b.ne #212
  0x8002da1d4:  9001b3e8    adrp x8, #57131008
  0x8002da1d8:  f9470108    ldr x8, [x8, #3584]
  0x8002da1dc:  f9400108    ldr x8, [x8]
  0x8002da1e0:  aa1603e0    mov x0, x22
  0x8002da1e4:  2a1f03e1    mov w1, wzr
  0x8002da1e8:  aa1703e2    mov x2, x23
  0x8002da1ec:  d63f0100    blr x8
  0x8002da1f0:  f94007f8    ldr x24, [sp, #8]
  0x8002da1f4:  17fffcab    b #-3412
  0x8002da1f8:  b001b3e8    adrp x8, #57135104
  0x8002da1fc:  aa1603e0    mov x0, x22
  0x8002da200:  f940b108    ldr x8, [x8, #352]
  0x8002da204:  52800021    mov w1, #1
  0x8002da208:  52800039    mov w25, #1
  0x8002da20c:  f9400108    ldr x8, [x8]
  0x8002da210:  d63f0100    blr x8
  0x8002da214:  17fffca6    b #-3432
  0x8002da218:  12800048    mov w8, #-3
  0x8002da21c:  885f7d69    ldxr w9, [x11]
  0x8002da220:  8a080129    and x9, x9, x8
  0x8002da224:  b27f0129    orr x9, x9, #0x2
  0x8002da228:  880a7d69    stxr w10, w9, [x11]
  0x8002da22c:  35ffff8a    cbnz w10, #-16
  0x8002da230:  b94072ea    ldr w10, [x23, #112]
  0x8002da234:  2a1c03f0    mov w16, w28
  0x8002da238:  795556ab    ldrh w11, [x21, #2730]
  0x8002da23c:  4b0b014a    sub w10, w10, w11
  0x8002da240:  39722aab    ldrb w11, [x21, #3210]
  0x8002da244:  b94a3aa9    ldr w9, [x21, #2616]
  0x8002da248:  f94522a8    ldr x8, [x21, #2624]
  0x8002da24c:  721c017f    tst w11, #0x10
  0x8002da250:  f94007f8    ldr x24, [sp, #8]
  0x8002da254:  1a9f17eb    cset w11, eq
  0x8002da258:  17fffd99    b #-2460
  0x8002da25c:  aa1f03ee    mov x14, xzr
  0x8002da260:  17fffd93    b #-2484
  0x8002da264:  aa1503e0    mov x0, x21
  0x8002da268:  aa1403e1    mov x1, x20
  0x8002da26c:  aa1603e2    mov x2, x22
  0x8002da270:  9493d449    bl #38752548
  0x8002da274:  17fffda5    b #-2412
  0x8002da278:  71000d1f    cmp w8, #3
  0x8002da27c:  54000721    b.ne #228
  0x8002da280:  9001b3e8    adrp x8, #57131008
  0x8002da284:  f9470108    ldr x8, [x8, #3584]
  0x8002da288:  f9400108    ldr x8, [x8]
  0x8002da28c:  aa1403e0    mov x0, x20
  0x8002da290:  2a1f03e1    mov w1, wzr
  0x8002da294:  aa1603e2    mov x2, x22
  0x8002da298:  d63f0100    blr x8
  0x8002da29c:  f94007f8    ldr x24, [sp, #8]
  0x8002da2a0:  17fffdb4    b #-2352
  0x8002da2a4:  7100091f    cmp w8, #2
  0x8002da2a8:  54000661    b.ne #204
  0x8002da2ac:  d001b408    adrp x8, #57155584
  0x8002da2b0:  f946ed08    ldr x8, [x8, #3544]
  0x8002da2b4:  17ffffca    b #-216
  0x8002da2b8:  12800048    mov w8, #-3
  0x8002da2bc:  885f7d69    ldxr w9, [x11]
  0x8002da2c0:  8a080129    and x9, x9, x8
  0x8002da2c4:  b27f0129    orr x9, x9, #0x2
  0x8002da2c8:  880a7d69    stxr w10, w9, [x11]
  0x8002da2cc:  35ffff8a    cbnz w10, #-16
  0x8002da2d0:  b940718a    ldr w10, [x12, #112]
  0x8002da2d4:  2a1c03f0    mov w16, w28
  0x8002da2d8:  795556ab    ldrh w11, [x21, #2730]
  0x8002da2dc:  4b0b014a    sub w10, w10, w11
  0x8002da2e0:  39722aab    ldrb w11, [x21, #3210]
  0x8002da2e4:  b94a3aa9    ldr w9, [x21, #2616]
  0x8002da2e8:  f94522a8    ldr x8, [x21, #2624]
  0x8002da2ec:  721c017f    tst w11, #0x10
  0x8002da2f0:  f94007f8    ldr x24, [sp, #8]
  0x8002da2f4:  1a9f17eb    cset w11, eq
  0x8002da2f8:  17fffe0b    b #-2004
  0x8002da2fc:  aa1f03ee    mov x14, xzr
  0x8002da300:  17fffe05    b #-2028
  0x8002da304:  aa1503e0    mov x0, x21
  0x8002da308:  aa1603e1    mov x1, x22
  0x8002da30c:  aa1703e2    mov x2, x23
  0x8002da310:  9493d421    bl #38752388
  0x8002da314:  17fffe17    b #-1956
  0x8002da318:  71000d1f    cmp w8, #3
  0x8002da31c:  54000441    b.ne #136
  0x8002da320:  9001b3e8    adrp x8, #57131008
  0x8002da324:  f9470108    ldr x8, [x8, #3584]
  0x8002da328:  f9400108    ldr x8, [x8]
  0x8002da32c:  aa1603e0    mov x0, x22
  0x8002da330:  2a1f03e1    mov w1, wzr
  0x8002da334:  aa1703e2    mov x2, x23
  0x8002da338:  d63f0100    blr x8
  0x8002da33c:  f94007f8    ldr x24, [sp, #8]
  0x8002da340:  17fffe23    b #-1908
  0x8002da344:  b001b3e8    adrp x8, #57135104
  0x8002da348:  aa1603e0    mov x0, x22
  0x8002da34c:  f940b108    ldr x8, [x8, #352]
  0x8002da350:  52800021    mov w1, #1
  0x8002da354:  f9400108    ldr x8, [x8]
  0x8002da358:  d63f0100    blr x8
  0x8002da35c:  17fffe1e    b #-1928
  0x8002da360:  7100091f    cmp w8, #2
  0x8002da364:  540002a1    b.ne #84
  0x8002da368:  d001b408    adrp x8, #57155584
  0x8002da36c:  f946ed08    ldr x8, [x8, #3544]
  0x8002da370:  17ffffc6    b #-232
  0x8002da374:  f94007f8    ldr x24, [sp, #8]
  0x8002da378:  7100051f    cmp w8, #1
  0x8002da37c:  54ff8921    b.ne #-3804
  0x8002da380:  d001b408    adrp x8, #57155584
  0x8002da384:  aa1603e0    mov x0, x22
  0x8002da388:  f9413508    ldr x8, [x8, #616]
  0x8002da38c:  aa1703e1    mov x1, x23
  0x8002da390:  52800082    mov w2, #4
  0x8002da394:  f9400108    ldr x8, [x8]
  0x8002da398:  2a1f03e3    mov w3, wzr
  0x8002da39c:  d63f0100    blr x8
  0x8002da3a0:  17fffc40    b #-3840
  0x8002da3a4:  7100091f    cmp w8, #2
  0x8002da3a8:  54000201    b.ne #64
  0x8002da3ac:  d001b408    adrp x8, #57155584
  0x8002da3b0:  f946ed08    ldr x8, [x8, #3544]
  0x8002da3b4:  17ffffdd    b #-140
  0x8002da3b8:  f94007f8    ldr x24, [sp, #8]
  0x8002da3bc:  7100051f    cmp w8, #1
  0x8002da3c0:  54ffad81    b.ne #-2640
  0x8002da3c4:  d001b408    adrp x8, #57155584
  0x8002da3c8:  aa1403e0    mov x0, x20
  0x8002da3cc:  f9413508    ldr x8, [x8, #616]
  0x8002da3d0:  aa1603e1    mov x1, x22
  0x8002da3d4:  52800082    mov w2, #4
  0x8002da3d8:  f9400108    ldr x8, [x8]
  0x8002da3dc:  2a1f03e3    mov w3, wzr
  0x8002da3e0:  d63f0100    blr x8
  0x8002da3e4:  17fffd63    b #-2676
  0x8002da3e8:  f94007f8    ldr x24, [sp, #8]
  0x8002da3ec:  7100051f    cmp w8, #1
  0x8002da3f0:  54ffbee1    b.ne #-2084
  0x8002da3f4:  d001b408    adrp x8, #57155584
  0x8002da3f8:  aa1603e0    mov x0, x22
  0x8002da3fc:  f9413508    ldr x8, [x8, #616]
  0x8002da400:  aa1703e1    mov x1, x23
  0x8002da404:  52800082    mov w2, #4
  0x8002da408:  f9400108    ldr x8, [x8]
  0x8002da40c:  2a1f03e3    mov w3, wzr
  0x8002da410:  d63f0100    blr x8
  0x8002da414:  17fffdee    b #-2120
  0x8002da418:  12800048    mov w8, #-3
  0x8002da41c:  885f7d69    ldxr w9, [x11]
  0x8002da420:  8a080129    and x9, x9, x8
  0x8002da424:  b27f0129    orr x9, x9, #0x2
  0x8002da428:  880a7d69    stxr w10, w9, [x11]
  0x8002da42c:  35ffff8a    cbnz w10, #-16
  0x8002da430:  b940718a    ldr w10, [x12, #112]
  0x8002da434:  2a1c03f0    mov w16, w28
  0x8002da438:  795556ab    ldrh w11, [x21, #2730]
  0x8002da43c:  4b0b014a    sub w10, w10, w11
  0x8002da440:  39722aab    ldrb w11, [x21, #3210]
  0x8002da444:  b94a3aa9    ldr w9, [x21, #2616]
  0x8002da448:  f94522a8    ldr x8, [x21, #2624]
  0x8002da44c:  721c017f    tst w11, #0x10
  0x8002da450:  f94007f8    ldr x24, [sp, #8]
  0x8002da454:  1a9f17eb    cset w11, eq
  0x8002da458:  17fffdfd    b #-2060
  0x8002da45c:  aa1f03ee    mov x14, xzr
  0x8002da460:  17fffdf7    b #-2084
  0x8002da464:  aa1503e0    mov x0, x21
  0x8002da468:  aa1603e1    mov x1, x22
  0x8002da46c:  aa1703e2    mov x2, x23
  0x8002da470:  9493d3c9    bl #38752036
  0x8002da474:  17fffe09    b #-2012
  0x8002da478:  71000d1f    cmp w8, #3
  0x8002da47c:  54000e21    b.ne #452
  0x8002da480:  9001b3e8    adrp x8, #57131008
  0x8002da484:  f9470108    ldr x8, [x8, #3584]
  0x8002da488:  f9400108    ldr x8, [x8]
  0x8002da48c:  aa1603e0    mov x0, x22
  0x8002da490:  2a1f03e1    mov w1, wzr
  0x8002da494:  aa1703e2    mov x2, x23
  0x8002da498:  d63f0100    blr x8
  0x8002da49c:  f94007f8    ldr x24, [sp, #8]
  0x8002da4a0:  17fffe14    b #-1968
  0x8002da4a4:  b001b3e8    adrp x8, #57135104
  0x8002da4a8:  aa1603e0    mov x0, x22
  0x8002da4ac:  f940b108    ldr x8, [x8, #352]
  0x8002da4b0:  52800021    mov w1, #1
  0x8002da4b4:  52800033    mov w19, #1
  0x8002da4b8:  f9400108    ldr x8, [x8]
  0x8002da4bc:  d63f0100    blr x8
  0x8002da4c0:  17fffe0f    b #-1988
  0x8002da4c4:  12800048    mov w8, #-3
  0x8002da4c8:  885f7d69    ldxr w9, [x11]
  0x8002da4cc:  8a080129    and x9, x9, x8
  0x8002da4d0:  b27f0129    orr x9, x9, #0x2
  0x8002da4d4:  880a7d69    stxr w10, w9, [x11]
  0x8002da4d8:  35ffff8a    cbnz w10, #-16
  0x8002da4dc:  b940718a    ldr w10, [x12, #112]
  0x8002da4e0:  2a1c03f0    mov w16, w28
  0x8002da4e4:  795556ab    ldrh w11, [x21, #2730]
  0x8002da4e8:  4b0b014a    sub w10, w10, w11
  0x8002da4ec:  39722aab    ldrb w11, [x21, #3210]
  0x8002da4f0:  b94a3aa9    ldr w9, [x21, #2616]
  0x8002da4f4:  f94522a8    ldr x8, [x21, #2624]
  0x8002da4f8:  721c017f    tst w11, #0x10
  0x8002da4fc:  f94007f8    ldr x24, [sp, #8]
  0x8002da500:  1a9f17eb    cset w11, eq
  0x8002da504:  17fffca9    b #-3420
  0x8002da508:  aa1f03ee    mov x14, xzr
  0x8002da50c:  17fffca3    b #-3444
  0x8002da510:  885f7d68    ldxr w8, [x11]
  0x8002da514:  b27f0108    orr x8, x8, #0x2
  0x8002da518:  88097d68    stxr w9, w8, [x11]
  0x8002da51c:  35ffffa9    cbnz w9, #-12
  0x8002da520:  f94007f8    ldr x24, [sp, #8]
  0x8002da524:  17fffccd    b #-3276
  0x8002da528:  aa1503e0    mov x0, x21
  0x8002da52c:  aa1603e1    mov x1, x22
  0x8002da530:  aa1703e2    mov x2, x23
  0x8002da534:  9493d398    bl #38751840
  0x8002da538:  17fffcaf    b #-3396
  0x8002da53c:  71000d1f    cmp w8, #3
  0x8002da540:  54000e01    b.ne #448
  0x8002da544:  9001b3e8    adrp x8, #57131008
  0x8002da548:  f9470108    ldr x8, [x8, #3584]
  0x8002da54c:  f9400108    ldr x8, [x8]
  0x8002da550:  aa1603e0    mov x0, x22
  0x8002da554:  2a1f03e1    mov w1, wzr
  0x8002da558:  aa1703e2    mov x2, x23
  0x8002da55c:  d63f0100    blr x8
  0x8002da560:  f94007f8    ldr x24, [sp, #8]
  0x8002da564:  17fffcba    b #-3352
  0x8002da568:  b001b3e8    adrp x8, #57135104
  0x8002da56c:  aa1603e0    mov x0, x22
  0x8002da570:  f940b108    ldr x8, [x8, #352]
  0x8002da574:  52800021    mov w1, #1
  0x8002da578:  52800039    mov w25, #1
  0x8002da57c:  f9400108    ldr x8, [x8]
  0x8002da580:  d63f0100    blr x8
  0x8002da584:  17fffcb5    b #-3372
  0x8002da588:  12800048    mov w8, #-3
  0x8002da58c:  885f7d69    ldxr w9, [x11]
  0x8002da590:  8a080129    and x9, x9, x8
  0x8002da594:  b27f0129    orr x9, x9, #0x2
  0x8002da598:  880a7d69    stxr w10, w9, [x11]
  0x8002da59c:  35ffff8a    cbnz w10, #-16
  0x8002da5a0:  b940718a    ldr w10, [x12, #112]
  0x8002da5a4:  2a1c03f0    mov w16, w28
  0x8002da5a8:  795556ab    ldrh w11, [x21, #2730]
  0x8002da5ac:  4b0b014a    sub w10, w10, w11
  0x8002da5b0:  39722aab    ldrb w11, [x21, #3210]
  0x8002da5b4:  b94a3aa9    ldr w9, [x21, #2616]
  0x8002da5b8:  f94522a8    ldr x8, [x21, #2624]
  0x8002da5bc:  721c017f    tst w11, #0x10
  0x8002da5c0:  f94007f8    ldr x24, [sp, #8]
  0x8002da5c4:  1a9f17eb    cset w11, eq
  0x8002da5c8:  17fffde3    b #-2164
  0x8002da5cc:  aa1f03ee    mov x14, xzr
  0x8002da5d0:  17fffddd    b #-2188
  0x8002da5d4:  aa1503e0    mov x0, x21
  0x8002da5d8:  aa1603e1    mov x1, x22
  0x8002da5dc:  aa1703e2    mov x2, x23
  0x8002da5e0:  9493d36d    bl #38751668
  0x8002da5e4:  17fffdef    b #-2116
  0x8002da5e8:  52800033    mov w19, #1
  0x8002da5ec:  14000013    b #76
  0x8002da5f0:  71000d1f    cmp w8, #3
  0x8002da5f4:  54000e61    b.ne #460
  0x8002da5f8:  9001b3e8    adrp x8, #57131008
  0x8002da5fc:  f9470108    ldr x8, [x8, #3584]
  0x8002da600:  f9400108    ldr x8, [x8]
  0x8002da604:  aa1603e0    mov x0, x22
  0x8002da608:  2a1f03e1    mov w1, wzr
  0x8002da60c:  aa1703e2    mov x2, x23
  0x8002da610:  d63f0100    blr x8
  0x8002da614:  f94007f8    ldr x24, [sp, #8]
  0x8002da618:  17fffdf8    b #-2080
  0x8002da61c:  b001b3e8    adrp x8, #57135104
  0x8002da620:  aa1603e0    mov x0, x22
  0x8002da624:  f940b108    ldr x8, [x8, #352]
  0x8002da628:  52800021    mov w1, #1
  0x8002da62c:  52800033    mov w19, #1
  0x8002da630:  f9400108    ldr x8, [x8]
  0x8002da634:  d63f0100    blr x8
  0x8002da638:  2a1c03f0    mov w16, w28
  0x8002da63c:  17fffb4a    b #-4824
  0x8002da640:  7100091f    cmp w8, #2
  0x8002da644:  54000c81    b.ne #400
  0x8002da648:  d001b408    adrp x8, #57155584
  0x8002da64c:  f946ed08    ldr x8, [x8, #3544]
  0x8002da650:  17ffff8e    b #-456
  0x8002da654:  12800048    mov w8, #-3
  0x8002da658:  885f7d69    ldxr w9, [x11]
  0x8002da65c:  8a080129    and x9, x9, x8
  0x8002da660:  b27f0129    orr x9, x9, #0x2
  0x8002da664:  880a7d69    stxr w10, w9, [x11]
  0x8002da668:  35ffff8a    cbnz w10, #-16
  0x8002da66c:  b940718a    ldr w10, [x12, #112]
  0x8002da670:  2a1c03f0    mov w16, w28
  0x8002da674:  795556ab    ldrh w11, [x21, #2730]
  0x8002da678:  4b0b014a    sub w10, w10, w11
  0x8002da67c:  39722aab    ldrb w11, [x21, #3210]
  0x8002da680:  b94a3aa9    ldr w9, [x21, #2616]
  0x8002da684:  f94522a8    ldr x8, [x21, #2624]
  0x8002da688:  721c017f    tst w11, #0x10
  0x8002da68c:  f94007f8    ldr x24, [sp, #8]
  0x8002da690:  1a9f17eb    cset w11, eq
  0x8002da694:  17fffdf2    b #-2104
  0x8002da698:  aa1f03ee    mov x14, xzr
  0x8002da69c:  17fffdec    b #-2128
  0x8002da6a0:  aa1503e0    mov x0, x21
  0x8002da6a4:  aa1603e1    mov x1, x22
  0x8002da6a8:  aa1703e2    mov x2, x23
  0x8002da6ac:  9493d33a    bl #38751464
  0x8002da6b0:  17fffdfe    b #-2056
  0x8002da6b4:  71000d1f    cmp w8, #3
  0x8002da6b8:  54000a61    b.ne #332
  0x8002da6bc:  9001b3e8    adrp x8, #57131008
  0x8002da6c0:  f9470108    ldr x8, [x8, #3584]
  0x8002da6c4:  f9400108    ldr x8, [x8]
  0x8002da6c8:  aa1603e0    mov x0, x22
  0x8002da6cc:  2a1f03e1    mov w1, wzr
  0x8002da6d0:  aa1703e2    mov x2, x23
  0x8002da6d4:  d63f0100    blr x8
  0x8002da6d8:  f94007f8    ldr x24, [sp, #8]
  0x8002da6dc:  17fffe09    b #-2012
  0x8002da6e0:  b001b3e8    adrp x8, #57135104
  0x8002da6e4:  aa1603e0    mov x0, x22
  0x8002da6e8:  f940b108    ldr x8, [x8, #352]
  0x8002da6ec:  52800021    mov w1, #1
  0x8002da6f0:  52800033    mov w19, #1
  0x8002da6f4:  f9400108    ldr x8, [x8]
  0x8002da6f8:  d63f0100    blr x8
  0x8002da6fc:  17fffe04    b #-2032
  0x8002da700:  7100091f    cmp w8, #2
  0x8002da704:  540008a1    b.ne #276
  0x8002da708:  d001b408    adrp x8, #57155584
  0x8002da70c:  f946ed08    ldr x8, [x8, #3544]
  0x8002da710:  17ffff8f    b #-452
  0x8002da714:  12800048    mov w8, #-3
  0x8002da718:  885f7d69    ldxr w9, [x11]
  0x8002da71c:  8a080129    and x9, x9, x8
  0x8002da720:  b27f0129    orr x9, x9, #0x2
  0x8002da724:  880a7d69    stxr w10, w9, [x11]
  0x8002da728:  35ffff8a    cbnz w10, #-16
  0x8002da72c:  b940718a    ldr w10, [x12, #112]
  0x8002da730:  2a1c03f0    mov w16, w28
  0x8002da734:  795556ab    ldrh w11, [x21, #2730]
  0x8002da738:  4b0b014a    sub w10, w10, w11
  0x8002da73c:  39722aab    ldrb w11, [x21, #3210]
  0x8002da740:  b94a3aa9    ldr w9, [x21, #2616]
  0x8002da744:  f94522a8    ldr x8, [x21, #2624]
  0x8002da748:  721c017f    tst w11, #0x10
  0x8002da74c:  f94007f8    ldr x24, [sp, #8]
  0x8002da750:  1a9f17eb    cset w11, eq
  0x8002da754:  17fffcb2    b #-3384
  0x8002da758:  aa1f03ee    mov x14, xzr
  0x8002da75c:  17fffcac    b #-3408
  0x8002da760:  aa1503e0    mov x0, x21
  0x8002da764:  aa1603e1    mov x1, x22
  0x8002da768:  aa1703e2    mov x2, x23
  0x8002da76c:  9493d30a    bl #38751272
  0x8002da770:  17fffcbe    b #-3336
  0x8002da774:  71000d1f    cmp w8, #3
  0x8002da778:  54000681    b.ne #208
  0x8002da77c:  9001b3e8    adrp x8, #57131008
  0x8002da780:  f9470108    ldr x8, [x8, #3584]
  0x8002da784:  f9400108    ldr x8, [x8]
  0x8002da788:  aa1603e0    mov x0, x22
  0x8002da78c:  2a1f03e1    mov w1, wzr
  0x8002da790:  aa1703e2    mov x2, x23
  0x8002da794:  d63f0100    blr x8
  0x8002da798:  f94007f8    ldr x24, [sp, #8]
  0x8002da79c:  17fffcc9    b #-3292
  0x8002da7a0:  b001b3e8    adrp x8, #57135104
  0x8002da7a4:  aa1603e0    mov x0, x22
  0x8002da7a8:  f940b108    ldr x8, [x8, #352]
  0x8002da7ac:  52800021    mov w1, #1
  0x8002da7b0:  52800039    mov w25, #1
  0x8002da7b4:  f9400108    ldr x8, [x8]
  0x8002da7b8:  d63f0100    blr x8
  0x8002da7bc:  17fffcc4    b #-3312
  0x8002da7c0:  7100091f    cmp w8, #2
  0x8002da7c4:  540004c1    b.ne #152
  0x8002da7c8:  d001b408    adrp x8, #57155584
  0x8002da7cc:  f946ed08    ldr x8, [x8, #3544]
  0x8002da7d0:  17ffff8c    b #-464
  0x8002da7d4:  f94007f8    ldr x24, [sp, #8]
  0x8002da7d8:  7100051f    cmp w8, #1
  0x8002da7dc:  54ffa8a1    b.ne #-2796
  0x8002da7e0:  d001b408    adrp x8, #57155584
  0x8002da7e4:  aa1603e0    mov x0, x22
  0x8002da7e8:  f9413508    ldr x8, [x8, #616]
  0x8002da7ec:  aa1703e1    mov x1, x23
  0x8002da7f0:  52800082    mov w2, #4
  0x8002da7f4:  f9400108    ldr x8, [x8]
  0x8002da7f8:  2a1f03e3    mov w3, wzr
  0x8002da7fc:  d63f0100    blr x8
  0x8002da800:  17fffd3c    b #-2832
  0x8002da804:  7100091f    cmp w8, #2
  0x8002da808:  54000421    b.ne #132
  0x8002da80c:  d001b408    adrp x8, #57155584
  0x8002da810:  f946ed08    ldr x8, [x8, #3544]
  0x8002da814:  17ffffac    b #-336
  0x8002da818:  f94007f8    ldr x24, [sp, #8]
  0x8002da81c:  7100051f    cmp w8, #1
  0x8002da820:  54ff8161    b.ne #-4052
  0x8002da824:  d001b408    adrp x8, #57155584
  0x8002da828:  aa1603e0    mov x0, x22
  0x8002da82c:  f9413508    ldr x8, [x8, #616]
  0x8002da830:  aa1703e1    mov x1, x23
  0x8002da834:  52800082    mov w2, #4
  0x8002da838:  f9400108    ldr x8, [x8]
  0x8002da83c:  2a1f03e3    mov w3, wzr
  0x8002da840:  d63f0100    blr x8
  0x8002da844:  17fffc02    b #-4088
  0x8002da848:  7100091f    cmp w8, #2
  0x8002da84c:  54000381    b.ne #112
  0x8002da850:  d001b408    adrp x8, #57155584
  0x8002da854:  f946ed08    ldr x8, [x8, #3544]
  0x8002da858:  17ffffcb    b #-212
  0x8002da85c:  f94007f8    ldr x24, [sp, #8]
  0x8002da860:  7100051f    cmp w8, #1
  0x8002da864:  54ffaca1    b.ne #-2668
  0x8002da868:  d001b408    adrp x8, #57155584
  0x8002da86c:  aa1603e0    mov x0, x22
  0x8002da870:  f9413508    ldr x8, [x8, #616]
  0x8002da874:  aa1703e1    mov x1, x23
  0x8002da878:  52800082    mov w2, #4
  0x8002da87c:  f9400108    ldr x8, [x8]
  0x8002da880:  2a1f03e3    mov w3, wzr
  0x8002da884:  d63f0100    blr x8
  0x8002da888:  17fffd5c    b #-2704
  0x8002da88c:  f94007f8    ldr x24, [sp, #8]
  0x8002da890:  7100051f    cmp w8, #1
  0x8002da894:  54ffb361    b.ne #-2452
  0x8002da898:  d001b408    adrp x8, #57155584
  0x8002da89c:  aa1603e0    mov x0, x22
  0x8002da8a0:  f9413508    ldr x8, [x8, #616]
  0x8002da8a4:  aa1703e1    mov x1, x23
  0x8002da8a8:  52800082    mov w2, #4
  0x8002da8ac:  f9400108    ldr x8, [x8]
  0x8002da8b0:  2a1f03e3    mov w3, wzr
  0x8002da8b4:  d63f0100    blr x8
  0x8002da8b8:  17fffd92    b #-2488
  0x8002da8bc:  f94007f8    ldr x24, [sp, #8]
  0x8002da8c0:  7100051f    cmp w8, #1
  0x8002da8c4:  54ff8fe1    b.ne #-3588
  0x8002da8c8:  d001b408    adrp x8, #57155584
  0x8002da8cc:  aa1603e0    mov x0, x22
  0x8002da8d0:  f9413508    ldr x8, [x8, #616]
  0x8002da8d4:  aa1703e1    mov x1, x23
  0x8002da8d8:  52800082    mov w2, #4
  0x8002da8dc:  f9400108    ldr x8, [x8]
  0x8002da8e0:  2a1f03e3    mov w3, wzr
  0x8002da8e4:  d63f0100    blr x8
  0x8002da8e8:  17fffc76    b #-3624
  0x8002da8ec:  00000000    udf #0

