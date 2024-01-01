.section .data, "wa"  # 0x800FB580 - 0x80192460

.global lbl_800FB580
lbl_800FB580:
	.incbin "baserom.dol", 0xF8580, 0x40
.global lbl_800FB5C0
lbl_800FB5C0:
	.incbin "baserom.dol", 0xF85C0, 0x4
.global lbl_800FB5C4
lbl_800FB5C4:
	.incbin "baserom.dol", 0xF85C4, 0x9C
.global lbl_800FB660
lbl_800FB660:
	.incbin "baserom.dol", 0xF8660, 0x5A0
.global lbl_800FBC00
lbl_800FBC00:
	.incbin "baserom.dol", 0xF8C00, 0x5A0
.global gs_pCOL_MallocFUNC
gs_pCOL_MallocFUNC:
	.incbin "baserom.dol", 0xF91A0, 0x8
.global lbl_800FC1A8
lbl_800FC1A8:
	.incbin "baserom.dol", 0xF91A8, 0x18
.global lbl_800FC1C0
lbl_800FC1C0:
	.incbin "baserom.dol", 0xF91C0, 0x8
.global lbl_800FC1C8
lbl_800FC1C8:
	.incbin "baserom.dol", 0xF91C8, 0x4
.global lbl_800FC1CC
lbl_800FC1CC:
	.incbin "baserom.dol", 0xF91CC, 0x4
.global lbl_800FC1D0
lbl_800FC1D0:
	.incbin "baserom.dol", 0xF91D0, 0x4
.global lbl_800FC1D4
lbl_800FC1D4:
	.incbin "baserom.dol", 0xF91D4, 0x4
.global lbl_800FC1D8
lbl_800FC1D8:
	.incbin "baserom.dol", 0xF91D8, 0x8
.global lbl_800FC1E0
lbl_800FC1E0:
	.incbin "baserom.dol", 0xF91E0, 0x4
.global lbl_800FC1E4
lbl_800FC1E4:
	.incbin "baserom.dol", 0xF91E4, 0x4
.global lbl_800FC1E8
lbl_800FC1E8:
	.incbin "baserom.dol", 0xF91E8, 0x8
.global lbl_800FC1F0
lbl_800FC1F0:
	.incbin "baserom.dol", 0xF91F0, 0x4
.global lbl_800FC1F4
lbl_800FC1F4:
	.incbin "baserom.dol", 0xF91F4, 0x4
.global lbl_800FC1F8
lbl_800FC1F8:
	.incbin "baserom.dol", 0xF91F8, 0x4
.global lbl_800FC1FC
lbl_800FC1FC:
	.incbin "baserom.dol", 0xF91FC, 0x1C
.global lbl_800FC218
lbl_800FC218:
	.incbin "baserom.dol", 0xF9218, 0x4
.global lbl_800FC21C
lbl_800FC21C:
	.incbin "baserom.dol", 0xF921C, 0x4
.global lbl_800FC220
lbl_800FC220:
	.incbin "baserom.dol", 0xF9220, 0x88
.global lbl_800FC2A8
lbl_800FC2A8:
	.incbin "baserom.dol", 0xF92A8, 0x4
.global lbl_800FC2AC
lbl_800FC2AC:
	.incbin "baserom.dol", 0xF92AC, 0x4
.global lbl_800FC2B0
lbl_800FC2B0:
	.incbin "baserom.dol", 0xF92B0, 0x348
.global lbl_800FC5F8
lbl_800FC5F8:
	.incbin "baserom.dol", 0xF95F8, 0x26C
.global lbl_800FC864
lbl_800FC864:
	.incbin "baserom.dol", 0xF9864, 0xFC
.global u8FramesPerSecond
u8FramesPerSecond:
	.incbin "baserom.dol", 0xF9960, 0x2
.global lbl_800FC962
lbl_800FC962:
	.incbin "baserom.dol", 0xF9962, 0x1
.global lbl_800FC963
lbl_800FC963:
	.incbin "baserom.dol", 0xF9963, 0x1AB
.global lbl_800FCB0E
lbl_800FCB0E:
	.incbin "baserom.dol", 0xF9B0E, 0xB6
.global lbl_800FCBC4
lbl_800FCBC4:
	.incbin "baserom.dol", 0xF9BC4, 0xC8
.global lbl_800FCC8C
lbl_800FCC8C:
	.incbin "baserom.dol", 0xF9C8C, 0x1
.global lbl_800FCC8D
lbl_800FCC8D:
	.incbin "baserom.dol", 0xF9C8D, 0x3
.global lbl_800FCC90
lbl_800FCC90:
	.incbin "baserom.dol", 0xF9C90, 0x8
.global lbl_800FCC98
lbl_800FCC98:
	.incbin "baserom.dol", 0xF9C98, 0x4
.global lbl_800FCC9C
lbl_800FCC9C:
	.incbin "baserom.dol", 0xF9C9C, 0x8
.global lbl_800FCCA4
lbl_800FCCA4:
	.incbin "baserom.dol", 0xF9CA4, 0x4
.global lbl_800FCCA8
lbl_800FCCA8:
	.incbin "baserom.dol", 0xF9CA8, 0x8
.global lbl_800FCCB0
lbl_800FCCB0:
	.incbin "baserom.dol", 0xF9CB0, 0x10340
.global lbl_8010CFF0
lbl_8010CFF0:
	.incbin "baserom.dol", 0x109FF0, 0x148
.global g_su8TXTcurrentLanguage
g_su8TXTcurrentLanguage:
	.incbin "baserom.dol", 0x10A138, 0x1
.global a_u8TextTable
a_u8TextTable:
	.incbin "baserom.dol", 0x10A139, 0x66597
.global lbl_801736D0
lbl_801736D0:
	.incbin "baserom.dol", 0x1706D0, 0x4
.global lbl_801736D4
lbl_801736D4:
	.incbin "baserom.dol", 0x1706D4, 0x4
.global lbl_801736D8
lbl_801736D8:
	.incbin "baserom.dol", 0x1706D8, 0x1
.global lbl_801736D9
lbl_801736D9:
	.incbin "baserom.dol", 0x1706D9, 0x1
.global lbl_801736DA
lbl_801736DA:
	.incbin "baserom.dol", 0x1706DA, 0x2
.global lbl_801736DC
lbl_801736DC:
	.incbin "baserom.dol", 0x1706DC, 0x4
.global lbl_801736E0
lbl_801736E0:
	.incbin "baserom.dol", 0x1706E0, 0x8
.global lbl_801736E8
lbl_801736E8:
	.incbin "baserom.dol", 0x1706E8, 0x2D
.global lbl_80173715
lbl_80173715:
	.incbin "baserom.dol", 0x170715, 0x43
.global lbl_80173758
lbl_80173758:
	.incbin "baserom.dol", 0x170758, 0x38
.global lbl_80173790
lbl_80173790:
	.incbin "baserom.dol", 0x170790, 0xC
.global lbl_8017379C
lbl_8017379C:
	.incbin "baserom.dol", 0x17079C, 0xC
.global lbl_801737A8
lbl_801737A8:
	.incbin "baserom.dol", 0x1707A8, 0x4E
.global lbl_801737F6
lbl_801737F6:
	.incbin "baserom.dol", 0x1707F6, 0xC6
.global lbl_801738BC
lbl_801738BC:
	.incbin "baserom.dol", 0x1708BC, 0x4
.global lbl_801738C0
lbl_801738C0:
	.incbin "baserom.dol", 0x1708C0, 0x10
.global lbl_801738D0
lbl_801738D0:
	.incbin "baserom.dol", 0x1708D0, 0x470
.global lbl_80173D40
lbl_80173D40:
	.incbin "baserom.dol", 0x170D40, 0x4
.global lbl_80173D44
lbl_80173D44:
	.incbin "baserom.dol", 0x170D44, 0x4
.global lbl_80173D48
lbl_80173D48:
	.incbin "baserom.dol", 0x170D48, 0x4
.global lbl_80173D4C
lbl_80173D4C:
	.incbin "baserom.dol", 0x170D4C, 0x4
.global lbl_80173D50
lbl_80173D50:
	.incbin "baserom.dol", 0x170D50, 0x4
.global lbl_80173D54
lbl_80173D54:
	.incbin "baserom.dol", 0x170D54, 0x4
.global lbl_80173D58
lbl_80173D58:
	.incbin "baserom.dol", 0x170D58, 0x4
.global lbl_80173D5C
lbl_80173D5C:
	.incbin "baserom.dol", 0x170D5C, 0x4
.global lbl_80173D60
lbl_80173D60:
	.incbin "baserom.dol", 0x170D60, 0x4
.global lbl_80173D64
lbl_80173D64:
	.incbin "baserom.dol", 0x170D64, 0x4
.global lbl_80173D68
lbl_80173D68:
	.incbin "baserom.dol", 0x170D68, 0x4
.global lbl_80173D6C
lbl_80173D6C:
	.incbin "baserom.dol", 0x170D6C, 0x4
.global lbl_80173D70
lbl_80173D70:
	.incbin "baserom.dol", 0x170D70, 0x4
.global lbl_80173D74
lbl_80173D74:
	.incbin "baserom.dol", 0x170D74, 0x10
.global lbl_80173D84
lbl_80173D84:
	.incbin "baserom.dol", 0x170D84, 0x10
.global lbl_80173D94
lbl_80173D94:
	.incbin "baserom.dol", 0x170D94, 0x14
.global lbl_80173DA8
lbl_80173DA8:
	.incbin "baserom.dol", 0x170DA8, 0x4
.global lbl_80173DAC
lbl_80173DAC:
	.incbin "baserom.dol", 0x170DAC, 0xC
