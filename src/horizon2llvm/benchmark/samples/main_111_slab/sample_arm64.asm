; UltraTears chunk main_111_slab: 1 functions [0x8001bbb90..0x8001bd2a0)

; Function f_8001bbb90 [0x8001bbb90..0x8001bd2a0)
f_8001bbb90:
  0x8001bbb90:  d10643ff    sub sp, sp, #400
  0x8001bbb94:  a9137bfd    stp x29, x30, [sp, #304]
  0x8001bbb98:  a9146ffc    stp x28, x27, [sp, #320]
  0x8001bbb9c:  a91567fa    stp x26, x25, [sp, #336]
  0x8001bbba0:  a9165ff8    stp x24, x23, [sp, #352]
  0x8001bbba4:  a91757f6    stp x22, x21, [sp, #368]
  0x8001bbba8:  a9184ff4    stp x20, x19, [sp, #384]
  0x8001bbbac:  9104c3fd    add x29, sp, #304
  0x8001bbbb0:  a9402009    ldp x9, x8, [x0]
  0x8001bbbb4:  2a0303f7    mov w23, w3
  0x8001bbbb8:  f001bc83    adrp x3, #58273792
  0x8001bbbbc:  aa0203f3    mov x19, x2
  0x8001bbbc0:  aa0003f5    mov x21, x0
  0x8001bbbc4:  aa0103f6    mov x22, x1
  0x8001bbbc8:  f9400914    ldr x20, [x8, #16]
  0x8001bbbcc:  f9404d28    ldr x8, [x9, #152]
  0x8001bbbd0:  f9439863    ldr x3, [x3, #1840]
  0x8001bbbd4:  eb03011f    cmp x8, x3
  0x8001bbbd8:  54006161    b.ne #3116
  0x8001bbbdc:  79403aa8    ldrh w8, [x21, #28]
  0x8001bbbe0:  5280078a    mov w10, #60
  0x8001bbbe4:  f9402689    ldr x9, [x20, #72]
  0x8001bbbe8:  9baa2508    umaddl x8, w8, w10, x9
  0x8001bbbec:  b9801509    ldrsw x9, [x8, #20]
  0x8001bbbf0:  f9400a88    ldr x8, [x20, #16]
  0x8001bbbf4:  8b090100    add x0, x8, x9
  0x8001bbbf8:  b9403409    ldr w9, [x0, #52]
  0x8001bbbfc:  52b84005    mov w5, #-1040187392
  0x8001bbc00:  7100053f    cmp w9, #1
  0x8001bbc04:  5400064b    b.lt #200
  0x8001bbc08:  f940168b    ldr x11, [x20, #40]
  0x8001bbc0c:  aa1f03ea    mov x10, xzr
  0x8001bbc10:  b980300c    ldrsw x12, [x0, #48]
  0x8001bbc14:  f94002cd    ldr x13, [x22]
  0x8001bbc18:  910005ae    add x14, x13, #1
  0x8001bbc1c:  b980016b    ldrsw x11, [x11]
  0x8001bbc20:  8b0b010b    add x11, x8, x11
  0x8001bbc24:  8b0c116b    add x11, x11, x12, lsl #4
  0x8001bbc28:  b980250c    ldrsw x12, [x8, #36]
  0x8001bbc2c:  8b0c010c    add x12, x8, x12
  0x8001bbc30:  91000d8f    add x15, x12, #3
  0x8001bbc34:  d37ced50    lsl x16, x10, #4
  0x8001bbc38:  b8b06971    ldrsw x17, [x11, x16]
  0x8001bbc3c:  8b110190    add x16, x12, x17
  0x8001bbc40:  eb1001bf    cmp x13, x16
  0x8001bbc44:  54000620    b.eq #196
  0x8001bbc48:  aa1f03f0    mov x16, xzr
  0x8001bbc4c:  8b1101f1    add x17, x15, x17
  0x8001bbc50:  8b1001d2    add x18, x14, x16
  0x8001bbc54:  8b100220    add x0, x17, x16
  0x8001bbc58:  385ff241    ldurb w1, [x18, #-1]
  0x8001bbc5c:  385fd002    ldurb w2, [x0, #-3]
  0x8001bbc60:  6b02003f    cmp w1, w2
  0x8001bbc64:  540002e1    b.ne #92
  0x8001bbc68:  34000501    cbz w1, #160
  0x8001bbc6c:  f150021f    cmp x16, #1024, lsl #12
  0x8001bbc70:  54000280    b.eq #80
  0x8001bbc74:  387069c1    ldrb w1, [x14, x16]
  0x8001bbc78:  385fe002    ldurb w2, [x0, #-2]
  0x8001bbc7c:  6b02003f    cmp w1, w2
  0x8001bbc80:  54000201    b.ne #64
  0x8001bbc84:  34000421    cbz w1, #132
  0x8001bbc88:  39400641    ldrb w1, [x18, #1]
  0x8001bbc8c:  385ff000    ldurb w0, [x0, #-1]
  0x8001bbc90:  6b00003f    cmp w1, w0
  0x8001bbc94:  54000161    b.ne #44
  0x8001bbc98:  34000381    cbz w1, #112
  0x8001bbc9c:  39400a52    ldrb w18, [x18, #2]
  0x8001bbca0:  38706a20    ldrb w0, [x17, x16]
  0x8001bbca4:  6b00025f    cmp w18, w0
  0x8001bbca8:  540000c1    b.ne #24
  0x8001bbcac:  340002f2    cbz w18, #92
  0x8001bbcb0:  91001210    add x16, x16, #4
  0x8001bbcb4:  17ffffe7    b #-100
  0x8001bbcb8:  d503201f    nop
  0x8001bbcbc:  d503201f    nop
  0x8001bbcc0:  9100054a    add x10, x10, #1
  0x8001bbcc4:  eb09015f    cmp x10, x9
  0x8001bbcc8:  54fffb61    b.ne #-148
  0x8001bbccc:  2a0503f9    mov w25, w5
  0x8001bbcd0:  2a0403f4    mov w20, w4
  0x8001bbcd4:  3700aad7    tbnz w23, #0, #5464
  0x8001bbcd8:  52800037    mov w23, #1
  0x8001bbcdc:  9001bd28    adrp x8, #58343424
  0x8001bbce0:  f9455508    ldr x8, [x8, #2728]
  0x8001bbce4:  08dffd08    ldarb w8, [x8]
  0x8001bbce8:  3600ac48    tbz w8, #0, #5512
  0x8001bbcec:  9001bd3c    adrp x28, #58343424
  0x8001bbcf0:  2a1f03f8    mov w24, wzr
  0x8001bbcf4:  f945539c    ldr x28, [x28, #2720]
  0x8001bbcf8:  2a1f03fa    mov w26, wzr
  0x8001bbcfc:  2a1403e4    mov w4, w20
  0x8001bbd00:  2a1903e5    mov w5, w25
  0x8001bbd04:  14000012    b #72
  0x8001bbd08:  8b0a1174    add x20, x11, x10, lsl #4
  0x8001bbd0c:  aa1403fc    mov x28, x20
  0x8001bbd10:  b8408f9a    ldr w26, [x28, #8]!
  0x8001bbd14:  aa1c03f8    mov x24, x28
  0x8001bbd18:  78dfcf17    ldrsh w23, [x24, #-4]!
  0x8001bbd1c:  0a05035b    and w27, w26, w5
  0x8001bbd20:  36f80437    tbz w23, #31, #132
  0x8001bbd24:  529ff388    mov w8, #65436
  0x8001bbd28:  6b37211f    cmp w8, w23, uxth
  0x8001bbd2c:  54000d02    b.hs #416
  0x8001bbd30:  b9400388    ldr w8, [x28]
  0x8001bbd34:  2a1f03f7    mov w23, wzr
  0x8001bbd38:  9100329c    add x28, x20, #12
  0x8001bbd3c:  6b05037f    cmp w27, w5
  0x8001bbd40:  12077518    and w24, w8, #0xfe7fffff
  0x8001bbd44:  54000040    b.eq #8
  0x8001bbd48:  35001778    cbnz w24, #748
  0x8001bbd4c:  f9400274    ldr x20, [x19]
  0x8001bbd50:  710002ff    cmp w23, #0
  0x8001bbd54:  927ef788    and x8, x28, #0xfffffffffffffffc
  0x8001bbd58:  5318634a    ubfx w10, w26, #24, #1
  0x8001bbd5c:  1a9f07f7    cset w23, ne
  0x8001bbd60:  0a050309    and w9, w24, w5
  0x8001bbd64:  aa0a0108    orr x8, x8, x10
  0x8001bbd68:  f9000268    str x8, [x19]
  0x8001bbd6c:  36b8007a    tbz w26, #23, #12
  0x8001bbd70:  b27f0108    orr x8, x8, #0x2
  0x8001bbd74:  f9000268    str x8, [x19]
  0x8001bbd78:  6b05013f    cmp w9, w5
  0x8001bbd7c:  540010a0    b.eq #532
  0x8001bbd80:  520002e0    eor w0, w23, #0x1
  0x8001bbd84:  a9584ff4    ldp x20, x19, [sp, #384]
  0x8001bbd88:  a95757f6    ldp x22, x21, [sp, #368]
  0x8001bbd8c:  a9565ff8    ldp x24, x23, [sp, #352]
  0x8001bbd90:  a95567fa    ldp x26, x25, [sp, #336]
  0x8001bbd94:  a9546ffc    ldp x28, x27, [sp, #320]
  0x8001bbd98:  a9537bfd    ldp x29, x30, [sp, #304]
  0x8001bbd9c:  910643ff    add sp, sp, #400
  0x8001bbda0:  d65f03c0    ret
  0x8001bbda4:  f94006a8    ldr x8, [x21, #8]
  0x8001bbda8:  7941b909    ldrh w9, [x8, #220]
  0x8001bbdac:  350032c9    cbnz w9, #1624
  0x8001bbdb0:  b9406109    ldr w9, [x8, #96]
  0x8001bbdb4:  6b17013f    cmp w9, w23
  0x8001bbdb8:  54004c4d    b.le #2440
  0x8001bbdbc:  f9403508    ldr x8, [x8, #104]
  0x8001bbdc0:  f877590a    ldr x10, [x8, w23, uxtw #3]
  0x8001bbdc4:  9001bd28    adrp x8, #58343424
  0x8001bbdc8:  f9452d08    ldr x8, [x8, #2648]
  0x8001bbdcc:  08dffd08    ldarb w8, [x8]
  0x8001bbdd0:  f90007ea    str x10, [sp, #8]
  0x8001bbdd4:  36004e68    tbz w8, #0, #2508
  0x8001bbdd8:  b001bded    adrp x13, #58445824
  0x8001bbddc:  b001bdec    adrp x12, #58445824
  0x8001bbde0:  f941b5ad    ldr x13, [x13, #872]
  0x8001bbde4:  f001bc8b    adrp x11, #58273792
  0x8001bbde8:  f001bc89    adrp x9, #58273792
  0x8001bbdec:  f941bd8c    ldr x12, [x12, #888]
  0x8001bbdf0:  f943016b    ldr x11, [x11, #1536]
  0x8001bbdf4:  f9430d29    ldr x9, [x9, #1560]
  0x8001bbdf8:  b90017fb    str w27, [sp, #20]
  0x8001bbdfc:  b400170a    cbz x10, #736
  0x8001bbe00:  f9400148    ldr x8, [x10]
  0x8001bbe04:  f9400108    ldr x8, [x8]
  0x8001bbe08:  eb0d011f    cmp x8, x13
  0x8001bbe0c:  54001361    b.ne #620
  0x8001bbe10:  08dffd88    ldarb w8, [x12]
  0x8001bbe14:  360077e8    tbz w8, #0, #3836
  0x8001bbe18:  08dffd68    ldarb w8, [x11]
  0x8001bbe1c:  36007cc8    tbz w8, #0, #3992
  0x8001bbe20:  08dffd28    ldarb w8, [x9]
  0x8001bbe24:  370015c8    tbnz w8, #0, #696
  0x8001bbe28:  f001bc80    adrp x0, #58273792
  0x8001bbe2c:  aa0303f9    mov x25, x3
  0x8001bbe30:  f9430c00    ldr x0, [x0, #1560]
  0x8001bbe34:  b90007e4    str w4, [sp, #4]
  0x8001bbe38:  2a0503f7    mov w23, w5
  0x8001bbe3c:  94a79ed9    bl #43940708
  0x8001bbe40:  b001bded    adrp x13, #58445824
  0x8001bbe44:  b001bdec    adrp x12, #58445824
  0x8001bbe48:  f941b5ad    ldr x13, [x13, #872]
  0x8001bbe4c:  f001bc8b    adrp x11, #58273792
  0x8001bbe50:  f001bc89    adrp x9, #58273792
  0x8001bbe54:  f941bd8c    ldr x12, [x12, #888]
  0x8001bbe58:  f943016b    ldr x11, [x11, #1536]
  0x8001bbe5c:  2a1703e5    mov w5, w23
  0x8001bbe60:  aa1903e3    mov x3, x25
  0x8001bbe64:  f94007ea    ldr x10, [sp, #8]
  0x8001bbe68:  f9430d29    ldr x9, [x9, #1560]
  0x8001bbe6c:  b94007e4    ldr w4, [sp, #4]
  0x8001bbe70:  34001360    cbz w0, #620
  0x8001bbe74:  9001bc88    adrp x8, #58261504
  0x8001bbe78:  f001bc89    adrp x9, #58273792
  0x8001bbe7c:  f9440508    ldr x8, [x8, #2056]
  0x8001bbe80:  f9430929    ldr x9, [x9, #1552]
  0x8001bbe84:  f001bc80    adrp x0, #58273792
  0x8001bbe88:  91004108    add x8, x8, #16
  0x8001bbe8c:  f9000128    str x8, [x9]
  0x8001bbe90:  f9430c00    ldr x0, [x0, #1560]
  0x8001bbe94:  94a79ec7    bl #43940636
  0x8001bbe98:  b001bded    adrp x13, #58445824
  0x8001bbe9c:  b001bdec    adrp x12, #58445824
  0x8001bbea0:  f941b5ad    ldr x13, [x13, #872]
  0x8001bbea4:  f001bc8b    adrp x11, #58273792
  0x8001bbea8:  f001bc89    adrp x9, #58273792
  0x8001bbeac:  f941bd8c    ldr x12, [x12, #888]
  0x8001bbeb0:  f943016b    ldr x11, [x11, #1536]
  0x8001bbeb4:  2a1703e5    mov w5, w23
  0x8001bbeb8:  aa1903e3    mov x3, x25
  0x8001bbebc:  f94007ea    ldr x10, [sp, #8]
  0x8001bbec0:  f9430d29    ldr x9, [x9, #1560]
  0x8001bbec4:  b94007e4    ldr w4, [sp, #4]
  0x8001bbec8:  14000085    b #532
  0x8001bbecc:  79400e88    ldrh w8, [x20, #6]
  0x8001bbed0:  6b05037f    cmp w27, w5
  0x8001bbed4:  1200391a    and w26, w8, #0x7fff
  0x8001bbed8:  540039a0    b.eq #1844
  0x8001bbedc:  2a1f03f9    mov w25, wzr
  0x8001bbee0:  2a1f03f8    mov w24, wzr
  0x8001bbee4:  f001c808    adrp x8, #59781120
  0x8001bbee8:  91142108    add x8, x8, #1288
  0x8001bbeec:  f9400274    ldr x20, [x19]
  0x8001bbef0:  08dffd08    ldarb w8, [x8]
  0x8001bbef4:  36003588    tbz w8, #0, #1712
  0x8001bbef8:  377853b7    tbnz w23, #15, #2676
  0x8001bbefc:  f94006a8    ldr x8, [x21, #8]
  0x8001bbf00:  b9406109    ldr w9, [x8, #96]
  0x8001bbf04:  6b37213f    cmp w9, w23, uxth
  0x8001bbf08:  5400546d    b.le #2700
  0x8001bbf0c:  f9403509    ldr x9, [x8, #104]
  0x8001bbf10:  92403eea    and x10, x23, #0xffff
  0x8001bbf14:  f86a7937    ldr x23, [x9, x10, lsl #3]
  0x8001bbf18:  b40056f7    cbz x23, #2780
  0x8001bbf1c:  f94002e8    ldr x8, [x23]
  0x8001bbf20:  f9404d08    ldr x8, [x8, #152]
  0x8001bbf24:  eb03011f    cmp x8, x3
  0x8001bbf28:  540059a1    b.ne #2868
  0x8001bbf2c:  f94006e8    ldr x8, [x23, #8]
  0x8001bbf30:  5280078b    mov w11, #60
  0x8001bbf34:  79403ae9    ldrh w9, [x23, #28]
  0x8001bbf38:  f9400908    ldr x8, [x8, #16]
  0x8001bbf3c:  f940250a    ldr x10, [x8, #72]
  0x8001bbf40:  f9400908    ldr x8, [x8, #16]
  0x8001bbf44:  9bab2929    umaddl x9, w9, w11, x10
  0x8001bbf48:  b9801529    ldrsw x9, [x9, #20]
  0x8001bbf4c:  8b090100    add x0, x8, x9
  0x8001bbf50:  35003659    cbnz w25, #1736
  0x8001bbf54:  131e3f5a    sbfiz w26, w26, #2, #16
  0x8001bbf58:  f9400ae0    ldr x0, [x23, #16]
  0x8001bbf5c:  b4000100    cbz x0, #32
  0x8001bbf60:  f9400008    ldr x8, [x0]
  0x8001bbf64:  9001bd29    adrp x9, #58343424
  0x8001bbf68:  f9400908    ldr x8, [x8, #16]
  0x8001bbf6c:  f9462929    ldr x9, [x9, #3152]
  0x8001bbf70:  eb09011f    cmp x8, x9
  0x8001bbf74:  54002d01    b.ne #1440
  0x8001bbf78:  f9400400    ldr x0, [x0, #8]
  0x8001bbf7c:  8b3ac008    add x8, x0, w26, sxtw
  0x8001bbf80:  2a1f03f7    mov w23, wzr
  0x8001bbf84:  927ef508    and x8, x8, #0xfffffffffffffffc
  0x8001bbf88:  f9000268    str x8, [x19]
  0x8001bbf8c:  3607efb9    tbz w25, #0, #-524
  0x8001bbf90:  f1000e9f    cmp x20, #3
  0x8001bbf94:  54002d08    b.hi #1440
  0x8001bbf98:  37002ce4    tbnz w4, #0, #1436
  0x8001bbf9c:  f9400aa0    ldr x0, [x21, #16]
  0x8001bbfa0:  927ef519    and x25, x8, #0xfffffffffffffffc
  0x8001bbfa4:  f9400008    ldr x8, [x0]
  0x8001bbfa8:  f9402d08    ldr x8, [x8, #88]
  0x8001bbfac:  d63f0100    blr x8
  0x8001bbfb0:  f9400814    ldr x20, [x0, #16]
  0x8001bbfb4:  b4000074    cbz x20, #12
  0x8001bbfb8:  f9400288    ldr x8, [x20]
  0x8001bbfbc:  f9000808    str x8, [x0, #16]
  0x8001bbfc0:  12800008    mov w8, #-1
  0x8001bbfc4:  f9001a88    str x8, [x20, #48]
  0x8001bbfc8:  9001bc88    adrp x8, #58261504
  0x8001bbfcc:  f945bd08    ldr x8, [x8, #2936]
  0x8001bbfd0:  a9017e9f    stp xzr, xzr, [x20, #16]
  0x8001bbfd4:  a9027e9f    stp xzr, xzr, [x20, #32]
  0x8001bbfd8:  a9007e88    stp x8, xzr, [x20]
  0x8001bbfdc:  29402408    ldp w8, w9, [x0]
  0x8001bbfe0:  93407d08    sxtw x8, w8
  0x8001bbfe4:  6b09011f    cmp w8, w9
  0x8001bbfe8:  540000ca    b.ge #24
  0x8001bbfec:  f9400409    ldr x9, [x0, #8]
  0x8001bbff0:  f8287934    str x20, [x9, x8, lsl #3]
  0x8001bbff4:  b9400008    ldr w8, [x0]
  0x8001bbff8:  11000508    add w8, w8, #1
  0x8001bbffc:  b9000008    str w8, [x0]
  0x8001bc000:  f94002c8    ldr x8, [x22]
  0x8001bc004:  52800069    mov w9, #3
  0x8001bc008:  12003f0a    and w10, w24, #0xffff
  0x8001bc00c:  2905268a    stp w10, w9, [x20, #40]
  0x8001bc010:  a9006688    stp x8, x25, [x20]
  0x8001bc014:  f9400aa0    ldr x0, [x21, #16]
  0x8001bc018:  f9400008    ldr x8, [x0]
  0x8001bc01c:  f9402908    ldr x8, [x8, #80]
  0x8001bc020:  d63f0100    blr x8
  0x8001bc024:  b5002600    cbnz x0, #1216
  0x8001bc028:  f9000a80    str x0, [x20, #16]
  0x8001bc02c:  b900329f    str wzr, [x20, #48]
  0x8001bc030:  1400000f    b #60
  0x8001bc034:  529ffff7    mov w23, #65535
  0x8001bc038:  529ffffa    mov w26, #65535
  0x8001bc03c:  0a050308    and w8, w24, w5
  0x8001bc040:  6b05011f    cmp w8, w5
  0x8001bc044:  1a9f17f9    cset w25, eq
  0x8001bc048:  34fff4f8    cbz w24, #-356
  0x8001bc04c:  54fff4c0    b.eq #-360
  0x8001bc050:  f94006a8    ldr x8, [x21, #8]
  0x8001bc054:  12003f01    and w1, w24, #0xffff
  0x8001bc058:  f9401100    ldr x0, [x8, #32]
  0x8001bc05c:  f9400008    ldr x8, [x0]
  0x8001bc060:  f9408508    ldr x8, [x8, #264]
  0x8001bc064:  d63f0100    blr x8
  0x8001bc068:  2a1f03f7    mov w23, wzr
  0x8001bc06c:  927ef408    and x8, x0, #0xfffffffffffffffc
  0x8001bc070:  f9000268    str x8, [x19]
  0x8001bc074:  17ffff43    b #-756
  0x8001bc078:  f001bd01    adrp x1, #58339328
  0x8001bc07c:  aa0a03e0    mov x0, x10
  0x8001bc080:  f9452821    ldr x1, [x1, #2640]
  0x8001bc084:  aa1303f9    mov x25, x19
  0x8001bc088:  aa1603f3    mov x19, x22
  0x8001bc08c:  2a0403f6    mov w22, w4
  0x8001bc090:  aa0303f7    mov x23, x3
  0x8001bc094:  2a0503fb    mov w27, w5
  0x8001bc098:  d63f0100    blr x8
  0x8001bc09c:  9001bded    adrp x13, #58441728
  0x8001bc0a0:  9001bdec    adrp x12, #58441728
  0x8001bc0a4:  f941b5ad    ldr x13, [x13, #872]
  0x8001bc0a8:  d001bc8b    adrp x11, #58269696
  0x8001bc0ac:  d001bc89    adrp x9, #58269696
  0x8001bc0b0:  f941bd8c    ldr x12, [x12, #888]
  0x8001bc0b4:  f943016b    ldr x11, [x11, #1536]
  0x8001bc0b8:  2a1b03e5    mov w5, w27
  0x8001bc0bc:  aa1703e3    mov x3, x23
  0x8001bc0c0:  f94007ea    ldr x10, [sp, #8]
  0x8001bc0c4:  2a1603e4    mov w4, w22
  0x8001bc0c8:  aa1303f6    mov x22, x19
  0x8001bc0cc:  f9430d29    ldr x9, [x9, #1560]
  0x8001bc0d0:  aa1903f3    mov x19, x25
  0x8001bc0d4:  b94017fb    ldr w27, [sp, #20]
  0x8001bc0d8:  b5ffe2c0    cbnz x0, #-936
  0x8001bc0dc:  f001bd08    adrp x8, #58339328
  0x8001bc0e0:  f9453508    ldr x8, [x8, #2664]
  0x8001bc0e4:  08dffd08    ldarb w8, [x8]
  0x8001bc0e8:  36002cc8    tbz w8, #0, #1432
  0x8001bc0ec:  b400016a    cbz x10, #44
  0x8001bc0f0:  f9400148    ldr x8, [x10]
  0x8001bc0f4:  f9400108    ldr x8, [x8]
  0x8001bc0f8:  eb0d011f    cmp x8, x13
  0x8001bc0fc:  54001c01    b.ne #896
  0x8001bc100:  08dffd88    ldarb w8, [x12]
  0x8001bc104:  36004be8    tbz w8, #0, #2428
  0x8001bc108:  08dffd68    ldarb w8, [x11]
  0x8001bc10c:  360050c8    tbz w8, #0, #2584
  0x8001bc110:  08dffd28    ldarb w8, [x9]
  0x8001bc114:  360055a8    tbz w8, #0, #2740
  0x8001bc118:  f001bd08    adrp x8, #58339328
  0x8001bc11c:  f9453d08    ldr x8, [x8, #2680]
  0x8001bc120:  08dffd08    ldarb w8, [x8]
  0x8001bc124:  36003808    tbz w8, #0, #1792
  0x8001bc128:  b40009aa    cbz x10, #308
  0x8001bc12c:  f9400148    ldr x8, [x10]
  0x8001bc130:  f9400108    ldr x8, [x8]
  0x8001bc134:  eb0d011f    cmp x8, x13
  0x8001bc138:  54000601    b.ne #192
  0x8001bc13c:  08dffd88    ldarb w8, [x12]
  0x8001bc140:  360068c8    tbz w8, #0, #3352
  0x8001bc144:  08dffd68    ldarb w8, [x11]
  0x8001bc148:  36006da8    tbz w8, #0, #3508
  0x8001bc14c:  08dffd28    ldarb w8, [x9]
  0x8001bc150:  37000868    tbnz w8, #0, #268
  0x8001bc154:  d001bc80    adrp x0, #58269696
  0x8001bc158:  aa0303f9    mov x25, x3
  0x8001bc15c:  f9430c00    ldr x0, [x0, #1560]
  0x8001bc160:  b90007e4    str w4, [sp, #4]
  0x8001bc164:  2a0503f7    mov w23, w5
  0x8001bc168:  94a79e0e    bl #43939896
  0x8001bc16c:  9001bded    adrp x13, #58441728
  0x8001bc170:  9001bdec    adrp x12, #58441728
  0x8001bc174:  f941b5ad    ldr x13, [x13, #872]
  0x8001bc178:  d001bc8b    adrp x11, #58269696
  0x8001bc17c:  d001bc89    adrp x9, #58269696
  0x8001bc180:  f941bd8c    ldr x12, [x12, #888]
  0x8001bc184:  f943016b    ldr x11, [x11, #1536]
  0x8001bc188:  2a1703e5    mov w5, w23
  0x8001bc18c:  aa1903e3    mov x3, x25
  0x8001bc190:  f94007ea    ldr x10, [sp, #8]
  0x8001bc194:  f9430d29    ldr x9, [x9, #1560]
  0x8001bc198:  b94007e4    ldr w4, [sp, #4]
  0x8001bc19c:  34000600    cbz w0, #192
  0x8001bc1a0:  f001bc68    adrp x8, #58257408
  0x8001bc1a4:  d001bc89    adrp x9, #58269696
  0x8001bc1a8:  f9440508    ldr x8, [x8, #2056]
  0x8001bc1ac:  f9430929    ldr x9, [x9, #1552]
  0x8001bc1b0:  d001bc80    adrp x0, #58269696
  0x8001bc1b4:  91004108    add x8, x8, #16
  0x8001bc1b8:  f9000128    str x8, [x9]
  0x8001bc1bc:  f9430c00    ldr x0, [x0, #1560]
  0x8001bc1c0:  94a79dfc    bl #43939824
  0x8001bc1c4:  9001bded    adrp x13, #58441728
  0x8001bc1c8:  9001bdec    adrp x12, #58441728
  0x8001bc1cc:  f941b5ad    ldr x13, [x13, #872]
  0x8001bc1d0:  d001bc8b    adrp x11, #58269696
  0x8001bc1d4:  d001bc89    adrp x9, #58269696
  0x8001bc1d8:  f941bd8c    ldr x12, [x12, #888]
  0x8001bc1dc:  f943016b    ldr x11, [x11, #1536]
  0x8001bc1e0:  2a1703e5    mov w5, w23
  0x8001bc1e4:  aa1903e3    mov x3, x25
  0x8001bc1e8:  f94007ea    ldr x10, [sp, #8]
  0x8001bc1ec:  f9430d29    ldr x9, [x9, #1560]
  0x8001bc1f0:  b94007e4    ldr w4, [sp, #4]
  0x8001bc1f4:  1400001a    b #104
  0x8001bc1f8:  f001bd01    adrp x1, #58339328
  0x8001bc1fc:  aa0a03e0    mov x0, x10
  0x8001bc200:  f9453821    ldr x1, [x1, #2672]
  0x8001bc204:  aa1303f9    mov x25, x19
  0x8001bc208:  aa1603f3    mov x19, x22
  0x8001bc20c:  2a0403f6    mov w22, w4
  0x8001bc210:  aa0303f7    mov x23, x3
  0x8001bc214:  2a0503fb    mov w27, w5
  0x8001bc218:  d63f0100    blr x8
  0x8001bc21c:  9001bded    adrp x13, #58441728
  0x8001bc220:  9001bdec    adrp x12, #58441728
  0x8001bc224:  f941b5ad    ldr x13, [x13, #872]
  0x8001bc228:  d001bc8b    adrp x11, #58269696
  0x8001bc22c:  d001bc89    adrp x9, #58269696
  0x8001bc230:  f941bd8c    ldr x12, [x12, #888]
  0x8001bc234:  f943016b    ldr x11, [x11, #1536]
  0x8001bc238:  2a1b03e5    mov w5, w27
  0x8001bc23c:  aa1703e3    mov x3, x23
  0x8001bc240:  f94007ea    ldr x10, [sp, #8]
  0x8001bc244:  2a1603e4    mov w4, w22
  0x8001bc248:  aa1303f6    mov x22, x19
  0x8001bc24c:  f9430d29    ldr x9, [x9, #1560]
  0x8001bc250:  aa1903f3    mov x19, x25
  0x8001bc254:  b94017fb    ldr w27, [sp, #20]
  0x8001bc258:  b5ffd6c0    cbnz x0, #-1320
  0x8001bc25c:  f001bd08    adrp x8, #58339328
  0x8001bc260:  f9454508    ldr x8, [x8, #2696]
  0x8001bc264:  08dffd08    ldarb w8, [x8]
  0x8001bc268:  36003308    tbz w8, #0, #1632
  0x8001bc26c:  b40009aa    cbz x10, #308
  0x8001bc270:  f9400148    ldr x8, [x10]
  0x8001bc274:  f9400108    ldr x8, [x8]
  0x8001bc278:  eb0d011f    cmp x8, x13
  0x8001bc27c:  54000601    b.ne #192
  0x8001bc280:  08dffd88    ldarb w8, [x12]
  0x8001bc284:  360068e8    tbz w8, #0, #3356
  0x8001bc288:  08dffd68    ldarb w8, [x11]
  0x8001bc28c:  36006dc8    tbz w8, #0, #3512
  0x8001bc290:  08dffd28    ldarb w8, [x9]
  0x8001bc294:  37000868    tbnz w8, #0, #268
  0x8001bc298:  d001bc80    adrp x0, #58269696
  0x8001bc29c:  aa0303f9    mov x25, x3
  0x8001bc2a0:  f9430c00    ldr x0, [x0, #1560]
  0x8001bc2a4:  b90007e4    str w4, [sp, #4]
  0x8001bc2a8:  2a0503f7    mov w23, w5
  0x8001bc2ac:  94a79dbd    bl #43939572
  0x8001bc2b0:  9001bded    adrp x13, #58441728
  0x8001bc2b4:  9001bdec    adrp x12, #58441728
  0x8001bc2b8:  f941b5ad    ldr x13, [x13, #872]
  0x8001bc2bc:  d001bc8b    adrp x11, #58269696
  0x8001bc2c0:  d001bc89    adrp x9, #58269696
  0x8001bc2c4:  f941bd8c    ldr x12, [x12, #888]
  0x8001bc2c8:  f943016b    ldr x11, [x11, #1536]
  0x8001bc2cc:  2a1703e5    mov w5, w23
  0x8001bc2d0:  aa1903e3    mov x3, x25
  0x8001bc2d4:  f94007ea    ldr x10, [sp, #8]
  0x8001bc2d8:  f9430d29    ldr x9, [x9, #1560]
  0x8001bc2dc:  b94007e4    ldr w4, [sp, #4]
  0x8001bc2e0:  34000600    cbz w0, #192
  0x8001bc2e4:  f001bc68    adrp x8, #58257408
  0x8001bc2e8:  d001bc89    adrp x9, #58269696
  0x8001bc2ec:  f9440508    ldr x8, [x8, #2056]
  0x8001bc2f0:  f9430929    ldr x9, [x9, #1552]
  0x8001bc2f4:  d001bc80    adrp x0, #58269696
  0x8001bc2f8:  91004108    add x8, x8, #16
  0x8001bc2fc:  f9000128    str x8, [x9]
  0x8001bc300:  f9430c00    ldr x0, [x0, #1560]
  0x8001bc304:  94a79dab    bl #43939500
  0x8001bc308:  9001bded    adrp x13, #58441728
  0x8001bc30c:  9001bdec    adrp x12, #58441728
  0x8001bc310:  f941b5ad    ldr x13, [x13, #872]
  0x8001bc314:  d001bc8b    adrp x11, #58269696
  0x8001bc318:  d001bc89    adrp x9, #58269696
  0x8001bc31c:  f941bd8c    ldr x12, [x12, #888]
  0x8001bc320:  f943016b    ldr x11, [x11, #1536]
  0x8001bc324:  2a1703e5    mov w5, w23
  0x8001bc328:  aa1903e3    mov x3, x25
  0x8001bc32c:  f94007ea    ldr x10, [sp, #8]
  0x8001bc330:  f9430d29    ldr x9, [x9, #1560]
  0x8001bc334:  b94007e4    ldr w4, [sp, #4]
  0x8001bc338:  1400001a    b #104
  0x8001bc33c:  f001bd01    adrp x1, #58339328
  0x8001bc340:  aa0a03e0    mov x0, x10
  0x8001bc344:  f9454021    ldr x1, [x1, #2688]
  0x8001bc348:  aa1303f9    mov x25, x19
  0x8001bc34c:  aa1603f3    mov x19, x22
  0x8001bc350:  2a0403f6    mov w22, w4
  0x8001bc354:  aa0303f7    mov x23, x3
  0x8001bc358:  2a0503fb    mov w27, w5
  0x8001bc35c:  d63f0100    blr x8
  0x8001bc360:  9001bded    adrp x13, #58441728
  0x8001bc364:  9001bdec    adrp x12, #58441728
  0x8001bc368:  f941b5ad    ldr x13, [x13, #872]
  0x8001bc36c:  d001bc8b    adrp x11, #58269696
  0x8001bc370:  d001bc89    adrp x9, #58269696
  0x8001bc374:  f941bd8c    ldr x12, [x12, #888]
  0x8001bc378:  f943016b    ldr x11, [x11, #1536]
  0x8001bc37c:  2a1b03e5    mov w5, w27
  0x8001bc380:  aa1703e3    mov x3, x23
  0x8001bc384:  f94007ea    ldr x10, [sp, #8]
  0x8001bc388:  2a1603e4    mov w4, w22
  0x8001bc38c:  aa1303f6    mov x22, x19
  0x8001bc390:  f9430d29    ldr x9, [x9, #1560]
  0x8001bc394:  aa1903f3    mov x19, x25
  0x8001bc398:  b94017fb    ldr w27, [sp, #20]
  0x8001bc39c:  b5ffcca0    cbnz x0, #-1644
  0x8001bc3a0:  f001bd08    adrp x8, #58339328
  0x8001bc3a4:  f9454d08    ldr x8, [x8, #2712]
  0x8001bc3a8:  08dffd08    ldarb w8, [x8]
  0x8001bc3ac:  36004608    tbz w8, #0, #2240
  0x8001bc3b0:  b40002aa    cbz x10, #84
  0x8001bc3b4:  f9400148    ldr x8, [x10]
  0x8001bc3b8:  f9400108    ldr x8, [x8]
  0x8001bc3bc:  eb0d011f    cmp x8, x13
  0x8001bc3c0:  54000260    b.eq #76
  0x8001bc3c4:  f001bd01    adrp x1, #58339328
  0x8001bc3c8:  aa0a03e0    mov x0, x10
  0x8001bc3cc:  f9454821    ldr x1, [x1, #2704]
  0x8001bc3d0:  aa1303f7    mov x23, x19
  0x8001bc3d4:  aa1603f3    mov x19, x22
  0x8001bc3d8:  2a0403f6    mov w22, w4
  0x8001bc3dc:  aa0303f9    mov x25, x3
  0x8001bc3e0:  2a0503fb    mov w27, w5
  0x8001bc3e4:  d63f0100    blr x8
  0x8001bc3e8:  2a1b03e5    mov w5, w27
  0x8001bc3ec:  b94017fb    ldr w27, [sp, #20]
  0x8001bc3f0:  aa1903e3    mov x3, x25
  0x8001bc3f4:  2a1603e4    mov w4, w22
  0x8001bc3f8:  aa1303f6    mov x22, x19
  0x8001bc3fc:  aa1703f3    mov x19, x23
  0x8001bc400:  b5ffc980    cbnz x0, #-1744
  0x8001bc404:  79400317    ldrh w23, [x24]
  0x8001bc408:  17fffe47    b #-1764
  0x8001bc40c:  08dffd88    ldarb w8, [x12]
  0x8001bc410:  360066c8    tbz w8, #0, #3288
  0x8001bc414:  08dffd68    ldarb w8, [x11]
  0x8001bc418:  36006a48    tbz w8, #0, #3400
  0x8001bc41c:  08dffd28    ldarb w8, [x9]
  0x8001bc420:  3707ff28    tbnz w8, #0, #-28
  0x8001bc424:  d001bc80    adrp x0, #58269696
  0x8001bc428:  2a0403f7    mov w23, w4
  0x8001bc42c:  f9430c00    ldr x0, [x0, #1560]
  0x8001bc430:  aa0303f9    mov x25, x3
  0x8001bc434:  94a79d5b    bl #43939180
  0x8001bc438:  52b84005    mov w5, #-1040187392
  0x8001bc43c:  aa1903e3    mov x3, x25
  0x8001bc440:  2a1703e4    mov w4, w23
  0x8001bc444:  34fffe00    cbz w0, #-64
  0x8001bc448:  f001bc68    adrp x8, #58257408
  0x8001bc44c:  d001bc89    adrp x9, #58269696
  0x8001bc450:  f9440508    ldr x8, [x8, #2056]
  0x8001bc454:  f9430929    ldr x9, [x9, #1552]
  0x8001bc458:  d001bc80    adrp x0, #58269696
  0x8001bc45c:  91004108    add x8, x8, #16
  0x8001bc460:  f9000128    str x8, [x9]
  0x8001bc464:  f9430c00    ldr x0, [x0, #1560]
  0x8001bc468:  94a79d52    bl #43939144
  0x8001bc46c:  52b84005    mov w5, #-1040187392
  0x8001bc470:  aa1903e3    mov x3, x25
  0x8001bc474:  2a1703e4    mov w4, w23
  0x8001bc478:  17ffffe3    b #-116
  0x8001bc47c:  f001bd01    adrp x1, #58339328
  0x8001bc480:  aa0a03e0    mov x0, x10
  0x8001bc484:  f9453021    ldr x1, [x1, #2656]
  0x8001bc488:  aa1303f9    mov x25, x19
  0x8001bc48c:  aa1603f3    mov x19, x22
  0x8001bc490:  2a0403f6    mov w22, w4
  0x8001bc494:  aa0303f7    mov x23, x3
  0x8001bc498:  2a0503fb    mov w27, w5
  0x8001bc49c:  d63f0100    blr x8
  0x8001bc4a0:  9001bded    adrp x13, #58441728
  0x8001bc4a4:  9001bdec    adrp x12, #58441728
  0x8001bc4a8:  f941b5ad    ldr x13, [x13, #872]
  0x8001bc4ac:  d001bc8b    adrp x11, #58269696
  0x8001bc4b0:  d001bc89    adrp x9, #58269696
  0x8001bc4b4:  f941bd8c    ldr x12, [x12, #888]
  0x8001bc4b8:  f943016b    ldr x11, [x11, #1536]
  0x8001bc4bc:  2a1b03e5    mov w5, w27
  0x8001bc4c0:  aa1703e3    mov x3, x23
  0x8001bc4c4:  f94007ea    ldr x10, [sp, #8]
  0x8001bc4c8:  2a1603e4    mov w4, w22
  0x8001bc4cc:  aa1303f6    mov x22, x19
  0x8001bc4d0:  f9430d29    ldr x9, [x9, #1560]
  0x8001bc4d4:  aa1903f3    mov x19, x25
  0x8001bc4d8:  b94017fb    ldr w27, [sp, #20]
  0x8001bc4dc:  b4ffe1e0    cbz x0, #-964
  0x8001bc4e0:  17fffe14    b #-1968
  0x8001bc4e4:  f9400aa0    ldr x0, [x21, #16]
  0x8001bc4e8:  f9400008    ldr x8, [x0]
  0x8001bc4ec:  f9402908    ldr x8, [x8, #80]
  0x8001bc4f0:  d63f0100    blr x8
  0x8001bc4f4:  29422408    ldp w8, w9, [x0, #16]
  0x8001bc4f8:  6b09011f    cmp w8, w9
  0x8001bc4fc:  54006663    b.lo #3276
  0x8001bc500:  f9400009    ldr x9, [x0]
  0x8001bc504:  5100050a    sub w10, w8, #1
  0x8001bc508:  b900100a    str w10, [x0, #16]
  0x8001bc50c:  8b080920    add x0, x9, x8, lsl #2
  0x8001bc510:  17fffec6    b #-1256
  0x8001bc514:  aa1303f7    mov x23, x19
  0x8001bc518:  aa1603f3    mov x19, x22
  0x8001bc51c:  2a0403f6    mov w22, w4
  0x8001bc520:  d63f0100    blr x8
  0x8001bc524:  2a1603e4    mov w4, w22
  0x8001bc528:  aa1303f6    mov x22, x19
  0x8001bc52c:  aa1703f3    mov x19, x23
  0x8001bc530:  17fffe93    b #-1460
  0x8001bc534:  f9400aa0    ldr x0, [x21, #16]
  0x8001bc538:  2a0403f4    mov w20, w4
  0x8001bc53c:  f9400008    ldr x8, [x0]
  0x8001bc540:  f9402d08    ldr x8, [x8, #88]
  0x8001bc544:  d63f0100    blr x8
  0x8001bc548:  b9800009    ldrsw x9, [x0]
  0x8001bc54c:  34ffc1a9    cbz w9, #-1996
  0x8001bc550:  f9400408    ldr x8, [x0, #8]
  0x8001bc554:  5280002b    mov w11, #1
  0x8001bc558:  72a0080b    movk w11, #64, lsl #16
  0x8001bc55c:  f94002ca    ldr x10, [x22]
  0x8001bc560:  2a1403f2    mov w18, w20
  0x8001bc564:  8b090d09    add x9, x8, x9, lsl #3
  0x8001bc568:  f940010c    ldr x12, [x8]
  0x8001bc56c:  b9402d8d    ldr w13, [x12, #44]
  0x8001bc570:  71000dbf    cmp w13, #3
  0x8001bc574:  54000441    b.ne #136
  0x8001bc578:  b940318d    ldr w13, [x12, #48]
  0x8001bc57c:  37f8040d    tbnz w13, #31, #128
  0x8001bc580:  f940018d    ldr x13, [x12]
  0x8001bc584:  eb0a01bf    cmp x13, x10
  0x8001bc588:  540002e1    b.ne #92
  0x8001bc58c:  37000092    tbnz w18, #0, #16
  0x8001bc590:  f9400268    ldr x8, [x19]
  0x8001bc594:  927ef508    and x8, x8, #0xfffffffffffffffc
  0x8001bc598:  f9000588    str x8, [x12, #8]
  0x8001bc59c:  f9400980    ldr x0, [x12, #16]
  0x8001bc5a0:  17fffeb3    b #-1332
  0x8001bc5a4:  d001c800    adrp x0, #59777024
  0x8001bc5a8:  91142000    add x0, x0, #1288
  0x8001bc5ac:  2a0403fb    mov w27, w4
  0x8001bc5b0:  aa0303fc    mov x28, x3
  0x8001bc5b4:  94a79cfb    bl #43938796
  0x8001bc5b8:  aa1c03e3    mov x3, x28
  0x8001bc5bc:  2a1b03e4    mov w4, w27
  0x8001bc5c0:  34ffc9c0    cbz w0, #-1736
  0x8001bc5c4:  d001c808    adrp x8, #59777024
  0x8001bc5c8:  d001c800    adrp x0, #59777024
  0x8001bc5cc:  91142000    add x0, x0, #1288
  0x8001bc5d0:  b905011f    str wzr, [x8, #1280]
  0x8001bc5d4:  94a79cf7    bl #43938780
  0x8001bc5d8:  aa1c03e3    mov x3, x28
  0x8001bc5dc:  2a1b03e4    mov w4, w27
  0x8001bc5e0:  17fffe46    b #-1768
  0x8001bc5e4:  aa0b03ee    mov x14, x11
  0x8001bc5e8:  aa0a03ef    mov x15, x10
  0x8001bc5ec:  384015b0    ldrb w16, [x13], #1
  0x8001bc5f0:  384015f1    ldrb w17, [x15], #1
  0x8001bc5f4:  6b11021f    cmp w16, w17
  0x8001bc5f8:  54005ec0    b.eq #3032
  0x8001bc5fc:  91002108    add x8, x8, #8
  0x8001bc600:  eb09011f    cmp x8, x9
  0x8001bc604:  54fffb21    b.ne #-156
  0x8001bc608:  17fffdde    b #-2184
  0x8001bc60c:  b9400388    ldr w8, [x28]
  0x8001bc610:  12077518    and w24, w8, #0xfe7fffff
  0x8001bc614:  17fffe8a    b #-1496
  0x8001bc618:  f94006a8    ldr x8, [x21, #8]
  0x8001bc61c:  f9400908    ldr x8, [x8, #16]
  0x8001bc620:  f9402908    ldr x8, [x8, #80]
  0x8001bc624:  b9401909    ldr w9, [x8, #24]
  0x8001bc628:  8b090108    add x8, x8, x9
  0x8001bc62c:  b9400109    ldr w9, [x8]
  0x8001bc630:  6b38213f    cmp w9, w24, uxth
  0x8001bc634:  5400078d    b.le #240
  0x8001bc638:  12003f09    and w9, w24, #0xffff
  0x8001bc63c:  5280038a    mov w10, #28
  0x8001bc640:  9baa2128    umaddl x8, w9, w10, x8
  0x8001bc644:  79403d08    ldrh w8, [x8, #30]
  0x8001bc648:  51000909    sub w9, w8, #2
  0x8001bc64c:  7100113f    cmp w9, #4
  0x8001bc650:  540006a8    b.hi #212
  0x8001bc654:  f0015daa    adrp x10, #45838336
  0x8001bc658:  912fd14a    add x10, x10, #3060
  0x8001bc65c:  100000ab    adr x11, #20
  0x8001bc660:  7869794c    ldrh w12, [x10, x9, lsl #1]
  0x8001bc664:  8b0c096b    add x11, x11, x12, lsl #2
  0x8001bc668:  13003f48    sxth w8, w26
  0x8001bc66c:  d61f0160    br x11
  0x8001bc670:  b9403c09    ldr w9, [x0, #60]
  0x8001bc674:  0b080128    add w8, w9, w8
  0x8001bc678:  531e751a    lsl w26, w8, #2
  0x8001bc67c:  17fffe37    b #-1828
  0x8001bc680:  f001bd00    adrp x0, #58339328
  0x8001bc684:  aa0303f9    mov x25, x3
  0x8001bc688:  f9453400    ldr x0, [x0, #2664]
  0x8001bc68c:  b90007e4    str w4, [sp, #4]
  0x8001bc690:  2a0503f7    mov w23, w5
  0x8001bc694:  94a79cc3    bl #43938572
  0x8001bc698:  9001bded    adrp x13, #58441728
  0x8001bc69c:  9001bdec    adrp x12, #58441728
  0x8001bc6a0:  f941b5ad    ldr x13, [x13, #872]
  0x8001bc6a4:  d001bc8b    adrp x11, #58269696
  0x8001bc6a8:  d001bc89    adrp x9, #58269696
  0x8001bc6ac:  f941bd8c    ldr x12, [x12, #888]
  0x8001bc6b0:  f943016b    ldr x11, [x11, #1536]
  0x8001bc6b4:  2a1703e5    mov w5, w23
  0x8001bc6b8:  aa1903e3    mov x3, x25
  0x8001bc6bc:  f94007ea    ldr x10, [sp, #8]
  0x8001bc6c0:  f9430d29    ldr x9, [x9, #1560]
  0x8001bc6c4:  b94007e4    ldr w4, [sp, #4]
  0x8001bc6c8:  34ffd120    cbz w0, #-1500
  0x8001bc6cc:  d001bc88    adrp x8, #58269696
  0x8001bc6d0:  f001bd09    adrp x9, #58339328
  0x8001bc6d4:  f942f908    ldr x8, [x8, #1520]
  0x8001bc6d8:  f9453129    ldr x9, [x9, #2656]
  0x8001bc6dc:  f001bd00    adrp x0, #58339328
  0x8001bc6e0:  91004108    add x8, x8, #16
  0x8001bc6e4:  f9000128    str x8, [x9]
  0x8001bc6e8:  f9453400    ldr x0, [x0, #2664]
  0x8001bc6ec:  94a79cb1    bl #43938500
  0x8001bc6f0:  9001bded    adrp x13, #58441728
  0x8001bc6f4:  9001bdec    adrp x12, #58441728
  0x8001bc6f8:  f941b5ad    ldr x13, [x13, #872]
  0x8001bc6fc:  d001bc8b    adrp x11, #58269696
  0x8001bc700:  d001bc89    adrp x9, #58269696
  0x8001bc704:  f941bd8c    ldr x12, [x12, #888]
  0x8001bc708:  f943016b    ldr x11, [x11, #1536]
  0x8001bc70c:  2a1703e5    mov w5, w23
  0x8001bc710:  aa1903e3    mov x3, x25
  0x8001bc714:  f94007ea    ldr x10, [sp, #8]
  0x8001bc718:  f9430d29    ldr x9, [x9, #1560]
  0x8001bc71c:  b94007e4    ldr w4, [sp, #4]
  0x8001bc720:  17fffe73    b #-1588
  0x8001bc724:  2a1f03fa    mov w26, wzr
  0x8001bc728:  17fffe0c    b #-2000
  0x8001bc72c:  b9403c09    ldr w9, [x0, #60]
  0x8001bc730:  0b080128    add w8, w9, w8
  0x8001bc734:  b9404c0a    ldr w10, [x0, #76]
  0x8001bc738:  0b0a0108    add w8, w8, w10
  0x8001bc73c:  17ffffcf    b #-196
  0x8001bc740:  39048fff    strb wzr, [sp, #291]
  0x8001bc744:  910063e9    add x9, sp, #24
  0x8001bc748:  90015481    adrp x1, #44630016
  0x8001bc74c:  91270c21    add x1, x1, #2499
  0x8001bc750:  f9400908    ldr x8, [x8, #16]
  0x8001bc754:  91003129    add x9, x9, #12
  0x8001bc758:  f9000fe9    str x9, [sp, #24]
  0x8001bc75c:  52802009    mov w9, #256
  0x8001bc760:  390093ff    strb wzr, [sp, #36]
  0x8001bc764:  b90023e9    str w9, [sp, #32]
  0x8001bc768:  910063e0    add x0, sp, #24
  0x8001bc76c:  2a0403f7    mov w23, w4
  0x8001bc770:  aa0303f9    mov x25, x3
  0x8001bc774:  f9400908    ldr x8, [x8, #16]
  0x8001bc778:  b980250a    ldrsw x10, [x8, #36]
  0x8001bc77c:  b9800909    ldrsw x9, [x8, #8]
  0x8001bc780:  8b0a0108    add x8, x8, x10
  0x8001bc784:  8b090102    add x2, x8, x9
  0x8001bc788:  97fb7436    bl #-1191720
  0x8001bc78c:  52b84005    mov w5, #-1040187392
  0x8001bc790:  aa1903e3    mov x3, x25
  0x8001bc794:  2a1703e4    mov w4, w23
  0x8001bc798:  aa1f03ea    mov x10, xzr
  0x8001bc79c:  17fffd8a    b #-2520
  0x8001bc7a0:  f001bd00    adrp x0, #58339328
  0x8001bc7a4:  aa0303f9    mov x25, x3
  0x8001bc7a8:  f9452c00    ldr x0, [x0, #2648]
  0x8001bc7ac:  b90007e4    str w4, [sp, #4]
  0x8001bc7b0:  2a0503f7    mov w23, w5
  0x8001bc7b4:  94a79c7b    bl #43938284
  0x8001bc7b8:  f94007ea    ldr x10, [sp, #8]
  0x8001bc7bc:  2a1703e5    mov w5, w23
  0x8001bc7c0:  aa1903e3    mov x3, x25
  0x8001bc7c4:  b94007e4    ldr w4, [sp, #4]
  0x8001bc7c8:  34ffb080    cbz w0, #-2544
  0x8001bc7cc:  d001bc88    adrp x8, #58269696
  0x8001bc7d0:  f001bd09    adrp x9, #58339328
  0x8001bc7d4:  f942f908    ldr x8, [x8, #1520]
  0x8001bc7d8:  f9452929    ldr x9, [x9, #2640]
  0x8001bc7dc:  f001bd00    adrp x0, #58339328
  0x8001bc7e0:  91004108    add x8, x8, #16
  0x8001bc7e4:  f9000128    str x8, [x9]
  0x8001bc7e8:  f9452c00    ldr x0, [x0, #2648]
  0x8001bc7ec:  94a79c71    bl #43938244
  0x8001bc7f0:  f94007ea    ldr x10, [sp, #8]
  0x8001bc7f4:  2a1703e5    mov w5, w23
  0x8001bc7f8:  aa1903e3    mov x3, x25
  0x8001bc7fc:  b94007e4    ldr w4, [sp, #4]
  0x8001bc800:  17fffd76    b #-2600
  0x8001bc804:  aa1503e0    mov x0, x21
  0x8001bc808:  2a0403f8    mov w24, w4
  0x8001bc80c:  aa0303f9    mov x25, x3
  0x8001bc810:  d63f0100    blr x8
  0x8001bc814:  f9400a88    ldr x8, [x20, #16]
  0x8001bc818:  aa1903e3    mov x3, x25
  0x8001bc81c:  2a1803e4    mov w4, w24
  0x8001bc820:  17fffcf6    b #-3112
  0x8001bc824:  f001bd00    adrp x0, #58339328
  0x8001bc828:  aa0303f9    mov x25, x3
  0x8001bc82c:  f9453c00    ldr x0, [x0, #2680]
  0x8001bc830:  b90007e4    str w4, [sp, #4]
  0x8001bc834:  2a0503f7    mov w23, w5
  0x8001bc838:  94a79c5a    bl #43938152
  0x8001bc83c:  9001bded    adrp x13, #58441728
  0x8001bc840:  9001bdec    adrp x12, #58441728
  0x8001bc844:  f941b5ad    ldr x13, [x13, #872]
  0x8001bc848:  d001bc8b    adrp x11, #58269696
  0x8001bc84c:  d001bc89    adrp x9, #58269696
  0x8001bc850:  f941bd8c    ldr x12, [x12, #888]
  0x8001bc854:  f943016b    ldr x11, [x11, #1536]
  0x8001bc858:  2a1703e5    mov w5, w23
  0x8001bc85c:  aa1903e3    mov x3, x25
  0x8001bc860:  f94007ea    ldr x10, [sp, #8]
  0x8001bc864:  f9430d29    ldr x9, [x9, #1560]
  0x8001bc868:  b94007e4    ldr w4, [sp, #4]
  0x8001bc86c:  34ffc5e0    cbz w0, #-1860
  0x8001bc870:  d001bc88    adrp x8, #58269696
  0x8001bc874:  f001bd09    adrp x9, #58339328
  0x8001bc878:  f942f908    ldr x8, [x8, #1520]
  0x8001bc87c:  f9453929    ldr x9, [x9, #2672]
  0x8001bc880:  f001bd00    adrp x0, #58339328
  0x8001bc884:  91004108    add x8, x8, #16
  0x8001bc888:  f9000128    str x8, [x9]
  0x8001bc88c:  f9453c00    ldr x0, [x0, #2680]
  0x8001bc890:  94a79c48    bl #43938080
  0x8001bc894:  9001bded    adrp x13, #58441728
  0x8001bc898:  9001bdec    adrp x12, #58441728
  0x8001bc89c:  f941b5ad    ldr x13, [x13, #872]
  0x8001bc8a0:  d001bc8b    adrp x11, #58269696
  0x8001bc8a4:  d001bc89    adrp x9, #58269696
  0x8001bc8a8:  f941bd8c    ldr x12, [x12, #888]
  0x8001bc8ac:  f943016b    ldr x11, [x11, #1536]
  0x8001bc8b0:  2a1703e5    mov w5, w23
  0x8001bc8b4:  aa1903e3    mov x3, x25
  0x8001bc8b8:  f94007ea    ldr x10, [sp, #8]
  0x8001bc8bc:  f9430d29    ldr x9, [x9, #1560]
  0x8001bc8c0:  b94007e4    ldr w4, [sp, #4]
  0x8001bc8c4:  17fffe19    b #-1948
  0x8001bc8c8:  f001bd00    adrp x0, #58339328
  0x8001bc8cc:  aa0303f9    mov x25, x3
  0x8001bc8d0:  f9454400    ldr x0, [x0, #2696]
  0x8001bc8d4:  b90007e4    str w4, [sp, #4]
  0x8001bc8d8:  2a0503f7    mov w23, w5
  0x8001bc8dc:  94a79c31    bl #43937988
  0x8001bc8e0:  9001bded    adrp x13, #58441728
  0x8001bc8e4:  9001bdec    adrp x12, #58441728
  0x8001bc8e8:  f941b5ad    ldr x13, [x13, #872]
  0x8001bc8ec:  d001bc8b    adrp x11, #58269696
  0x8001bc8f0:  d001bc89    adrp x9, #58269696
  0x8001bc8f4:  f941bd8c    ldr x12, [x12, #888]
  0x8001bc8f8:  f943016b    ldr x11, [x11, #1536]
  0x8001bc8fc:  2a1703e5    mov w5, w23
  0x8001bc900:  aa1903e3    mov x3, x25
  0x8001bc904:  f94007ea    ldr x10, [sp, #8]
  0x8001bc908:  f9430d29    ldr x9, [x9, #1560]
  0x8001bc90c:  b94007e4    ldr w4, [sp, #4]
  0x8001bc910:  34ffcae0    cbz w0, #-1700
  0x8001bc914:  d001bc88    adrp x8, #58269696
  0x8001bc918:  f001bd09    adrp x9, #58339328
  0x8001bc91c:  f942f908    ldr x8, [x8, #1520]
  0x8001bc920:  f9454129    ldr x9, [x9, #2688]
  0x8001bc924:  f001bd00    adrp x0, #58339328
  0x8001bc928:  91004108    add x8, x8, #16
  0x8001bc92c:  f9000128    str x8, [x9]
  0x8001bc930:  f9454400    ldr x0, [x0, #2696]
  0x8001bc934:  94a79c1f    bl #43937916
  0x8001bc938:  9001bded    adrp x13, #58441728
  0x8001bc93c:  9001bdec    adrp x12, #58441728
  0x8001bc940:  f941b5ad    ldr x13, [x13, #872]
  0x8001bc944:  d001bc8b    adrp x11, #58269696
  0x8001bc948:  d001bc89    adrp x9, #58269696
  0x8001bc94c:  f941bd8c    ldr x12, [x12, #888]
  0x8001bc950:  f943016b    ldr x11, [x11, #1536]
  0x8001bc954:  2a1703e5    mov w5, w23
  0x8001bc958:  aa1903e3    mov x3, x25
  0x8001bc95c:  f94007ea    ldr x10, [sp, #8]
  0x8001bc960:  f9430d29    ldr x9, [x9, #1560]
  0x8001bc964:  b94007e4    ldr w4, [sp, #4]
  0x8001bc968:  17fffe41    b #-1788
  0x8001bc96c:  910063e8    add x8, sp, #24
  0x8001bc970:  2a0403fa    mov w26, w4
  0x8001bc974:  39048fff    strb wzr, [sp, #291]
  0x8001bc978:  91003108    add x8, x8, #12
  0x8001bc97c:  390093ff    strb wzr, [sp, #36]
  0x8001bc980:  f9000fe8    str x8, [sp, #24]
  0x8001bc984:  52802008    mov w8, #256
  0x8001bc988:  b90023e8    str w8, [sp, #32]
  0x8001bc98c:  f94006a8    ldr x8, [x21, #8]
  0x8001bc990:  14000021    b #132
  0x8001bc994:  39048fff    strb wzr, [sp, #291]
  0x8001bc998:  910063e9    add x9, sp, #24
  0x8001bc99c:  90015481    adrp x1, #44630016
  0x8001bc9a0:  91270c21    add x1, x1, #2499
  0x8001bc9a4:  f9400908    ldr x8, [x8, #16]
  0x8001bc9a8:  91003129    add x9, x9, #12
  0x8001bc9ac:  f9000fe9    str x9, [sp, #24]
  0x8001bc9b0:  52802009    mov w9, #256
  0x8001bc9b4:  390093ff    strb wzr, [sp, #36]
  0x8001bc9b8:  b90023e9    str w9, [sp, #32]
  0x8001bc9bc:  910063e0    add x0, sp, #24
  0x8001bc9c0:  aa1303f7    mov x23, x19
  0x8001bc9c4:  aa1603f3    mov x19, x22
  0x8001bc9c8:  2a0403f6    mov w22, w4
  0x8001bc9cc:  f9400908    ldr x8, [x8, #16]
  0x8001bc9d0:  b980250a    ldrsw x10, [x8, #36]
  0x8001bc9d4:  b9800909    ldrsw x9, [x8, #8]
  0x8001bc9d8:  8b0a0108    add x8, x8, x10
  0x8001bc9dc:  8b090102    add x2, x8, x9
  0x8001bc9e0:  97fb73a0    bl #-1192320
  0x8001bc9e4:  f94006a8    ldr x8, [x21, #8]
  0x8001bc9e8:  2a1603e4    mov w4, w22
  0x8001bc9ec:  aa1303f6    mov x22, x19
  0x8001bc9f0:  aa1703f3    mov x19, x23
  0x8001bc9f4:  910063e9    add x9, sp, #24
  0x8001bc9f8:  2a0403fa    mov w26, w4
  0x8001bc9fc:  39048fff    strb wzr, [sp, #291]
  0x8001bca00:  91003129    add x9, x9, #12
  0x8001bca04:  390093ff    strb wzr, [sp, #36]
  0x8001bca08:  f9000fe9    str x9, [sp, #24]
  0x8001bca0c:  52802009    mov w9, #256
  0x8001bca10:  b90023e9    str w9, [sp, #32]
  0x8001bca14:  f9400908    ldr x8, [x8, #16]
  0x8001bca18:  90015481    adrp x1, #44630016
  0x8001bca1c:  91270c21    add x1, x1, #2499
  0x8001bca20:  910063e0    add x0, sp, #24
  0x8001bca24:  f9400908    ldr x8, [x8, #16]
  0x8001bca28:  b980250a    ldrsw x10, [x8, #36]
  0x8001bca2c:  b9800909    ldrsw x9, [x8, #8]
  0x8001bca30:  8b0a0108    add x8, x8, x10
  0x8001bca34:  8b090102    add x2, x8, x9
  0x8001bca38:  97fb738a    bl #-1192408
  0x8001bca3c:  d001c808    adrp x8, #59777024
  0x8001bca40:  91140108    add x8, x8, #1280
  0x8001bca44:  f9000268    str x8, [x19]
  0x8001bca48:  52800037    mov w23, #1
  0x8001bca4c:  360799b9    tbz w25, #0, #-3276
  0x8001bca50:  2a1a03e4    mov w4, w26
  0x8001bca54:  aa1303e9    mov x9, x19
  0x8001bca58:  17fffd4e    b #-2760
  0x8001bca5c:  aa1703e0    mov x0, x23
  0x8001bca60:  aa1303fb    mov x27, x19
  0x8001bca64:  aa1603f3    mov x19, x22
  0x8001bca68:  2a0403f6    mov w22, w4
  0x8001bca6c:  d63f0100    blr x8
  0x8001bca70:  2a1603e4    mov w4, w22
  0x8001bca74:  aa1303f6    mov x22, x19
  0x8001bca78:  aa1b03f3    mov x19, x27
  0x8001bca7c:  17fffd35    b #-2860
  0x8001bca80:  9001bde0    adrp x0, #58441728
  0x8001bca84:  aa0303f9    mov x25, x3
  0x8001bca88:  f941bc00    ldr x0, [x0, #888]
  0x8001bca8c:  b90007e4    str w4, [sp, #4]
  0x8001bca90:  2a0503f7    mov w23, w5
  0x8001bca94:  94a79bc3    bl #43937548
  0x8001bca98:  9001bded    adrp x13, #58441728
  0x8001bca9c:  9001bdec    adrp x12, #58441728
  0x8001bcaa0:  f941b5ad    ldr x13, [x13, #872]
  0x8001bcaa4:  d001bc8b    adrp x11, #58269696
  0x8001bcaa8:  d001bc89    adrp x9, #58269696
  0x8001bcaac:  f941bd8c    ldr x12, [x12, #888]
  0x8001bcab0:  f943016b    ldr x11, [x11, #1536]
  0x8001bcab4:  2a1703e5    mov w5, w23
  0x8001bcab8:  aa1903e3    mov x3, x25
  0x8001bcabc:  f94007ea    ldr x10, [sp, #8]
  0x8001bcac0:  f9430d29    ldr x9, [x9, #1560]
  0x8001bcac4:  b94007e4    ldr w4, [sp, #4]
  0x8001bcac8:  34ffb200    cbz w0, #-2496
  0x8001bcacc:  d001bc88    adrp x8, #58269696
  0x8001bcad0:  9001bde9    adrp x9, #58441728
  0x8001bcad4:  f942f908    ldr x8, [x8, #1520]
  0x8001bcad8:  f941b929    ldr x9, [x9, #880]
  0x8001bcadc:  9001bde0    adrp x0, #58441728
  0x8001bcae0:  91004108    add x8, x8, #16
  0x8001bcae4:  f9000128    str x8, [x9]
  0x8001bcae8:  f941bc00    ldr x0, [x0, #888]
  0x8001bcaec:  94a79bb1    bl #43937476
  0x8001bcaf0:  9001bded    adrp x13, #58441728
  0x8001bcaf4:  9001bdec    adrp x12, #58441728
  0x8001bcaf8:  f941b5ad    ldr x13, [x13, #872]
  0x8001bcafc:  d001bc8b    adrp x11, #58269696
  0x8001bcb00:  d001bc89    adrp x9, #58269696
  0x8001bcb04:  f941bd8c    ldr x12, [x12, #888]
  0x8001bcb08:  f943016b    ldr x11, [x11, #1536]
  0x8001bcb0c:  2a1703e5    mov w5, w23
  0x8001bcb10:  aa1903e3    mov x3, x25
  0x8001bcb14:  f94007ea    ldr x10, [sp, #8]
  0x8001bcb18:  f9430d29    ldr x9, [x9, #1560]
  0x8001bcb1c:  b94007e4    ldr w4, [sp, #4]
  0x8001bcb20:  17fffd7a    b #-2584
  0x8001bcb24:  d001bc80    adrp x0, #58269696
  0x8001bcb28:  aa0303f9    mov x25, x3
  0x8001bcb2c:  f9430000    ldr x0, [x0, #1536]
  0x8001bcb30:  b90007e4    str w4, [sp, #4]
  0x8001bcb34:  2a0503f7    mov w23, w5
  0x8001bcb38:  94a79b9a    bl #43937384
  0x8001bcb3c:  9001bded    adrp x13, #58441728
  0x8001bcb40:  9001bdec    adrp x12, #58441728
  0x8001bcb44:  f941b5ad    ldr x13, [x13, #872]
  0x8001bcb48:  d001bc8b    adrp x11, #58269696
  0x8001bcb4c:  d001bc89    adrp x9, #58269696
  0x8001bcb50:  f941bd8c    ldr x12, [x12, #888]
  0x8001bcb54:  f943016b    ldr x11, [x11, #1536]
  0x8001bcb58:  2a1703e5    mov w5, w23
  0x8001bcb5c:  aa1903e3    mov x3, x25
  0x8001bcb60:  f94007ea    ldr x10, [sp, #8]
  0x8001bcb64:  f9430d29    ldr x9, [x9, #1560]
  0x8001bcb68:  b94007e4    ldr w4, [sp, #4]
  0x8001bcb6c:  34ffad20    cbz w0, #-2652
  0x8001bcb70:  d001bc88    adrp x8, #58269696
  0x8001bcb74:  d001bc89    adrp x9, #58269696
  0x8001bcb78:  f9430508    ldr x8, [x8, #1544]
  0x8001bcb7c:  f942fd29    ldr x9, [x9, #1528]
  0x8001bcb80:  d001bc80    adrp x0, #58269696
  0x8001bcb84:  91004108    add x8, x8, #16
  0x8001bcb88:  f9000128    str x8, [x9]
  0x8001bcb8c:  f9430000    ldr x0, [x0, #1536]
  0x8001bcb90:  94a79b88    bl #43937312
  0x8001bcb94:  9001bded    adrp x13, #58441728
  0x8001bcb98:  9001bdec    adrp x12, #58441728
  0x8001bcb9c:  f941b5ad    ldr x13, [x13, #872]
  0x8001bcba0:  d001bc8b    adrp x11, #58269696
  0x8001bcba4:  d001bc89    adrp x9, #58269696
  0x8001bcba8:  f941bd8c    ldr x12, [x12, #888]
  0x8001bcbac:  f943016b    ldr x11, [x11, #1536]
  0x8001bcbb0:  2a1703e5    mov w5, w23
  0x8001bcbb4:  aa1903e3    mov x3, x25
  0x8001bcbb8:  f94007ea    ldr x10, [sp, #8]
  0x8001bcbbc:  f9430d29    ldr x9, [x9, #1560]
  0x8001bcbc0:  b94007e4    ldr w4, [sp, #4]
  0x8001bcbc4:  17fffd53    b #-2740
  0x8001bcbc8:  d001bc80    adrp x0, #58269696
  0x8001bcbcc:  aa0303f9    mov x25, x3
  0x8001bcbd0:  f9430c00    ldr x0, [x0, #1560]
  0x8001bcbd4:  b90007e4    str w4, [sp, #4]
  0x8001bcbd8:  2a0503f7    mov w23, w5
  0x8001bcbdc:  94a79b71    bl #43937220
  0x8001bcbe0:  9001bded    adrp x13, #58441728
  0x8001bcbe4:  9001bdec    adrp x12, #58441728
  0x8001bcbe8:  f941b5ad    ldr x13, [x13, #872]
  0x8001bcbec:  d001bc8b    adrp x11, #58269696
  0x8001bcbf0:  d001bc89    adrp x9, #58269696
  0x8001bcbf4:  f941bd8c    ldr x12, [x12, #888]
  0x8001bcbf8:  f943016b    ldr x11, [x11, #1536]
  0x8001bcbfc:  2a1703e5    mov w5, w23
  0x8001bcc00:  aa1903e3    mov x3, x25
  0x8001bcc04:  f94007ea    ldr x10, [sp, #8]
  0x8001bcc08:  f9430d29    ldr x9, [x9, #1560]
  0x8001bcc0c:  b94007e4    ldr w4, [sp, #4]
  0x8001bcc10:  34ffa840    cbz w0, #-2808
  0x8001bcc14:  f001bc68    adrp x8, #58257408
  0x8001bcc18:  d001bc89    adrp x9, #58269696
  0x8001bcc1c:  f9440508    ldr x8, [x8, #2056]
  0x8001bcc20:  f9430929    ldr x9, [x9, #1552]
  0x8001bcc24:  d001bc80    adrp x0, #58269696
  0x8001bcc28:  91004108    add x8, x8, #16
  0x8001bcc2c:  f9000128    str x8, [x9]
  0x8001bcc30:  f9430c00    ldr x0, [x0, #1560]
  0x8001bcc34:  94a79b5f    bl #43937148
  0x8001bcc38:  9001bded    adrp x13, #58441728
  0x8001bcc3c:  9001bdec    adrp x12, #58441728
  0x8001bcc40:  f941b5ad    ldr x13, [x13, #872]
  0x8001bcc44:  d001bc8b    adrp x11, #58269696
  0x8001bcc48:  d001bc89    adrp x9, #58269696
  0x8001bcc4c:  f941bd8c    ldr x12, [x12, #888]
  0x8001bcc50:  f943016b    ldr x11, [x11, #1536]
  0x8001bcc54:  2a1703e5    mov w5, w23
  0x8001bcc58:  aa1903e3    mov x3, x25
  0x8001bcc5c:  f94007ea    ldr x10, [sp, #8]
  0x8001bcc60:  f9430d29    ldr x9, [x9, #1560]
  0x8001bcc64:  b94007e4    ldr w4, [sp, #4]
  0x8001bcc68:  17fffd2c    b #-2896
  0x8001bcc6c:  f001bd00    adrp x0, #58339328
  0x8001bcc70:  aa0303f9    mov x25, x3
  0x8001bcc74:  f9454c00    ldr x0, [x0, #2712]
  0x8001bcc78:  b90007e4    str w4, [sp, #4]
  0x8001bcc7c:  2a0503f7    mov w23, w5
  0x8001bcc80:  94a79b48    bl #43937056
  0x8001bcc84:  9001bded    adrp x13, #58441728
  0x8001bcc88:  9001bdec    adrp x12, #58441728
  0x8001bcc8c:  f941b5ad    ldr x13, [x13, #872]
  0x8001bcc90:  d001bc8b    adrp x11, #58269696
  0x8001bcc94:  d001bc89    adrp x9, #58269696
  0x8001bcc98:  f941bd8c    ldr x12, [x12, #888]
  0x8001bcc9c:  f943016b    ldr x11, [x11, #1536]
  0x8001bcca0:  2a1703e5    mov w5, w23
  0x8001bcca4:  aa1903e3    mov x3, x25
  0x8001bcca8:  f94007ea    ldr x10, [sp, #8]
  0x8001bccac:  f9430d29    ldr x9, [x9, #1560]
  0x8001bccb0:  b94007e4    ldr w4, [sp, #4]
  0x8001bccb4:  34ffb7e0    cbz w0, #-2308
  0x8001bccb8:  d001bc88    adrp x8, #58269696
  0x8001bccbc:  f001bd09    adrp x9, #58339328
  0x8001bccc0:  f942f908    ldr x8, [x8, #1520]
  0x8001bccc4:  f9454929    ldr x9, [x9, #2704]
  0x8001bccc8:  f001bd00    adrp x0, #58339328
  0x8001bcccc:  91004108    add x8, x8, #16
  0x8001bccd0:  f9000128    str x8, [x9]
  0x8001bccd4:  f9454c00    ldr x0, [x0, #2712]
  0x8001bccd8:  94a79b36    bl #43936984
  0x8001bccdc:  9001bded    adrp x13, #58441728
  0x8001bcce0:  9001bdec    adrp x12, #58441728
  0x8001bcce4:  f941b5ad    ldr x13, [x13, #872]
  0x8001bcce8:  d001bc8b    adrp x11, #58269696
  0x8001bccec:  d001bc89    adrp x9, #58269696
  0x8001bccf0:  f941bd8c    ldr x12, [x12, #888]
  0x8001bccf4:  f943016b    ldr x11, [x11, #1536]
  0x8001bccf8:  2a1703e5    mov w5, w23
  0x8001bccfc:  aa1903e3    mov x3, x25
  0x8001bcd00:  f94007ea    ldr x10, [sp, #8]
  0x8001bcd04:  f9430d29    ldr x9, [x9, #1560]
  0x8001bcd08:  b94007e4    ldr w4, [sp, #4]
  0x8001bcd0c:  17fffda9    b #-2396
  0x8001bcd10:  9001bde0    adrp x0, #58441728
  0x8001bcd14:  aa0303f9    mov x25, x3
  0x8001bcd18:  f941bc00    ldr x0, [x0, #888]
  0x8001bcd1c:  b90007e4    str w4, [sp, #4]
  0x8001bcd20:  2a0503f7    mov w23, w5
  0x8001bcd24:  94a79b1f    bl #43936892
  0x8001bcd28:  9001bded    adrp x13, #58441728
  0x8001bcd2c:  9001bdec    adrp x12, #58441728
  0x8001bcd30:  f941b5ad    ldr x13, [x13, #872]
  0x8001bcd34:  d001bc8b    adrp x11, #58269696
  0x8001bcd38:  d001bc89    adrp x9, #58269696
  0x8001bcd3c:  f941bd8c    ldr x12, [x12, #888]
  0x8001bcd40:  f943016b    ldr x11, [x11, #1536]
  0x8001bcd44:  2a1703e5    mov w5, w23
  0x8001bcd48:  aa1903e3    mov x3, x25
  0x8001bcd4c:  f94007ea    ldr x10, [sp, #8]
  0x8001bcd50:  f9430d29    ldr x9, [x9, #1560]
  0x8001bcd54:  b94007e4    ldr w4, [sp, #4]
  0x8001bcd58:  34ff8600    cbz w0, #-3904
  0x8001bcd5c:  d001bc88    adrp x8, #58269696
  0x8001bcd60:  9001bde9    adrp x9, #58441728
  0x8001bcd64:  f942f908    ldr x8, [x8, #1520]
  0x8001bcd68:  f941b929    ldr x9, [x9, #880]
  0x8001bcd6c:  9001bde0    adrp x0, #58441728
  0x8001bcd70:  91004108    add x8, x8, #16
  0x8001bcd74:  f9000128    str x8, [x9]
  0x8001bcd78:  f941bc00    ldr x0, [x0, #888]
  0x8001bcd7c:  94a79b0d    bl #43936820
  0x8001bcd80:  9001bded    adrp x13, #58441728
  0x8001bcd84:  9001bdec    adrp x12, #58441728
  0x8001bcd88:  f941b5ad    ldr x13, [x13, #872]
  0x8001bcd8c:  d001bc8b    adrp x11, #58269696
  0x8001bcd90:  d001bc89    adrp x9, #58269696
  0x8001bcd94:  f941bd8c    ldr x12, [x12, #888]
  0x8001bcd98:  f943016b    ldr x11, [x11, #1536]
  0x8001bcd9c:  2a1703e5    mov w5, w23
  0x8001bcda0:  aa1903e3    mov x3, x25
  0x8001bcda4:  f94007ea    ldr x10, [sp, #8]
  0x8001bcda8:  f9430d29    ldr x9, [x9, #1560]
  0x8001bcdac:  b94007e4    ldr w4, [sp, #4]
  0x8001bcdb0:  17fffc1a    b #-3992
  0x8001bcdb4:  d001bc80    adrp x0, #58269696
  0x8001bcdb8:  aa0303f9    mov x25, x3
  0x8001bcdbc:  f9430000    ldr x0, [x0, #1536]
  0x8001bcdc0:  b90007e4    str w4, [sp, #4]
  0x8001bcdc4:  2a0503f7    mov w23, w5
  0x8001bcdc8:  94a79af6    bl #43936728
  0x8001bcdcc:  9001bded    adrp x13, #58441728
  0x8001bcdd0:  9001bdec    adrp x12, #58441728
  0x8001bcdd4:  f941b5ad    ldr x13, [x13, #872]
  0x8001bcdd8:  d001bc8b    adrp x11, #58269696
  0x8001bcddc:  d001bc89    adrp x9, #58269696
  0x8001bcde0:  f941bd8c    ldr x12, [x12, #888]
  0x8001bcde4:  f943016b    ldr x11, [x11, #1536]
  0x8001bcde8:  2a1703e5    mov w5, w23
  0x8001bcdec:  aa1903e3    mov x3, x25
  0x8001bcdf0:  f94007ea    ldr x10, [sp, #8]
  0x8001bcdf4:  f9430d29    ldr x9, [x9, #1560]
  0x8001bcdf8:  b94007e4    ldr w4, [sp, #4]
  0x8001bcdfc:  34ff8120    cbz w0, #-4060
  0x8001bce00:  d001bc88    adrp x8, #58269696
  0x8001bce04:  d001bc89    adrp x9, #58269696
  0x8001bce08:  f9430508    ldr x8, [x8, #1544]
  0x8001bce0c:  f942fd29    ldr x9, [x9, #1528]
  0x8001bce10:  d001bc80    adrp x0, #58269696
  0x8001bce14:  91004108    add x8, x8, #16
  0x8001bce18:  f9000128    str x8, [x9]
  0x8001bce1c:  f9430000    ldr x0, [x0, #1536]
  0x8001bce20:  94a79ae4    bl #43936656
  0x8001bce24:  9001bded    adrp x13, #58441728
  0x8001bce28:  9001bdec    adrp x12, #58441728
  0x8001bce2c:  f941b5ad    ldr x13, [x13, #872]
  0x8001bce30:  d001bc8b    adrp x11, #58269696
  0x8001bce34:  d001bc89    adrp x9, #58269696
  0x8001bce38:  f941bd8c    ldr x12, [x12, #888]
  0x8001bce3c:  f943016b    ldr x11, [x11, #1536]
  0x8001bce40:  2a1703e5    mov w5, w23
  0x8001bce44:  aa1903e3    mov x3, x25
  0x8001bce48:  f94007ea    ldr x10, [sp, #8]
  0x8001bce4c:  f9430d29    ldr x9, [x9, #1560]
  0x8001bce50:  b94007e4    ldr w4, [sp, #4]
  0x8001bce54:  17fffbf3    b #-4148
  0x8001bce58:  9001bde0    adrp x0, #58441728
  0x8001bce5c:  aa0303f9    mov x25, x3
  0x8001bce60:  f941bc00    ldr x0, [x0, #888]
  0x8001bce64:  b90007e4    str w4, [sp, #4]
  0x8001bce68:  2a0503f7    mov w23, w5
  0x8001bce6c:  94a79acd    bl #43936564
  0x8001bce70:  9001bded    adrp x13, #58441728
  0x8001bce74:  9001bdec    adrp x12, #58441728
  0x8001bce78:  f941b5ad    ldr x13, [x13, #872]
  0x8001bce7c:  d001bc8b    adrp x11, #58269696
  0x8001bce80:  d001bc89    adrp x9, #58269696
  0x8001bce84:  f941bd8c    ldr x12, [x12, #888]
  0x8001bce88:  f943016b    ldr x11, [x11, #1536]
  0x8001bce8c:  2a1703e5    mov w5, w23
  0x8001bce90:  aa1903e3    mov x3, x25
  0x8001bce94:  f94007ea    ldr x10, [sp, #8]
  0x8001bce98:  f9430d29    ldr x9, [x9, #1560]
  0x8001bce9c:  b94007e4    ldr w4, [sp, #4]
  0x8001bcea0:  34ff9520    cbz w0, #-3420
  0x8001bcea4:  d001bc88    adrp x8, #58269696
  0x8001bcea8:  9001bde9    adrp x9, #58441728
  0x8001bceac:  f942f908    ldr x8, [x8, #1520]
  0x8001bceb0:  f941b929    ldr x9, [x9, #880]
  0x8001bceb4:  9001bde0    adrp x0, #58441728
  0x8001bceb8:  91004108    add x8, x8, #16
  0x8001bcebc:  f9000128    str x8, [x9]
  0x8001bcec0:  f941bc00    ldr x0, [x0, #888]
  0x8001bcec4:  94a79abb    bl #43936492
  0x8001bcec8:  9001bded    adrp x13, #58441728
  0x8001bcecc:  9001bdec    adrp x12, #58441728
  0x8001bced0:  f941b5ad    ldr x13, [x13, #872]
  0x8001bced4:  d001bc8b    adrp x11, #58269696
  0x8001bced8:  d001bc89    adrp x9, #58269696
  0x8001bcedc:  f941bd8c    ldr x12, [x12, #888]
  0x8001bcee0:  f943016b    ldr x11, [x11, #1536]
  0x8001bcee4:  2a1703e5    mov w5, w23
  0x8001bcee8:  aa1903e3    mov x3, x25
  0x8001bceec:  f94007ea    ldr x10, [sp, #8]
  0x8001bcef0:  f9430d29    ldr x9, [x9, #1560]
  0x8001bcef4:  b94007e4    ldr w4, [sp, #4]
  0x8001bcef8:  17fffc93    b #-3508
  0x8001bcefc:  d001bc80    adrp x0, #58269696
  0x8001bcf00:  aa0303f9    mov x25, x3
  0x8001bcf04:  f9430000    ldr x0, [x0, #1536]
  0x8001bcf08:  b90007e4    str w4, [sp, #4]
  0x8001bcf0c:  2a0503f7    mov w23, w5
  0x8001bcf10:  94a79aa4    bl #43936400
  0x8001bcf14:  9001bded    adrp x13, #58441728
  0x8001bcf18:  9001bdec    adrp x12, #58441728
  0x8001bcf1c:  f941b5ad    ldr x13, [x13, #872]
  0x8001bcf20:  d001bc8b    adrp x11, #58269696
  0x8001bcf24:  d001bc89    adrp x9, #58269696
  0x8001bcf28:  f941bd8c    ldr x12, [x12, #888]
  0x8001bcf2c:  f943016b    ldr x11, [x11, #1536]
  0x8001bcf30:  2a1703e5    mov w5, w23
  0x8001bcf34:  aa1903e3    mov x3, x25
  0x8001bcf38:  f94007ea    ldr x10, [sp, #8]
  0x8001bcf3c:  f9430d29    ldr x9, [x9, #1560]
  0x8001bcf40:  b94007e4    ldr w4, [sp, #4]
  0x8001bcf44:  34ff9040    cbz w0, #-3576
  0x8001bcf48:  d001bc88    adrp x8, #58269696
  0x8001bcf4c:  d001bc89    adrp x9, #58269696
  0x8001bcf50:  f9430508    ldr x8, [x8, #1544]
  0x8001bcf54:  f942fd29    ldr x9, [x9, #1528]
  0x8001bcf58:  d001bc80    adrp x0, #58269696
  0x8001bcf5c:  91004108    add x8, x8, #16
  0x8001bcf60:  f9000128    str x8, [x9]
  0x8001bcf64:  f9430000    ldr x0, [x0, #1536]
  0x8001bcf68:  94a79a92    bl #43936328
  0x8001bcf6c:  9001bded    adrp x13, #58441728
  0x8001bcf70:  9001bdec    adrp x12, #58441728
  0x8001bcf74:  f941b5ad    ldr x13, [x13, #872]
  0x8001bcf78:  d001bc8b    adrp x11, #58269696
  0x8001bcf7c:  d001bc89    adrp x9, #58269696
  0x8001bcf80:  f941bd8c    ldr x12, [x12, #888]
  0x8001bcf84:  f943016b    ldr x11, [x11, #1536]
  0x8001bcf88:  2a1703e5    mov w5, w23
  0x8001bcf8c:  aa1903e3    mov x3, x25
  0x8001bcf90:  f94007ea    ldr x10, [sp, #8]
  0x8001bcf94:  f9430d29    ldr x9, [x9, #1560]
  0x8001bcf98:  b94007e4    ldr w4, [sp, #4]
  0x8001bcf9c:  17fffc6c    b #-3664
  0x8001bcfa0:  9001bde0    adrp x0, #58441728
  0x8001bcfa4:  aa0303f9    mov x25, x3
  0x8001bcfa8:  f941bc00    ldr x0, [x0, #888]
  0x8001bcfac:  b90007e4    str w4, [sp, #4]
  0x8001bcfb0:  2a0503f7    mov w23, w5
  0x8001bcfb4:  94a79a7b    bl #43936236
  0x8001bcfb8:  9001bded    adrp x13, #58441728
  0x8001bcfbc:  9001bdec    adrp x12, #58441728
  0x8001bcfc0:  f941b5ad    ldr x13, [x13, #872]
  0x8001bcfc4:  d001bc8b    adrp x11, #58269696
  0x8001bcfc8:  d001bc89    adrp x9, #58269696
  0x8001bcfcc:  f941bd8c    ldr x12, [x12, #888]
  0x8001bcfd0:  f943016b    ldr x11, [x11, #1536]
  0x8001bcfd4:  2a1703e5    mov w5, w23
  0x8001bcfd8:  aa1903e3    mov x3, x25
  0x8001bcfdc:  f94007ea    ldr x10, [sp, #8]
  0x8001bcfe0:  f9430d29    ldr x9, [x9, #1560]
  0x8001bcfe4:  b94007e4    ldr w4, [sp, #4]
  0x8001bcfe8:  34ff9500    cbz w0, #-3424
  0x8001bcfec:  d001bc88    adrp x8, #58269696
  0x8001bcff0:  9001bde9    adrp x9, #58441728
  0x8001bcff4:  f942f908    ldr x8, [x8, #1520]
  0x8001bcff8:  f941b929    ldr x9, [x9, #880]
  0x8001bcffc:  9001bde0    adrp x0, #58441728
  0x8001bd000:  91004108    add x8, x8, #16
  0x8001bd004:  f9000128    str x8, [x9]
  0x8001bd008:  f941bc00    ldr x0, [x0, #888]
  0x8001bd00c:  94a79a69    bl #43936164
  0x8001bd010:  f001bdcd    adrp x13, #58437632
  0x8001bd014:  f001bdcc    adrp x12, #58437632
  0x8001bd018:  f941b5ad    ldr x13, [x13, #872]
  0x8001bd01c:  b001bc8b    adrp x11, #58265600
  0x8001bd020:  b001bc89    adrp x9, #58265600
  0x8001bd024:  f941bd8c    ldr x12, [x12, #888]
  0x8001bd028:  f943016b    ldr x11, [x11, #1536]
  0x8001bd02c:  2a1703e5    mov w5, w23
  0x8001bd030:  aa1903e3    mov x3, x25
  0x8001bd034:  f94007ea    ldr x10, [sp, #8]
  0x8001bd038:  f9430d29    ldr x9, [x9, #1560]
  0x8001bd03c:  b94007e4    ldr w4, [sp, #4]
  0x8001bd040:  17fffc92    b #-3512
  0x8001bd044:  b001bc80    adrp x0, #58265600
  0x8001bd048:  aa0303f9    mov x25, x3
  0x8001bd04c:  f9430000    ldr x0, [x0, #1536]
  0x8001bd050:  b90007e4    str w4, [sp, #4]
  0x8001bd054:  2a0503f7    mov w23, w5
  0x8001bd058:  94a79a52    bl #43936072
  0x8001bd05c:  f001bdcd    adrp x13, #58437632
  0x8001bd060:  f001bdcc    adrp x12, #58437632
  0x8001bd064:  f941b5ad    ldr x13, [x13, #872]
  0x8001bd068:  b001bc8b    adrp x11, #58265600
  0x8001bd06c:  b001bc89    adrp x9, #58265600
  0x8001bd070:  f941bd8c    ldr x12, [x12, #888]
  0x8001bd074:  f943016b    ldr x11, [x11, #1536]
  0x8001bd078:  2a1703e5    mov w5, w23
  0x8001bd07c:  aa1903e3    mov x3, x25
  0x8001bd080:  f94007ea    ldr x10, [sp, #8]
  0x8001bd084:  f9430d29    ldr x9, [x9, #1560]
  0x8001bd088:  b94007e4    ldr w4, [sp, #4]
  0x8001bd08c:  34ff9020    cbz w0, #-3580
  0x8001bd090:  b001bc88    adrp x8, #58265600
  0x8001bd094:  b001bc89    adrp x9, #58265600
  0x8001bd098:  f9430508    ldr x8, [x8, #1544]
  0x8001bd09c:  f942fd29    ldr x9, [x9, #1528]
  0x8001bd0a0:  b001bc80    adrp x0, #58265600
  0x8001bd0a4:  91004108    add x8, x8, #16
  0x8001bd0a8:  f9000128    str x8, [x9]
  0x8001bd0ac:  f9430000    ldr x0, [x0, #1536]
  0x8001bd0b0:  94a79a40    bl #43936000
  0x8001bd0b4:  f001bdcd    adrp x13, #58437632
  0x8001bd0b8:  f001bdcc    adrp x12, #58437632
  0x8001bd0bc:  f941b5ad    ldr x13, [x13, #872]
  0x8001bd0c0:  b001bc8b    adrp x11, #58265600
  0x8001bd0c4:  b001bc89    adrp x9, #58265600
  0x8001bd0c8:  f941bd8c    ldr x12, [x12, #888]
  0x8001bd0cc:  f943016b    ldr x11, [x11, #1536]
  0x8001bd0d0:  2a1703e5    mov w5, w23
  0x8001bd0d4:  aa1903e3    mov x3, x25
  0x8001bd0d8:  f94007ea    ldr x10, [sp, #8]
  0x8001bd0dc:  f9430d29    ldr x9, [x9, #1560]
  0x8001bd0e0:  b94007e4    ldr w4, [sp, #4]
  0x8001bd0e4:  17fffc6b    b #-3668
  0x8001bd0e8:  f001bdc0    adrp x0, #58437632
  0x8001bd0ec:  2a0403f7    mov w23, w4
  0x8001bd0f0:  f941bc00    ldr x0, [x0, #888]
  0x8001bd0f4:  aa0303f9    mov x25, x3
  0x8001bd0f8:  94a79a2a    bl #43935912
  0x8001bd0fc:  b001bc8b    adrp x11, #58265600
  0x8001bd100:  b001bc89    adrp x9, #58265600
  0x8001bd104:  f943016b    ldr x11, [x11, #1536]
  0x8001bd108:  f9430d29    ldr x9, [x9, #1560]
  0x8001bd10c:  52b84005    mov w5, #-1040187392
  0x8001bd110:  aa1903e3    mov x3, x25
  0x8001bd114:  2a1703e4    mov w4, w23
  0x8001bd118:  34ff97e0    cbz w0, #-3332
  0x8001bd11c:  b001bc88    adrp x8, #58265600
  0x8001bd120:  f001bdc9    adrp x9, #58437632
  0x8001bd124:  f942f908    ldr x8, [x8, #1520]
  0x8001bd128:  f941b929    ldr x9, [x9, #880]
  0x8001bd12c:  f001bdc0    adrp x0, #58437632
  0x8001bd130:  91004108    add x8, x8, #16
  0x8001bd134:  f9000128    str x8, [x9]
  0x8001bd138:  f941bc00    ldr x0, [x0, #888]
  0x8001bd13c:  94a79a1d    bl #43935860
  0x8001bd140:  b001bc8b    adrp x11, #58265600
  0x8001bd144:  b001bc89    adrp x9, #58265600
  0x8001bd148:  f943016b    ldr x11, [x11, #1536]
  0x8001bd14c:  f9430d29    ldr x9, [x9, #1560]
  0x8001bd150:  52b84005    mov w5, #-1040187392
  0x8001bd154:  aa1903e3    mov x3, x25
  0x8001bd158:  2a1703e4    mov w4, w23
  0x8001bd15c:  17fffcae    b #-3400
  0x8001bd160:  b001bc80    adrp x0, #58265600
  0x8001bd164:  2a0403f7    mov w23, w4
  0x8001bd168:  f9430000    ldr x0, [x0, #1536]
  0x8001bd16c:  aa0303f9    mov x25, x3
  0x8001bd170:  94a79a0c    bl #43935792
  0x8001bd174:  b001bc89    adrp x9, #58265600
  0x8001bd178:  52b84005    mov w5, #-1040187392
  0x8001bd17c:  f9430d29    ldr x9, [x9, #1560]
  0x8001bd180:  aa1903e3    mov x3, x25
  0x8001bd184:  2a1703e4    mov w4, w23
  0x8001bd188:  34ff94a0    cbz w0, #-3436
  0x8001bd18c:  b001bc88    adrp x8, #58265600
  0x8001bd190:  b001bc89    adrp x9, #58265600
  0x8001bd194:  f9430508    ldr x8, [x8, #1544]
  0x8001bd198:  f942fd29    ldr x9, [x9, #1528]
  0x8001bd19c:  b001bc80    adrp x0, #58265600
  0x8001bd1a0:  91004108    add x8, x8, #16
  0x8001bd1a4:  f9000128    str x8, [x9]
  0x8001bd1a8:  f9430000    ldr x0, [x0, #1536]
  0x8001bd1ac:  94a79a01    bl #43935748
  0x8001bd1b0:  b001bc89    adrp x9, #58265600
  0x8001bd1b4:  52b84005    mov w5, #-1040187392
  0x8001bd1b8:  f9430d29    ldr x9, [x9, #1560]
  0x8001bd1bc:  aa1903e3    mov x3, x25
  0x8001bd1c0:  2a1703e4    mov w4, w23
  0x8001bd1c4:  17fffc96    b #-3496
  0x8001bd1c8:  aa1f03e0    mov x0, xzr
  0x8001bd1cc:  17fffb97    b #-4516
  0x8001bd1d0:  34ff9df0    cbz w16, #-3140
  0x8001bd1d4:  f10005ce    subs x14, x14, #1
  0x8001bd1d8:  54ffa0a1    b.ne #-3052
  0x8001bd1dc:  17fffd08    b #-3040
  0x8001bd1e0:  b9403c09    ldr w9, [x0, #60]
  0x8001bd1e4:  b9404c0a    ldr w10, [x0, #76]
  0x8001bd1e8:  0b090149    add w9, w10, w9
  0x8001bd1ec:  b9405c0a    ldr w10, [x0, #92]
  0x8001bd1f0:  0b0a0129    add w9, w9, w10
  0x8001bd1f4:  531e7529    lsl w9, w9, #2
  0x8001bd1f8:  0b080d3a    add w26, w9, w8, lsl #3
  0x8001bd1fc:  17fffb57    b #-4772
  0x8001bd200:  b9403c09    ldr w9, [x0, #60]
  0x8001bd204:  5280018b    mov w11, #12
  0x8001bd208:  1b0b7d08    mul w8, w8, w11
  0x8001bd20c:  b9404c0a    ldr w10, [x0, #76]
  0x8001bd210:  0b090149    add w9, w10, w9
  0x8001bd214:  b9405c0a    ldr w10, [x0, #92]
  0x8001bd218:  0b0a0129    add w9, w9, w10
  0x8001bd21c:  b9406c0a    ldr w10, [x0, #108]
  0x8001bd220:  0b0a0d08    add w8, w8, w10, lsl #3
  0x8001bd224:  0b09091a    add w26, w8, w9, lsl #2
  0x8001bd228:  17fffb4c    b #-4816
  0x8001bd22c:  910063e9    add x9, sp, #24
  0x8001bd230:  39048fff    strb wzr, [sp, #291]
  0x8001bd234:  f0015461    adrp x1, #44625920
  0x8001bd238:  91270c21    add x1, x1, #2499
  0x8001bd23c:  91003129    add x9, x9, #12
  0x8001bd240:  390093ff    strb wzr, [sp, #36]
  0x8001bd244:  f9000fe9    str x9, [sp, #24]
  0x8001bd248:  52802009    mov w9, #256
  0x8001bd24c:  b980250a    ldrsw x10, [x8, #36]
  0x8001bd250:  b90023e9    str w9, [sp, #32]
  0x8001bd254:  910063e0    add x0, sp, #24
  0x8001bd258:  b9800909    ldrsw x9, [x8, #8]
  0x8001bd25c:  8b0a0108    add x8, x8, x10
  0x8001bd260:  8b090102    add x2, x8, x9
  0x8001bd264:  97fb717f    bl #-1194500
  0x8001bd268:  2a1f03f7    mov w23, wzr
  0x8001bd26c:  17fffa9c    b #-5520
  0x8001bd270:  d001bd00    adrp x0, #58335232
  0x8001bd274:  f9455400    ldr x0, [x0, #2728]
  0x8001bd278:  94a799ca    bl #43935528
  0x8001bd27c:  d001bd1c    adrp x28, #58335232
  0x8001bd280:  f945539c    ldr x28, [x28, #2720]
  0x8001bd284:  340000a0    cbz w0, #20
  0x8001bd288:  b900039f    str wzr, [x28]
  0x8001bd28c:  d001bd00    adrp x0, #58335232
  0x8001bd290:  f9455400    ldr x0, [x0, #2728]
  0x8001bd294:  94a799c7    bl #43935516
  0x8001bd298:  2a1f03f8    mov w24, wzr
  0x8001bd29c:  17fffa97    b #-5540

