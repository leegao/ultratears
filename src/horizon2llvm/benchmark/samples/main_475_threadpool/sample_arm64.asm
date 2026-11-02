; UltraTears chunk main_475_threadpool: 1 functions [0x80084d7f0..0x80084dcc8)

; Function f_80084d7f0 [0x80084d7f0..0x80084dcc8)
f_80084d7f0:
  0x80084d7f0:  a9bc7bfd    stp x29, x30, [sp, #-64]!
  0x80084d7f4:  a9015ff8    stp x24, x23, [sp, #16]
  0x80084d7f8:  a90257f6    stp x22, x21, [sp, #32]
  0x80084d7fc:  a9034ff4    stp x20, x19, [sp, #48]
  0x80084d800:  910003fd    mov x29, sp
  0x80084d804:  aa0003f3    mov x19, x0
  0x80084d808:  b5000b81    cbnz x1, #368
  0x80084d80c:  b0019368    adrp x8, #52875264
  0x80084d810:  91310108    add x8, x8, #3136
  0x80084d814:  f9400114    ldr x20, [x8]
  0x80084d818:  b4001374    cbz x20, #620
  0x80084d81c:  b40006d3    cbz x19, #216
  0x80084d820:  b0019368    adrp x8, #52875264
  0x80084d824:  91368108    add x8, x8, #3488
  0x80084d828:  f9400108    ldr x8, [x8]
  0x80084d82c:  b4001228    cbz x8, #580
  0x80084d830:  b9404900    ldr w0, [x8, #72]
  0x80084d834:  948d58a3    bl #37053068
  0x80084d838:  b40011c0    cbz x0, #568
  0x80084d83c:  f9404414    ldr x20, [x0, #136]
  0x80084d840:  91024017    add x23, x0, #144
  0x80084d844:  c85f7ef5    ldxr x21, [x23]
  0x80084d848:  b24002a8    orr x8, x21, #0x1
  0x80084d84c:  c8097ee8    stxr w9, x8, [x23]
  0x80084d850:  35ffffa9    cbnz w9, #-12
  0x80084d854:  b4001035    cbz x21, #516
  0x80084d858:  b94052a8    ldr w8, [x21, #80]
  0x80084d85c:  35000fe8    cbnz w8, #508
  0x80084d860:  f94002a8    ldr x8, [x21]
  0x80084d864:  90018889    adrp x9, #51445760
  0x80084d868:  f9404908    ldr x8, [x8, #144]
  0x80084d86c:  f944a129    ldr x9, [x9, #2368]
  0x80084d870:  eb09011f    cmp x8, x9
  0x80084d874:  540004a1    b.ne #148
  0x80084d878:  b94082aa    ldr w10, [x21, #128]
  0x80084d87c:  7100055f    cmp w10, #1
  0x80084d880:  a942a6a8    ldp x8, x9, [x21, #40]
  0x80084d884:  9103410b    add x11, x8, #208
  0x80084d888:  9a88016a    csel x10, x11, x8, eq
  0x80084d88c:  54001081    b.ne #528
  0x80084d890:  eb13015f    cmp x10, x19
  0x80084d894:  54000c28    b.hi #388
  0x80084d898:  8b080128    add x8, x9, x8
  0x80084d89c:  eb13011f    cmp x8, x19
  0x80084d8a0:  54000bc9    b.ls #376
  0x80084d8a4:  2a1f03e8    mov w8, wzr
  0x80084d8a8:  aa1f03f8    mov x24, xzr
  0x80084d8ac:  c85f7ee9    ldxr x9, [x23]
  0x80084d8b0:  927ff929    and x9, x9, #0xfffffffffffffffe
  0x80084d8b4:  c80a7ee9    stxr w10, x9, [x23]
  0x80084d8b8:  35ffffaa    cbnz w10, #-12
  0x80084d8bc:  35000708    cbnz w8, #224
  0x80084d8c0:  aa1503f4    mov x20, x21
  0x80084d8c4:  b4000195    cbz x21, #48
  0x80084d8c8:  f9400288    ldr x8, [x20]
  0x80084d8cc:  f9401d02    ldr x2, [x8, #56]
  0x80084d8d0:  d000fb28    adrp x8, #32923648
  0x80084d8d4:  913c3108    add x8, x8, #3852
  0x80084d8d8:  eb08005f    cmp x2, x8
  0x80084d8dc:  540000a0    b.eq #20
  0x80084d8e0:  9000fb48    adrp x8, #32931840
  0x80084d8e4:  913c5108    add x8, x8, #3860
  0x80084d8e8:  eb08005f    cmp x2, x8
  0x80084d8ec:  54000381    b.ne #112
  0x80084d8f0:  b940aa9f    ldr wzr, [x20, #168]
  0x80084d8f4:  a9434ff4    ldp x20, x19, [sp, #48]
  0x80084d8f8:  a94257f6    ldp x22, x21, [sp, #32]
  0x80084d8fc:  a9415ff8    ldp x24, x23, [sp, #16]
  0x80084d900:  a8c47bfd    ldp x29, x30, [sp], #64
  0x80084d904:  d65f03c0    ret
  0x80084d908:  f0ffd209    adrp x9, #-6017024
  0x80084d90c:  91220129    add x9, x9, #2176
  0x80084d910:  eb09011f    cmp x8, x9
  0x80084d914:  540006e0    b.eq #220
  0x80084d918:  d0ffd189    adrp x9, #-6086656
  0x80084d91c:  910f5129    add x9, x9, #980
  0x80084d920:  eb09011f    cmp x8, x9
  0x80084d924:  540008e1    b.ne #284
  0x80084d928:  b94082a8    ldr w8, [x21, #128]
  0x80084d92c:  7100051f    cmp w8, #1
  0x80084d930:  f94016a9    ldr x9, [x21, #40]
  0x80084d934:  54000b81    b.ne #368
  0x80084d938:  f9401aa8    ldr x8, [x21, #48]
  0x80084d93c:  9103812a    add x10, x9, #224
  0x80084d940:  8b090108    add x8, x8, x9
  0x80084d944:  eb13015f    cmp x10, x19
  0x80084d948:  54000768    b.hi #236
  0x80084d94c:  eb13011f    cmp x8, x19
  0x80084d950:  aa1503f8    mov x24, x21
  0x80084d954:  54fffa88    b.hi #-176
  0x80084d958:  14000038    b #224
  0x80084d95c:  aa1403e0    mov x0, x20
  0x80084d960:  aa1303e1    mov x1, x19
  0x80084d964:  a9434ff4    ldp x20, x19, [sp, #48]
  0x80084d968:  a94257f6    ldp x22, x21, [sp, #32]
  0x80084d96c:  a9415ff8    ldp x24, x23, [sp, #16]
  0x80084d970:  a8c47bfd    ldp x29, x30, [sp], #64
  0x80084d974:  d61f0040    br x2
  0x80084d978:  f9400028    ldr x8, [x1]
  0x80084d97c:  f9401d02    ldr x2, [x8, #56]
  0x80084d980:  9000fb48    adrp x8, #32931840
  0x80084d984:  913c5108    add x8, x8, #3860
  0x80084d988:  eb08005f    cmp x2, x8
  0x80084d98c:  54000261    b.ne #76
  0x80084d990:  b4fffb33    cbz x19, #-156
  0x80084d994:  b940a83f    ldr wzr, [x1, #168]
  0x80084d998:  17ffffd7    b #-164
  0x80084d99c:  2a1f03f6    mov w22, wzr
  0x80084d9a0:  b40008f4    cbz x20, #284
  0x80084d9a4:  eb18029f    cmp x20, x24
  0x80084d9a8:  540008a0    b.eq #276
  0x80084d9ac:  b9405288    ldr w8, [x20, #80]
  0x80084d9b0:  35000868    cbnz w8, #268
  0x80084d9b4:  f9400288    ldr x8, [x20]
  0x80084d9b8:  aa1403e0    mov x0, x20
  0x80084d9bc:  aa1303e1    mov x1, x19
  0x80084d9c0:  f9404908    ldr x8, [x8, #144]
  0x80084d9c4:  d63f0100    blr x8
  0x80084d9c8:  36000780    tbz w0, #0, #240
  0x80084d9cc:  3707f7f6    tbnz w22, #0, #-260
  0x80084d9d0:  f90002f4    str x20, [x23]
  0x80084d9d4:  17ffffbd    b #-268
  0x80084d9d8:  f0fff4c8    adrp x8, #-1462272
  0x80084d9dc:  91236108    add x8, x8, #2264
  0x80084d9e0:  eb08005f    cmp x2, x8
  0x80084d9e4:  54000ea0    b.eq #468
  0x80084d9e8:  aa0103e0    mov x0, x1
  0x80084d9ec:  17ffffdd    b #-140
  0x80084d9f0:  b94082a9    ldr w9, [x21, #128]
  0x80084d9f4:  7100053f    cmp w9, #1
  0x80084d9f8:  f94016a8    ldr x8, [x21, #40]
  0x80084d9fc:  54000321    b.ne #100
  0x80084da00:  f9401aa9    ldr x9, [x21, #48]
  0x80084da04:  9103010a    add x10, x8, #192
  0x80084da08:  eb13015f    cmp x10, x19
  0x80084da0c:  54000148    b.hi #40
  0x80084da10:  8b080128    add x8, x9, x8
  0x80084da14:  17ffffce    b #-200
  0x80084da18:  910222b6    add x22, x21, #136
  0x80084da1c:  aa1603e0    mov x0, x22
  0x80084da20:  948d5990    bl #37054016
  0x80084da24:  f94062a8    ldr x8, [x21, #192]
  0x80084da28:  b5000e28    cbnz x8, #452
  0x80084da2c:  aa1603e0    mov x0, x22
  0x80084da30:  948d5990    bl #37054016
  0x80084da34:  aa1503f8    mov x24, x21
  0x80084da38:  52800028    mov w8, #1
  0x80084da3c:  17ffff9c    b #-400
  0x80084da40:  aa1503e0    mov x0, x21
  0x80084da44:  aa1303e1    mov x1, x19
  0x80084da48:  d63f0100    blr x8
  0x80084da4c:  aa1503f8    mov x24, x21
  0x80084da50:  3707f2a0    tbnz w0, #0, #-428
  0x80084da54:  17fffff9    b #-28
  0x80084da58:  aa1f03f8    mov x24, xzr
  0x80084da5c:  17fffff7    b #-36
  0x80084da60:  f9401aa9    ldr x9, [x21, #48]
  0x80084da64:  aa0803ea    mov x10, x8
  0x80084da68:  d1030129    sub x9, x9, #192
  0x80084da6c:  17ffffe7    b #-100
  0x80084da70:  f9400694    ldr x20, [x20, #8]
  0x80084da74:  aa1f03f7    mov x23, xzr
  0x80084da78:  aa1f03f8    mov x24, xzr
  0x80084da7c:  52800036    mov w22, #1
  0x80084da80:  17ffffc8    b #-224
  0x80084da84:  aa1303e0    mov x0, x19
  0x80084da88:  a9434ff4    ldp x20, x19, [sp, #48]
  0x80084da8c:  a94257f6    ldp x22, x21, [sp, #32]
  0x80084da90:  a9415ff8    ldp x24, x23, [sp, #16]
  0x80084da94:  a8c47bfd    ldp x29, x30, [sp], #64
  0x80084da98:  17e13012    b #-8077240
  0x80084da9c:  d1034129    sub x9, x9, #208
  0x80084daa0:  17ffff7c    b #-528
  0x80084daa4:  f9401aa8    ldr x8, [x21, #48]
  0x80084daa8:  aa0903ea    mov x10, x9
  0x80084daac:  8b080128    add x8, x9, x8
  0x80084dab0:  d1038108    sub x8, x8, #224
  0x80084dab4:  17ffffa4    b #-368
  0x80084dab8:  aa1f03f4    mov x20, xzr
  0x80084dabc:  b0019360    adrp x0, #52875264
  0x80084dac0:  91308000    add x0, x0, #3104
  0x80084dac4:  948d5967    bl #37053852
  0x80084dac8:  370000b6    tbnz w22, #0, #20
  0x80084dacc:  f94002f5    ldr x21, [x23]
  0x80084dad0:  b4000075    cbz x21, #12
  0x80084dad4:  eb15031f    cmp x24, x21
  0x80084dad8:  540005c1    b.ne #184
  0x80084dadc:  b4000074    cbz x20, #12
  0x80084dae0:  eb18029f    cmp x20, x24
  0x80084dae4:  540009c1    b.ne #312
  0x80084dae8:  b0019369    adrp x9, #52875264
  0x80084daec:  912ea129    add x9, x9, #2984
  0x80084daf0:  b9800128    ldrsw x8, [x9]
  0x80084daf4:  34000228    cbz w8, #68
  0x80084daf8:  f9400534    ldr x20, [x9, #8]
  0x80084dafc:  d37df118    lsl x24, x8, #3
  0x80084db00:  37000676    tbnz w22, #0, #204
  0x80084db04:  f9400280    ldr x0, [x20]
  0x80084db08:  aa1303e1    mov x1, x19
  0x80084db0c:  97e90b6c    bl #-6017616
  0x80084db10:  b40000e0    cbz x0, #28
  0x80084db14:  aa0003f5    mov x21, x0
  0x80084db18:  f90002f5    str x21, [x23]
  0x80084db1c:  b0019360    adrp x0, #52875264
  0x80084db20:  91308000    add x0, x0, #3104
  0x80084db24:  948d5953    bl #37053772
  0x80084db28:  17ffff66    b #-616
  0x80084db2c:  91002294    add x20, x20, #8
  0x80084db30:  f1002318    subs x24, x24, #8
  0x80084db34:  54fffe81    b.ne #-48
  0x80084db38:  b0019368    adrp x8, #52875264
  0x80084db3c:  912f6108    add x8, x8, #3032
  0x80084db40:  b9800118    ldrsw x24, [x8]
  0x80084db44:  340008f8    cbz w24, #284
  0x80084db48:  f9400514    ldr x20, [x8, #8]
  0x80084db4c:  350007b6    cbnz w22, #244
  0x80084db50:  f9400280    ldr x0, [x20]
  0x80084db54:  aa1303e1    mov x1, x19
  0x80084db58:  97e90b59    bl #-6017692
  0x80084db5c:  aa0003f5    mov x21, x0
  0x80084db60:  b5fffdc0    cbnz x0, #-72
  0x80084db64:  d37df308    lsl x8, x24, #3
  0x80084db68:  91002294    add x20, x20, #8
  0x80084db6c:  d1002118    sub x24, x8, #8
  0x80084db70:  b4000798    cbz x24, #240
  0x80084db74:  f8408680    ldr x0, [x20], #8
  0x80084db78:  aa1303e1    mov x1, x19
  0x80084db7c:  97e90b50    bl #-6017728
  0x80084db80:  aa0003f5    mov x21, x0
  0x80084db84:  d1002318    sub x24, x24, #8
  0x80084db88:  b5fffc80    cbnz x0, #-112
  0x80084db8c:  17fffff9    b #-28
  0x80084db90:  aa1503e0    mov x0, x21
  0x80084db94:  aa1303e1    mov x1, x19
  0x80084db98:  97e90b49    bl #-6017756
  0x80084db9c:  aa1503f8    mov x24, x21
  0x80084dba0:  b4fff9e0    cbz x0, #-196
  0x80084dba4:  eb15001f    cmp x0, x21
  0x80084dba8:  54fffba0    b.eq #-140
  0x80084dbac:  f90002e0    str x0, [x23]
  0x80084dbb0:  aa0003f5    mov x21, x0
  0x80084dbb4:  17ffffda    b #-152
  0x80084dbb8:  b4ffe9f3    cbz x19, #-708
  0x80084dbbc:  f9405820    ldr x0, [x1, #176]
  0x80084dbc0:  f9400008    ldr x8, [x0]
  0x80084dbc4:  f9402102    ldr x2, [x8, #64]
  0x80084dbc8:  17ffff66    b #-616
  0x80084dbcc:  f9400280    ldr x0, [x20]
  0x80084dbd0:  aa1303e1    mov x1, x19
  0x80084dbd4:  97e90b3a    bl #-6017816
  0x80084dbd8:  b5fffec0    cbnz x0, #-40
  0x80084dbdc:  91002294    add x20, x20, #8
  0x80084dbe0:  f1002318    subs x24, x24, #8
  0x80084dbe4:  54ffff41    b.ne #-24
  0x80084dbe8:  17ffffd4    b #-176
  0x80084dbec:  b94082a9    ldr w9, [x21, #128]
  0x80084dbf0:  7100053f    cmp w9, #1
  0x80084dbf4:  54000501    b.ne #160
  0x80084dbf8:  eb13011f    cmp x8, x19
  0x80084dbfc:  540000a8    b.hi #20
  0x80084dc00:  f9400109    ldr x9, [x8]
  0x80084dc04:  8b080129    add x9, x9, x8
  0x80084dc08:  eb13013f    cmp x9, x19
  0x80084dc0c:  54000588    b.hi #176
  0x80084dc10:  f9400508    ldr x8, [x8, #8]
  0x80084dc14:  b4fff0c8    cbz x8, #-488
  0x80084dc18:  17fffff8    b #-32
  0x80084dc1c:  aa1403e0    mov x0, x20
  0x80084dc20:  aa1303e1    mov x1, x19
  0x80084dc24:  97e90b26    bl #-6017896
  0x80084dc28:  f100001f    cmp x0, #0
  0x80084dc2c:  aa0003f5    mov x21, x0
  0x80084dc30:  1a9f16c8    csinc w8, w22, wzr, ne
  0x80084dc34:  3607f728    tbz w8, #0, #-284
  0x80084dc38:  b5fff735    cbnz x21, #-284
  0x80084dc3c:  17ffffab    b #-340
  0x80084dc40:  d37df318    lsl x24, x24, #3
  0x80084dc44:  f9400280    ldr x0, [x20]
  0x80084dc48:  aa1303e1    mov x1, x19
  0x80084dc4c:  97e90b1c    bl #-6017936
  0x80084dc50:  b5fffb00    cbnz x0, #-160
  0x80084dc54:  91002294    add x20, x20, #8
  0x80084dc58:  f1002318    subs x24, x24, #8
  0x80084dc5c:  54ffff41    b.ne #-24
  0x80084dc60:  b0019368    adrp x8, #52875264
  0x80084dc64:  91302108    add x8, x8, #3080
  0x80084dc68:  f9400100    ldr x0, [x8]
  0x80084dc6c:  b4000100    cbz x0, #32
  0x80084dc70:  aa1303e1    mov x1, x19
  0x80084dc74:  97e90b12    bl #-6017976
  0x80084dc78:  f100001f    cmp x0, #0
  0x80084dc7c:  aa0003f5    mov x21, x0
  0x80084dc80:  1a9f16c8    csinc w8, w22, wzr, ne
  0x80084dc84:  3607f4a8    tbz w8, #0, #-364
  0x80084dc88:  b5fff4b5    cbnz x21, #-364
  0x80084dc8c:  aa1f03f5    mov x21, xzr
  0x80084dc90:  17ffffa3    b #-372
  0x80084dc94:  aa0803e9    mov x9, x8
  0x80084dc98:  f841052a    ldr x10, [x9], #16
  0x80084dc9c:  eb13013f    cmp x9, x19
  0x80084dca0:  54000089    b.ls #16
  0x80084dca4:  cb0a0129    sub x9, x9, x10
  0x80084dca8:  eb13013f    cmp x9, x19
  0x80084dcac:  54000089    b.ls #16
  0x80084dcb0:  f9400508    ldr x8, [x8, #8]
  0x80084dcb4:  b4ffebc8    cbz x8, #-648
  0x80084dcb8:  17fffff7    b #-36
  0x80084dcbc:  aa1603e0    mov x0, x22
  0x80084dcc0:  948d58ec    bl #37053360
  0x80084dcc4:  17fffef8    b #-1056

