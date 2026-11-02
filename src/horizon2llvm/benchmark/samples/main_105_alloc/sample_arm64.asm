; UltraTears chunk main_105_alloc: 1 functions [0x8001a1590..0x8001a20bc)

; Function f_8001a1590 [0x8001a1590..0x8001a20bc)
f_8001a1590:
  0x8001a1590:  d10243ff    sub sp, sp, #144
  0x8001a1594:  a9037bfd    stp x29, x30, [sp, #48]
  0x8001a1598:  a9046ffc    stp x28, x27, [sp, #64]
  0x8001a159c:  a90567fa    stp x26, x25, [sp, #80]
  0x8001a15a0:  a9065ff8    stp x24, x23, [sp, #96]
  0x8001a15a4:  a90757f6    stp x22, x21, [sp, #112]
  0x8001a15a8:  a9084ff4    stp x20, x19, [sp, #128]
  0x8001a15ac:  9100c3fd    add x29, sp, #48
  0x8001a15b0:  d001bd58    adrp x24, #58368000
  0x8001a15b4:  2a0203f4    mov w20, w2
  0x8001a15b8:  f9454318    ldr x24, [x24, #2688]
  0x8001a15bc:  aa0003f5    mov x21, x0
  0x8001a15c0:  f9400316    ldr x22, [x24]
  0x8001a15c4:  b4003276    cbz x22, #1612
  0x8001a15c8:  aa0103f3    mov x19, x1
  0x8001a15cc:  b4003001    cbz x1, #1536
  0x8001a15d0:  f9400268    ldr x8, [x19]
  0x8001a15d4:  f9401903    ldr x3, [x8, #48]
  0x8001a15d8:  b0002348    adrp x8, #4624384
  0x8001a15dc:  91374108    add x8, x8, #3536
  0x8001a15e0:  eb08007f    cmp x3, x8
  0x8001a15e4:  54000521    b.ne #164
  0x8001a15e8:  b940aa68    ldr w8, [x19, #168]
  0x8001a15ec:  91022277    add x23, x19, #136
  0x8001a15f0:  37003248    tbnz w8, #0, #1608
  0x8001a15f4:  aa1f03f6    mov x22, xzr
  0x8001a15f8:  f10022bf    cmp x21, #8
  0x8001a15fc:  52800108    mov w8, #8
  0x8001a1600:  f9400309    ldr x9, [x24]
  0x8001a1604:  9a8882a8    csel x8, x21, x8, hi
  0x8001a1608:  7100029f    cmp w20, #0
  0x8001a160c:  91001d08    add x8, x8, #7
  0x8001a1610:  927df119    and x25, x8, #0xfffffffffffffff8
  0x8001a1614:  5a945688    cneg w8, w20, mi
  0x8001a1618:  5100050a    sub w10, w8, #1
  0x8001a161c:  6a0a011f    tst w8, w10
  0x8001a1620:  54003141    b.ne #1576
  0x8001a1624:  b940826a    ldr w10, [x19, #128]
  0x8001a1628:  1b147d4a    mul w10, w10, w20
  0x8001a162c:  37f8328a    tbnz w10, #31, #1616
  0x8001a1630:  f9405a6b    ldr x11, [x19, #176]
  0x8001a1634:  5100054c    sub w12, w10, #1
  0x8001a1638:  8b0c016b    add x11, x11, x12
  0x8001a163c:  8a2c0178    bic x24, x11, x12
  0x8001a1640:  8b19030b    add x11, x24, x25
  0x8001a1644:  eb18017f    cmp x11, x24
  0x8001a1648:  540021c3    b.lo #1080
  0x8001a164c:  f9405e6c    ldr x12, [x19, #184]
  0x8001a1650:  eb0b019f    cmp x12, x11
  0x8001a1654:  54002163    b.lo #1068
  0x8001a1658:  f9005a6b    str x11, [x19, #176]
  0x8001a165c:  b4002198    cbz x24, #1072
  0x8001a1660:  b5001296    cbnz x22, #592
  0x8001a1664:  aa1803e0    mov x0, x24
  0x8001a1668:  a9484ff4    ldp x20, x19, [sp, #128]
  0x8001a166c:  a94757f6    ldp x22, x21, [sp, #112]
  0x8001a1670:  a9465ff8    ldp x24, x23, [sp, #96]
  0x8001a1674:  a94567fa    ldp x26, x25, [sp, #80]
  0x8001a1678:  a9446ffc    ldp x28, x27, [sp, #64]
  0x8001a167c:  a9437bfd    ldp x29, x30, [sp, #48]
  0x8001a1680:  910243ff    add sp, sp, #144
  0x8001a1684:  d65f03c0    ret
  0x8001a1688:  d503201f    nop
  0x8001a168c:  1036be08    adr x8, #448448
  0x8001a1690:  eb08007f    cmp x3, x8
  0x8001a1694:  540003e1    b.ne #124
  0x8001a1698:  f10022bf    cmp x21, #8
  0x8001a169c:  52800108    mov w8, #8
  0x8001a16a0:  f9400319    ldr x25, [x24]
  0x8001a16a4:  9a8882a8    csel x8, x21, x8, hi
  0x8001a16a8:  7100029f    cmp w20, #0
  0x8001a16ac:  91001d08    add x8, x8, #7
  0x8001a16b0:  927df117    and x23, x8, #0xfffffffffffffff8
  0x8001a16b4:  5a945688    cneg w8, w20, mi
  0x8001a16b8:  51000509    sub w9, w8, #1
  0x8001a16bc:  6a09011f    tst w8, w9
  0x8001a16c0:  54003421    b.ne #1668
  0x8001a16c4:  b940aa68    ldr w8, [x19, #168]
  0x8001a16c8:  37002668    tbnz w8, #0, #1228
  0x8001a16cc:  aa1f03f6    mov x22, xzr
  0x8001a16d0:  b9408268    ldr w8, [x19, #128]
  0x8001a16d4:  1b147d08    mul w8, w8, w20
  0x8001a16d8:  37f81ba8    tbnz w8, #31, #884
  0x8001a16dc:  f9405a69    ldr x9, [x19, #176]
  0x8001a16e0:  5100050a    sub w10, w8, #1
  0x8001a16e4:  8b0a0129    add x9, x9, x10
  0x8001a16e8:  8a2a0138    bic x24, x9, x10
  0x8001a16ec:  8b170309    add x9, x24, x23
  0x8001a16f0:  eb18013f    cmp x9, x24
  0x8001a16f4:  540030c3    b.lo #1560
  0x8001a16f8:  f9405e6a    ldr x10, [x19, #184]
  0x8001a16fc:  eb09015f    cmp x10, x9
  0x8001a1700:  54003063    b.lo #1548
  0x8001a1704:  f9005a69    str x9, [x19, #176]
  0x8001a1708:  b4fffaf6    cbz x22, #-164
  0x8001a170c:  14000069    b #420
  0x8001a1710:  d503201f    nop
  0x8001a1714:  10ed61e8    adr x8, #-152516
  0x8001a1718:  eb08007f    cmp x3, x8
  0x8001a171c:  54000d41    b.ne #424
  0x8001a1720:  f10022bf    cmp x21, #8
  0x8001a1724:  52800108    mov w8, #8
  0x8001a1728:  f9400319    ldr x25, [x24]
  0x8001a172c:  9a8882a8    csel x8, x21, x8, hi
  0x8001a1730:  7100029f    cmp w20, #0
  0x8001a1734:  5a945689    cneg w9, w20, mi
  0x8001a1738:  5100052a    sub w10, w9, #1
  0x8001a173c:  6a0a013f    tst w9, w10
  0x8001a1740:  54003221    b.ne #1604
  0x8001a1744:  91001d08    add x8, x8, #7
  0x8001a1748:  927df117    and x23, x8, #0xfffffffffffffff8
  0x8001a174c:  eb1502ff    cmp x23, x21
  0x8001a1750:  54002fa3    b.lo #1524
  0x8001a1754:  b940aa68    ldr w8, [x19, #168]
  0x8001a1758:  36000b28    tbz w8, #0, #356
  0x8001a175c:  91022276    add x22, x19, #136
  0x8001a1760:  aa1603e0    mov x0, x22
  0x8001a1764:  94a80a3f    bl #44050684
  0x8001a1768:  b9408268    ldr w8, [x19, #128]
  0x8001a176c:  1b147d08    mul w8, w8, w20
  0x8001a1770:  37f821a8    tbnz w8, #31, #1076
  0x8001a1774:  b980c66a    ldrsw x10, [x19, #196]
  0x8001a1778:  9102c278    add x24, x19, #176
  0x8001a177c:  2a0803ef    mov w15, w8
  0x8001a1780:  f9405e6c    ldr x12, [x19, #184]
  0x8001a1784:  7100211f    cmp w8, #8
  0x8001a1788:  cb0a03e9    neg x9, x10
  0x8001a178c:  cb0a030b    sub x11, x24, x10
  0x8001a1790:  cb0a018c    sub x12, x12, x10
  0x8001a1794:  54000c88    b.hi #400
  0x8001a1798:  eb0b019f    cmp x12, x11
  0x8001a179c:  54003760    b.eq #1772
  0x8001a17a0:  3942b268    ldrb w8, [x19, #172]
  0x8001a17a4:  35002fe8    cbnz w8, #1532
  0x8001a17a8:  aa0c03e8    mov x8, x12
  0x8001a17ac:  f9400d1a    ldr x26, [x8, #24]
  0x8001a17b0:  eb17035f    cmp x26, x23
  0x8001a17b4:  540009e3    b.lo #316
  0x8001a17b8:  f9000d17    str x23, [x8, #24]
  0x8001a17bc:  79402515    ldrh w21, [x8, #18]
  0x8001a17c0:  b980c66c    ldrsw x12, [x19, #196]
  0x8001a17c4:  8b080189    add x9, x12, x8
  0x8001a17c8:  a940292b    ldp x11, x10, [x9]
  0x8001a17cc:  cb0c014c    sub x12, x10, x12
  0x8001a17d0:  eb18015f    cmp x10, x24
  0x8001a17d4:  9a8c03f4    csel x20, xzr, x12, eq
  0x8001a17d8:  b400006b    cbz x11, #12
  0x8001a17dc:  f900056a    str x10, [x11, #8]
  0x8001a17e0:  f940052a    ldr x10, [x9, #8]
  0x8001a17e4:  b400006a    cbz x10, #12
  0x8001a17e8:  f940012b    ldr x11, [x9]
  0x8001a17ec:  f900014b    str x11, [x10]
  0x8001a17f0:  a9007d3f    stp xzr, xzr, [x9]
  0x8001a17f4:  cb170359    sub x25, x26, x23
  0x8001a17f8:  b940c269    ldr w9, [x19, #192]
  0x8001a17fc:  b940826a    ldr w10, [x19, #128]
  0x8001a1800:  91032260    add x0, x19, #200
  0x8001a1804:  51000529    sub w9, w9, #1
  0x8001a1808:  7100055f    cmp w10, #1
  0x8001a180c:  b900c269    str w9, [x19, #192]
  0x8001a1810:  b980de69    ldrsw x9, [x19, #220]
  0x8001a1814:  8b080121    add x1, x9, x8
  0x8001a1818:  54002ec1    b.ne #1496
  0x8001a181c:  f9400009    ldr x9, [x0]
  0x8001a1820:  f9000001    str x1, [x0]
  0x8001a1824:  a9000029    stp x9, x0, [x1]
  0x8001a1828:  b4000049    cbz x9, #8
  0x8001a182c:  f9000521    str x1, [x9, #8]
  0x8001a1830:  b940da69    ldr w9, [x19, #216]
  0x8001a1834:  f100873f    cmp x25, #33
  0x8001a1838:  11000529    add w9, w9, #1
  0x8001a183c:  b900da69    str w9, [x19, #216]
  0x8001a1840:  54001983    b.lo #816
  0x8001a1844:  8b0802e9    add x9, x23, x8
  0x8001a1848:  8b150129    add x9, x9, x21
  0x8001a184c:  f8020d3f    str xzr, [x9, #32]!
  0x8001a1850:  d100832a    sub x10, x25, #32
  0x8001a1854:  f9000d2a    str x10, [x9, #24]
  0x8001a1858:  529fffea    mov w10, #65535
  0x8001a185c:  b900113f    str wzr, [x9, #16]
  0x8001a1860:  f900053f    str xzr, [x9, #8]
  0x8001a1864:  7900212a    strh w10, [x9, #16]
  0x8001a1868:  b980c66a    ldrsw x10, [x19, #196]
  0x8001a186c:  b50004f4    cbnz x20, #156
  0x8001a1870:  8b0a0129    add x9, x9, x10
  0x8001a1874:  f940030a    ldr x10, [x24]
  0x8001a1878:  f9000309    str x9, [x24]
  0x8001a187c:  a900612a    stp x10, x24, [x9]
  0x8001a1880:  b400004a    cbz x10, #8
  0x8001a1884:  f9000549    str x9, [x10, #8]
  0x8001a1888:  b940c269    ldr w9, [x19, #192]
  0x8001a188c:  11000529    add w9, w9, #1
  0x8001a1890:  b900c269    str w9, [x19, #192]
  0x8001a1894:  b940aa69    ldr w9, [x19, #168]
  0x8001a1898:  53107d29    lsr w9, w9, #16
  0x8001a189c:  79002109    strh w9, [x8, #16]
  0x8001a18a0:  79402509    ldrh w9, [x8, #18]
  0x8001a18a4:  8b090108    add x8, x8, x9
  0x8001a18a8:  91008118    add x24, x8, #32
  0x8001a18ac:  b4ffedd6    cbz x22, #-584
  0x8001a18b0:  aa1603e0    mov x0, x22
  0x8001a18b4:  94a809ef    bl #44050364
  0x8001a18b8:  17ffff6b    b #-596
  0x8001a18bc:  aa1f03f6    mov x22, xzr
  0x8001a18c0:  17ffffaa    b #-344
  0x8001a18c4:  aa1303e0    mov x0, x19
  0x8001a18c8:  aa1503e1    mov x1, x21
  0x8001a18cc:  2a1403e2    mov w2, w20
  0x8001a18d0:  a9484ff4    ldp x20, x19, [sp, #128]
  0x8001a18d4:  a94757f6    ldp x22, x21, [sp, #112]
  0x8001a18d8:  a9465ff8    ldp x24, x23, [sp, #96]
  0x8001a18dc:  a94567fa    ldp x26, x25, [sp, #80]
  0x8001a18e0:  a9446ffc    ldp x28, x27, [sp, #64]
  0x8001a18e4:  a9437bfd    ldp x29, x30, [sp, #48]
  0x8001a18e8:  910243ff    add sp, sp, #144
  0x8001a18ec:  d61f0060    br x3
  0x8001a18f0:  8b0a0108    add x8, x8, x10
  0x8001a18f4:  f9400508    ldr x8, [x8, #8]
  0x8001a18f8:  8b090108    add x8, x8, x9
  0x8001a18fc:  eb0b011f    cmp x8, x11
  0x8001a1900:  54fff561    b.ne #-340
  0x8001a1904:  14000161    b #1412
  0x8001a1908:  8b14014b    add x11, x10, x20
  0x8001a190c:  8b0a0129    add x9, x9, x10
  0x8001a1910:  f940016a    ldr x10, [x11]
  0x8001a1914:  f9000169    str x9, [x11]
  0x8001a1918:  a9002d2a    stp x10, x11, [x9]
  0x8001a191c:  b5fffb4a    cbnz x10, #-152
  0x8001a1920:  17ffffda    b #-152
  0x8001a1924:  eb0b019f    cmp x12, x11
  0x8001a1928:  54002b00    b.eq #1376
  0x8001a192c:  3942b270    ldrb w16, [x19, #172]
  0x8001a1930:  5100050d    sub w13, w8, #1
  0x8001a1934:  aa2d03ee    mvn x14, x13
  0x8001a1938:  35002c50    cbnz w16, #1416
  0x8001a193c:  aa0c03e8    mov x8, x12
  0x8001a1940:  f9400d0c    ldr x12, [x8, #24]
  0x8001a1944:  eb17019f    cmp x12, x23
  0x8001a1948:  54002963    b.lo #1324
  0x8001a194c:  79402510    ldrh w16, [x8, #18]
  0x8001a1950:  8b100111    add x17, x8, x16
  0x8001a1954:  91008231    add x17, x17, #32
  0x8001a1958:  8b0d0232    add x18, x17, x13
  0x8001a195c:  cb1102f1    sub x17, x23, x17
  0x8001a1960:  8a0e0252    and x18, x18, x14
  0x8001a1964:  8b120231    add x17, x17, x18
  0x8001a1968:  eb11019f    cmp x12, x17
  0x8001a196c:  54002843    b.lo #1288
  0x8001a1970:  8b0a010b    add x11, x8, x10
  0x8001a1974:  9100810a    add x10, x8, #32
  0x8001a1978:  f940056b    ldr x11, [x11, #8]
  0x8001a197c:  8b090169    add x9, x11, x9
  0x8001a1980:  eb18017f    cmp x11, x24
  0x8001a1984:  9a8903f4    csel x20, xzr, x9, eq
  0x8001a1988:  8b100149    add x9, x10, x16
  0x8001a198c:  8b0d012b    add x11, x9, x13
  0x8001a1990:  8a0e016b    and x11, x11, x14
  0x8001a1994:  cb090169    sub x9, x11, x9
  0x8001a1998:  8b170135    add x21, x9, x23
  0x8001a199c:  f140413f    cmp x9, #16, lsl #12
  0x8001a19a0:  54002c82    b.hs #1424
  0x8001a19a4:  72003d3f    tst w9, #0xffff
  0x8001a19a8:  79002509    strh w9, [x8, #18]
  0x8001a19ac:  54000080    b.eq #16
  0x8001a19b0:  8b0a0129    add x9, x9, x10
  0x8001a19b4:  b240010a    orr x10, x8, #0x1
  0x8001a19b8:  f81f812a    stur x10, [x9, #-8]
  0x8001a19bc:  f9000d17    str x23, [x8, #24]
  0x8001a19c0:  b980c669    ldrsw x9, [x19, #196]
  0x8001a19c4:  8b080129    add x9, x9, x8
  0x8001a19c8:  f940012a    ldr x10, [x9]
  0x8001a19cc:  b400006a    cbz x10, #12
  0x8001a19d0:  f940052b    ldr x11, [x9, #8]
  0x8001a19d4:  f900054b    str x11, [x10, #8]
  0x8001a19d8:  f940052a    ldr x10, [x9, #8]
  0x8001a19dc:  b400006a    cbz x10, #12
  0x8001a19e0:  f940012b    ldr x11, [x9]
  0x8001a19e4:  f900014b    str x11, [x10]
  0x8001a19e8:  a9007d3f    stp xzr, xzr, [x9]
  0x8001a19ec:  b940c269    ldr w9, [x19, #192]
  0x8001a19f0:  51000529    sub w9, w9, #1
  0x8001a19f4:  b900c269    str w9, [x19, #192]
  0x8001a19f8:  b9408269    ldr w9, [x19, #128]
  0x8001a19fc:  cb150199    sub x25, x12, x21
  0x8001a1a00:  91032260    add x0, x19, #200
  0x8001a1a04:  b980de6a    ldrsw x10, [x19, #220]
  0x8001a1a08:  8b0a0101    add x1, x8, x10
  0x8001a1a0c:  7100053f    cmp w9, #1
  0x8001a1a10:  54002a01    b.ne #1344
  0x8001a1a14:  f9400009    ldr x9, [x0]
  0x8001a1a18:  f9000001    str x1, [x0]
  0x8001a1a1c:  a9000029    stp x9, x0, [x1]
  0x8001a1a20:  b4000049    cbz x9, #8
  0x8001a1a24:  f9000521    str x1, [x9, #8]
  0x8001a1a28:  b940da69    ldr w9, [x19, #216]
  0x8001a1a2c:  f100873f    cmp x25, #33
  0x8001a1a30:  11000529    add w9, w9, #1
  0x8001a1a34:  b900da69    str w9, [x19, #216]
  0x8001a1a38:  54000e23    b.lo #452
  0x8001a1a3c:  79402509    ldrh w9, [x8, #18]
  0x8001a1a40:  8b0802ea    add x10, x23, x8
  0x8001a1a44:  8b090149    add x9, x10, x9
  0x8001a1a48:  17ffff81    b #-508
  0x8001a1a4c:  f9405e6b    ldr x11, [x19, #184]
  0x8001a1a50:  4b0803e9    neg w9, w8
  0x8001a1a54:  cb17016a    sub x10, x11, x23
  0x8001a1a58:  eb0a017f    cmp x11, x10
  0x8001a1a5c:  54002223    b.lo #1092
  0x8001a1a60:  b2607d08    orr x8, x8, #0xffffffff00000000
  0x8001a1a64:  8a080158    and x24, x10, x8
  0x8001a1a68:  f9405a68    ldr x8, [x19, #176]
  0x8001a1a6c:  eb18011f    cmp x8, x24
  0x8001a1a70:  54002188    b.hi #1072
  0x8001a1a74:  f9005e78    str x24, [x19, #184]
  0x8001a1a78:  b4ffdf76    cbz x22, #-1044
  0x8001a1a7c:  17ffff8d    b #-460
  0x8001a1a80:  b4000069    cbz x9, #12
  0x8001a1a84:  f9400920    ldr x0, [x9, #16]
  0x8001a1a88:  b50012c0    cbnz x0, #600
  0x8001a1a8c:  aa1f03f8    mov x24, xzr
  0x8001a1a90:  eb15033f    cmp x25, x21
  0x8001a1a94:  54ffde63    b.lo #-1076
  0x8001a1a98:  f9401e60    ldr x0, [x19, #56]
  0x8001a1a9c:  b4ffde20    cbz x0, #-1084
  0x8001a1aa0:  7100251f    cmp w8, #9
  0x8001a1aa4:  aa1303fa    mov x26, x19
  0x8001a1aa8:  1a8833f8    csel w24, wzr, w8, lo
  0x8001a1aac:  f84c0f48    ldr x8, [x26, #192]!
  0x8001a1ab0:  b85e8349    ldur w9, [x26, #-24]
  0x8001a1ab4:  37180049    tbnz w9, #3, #8
  0x8001a1ab8:  b40000c8    cbz x8, #24
  0x8001a1abc:  f9400268    ldr x8, [x19]
  0x8001a1ac0:  aa1303e0    mov x0, x19
  0x8001a1ac4:  f9401508    ldr x8, [x8, #40]
  0x8001a1ac8:  d63f0100    blr x8
  0x8001a1acc:  f9401e60    ldr x0, [x19, #56]
  0x8001a1ad0:  8b384328    add x8, x25, w24, uxtw
  0x8001a1ad4:  9100411b    add x27, x8, #16
  0x8001a1ad8:  29590a68    ldp w8, w2, [x19, #200]
  0x8001a1adc:  d37ef51c    lsl x28, x8, #2
  0x8001a1ae0:  f9400008    ldr x8, [x0]
  0x8001a1ae4:  eb1b039f    cmp x28, x27
  0x8001a1ae8:  9a9b8399    csel x25, x28, x27, hi
  0x8001a1aec:  aa1903e1    mov x1, x25
  0x8001a1af0:  f9401908    ldr x8, [x8, #48]
  0x8001a1af4:  d63f0100    blr x8
  0x8001a1af8:  b40026e0    cbz x0, #1244
  0x8001a1afc:  aa0003f8    mov x24, x0
  0x8001a1b00:  b940aa68    ldr w8, [x19, #168]
  0x8001a1b04:  370028e8    tbnz w8, #0, #1308
  0x8001a1b08:  aa1703e0    mov x0, x23
  0x8001a1b0c:  94a80955    bl #44049748
  0x8001a1b10:  b940826a    ldr w10, [x19, #128]
  0x8001a1b14:  8b180328    add x8, x25, x24
  0x8001a1b18:  d1004109    sub x9, x8, #16
  0x8001a1b1c:  7100055f    cmp w10, #1
  0x8001a1b20:  9a89030a    csel x10, x24, x9, eq
  0x8001a1b24:  a9007d59    stp x25, xzr, [x10]
  0x8001a1b28:  f940626b    ldr x11, [x19, #192]
  0x8001a1b2c:  b50002ab    cbnz x11, #84
  0x8001a1b30:  f900034a    str x10, [x26]
  0x8001a1b34:  9100430b    add x11, x24, #16
  0x8001a1b38:  aa1303e0    mov x0, x19
  0x8001a1b3c:  b940826a    ldr w10, [x19, #128]
  0x8001a1b40:  aa1503e1    mov x1, x21
  0x8001a1b44:  2a1403e2    mov w2, w20
  0x8001a1b48:  7100055f    cmp w10, #1
  0x8001a1b4c:  9a98016a    csel x10, x11, x24, eq
  0x8001a1b50:  9a890108    csel x8, x8, x9, eq
  0x8001a1b54:  a90b226a    stp x10, x8, [x19, #176]
  0x8001a1b58:  97fb6338    bl #-1209120
  0x8001a1b5c:  aa0003f8    mov x24, x0
  0x8001a1b60:  b4ffd817    cbz x23, #-1280
  0x8001a1b64:  aa1703e0    mov x0, x23
  0x8001a1b68:  94a80942    bl #44049672
  0x8001a1b6c:  17fffebd    b #-1292
  0x8001a1b70:  eb17035f    cmp x26, x23
  0x8001a1b74:  54ffe900    b.eq #-736
  0x8001a1b78:  f9000d1a    str x26, [x8, #24]
  0x8001a1b7c:  17ffff46    b #-744
  0x8001a1b80:  aa0b03ec    mov x12, x11
  0x8001a1b84:  f940056b    ldr x11, [x11, #8]
  0x8001a1b88:  b5ffffcb    cbnz x11, #-8
  0x8001a1b8c:  9100219a    add x26, x12, #8
  0x8001a1b90:  17ffffe8    b #-96
  0x8001a1b94:  91022276    add x22, x19, #136
  0x8001a1b98:  aa1603e0    mov x0, x22
  0x8001a1b9c:  94a80931    bl #44049604
  0x8001a1ba0:  17fffecc    b #-1232
  0x8001a1ba4:  4b0803e9    neg w9, w8
  0x8001a1ba8:  aa1303e0    mov x0, x19
  0x8001a1bac:  b90007e9    str w9, [sp, #4]
  0x8001a1bb0:  aa1703e1    mov x1, x23
  0x8001a1bb4:  3100211f    cmn w8, #8
  0x8001a1bb8:  540027c3    b.lo #1272
  0x8001a1bbc:  97ff6b83    bl #-152052
  0x8001a1bc0:  aa0003e8    mov x8, x0
  0x8001a1bc4:  b5ffe680    cbnz x0, #-816
  0x8001a1bc8:  140000b1    b #708
  0x8001a1bcc:  b001c8c8    adrp x8, #59871232
  0x8001a1bd0:  91368108    add x8, x8, #3488
  0x8001a1bd4:  f9400108    ldr x8, [x8]
  0x8001a1bd8:  b9404900    ldr w0, [x8, #72]
  0x8001a1bdc:  94a807b9    bl #44048100
  0x8001a1be0:  910022c8    add x8, x22, #8
  0x8001a1be4:  91022009    add x9, x0, #136
  0x8001a1be8:  f100001f    cmp x0, #0
  0x8001a1bec:  9a890108    csel x8, x8, x9, eq
  0x8001a1bf0:  f9400113    ldr x19, [x8]
  0x8001a1bf4:  b5ffcef3    cbnz x19, #-1572
  0x8001a1bf8:  1400005e    b #376
  0x8001a1bfc:  eb15019f    cmp x12, x21
  0x8001a1c00:  54ffe4a0    b.eq #-876
  0x8001a1c04:  8b170329    add x9, x25, x23
  0x8001a1c08:  f9000d09    str x9, [x8, #24]
  0x8001a1c0c:  17ffff22    b #-888
  0x8001a1c10:  93407e80    sxtw x0, w20
  0x8001a1c14:  aa1503e1    mov x1, x21
  0x8001a1c18:  a9484ff4    ldp x20, x19, [sp, #128]
  0x8001a1c1c:  a94757f6    ldp x22, x21, [sp, #112]
  0x8001a1c20:  a9465ff8    ldp x24, x23, [sp, #96]
  0x8001a1c24:  a94567fa    ldp x26, x25, [sp, #80]
  0x8001a1c28:  a9446ffc    ldp x28, x27, [sp, #64]
  0x8001a1c2c:  a9437bfd    ldp x29, x30, [sp, #48]
  0x8001a1c30:  910243ff    add sp, sp, #144
  0x8001a1c34:  17fbe02b    b #-1081172
  0x8001a1c38:  aa1703e0    mov x0, x23
  0x8001a1c3c:  94a80909    bl #44049444
  0x8001a1c40:  aa1703f6    mov x22, x23
  0x8001a1c44:  17fffe6d    b #-1612
  0x8001a1c48:  b4000169    cbz x9, #44
  0x8001a1c4c:  f9400920    ldr x0, [x9, #16]
  0x8001a1c50:  b4000120    cbz x0, #36
  0x8001a1c54:  a900d7f3    stp x19, x21, [sp, #8]
  0x8001a1c58:  910023e1    add x1, sp, #8
  0x8001a1c5c:  b9001bf4    str w20, [sp, #24]
  0x8001a1c60:  f90013f9    str x25, [sp, #32]
  0x8001a1c64:  b9002bf4    str w20, [sp, #40]
  0x8001a1c68:  f9400008    ldr x8, [x0]
  0x8001a1c6c:  f9400108    ldr x8, [x8]
  0x8001a1c70:  d63f0100    blr x8
  0x8001a1c74:  aa1f03f8    mov x24, xzr
  0x8001a1c78:  17fffe7a    b #-1560
  0x8001a1c7c:  f9405e6c    ldr x12, [x19, #184]
  0x8001a1c80:  2a0803fa    mov w26, w8
  0x8001a1c84:  4b0a03eb    neg w11, w10
  0x8001a1c88:  cb190188    sub x8, x12, x25
  0x8001a1c8c:  eb08019f    cmp x12, x8
  0x8001a1c90:  540000c3    b.lo #24
  0x8001a1c94:  b2607d4a    orr x10, x10, #0xffffffff00000000
  0x8001a1c98:  8a0a0118    and x24, x8, x10
  0x8001a1c9c:  f9405a68    ldr x8, [x19, #176]
  0x8001a1ca0:  eb18011f    cmp x8, x24
  0x8001a1ca4:  540006a9    b.ls #212
  0x8001a1ca8:  2a1a03e8    mov w8, w26
  0x8001a1cac:  b4ffef09    cbz x9, #-544
  0x8001a1cb0:  f9400920    ldr x0, [x9, #16]
  0x8001a1cb4:  b4ffeec0    cbz x0, #-552
  0x8001a1cb8:  a900d7f3    stp x19, x21, [sp, #8]
  0x8001a1cbc:  910023e1    add x1, sp, #8
  0x8001a1cc0:  b9001bf4    str w20, [sp, #24]
  0x8001a1cc4:  f90013f9    str x25, [sp, #32]
  0x8001a1cc8:  b9002beb    str w11, [sp, #40]
  0x8001a1ccc:  f9400008    ldr x8, [x0]
  0x8001a1cd0:  f9400108    ldr x8, [x8]
  0x8001a1cd4:  d63f0100    blr x8
  0x8001a1cd8:  2a1a03e8    mov w8, w26
  0x8001a1cdc:  17ffff6c    b #-592
  0x8001a1ce0:  a900d7f3    stp x19, x21, [sp, #8]
  0x8001a1ce4:  910023e1    add x1, sp, #8
  0x8001a1ce8:  2a0803f8    mov w24, w8
  0x8001a1cec:  b9001bf4    str w20, [sp, #24]
  0x8001a1cf0:  f90013f9    str x25, [sp, #32]
  0x8001a1cf4:  b9002bea    str w10, [sp, #40]
  0x8001a1cf8:  f9400009    ldr x9, [x0]
  0x8001a1cfc:  f9400129    ldr x9, [x9]
  0x8001a1d00:  d63f0120    blr x9
  0x8001a1d04:  2a1803e8    mov w8, w24
  0x8001a1d08:  17ffff61    b #-636
  0x8001a1d0c:  b4000179    cbz x25, #44
  0x8001a1d10:  f9400b20    ldr x0, [x25, #16]
  0x8001a1d14:  b4000120    cbz x0, #36
  0x8001a1d18:  a900d7f3    stp x19, x21, [sp, #8]
  0x8001a1d1c:  b9001bf4    str w20, [sp, #24]
  0x8001a1d20:  f90013f7    str x23, [sp, #32]
  0x8001a1d24:  b9002be8    str w8, [sp, #40]
  0x8001a1d28:  f9400008    ldr x8, [x0]
  0x8001a1d2c:  910023e1    add x1, sp, #8
  0x8001a1d30:  f9400108    ldr x8, [x8]
  0x8001a1d34:  d63f0100    blr x8
  0x8001a1d38:  aa1f03f8    mov x24, xzr
  0x8001a1d3c:  b4ffc956    cbz x22, #-1752
  0x8001a1d40:  17fffedc    b #-1168
  0x8001a1d44:  b4000179    cbz x25, #44
  0x8001a1d48:  f9400b20    ldr x0, [x25, #16]
  0x8001a1d4c:  b4000120    cbz x0, #36
  0x8001a1d50:  a900d7f3    stp x19, x21, [sp, #8]
  0x8001a1d54:  b9001bf4    str w20, [sp, #24]
  0x8001a1d58:  f90013f7    str x23, [sp, #32]
  0x8001a1d5c:  b9002bf4    str w20, [sp, #40]
  0x8001a1d60:  910023e1    add x1, sp, #8
  0x8001a1d64:  f9400008    ldr x8, [x0]
  0x8001a1d68:  f9400108    ldr x8, [x8]
  0x8001a1d6c:  d63f0100    blr x8
  0x8001a1d70:  aa1f03f8    mov x24, xzr
  0x8001a1d74:  17fffe3c    b #-1808
  0x8001a1d78:  2a1a03e8    mov w8, w26
  0x8001a1d7c:  f9005e78    str x24, [x19, #184]
  0x8001a1d80:  17fffe37    b #-1828
  0x8001a1d84:  b4ffff79    cbz x25, #-20
  0x8001a1d88:  f9400b20    ldr x0, [x25, #16]
  0x8001a1d8c:  b4ffff20    cbz x0, #-28
  0x8001a1d90:  a900d7f3    stp x19, x21, [sp, #8]
  0x8001a1d94:  b9001bf4    str w20, [sp, #24]
  0x8001a1d98:  f90013e8    str x8, [sp, #32]
  0x8001a1d9c:  17fffff0    b #-64
  0x8001a1da0:  7100051f    cmp w8, #1
  0x8001a1da4:  b90007ef    str w15, [sp, #4]
  0x8001a1da8:  540002c1    b.ne #88
  0x8001a1dac:  aa1f03e8    mov x8, xzr
  0x8001a1db0:  f9400d8d    ldr x13, [x12, #24]
  0x8001a1db4:  eb1701bf    cmp x13, x23
  0x8001a1db8:  540000c3    b.lo #24
  0x8001a1dbc:  b4000088    cbz x8, #16
  0x8001a1dc0:  f9400d0e    ldr x14, [x8, #24]
  0x8001a1dc4:  eb0d01df    cmp x14, x13
  0x8001a1dc8:  54000049    b.ls #8
  0x8001a1dcc:  aa0c03e8    mov x8, x12
  0x8001a1dd0:  8b0a018c    add x12, x12, x10
  0x8001a1dd4:  f940058c    ldr x12, [x12, #8]
  0x8001a1dd8:  8b09018c    add x12, x12, x9
  0x8001a1ddc:  eb0b019f    cmp x12, x11
  0x8001a1de0:  54fffe81    b.ne #-48
  0x8001a1de4:  b4000548    cbz x8, #168
  0x8001a1de8:  f9400d1a    ldr x26, [x8, #24]
  0x8001a1dec:  17fffe73    b #-1588
  0x8001a1df0:  aa0803fb    mov x27, x8
  0x8001a1df4:  94981fa5    bl #39878292
  0x8001a1df8:  aa1b03e8    mov x8, x27
  0x8001a1dfc:  17fffe8d    b #-1484
  0x8001a1e00:  7100091f    cmp w8, #2
  0x8001a1e04:  54000201    b.ne #64
  0x8001a1e08:  aa1f03e8    mov x8, xzr
  0x8001a1e0c:  f9400d8d    ldr x13, [x12, #24]
  0x8001a1e10:  eb1701bf    cmp x13, x23
  0x8001a1e14:  540000c3    b.lo #24
  0x8001a1e18:  b4000088    cbz x8, #16
  0x8001a1e1c:  f9400d0e    ldr x14, [x8, #24]
  0x8001a1e20:  eb0d01df    cmp x14, x13
  0x8001a1e24:  54000042    b.hs #8
  0x8001a1e28:  aa0c03e8    mov x8, x12
  0x8001a1e2c:  8b0a018c    add x12, x12, x10
  0x8001a1e30:  f940058c    ldr x12, [x12, #8]
  0x8001a1e34:  8b09018c    add x12, x12, x9
  0x8001a1e38:  eb0b019f    cmp x12, x11
  0x8001a1e3c:  54fffe81    b.ne #-48
  0x8001a1e40:  17ffffe9    b #-92
  0x8001a1e44:  aa1f03e8    mov x8, xzr
  0x8001a1e48:  f100011f    cmp x8, #0
  0x8001a1e4c:  f9400d8d    ldr x13, [x12, #24]
  0x8001a1e50:  9a88018e    csel x14, x12, x8, eq
  0x8001a1e54:  8b0a018c    add x12, x12, x10
  0x8001a1e58:  f940058c    ldr x12, [x12, #8]
  0x8001a1e5c:  eb1701bf    cmp x13, x23
  0x8001a1e60:  9a8e3108    csel x8, x8, x14, lo
  0x8001a1e64:  8b09018c    add x12, x12, x9
  0x8001a1e68:  eb0b019f    cmp x12, x11
  0x8001a1e6c:  54fffee1    b.ne #-36
  0x8001a1e70:  17ffffdd    b #-140
  0x8001a1e74:  8b0a0108    add x8, x8, x10
  0x8001a1e78:  f9400508    ldr x8, [x8, #8]
  0x8001a1e7c:  8b090108    add x8, x8, x9
  0x8001a1e80:  eb0b011f    cmp x8, x11
  0x8001a1e84:  54ffd5e1    b.ne #-1348
  0x8001a1e88:  b90007ef    str w15, [sp, #4]
  0x8001a1e8c:  b4000079    cbz x25, #12
  0x8001a1e90:  f9400b20    ldr x0, [x25, #16]
  0x8001a1e94:  b5000fa0    cbnz x0, #500
  0x8001a1e98:  aa1f03f8    mov x24, xzr
  0x8001a1e9c:  17fffe84    b #-1520
  0x8001a1ea0:  b4fff4d9    cbz x25, #-360
  0x8001a1ea4:  f9400b20    ldr x0, [x25, #16]
  0x8001a1ea8:  b4fff480    cbz x0, #-368
  0x8001a1eac:  a900d7f3    stp x19, x21, [sp, #8]
  0x8001a1eb0:  b9001bf4    str w20, [sp, #24]
  0x8001a1eb4:  f90013f7    str x23, [sp, #32]
  0x8001a1eb8:  b9002be9    str w9, [sp, #40]
  0x8001a1ebc:  17ffff9b    b #-404
  0x8001a1ec0:  7100061f    cmp w16, #1
  0x8001a1ec4:  b90007ef    str w15, [sp, #4]
  0x8001a1ec8:  54000501    b.ne #160
  0x8001a1ecc:  aa1f03e8    mov x8, xzr
  0x8001a1ed0:  f9400d8f    ldr x15, [x12, #24]
  0x8001a1ed4:  eb1701ff    cmp x15, x23
  0x8001a1ed8:  540000e2    b.hs #28
  0x8001a1edc:  8b0a018c    add x12, x12, x10
  0x8001a1ee0:  f940058c    ldr x12, [x12, #8]
  0x8001a1ee4:  8b09018c    add x12, x12, x9
  0x8001a1ee8:  eb0b019f    cmp x12, x11
  0x8001a1eec:  54ffff21    b.ne #-28
  0x8001a1ef0:  14000062    b #392
  0x8001a1ef4:  79402590    ldrh w16, [x12, #18]
  0x8001a1ef8:  8b100190    add x16, x12, x16
  0x8001a1efc:  91008210    add x16, x16, #32
  0x8001a1f00:  8b0d0211    add x17, x16, x13
  0x8001a1f04:  cb1002f0    sub x16, x23, x16
  0x8001a1f08:  8a0e0231    and x17, x17, x14
  0x8001a1f0c:  8b110210    add x16, x16, x17
  0x8001a1f10:  eb1001ff    cmp x15, x16
  0x8001a1f14:  54fffe43    b.lo #-56
  0x8001a1f18:  b4000088    cbz x8, #16
  0x8001a1f1c:  f9400d10    ldr x16, [x8, #24]
  0x8001a1f20:  eb0f021f    cmp x16, x15
  0x8001a1f24:  54fffdc9    b.ls #-72
  0x8001a1f28:  aa0c03e8    mov x8, x12
  0x8001a1f2c:  17ffffec    b #-80
  0x8001a1f30:  d100812a    sub x10, x9, #32
  0x8001a1f34:  7900251f    strh wzr, [x8, #18]
  0x8001a1f38:  f9000d0a    str x10, [x8, #24]
  0x8001a1f3c:  8b080128    add x8, x9, x8
  0x8001a1f40:  b900111f    str wzr, [x8, #16]
  0x8001a1f44:  f9000d17    str x23, [x8, #24]
  0x8001a1f48:  a9007d1f    stp xzr, xzr, [x8]
  0x8001a1f4c:  17fffeab    b #-1364
  0x8001a1f50:  aa0803fa    mov x26, x8
  0x8001a1f54:  aa0c03fb    mov x27, x12
  0x8001a1f58:  94981f4c    bl #39877936
  0x8001a1f5c:  aa1b03ec    mov x12, x27
  0x8001a1f60:  aa1a03e8    mov x8, x26
  0x8001a1f64:  17fffeb1    b #-1340
  0x8001a1f68:  71000a1f    cmp w16, #2
  0x8001a1f6c:  540005e1    b.ne #188
  0x8001a1f70:  aa1f03e8    mov x8, xzr
  0x8001a1f74:  f9400d8f    ldr x15, [x12, #24]
  0x8001a1f78:  eb1701ff    cmp x15, x23
  0x8001a1f7c:  540000e2    b.hs #28
  0x8001a1f80:  8b0a018c    add x12, x12, x10
  0x8001a1f84:  f940058c    ldr x12, [x12, #8]
  0x8001a1f88:  8b09018c    add x12, x12, x9
  0x8001a1f8c:  eb0b019f    cmp x12, x11
  0x8001a1f90:  54ffff21    b.ne #-28
  0x8001a1f94:  14000039    b #228
  0x8001a1f98:  79402590    ldrh w16, [x12, #18]
  0x8001a1f9c:  8b100190    add x16, x12, x16
  0x8001a1fa0:  91008210    add x16, x16, #32
  0x8001a1fa4:  8b0d0211    add x17, x16, x13
  0x8001a1fa8:  cb1002f0    sub x16, x23, x16
  0x8001a1fac:  8a0e0231    and x17, x17, x14
  0x8001a1fb0:  8b110210    add x16, x16, x17
  0x8001a1fb4:  eb1001ff    cmp x15, x16
  0x8001a1fb8:  54fffe43    b.lo #-56
  0x8001a1fbc:  b4000088    cbz x8, #16
  0x8001a1fc0:  f9400d10    ldr x16, [x8, #24]
  0x8001a1fc4:  eb0f021f    cmp x16, x15
  0x8001a1fc8:  54fffdc2    b.hs #-72
  0x8001a1fcc:  aa0c03e8    mov x8, x12
  0x8001a1fd0:  17ffffec    b #-80
  0x8001a1fd4:  eb1c037f    cmp x27, x28
  0x8001a1fd8:  54ffe4e2    b.hs #-868
  0x8001a1fdc:  f9401e60    ldr x0, [x19, #56]
  0x8001a1fe0:  b940ce61    ldr w1, [x19, #204]
  0x8001a1fe4:  f9400008    ldr x8, [x0]
  0x8001a1fe8:  f9404508    ldr x8, [x8, #136]
  0x8001a1fec:  d63f0100    blr x8
  0x8001a1ff0:  eb00037f    cmp x27, x0
  0x8001a1ff4:  54ffe408    b.hi #-896
  0x8001a1ff8:  aa0003f9    mov x25, x0
  0x8001a1ffc:  f9401e60    ldr x0, [x19, #56]
  0x8001a2000:  aa1903e1    mov x1, x25
  0x8001a2004:  b940ce62    ldr w2, [x19, #204]
  0x8001a2008:  f9400008    ldr x8, [x0]
  0x8001a200c:  f9401908    ldr x8, [x8, #48]
  0x8001a2010:  d63f0100    blr x8
  0x8001a2014:  aa0003f8    mov x24, x0
  0x8001a2018:  b4ffb240    cbz x0, #-2488
  0x8001a201c:  17fffeb9    b #-1308
  0x8001a2020:  aa1f03f7    mov x23, xzr
  0x8001a2024:  17fffebb    b #-1300
  0x8001a2028:  aa1f03e8    mov x8, xzr
  0x8001a202c:  f9400d8f    ldr x15, [x12, #24]
  0x8001a2030:  eb1701ff    cmp x15, x23
  0x8001a2034:  54000183    b.lo #48
  0x8001a2038:  79402590    ldrh w16, [x12, #18]
  0x8001a203c:  f100011f    cmp x8, #0
  0x8001a2040:  8b100190    add x16, x12, x16
  0x8001a2044:  91008210    add x16, x16, #32
  0x8001a2048:  8b0d0211    add x17, x16, x13
  0x8001a204c:  cb1002f0    sub x16, x23, x16
  0x8001a2050:  8a0e0231    and x17, x17, x14
  0x8001a2054:  8b110210    add x16, x16, x17
  0x8001a2058:  9a880191    csel x17, x12, x8, eq
  0x8001a205c:  eb1001ff    cmp x15, x16
  0x8001a2060:  9a913108    csel x8, x8, x17, lo
  0x8001a2064:  8b0a018c    add x12, x12, x10
  0x8001a2068:  f940058c    ldr x12, [x12, #8]
  0x8001a206c:  8b09018c    add x12, x12, x9
  0x8001a2070:  eb0b019f    cmp x12, x11
  0x8001a2074:  54fffdc1    b.ne #-72
  0x8001a2078:  b4fff0a8    cbz x8, #-492
  0x8001a207c:  79402510    ldrh w16, [x8, #18]
  0x8001a2080:  f9400d0c    ldr x12, [x8, #24]
  0x8001a2084:  17fffe3b    b #-1812
  0x8001a2088:  b94007e8    ldr w8, [sp, #4]
  0x8001a208c:  a900d7f3    stp x19, x21, [sp, #8]
  0x8001a2090:  910023e1    add x1, sp, #8
  0x8001a2094:  b9001bf4    str w20, [sp, #24]
  0x8001a2098:  f90013f7    str x23, [sp, #32]
  0x8001a209c:  b9002be8    str w8, [sp, #40]
  0x8001a20a0:  f9400008    ldr x8, [x0]
  0x8001a20a4:  f9400108    ldr x8, [x8]
  0x8001a20a8:  d63f0100    blr x8
  0x8001a20ac:  17ffff7b    b #-532
  0x8001a20b0:  b94007e2    ldr w2, [sp, #4]
  0x8001a20b4:  97ff6acb    bl #-152788
  0x8001a20b8:  17fffec2    b #-1272