.global lbl_80173DB8
lbl_80173DB8:
	.incbin "baserom.dol", 0x170DB8, 0x8
.global lbl_80173DC0
lbl_80173DC0:
	.incbin "baserom.dol", 0x170DC0, 0x8
.global lbl_80173DC8
lbl_80173DC8:
	.incbin "baserom.dol", 0x170DC8, 0x8
.global lbl_80173DD0
lbl_80173DD0:
	.incbin "baserom.dol", 0x170DD0, 0x8
.global lbl_80173DD8
lbl_80173DD8:
	.incbin "baserom.dol", 0x170DD8, 0x8
.global lbl_80173DE0
lbl_80173DE0:
	.incbin "baserom.dol", 0x170DE0, 0x8
.global lbl_80173DE8
lbl_80173DE8:
	.incbin "baserom.dol", 0x170DE8, 0x8
.global lbl_80173DF0
lbl_80173DF0:
	.incbin "baserom.dol", 0x170DF0, 0x8
.global lbl_80173DF8
lbl_80173DF8:
	.incbin "baserom.dol", 0x170DF8, 0x8
.global lbl_80173E00
lbl_80173E00:
	.incbin "baserom.dol", 0x170E00, 0x8
.global lbl_80173E08
lbl_80173E08:
	.incbin "baserom.dol", 0x170E08, 0x8
.global lbl_80173E10
lbl_80173E10:
	.incbin "baserom.dol", 0x170E10, 0x8
.global lbl_80173E18
lbl_80173E18:
	.incbin "baserom.dol", 0x170E18, 0x8
.global lbl_80173E20
lbl_80173E20:
	.incbin "baserom.dol", 0x170E20, 0x8
.global lbl_80173E28
lbl_80173E28:
	.incbin "baserom.dol", 0x170E28, 0x8
.global lbl_80173E30
lbl_80173E30:
	.incbin "baserom.dol", 0x170E30, 0x18
.global lbl_80173E48
lbl_80173E48:
	.incbin "baserom.dol", 0x170E48, 0x20
.global lbl_80173E68
lbl_80173E68:
	.incbin "baserom.dol", 0x170E68, 0x10
.global lbl_80173E78
lbl_80173E78:
	.incbin "baserom.dol", 0x170E78, 0x4
.global lbl_80173E7C
lbl_80173E7C:
	.incbin "baserom.dol", 0x170E7C, 0x4
.global lbl_80173E80
lbl_80173E80:
	.incbin "baserom.dol", 0x170E80, 0x4
.global lbl_80173E84
lbl_80173E84:
	.incbin "baserom.dol", 0x170E84, 0x4
.global lbl_80173E88
lbl_80173E88:
	.incbin "baserom.dol", 0x170E88, 0x4
.global lbl_80173E8C
lbl_80173E8C:
	.incbin "baserom.dol", 0x170E8C, 0x4
.global lbl_80173E90
lbl_80173E90:
	.incbin "baserom.dol", 0x170E90, 0xD0
.global lbl_80173F60
lbl_80173F60:
	.incbin "baserom.dol", 0x170F60, 0xD0
.global lbl_80174030
lbl_80174030:
	.incbin "baserom.dol", 0x171030, 0x1
.global lbl_80174031
lbl_80174031:
	.incbin "baserom.dol", 0x171031, 0xAF
.global g_roundTickCounter
g_roundTickCounter:
	.incbin "baserom.dol", 0x1710E0, 0x8
.global lbl_801740E8
lbl_801740E8:
	.incbin "baserom.dol", 0x1710E8, 0x4
.global lbl_801740EC
lbl_801740EC:
	.incbin "baserom.dol", 0x1710EC, 0x4
.global lbl_801740F0
lbl_801740F0:
	.incbin "baserom.dol", 0x1710F0, 0x4
.global lbl_801740F4
lbl_801740F4:
	.incbin "baserom.dol", 0x1710F4, 0x4
.global lbl_801740F8
lbl_801740F8:
	.incbin "baserom.dol", 0x1710F8, 0x4
.global lbl_801740FC
lbl_801740FC:
	.incbin "baserom.dol", 0x1710FC, 0x4
.global lbl_80174100
lbl_80174100:
	.incbin "baserom.dol", 0x171100, 0x320
.global lbl_80174420
lbl_80174420:
	.incbin "baserom.dol", 0x171420, 0xB4
.global lbl_801744D4
lbl_801744D4:
	.incbin "baserom.dol", 0x1714D4, 0x120
.global lbl_801745F4
lbl_801745F4:
	.incbin "baserom.dol", 0x1715F4, 0x90
.global lbl_80174684
lbl_80174684:
	.incbin "baserom.dol", 0x171684, 0xD8
.global lbl_8017475C
lbl_8017475C:
	.incbin "baserom.dol", 0x17175C, 0xD8
.global lbl_80174834
lbl_80174834:
	.incbin "baserom.dol", 0x171834, 0xFC
.global lbl_80174930
lbl_80174930:
	.incbin "baserom.dol", 0x171930, 0xB4
.global lbl_801749E4
lbl_801749E4:
	.incbin "baserom.dol", 0x1719E4, 0x1D4
.global lbl_80174BB8
lbl_80174BB8:
	.incbin "baserom.dol", 0x171BB8, 0xD8
.global lbl_80174C90
lbl_80174C90:
	.incbin "baserom.dol", 0x171C90, 0x90
.global lbl_80174D20
lbl_80174D20:
	.incbin "baserom.dol", 0x171D20, 0xC
.global lbl_80174D2C
lbl_80174D2C:
	.incbin "baserom.dol", 0x171D2C, 0x18
.global lbl_80174D44
lbl_80174D44:
	.incbin "baserom.dol", 0x171D44, 0x590
.global lbl_801752D4
lbl_801752D4:
	.incbin "baserom.dol", 0x1722D4, 0x5A04
.global lbl_8017ACD8
lbl_8017ACD8:
	.incbin "baserom.dol", 0x177CD8, 0x38
.global lbl_8017AD10
lbl_8017AD10:
	.incbin "baserom.dol", 0x177D10, 0x78
.global lbl_8017AD88
lbl_8017AD88:
	.incbin "baserom.dol", 0x177D88, 0x5B8
.global lbl_8017B340
lbl_8017B340:
	.incbin "baserom.dol", 0x178340, 0x234
.global lbl_8017B574
lbl_8017B574:
	.incbin "baserom.dol", 0x178574, 0x234
.global lbl_8017B7A8
lbl_8017B7A8:
	.incbin "baserom.dol", 0x1787A8, 0x234
.global lbl_8017B9DC
lbl_8017B9DC:
	.incbin "baserom.dol", 0x1789DC, 0x234
.global lbl_8017BC10
lbl_8017BC10:
	.incbin "baserom.dol", 0x178C10, 0x234
.global lbl_8017BE44
lbl_8017BE44:
	.incbin "baserom.dol", 0x178E44, 0x234
.global lbl_8017C078
lbl_8017C078:
	.incbin "baserom.dol", 0x179078, 0x234
.global lbl_8017C2AC
lbl_8017C2AC:
	.incbin "baserom.dol", 0x1792AC, 0x234
.global lbl_8017C4E0
lbl_8017C4E0:
	.incbin "baserom.dol", 0x1794E0, 0x234
.global lbl_8017C714
lbl_8017C714:
	.incbin "baserom.dol", 0x179714, 0x234
.global lbl_8017C948
lbl_8017C948:
	.incbin "baserom.dol", 0x179948, 0x238
.global lbl_8017CB80
lbl_8017CB80:
	.incbin "baserom.dol", 0x179B80, 0xC0
.global lbl_8017CC40
lbl_8017CC40:
	.incbin "baserom.dol", 0x179C40, 0x90
.global lbl_8017CCD0
lbl_8017CCD0:
	.incbin "baserom.dol", 0x179CD0, 0xF0
.global lbl_8017CDC0
lbl_8017CDC0:
	.incbin "baserom.dol", 0x179DC0, 0x8
.global lbl_8017CDC8
lbl_8017CDC8:
	.incbin "baserom.dol", 0x179DC8, 0xD1
.global lbl_8017CE99
lbl_8017CE99:
	.incbin "baserom.dol", 0x179E99, 0xD1
.global lbl_8017CF6A
lbl_8017CF6A:
	.incbin "baserom.dol", 0x179F6A, 0xD2
.global lbl_8017D03C
lbl_8017D03C:
	.incbin "baserom.dol", 0x17A03C, 0x42C
.global lbl_8017D468
lbl_8017D468:
	.incbin "baserom.dol", 0x17A468, 0x7
.global lbl_8017D46F
lbl_8017D46F:
	.incbin "baserom.dol", 0x17A46F, 0x9
.global lbl_8017D478
lbl_8017D478:
	.incbin "baserom.dol", 0x17A478, 0x6
.global lbl_8017D47E
lbl_8017D47E:
	.incbin "baserom.dol", 0x17A47E, 0x9E
.global lbl_8017D51C
lbl_8017D51C:
	.incbin "baserom.dol", 0x17A51C, 0x14
.global lbl_8017D530
lbl_8017D530:
	.incbin "baserom.dol", 0x17A530, 0x880
.global lbl_8017DDB0
lbl_8017DDB0:
	.incbin "baserom.dol", 0x17ADB0, 0x8
.global lbl_8017DDB8
lbl_8017DDB8:
	.incbin "baserom.dol", 0x17ADB8, 0x8
.global lbl_8017DDC0
lbl_8017DDC0:
	.incbin "baserom.dol", 0x17ADC0, 0x2
.global lbl_8017DDC2
lbl_8017DDC2:
	.incbin "baserom.dol", 0x17ADC2, 0x4
