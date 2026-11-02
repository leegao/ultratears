; UltraTears chunk main_123_animblend: 1 functions [0x8001e1eb4..0x8001e2de8)

; Function f_8001e1eb4 [0x8001e1eb4..0x8001e2de8)
f_8001e1eb4:
  0x8001e1eb4:  39446008    ldrb w8, [x0, #280]
  0x8001e1eb8:  37184be8    tbnz w8, #3, #2428
  0x8001e1ebc:  a9ba7bfd    stp x29, x30, [sp, #-96]!
  0x8001e1ec0:  a9016ffc    stp x28, x27, [sp, #16]
  0x8001e1ec4:  910003fd    mov x29, sp
  0x8001e1ec8:  a90267fa    stp x26, x25, [sp, #32]
  0x8001e1ecc:  a9035ff8    stp x24, x23, [sp, #48]
  0x8001e1ed0:  a90457f6    stp x22, x21, [sp, #64]
  0x8001e1ed4:  a9054ff4    stp x20, x19, [sp, #80]
  0x8001e1ed8:  d12a43ff    sub sp, sp, #2704
  0x8001e1edc:  f9400009    ldr x9, [x0]
  0x8001e1ee0:  d001bb4b    adrp x11, #58105856
  0x8001e1ee4:  aa0003f3    mov x19, x0
  0x8001e1ee8:  f945216b    ldr x11, [x11, #2624]
  0x8001e1eec:  9280001b    mov x27, #-1
  0x8001e1ef0:  f940312a    ldr x10, [x9, #96]
  0x8001e1ef4:  eb0b015f    cmp x10, x11
  0x8001e1ef8:  54004a21    b.ne #2372
  0x8001e1efc:  f900927b    str x27, [x19, #288]
  0x8001e1f00:  d001bb4a    adrp x10, #58105856
  0x8001e1f04:  f900ba7f    str xzr, [x19, #368]
  0x8001e1f08:  f9400d29    ldr x9, [x9, #24]
  0x8001e1f0c:  f9444d4a    ldr x10, [x10, #2200]
  0x8001e1f10:  eb0a013f    cmp x9, x10
  0x8001e1f14:  540049a1    b.ne #2356
  0x8001e1f18:  37084a08    tbnz w8, #1, #2368
  0x8001e1f1c:  32000108    orr w8, w8, #0x1
  0x8001e1f20:  39046268    strb w8, [x19, #280]
  0x8001e1f24:  d001bb57    adrp x23, #58105856
  0x8001e1f28:  d001bb49    adrp x9, #58105856
  0x8001e1f2c:  f94562f7    ldr x23, [x23, #2752]
  0x8001e1f30:  f94002e8    ldr x8, [x23]
  0x8001e1f34:  f9406514    ldr x20, [x8, #200]
  0x8001e1f38:  f9400268    ldr x8, [x19]
  0x8001e1f3c:  f9401108    ldr x8, [x8, #32]
  0x8001e1f40:  f9451d29    ldr x9, [x9, #2616]
  0x8001e1f44:  eb09011f    cmp x8, x9
  0x8001e1f48:  54004a41    b.ne #2376
  0x8001e1f4c:  2a1f03e1    mov w1, wzr
  0x8001e1f50:  f9400288    ldr x8, [x20]
  0x8001e1f54:  b001bca9    adrp x9, #58281984
  0x8001e1f58:  f9401908    ldr x8, [x8, #48]
  0x8001e1f5c:  f944e529    ldr x9, [x9, #2504]
  0x8001e1f60:  eb09011f    cmp x8, x9
  0x8001e1f64:  540049e1    b.ne #2364
  0x8001e1f68:  91030288    add x8, x20, #192
  0x8001e1f6c:  7100083f    cmp w1, #2
  0x8001e1f70:  8b214d09    add x9, x8, w1, uxtw #3
  0x8001e1f74:  9a883128    csel x8, x9, x8, lo
  0x8001e1f78:  f9400114    ldr x20, [x8]
  0x8001e1f7c:  f9400288    ldr x8, [x20]
  0x8001e1f80:  b001bca9    adrp x9, #58281984
  0x8001e1f84:  f001bb58    adrp x24, #58109952
  0x8001e1f88:  f9400d08    ldr x8, [x8, #24]
  0x8001e1f8c:  f944cd29    ldr x9, [x9, #2456]
  0x8001e1f90:  f9477f18    ldr x24, [x24, #3832]
  0x8001e1f94:  eb09011f    cmp x8, x9
  0x8001e1f98:  540048c1    b.ne #2328
  0x8001e1f9c:  aa1403f9    mov x25, x20
  0x8001e1fa0:  f84b0f3c    ldr x28, [x25, #176]!
  0x8001e1fa4:  f94002e8    ldr x8, [x23]
  0x8001e1fa8:  d100a335    sub x21, x25, #40
  0x8001e1fac:  b9404100    ldr w0, [x8, #64]
  0x8001e1fb0:  94a706c4    bl #43784976
  0x8001e1fb4:  b4004240    cbz x0, #2120
  0x8001e1fb8:  f940181a    ldr x26, [x0, #48]
  0x8001e1fbc:  b400421a    cbz x26, #2112
  0x8001e1fc0:  f9401400    ldr x0, [x0, #40]
  0x8001e1fc4:  f9400008    ldr x8, [x0]
  0x8001e1fc8:  f9403108    ldr x8, [x8, #96]
  0x8001e1fcc:  eb18011f    cmp x8, x24
  0x8001e1fd0:  54004761    b.ne #2284
  0x8001e1fd4:  b940d016    ldr w22, [x0, #208]
  0x8001e1fd8:  f9400b40    ldr x0, [x26, #16]
  0x8001e1fdc:  eb15001f    cmp x0, x21
  0x8001e1fe0:  54000040    b.eq #8
  0x8001e1fe4:  94a70a7f    bl #43788796
  0x8001e1fe8:  9240bc08    and x8, x0, #0xffffffffffff
  0x8001e1fec:  eb5c411f    cmp x8, x28, lsr #16
  0x8001e1ff0:  540046c0    b.eq #2264
  0x8001e1ff4:  710042df    cmp w22, #16
  0x8001e1ff8:  5400472c    b.gt #2276
  0x8001e1ffc:  5280003a    mov w26, #1
  0x8001e2000:  710046df    cmp w22, #17
  0x8001e2004:  5400470a    b.ge #2272
  0x8001e2008:  9270bf88    and x8, x28, #0xffffffffffff0000
  0x8001e200c:  f140411f    cmp x8, #16, lsl #12
  0x8001e2010:  54006de0    b.eq #3516
  0x8001e2014:  aa1503e0    mov x0, x21
  0x8001e2018:  94a70812    bl #43786312
  0x8001e201c:  f9400328    ldr x8, [x25]
  0x8001e2020:  f140811f    cmp x8, #32, lsl #12
  0x8001e2024:  54004ce2    b.hs #2460
  0x8001e2028:  f9400329    ldr x9, [x25]
  0x8001e202c:  aa0903e8    mov x8, x9
  0x8001e2030:  b5003c89    cbnz x9, #1936
  0x8001e2034:  52a00029    mov w9, #65536
  0x8001e2038:  8b1a012a    add x10, x9, x26
  0x8001e203c:  c85f7f29    ldxr x9, [x25]
  0x8001e2040:  eb08013f    cmp x9, x8
  0x8001e2044:  54ffff41    b.ne #-24
  0x8001e2048:  c8097f2a    stxr w9, x10, [x25]
  0x8001e204c:  35ffff89    cbnz w9, #-16
  0x8001e2050:  b5000068    cbnz x8, #12
  0x8001e2054:  9102a280    add x0, x20, #168
  0x8001e2058:  94a70e9a    bl #43793000
  0x8001e205c:  710042df    cmp w22, #16
  0x8001e2060:  5400006c    b.gt #12
  0x8001e2064:  aa1503e0    mov x0, x21
  0x8001e2068:  94a70802    bl #43786248
  0x8001e206c:  f9407280    ldr x0, [x20, #224]
  0x8001e2070:  9400035e    bl #3448
  0x8001e2074:  f9400268    ldr x8, [x19]
  0x8001e2078:  b001bb49    adrp x9, #58101760
  0x8001e207c:  9001bcb6    adrp x22, #58277888
  0x8001e2080:  f9452529    ldr x9, [x9, #2632]
  0x8001e2084:  b001bb79    adrp x25, #58118144
  0x8001e2088:  f9403508    ldr x8, [x8, #104]
  0x8001e208c:  f944ead6    ldr x22, [x22, #2512]
  0x8001e2090:  f945db39    ldr x25, [x25, #2992]
  0x8001e2094:  eb09011f    cmp x8, x9
  0x8001e2098:  540042e1    b.ne #2140
  0x8001e209c:  b9408e68    ldr w8, [x19, #140]
  0x8001e20a0:  35004328    cbnz w8, #2148
  0x8001e20a4:  f94002e8    ldr x8, [x23]
  0x8001e20a8:  910283fa    add x26, sp, #160
  0x8001e20ac:  f9406500    ldr x0, [x8, #200]
  0x8001e20b0:  f9400008    ldr x8, [x0]
  0x8001e20b4:  f9403108    ldr x8, [x8, #96]
  0x8001e20b8:  eb16011f    cmp x8, x22
  0x8001e20bc:  54004321    b.ne #2148
  0x8001e20c0:  f9406000    ldr x0, [x0, #192]
  0x8001e20c4:  3902a3ff    strb wzr, [sp, #168]
  0x8001e20c8:  9001bc28    adrp x8, #58212352
  0x8001e20cc:  f940701c    ldr x28, [x0, #224]
  0x8001e20d0:  b900afff    str wzr, [sp, #172]
  0x8001e20d4:  fd412b20    ldr d0, [x25, #592]
  0x8001e20d8:  529ffdd5    mov w21, #65518
  0x8001e20dc:  72afeff5    movk w21, #32639, lsl #16
  0x8001e20e0:  3902e3ff    strb wzr, [sp, #184]
  0x8001e20e4:  f9415108    ldr x8, [x8, #672]
  0x8001e20e8:  1280000a    mov w10, #-1
  0x8001e20ec:  528001eb    mov w11, #15
  0x8001e20f0:  529fffec    mov w12, #65535
  0x8001e20f4:  910283e0    add x0, sp, #160
  0x8001e20f8:  a90c7fff    stp xzr, xzr, [sp, #192]
  0x8001e20fc:  91004109    add x9, x8, #16
  0x8001e2100:  f9401508    ldr x8, [x8, #40]
  0x8001e2104:  fd005be0    str d0, [sp, #176]
  0x8001e2108:  f90053e9    str x9, [sp, #160]
  0x8001e210c:  12bfe009    mov w9, #16777215
  0x8001e2110:  b9013bff    str wzr, [sp, #312]
  0x8001e2114:  b900e3f5    str w21, [sp, #224]
  0x8001e2118:  f90077fb    str x27, [sp, #232]
  0x8001e211c:  b900f3e9    str w9, [sp, #240]
  0x8001e2120:  b900fbea    str w10, [sp, #248]
  0x8001e2124:  3903f3eb    strb w11, [sp, #252]
  0x8001e2128:  790203ec    strh w12, [sp, #256]
  0x8001e212c:  b90107ff    str wzr, [sp, #260]
  0x8001e2130:  b9011be9    str w9, [sp, #280]
  0x8001e2134:  b90123ea    str w10, [sp, #288]
  0x8001e2138:  390493eb    strb w11, [sp, #292]
  0x8001e213c:  790253ec    strh w12, [sp, #296]
  0x8001e2140:  b9012fff    str wzr, [sp, #300]
  0x8001e2144:  f9009bff    str xzr, [sp, #304]
  0x8001e2148:  f80a435f    stur xzr, [x26, #164]
  0x8001e214c:  f809c35f    stur xzr, [x26, #156]
  0x8001e2150:  a90d7fff    stp xzr, xzr, [sp, #208]
  0x8001e2154:  a910efff    stp xzr, x27, [sp, #264]
  0x8001e2158:  d63f0100    blr x8
  0x8001e215c:  9001ba48    adrp x8, #57966592
  0x8001e2160:  912ca108    add x8, x8, #2856
  0x8001e2164:  f90053e8    str x8, [sp, #160]
  0x8001e2168:  f94002e8    ldr x8, [x23]
  0x8001e216c:  a91573f3    stp x19, x28, [sp, #336]
  0x8001e2170:  f9406500    ldr x0, [x8, #200]
  0x8001e2174:  f9400008    ldr x8, [x0]
  0x8001e2178:  f9403108    ldr x8, [x8, #96]
  0x8001e217c:  eb16011f    cmp x8, x22
  0x8001e2180:  54003d61    b.ne #1964
  0x8001e2184:  f9406000    ldr x0, [x0, #192]
  0x8001e2188:  aa1303fb    mov x27, x19
  0x8001e218c:  6dc08760    ldp d0, d1, [x27, #8]!
  0x8001e2190:  6e180420    mov v0.d[1], v1.d[0]
  0x8001e2194:  fc40c361    ldur d1, [x27, #12]
  0x8001e2198:  fc414362    ldur d2, [x27, #20]
  0x8001e219c:  b9408b68    ldr w8, [x27, #136]
  0x8001e21a0:  7100051f    cmp w8, #1
  0x8001e21a4:  6e180441    mov v1.d[1], v2.d[0]
  0x8001e21a8:  4e1c1fe0    mov v0.s[3], wzr
  0x8001e21ac:  54000081    b.ne #16
  0x8001e21b0:  3942a3e8    ldrb w8, [sp, #168]
  0x8001e21b4:  321b0108    orr w8, w8, #0x20
  0x8001e21b8:  3902a3e8    strb w8, [sp, #168]
  0x8001e21bc:  4ea0d421    fsub v1.4s, v1.4s, v0.4s
  0x8001e21c0:  3dc01b22    ldr q2, [x25, #96]
  0x8001e21c4:  529fffe8    mov w8, #65535
  0x8001e21c8:  790043e8    strh w8, [sp, #32]
  0x8001e21cc:  52800028    mov w8, #1
  0x8001e21d0:  72a01f68    movk w8, #251, lsl #16
  0x8001e21d4:  b90033e8    str w8, [sp, #48]
  0x8001e21d8:  39446268    ldrb w8, [x19, #280]
  0x8001e21dc:  52800109    mov w9, #8
  0x8001e21e0:  b90027ff    str wzr, [sp, #36]
  0x8001e21e4:  0a681128    bic w8, w9, w8, lsr #4
  0x8001e21e8:  6e1c0441    mov v1.s[3], v2.s[0]
  0x8001e21ec:  b9408669    ldr w9, [x19, #132]
  0x8001e21f0:  b90083e8    str w8, [sp, #128]
  0x8001e21f4:  5100052a    sub w10, w9, #1
  0x8001e21f8:  7100055f    cmp w10, #1
  0x8001e21fc:  4ea0d823    fcmeq v3.4s, v1.4s, #0.0
  0x8001e2200:  4e631c21    bic v1.16b, v1.16b, v3.16b
  0x8001e2204:  4e040ea3    dup v3.4s, w21
  0x8001e2208:  f9407015    ldr x21, [x0, #224]
  0x8001e220c:  6e21fc42    fdiv v2.4s, v2.4s, v1.4s
  0x8001e2210:  4ea0d824    fcmeq v4.4s, v1.4s, #0.0
  0x8001e2214:  ad0287e0    stp q0, q1, [sp, #80]
  0x8001e2218:  4ea41c80    mov v0.16b, v4.16b
  0x8001e221c:  6e621c60    bsl v0.16b, v3.16b, v2.16b
  0x8001e2220:  3d801fe0    str q0, [sp, #112]
  0x8001e2224:  54000068    b.hi #12
  0x8001e2228:  2a080128    orr w8, w9, w8
  0x8001e222c:  b90083e8    str w8, [sp, #128]
  0x8001e2230:  f94002e8    ldr x8, [x23]
  0x8001e2234:  f9406500    ldr x0, [x8, #200]
  0x8001e2238:  f9400008    ldr x8, [x0]
  0x8001e223c:  f9403108    ldr x8, [x8, #96]
  0x8001e2240:  eb16011f    cmp x8, x22
  0x8001e2244:  540037a1    b.ne #1780
  0x8001e2248:  f9406008    ldr x8, [x0, #192]
  0x8001e224c:  f9409908    ldr x8, [x8, #304]
  0x8001e2250:  f9000fe8    str x8, [sp, #24]
  0x8001e2254:  f9400008    ldr x8, [x0]
  0x8001e2258:  f9403108    ldr x8, [x8, #96]
  0x8001e225c:  eb16011f    cmp x8, x22
  0x8001e2260:  54003781    b.ne #1776
  0x8001e2264:  f9406000    ldr x0, [x0, #192]
  0x8001e2268:  f9407808    ldr x8, [x0, #240]
  0x8001e226c:  f90017f3    str x19, [sp, #40]
  0x8001e2270:  f9000be8    str x8, [sp, #16]
  0x8001e2274:  f9403e68    ldr x8, [x19, #120]
  0x8001e2278:  b5003728    cbnz x8, #1764
  0x8001e227c:  b90027ff    str wzr, [sp, #36]
  0x8001e2280:  910043e1    add x1, sp, #16
  0x8001e2284:  910283e2    add x2, sp, #160
  0x8001e2288:  f94002a8    ldr x8, [x21]
  0x8001e228c:  aa1503e0    mov x0, x21
  0x8001e2290:  f9420108    ldr x8, [x8, #1024]
  0x8001e2294:  d63f0100    blr x8
  0x8001e2298:  b940afe8    ldr w8, [sp, #172]
  0x8001e229c:  7100011f    cmp w8, #0
  0x8001e22a0:  1a9f07e9    cset w9, ne
  0x8001e22a4:  39008269    strb w9, [x19, #32]
  0x8001e22a8:  35001d88    cbnz w8, #944
  0x8001e22ac:  f9400268    ldr x8, [x19]
  0x8001e22b0:  b001bb49    adrp x9, #58101760
  0x8001e22b4:  f9403908    ldr x8, [x8, #112]
  0x8001e22b8:  f9452929    ldr x9, [x9, #2640]
  0x8001e22bc:  eb09011f    cmp x8, x9
  0x8001e22c0:  54003641    b.ne #1736
  0x8001e22c4:  39408268    ldrb w8, [x19, #32]
  0x8001e22c8:  34001388    cbz w8, #624
  0x8001e22cc:  b9408e68    ldr w8, [x19, #140]
  0x8001e22d0:  35001348    cbnz w8, #616
  0x8001e22d4:  f94002e8    ldr x8, [x23]
  0x8001e22d8:  f9406500    ldr x0, [x8, #200]
  0x8001e22dc:  f9400008    ldr x8, [x0]
  0x8001e22e0:  f9403108    ldr x8, [x8, #96]
  0x8001e22e4:  eb16011f    cmp x8, x22
  0x8001e22e8:  540037a1    b.ne #1780
  0x8001e22ec:  f9406000    ldr x0, [x0, #192]
  0x8001e22f0:  f9407000    ldr x0, [x0, #224]
  0x8001e22f4:  f9409261    ldr x1, [x19, #288]
  0x8001e22f8:  f9400008    ldr x8, [x0]
  0x8001e22fc:  f9408d08    ldr x8, [x8, #280]
  0x8001e2300:  d63f0100    blr x8
  0x8001e2304:  f9405c00    ldr x0, [x0, #184]
  0x8001e2308:  b001bb49    adrp x9, #58101760
  0x8001e230c:  f900ba60    str x0, [x19, #368]
  0x8001e2310:  f9400268    ldr x8, [x19]
  0x8001e2314:  b9405a75    ldr w21, [x19, #88]
  0x8001e2318:  f9401108    ldr x8, [x8, #32]
  0x8001e231c:  f9451d29    ldr x9, [x9, #2616]
  0x8001e2320:  eb09011f    cmp x8, x9
  0x8001e2324:  54003621    b.ne #1732
  0x8001e2328:  f9403268    ldr x8, [x19, #96]
  0x8001e232c:  d001bb5b    adrp x27, #58105856
  0x8001e2330:  b9400916    ldr w22, [x8, #8]
  0x8001e2334:  f945437b    ldr x27, [x27, #2688]
  0x8001e2338:  08dfff68    ldarb w8, [x27]
  0x8001e233c:  924016da    and x26, x22, #0x3f
  0x8001e2340:  36003628    tbz w8, #0, #1732
  0x8001e2344:  b40038e0    cbz x0, #1820
  0x8001e2348:  f9400008    ldr x8, [x0]
  0x8001e234c:  9001bca9    adrp x9, #58277888
  0x8001e2350:  f9401508    ldr x8, [x8, #40]
  0x8001e2354:  f9456529    ldr x9, [x9, #2760]
  0x8001e2358:  eb09011f    cmp x8, x9
  0x8001e235c:  540037a1    b.ne #1780
  0x8001e2360:  08dfff68    ldarb w8, [x27]
  0x8001e2364:  36003828    tbz w8, #0, #1796
  0x8001e2368:  f940a008    ldr x8, [x0, #320]
  0x8001e236c:  52800029    mov w9, #1
  0x8001e2370:  1ada213c    lsl w28, w9, w26
  0x8001e2374:  b940190a    ldr w10, [x8, #24]
  0x8001e2378:  6a1c015f    tst w10, w28
  0x8001e237c:  54000140    b.eq #40
  0x8001e2380:  d3462edb    ubfx x27, x22, #6, #6
  0x8001e2384:  1adb2136    lsl w22, w9, w27
  0x8001e2388:  b9401d09    ldr w9, [x8, #28]
  0x8001e238c:  6a16013f    tst w9, w22
  0x8001e2390:  540000a0    b.eq #20
  0x8001e2394:  39402d08    ldrb w8, [x8, #11]
  0x8001e2398:  37203a68    tbnz w8, #4, #1868
  0x8001e239c:  52800028    mov w8, #1
  0x8001e23a0:  39017268    strb w8, [x19, #92]
  0x8001e23a4:  f940ba75    ldr x21, [x19, #368]
  0x8001e23a8:  b9405a7a    ldr w26, [x19, #88]
  0x8001e23ac:  b9009ffa    str w26, [sp, #156]
  0x8001e23b0:  b4000c55    cbz x21, #392
  0x8001e23b4:  9100e2b6    add x22, x21, #56
  0x8001e23b8:  aa1603e0    mov x0, x22
  0x8001e23bc:  94a70729    bl #43785380
  0x8001e23c0:  f94016b5    ldr x21, [x21, #40]
  0x8001e23c4:  aa1603e0    mov x0, x22
  0x8001e23c8:  94a7072a    bl #43785384
  0x8001e23cc:  b4000b75    cbz x21, #364
  0x8001e23d0:  f94002a8    ldr x8, [x21]
  0x8001e23d4:  9001bcaa    adrp x10, #58277888
  0x8001e23d8:  f9400909    ldr x9, [x8, #16]
  0x8001e23dc:  f941794a    ldr x10, [x10, #752]
  0x8001e23e0:  eb0a013f    cmp x9, x10
  0x8001e23e4:  540017e1    b.ne #764
  0x8001e23e8:  9001bca9    adrp x9, #58277888
  0x8001e23ec:  f9403908    ldr x8, [x8, #112]
  0x8001e23f0:  f9417129    ldr x9, [x9, #736]
  0x8001e23f4:  eb09011f    cmp x8, x9
  0x8001e23f8:  54001c61    b.ne #908
  0x8001e23fc:  f9403ea0    ldr x0, [x21, #120]
  0x8001e2400:  f9400008    ldr x8, [x0]
  0x8001e2404:  9001bca9    adrp x9, #58277888
  0x8001e2408:  f9400908    ldr x8, [x8, #16]
  0x8001e240c:  f947f129    ldr x9, [x9, #4064]
  0x8001e2410:  eb09011f    cmp x8, x9
  0x8001e2414:  54001ce1    b.ne #924
  0x8001e2418:  f9400400    ldr x0, [x0, #8]
  0x8001e241c:  b4003fe0    cbz x0, #2044
  0x8001e2420:  39406008    ldrb w8, [x0, #24]
  0x8001e2424:  3100075f    cmn w26, #1
  0x8001e2428:  54003940    b.eq #1832
  0x8001e242c:  71002d1f    cmp w8, #11
  0x8001e2430:  540040e0    b.eq #2076
  0x8001e2434:  51001d08    sub w8, w8, #7
  0x8001e2438:  71000d1f    cmp w8, #3
  0x8001e243c:  54003908    b.hi #1824
  0x8001e2440:  f9401416    ldr x22, [x0, #40]
  0x8001e2444:  b4003eb6    cbz x22, #2004
  0x8001e2448:  f94016c0    ldr x0, [x22, #40]
  0x8001e244c:  b4003e60    cbz x0, #1996
  0x8001e2450:  52810008    mov w8, #2048
  0x8001e2454:  528000aa    mov w10, #5
  0x8001e2458:  b9022be8    str w8, [sp, #552]
  0x8001e245c:  910283e8    add x8, sp, #160
  0x8001e2460:  910043e1    add x1, sp, #16
  0x8001e2464:  d10063a2    sub x2, x29, #24
  0x8001e2468:  91064109    add x9, x8, #400
  0x8001e246c:  f90113e9    str x9, [sp, #544]
  0x8001e2470:  f001bc09    adrp x9, #58208256
  0x8001e2474:  ad500720    ldp q0, q1, [x25, #512]
  0x8001e2478:  f947f129    ldr x9, [x9, #4064]
  0x8001e247c:  f9010fff    str xzr, [sp, #536]
  0x8001e2480:  91004129    add x9, x9, #16
  0x8001e2484:  ad510f22    ldp q2, q3, [x25, #544]
  0x8001e2488:  f9010be9    str x9, [sp, #528]
  0x8001e248c:  9001bc29    adrp x9, #58212352
  0x8001e2490:  f940dd29    ldr x9, [x9, #440]
  0x8001e2494:  ad0507e0    stp q0, q1, [sp, #160]
  0x8001e2498:  b901ffea    str w10, [sp, #508]
  0x8001e249c:  ad060fe2    stp q2, q3, [sp, #192]
  0x8001e24a0:  b001bc2a    adrp x10, #58216448
  0x8001e24a4:  4f03f600    fmov v0.4s, #1.00000000
  0x8001e24a8:  91004129    add x9, x9, #16
  0x8001e24ac:  b901f3ff    str wzr, [sp, #496]
  0x8001e24b0:  a90e7fff    stp xzr, xzr, [sp, #224]
  0x8001e24b4:  29066bfa    stp w26, w26, [sp, #48]
  0x8001e24b8:  b9003bfa    str w26, [sp, #56]
  0x8001e24bc:  f803c3ff    stur xzr, [sp, #60]
  0x8001e24c0:  f940654a    ldr x10, [x10, #200]
  0x8001e24c4:  f940014a    ldr x10, [x10]
  0x8001e24c8:  f81e83a9    stur x9, [x29, #-24]
  0x8001e24cc:  f9000be8    str x8, [sp, #16]
  0x8001e24d0:  3d800be0    str q0, [sp, #32]
  0x8001e24d4:  3940600b    ldrb w11, [x0, #24]
  0x8001e24d8:  8b0b254a    add x10, x10, x11, lsl #9
  0x8001e24dc:  f9406548    ldr x8, [x10, #200]
  0x8001e24e0:  d63f0100    blr x8
  0x8001e24e4:  7943f3e8    ldrh w8, [sp, #504]
  0x8001e24e8:  92403108    and x8, x8, #0x1fff
  0x8001e24ec:  b9401ac9    ldr w9, [x22, #24]
  0x8001e24f0:  6b08013f    cmp w9, w8
  0x8001e24f4:  54003d6d    b.le #1964
  0x8001e24f8:  f94012d6    ldr x22, [x22, #32]
  0x8001e24fc:  54000049    b.ls #8
  0x8001e2500:  8b0812d6    add x22, x22, x8, lsl #4
  0x8001e2504:  f001bc08    adrp x8, #58208256
  0x8001e2508:  f947ed08    ldr x8, [x8, #4056]
  0x8001e250c:  f9410fe0    ldr x0, [sp, #536]
  0x8001e2510:  91004108    add x8, x8, #16
  0x8001e2514:  f9010be8    str x8, [sp, #528]
  0x8001e2518:  b5003c80    cbnz x0, #1936
  0x8001e251c:  b40037f6    cbz x22, #1788
  0x8001e2520:  b94002c8    ldr w8, [x22]
  0x8001e2524:  b9004a68    str w8, [x19, #72]
  0x8001e2528:  b94006c8    ldr w8, [x22, #4]
  0x8001e252c:  b9004e68    str w8, [x19, #76]
  0x8001e2530:  f94006c8    ldr x8, [x22, #8]
  0x8001e2534:  f9002a68    str x8, [x19, #80]
  0x8001e2538:  f9400288    ldr x8, [x20]
  0x8001e253c:  9001bca9    adrp x9, #58277888
  0x8001e2540:  f9401108    ldr x8, [x8, #32]
  0x8001e2544:  f944d129    ldr x9, [x9, #2464]
  0x8001e2548:  eb09011f    cmp x8, x9
  0x8001e254c:  54002241    b.ne #1096
  0x8001e2550:  f9407280    ldr x0, [x20, #224]
  0x8001e2554:  94000226    bl #2200
  0x8001e2558:  aa1403f9    mov x25, x20
  0x8001e255c:  f84b0f3a    ldr x26, [x25, #176]!
  0x8001e2560:  f94002e8    ldr x8, [x23]
  0x8001e2564:  d100a335    sub x21, x25, #40
  0x8001e2568:  b9404100    ldr w0, [x8, #64]
  0x8001e256c:  94a70555    bl #43783508
  0x8001e2570:  b4001560    cbz x0, #684
  0x8001e2574:  f9401817    ldr x23, [x0, #48]
  0x8001e2578:  b4001537    cbz x23, #676
  0x8001e257c:  f9401400    ldr x0, [x0, #40]
  0x8001e2580:  f9400008    ldr x8, [x0]
  0x8001e2584:  f9403108    ldr x8, [x8, #96]
  0x8001e2588:  eb18011f    cmp x8, x24
  0x8001e258c:  540020a1    b.ne #1044
  0x8001e2590:  b940d016    ldr w22, [x0, #208]
  0x8001e2594:  f9400ae8    ldr x8, [x23, #16]
  0x8001e2598:  eb15011f    cmp x8, x21
  0x8001e259c:  540011e0    b.eq #572
  0x8001e25a0:  94a70910    bl #43787328
  0x8001e25a4:  9240bc08    and x8, x0, #0xffffffffffff
  0x8001e25a8:  eb5a411f    cmp x8, x26, lsr #16
  0x8001e25ac:  540011e0    b.eq #572
  0x8001e25b0:  710042df    cmp w22, #16
  0x8001e25b4:  54001fcc    b.gt #1016
  0x8001e25b8:  52800037    mov w23, #1
  0x8001e25bc:  710042df    cmp w22, #16
  0x8001e25c0:  54001fac    b.gt #1012
  0x8001e25c4:  927f2348    and x8, x26, #0x3fe
  0x8001e25c8:  b5000cc8    cbnz x8, #408
  0x8001e25cc:  710042df    cmp w22, #16
  0x8001e25d0:  5400006c    b.gt #12
  0x8001e25d4:  aa1503e0    mov x0, x21
  0x8001e25d8:  94a706a2    bl #43784840
  0x8001e25dc:  f940032b    ldr x11, [x25]
  0x8001e25e0:  b27002e8    orr x8, x23, #0x10000
  0x8001e25e4:  cb17016a    sub x10, x11, x23
  0x8001e25e8:  eb08017f    cmp x11, x8
  0x8001e25ec:  aa0b03e9    mov x9, x11
  0x8001e25f0:  9a8a03ea    csel x10, xzr, x10, eq
  0x8001e25f4:  c85f7f2b    ldxr x11, [x25]
  0x8001e25f8:  eb09017f    cmp x11, x9
  0x8001e25fc:  54ffff41    b.ne #-24
  0x8001e2600:  c80b7f2a    stxr w11, x10, [x25]
  0x8001e2604:  35ffff8b    cbnz w11, #-16
  0x8001e2608:  b500006a    cbnz x10, #12
  0x8001e260c:  9102a280    add x0, x20, #168
  0x8001e2610:  94a70d2c    bl #43791536
  0x8001e2614:  aa1503e0    mov x0, x21
  0x8001e2618:  94a70696    bl #43784792
  0x8001e261c:  39446268    ldrb w8, [x19, #280]
  0x8001e2620:  121e1508    and w8, w8, #0xfc
  0x8001e2624:  321f0108    orr w8, w8, #0x2
  0x8001e2628:  39046268    strb w8, [x19, #280]
  0x8001e262c:  39408268    ldrb w8, [x19, #32]
  0x8001e2630:  7100011f    cmp w8, #0
  0x8001e2634:  1a9f07e0    cset w0, ne
  0x8001e2638:  912a43ff    add sp, sp, #2704
  0x8001e263c:  a9454ff4    ldp x20, x19, [sp, #80]
  0x8001e2640:  a94457f6    ldp x22, x21, [sp, #64]
  0x8001e2644:  a9435ff8    ldp x24, x23, [sp, #48]
  0x8001e2648:  a94267fa    ldp x26, x25, [sp, #32]
  0x8001e264c:  a9416ffc    ldp x28, x27, [sp, #16]
  0x8001e2650:  a8c67bfd    ldp x29, x30, [sp], #96
  0x8001e2654:  d65f03c0    ret
  0x8001e2658:  f94053e8    ldr x8, [sp, #160]
  0x8001e265c:  910283e0    add x0, sp, #160
  0x8001e2660:  f9401108    ldr x8, [x8, #32]
  0x8001e2664:  d63f0100    blr x8
  0x8001e2668:  3dc00400    ldr q0, [x0, #16]
  0x8001e266c:  9100e268    add x8, x19, #56
  0x8001e2670:  fd001a60    str d0, [x19, #48]
  0x8001e2674:  4d008100    st1 { v0.s }[2], [x8]
  0x8001e2678:  3941f008    ldrb w8, [x0, #124]
  0x8001e267c:  37102168    tbnz w8, #2, #1068
  0x8001e2680:  3dc00000    ldr q0, [x0]
  0x8001e2684:  9100b268    add x8, x19, #44
  0x8001e2688:  fc024260    stur d0, [x19, #36]
  0x8001e268c:  4d008100    st1 { v0.s }[2], [x8]
  0x8001e2690:  bd406fe0    ldr s0, [sp, #108]
  0x8001e2694:  1e202008    fcmp s0, #0.0
  0x8001e2698:  54000a40    b.eq #328
  0x8001e269c:  bd402001    ldr s1, [x0, #32]
  0x8001e26a0:  1e201820    fdiv s0, s1, s0
  0x8001e26a4:  bd003e60    str s0, [x19, #60]
  0x8001e26a8:  3dc01be0    ldr q0, [sp, #96]
  0x8001e26ac:  6e20dc00    fmul v0.4s, v0.4s, v0.4s
  0x8001e26b0:  0e140401    dup v1.2s, v0.s[2]
  0x8001e26b4:  2e20d400    faddp v0.2s, v0.2s, v0.2s
  0x8001e26b8:  0e21d400    fadd v0.2s, v0.2s, v1.2s
  0x8001e26bc:  bd402001    ldr s1, [x0, #32]
  0x8001e26c0:  2ea1f800    fsqrt v0.2s, v0.2s
  0x8001e26c4:  1e200820    fmul s0, s1, s0
  0x8001e26c8:  bd004260    str s0, [x19, #64]
  0x8001e26cc:  f9402808    ldr x8, [x0, #80]
  0x8001e26d0:  f9009268    str x8, [x19, #288]
  0x8001e26d4:  b9406008    ldr w8, [x0, #96]
  0x8001e26d8:  b9005a68    str w8, [x19, #88]
  0x8001e26dc:  17fffef4    b #-1072
  0x8001e26e0:  aa1503e0    mov x0, x21
  0x8001e26e4:  d63f0120    blr x9
  0x8001e26e8:  71003c1f    cmp w0, #15
  0x8001e26ec:  54000661    b.ne #204
  0x8001e26f0:  d001bba8    adrp x8, #58155008
  0x8001e26f4:  f9443d08    ldr x8, [x8, #2168]
  0x8001e26f8:  08dffd08    ldarb w8, [x8]
  0x8001e26fc:  36002e28    tbz w8, #0, #1476
  0x8001e2700:  f94002a8    ldr x8, [x21]
  0x8001e2704:  d001bba1    adrp x1, #58155008
  0x8001e2708:  aa1503e0    mov x0, x21
  0x8001e270c:  f9400108    ldr x8, [x8]
  0x8001e2710:  f9443821    ldr x1, [x1, #2160]
  0x8001e2714:  d63f0100    blr x8
  0x8001e2718:  b4002d00    cbz x0, #1440
  0x8001e271c:  f9404008    ldr x8, [x0, #128]
  0x8001e2720:  aa0003e2    mov x2, x0
  0x8001e2724:  b4002ca8    cbz x8, #1428
  0x8001e2728:  b9407109    ldr w9, [x8, #112]
  0x8001e272c:  d10063a0    sub x0, x29, #24
  0x8001e2730:  910043e1    add x1, sp, #16
  0x8001e2734:  f9403d08    ldr x8, [x8, #120]
  0x8001e2738:  910273e3    add x3, sp, #156
  0x8001e273c:  910283e4    add x4, sp, #160
  0x8001e2740:  b81e83bf    stur wzr, [x29, #-24]
  0x8001e2744:  f9000bff    str xzr, [sp, #16]
  0x8001e2748:  b900a3e9    str w9, [sp, #160]
  0x8001e274c:  f90057e8    str x8, [sp, #168]
  0x8001e2750:  940001a8    bl #1696
  0x8001e2754:  aa0003f6    mov x22, x0
  0x8001e2758:  b5ffee56    cbnz x22, #-568
  0x8001e275c:  17ffff77    b #-548
  0x8001e2760:  710042df    cmp w22, #16
  0x8001e2764:  5400318c    b.gt #1584
  0x8001e2768:  c85f7f28    ldxr x8, [x25]
  0x8001e276c:  eb1a011f    cmp x8, x26
  0x8001e2770:  540002c1    b.ne #88
  0x8001e2774:  cb170348    sub x8, x26, x23
  0x8001e2778:  c8097f28    stxr w9, x8, [x25]
  0x8001e277c:  34fff509    cbz w9, #-352
  0x8001e2780:  17fffffa    b #-24
  0x8001e2784:  9001bca9    adrp x9, #58277888
  0x8001e2788:  f9413929    ldr x9, [x9, #624]
  0x8001e278c:  eb09011f    cmp x8, x9
  0x8001e2790:  54002ea0    b.eq #1492
  0x8001e2794:  9001bca9    adrp x9, #58277888
  0x8001e2798:  f9412d29    ldr x9, [x9, #600]
  0x8001e279c:  eb09011f    cmp x8, x9
  0x8001e27a0:  54002e60    b.eq #1484
  0x8001e27a4:  aa1503e0    mov x0, x21
  0x8001e27a8:  d63f0100    blr x8
  0x8001e27ac:  17ffff15    b #-940
  0x8001e27b0:  d63f0100    blr x8
  0x8001e27b4:  17ffff1a    b #-920
  0x8001e27b8:  f94002a8    ldr x8, [x21]
  0x8001e27bc:  17ffff0b    b #-980
  0x8001e27c0:  aa0803e9    mov x9, x8
  0x8001e27c4:  17fffe1d    b #-1932
  0x8001e27c8:  f27f211f    tst x8, #0x3fe
  0x8001e27cc:  aa0803fa    mov x26, x8
  0x8001e27d0:  54ffefe0    b.eq #-516
  0x8001e27d4:  17ffffe5    b #-108
  0x8001e27d8:  aa1503e0    mov x0, x21
  0x8001e27dc:  17ffff72    b #-568
  0x8001e27e0:  2f00e400    movi d0, #0000000000000000
  0x8001e27e4:  17ffffb0    b #-320
  0x8001e27e8:  c85f7f28    ldxr x8, [x25]
  0x8001e27ec:  d1000508    sub x8, x8, #1
  0x8001e27f0:  c8097f28    stxr w9, x8, [x25]
  0x8001e27f4:  34fff149    cbz w9, #-472
  0x8001e27f8:  17fffffc    b #-16
  0x8001e27fc:  94a70879    bl #43786724
  0x8001e2800:  aa1703fa    mov x26, x23
  0x8001e2804:  aa0003f7    mov x23, x0
  0x8001e2808:  94a70846    bl #43786520
  0x8001e280c:  2a0003f6    mov w22, w0
  0x8001e2810:  aa1703e0    mov x0, x23
  0x8001e2814:  aa1a03f7    mov x23, x26
  0x8001e2818:  17fffdf4    b #-2096
  0x8001e281c:  94a70871    bl #43786692
  0x8001e2820:  aa0003f7    mov x23, x0
  0x8001e2824:  94a7083f    bl #43786492
  0x8001e2828:  2a0003f6    mov w22, w0
  0x8001e282c:  aa1703e0    mov x0, x23
  0x8001e2830:  17ffff5d    b #-652
  0x8001e2834:  2a1f03e0    mov w0, wzr
  0x8001e2838:  d65f03c0    ret
  0x8001e283c:  aa1303e0    mov x0, x19
  0x8001e2840:  d63f0140    blr x10
  0x8001e2844:  17fffdb8    b #-2336
  0x8001e2848:  aa1303e0    mov x0, x19
  0x8001e284c:  d63f0120    blr x9
  0x8001e2850:  39446268    ldrb w8, [x19, #280]
  0x8001e2854:  3607b640    tbz w0, #0, #-2360
  0x8001e2858:  52b7f009    mov w9, #-1082130432
  0x8001e285c:  121e7908    and w8, w8, #0xfffffffd
  0x8001e2860:  3900827f    strb wzr, [x19, #32]
  0x8001e2864:  f803c269    stur x9, [x19, #60]
  0x8001e2868:  f9403669    ldr x9, [x19, #104]
  0x8001e286c:  39046268    strb w8, [x19, #280]
  0x8001e2870:  f9001a7f    str xzr, [x19, #48]
  0x8001e2874:  b9003a7f    str wzr, [x19, #56]
  0x8001e2878:  b9005a7f    str wzr, [x19, #88]
  0x8001e287c:  3901727f    strb wzr, [x19, #92]
  0x8001e2880:  b4ffb4e9    cbz x9, #-2404
  0x8001e2884:  b900093f    str wzr, [x9, #8]
  0x8001e2888:  39446268    ldrb w8, [x19, #280]
  0x8001e288c:  17fffda4    b #-2416
  0x8001e2890:  aa1303e0    mov x0, x19
  0x8001e2894:  d63f0100    blr x8
  0x8001e2898:  2a0003e1    mov w1, w0
  0x8001e289c:  17fffdad    b #-2380
  0x8001e28a0:  aa1403e0    mov x0, x20
  0x8001e28a4:  d63f0100    blr x8
  0x8001e28a8:  aa0003f4    mov x20, x0
  0x8001e28ac:  17fffdb4    b #-2352
  0x8001e28b0:  aa1403e0    mov x0, x20
  0x8001e28b4:  d63f0100    blr x8
  0x8001e28b8:  17fffdef    b #-2116
  0x8001e28bc:  d63f0100    blr x8
  0x8001e28c0:  2a0003f6    mov w22, w0
  0x8001e28c4:  17fffdc5    b #-2284
  0x8001e28c8:  c85f7f28    ldxr x8, [x25]
  0x8001e28cc:  91000508    add x8, x8, #1
  0x8001e28d0:  c8097f28    stxr w9, x8, [x25]
  0x8001e28d4:  34ffbcc9    cbz w9, #-2152
  0x8001e28d8:  17fffffc    b #-16
  0x8001e28dc:  5280801a    mov w26, #1024
  0x8001e28e0:  17fffdc8    b #-2272
  0x8001e28e4:  aa1503e0    mov x0, x21
  0x8001e28e8:  94a707be    bl #43785976
  0x8001e28ec:  3607b940    tbz w0, #0, #-2264
  0x8001e28f0:  17fffdc6    b #-2280
  0x8001e28f4:  aa1303e0    mov x0, x19
  0x8001e28f8:  aa1f03e1    mov x1, xzr
  0x8001e28fc:  d63f0100    blr x8
  0x8001e2900:  17fffe6b    b #-1620
  0x8001e2904:  7100051f    cmp w8, #1
  0x8001e2908:  54ffcd21    b.ne #-1628
  0x8001e290c:  aa1303e0    mov x0, x19
  0x8001e2910:  2a1f03e1    mov w1, wzr
  0x8001e2914:  aa1f03e2    mov x2, xzr
  0x8001e2918:  94a1fde3    bl #42465164
  0x8001e291c:  17fffe64    b #-1648
  0x8001e2920:  2a1f03e1    mov w1, wzr
  0x8001e2924:  d63f0100    blr x8
  0x8001e2928:  17fffde7    b #-2148
  0x8001e292c:  2a1f03e1    mov w1, wzr
  0x8001e2930:  d63f0100    blr x8
  0x8001e2934:  17fffe15    b #-1964
  0x8001e2938:  2a1f03e1    mov w1, wzr
  0x8001e293c:  d63f0100    blr x8
  0x8001e2940:  f94002e9    ldr x9, [x23]
  0x8001e2944:  aa0003e8    mov x8, x0
  0x8001e2948:  f9406520    ldr x0, [x9, #200]
  0x8001e294c:  17fffe40    b #-1792
  0x8001e2950:  2a1f03e1    mov w1, wzr
  0x8001e2954:  d63f0100    blr x8
  0x8001e2958:  17fffe44    b #-1776
  0x8001e295c:  f94002e8    ldr x8, [x23]
  0x8001e2960:  2a1f03e1    mov w1, wzr
  0x8001e2964:  f9406500    ldr x0, [x8, #200]
  0x8001e2968:  f9400008    ldr x8, [x0]
  0x8001e296c:  f9403108    ldr x8, [x8, #96]
  0x8001e2970:  d63f0100    blr x8
  0x8001e2974:  94a2421e    bl #42535032
  0x8001e2978:  f9403e68    ldr x8, [x19, #120]
  0x8001e297c:  f9000fe0    str x0, [sp, #24]
  0x8001e2980:  f90017e8    str x8, [sp, #40]
  0x8001e2984:  17fffe3e    b #-1800
  0x8001e2988:  aa1303e0    mov x0, x19
  0x8001e298c:  d63f0100    blr x8
  0x8001e2990:  17fffeea    b #-1112
  0x8001e2994:  aa1403e0    mov x0, x20
  0x8001e2998:  d63f0100    blr x8
  0x8001e299c:  17ffff20    b #-896
  0x8001e29a0:  d63f0100    blr x8
  0x8001e29a4:  2a0003f6    mov w22, w0
  0x8001e29a8:  17fffefb    b #-1044
  0x8001e29ac:  52808017    mov w23, #1024
  0x8001e29b0:  17ffff03    b #-1012
  0x8001e29b4:  d34aff48    lsr x8, x26, #10
  0x8001e29b8:  927f1108    and x8, x8, #0x3e
  0x8001e29bc:  17ffff03    b #-1012
  0x8001e29c0:  9102a280    add x0, x20, #168
  0x8001e29c4:  aa1503e1    mov x1, x21
  0x8001e29c8:  94a70c3a    bl #43790568
  0x8001e29cc:  f9405a88    ldr x8, [x20, #176]
  0x8001e29d0:  d351fd08    lsr x8, x8, #17
  0x8001e29d4:  b4ffb2a8    cbz x8, #-2476
  0x8001e29d8:  17fffffa    b #-24
  0x8001e29dc:  2a1f03e1    mov w1, wzr
  0x8001e29e0:  d63f0100    blr x8
  0x8001e29e4:  17fffe43    b #-1780
  0x8001e29e8:  aa0003f6    mov x22, x0
  0x8001e29ec:  aa1303e0    mov x0, x19
  0x8001e29f0:  d63f0100    blr x8
  0x8001e29f4:  2a0003e8    mov w8, w0
  0x8001e29f8:  aa1603e0    mov x0, x22
  0x8001e29fc:  35ffcd48    cbnz w8, #-1624
  0x8001e2a00:  17fffe4a    b #-1752
  0x8001e2a04:  d001bb48    adrp x8, #58105856
  0x8001e2a08:  aa0003fc    mov x28, x0
  0x8001e2a0c:  f9454108    ldr x8, [x8, #2688]
  0x8001e2a10:  aa0803e0    mov x0, x8
  0x8001e2a14:  94a703e3    bl #43782028
  0x8001e2a18:  2a0003e8    mov w8, w0
  0x8001e2a1c:  aa1c03e0    mov x0, x28
  0x8001e2a20:  34ffc928    cbz w8, #-1756
  0x8001e2a24:  d001bb48    adrp x8, #58105856
  0x8001e2a28:  d001bb49    adrp x9, #58105856
  0x8001e2a2c:  f9454508    ldr x8, [x8, #2696]
  0x8001e2a30:  f9453d29    ldr x9, [x9, #2680]
  0x8001e2a34:  d001bb40    adrp x0, #58105856
  0x8001e2a38:  91004108    add x8, x8, #16
  0x8001e2a3c:  f9000128    str x8, [x9]
  0x8001e2a40:  f9454000    ldr x0, [x0, #2688]
  0x8001e2a44:  94a703db    bl #43781996
  0x8001e2a48:  aa1c03e0    mov x0, x28
  0x8001e2a4c:  17fffe3e    b #-1800
  0x8001e2a50:  d001bb41    adrp x1, #58105856
  0x8001e2a54:  f9453c21    ldr x1, [x1, #2680]
  0x8001e2a58:  d63f0100    blr x8
  0x8001e2a5c:  b5ffc860    cbnz x0, #-1780
  0x8001e2a60:  aa1f03e0    mov x0, xzr
  0x8001e2a64:  17fffe41    b #-1788
  0x8001e2a68:  aa0003fb    mov x27, x0
  0x8001e2a6c:  d001bb40    adrp x0, #58105856
  0x8001e2a70:  f9454000    ldr x0, [x0, #2688]
  0x8001e2a74:  94a703cb    bl #43781932
  0x8001e2a78:  34000140    cbz w0, #40
  0x8001e2a7c:  d001bb48    adrp x8, #58105856
  0x8001e2a80:  d001bb49    adrp x9, #58105856
  0x8001e2a84:  f9454508    ldr x8, [x8, #2696]
  0x8001e2a88:  f9453d29    ldr x9, [x9, #2680]
  0x8001e2a8c:  d001bb40    adrp x0, #58105856
  0x8001e2a90:  91004108    add x8, x8, #16
  0x8001e2a94:  f9000128    str x8, [x9]
  0x8001e2a98:  f9454000    ldr x0, [x0, #2688]
  0x8001e2a9c:  94a703c5    bl #43781908
  0x8001e2aa0:  aa1b03e0    mov x0, x27
  0x8001e2aa4:  17fffe31    b #-1852
  0x8001e2aa8:  f9400368    ldr x8, [x27]
  0x8001e2aac:  b9003e7f    str wzr, [x19, #60]
  0x8001e2ab0:  f8024268    stur x8, [x19, #36]
  0x8001e2ab4:  5e140401    mov s1, v0.s[2]
  0x8001e2ab8:  9e660008    fmov x8, d0
  0x8001e2abc:  b9400b6a    ldr w10, [x27, #8]
  0x8001e2ac0:  1e214020    fneg s0, s1
  0x8001e2ac4:  d360fd09    lsr x9, x8, #32
  0x8001e2ac8:  52010108    eor w8, w8, #0x80000000
  0x8001e2acc:  52010129    eor w9, w9, #0x80000000
  0x8001e2ad0:  2905a26a    stp w10, w8, [x19, #44]
  0x8001e2ad4:  b9003669    str w9, [x19, #52]
  0x8001e2ad8:  bd003a60    str s0, [x19, #56]
  0x8001e2adc:  2f00e400    movi d0, #0000000000000000
  0x8001e2ae0:  17fffefa    b #-1048
  0x8001e2ae4:  9100e018    add x24, x0, #56
  0x8001e2ae8:  aa0003f7    mov x23, x0
  0x8001e2aec:  aa1803e0    mov x0, x24
  0x8001e2af0:  94a7055c    bl #43783536
  0x8001e2af4:  f90007f7    str x23, [sp, #8]
  0x8001e2af8:  f94016f7    ldr x23, [x23, #40]
  0x8001e2afc:  aa1803e0    mov x0, x24
  0x8001e2b00:  94a7055c    bl #43783536
  0x8001e2b04:  945a681f    bl #23699580
  0x8001e2b08:  b4000f97    cbz x23, #496
  0x8001e2b0c:  f94002e8    ldr x8, [x23]
  0x8001e2b10:  aa0003e1    mov x1, x0
  0x8001e2b14:  aa1703e0    mov x0, x23
  0x8001e2b18:  f9400108    ldr x8, [x8]
  0x8001e2b1c:  d63f0100    blr x8
  0x8001e2b20:  b4000ec0    cbz x0, #472
  0x8001e2b24:  b9407808    ldr w8, [x0, #120]
  0x8001e2b28:  b001bb57    adrp x23, #58101760
  0x8001e2b2c:  d001bb58    adrp x24, #58105856
  0x8001e2b30:  f94562f7    ldr x23, [x23, #2752]
  0x8001e2b34:  6a1c011f    tst w8, w28
  0x8001e2b38:  f9477f18    ldr x24, [x24, #3832]
  0x8001e2b3c:  54ffc340    b.eq #-1944
  0x8001e2b40:  b9407c08    ldr w8, [x0, #124]
  0x8001e2b44:  6a16011f    tst w8, w22
  0x8001e2b48:  54ffc2a1    b.ne #-1964
  0x8001e2b4c:  17fffe16    b #-1960
  0x8001e2b50:  51001d08    sub w8, w8, #7
  0x8001e2b54:  7100111f    cmp w8, #4
  0x8001e2b58:  54000603    b.lo #192
  0x8001e2b5c:  f9401416    ldr x22, [x0, #40]
  0x8001e2b60:  b40005d6    cbz x22, #184
  0x8001e2b64:  f94002c8    ldr x8, [x22]
  0x8001e2b68:  9001bca9    adrp x9, #58277888
  0x8001e2b6c:  f9400908    ldr x8, [x8, #16]
  0x8001e2b70:  f9411d29    ldr x9, [x9, #568]
  0x8001e2b74:  eb09011f    cmp x8, x9
  0x8001e2b78:  540005a0    b.eq #180
  0x8001e2b7c:  9001bca9    adrp x9, #58277888
  0x8001e2b80:  f9413529    ldr x9, [x9, #616]
  0x8001e2b84:  eb09011f    cmp x8, x9
  0x8001e2b88:  54000520    b.eq #164
  0x8001e2b8c:  9001bca9    adrp x9, #58277888
  0x8001e2b90:  f9412929    ldr x9, [x9, #592]
  0x8001e2b94:  eb09011f    cmp x8, x9
  0x8001e2b98:  540004a0    b.eq #148
  0x8001e2b9c:  aa1603e0    mov x0, x22
  0x8001e2ba0:  d63f0100    blr x8
  0x8001e2ba4:  7100441f    cmp w0, #17
  0x8001e2ba8:  54000421    b.ne #132
  0x8001e2bac:  f9403ec9    ldr x9, [x22, #120]
  0x8001e2bb0:  b9401928    ldr w8, [x9, #24]
  0x8001e2bb4:  340003c8    cbz w8, #120
  0x8001e2bb8:  f940092b    ldr x11, [x9, #16]
  0x8001e2bbc:  f940316a    ldr x10, [x11, #96]
  0x8001e2bc0:  b40001ea    cbz x10, #60
  0x8001e2bc4:  294aad6e    ldp w14, w11, [x11, #84]
  0x8001e2bc8:  53107f4d    lsr w13, w26, #16
  0x8001e2bcc:  12003f4c    and w12, w26, #0xffff
  0x8001e2bd0:  510005cf    sub w15, w14, #1
  0x8001e2bd4:  5100056b    sub w11, w11, #1
  0x8001e2bd8:  6b0f01bf    cmp w13, w15
  0x8001e2bdc:  1a8fb1ad    csel w13, w13, w15, lt
  0x8001e2be0:  6b0b019f    cmp w12, w11
  0x8001e2be4:  1a8bb18b    csel w11, w12, w11, lt
  0x8001e2be8:  5280006c    mov w12, #3
  0x8001e2bec:  1b0e356b    madd w11, w11, w14, w13
  0x8001e2bf0:  2a0b098b    orr w11, w12, w11, lsl #2
  0x8001e2bf4:  8b2bc54a    add x10, x10, w11, sxtw #1
  0x8001e2bf8:  3940054a    ldrb w10, [x10, #1]
  0x8001e2bfc:  f9401129    ldr x9, [x9, #32]
  0x8001e2c00:  2a0a03eb    mov w11, w10
  0x8001e2c04:  6b0a011f    cmp w8, w10
  0x8001e2c08:  9a9f8168    csel x8, x11, xzr, hi
  0x8001e2c0c:  b4000109    cbz x9, #32
  0x8001e2c10:  8b081136    add x22, x9, x8, lsl #4
  0x8001e2c14:  17fffe43    b #-1780
  0x8001e2c18:  f94002a8    ldr x8, [x21]
  0x8001e2c1c:  aa1503e0    mov x0, x21
  0x8001e2c20:  f9400d08    ldr x8, [x8, #24]
  0x8001e2c24:  d63f0100    blr x8
  0x8001e2c28:  17fffecb    b #-1236
  0x8001e2c2c:  f94002c8    ldr x8, [x22]
  0x8001e2c30:  9001bca9    adrp x9, #58277888
  0x8001e2c34:  f9400d08    ldr x8, [x8, #24]
  0x8001e2c38:  f9410929    ldr x9, [x9, #528]
  0x8001e2c3c:  eb09011f    cmp x8, x9
  0x8001e2c40:  54000b81    b.ne #368
  0x8001e2c44:  f94006d6    ldr x22, [x22, #8]
  0x8001e2c48:  17fffe35    b #-1836
  0x8001e2c4c:  f8448c08    ldr x8, [x0, #72]!
  0x8001e2c50:  52800409    mov w9, #32
  0x8001e2c54:  385d400a    ldurb w10, [x0, #-44]
  0x8001e2c58:  1100074b    add w11, w26, #1
  0x8001e2c5c:  aa1f03f6    mov x22, xzr
  0x8001e2c60:  8b000108    add x8, x8, x0
  0x8001e2c64:  4b0a0129    sub w9, w9, w10
  0x8001e2c68:  1aca216a    lsl w10, w11, w10
  0x8001e2c6c:  9ac92749    lsr x9, x26, x9
  0x8001e2c70:  5100054a    sub w10, w10, #1
  0x8001e2c74:  92403d29    and x9, x9, #0xffff
  0x8001e2c78:  8b091908    add x8, x8, x9, lsl #6
  0x8001e2c7c:  f8430d09    ldr x9, [x8, #48]!
  0x8001e2c80:  b900a3ea    str w10, [sp, #160]
  0x8001e2c84:  b4ffc4c9    cbz x9, #-1896
  0x8001e2c88:  8b080120    add x0, x9, x8
  0x8001e2c8c:  b4ffc480    cbz x0, #-1904
  0x8001e2c90:  910283e1    add x1, sp, #160
  0x8001e2c94:  9402aa90    bl #698944
  0x8001e2c98:  aa0003f6    mov x22, x0
  0x8001e2c9c:  17fffe20    b #-1920
  0x8001e2ca0:  aa1f03f6    mov x22, xzr
  0x8001e2ca4:  17fffe18    b #-1952
  0x8001e2ca8:  f9400008    ldr x8, [x0]
  0x8001e2cac:  f9400508    ldr x8, [x8, #8]
  0x8001e2cb0:  d63f0100    blr x8
  0x8001e2cb4:  17fffe1a    b #-1944
  0x8001e2cb8:  aa1f03f6    mov x22, xzr
  0x8001e2cbc:  17fffea7    b #-1380
  0x8001e2cc0:  d001bba0    adrp x0, #58155008
  0x8001e2cc4:  f9443c00    ldr x0, [x0, #2168]
  0x8001e2cc8:  94a70336    bl #43781336
  0x8001e2ccc:  34ffd1a0    cbz w0, #-1484
  0x8001e2cd0:  d001bba8    adrp x8, #58155008
  0x8001e2cd4:  d001bb49    adrp x9, #58105856
  0x8001e2cd8:  f9443908    ldr x8, [x8, #2160]
  0x8001e2cdc:  f9402d29    ldr x9, [x9, #88]
  0x8001e2ce0:  d001bba0    adrp x0, #58155008
  0x8001e2ce4:  91004129    add x9, x9, #16
  0x8001e2ce8:  f9000109    str x9, [x8]
  0x8001e2cec:  f9443c00    ldr x0, [x0, #2168]
  0x8001e2cf0:  94a70330    bl #43781312
  0x8001e2cf4:  17fffe83    b #-1524
  0x8001e2cf8:  12800008    mov w8, #-1
  0x8001e2cfc:  aa1803e0    mov x0, x24
  0x8001e2d00:  b900a3e8    str w8, [sp, #160]
  0x8001e2d04:  b90013e8    str w8, [sp, #16]
  0x8001e2d08:  94a704d6    bl #43783000
  0x8001e2d0c:  f94007f6    ldr x22, [sp, #8]
  0x8001e2d10:  aa1803e0    mov x0, x24
  0x8001e2d14:  f94016d7    ldr x23, [x22, #40]
  0x8001e2d18:  94a704d6    bl #43783000
  0x8001e2d1c:  f94036c8    ldr x8, [x22, #104]
  0x8001e2d20:  910283e0    add x0, sp, #160
  0x8001e2d24:  910043e1    add x1, sp, #16
  0x8001e2d28:  aa1703e2    mov x2, x23
  0x8001e2d2c:  aa1503e3    mov x3, x21
  0x8001e2d30:  53051504    ubfx w4, w8, #5, #1
  0x8001e2d34:  949ebeb0    bl #41614016
  0x8001e2d38:  b940a3e8    ldr w8, [sp, #160]
  0x8001e2d3c:  9ada2508    lsr x8, x8, x26
  0x8001e2d40:  360001a8    tbz w8, #0, #52
  0x8001e2d44:  b94013e8    ldr w8, [sp, #16]
  0x8001e2d48:  b001bb57    adrp x23, #58101760
  0x8001e2d4c:  d001bb58    adrp x24, #58105856
  0x8001e2d50:  f94562f7    ldr x23, [x23, #2752]
  0x8001e2d54:  9adb2508    lsr x8, x8, x27
  0x8001e2d58:  f9477f18    ldr x24, [x24, #3832]
  0x8001e2d5c:  3707b208    tbnz w8, #0, #-2496
  0x8001e2d60:  17fffd91    b #-2492
  0x8001e2d64:  f94062a0    ldr x0, [x21, #192]
  0x8001e2d68:  17fffda6    b #-2408
  0x8001e2d6c:  f9405ea0    ldr x0, [x21, #184]
  0x8001e2d70:  17fffda4    b #-2416
  0x8001e2d74:  b001bb57    adrp x23, #58101760
  0x8001e2d78:  d001bb58    adrp x24, #58105856
  0x8001e2d7c:  f94562f7    ldr x23, [x23, #2752]
  0x8001e2d80:  f9477f18    ldr x24, [x24, #3832]
  0x8001e2d84:  17fffd88    b #-2528
  0x8001e2d88:  f275111f    tst x8, #0xf800
  0x8001e2d8c:  aa0803fa    mov x26, x8
  0x8001e2d90:  54ffc1e0    b.eq #-1988
  0x8001e2d94:  c85f7f28    ldxr x8, [x25]
  0x8001e2d98:  eb1a011f    cmp x8, x26
  0x8001e2d9c:  54ffff61    b.ne #-20
  0x8001e2da0:  cb170348    sub x8, x26, x23
  0x8001e2da4:  c8097f28    stxr w9, x8, [x25]
  0x8001e2da8:  34ffc3a9    cbz w9, #-1932
  0x8001e2dac:  17fffffa    b #-24
  0x8001e2db0:  aa1603e0    mov x0, x22
  0x8001e2db4:  d63f0100    blr x8
  0x8001e2db8:  17ffffb8    b #-288
  0x8001e2dbc:  9270bd09    and x9, x8, #0xffffffffffff0000
  0x8001e2dc0:  aa0803fc    mov x28, x8
  0x8001e2dc4:  f140413f    cmp x9, #16, lsl #12
  0x8001e2dc8:  54ff9261    b.ne #-3508
  0x8001e2dcc:  c85f7f28    ldxr x8, [x25]
  0x8001e2dd0:  eb1c011f    cmp x8, x28
  0x8001e2dd4:  54ffff41    b.ne #-24
  0x8001e2dd8:  8b1a0388    add x8, x28, x26
  0x8001e2ddc:  c8097f28    stxr w9, x8, [x25]
  0x8001e2de0:  34ff9469    cbz w9, #-3444
  0x8001e2de4:  17fffffa    b #-24

