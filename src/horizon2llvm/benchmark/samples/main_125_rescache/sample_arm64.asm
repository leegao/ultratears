; UltraTears chunk main_125_rescache: 1 functions [0x8001ef59c..0x8001f0044)

; Function f_8001ef59c [0x8001ef59c..0x8001f0044)
f_8001ef59c:
  0x8001ef59c:  d10643ff    sub sp, sp, #400
  0x8001ef5a0:  a9137bfd    stp x29, x30, [sp, #304]
  0x8001ef5a4:  a9146ffc    stp x28, x27, [sp, #320]
  0x8001ef5a8:  a91567fa    stp x26, x25, [sp, #336]
  0x8001ef5ac:  a9165ff8    stp x24, x23, [sp, #352]
  0x8001ef5b0:  a91757f6    stp x22, x21, [sp, #368]
  0x8001ef5b4:  a9184ff4    stp x20, x19, [sp, #384]
  0x8001ef5b8:  9104c3fd    add x29, sp, #304
  0x8001ef5bc:  a9402009    ldp x9, x8, [x0]
  0x8001ef5c0:  b9000fe4    str w4, [sp, #12]
  0x8001ef5c4:  f001baf9    adrp x25, #58060800
  0x8001ef5c8:  2a0303f7    mov w23, w3
  0x8001ef5cc:  aa0203f4    mov x20, x2
  0x8001ef5d0:  aa0003f5    mov x21, x0
  0x8001ef5d4:  aa0103f6    mov x22, x1
  0x8001ef5d8:  f9400913    ldr x19, [x8, #16]
  0x8001ef5dc:  f9404d28    ldr x8, [x9, #152]
  0x8001ef5e0:  f9439b39    ldr x25, [x25, #1840]
  0x8001ef5e4:  eb19011f    cmp x8, x25
  0x8001ef5e8:  540035e1    b.ne #1724
  0x8001ef5ec:  79403aa8    ldrh w8, [x21, #28]
  0x8001ef5f0:  5280078a    mov w10, #60
  0x8001ef5f4:  f9402669    ldr x9, [x19, #72]
  0x8001ef5f8:  9baa2508    umaddl x8, w8, w10, x9
  0x8001ef5fc:  b9801509    ldrsw x9, [x8, #20]
  0x8001ef600:  f9400a68    ldr x8, [x19, #16]
  0x8001ef604:  8b090100    add x0, x8, x9
  0x8001ef608:  b9407409    ldr w9, [x0, #116]
  0x8001ef60c:  52b84018    mov w24, #-1040187392
  0x8001ef610:  f9000bf4    str x20, [sp, #16]
  0x8001ef614:  f90003f6    str x22, [sp]
  0x8001ef618:  7100053f    cmp w9, #1
  0x8001ef61c:  5400064b    b.lt #200
  0x8001ef620:  f940166a    ldr x10, [x19, #40]
  0x8001ef624:  5280030f    mov w15, #24
  0x8001ef628:  aa1f03fb    mov x27, xzr
  0x8001ef62c:  b980700e    ldrsw x14, [x0, #112]
  0x8001ef630:  f94002cb    ldr x11, [x22]
  0x8001ef634:  9100056c    add x12, x11, #1
  0x8001ef638:  b980214a    ldrsw x10, [x10, #32]
  0x8001ef63c:  8b0a010d    add x13, x8, x10
  0x8001ef640:  b980250a    ldrsw x10, [x8, #36]
  0x8001ef644:  9b2f35dc    smaddl x28, w14, w15, x13
  0x8001ef648:  5280030e    mov w14, #24
  0x8001ef64c:  8b0a010a    add x10, x8, x10
  0x8001ef650:  91000d4d    add x13, x10, #3
  0x8001ef654:  9b0e7f6f    mul x15, x27, x14
  0x8001ef658:  b8af6b90    ldrsw x16, [x28, x15]
  0x8001ef65c:  8b10014f    add x15, x10, x16
  0x8001ef660:  eb0f017f    cmp x11, x15
  0x8001ef664:  54000640    b.eq #200
  0x8001ef668:  aa1f03ef    mov x15, xzr
  0x8001ef66c:  8b1001b0    add x16, x13, x16
  0x8001ef670:  8b0f0191    add x17, x12, x15
  0x8001ef674:  8b0f0212    add x18, x16, x15
  0x8001ef678:  385ff220    ldurb w0, [x17, #-1]
  0x8001ef67c:  385fd241    ldurb w1, [x18, #-3]
  0x8001ef680:  6b01001f    cmp w0, w1
  0x8001ef684:  540002a1    b.ne #84
  0x8001ef688:  34000520    cbz w0, #164
  0x8001ef68c:  f15001ff    cmp x15, #1024, lsl #12
  0x8001ef690:  54000240    b.eq #72
  0x8001ef694:  386f6980    ldrb w0, [x12, x15]
  0x8001ef698:  385fe241    ldurb w1, [x18, #-2]
  0x8001ef69c:  6b01001f    cmp w0, w1
  0x8001ef6a0:  540001c1    b.ne #56
  0x8001ef6a4:  34000440    cbz w0, #136
  0x8001ef6a8:  39400620    ldrb w0, [x17, #1]
  0x8001ef6ac:  385ff252    ldurb w18, [x18, #-1]
  0x8001ef6b0:  6b12001f    cmp w0, w18
  0x8001ef6b4:  54000121    b.ne #36
  0x8001ef6b8:  340003a0    cbz w0, #116
  0x8001ef6bc:  39400a31    ldrb w17, [x17, #2]
  0x8001ef6c0:  386f6a12    ldrb w18, [x16, x15]
  0x8001ef6c4:  6b12023f    cmp w17, w18
  0x8001ef6c8:  54000081    b.ne #16
  0x8001ef6cc:  34000311    cbz w17, #96
  0x8001ef6d0:  910011ef    add x15, x15, #4
  0x8001ef6d4:  17ffffe7    b #-100
  0x8001ef6d8:  9100077b    add x27, x27, #1
  0x8001ef6dc:  eb09037f    cmp x27, x9
  0x8001ef6e0:  54fffba1    b.ne #-140
  0x8001ef6e4:  36002e97    tbz w23, #0, #1488
  0x8001ef6e8:  910063e9    add x9, sp, #24
  0x8001ef6ec:  39048fff    strb wzr, [sp, #291]
  0x8001ef6f0:  b00152e1    adrp x1, #44421120
  0x8001ef6f4:  91270c21    add x1, x1, #2499
  0x8001ef6f8:  91003129    add x9, x9, #12
  0x8001ef6fc:  390093ff    strb wzr, [sp, #36]
  0x8001ef700:  f9000fe9    str x9, [sp, #24]
  0x8001ef704:  52802009    mov w9, #256
  0x8001ef708:  b980250a    ldrsw x10, [x8, #36]
  0x8001ef70c:  b90023e9    str w9, [sp, #32]
  0x8001ef710:  910063e0    add x0, sp, #24
  0x8001ef714:  b9800909    ldrsw x9, [x8, #8]
  0x8001ef718:  8b0a0108    add x8, x8, x10
  0x8001ef71c:  8b090102    add x2, x8, x9
  0x8001ef720:  97faa850    bl #-1400512
  0x8001ef724:  2a1f03f3    mov w19, wzr
  0x8001ef728:  14000164    b #1424
  0x8001ef72c:  52800308    mov w8, #24
  0x8001ef730:  9b08737a    madd x26, x27, x8, x28
  0x8001ef734:  b8408f54    ldr w20, [x26, #8]!
  0x8001ef738:  aa1a03f3    mov x19, x26
  0x8001ef73c:  78dfce77    ldrsh w23, [x19, #-4]!
  0x8001ef740:  0a180296    and w22, w20, w24
  0x8001ef744:  37f800b7    tbnz w23, #31, #20
  0x8001ef748:  f94006a8    ldr x8, [x21, #8]
  0x8001ef74c:  7941b909    ldrh w9, [x8, #220]
  0x8001ef750:  34000989    cbz w9, #304
  0x8001ef754:  79400277    ldrh w23, [x19]
  0x8001ef758:  529ff388    mov w8, #65436
  0x8001ef75c:  6b37211f    cmp w8, w23, uxth
  0x8001ef760:  54001123    b.lo #548
  0x8001ef764:  52800308    mov w8, #24
  0x8001ef768:  6b1802df    cmp w22, w24
  0x8001ef76c:  9b087368    madd x8, x27, x8, x28
  0x8001ef770:  79400d08    ldrh w8, [x8, #6]
  0x8001ef774:  12003913    and w19, w8, #0x7fff
  0x8001ef778:  54002020    b.eq #1028
  0x8001ef77c:  f9400bf6    ldr x22, [sp, #16]
  0x8001ef780:  2a1f03fc    mov w28, wzr
  0x8001ef784:  2a1f03fa    mov w26, wzr
  0x8001ef788:  f001c668    adrp x8, #59568128
  0x8001ef78c:  91150108    add x8, x8, #1344
  0x8001ef790:  f94002db    ldr x27, [x22]
  0x8001ef794:  08dffd08    ldarb w8, [x8]
  0x8001ef798:  360026e8    tbz w8, #0, #1244
  0x8001ef79c:  37782a17    tbnz w23, #15, #1344
  0x8001ef7a0:  f94006a8    ldr x8, [x21, #8]
  0x8001ef7a4:  b9406109    ldr w9, [x8, #96]
  0x8001ef7a8:  6b37213f    cmp w9, w23, uxth
  0x8001ef7ac:  54002aad    b.le #1364
  0x8001ef7b0:  f9403509    ldr x9, [x8, #104]
  0x8001ef7b4:  92403eea    and x10, x23, #0xffff
  0x8001ef7b8:  f86a7937    ldr x23, [x9, x10, lsl #3]
  0x8001ef7bc:  b4002c77    cbz x23, #1420
  0x8001ef7c0:  f94002e8    ldr x8, [x23]
  0x8001ef7c4:  f9404d08    ldr x8, [x8, #152]
  0x8001ef7c8:  eb19011f    cmp x8, x25
  0x8001ef7cc:  54002ee1    b.ne #1500
  0x8001ef7d0:  f94006e8    ldr x8, [x23, #8]
  0x8001ef7d4:  5280078b    mov w11, #60
  0x8001ef7d8:  79403ae9    ldrh w9, [x23, #28]
  0x8001ef7dc:  f9400908    ldr x8, [x8, #16]
  0x8001ef7e0:  f940250a    ldr x10, [x8, #72]
  0x8001ef7e4:  f9400908    ldr x8, [x8, #16]
  0x8001ef7e8:  9bab2929    umaddl x9, w9, w11, x10
  0x8001ef7ec:  b9801529    ldrsw x9, [x9, #20]
  0x8001ef7f0:  8b090100    add x0, x8, x9
  0x8001ef7f4:  35001cbc    cbnz w28, #916
  0x8001ef7f8:  13003e68    sxth w8, w19
  0x8001ef7fc:  b9403c09    ldr w9, [x0, #60]
  0x8001ef800:  5280018b    mov w11, #12
  0x8001ef804:  1b0b7d08    mul w8, w8, w11
  0x8001ef808:  b9404c0a    ldr w10, [x0, #76]
  0x8001ef80c:  0b090149    add w9, w10, w9
  0x8001ef810:  b9405c0a    ldr w10, [x0, #92]
  0x8001ef814:  0b0a0129    add w9, w9, w10
  0x8001ef818:  b9406c0a    ldr w10, [x0, #108]
  0x8001ef81c:  0b0a0d08    add w8, w8, w10, lsl #3
  0x8001ef820:  0b090913    add w19, w8, w9, lsl #2
  0x8001ef824:  f9400ae0    ldr x0, [x23, #16]
  0x8001ef828:  b4000100    cbz x0, #32
  0x8001ef82c:  f9400008    ldr x8, [x0]
  0x8001ef830:  9001bb89    adrp x9, #58130432
  0x8001ef834:  f9400908    ldr x8, [x8, #16]
  0x8001ef838:  f9462929    ldr x9, [x9, #3152]
  0x8001ef83c:  eb09011f    cmp x8, x9
  0x8001ef840:  540019a1    b.ne #820
  0x8001ef844:  f9400400    ldr x0, [x0, #8]
  0x8001ef848:  8b33c008    add x8, x0, w19, sxtw
  0x8001ef84c:  2a1f03f7    mov w23, wzr
  0x8001ef850:  927ef508    and x8, x8, #0xfffffffffffffffc
  0x8001ef854:  f90002c8    str x8, [x22]
  0x8001ef858:  37000c7c    tbnz w28, #0, #396
  0x8001ef85c:  520002e0    eor w0, w23, #0x1
  0x8001ef860:  a9584ff4    ldp x20, x19, [sp, #384]
  0x8001ef864:  a95757f6    ldp x22, x21, [sp, #368]
  0x8001ef868:  a9565ff8    ldp x24, x23, [sp, #352]
  0x8001ef86c:  a95567fa    ldp x26, x25, [sp, #336]
  0x8001ef870:  a9546ffc    ldp x28, x27, [sp, #320]
  0x8001ef874:  a9537bfd    ldp x29, x30, [sp, #304]
  0x8001ef878:  910643ff    add sp, sp, #400
  0x8001ef87c:  d65f03c0    ret
  0x8001ef880:  b9406109    ldr w9, [x8, #96]
  0x8001ef884:  6b17013f    cmp w9, w23
  0x8001ef888:  5400296d    b.le #1324
  0x8001ef88c:  f9403508    ldr x8, [x8, #104]
  0x8001ef890:  f8775917    ldr x23, [x8, w23, uxtw #3]
  0x8001ef894:  9001bb88    adrp x8, #58130432
  0x8001ef898:  f9452d08    ldr x8, [x8, #2648]
  0x8001ef89c:  08dffd08    ldarb w8, [x8]
  0x8001ef8a0:  36002b08    tbz w8, #0, #1376
  0x8001ef8a4:  b4000117    cbz x23, #32
  0x8001ef8a8:  f94002e8    ldr x8, [x23]
  0x8001ef8ac:  9001bb81    adrp x1, #58130432
  0x8001ef8b0:  aa1703e0    mov x0, x23
  0x8001ef8b4:  f9400108    ldr x8, [x8]
  0x8001ef8b8:  f9452821    ldr x1, [x1, #2640]
  0x8001ef8bc:  d63f0100    blr x8
  0x8001ef8c0:  b5000620    cbnz x0, #196
  0x8001ef8c4:  9001bb88    adrp x8, #58130432
  0x8001ef8c8:  f9453508    ldr x8, [x8, #2664]
  0x8001ef8cc:  08dffd08    ldarb w8, [x8]
  0x8001ef8d0:  36002b48    tbz w8, #0, #1384
  0x8001ef8d4:  b4000117    cbz x23, #32
  0x8001ef8d8:  f94002e8    ldr x8, [x23]
  0x8001ef8dc:  9001bb81    adrp x1, #58130432
  0x8001ef8e0:  aa1703e0    mov x0, x23
  0x8001ef8e4:  f9400108    ldr x8, [x8]
  0x8001ef8e8:  f9453021    ldr x1, [x1, #2656]
  0x8001ef8ec:  d63f0100    blr x8
  0x8001ef8f0:  b50004a0    cbnz x0, #148
  0x8001ef8f4:  9001bb88    adrp x8, #58130432
  0x8001ef8f8:  f9453d08    ldr x8, [x8, #2680]
  0x8001ef8fc:  08dffd08    ldarb w8, [x8]
  0x8001ef900:  36002b88    tbz w8, #0, #1392
  0x8001ef904:  b4000117    cbz x23, #32
  0x8001ef908:  f94002e8    ldr x8, [x23]
  0x8001ef90c:  9001bb81    adrp x1, #58130432
  0x8001ef910:  aa1703e0    mov x0, x23
  0x8001ef914:  f9400108    ldr x8, [x8]
  0x8001ef918:  f9453821    ldr x1, [x1, #2672]
  0x8001ef91c:  d63f0100    blr x8
  0x8001ef920:  b5000320    cbnz x0, #100
  0x8001ef924:  9001bb88    adrp x8, #58130432
  0x8001ef928:  f9454508    ldr x8, [x8, #2696]
  0x8001ef92c:  08dffd08    ldarb w8, [x8]
  0x8001ef930:  36002bc8    tbz w8, #0, #1400
  0x8001ef934:  b4000117    cbz x23, #32
  0x8001ef938:  f94002e8    ldr x8, [x23]
  0x8001ef93c:  9001bb81    adrp x1, #58130432
  0x8001ef940:  aa1703e0    mov x0, x23
  0x8001ef944:  f9400108    ldr x8, [x8]
  0x8001ef948:  f9454021    ldr x1, [x1, #2688]
  0x8001ef94c:  d63f0100    blr x8
  0x8001ef950:  b50001a0    cbnz x0, #52
  0x8001ef954:  9001bb88    adrp x8, #58130432
  0x8001ef958:  f9454d08    ldr x8, [x8, #2712]
  0x8001ef95c:  08dffd08    ldarb w8, [x8]
  0x8001ef960:  36002c08    tbz w8, #0, #1408
  0x8001ef964:  b4ffef97    cbz x23, #-528
  0x8001ef968:  f94002e8    ldr x8, [x23]
  0x8001ef96c:  9001bb81    adrp x1, #58130432
  0x8001ef970:  aa1703e0    mov x0, x23
  0x8001ef974:  f9400108    ldr x8, [x8]
  0x8001ef978:  f9454821    ldr x1, [x1, #2704]
  0x8001ef97c:  d63f0100    blr x8
  0x8001ef980:  b4ffeea0    cbz x0, #-556
  0x8001ef984:  b9400348    ldr w8, [x26]
  0x8001ef988:  6b1802df    cmp w22, w24
  0x8001ef98c:  1207751a    and w26, w8, #0xfe7fffff
  0x8001ef990:  7a401b44    ccmp w26, #0, #4, ne
  0x8001ef994:  54000961    b.ne #300
  0x8001ef998:  52800308    mov w8, #24
  0x8001ef99c:  2a1f03f3    mov w19, wzr
  0x8001ef9a0:  9b087368    madd x8, x27, x8, x28
  0x8001ef9a4:  91003116    add x22, x8, #12
  0x8001ef9a8:  f9400bea    ldr x10, [sp, #16]
  0x8001ef9ac:  7100027f    cmp w19, #0
  0x8001ef9b0:  927ef6c8    and x8, x22, #0xfffffffffffffffc
  0x8001ef9b4:  1a9f07f7    cset w23, ne
  0x8001ef9b8:  0a180349    and w9, w26, w24
  0x8001ef9bc:  f940015b    ldr x27, [x10]
  0x8001ef9c0:  aa0a03f6    mov x22, x10
  0x8001ef9c4:  5318628a    ubfx w10, w20, #24, #1
  0x8001ef9c8:  aa0a0108    orr x8, x8, x10
  0x8001ef9cc:  f90002c8    str x8, [x22]
  0x8001ef9d0:  36b80074    tbz w20, #23, #12
  0x8001ef9d4:  b27f0108    orr x8, x8, #0x2
  0x8001ef9d8:  f90002c8    str x8, [x22]
  0x8001ef9dc:  6b18013f    cmp w9, w24
  0x8001ef9e0:  54fff3e1    b.ne #-388
  0x8001ef9e4:  f1000f7f    cmp x27, #3
  0x8001ef9e8:  54001108    b.hi #544
  0x8001ef9ec:  b9400fe9    ldr w9, [sp, #12]
  0x8001ef9f0:  370010c9    tbnz w9, #0, #536
  0x8001ef9f4:  f9400aa0    ldr x0, [x21, #16]
  0x8001ef9f8:  927ef514    and x20, x8, #0xfffffffffffffffc
  0x8001ef9fc:  f9400008    ldr x8, [x0]
  0x8001efa00:  f9402d08    ldr x8, [x8, #88]
  0x8001efa04:  d63f0100    blr x8
  0x8001efa08:  f9400813    ldr x19, [x0, #16]
  0x8001efa0c:  b4000073    cbz x19, #12
  0x8001efa10:  f9400268    ldr x8, [x19]
  0x8001efa14:  f9000808    str x8, [x0, #16]
  0x8001efa18:  12800008    mov w8, #-1
  0x8001efa1c:  f9001a68    str x8, [x19, #48]
  0x8001efa20:  9001bae8    adrp x8, #58048512
  0x8001efa24:  f945bd08    ldr x8, [x8, #2936]
  0x8001efa28:  a9017e7f    stp xzr, xzr, [x19, #16]
  0x8001efa2c:  a9027e7f    stp xzr, xzr, [x19, #32]
  0x8001efa30:  a9007e68    stp x8, xzr, [x19]
  0x8001efa34:  29402408    ldp w8, w9, [x0]
  0x8001efa38:  93407d08    sxtw x8, w8
  0x8001efa3c:  6b09011f    cmp w8, w9
  0x8001efa40:  540000ca    b.ge #24
  0x8001efa44:  f9400409    ldr x9, [x0, #8]
  0x8001efa48:  f8287933    str x19, [x9, x8, lsl #3]
  0x8001efa4c:  b9400008    ldr w8, [x0]
  0x8001efa50:  11000508    add w8, w8, #1
  0x8001efa54:  b9000008    str w8, [x0]
  0x8001efa58:  f94003e8    ldr x8, [sp]
  0x8001efa5c:  528000c9    mov w9, #6
  0x8001efa60:  12003f4a    and w10, w26, #0xffff
  0x8001efa64:  f9400108    ldr x8, [x8]
  0x8001efa68:  2905266a    stp w10, w9, [x19, #40]
  0x8001efa6c:  a9005268    stp x8, x20, [x19]
  0x8001efa70:  f9400aa0    ldr x0, [x21, #16]
  0x8001efa74:  f9400008    ldr x8, [x0]
  0x8001efa78:  f9402908    ldr x8, [x8, #80]
  0x8001efa7c:  d63f0100    blr x8
  0x8001efa80:  b4002900    cbz x0, #1312
  0x8001efa84:  f9400aa0    ldr x0, [x21, #16]
  0x8001efa88:  f9400008    ldr x8, [x0]
  0x8001efa8c:  f9402908    ldr x8, [x8, #80]
  0x8001efa90:  d63f0100    blr x8
  0x8001efa94:  29422809    ldp w9, w10, [x0, #16]
  0x8001efa98:  51000928    sub w8, w9, #2
  0x8001efa9c:  6b0a011f    cmp w8, w10
  0x8001efaa0:  54002803    b.lo #1280
  0x8001efaa4:  51000d29    sub w9, w9, #3
  0x8001efaa8:  b9001009    str w9, [x0, #16]
  0x8001efaac:  f9400009    ldr x9, [x0]
  0x8001efab0:  8b284928    add x8, x9, w8, uxtw #2
  0x8001efab4:  f9000a68    str x8, [x19, #16]
  0x8001efab8:  b900327f    str wzr, [x19, #48]
  0x8001efabc:  1400002b    b #172
  0x8001efac0:  529ffff7    mov w23, #65535
  0x8001efac4:  529ffff3    mov w19, #65535
  0x8001efac8:  f9400bf6    ldr x22, [sp, #16]
  0x8001efacc:  0a180348    and w8, w26, w24
  0x8001efad0:  6b18011f    cmp w8, w24
  0x8001efad4:  1a9f17fc    cset w28, eq
  0x8001efad8:  7100035f    cmp w26, #0
  0x8001efadc:  7a581104    ccmp w8, w24, #4, ne
  0x8001efae0:  54ffe540    b.eq #-856
  0x8001efae4:  f94006a8    ldr x8, [x21, #8]
  0x8001efae8:  9001bb89    adrp x9, #58130432
  0x8001efaec:  12003f41    and w1, w26, #0xffff
  0x8001efaf0:  f9401100    ldr x0, [x8, #32]
  0x8001efaf4:  f9400008    ldr x8, [x0]
  0x8001efaf8:  f9409108    ldr x8, [x8, #288]
  0x8001efafc:  f9448d29    ldr x9, [x9, #2328]
  0x8001efb00:  eb09011f    cmp x8, x9
  0x8001efb04:  540020a1    b.ne #1044
  0x8001efb08:  f9405c08    ldr x8, [x0, #184]
  0x8001efb0c:  b4000208    cbz x8, #64
  0x8001efb10:  b940b00a    ldr w10, [x0, #176]
  0x8001efb14:  6b01015f    cmp w10, w1
  0x8001efb18:  1a9f8029    csel w9, w1, wzr, hi
  0x8001efb1c:  d37c7d2b    ubfiz x11, x9, #4, #32
  0x8001efb20:  38eb690b    ldrsb w11, [x8, x11]
  0x8001efb24:  36f81feb    tbz w11, #31, #1020
  0x8001efb28:  6b01015f    cmp w10, w1
  0x8001efb2c:  540020c9    b.ls #1048
  0x8001efb30:  8b21510a    add x10, x8, w1, uxtw #4
  0x8001efb34:  79c0054a    ldrsh w10, [x10, #2]
  0x8001efb38:  36f820ea    tbz w10, #31, #1052
  0x8001efb3c:  2a0103e9    mov w9, w1
  0x8001efb40:  8b091108    add x8, x8, x9, lsl #4
  0x8001efb44:  f9400508    ldr x8, [x8, #8]
  0x8001efb48:  b5002288    cbnz x8, #1104
  0x8001efb4c:  b9405009    ldr w9, [x0, #80]
  0x8001efb50:  6b01013f    cmp w9, w1
  0x8001efb54:  f9402c08    ldr x8, [x0, #88]
  0x8001efb58:  54002209    b.ls #1088
  0x8001efb5c:  52800189    mov w9, #12
  0x8001efb60:  2a1f03f7    mov w23, wzr
  0x8001efb64:  9ba92028    umaddl x8, w1, w9, x8
  0x8001efb68:  927ef508    and x8, x8, #0xfffffffffffffffc
  0x8001efb6c:  f90002c8    str x8, [x22]
  0x8001efb70:  17ffff3b    b #-788
  0x8001efb74:  d63f0100    blr x8
  0x8001efb78:  17ffff34    b #-816
  0x8001efb7c:  b9400348    ldr w8, [x26]
  0x8001efb80:  1207751a    and w26, w8, #0xfe7fffff
  0x8001efb84:  17ffffd1    b #-188
  0x8001efb88:  f94006a8    ldr x8, [x21, #8]
  0x8001efb8c:  f9400908    ldr x8, [x8, #16]
  0x8001efb90:  f9402908    ldr x8, [x8, #80]
  0x8001efb94:  b9401909    ldr w9, [x8, #24]
  0x8001efb98:  8b090108    add x8, x8, x9
  0x8001efb9c:  b9400109    ldr w9, [x8]
  0x8001efba0:  6b3a213f    cmp w9, w26, uxth
  0x8001efba4:  540002ed    b.le #92
  0x8001efba8:  12003f49    and w9, w26, #0xffff
  0x8001efbac:  5280038a    mov w10, #28
  0x8001efbb0:  9baa2128    umaddl x8, w9, w10, x8
  0x8001efbb4:  79403d09    ldrh w9, [x8, #30]
  0x8001efbb8:  13003e68    sxth w8, w19
  0x8001efbbc:  7100193f    cmp w9, #6
  0x8001efbc0:  54ffe1e0    b.eq #-964
  0x8001efbc4:  51000929    sub w9, w9, #2
  0x8001efbc8:  71000d3f    cmp w9, #3
  0x8001efbcc:  540001a8    b.hi #52
  0x8001efbd0:  90015c2a    adrp x10, #45629440
  0x8001efbd4:  9131194a    add x10, x10, #3142
  0x8001efbd8:  1000008b    adr x11, #16
  0x8001efbdc:  3869694c    ldrb w12, [x10, x9]
  0x8001efbe0:  8b0c096b    add x11, x11, x12, lsl #2
  0x8001efbe4:  d61f0160    br x11
  0x8001efbe8:  b9403c09    ldr w9, [x0, #60]
  0x8001efbec:  0b080128    add w8, w9, w8
  0x8001efbf0:  b9404c0a    ldr w10, [x0, #76]
  0x8001efbf4:  0b0a0108    add w8, w8, w10
  0x8001efbf8:  531e7513    lsl w19, w8, #2
  0x8001efbfc:  17ffff0a    b #-984
  0x8001efc00:  2a1f03f3    mov w19, wzr
  0x8001efc04:  17ffff08    b #-992
  0x8001efc08:  f9400aa0    ldr x0, [x21, #16]
  0x8001efc0c:  f9400008    ldr x8, [x0]
  0x8001efc10:  f9402d08    ldr x8, [x8, #88]
  0x8001efc14:  d63f0100    blr x8
  0x8001efc18:  b9800009    ldrsw x9, [x0]
  0x8001efc1c:  34ffe209    cbz w9, #-960
  0x8001efc20:  f94003ea    ldr x10, [sp]
  0x8001efc24:  f9400408    ldr x8, [x0, #8]
  0x8001efc28:  8b090d09    add x9, x8, x9, lsl #3
  0x8001efc2c:  f940014a    ldr x10, [x10]
  0x8001efc30:  f940010b    ldr x11, [x8]
  0x8001efc34:  b9402d6c    ldr w12, [x11, #44]
  0x8001efc38:  7100199f    cmp w12, #6
  0x8001efc3c:  54001e01    b.ne #960
  0x8001efc40:  b940316c    ldr w12, [x11, #48]
  0x8001efc44:  37f81dcc    tbnz w12, #31, #952
  0x8001efc48:  f940016c    ldr x12, [x11]
  0x8001efc4c:  eb0a019f    cmp x12, x10
  0x8001efc50:  54001c21    b.ne #900
  0x8001efc54:  f9400bf6    ldr x22, [sp, #16]
  0x8001efc58:  b9400fe8    ldr w8, [sp, #12]
  0x8001efc5c:  37000088    tbnz w8, #0, #16
  0x8001efc60:  f94002c8    ldr x8, [x22]
  0x8001efc64:  927ef508    and x8, x8, #0xfffffffffffffffc
  0x8001efc68:  f9000568    str x8, [x11, #8]
  0x8001efc6c:  f9400968    ldr x8, [x11, #16]
  0x8001efc70:  17ffffbe    b #-264
  0x8001efc74:  f001c660    adrp x0, #59568128
  0x8001efc78:  91150000    add x0, x0, #1344
  0x8001efc7c:  94a6cf49    bl #43728164
  0x8001efc80:  34ffd8e0    cbz w0, #-1252
  0x8001efc84:  f001c668    adrp x8, #59568128
  0x8001efc88:  9114c108    add x8, x8, #1328
  0x8001efc8c:  b900091f    str wzr, [x8, #8]
  0x8001efc90:  f001c660    adrp x0, #59568128
  0x8001efc94:  91150000    add x0, x0, #1344
  0x8001efc98:  f900011f    str xzr, [x8]
  0x8001efc9c:  94a6cf45    bl #43728148
  0x8001efca0:  17fffebf    b #-1284
  0x8001efca4:  aa1503e0    mov x0, x21
  0x8001efca8:  d63f0100    blr x8
  0x8001efcac:  f9400a68    ldr x8, [x19, #16]
  0x8001efcb0:  17fffe56    b #-1704
  0x8001efcb4:  52800033    mov w19, #1
  0x8001efcb8:  9001bb88    adrp x8, #58130432
  0x8001efcbc:  f9456508    ldr x8, [x8, #2760]
  0x8001efcc0:  08dffd08    ldarb w8, [x8]
  0x8001efcc4:  36001a48    tbz w8, #0, #840
  0x8001efcc8:  9001bb96    adrp x22, #58130432
  0x8001efccc:  2a1f03fa    mov w26, wzr
  0x8001efcd0:  f94562d6    ldr x22, [x22, #2752]
  0x8001efcd4:  2a1f03f4    mov w20, wzr
  0x8001efcd8:  17ffff34    b #-816
  0x8001efcdc:  910063e8    add x8, sp, #24
  0x8001efce0:  39048fff    strb wzr, [sp, #291]
  0x8001efce4:  91003108    add x8, x8, #12
  0x8001efce8:  390093ff    strb wzr, [sp, #36]
  0x8001efcec:  f9000fe8    str x8, [sp, #24]
  0x8001efcf0:  52802008    mov w8, #256
  0x8001efcf4:  b90023e8    str w8, [sp, #32]
  0x8001efcf8:  f94006a8    ldr x8, [x21, #8]
  0x8001efcfc:  1400001a    b #104
  0x8001efd00:  39048fff    strb wzr, [sp, #291]
  0x8001efd04:  910063e9    add x9, sp, #24
  0x8001efd08:  b00152e1    adrp x1, #44421120
  0x8001efd0c:  91270c21    add x1, x1, #2499
  0x8001efd10:  f9400908    ldr x8, [x8, #16]
  0x8001efd14:  91003129    add x9, x9, #12
  0x8001efd18:  f9000fe9    str x9, [sp, #24]
  0x8001efd1c:  52802009    mov w9, #256
  0x8001efd20:  390093ff    strb wzr, [sp, #36]
  0x8001efd24:  b90023e9    str w9, [sp, #32]
  0x8001efd28:  910063e0    add x0, sp, #24
  0x8001efd2c:  f9400908    ldr x8, [x8, #16]
  0x8001efd30:  b980250a    ldrsw x10, [x8, #36]
  0x8001efd34:  b9800909    ldrsw x9, [x8, #8]
  0x8001efd38:  8b0a0108    add x8, x8, x10
  0x8001efd3c:  8b090102    add x2, x8, x9
  0x8001efd40:  97faa6c8    bl #-1402080
  0x8001efd44:  f94006a8    ldr x8, [x21, #8]
  0x8001efd48:  910063e9    add x9, sp, #24
  0x8001efd4c:  39048fff    strb wzr, [sp, #291]
  0x8001efd50:  91003129    add x9, x9, #12
  0x8001efd54:  390093ff    strb wzr, [sp, #36]
  0x8001efd58:  f9000fe9    str x9, [sp, #24]
  0x8001efd5c:  52802009    mov w9, #256
  0x8001efd60:  b90023e9    str w9, [sp, #32]
  0x8001efd64:  f9400908    ldr x8, [x8, #16]
  0x8001efd68:  b00152e1    adrp x1, #44421120
  0x8001efd6c:  91270c21    add x1, x1, #2499
  0x8001efd70:  910063e0    add x0, sp, #24
  0x8001efd74:  f9400908    ldr x8, [x8, #16]
  0x8001efd78:  b980250a    ldrsw x10, [x8, #36]
  0x8001efd7c:  b9800909    ldrsw x9, [x8, #8]
  0x8001efd80:  8b0a0108    add x8, x8, x10
  0x8001efd84:  8b090102    add x2, x8, x9
  0x8001efd88:  97faa6b6    bl #-1402152
  0x8001efd8c:  f001c668    adrp x8, #59568128
  0x8001efd90:  9114c108    add x8, x8, #1328
  0x8001efd94:  f90002c8    str x8, [x22]
  0x8001efd98:  52800037    mov w23, #1
  0x8001efd9c:  3607d61c    tbz w28, #0, #-1344
  0x8001efda0:  f9400bf6    ldr x22, [sp, #16]
  0x8001efda4:  17ffff10    b #-960
  0x8001efda8:  aa1703e0    mov x0, x23
  0x8001efdac:  d63f0100    blr x8
  0x8001efdb0:  17fffe91    b #-1468
  0x8001efdb4:  39048fff    strb wzr, [sp, #291]
  0x8001efdb8:  910063e9    add x9, sp, #24
  0x8001efdbc:  b00152e1    adrp x1, #44421120
  0x8001efdc0:  91270c21    add x1, x1, #2499
  0x8001efdc4:  f9400908    ldr x8, [x8, #16]
  0x8001efdc8:  91003129    add x9, x9, #12
  0x8001efdcc:  f9000fe9    str x9, [sp, #24]
  0x8001efdd0:  52802009    mov w9, #256
  0x8001efdd4:  390093ff    strb wzr, [sp, #36]
  0x8001efdd8:  b90023e9    str w9, [sp, #32]
  0x8001efddc:  910063e0    add x0, sp, #24
  0x8001efde0:  f9400908    ldr x8, [x8, #16]
  0x8001efde4:  b980250a    ldrsw x10, [x8, #36]
  0x8001efde8:  b9800909    ldrsw x9, [x8, #8]
  0x8001efdec:  8b0a0108    add x8, x8, x10
  0x8001efdf0:  8b090102    add x2, x8, x9
  0x8001efdf4:  97faa69b    bl #-1402260
  0x8001efdf8:  aa1f03f7    mov x23, xzr
  0x8001efdfc:  17fffea6    b #-1384
  0x8001efe00:  9001bb80    adrp x0, #58130432
  0x8001efe04:  f9452c00    ldr x0, [x0, #2648]
  0x8001efe08:  94a6cee6    bl #43727768
  0x8001efe0c:  34ffd4c0    cbz w0, #-1384
  0x8001efe10:  f001bae8    adrp x8, #58060800
  0x8001efe14:  9001bb89    adrp x9, #58130432
  0x8001efe18:  f942f908    ldr x8, [x8, #1520]
  0x8001efe1c:  f9452929    ldr x9, [x9, #2640]
  0x8001efe20:  9001bb80    adrp x0, #58130432
  0x8001efe24:  91004108    add x8, x8, #16
  0x8001efe28:  f9000128    str x8, [x9]
  0x8001efe2c:  f9452c00    ldr x0, [x0, #2648]
  0x8001efe30:  94a6cee0    bl #43727744
  0x8001efe34:  17fffe9c    b #-1424
  0x8001efe38:  9001bb80    adrp x0, #58130432
  0x8001efe3c:  f9453400    ldr x0, [x0, #2664]
  0x8001efe40:  94a6ced8    bl #43727712
  0x8001efe44:  34ffd480    cbz w0, #-1392
  0x8001efe48:  9001bb88    adrp x8, #58130432
  0x8001efe4c:  f001bae9    adrp x9, #58060800
  0x8001efe50:  f9453108    ldr x8, [x8, #2656]
  0x8001efe54:  f942f929    ldr x9, [x9, #1520]
  0x8001efe58:  9001bb80    adrp x0, #58130432
  0x8001efe5c:  91004129    add x9, x9, #16
  0x8001efe60:  f9000109    str x9, [x8]
  0x8001efe64:  f9453400    ldr x0, [x0, #2664]
  0x8001efe68:  94a6ced2    bl #43727688
  0x8001efe6c:  17fffe9a    b #-1432
  0x8001efe70:  9001bb80    adrp x0, #58130432
  0x8001efe74:  f9453c00    ldr x0, [x0, #2680]
  0x8001efe78:  94a6ceca    bl #43727656
  0x8001efe7c:  34ffd440    cbz w0, #-1400
  0x8001efe80:  f001bae8    adrp x8, #58060800
  0x8001efe84:  9001bb89    adrp x9, #58130432
  0x8001efe88:  f942f908    ldr x8, [x8, #1520]
  0x8001efe8c:  f9453929    ldr x9, [x9, #2672]
  0x8001efe90:  9001bb80    adrp x0, #58130432
  0x8001efe94:  91004108    add x8, x8, #16
  0x8001efe98:  f9000128    str x8, [x9]
  0x8001efe9c:  f9453c00    ldr x0, [x0, #2680]
  0x8001efea0:  94a6cec4    bl #43727632
  0x8001efea4:  17fffe98    b #-1440
  0x8001efea8:  9001bb80    adrp x0, #58130432
  0x8001efeac:  f9454400    ldr x0, [x0, #2696]
  0x8001efeb0:  94a6cebc    bl #43727600
  0x8001efeb4:  34ffd400    cbz w0, #-1408
  0x8001efeb8:  9001bb88    adrp x8, #58130432
  0x8001efebc:  f001bae9    adrp x9, #58060800
  0x8001efec0:  f9454108    ldr x8, [x8, #2688]
  0x8001efec4:  f942f929    ldr x9, [x9, #1520]
  0x8001efec8:  9001bb80    adrp x0, #58130432
  0x8001efecc:  91004129    add x9, x9, #16
  0x8001efed0:  f9000109    str x9, [x8]
  0x8001efed4:  f9454400    ldr x0, [x0, #2696]
  0x8001efed8:  94a6ceb6    bl #43727576
  0x8001efedc:  17fffe96    b #-1448
  0x8001efee0:  9001bb80    adrp x0, #58130432
  0x8001efee4:  f9454c00    ldr x0, [x0, #2712]
  0x8001efee8:  94a6ceae    bl #43727544
  0x8001efeec:  34ffd3c0    cbz w0, #-1416
  0x8001efef0:  f001bae8    adrp x8, #58060800
  0x8001efef4:  9001bb89    adrp x9, #58130432
  0x8001efef8:  f942f908    ldr x8, [x8, #1520]
  0x8001efefc:  f9454929    ldr x9, [x9, #2704]
  0x8001eff00:  9001bb80    adrp x0, #58130432
  0x8001eff04:  91004108    add x8, x8, #16
  0x8001eff08:  f9000128    str x8, [x9]
  0x8001eff0c:  f9454c00    ldr x0, [x0, #2712]
  0x8001eff10:  94a6cea8    bl #43727520
  0x8001eff14:  17fffe94    b #-1456
  0x8001eff18:  d63f0100    blr x8
  0x8001eff1c:  1400001e    b #120
  0x8001eff20:  92401d6a    and x10, x11, #0xff
  0x8001eff24:  9103400b    add x11, x0, #208
  0x8001eff28:  8b091108    add x8, x8, x9, lsl #4
  0x8001eff2c:  8b0a0d6c    add x12, x11, x10, lsl #3
  0x8001eff30:  7100115f    cmp w10, #4
  0x8001eff34:  39400501    ldrb w1, [x8, #1]
  0x8001eff38:  9a8b318a    csel x10, x12, x11, lo
  0x8001eff3c:  f9400140    ldr x0, [x10]
  0x8001eff40:  17fffef2    b #-1080
  0x8001eff44:  79c0050a    ldrsh w10, [x8, #2]
  0x8001eff48:  36f8006a    tbz w10, #31, #12
  0x8001eff4c:  f9400bf6    ldr x22, [sp, #16]
  0x8001eff50:  17fffefd    b #-1036
  0x8001eff54:  f940840b    ldr x11, [x0, #264]
  0x8001eff58:  92403d4d    and x13, x10, #0xffff
  0x8001eff5c:  8b091108    add x8, x8, x9, lsl #4
  0x8001eff60:  39400501    ldrb w1, [x8, #1]
  0x8001eff64:  b940196c    ldr w12, [x11, #24]
  0x8001eff68:  f940116b    ldr x11, [x11, #32]
  0x8001eff6c:  6b2a219f    cmp w12, w10, uxth
  0x8001eff70:  5280030c    mov w12, #24
  0x8001eff74:  9a9f81aa    csel x10, x13, xzr, hi
  0x8001eff78:  9bac7d4a    umull x10, w10, w12
  0x8001eff7c:  f86a696a    ldr x10, [x11, x10]
  0x8001eff80:  f9401140    ldr x0, [x10, #32]
  0x8001eff84:  f9400008    ldr x8, [x0]
  0x8001eff88:  f9409108    ldr x8, [x8, #288]
  0x8001eff8c:  d63f0100    blr x8
  0x8001eff90:  f9400bf6    ldr x22, [sp, #16]
  0x8001eff94:  aa0003e8    mov x8, x0
  0x8001eff98:  2a1f03f7    mov w23, wzr
  0x8001eff9c:  17fffef3    b #-1076
  0x8001effa0:  aa1f03e8    mov x8, xzr
  0x8001effa4:  17fffec4    b #-1264
  0x8001effa8:  b9403c09    ldr w9, [x0, #60]
  0x8001effac:  0b080128    add w8, w9, w8
  0x8001effb0:  17ffff12    b #-952
  0x8001effb4:  b9403c09    ldr w9, [x0, #60]
  0x8001effb8:  b9404c0a    ldr w10, [x0, #76]
  0x8001effbc:  0b090149    add w9, w10, w9
  0x8001effc0:  b9405c0a    ldr w10, [x0, #92]
  0x8001effc4:  0b0a0129    add w9, w9, w10
  0x8001effc8:  531e7529    lsl w9, w9, #2
  0x8001effcc:  0b080d33    add w19, w9, w8, lsl #3
  0x8001effd0:  17fffe15    b #-1964
  0x8001effd4:  5280002d    mov w13, #1
  0x8001effd8:  72a0080d    movk w13, #64, lsl #16
  0x8001effdc:  aa0a03ee    mov x14, x10
  0x8001effe0:  3840158f    ldrb w15, [x12], #1
  0x8001effe4:  384015d0    ldrb w16, [x14], #1
  0x8001effe8:  6b1001ff    cmp w15, w16
  0x8001effec:  54000081    b.ne #16
  0x8001efff0:  34ffe32f    cbz w15, #-924
  0x8001efff4:  f10005ad    subs x13, x13, #1
  0x8001efff8:  54ffff41    b.ne #-24
  0x8001efffc:  91002108    add x8, x8, #8
  0x8001f0000:  eb09011f    cmp x8, x9
  0x8001f0004:  54ffe161    b.ne #-980
  0x8001f0008:  17fffe15    b #-1964
  0x8001f000c:  f001bb60    adrp x0, #58126336
  0x8001f0010:  f9456400    ldr x0, [x0, #2760]
  0x8001f0014:  94a6ce63    bl #43727244
  0x8001f0018:  f001bb76    adrp x22, #58126336
  0x8001f001c:  f94562d6    ldr x22, [x22, #2752]
  0x8001f0020:  340000c0    cbz w0, #24
  0x8001f0024:  f90002df    str xzr, [x22]
  0x8001f0028:  f001bb60    adrp x0, #58126336
  0x8001f002c:  b9000adf    str wzr, [x22, #8]
  0x8001f0030:  f9456400    ldr x0, [x0, #2760]
  0x8001f0034:  94a6ce5f    bl #43727228
  0x8001f0038:  2a1f03fa    mov w26, wzr
  0x8001f003c:  2a1f03f4    mov w20, wzr
  0x8001f0040:  17fffe5a    b #-1688