.global lbl_8017DDC6
lbl_8017DDC6:
	.incbin "baserom.dol", 0x17ADC6, 0x61A
.global lbl_8017E3E0
lbl_8017E3E0:
	.incbin "baserom.dol", 0x17B3E0, 0xC
.global lbl_8017E3EC
lbl_8017E3EC:
	.incbin "baserom.dol", 0x17B3EC, 0x1EC
.global lbl_8017E5D8
lbl_8017E5D8:
	.incbin "baserom.dol", 0x17B5D8, 0x9AB
.global lbl_8017EF83
lbl_8017EF83:
	.incbin "baserom.dol", 0x17BF83, 0x1D
.global lbl_8017EFA0
lbl_8017EFA0:
	.incbin "baserom.dol", 0x17BFA0, 0x4
.global lbl_8017EFA4
lbl_8017EFA4:
	.incbin "baserom.dol", 0x17BFA4, 0x10
.global lbl_8017EFB4
lbl_8017EFB4:
	.incbin "baserom.dol", 0x17BFB4, 0xC
.global lbl_8017EFC0
lbl_8017EFC0:
	.incbin "baserom.dol", 0x17BFC0, 0x2C
.global lbl_8017EFEC
lbl_8017EFEC:
	.incbin "baserom.dol", 0x17BFEC, 0x4
.global lbl_8017EFF0
lbl_8017EFF0:
	.incbin "baserom.dol", 0x17BFF0, 0x10
.global lbl_8017F000
lbl_8017F000:
	.incbin "baserom.dol", 0x17C000, 0x84
.global lbl_8017F084
lbl_8017F084:
	.incbin "baserom.dol", 0x17C084, 0x84
.global lbl_8017F108
lbl_8017F108:
	.incbin "baserom.dol", 0x17C108, 0x250
.global lbl_8017F358
lbl_8017F358:
	.incbin "baserom.dol", 0x17C358, 0x4
.global lbl_8017F35C
lbl_8017F35C:
	.incbin "baserom.dol", 0x17C35C, 0x8
.global lbl_8017F364
lbl_8017F364:
	.incbin "baserom.dol", 0x17C364, 0x4
.global lbl_8017F368
lbl_8017F368:
	.incbin "baserom.dol", 0x17C368, 0x8
.global lbl_8017F370
lbl_8017F370:
	.incbin "baserom.dol", 0x17C370, 0x160
.global lbl_8017F4D0
lbl_8017F4D0:
	.incbin "baserom.dol", 0x17C4D0, 0x6E
.global lbl_8017F53E
lbl_8017F53E:
	.incbin "baserom.dol", 0x17C53E, 0x52A
.global lbl_8017FA68
lbl_8017FA68:
	.incbin "baserom.dol", 0x17CA68, 0x2599
.global lbl_80182001
lbl_80182001:
	.incbin "baserom.dol", 0x17F001, 0x31
.global lbl_80182032
lbl_80182032:
	.incbin "baserom.dol", 0x17F032, 0x4B6
.global lbl_801824E8
lbl_801824E8:
	.incbin "baserom.dol", 0x17F4E8, 0xD4
.global lbl_801825BC
lbl_801825BC:
	.incbin "baserom.dol", 0x17F5BC, 0x60
.global lbl_8018261C
lbl_8018261C:
	.incbin "baserom.dol", 0x17F61C, 0x60
.global lbl_8018267C
lbl_8018267C:
	.incbin "baserom.dol", 0x17F67C, 0x8
.global lbl_80182684
lbl_80182684:
	.incbin "baserom.dol", 0x17F684, 0x10
.global lbl_80182694
lbl_80182694:
	.incbin "baserom.dol", 0x17F694, 0x14
.global lbl_801826A8
lbl_801826A8:
	.incbin "baserom.dol", 0x17F6A8, 0x5F
.global lbl_80182707
lbl_80182707:
	.incbin "baserom.dol", 0x17F707, 0x18
.global lbl_8018271F
lbl_8018271F:
	.incbin "baserom.dol", 0x17F71F, 0x521
.global lbl_80182C40
lbl_80182C40:
	.incbin "baserom.dol", 0x17FC40, 0x2C
.global lbl_80182C6C
lbl_80182C6C:
	.incbin "baserom.dol", 0x17FC6C, 0x5C
.global lbl_80182CC8
lbl_80182CC8:
	.incbin "baserom.dol", 0x17FCC8, 0x8
.global lbl_80182CD0
lbl_80182CD0:
	.incbin "baserom.dol", 0x17FCD0, 0x20
.global lbl_80182CF0
lbl_80182CF0:
	.incbin "baserom.dol", 0x17FCF0, 0x3C
.global lbl_80182D2C
lbl_80182D2C:
	.incbin "baserom.dol", 0x17FD2C, 0x4
.global lbl_80182D30
lbl_80182D30:
	.incbin "baserom.dol", 0x17FD30, 0x4
.global lbl_80182D34
lbl_80182D34:
	.incbin "baserom.dol", 0x17FD34, 0x4
.global lbl_80182D38
lbl_80182D38:
	.incbin "baserom.dol", 0x17FD38, 0x4
.global lbl_80182D3C
lbl_80182D3C:
	.incbin "baserom.dol", 0x17FD3C, 0x4
.global lbl_80182D40
lbl_80182D40:
	.incbin "baserom.dol", 0x17FD40, 0x24
.global lbl_80182D64
lbl_80182D64:
	.incbin "baserom.dol", 0x17FD64, 0x64
.global lbl_80182DC8
lbl_80182DC8:
	.incbin "baserom.dol", 0x17FDC8, 0x40
.global lbl_80182E08
lbl_80182E08:
	.incbin "baserom.dol", 0x17FE08, 0x78
.global lbl_80182E80
lbl_80182E80:
	.incbin "baserom.dol", 0x17FE80, 0xD8
.global lbl_80182F58
lbl_80182F58:
	.incbin "baserom.dol", 0x17FF58, 0x4
.global lbl_80182F5C
lbl_80182F5C:
	.incbin "baserom.dol", 0x17FF5C, 0x4
.global lbl_80182F60
lbl_80182F60:
	.incbin "baserom.dol", 0x17FF60, 0x4
.global lbl_80182F64
lbl_80182F64:
	.incbin "baserom.dol", 0x17FF64, 0x4
.global lbl_80182F68
lbl_80182F68:
	.incbin "baserom.dol", 0x17FF68, 0x4
.global lbl_80182F6C
lbl_80182F6C:
	.incbin "baserom.dol", 0x17FF6C, 0x4
.global lbl_80182F70
lbl_80182F70:
	.incbin "baserom.dol", 0x17FF70, 0x4
.global lbl_80182F74
lbl_80182F74:
	.incbin "baserom.dol", 0x17FF74, 0x4
.global lbl_80182F78
lbl_80182F78:
	.incbin "baserom.dol", 0x17FF78, 0x48
.global lbl_80182FC0
lbl_80182FC0:
	.incbin "baserom.dol", 0x17FFC0, 0x48
.global lbl_80183008
lbl_80183008:
	.incbin "baserom.dol", 0x180008, 0x18
.global lbl_80183020
lbl_80183020:
	.incbin "baserom.dol", 0x180020, 0x108
.global lbl_80183128
lbl_80183128:
	.incbin "baserom.dol", 0x180128, 0x18
.global lbl_80183140
lbl_80183140:
	.incbin "baserom.dol", 0x180140, 0xC
.global lbl_8018314C
lbl_8018314C:
	.incbin "baserom.dol", 0x18014C, 0x24
.global lbl_80183170
lbl_80183170:
	.incbin "baserom.dol", 0x180170, 0x8
.global lbl_80183178
lbl_80183178:
	.incbin "baserom.dol", 0x180178, 0x34
.global lbl_801831AC
lbl_801831AC:
	.incbin "baserom.dol", 0x1801AC, 0x28
.global lbl_801831D4
lbl_801831D4:
	.incbin "baserom.dol", 0x1801D4, 0x4
.global lbl_801831D8
lbl_801831D8:
	.incbin "baserom.dol", 0x1801D8, 0x28
.global lbl_80183200
lbl_80183200:
	.incbin "baserom.dol", 0x180200, 0xC
.global lbl_8018320C
lbl_8018320C:
	.incbin "baserom.dol", 0x18020C, 0x24
.global lbl_80183230
lbl_80183230:
	.incbin "baserom.dol", 0x180230, 0x6C
.global lbl_8018329C
lbl_8018329C:
	.incbin "baserom.dol", 0x18029C, 0x10
.global lbl_801832AC
lbl_801832AC:
	.incbin "baserom.dol", 0x1802AC, 0x34
.global lbl_801832E0
lbl_801832E0:
	.incbin "baserom.dol", 0x1802E0, 0x8
.global lbl_801832E8
lbl_801832E8:
	.incbin "baserom.dol", 0x1802E8, 0x1C
.global lbl_80183304
lbl_80183304:
	.incbin "baserom.dol", 0x180304, 0x40
.global lbl_80183344
lbl_80183344:
	.incbin "baserom.dol", 0x180344, 0x14
.global lbl_80183358
lbl_80183358:
	.incbin "baserom.dol", 0x180358, 0x4
.global lbl_8018335C
lbl_8018335C:
	.incbin "baserom.dol", 0x18035C, 0x8
.global lbl_80183364
lbl_80183364:
	.incbin "baserom.dol", 0x180364, 0x4C
.global lbl_801833B0
lbl_801833B0:
	.incbin "baserom.dol", 0x1803B0, 0x84
.global lbl_80183434
lbl_80183434:
	.incbin "baserom.dol", 0x180434, 0x1E4
.global lbl_80183618
lbl_80183618:
	.incbin "baserom.dol", 0x180618, 0x10
.global lbl_80183628
lbl_80183628:
	.incbin "baserom.dol", 0x180628, 0x34
.global lbl_8018365C
lbl_8018365C:
	.incbin "baserom.dol", 0x18065C, 0x1C
.global lbl_80183678
lbl_80183678:
	.incbin "baserom.dol", 0x180678, 0x1C
.global lbl_80183694
lbl_80183694:
	.incbin "baserom.dol", 0x180694, 0x1C
.global lbl_801836B0
lbl_801836B0:
	.incbin "baserom.dol", 0x1806B0, 0x1C
.global lbl_801836CC
lbl_801836CC:
	.incbin "baserom.dol", 0x1806CC, 0x20
.global lbl_801836EC
lbl_801836EC:
	.incbin "baserom.dol", 0x1806EC, 0x20
.global lbl_8018370C
lbl_8018370C:
	.incbin "baserom.dol", 0x18070C, 0x20
.global lbl_8018372C
lbl_8018372C:
	.incbin "baserom.dol", 0x18072C, 0x1F
.global lbl_8018374B
lbl_8018374B:
	.incbin "baserom.dol", 0x18074B, 0x25D
.global lbl_801839A8
lbl_801839A8:
	.incbin "baserom.dol", 0x1809A8, 0x4
.global lbl_801839AC
lbl_801839AC:
	.incbin "baserom.dol", 0x1809AC, 0x4
.global lbl_801839B0
lbl_801839B0:
	.incbin "baserom.dol", 0x1809B0, 0x10
.global lbl_801839C0
lbl_801839C0:
	.incbin "baserom.dol", 0x1809C0, 0x4
.global lbl_801839C4
lbl_801839C4:
	.incbin "baserom.dol", 0x1809C4, 0x4
.global lbl_801839C8
lbl_801839C8:
	.incbin "baserom.dol", 0x1809C8, 0x4
.global lbl_801839CC
lbl_801839CC:
	.incbin "baserom.dol", 0x1809CC, 0x4
.global lbl_801839D0
lbl_801839D0:
	.incbin "baserom.dol", 0x1809D0, 0x4
.global lbl_801839D4
lbl_801839D4:
	.incbin "baserom.dol", 0x1809D4, 0x4
.global lbl_801839D8
lbl_801839D8:
	.incbin "baserom.dol", 0x1809D8, 0x4
.global lbl_801839DC
lbl_801839DC:
	.incbin "baserom.dol", 0x1809DC, 0x4
.global lbl_801839E0
lbl_801839E0:
	.incbin "baserom.dol", 0x1809E0, 0x20
.global lbl_80183A00
lbl_80183A00:
	.incbin "baserom.dol", 0x180A00, 0x24
.global lbl_80183A24
lbl_80183A24:
	.incbin "baserom.dol", 0x180A24, 0xC
.global lbl_80183A30
lbl_80183A30:
	.incbin "baserom.dol", 0x180A30, 0x8
.global lbl_80183A38
lbl_80183A38:
	.incbin "baserom.dol", 0x180A38, 0x4
.global lbl_80183A3C
lbl_80183A3C:
	.incbin "baserom.dol", 0x180A3C, 0x4
.global lbl_80183A40
lbl_80183A40:
	.incbin "baserom.dol", 0x180A40, 0x4
.global lbl_80183A44
lbl_80183A44:
	.incbin "baserom.dol", 0x180A44, 0x4
.global lbl_80183A48
lbl_80183A48:
	.incbin "baserom.dol", 0x180A48, 0x4
.global lbl_80183A4C
lbl_80183A4C:
	.incbin "baserom.dol", 0x180A4C, 0x4
.global lbl_80183A50
lbl_80183A50:
	.incbin "baserom.dol", 0x180A50, 0x1C
.global lbl_80183A6C
lbl_80183A6C:
	.incbin "baserom.dol", 0x180A6C, 0x1C
.global lbl_80183A88
lbl_80183A88:
	.incbin "baserom.dol", 0x180A88, 0x1C
.global lbl_80183AA4
lbl_80183AA4:
	.incbin "baserom.dol", 0x180AA4, 0x1C
.global lbl_80183AC0
lbl_80183AC0:
	.incbin "baserom.dol", 0x180AC0, 0x50
.global lbl_80183B10
lbl_80183B10:
	.incbin "baserom.dol", 0x180B10, 0x8
.global lbl_80183B18
lbl_80183B18:
	.incbin "baserom.dol", 0x180B18, 0x14
.global lbl_80183B2C
lbl_80183B2C:
	.incbin "baserom.dol", 0x180B2C, 0x19
.global lbl_80183B45
lbl_80183B45:
	.incbin "baserom.dol", 0x180B45, 0x20
.global lbl_80183B65
lbl_80183B65:
	.incbin "baserom.dol", 0x180B65, 0x17
.global lbl_80183B7C
lbl_80183B7C:
	.incbin "baserom.dol", 0x180B7C, 0x26
.global lbl_80183BA2
lbl_80183BA2:
	.incbin "baserom.dol", 0x180BA2, 0x1E
.global lbl_80183BC0
lbl_80183BC0:
	.incbin "baserom.dol", 0x180BC0, 0x1C
.global lbl_80183BDC
lbl_80183BDC:
	.incbin "baserom.dol", 0x180BDC, 0x64
.global lbl_80183C40
lbl_80183C40:
	.incbin "baserom.dol", 0x180C40, 0x18
.global lbl_80183C58
lbl_80183C58:
	.incbin "baserom.dol", 0x180C58, 0x4
.global lbl_80183C5C
lbl_80183C5C:
	.incbin "baserom.dol", 0x180C5C, 0x1C
.global lbl_80183C78
lbl_80183C78:
	.incbin "baserom.dol", 0x180C78, 0x19
.global lbl_80183C91
lbl_80183C91:
	.incbin "baserom.dol", 0x180C91, 0x4F
.global lbl_80183CE0
lbl_80183CE0:
	.incbin "baserom.dol", 0x180CE0, 0x4
.global lbl_80183CE4
lbl_80183CE4:
	.incbin "baserom.dol", 0x180CE4, 0x4
.global lbl_80183CE8
lbl_80183CE8:
	.incbin "baserom.dol", 0x180CE8, 0x8
.global lbl_80183CF0
lbl_80183CF0:
	.incbin "baserom.dol", 0x180CF0, 0x4
.global lbl_80183CF4
lbl_80183CF4:
	.incbin "baserom.dol", 0x180CF4, 0x4
.global lbl_80183CF8
lbl_80183CF8:
	.incbin "baserom.dol", 0x180CF8, 0x4
.global lbl_80183CFC
lbl_80183CFC:
	.incbin "baserom.dol", 0x180CFC, 0x4
.global lbl_80183D00
lbl_80183D00:
	.incbin "baserom.dol", 0x180D00, 0x8
.global lbl_80183D08
lbl_80183D08:
	.incbin "baserom.dol", 0x180D08, 0x32C
.global lbl_80184034
lbl_80184034:
	.incbin "baserom.dol", 0x181034, 0x1B0
.global lbl_801841E4
lbl_801841E4:
	.incbin "baserom.dol", 0x1811E4, 0x1BC
.global lbl_801843A0
lbl_801843A0:
	.incbin "baserom.dol", 0x1813A0, 0x4
.global lbl_801843A4
lbl_801843A4:
	.incbin "baserom.dol", 0x1813A4, 0x4
.global lbl_801843A8
lbl_801843A8:
	.incbin "baserom.dol", 0x1813A8, 0x1F8
.global lbl_801845A0
lbl_801845A0:
	.incbin "baserom.dol", 0x1815A0, 0x590
.global lbl_80184B30
lbl_80184B30:
	.incbin "baserom.dol", 0x181B30, 0x80
.global lbl_80184BB0
lbl_80184BB0:
	.incbin "baserom.dol", 0x181BB0, 0x230
.global lbl_80184DE0
lbl_80184DE0:
	.incbin "baserom.dol", 0x181DE0, 0x1B4
.global lbl_80184F94
lbl_80184F94:
	.incbin "baserom.dol", 0x181F94, 0x24
.global lbl_80184FB8
lbl_80184FB8:
	.incbin "baserom.dol", 0x181FB8, 0x2DC
.global lbl_80185294
lbl_80185294:
	.incbin "baserom.dol", 0x182294, 0x44
.global lbl_801852D8
lbl_801852D8:
	.incbin "baserom.dol", 0x1822D8, 0x80
.global lbl_80185358
lbl_80185358:
	.incbin "baserom.dol", 0x182358, 0x10
.global lbl_80185368
lbl_80185368:
	.incbin "baserom.dol", 0x182368, 0x980
.global lbl_80185CE8
lbl_80185CE8:
	.incbin "baserom.dol", 0x182CE8, 0x44
.global lbl_80185D2C
lbl_80185D2C:
	.incbin "baserom.dol", 0x182D2C, 0x14
.global lbl_80185D40
lbl_80185D40:
	.incbin "baserom.dol", 0x182D40, 0xC0
.global XYNTSC
XYNTSC:
	.incbin "baserom.dol", 0x182E00, 0x98
.global lbl_80185E98
lbl_80185E98:
	.incbin "baserom.dol", 0x182E98, 0x18
.global lbl_80185EB0
lbl_80185EB0:
	.incbin "baserom.dol", 0x182EB0, 0xC8
.global lbl_80185F78
lbl_80185F78:
	.incbin "baserom.dol", 0x182F78, 0x38
.global lbl_80185FB0
lbl_80185FB0:
	.incbin "baserom.dol", 0x182FB0, 0x338
.global lbl_801862E8
lbl_801862E8:
	.incbin "baserom.dol", 0x1832E8, 0xC
.global lbl_801862F4
lbl_801862F4:
	.incbin "baserom.dol", 0x1832F4, 0x34
.global lbl_80186328
lbl_80186328:
	.incbin "baserom.dol", 0x183328, 0x90
.global lbl_801863B8
lbl_801863B8:
	.incbin "baserom.dol", 0x1833B8, 0x34
.global lbl_801863EC
lbl_801863EC:
	.incbin "baserom.dol", 0x1833EC, 0x19C
.global ErrorTable
ErrorTable:
	.incbin "baserom.dol", 0x183588, 0x478
.global lbl_80186A00
lbl_80186A00:
	.incbin "baserom.dol", 0x183A00, 0x70
.global timing
timing:
	.incbin "baserom.dol", 0x183A70, 0x1F4
.global lbl_80186C64
lbl_80186C64:
	.incbin "baserom.dol", 0x183C64, 0x1C0
.global lbl_80186E24
lbl_80186E24:
	.incbin "baserom.dol", 0x183E24, 0x64
.global ResetFunctionInfo
ResetFunctionInfo:
	.incbin "baserom.dol", 0x183E88, 0x130
.global lbl_80186FB8
lbl_80186FB8:
	.incbin "baserom.dol", 0x183FB8, 0x10
.global lbl_80186FC8
lbl_80186FC8:
	.incbin "baserom.dol", 0x183FC8, 0x20
.global lbl_80186FE8
lbl_80186FE8:
	.incbin "baserom.dol", 0x183FE8, 0x38
.global CardData
CardData:
	.incbin "baserom.dol", 0x184020, 0x160
.global lbl_80187180
lbl_80187180:
	.incbin "baserom.dol", 0x184180, 0x68
.global lbl_801871E8
lbl_801871E8:
	.incbin "baserom.dol", 0x1841E8, 0x68
.global lbl_80187250
lbl_80187250:
	.incbin "baserom.dol", 0x184250, 0x68
.global lbl_801872B8
lbl_801872B8:
	.incbin "baserom.dol", 0x1842B8, 0x44
.global lbl_801872FC
lbl_801872FC:
	.incbin "baserom.dol", 0x1842FC, 0x44
.global lbl_80187340
lbl_80187340:
	.incbin "baserom.dol", 0x184340, 0x44
.global lbl_80187384
lbl_80187384:
	.incbin "baserom.dol", 0x184384, 0x1C
.global lbl_801873A0
lbl_801873A0:
	.incbin "baserom.dol", 0x1843A0, 0x1A0
.global GXNtsc480IntDf
GXNtsc480IntDf:
	.incbin "baserom.dol", 0x184540, 0x258
.global GXMpal480IntDf
GXMpal480IntDf:
	.incbin "baserom.dol", 0x184798, 0x1A4
.global GXPal528IntDf
GXPal528IntDf:
	.incbin "baserom.dol", 0x18493C, 0x1A4
.global GXEurgb60Hz480IntDf
GXEurgb60Hz480IntDf:
	.incbin "baserom.dol", 0x184AE0, 0xF0
.global lbl_80187BD0
lbl_80187BD0:
	.incbin "baserom.dol", 0x184BD0, 0x20
.global lbl_80187BF0
lbl_80187BF0:
	.incbin "baserom.dol", 0x184BF0, 0xF4
.global lbl_80187CE4
lbl_80187CE4:
	.incbin "baserom.dol", 0x184CE4, 0xF4
.global lbl_80187DD8
lbl_80187DD8:
	.incbin "baserom.dol", 0x184DD8, 0xF4
.global lbl_80187ECC
lbl_80187ECC:
	.incbin "baserom.dol", 0x184ECC, 0x3C
.global lbl_80187F08
lbl_80187F08:
	.incbin "baserom.dol", 0x184F08, 0x50
.global lbl_80187F58
lbl_80187F58:
	.incbin "baserom.dol", 0x184F58, 0x28
.global lbl_80187F80
lbl_80187F80:
	.incbin "baserom.dol", 0x184F80, 0x16C
.global lbl_801880EC
lbl_801880EC:
	.incbin "baserom.dol", 0x1850EC, 0xC0
.global GXResetFuncInfo
GXResetFuncInfo:
	.incbin "baserom.dol", 0x1851AC, 0x14
.global lbl_801881C0
lbl_801881C0:
	.incbin "baserom.dol", 0x1851C0, 0x20
.global lbl_801881E0
lbl_801881E0:
	.incbin "baserom.dol", 0x1851E0, 0x5C
.global lbl_8018823C
lbl_8018823C:
	.incbin "baserom.dol", 0x18523C, 0x90
.global lbl_801882CC
lbl_801882CC:
	.incbin "baserom.dol", 0x1852CC, 0x5C
.global lbl_80188328
lbl_80188328:
	.incbin "baserom.dol", 0x185328, 0x1C
.global lbl_80188344
lbl_80188344:
	.incbin "baserom.dol", 0x185344, 0x2EC
.global lbl_80188630
lbl_80188630:
	.incbin "baserom.dol", 0x185630, 0x4
.global lbl_80188634
lbl_80188634:
	.incbin "baserom.dol", 0x185634, 0x4
.global lbl_80188638
lbl_80188638:
	.incbin "baserom.dol", 0x185638, 0x4
.global lbl_8018863C
lbl_8018863C:
	.incbin "baserom.dol", 0x18563C, 0x4
.global lbl_80188640
lbl_80188640:
	.incbin "baserom.dol", 0x185640, 0x4
.global lbl_80188644
lbl_80188644:
	.incbin "baserom.dol", 0x185644, 0x4
.global lbl_80188648
lbl_80188648:
	.incbin "baserom.dol", 0x185648, 0x8
.global lbl_80188650
lbl_80188650:
	.incbin "baserom.dol", 0x185650, 0x4
.global lbl_80188654
lbl_80188654:
	.incbin "baserom.dol", 0x185654, 0x4
.global lbl_80188658
lbl_80188658:
	.incbin "baserom.dol", 0x185658, 0x8
.global lbl_80188660
lbl_80188660:
	.incbin "baserom.dol", 0x185660, 0x4
.global lbl_80188664
lbl_80188664:
	.incbin "baserom.dol", 0x185664, 0x4
.global lbl_80188668
lbl_80188668:
	.incbin "baserom.dol", 0x185668, 0x4
.global lbl_8018866C
lbl_8018866C:
	.incbin "baserom.dol", 0x18566C, 0x4
.global lbl_80188670
lbl_80188670:
	.incbin "baserom.dol", 0x185670, 0x4
.global lbl_80188674
lbl_80188674:
	.incbin "baserom.dol", 0x185674, 0x8
.global lbl_8018867C
lbl_8018867C:
	.incbin "baserom.dol", 0x18567C, 0x4
.global lbl_80188680
lbl_80188680:
	.incbin "baserom.dol", 0x185680, 0x4
.global lbl_80188684
lbl_80188684:
	.incbin "baserom.dol", 0x185684, 0x4
.global lbl_80188688
lbl_80188688:
	.incbin "baserom.dol", 0x185688, 0x4
.global lbl_8018868C
lbl_8018868C:
	.incbin "baserom.dol", 0x18568C, 0x4
.global lbl_80188690
lbl_80188690:
	.incbin "baserom.dol", 0x185690, 0x4
.global lbl_80188694
lbl_80188694:
	.incbin "baserom.dol", 0x185694, 0x14
.global lbl_801886A8
lbl_801886A8:
	.incbin "baserom.dol", 0x1856A8, 0x8
.global lbl_801886B0
lbl_801886B0:
	.incbin "baserom.dol", 0x1856B0, 0x4
.global lbl_801886B4
lbl_801886B4:
	.incbin "baserom.dol", 0x1856B4, 0x4
.global lbl_801886B8
lbl_801886B8:
	.incbin "baserom.dol", 0x1856B8, 0x4
.global lbl_801886BC
lbl_801886BC:
	.incbin "baserom.dol", 0x1856BC, 0x4
.global lbl_801886C0
lbl_801886C0:
	.incbin "baserom.dol", 0x1856C0, 0x4
.global lbl_801886C4
lbl_801886C4:
	.incbin "baserom.dol", 0x1856C4, 0x4
.global lbl_801886C8
lbl_801886C8:
	.incbin "baserom.dol", 0x1856C8, 0x4
.global lbl_801886CC
lbl_801886CC:
	.incbin "baserom.dol", 0x1856CC, 0x4
.global lbl_801886D0
lbl_801886D0:
	.incbin "baserom.dol", 0x1856D0, 0x4
.global lbl_801886D4
lbl_801886D4:
	.incbin "baserom.dol", 0x1856D4, 0x4
.global lbl_801886D8
lbl_801886D8:
	.incbin "baserom.dol", 0x1856D8, 0x30
.global lbl_80188708
lbl_80188708:
	.incbin "baserom.dol", 0x185708, 0x20
.global lbl_80188728
lbl_80188728:
	.incbin "baserom.dol", 0x185728, 0x8
.global lbl_80188730
lbl_80188730:
	.incbin "baserom.dol", 0x185730, 0x4
.global lbl_80188734
lbl_80188734:
	.incbin "baserom.dol", 0x185734, 0x4
.global lbl_80188738
lbl_80188738:
	.incbin "baserom.dol", 0x185738, 0x10
.global lbl_80188748
lbl_80188748:
	.incbin "baserom.dol", 0x185748, 0x14
.global lbl_8018875C
lbl_8018875C:
	.incbin "baserom.dol", 0x18575C, 0x4
.global lbl_80188760
lbl_80188760:
	.incbin "baserom.dol", 0x185760, 0x4
.global lbl_80188764
lbl_80188764:
	.incbin "baserom.dol", 0x185764, 0x4
.global lbl_80188768
lbl_80188768:
	.incbin "baserom.dol", 0x185768, 0x4
.global lbl_8018876C
lbl_8018876C:
	.incbin "baserom.dol", 0x18576C, 0x4
.global lbl_80188770
lbl_80188770:
	.incbin "baserom.dol", 0x185770, 0x4
.global lbl_80188774
lbl_80188774:
	.incbin "baserom.dol", 0x185774, 0x3C
.global lbl_801887B0
lbl_801887B0:
	.incbin "baserom.dol", 0x1857B0, 0x4
.global lbl_801887B4
lbl_801887B4:
	.incbin "baserom.dol", 0x1857B4, 0x4
.global lbl_801887B8
lbl_801887B8:
	.incbin "baserom.dol", 0x1857B8, 0x4
.global lbl_801887BC
lbl_801887BC:
	.incbin "baserom.dol", 0x1857BC, 0x4
.global lbl_801887C0
lbl_801887C0:
	.incbin "baserom.dol", 0x1857C0, 0x8
.global lbl_801887C8
lbl_801887C8:
	.incbin "baserom.dol", 0x1857C8, 0x18
.global lbl_801887E0
lbl_801887E0:
	.incbin "baserom.dol", 0x1857E0, 0x8
.global lbl_801887E8
lbl_801887E8:
	.incbin "baserom.dol", 0x1857E8, 0x8
.global lbl_801887F0
lbl_801887F0:
	.incbin "baserom.dol", 0x1857F0, 0x4
.global lbl_801887F4
lbl_801887F4:
	.incbin "baserom.dol", 0x1857F4, 0x4
.global lbl_801887F8
lbl_801887F8:
	.incbin "baserom.dol", 0x1857F8, 0x4
.global lbl_801887FC
lbl_801887FC:
	.incbin "baserom.dol", 0x1857FC, 0x4
.global lbl_80188800
lbl_80188800:
	.incbin "baserom.dol", 0x185800, 0x4
.global lbl_80188804
lbl_80188804:
	.incbin "baserom.dol", 0x185804, 0x4
.global lbl_80188808
lbl_80188808:
	.incbin "baserom.dol", 0x185808, 0x4
.global lbl_8018880C
lbl_8018880C:
	.incbin "baserom.dol", 0x18580C, 0x4
.global lbl_80188810
lbl_80188810:
	.incbin "baserom.dol", 0x185810, 0x1C
.global lbl_8018882C
lbl_8018882C:
	.incbin "baserom.dol", 0x18582C, 0x4
.global lbl_80188830
lbl_80188830:
	.incbin "baserom.dol", 0x185830, 0x4
.global lbl_80188834
lbl_80188834:
	.incbin "baserom.dol", 0x185834, 0x4
.global lbl_80188838
lbl_80188838:
	.incbin "baserom.dol", 0x185838, 0x4
.global lbl_8018883C
lbl_8018883C:
	.incbin "baserom.dol", 0x18583C, 0x4
.global lbl_80188840
lbl_80188840:
	.incbin "baserom.dol", 0x185840, 0x4
.global lbl_80188844
lbl_80188844:
	.incbin "baserom.dol", 0x185844, 0x4
.global lbl_80188848
lbl_80188848:
	.incbin "baserom.dol", 0x185848, 0x4
.global lbl_8018884C
lbl_8018884C:
	.incbin "baserom.dol", 0x18584C, 0x4
.global lbl_80188850
lbl_80188850:
	.incbin "baserom.dol", 0x185850, 0x20
.global lbl_80188870
lbl_80188870:
	.incbin "baserom.dol", 0x185870, 0x4
.global lbl_80188874
lbl_80188874:
	.incbin "baserom.dol", 0x185874, 0x2
.global lbl_80188876
lbl_80188876:
	.incbin "baserom.dol", 0x185876, 0x2
.global lbl_80188878
lbl_80188878:
	.incbin "baserom.dol", 0x185878, 0x4
.global lbl_8018887C
lbl_8018887C:
	.incbin "baserom.dol", 0x18587C, 0x8
.global lbl_80188884
lbl_80188884:
	.incbin "baserom.dol", 0x185884, 0x24
.global lbl_801888A8
lbl_801888A8:
	.incbin "baserom.dol", 0x1858A8, 0x4
.global lbl_801888AC
lbl_801888AC:
	.incbin "baserom.dol", 0x1858AC, 0x4
.global lbl_801888B0
lbl_801888B0:
	.incbin "baserom.dol", 0x1858B0, 0xC
.global lbl_801888BC
lbl_801888BC:
	.incbin "baserom.dol", 0x1858BC, 0x8
.global lbl_801888C4
lbl_801888C4:
	.incbin "baserom.dol", 0x1858C4, 0x4
.global lbl_801888C8
lbl_801888C8:
	.incbin "baserom.dol", 0x1858C8, 0x4
.global lbl_801888CC
lbl_801888CC:
	.incbin "baserom.dol", 0x1858CC, 0x4
.global lbl_801888D0
lbl_801888D0:
	.incbin "baserom.dol", 0x1858D0, 0x18
.global lbl_801888E8
lbl_801888E8:
	.incbin "baserom.dol", 0x1858E8, 0x8
.global lbl_801888F0
lbl_801888F0:
	.incbin "baserom.dol", 0x1858F0, 0x4
.global lbl_801888F4
lbl_801888F4:
	.incbin "baserom.dol", 0x1858F4, 0x74
.global lbl_80188968
lbl_80188968:
	.incbin "baserom.dol", 0x185968, 0x4
.global lbl_8018896C
lbl_8018896C:
	.incbin "baserom.dol", 0x18596C, 0x4
.global lbl_80188970
lbl_80188970:
	.incbin "baserom.dol", 0x185970, 0x4
.global lbl_80188974
lbl_80188974:
	.incbin "baserom.dol", 0x185974, 0x4
.global lbl_80188978
lbl_80188978:
	.incbin "baserom.dol", 0x185978, 0x1248
.global lbl_80189BC0
lbl_80189BC0:
	.incbin "baserom.dol", 0x186BC0, 0x4C
.global lbl_80189C0C
lbl_80189C0C:
	.incbin "baserom.dol", 0x186C0C, 0x4
.global lbl_80189C10
lbl_80189C10:
	.incbin "baserom.dol", 0x186C10, 0x34
.global lbl_80189C44
lbl_80189C44:
	.incbin "baserom.dol", 0x186C44, 0x174
.global lbl_80189DB8
lbl_80189DB8:
	.incbin "baserom.dol", 0x186DB8, 0x18
.global lbl_80189DD0
lbl_80189DD0:
	.incbin "baserom.dol", 0x186DD0, 0xC
.global lbl_80189DDC
lbl_80189DDC:
	.incbin "baserom.dol", 0x186DDC, 0xC
.global lbl_80189DE8
lbl_80189DE8:
	.incbin "baserom.dol", 0x186DE8, 0x8
.global lbl_80189DF0
lbl_80189DF0:
	.incbin "baserom.dol", 0x186DF0, 0x4
.global lbl_80189DF4
lbl_80189DF4:
	.incbin "baserom.dol", 0x186DF4, 0x4
.global lbl_80189DF8
lbl_80189DF8:
	.incbin "baserom.dol", 0x186DF8, 0x8
.global lbl_80189E00
lbl_80189E00:
	.incbin "baserom.dol", 0x186E00, 0x8
.global lbl_80189E08
lbl_80189E08:
	.incbin "baserom.dol", 0x186E08, 0xBD0
.global lbl_8018A9D8
lbl_8018A9D8:
	.incbin "baserom.dol", 0x1879D8, 0xE8
.global lbl_8018AAC0
lbl_8018AAC0:
	.incbin "baserom.dol", 0x187AC0, 0x1A40
.global lbl_8018C500
lbl_8018C500:
	.incbin "baserom.dol", 0x189500, 0x1EC0
.global lbl_8018E3C0
lbl_8018E3C0:
	.incbin "baserom.dol", 0x18B3C0, 0x10
.global lbl_8018E3D0
lbl_8018E3D0:
	.incbin "baserom.dol", 0x18B3D0, 0xBC0
.global lbl_8018EF90
lbl_8018EF90:
	.incbin "baserom.dol", 0x18BF90, 0x48
.global lbl_8018EFD8
lbl_8018EFD8:
	.incbin "baserom.dol", 0x18BFD8, 0x48
.global lbl_8018F020
lbl_8018F020:
	.incbin "baserom.dol", 0x18C020, 0x9F0
.global lbl_8018FA10
lbl_8018FA10:
	.incbin "baserom.dol", 0x18CA10, 0x878
.global lbl_80190288
lbl_80190288:
	.incbin "baserom.dol", 0x18D288, 0x60
.global lbl_801902E8
lbl_801902E8:
	.incbin "baserom.dol", 0x18D2E8, 0x80
.global lbl_80190368
lbl_80190368:
	.incbin "baserom.dol", 0x18D368, 0x2F4
.global lbl_8019065C
lbl_8019065C:
	.incbin "baserom.dol", 0x18D65C, 0x74
.global lbl_801906D0
lbl_801906D0:
	.incbin "baserom.dol", 0x18D6D0, 0xA0
.global lbl_80190770
lbl_80190770:
	.incbin "baserom.dol", 0x18D770, 0x18
.global lbl_80190788
lbl_80190788:
	.incbin "baserom.dol", 0x18D788, 0xA8
.global lbl_80190830
lbl_80190830:
	.incbin "baserom.dol", 0x18D830, 0x18
.global lbl_80190848
lbl_80190848:
	.incbin "baserom.dol", 0x18D848, 0x18
.global lbl_80190860
lbl_80190860:
	.incbin "baserom.dol", 0x18D860, 0x30
.global lbl_80190890
lbl_80190890:
	.incbin "baserom.dol", 0x18D890, 0x38
.global lbl_801908C8
lbl_801908C8:
	.incbin "baserom.dol", 0x18D8C8, 0x30
.global lbl_801908F8
lbl_801908F8:
	.incbin "baserom.dol", 0x18D8F8, 0x38
.global lbl_80190930
lbl_80190930:
	.incbin "baserom.dol", 0x18D930, 0x60
.global lbl_80190990
lbl_80190990:
	.incbin "baserom.dol", 0x18D990, 0x30
.global lbl_801909C0
lbl_801909C0:
	.incbin "baserom.dol", 0x18D9C0, 0x30
.global lbl_801909F0
lbl_801909F0:
	.incbin "baserom.dol", 0x18D9F0, 0x30
.global lbl_80190A20
lbl_80190A20:
	.incbin "baserom.dol", 0x18DA20, 0x30
.global lbl_80190A50
lbl_80190A50:
	.incbin "baserom.dol", 0x18DA50, 0x30
.global lbl_80190A80
lbl_80190A80:
	.incbin "baserom.dol", 0x18DA80, 0x30
.global lbl_80190AB0
lbl_80190AB0:
	.incbin "baserom.dol", 0x18DAB0, 0x30
.global lbl_80190AE0
lbl_80190AE0:
	.incbin "baserom.dol", 0x18DAE0, 0x30
.global lbl_80190B10
lbl_80190B10:
	.incbin "baserom.dol", 0x18DB10, 0x30
.global lbl_80190B40
lbl_80190B40:
	.incbin "baserom.dol", 0x18DB40, 0x68
.global lbl_80190BA8
lbl_80190BA8:
	.incbin "baserom.dol", 0x18DBA8, 0x68
.global lbl_80190C10
lbl_80190C10:
	.incbin "baserom.dol", 0x18DC10, 0x68
.global lbl_80190C78
lbl_80190C78:
	.incbin "baserom.dol", 0x18DC78, 0x68
.global lbl_80190CE0
lbl_80190CE0:
	.incbin "baserom.dol", 0x18DCE0, 0x68
.global lbl_80190D48
lbl_80190D48:
	.incbin "baserom.dol", 0x18DD48, 0x68
.global lbl_80190DB0
lbl_80190DB0:
	.incbin "baserom.dol", 0x18DDB0, 0x68
.global lbl_80190E18
lbl_80190E18:
	.incbin "baserom.dol", 0x18DE18, 0x68
.global lbl_80190E80
lbl_80190E80:
	.incbin "baserom.dol", 0x18DE80, 0x68
.global lbl_80190EE8
lbl_80190EE8:
	.incbin "baserom.dol", 0x18DEE8, 0x68
.global lbl_80190F50
lbl_80190F50:
	.incbin "baserom.dol", 0x18DF50, 0x68
.global lbl_80190FB8
lbl_80190FB8:
	.incbin "baserom.dol", 0x18DFB8, 0x68
.global lbl_80191020
lbl_80191020:
	.incbin "baserom.dol", 0x18E020, 0x68
.global lbl_80191088
lbl_80191088:
	.incbin "baserom.dol", 0x18E088, 0x68
.global lbl_801910F0
lbl_801910F0:
	.incbin "baserom.dol", 0x18E0F0, 0x68
.global lbl_80191158
lbl_80191158:
	.incbin "baserom.dol", 0x18E158, 0x68
.global lbl_801911C0
lbl_801911C0:
	.incbin "baserom.dol", 0x18E1C0, 0x68
.global lbl_80191228
lbl_80191228:
	.incbin "baserom.dol", 0x18E228, 0x68
.global lbl_80191290
lbl_80191290:
	.incbin "baserom.dol", 0x18E290, 0x68
.global lbl_801912F8
lbl_801912F8:
	.incbin "baserom.dol", 0x18E2F8, 0x68
.global lbl_80191360
lbl_80191360:
	.incbin "baserom.dol", 0x18E360, 0x68
.global lbl_801913C8
lbl_801913C8:
	.incbin "baserom.dol", 0x18E3C8, 0x68
.global lbl_80191430
lbl_80191430:
	.incbin "baserom.dol", 0x18E430, 0x68

/* _vt$10CBanquetSE */
.global lbl_80191498
lbl_80191498:
	.long 0x00000000
	.long 0x00000000
	.long 0x00000000
	.long 0x800e48b8
	.long 0x00000000
	.long LoadAndInitialiseData__10CBanquetSE
	.long 0x00000000
	.long 0x80065cc4
	.long 0x00000000
	.long 0x8006798c
	.long 0x00000000
	.long 0x800664bc
	.long 0x00000000
	.long 0x80065e84
	.long 0x00000000
	.long 0x80067990
	.long 0x00000000
	.long 0x800674ac
	.long 0x00000000
	.long 0x80065dec
	.long 0x00000000
	.long 0x8006796c
	.long 0x00000000
	.long 0x00000000

/* _vt$unk */
.global lbl_801914F8
lbl_801914F8:
	.incbin "baserom.dol", 0x18E4F8, 0x60

/* _vt$8CBeachSE */
.global lbl_80191558
lbl_80191558:
	.long 0x00000000
	.long 0x00000000
	.long 0x00000000
	.long 0x800e4944
	.long 0x00000000
	.long LoadAndInitialiseData__8CBeachSE
	.long 0x00000000
	.long 0x80067bd4
	.long 0x00000000
	.long 0x80069778
	.long 0x00000000
	.long 0x80068fa8
	.long 0x00000000
	.long 0x80067e98
	.long 0x00000000
	.long 0x80068050
	.long 0x00000000
	.long 0x80069318
	.long 0x00000000
	.long 0x80067e00
	.long 0x00000000
	.long 0x800696ec
	.long 0x00000000
	.long 0x00000000

/* _vt$9CBoxingSE */
.global lbl_801915B8
lbl_801915B8:
	.long 0x00000000
	.long 0x00000000
	.long 0x00000000
	.long 0x800e4978
	.long 0x00000000
	.long LoadAndInitialiseData__9CBoxingSE
	.long 0x00000000
	.long 0x800697a8
	.long 0x00000000
	.long 0x80069c10
	.long 0x00000000
	.long 0x80069b44
	.long 0x00000000
	.long 0x800697f4
	.long 0x00000000
	.long 0x80069c14
	.long 0x00000000
	.long 0x80069c1c
	.long 0x00000000
	.long 0x80069c20
	.long 0x00000000
	.long 0x80069c24
	.long 0x00000000
	.long 0x00000000

/* _vt$8CCabinSE */
.global lbl_80191618
lbl_80191618:
	.long 0x00000000
	.long 0x00000000
	.long 0x00000000
	.long 0x800e49ac
	.long 0x00000000
	.long LoadAndInitialiseData__8CCabinSE
	.long 0x00000000
	.long 0x8006a2f0
	.long 0x00000000
	.long 0x8006a878
	.long 0x00000000
	.long 0x8006b1e8
	.long 0x00000000
	.long 0x8006ac60
	.long 0x00000000
	.long 0x8006c2d4
	.long 0x00000000
	.long 0x8006bb94
	.long 0x00000000
	.long 0x8006a14c
	.long 0x00000000
	.long 0x8006c2b0
	.long 0x00000000
	.long 0x00000000

/* _vt$10CHauntedSE */
.global lbl_80191678
lbl_80191678:
	.long 0x00000000
	.long 0x00000000
	.long 0x00000000
	.long 0x800e49fc
	.long 0x00000000
	.long LoadAndInitialiseData__10CHauntedSE
	.long 0x00000000
	.long 0x8006ce24
	.long 0x00000000
	.long 0x8006cf38
	.long 0x00000000
	.long 0x8006d150
	.long 0x00000000
	.long 0x8006d03c
	.long 0x00000000
	.long 0x8006d044
	.long 0x00000000
	.long 0x8006d9f8
	.long 0x00000000
	.long 0x8006cf6c
	.long 0x00000000
	.long 0x8006dc10
	.long 0x00000000
	.long 0x00000000

/* _vt$7CHellSE */
.global lbl_801916D8
lbl_801916D8:
	.long 0x00000000
	.long 0x00000000
	.long 0x00000000
	.long 0x800e4a4c
	.long 0x00000000
	.long LoadAndInitialiseData__7CHellSE
	.long 0x00000000
	.long 0x8006dc7c
	.long 0x00000000
	.long 0x8006e1a0
	.long 0x00000000
	.long 0x8006ddf0
	.long 0x00000000
	.long 0x8006e1a4
	.long 0x00000000
	.long 0x8006e1ac
	.long 0x00000000
	.long 0x8006e170
	.long 0x00000000
	.long 0x8006dcf8
	.long 0x00000000
	.long 0x8006e1b4
	.long 0x00000000
	.long 0x00000000

/* _vt$10CKitchenSE */
.global lbl_80191738
lbl_80191738:
	.long 0x00000000
	.long 0x00000000
	.long 0x00000000
	.long 0x800e4a80
	.long 0x00000000
	.long LoadAndInitialiseData__10CKitchenSE
	.long 0x00000000
	.long Reset__10CKitchenSE
	.long 0x00000000
	.long 0x8006e61c
	.long 0x00000000
	.long Process__10CKitchenSE
	.long 0x00000000
	.long TestLevelSpecificCollision__10CKitchenSEP10COL_SPHEREP5Vec3F
	.long 0x00000000
	.long TestIncidentalAICollision__10CKitchenSEP10COL_SPHEREP5Vec3F
	.long 0x00000000
	.long Render__10CKitchenSE
	.long 0x00000000
	.long SwitchOff__10CKitchenSE
	.long 0x00000000
	.long GetSpecialAIInfo__10CKitchenSEP21AI_AVOIDANCE_INSTANCEPUc
	.long 0x00000000
	.long 0x00000000

/* _vt$unk */
.global lbl_80191798
lbl_80191798:
	.long 0x00000000
	.long 0x00000000
	.long 0x00000000
	.long 0x800e4ad0
	.long 0x00000000
	.long LoadAndInitialiseData__6CLabSE
	.long 0x00000000
	.long 0x8006fb14
	.long 0x00000000
	.long 0x800701b8
	.long 0x00000000
	.long 0x8006fdc4
	.long 0x00000000
	.long 0x8006fbf4
	.long 0x00000000
	.long 0x800701bc
	.long 0x00000000
	.long 0x800700e4
	.long 0x00000000
	.long 0x800701c4
	.long 0x00000000
	.long 0x800701c8
	.long 0x00000000
	.long 0x00000000

/* _vt$9CMarketSE */
.global lbl_801917F8
lbl_801917F8:
	.long 0x00000000
	.long 0x00000000
	.long 0x00000000
	.long 0x800e4b04
	.long 0x00000000
	.long LoadAndInitialiseData__9CMarketSE
	.long 0x00000000
	.long 0x8007051c
	.long 0x00000000
	.long 0x80070670
	.long 0x00000000
	.long 0x80070ff0
	.long 0x00000000
	.long 0x8007282c
	.long 0x00000000
	.long 0x80072834
	.long 0x00000000
	.long 0x80072448
	.long 0x00000000
	.long 0x80070ab0
	.long 0x00000000
	.long 0x800724c8
	.long 0x00000000
	.long 0x00000000

/* _vt$8CScrapSE */
.global lbl_80191858
lbl_80191858:
	.long 0x00000000
	.long 0x00000000
	.long 0x00000000
	.long 0x800e4b5c
	.long 0x00000000
	.long LoadAndInitialiseData__8CScrapSE
	.long 0x00000000
	.long 0x80072b10
	.long 0x00000000
	.long 0x80072cb0
	.long 0x00000000
	.long 0x8007317c
	.long 0x00000000
	.long 0x80072d68
	.long 0x00000000
	.long 0x80073fe4
	.long 0x00000000
	.long 0x80073f58
	.long 0x00000000
	.long 0x80072ce4
	.long 0x00000000
	.long 0x80073fdc
	.long 0x00000000
	.long 0x00000000


/* _vt$7CShipSE */
.global lbl_801918B8
lbl_801918B8:
	.long 0x00000000
	.long 0x00000000
	.long 0x00000000
	.long 0x800e4bac
	.long 0x00000000
	.long LoadAndInitialiseData__7CShipSE
	.long 0x00000000
	.long 0x800745a0
	.long 0x00000000
	.long 0x80075ca8
	.long 0x00000000
	.long 0x80075144
	.long 0x00000000
	.long 0x80074920
	.long 0x00000000
	.long 0x80075cac
	.long 0x00000000
	.long 0x80075abc
	.long 0x00000000
	.long 0x800747f4
	.long 0x00000000
	.long 0x80075c80
	.long 0x00000000
	.long 0x00000000

/* _vt$13CSkyscraperSE */
.global lbl_80191918
lbl_80191918:
	.long 0x00000000
	.long 0x00000000
	.long 0x00000000
	.long 0x800e4be0
	.long 0x00000000
	.long LoadAndInitialiseData__13CSkyscraperSE
	.long 0x00000000
	.long 0x80075e70
	.long 0x00000000
	.long 0x80076028
	.long 0x00000000
	.long 0x80076dcc
	.long 0x00000000
	.long 0x80076190
	.long 0x00000000
	.long 0x800775ac
	.long 0x00000000
	.long 0x800774c8
	.long 0x00000000
	.long 0x8007605c
	.long 0x00000000
	.long 0x80077588
	.long 0x00000000
	.long 0x00000000

/* _vt$11CWildWestSE */
.global lbl_80191978
lbl_80191978:
	.long 0x00000000
	.long 0x00000000
	.long 0x00000000
	.long 0x800e4c30
	.long 0x00000000
	.long LoadAndInitialiseData__11CWildWestSE
	.long 0x00000000
	.long func_8007776C
	.long 0x00000000
	.long func_800779E0
	.long 0x00000000
	.long func_80077ED4
	.long 0x00000000
	.long func_80079634
	.long 0x00000000
	.long func_8007963C
	.long 0x00000000
	.long func_80078F90
	.long 0x00000000
	.long func_80077D08
	.long 0x00000000
	.long func_800795E8
	.long 0x00000000
	.long 0x00000000

.global lbl_801919D8
lbl_801919D8:
	.incbin "baserom.dol", 0x18E9D8, 0x20
.global lbl_801919F8
lbl_801919F8:
	.incbin "baserom.dol", 0x18E9F8, 0x20
.global lbl_80191A18
lbl_80191A18:
	.incbin "baserom.dol", 0x18EA18, 0x20
.global lbl_80191A38
lbl_80191A38:
	.incbin "baserom.dol", 0x18EA38, 0x20
.global lbl_80191A58
lbl_80191A58:
	.incbin "baserom.dol", 0x18EA58, 0x20
.global lbl_80191A78
lbl_80191A78:
	.incbin "baserom.dol", 0x18EA78, 0x20
.global lbl_80191A98
lbl_80191A98:
	.incbin "baserom.dol", 0x18EA98, 0x20
.global lbl_80191AB8
lbl_80191AB8:
	.incbin "baserom.dol", 0x18EAB8, 0x20
.global lbl_80191AD8
lbl_80191AD8:
	.incbin "baserom.dol", 0x18EAD8, 0x60
.global lbl_80191B38
lbl_80191B38:
	.incbin "baserom.dol", 0x18EB38, 0x40
.global lbl_80191B78
lbl_80191B78:
	.incbin "baserom.dol", 0x18EB78, 0x20
.global lbl_80191B98
lbl_80191B98:
	.incbin "baserom.dol", 0x18EB98, 0x60
.global lbl_80191BF8
lbl_80191BF8:
	.incbin "baserom.dol", 0x18EBF8, 0x100
.global lbl_80191CF8
lbl_80191CF8:
	.incbin "baserom.dol", 0x18ECF8, 0x18
.global lbl_80191D10
lbl_80191D10:
	.incbin "baserom.dol", 0x18ED10, 0x18
.global lbl_80191D28
lbl_80191D28:
	.incbin "baserom.dol", 0x18ED28, 0x80
.global lbl_80191DA8
lbl_80191DA8:
	.incbin "baserom.dol", 0x18EDA8, 0x18
.global lbl_80191DC0
lbl_80191DC0:
	.incbin "baserom.dol", 0x18EDC0, 0x20
.global lbl_80191DE0
lbl_80191DE0:
	.incbin "baserom.dol", 0x18EDE0, 0x48
.global lbl_80191E28
lbl_80191E28:
	.incbin "baserom.dol", 0x18EE28, 0x58
.global lbl_80191E80
lbl_80191E80:
	.incbin "baserom.dol", 0x18EE80, 0x70
.global lbl_80191EF0
lbl_80191EF0:
	.incbin "baserom.dol", 0x18EEF0, 0x28
.global lbl_80191F18
lbl_80191F18:
	.incbin "baserom.dol", 0x18EF18, 0x28
.global lbl_80191F40
lbl_80191F40:
	.incbin "baserom.dol", 0x18EF40, 0x28
.global lbl_80191F68
lbl_80191F68:
	.incbin "baserom.dol", 0x18EF68, 0x18
.global lbl_80191F80
lbl_80191F80:
	.incbin "baserom.dol", 0x18EF80, 0x18
.global lbl_80191F98
lbl_80191F98:
	.incbin "baserom.dol", 0x18EF98, 0x18
.global lbl_80191FB0
lbl_80191FB0:
	.incbin "baserom.dol", 0x18EFB0, 0x18
.global lbl_80191FC8
lbl_80191FC8:
	.incbin "baserom.dol", 0x18EFC8, 0x18
.global lbl_80191FE0
lbl_80191FE0:
	.incbin "baserom.dol", 0x18EFE0, 0x18
.global lbl_80191FF8
lbl_80191FF8:
	.incbin "baserom.dol", 0x18EFF8, 0x20
.global lbl_80192018
lbl_80192018:
	.incbin "baserom.dol", 0x18F018, 0x80
.global lbl_80192098
lbl_80192098:
	.incbin "baserom.dol", 0x18F098, 0x80
.global lbl_80192118
lbl_80192118:
	.incbin "baserom.dol", 0x18F118, 0x80
.global lbl_80192198
lbl_80192198:
	.incbin "baserom.dol", 0x18F198, 0x80
.global lbl_80192218
lbl_80192218:
	.incbin "baserom.dol", 0x18F218, 0x50
.global lbl_80192268
lbl_80192268:
	.incbin "baserom.dol", 0x18F268, 0x30
.global lbl_80192298
lbl_80192298:
	.incbin "baserom.dol", 0x18F298, 0x58
.global lbl_801922F0
lbl_801922F0:
	.incbin "baserom.dol", 0x18F2F0, 0x60
.global lbl_80192350
lbl_80192350:
	.incbin "baserom.dol", 0x18F350, 0x60
.global lbl_801923B0
lbl_801923B0:
	.incbin "baserom.dol", 0x18F3B0, 0x40
.global lbl_801923F0
lbl_801923F0:
	.incbin "baserom.dol", 0x18F3F0, 0x30
.global lbl_80192420
lbl_80192420:
	.incbin "baserom.dol", 0x18F420, 0x40
