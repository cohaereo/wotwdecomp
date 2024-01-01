.include "macros.inc"

.section .text

.global LoadAndInitialiseData__7CHellSE
LoadAndInitialiseData__7CHellSE:
/* 8006DC18 0006AC18  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8006DC1C 0006AC1C  7C 08 02 A6 */	mflr r0
/* 8006DC20 0006AC20  BF A1 00 0C */	stmw r29, 0xc(r1)
/* 8006DC24 0006AC24  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8006DC28 0006AC28  7C 7D 1B 78 */	mr r29, r3
/* 8006DC2C 0006AC2C  3F C0 80 1A */	lis r30, g_pGameGlob@ha
/* 8006DC30 0006AC30  80 7E 5B 44 */	lwz r3, g_pGameGlob@l(r30)
/* 8006DC34 0006AC34  3C 80 80 0F */	lis r4, lbl_800F6084@ha
/* 8006DC38 0006AC38  38 84 60 84 */	addi r4, r4, lbl_800F6084@l
/* 8006DC3C 0006AC3C  38 63 01 E0 */	addi r3, r3, 0x1e0
/* 8006DC40 0006AC40  48 04 90 89 */	bl PSR_ReturnGeometryFromID
/* 8006DC44 0006AC44  81 3E 5B 44 */	lwz r9, 0x5b44(r30)
/* 8006DC48 0006AC48  1D 63 00 9C */	mulli r11, r3, 0x9c
/* 8006DC4C 0006AC4C  3C 80 80 0F */	lis r4, lbl_800F608C@ha
/* 8006DC50 0006AC50  80 09 01 E8 */	lwz r0, 0x1e8(r9)
/* 8006DC54 0006AC54  38 7D 00 04 */	addi r3, r29, 4
/* 8006DC58 0006AC58  38 84 60 8C */	addi r4, r4, lbl_800F608C@l
/* 8006DC5C 0006AC5C  7C 00 5A 14 */	add r0, r0, r11
/* 8006DC60 0006AC60  90 1D 00 20 */	stw r0, 0x20(r29)
/* 8006DC64 0006AC64  4B F9 E6 B1 */	bl APP_LoadBAD__FP7PSR_BADPc
/* 8006DC68 0006AC68  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8006DC6C 0006AC6C  7C 08 03 A6 */	mtlr r0
/* 8006DC70 0006AC70  BB A1 00 0C */	lmw r29, 0xc(r1)
/* 8006DC74 0006AC74  38 21 00 18 */	addi r1, r1, 0x18
/* 8006DC78 0006AC78  4E 80 00 20 */	blr 
/* 8006DC7C 0006AC7C  80 03 00 08 */	lwz r0, 8(r3)
/* 8006DC80 0006AC80  39 40 00 00 */	li r10, 0
/* 8006DC84 0006AC84  81 03 00 14 */	lwz r8, 0x14(r3)
/* 8006DC88 0006AC88  7C 0A 00 00 */	cmpw r10, r0
/* 8006DC8C 0006AC8C  41 82 00 38 */	beq lbl_8006DCC4
/* 8006DC90 0006AC90  38 C3 00 18 */	addi r6, r3, 0x18
/* 8006DC94 0006AC94  38 E3 00 1C */	addi r7, r3, 0x1c
/* 8006DC98 0006AC98  38 A0 00 00 */	li r5, 0
lbl_8006DC9C:
/* 8006DC9C 0006AC9C  81 28 00 04 */	lwz r9, 4(r8)
/* 8006DCA0 0006ACA0  55 40 10 3A */	slwi r0, r10, 2
/* 8006DCA4 0006ACA4  39 6A 00 01 */	addi r11, r10, 1
/* 8006DCA8 0006ACA8  39 08 00 20 */	addi r8, r8, 0x20
/* 8006DCAC 0006ACAC  7D 26 01 2E */	stwx r9, r6, r0
/* 8006DCB0 0006ACB0  7C A7 51 AE */	stbx r5, r7, r10
/* 8006DCB4 0006ACB4  55 6A 06 3E */	clrlwi r10, r11, 0x18
/* 8006DCB8 0006ACB8  80 03 00 08 */	lwz r0, 8(r3)
/* 8006DCBC 0006ACBC  7C 0A 00 00 */	cmpw r10, r0
/* 8006DCC0 0006ACC0  40 82 FF DC */	bne lbl_8006DC9C
lbl_8006DCC4:
/* 8006DCC4 0006ACC4  39 60 00 00 */	li r11, 0
/* 8006DCC8 0006ACC8  39 43 00 24 */	addi r10, r3, 0x24
/* 8006DCCC 0006ACCC  38 E0 00 00 */	li r7, 0
/* 8006DCD0 0006ACD0  39 00 00 C7 */	li r8, 0xc7
lbl_8006DCD4:
/* 8006DCD4 0006ACD4  1C 0B 00 18 */	mulli r0, r11, 0x18
/* 8006DCD8 0006ACD8  39 2B 00 01 */	addi r9, r11, 1
/* 8006DCDC 0006ACDC  55 2B 06 3E */	clrlwi r11, r9, 0x18
/* 8006DCE0 0006ACE0  2C 0B 00 04 */	cmpwi r11, 4
/* 8006DCE4 0006ACE4  7D 23 02 14 */	add r9, r3, r0
/* 8006DCE8 0006ACE8  7C EA 01 2E */	stwx r7, r10, r0
/* 8006DCEC 0006ACEC  99 09 00 38 */	stb r8, 0x38(r9)
/* 8006DCF0 0006ACF0  40 82 FF E4 */	bne lbl_8006DCD4
/* 8006DCF4 0006ACF4  4E 80 00 20 */	blr 
/* 8006DCF8 0006ACF8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8006DCFC 0006ACFC  7C 08 02 A6 */	mflr r0
/* 8006DD00 0006AD00  BF 41 00 18 */	stmw r26, 0x18(r1)
/* 8006DD04 0006AD04  90 01 00 34 */	stw r0, 0x34(r1)
/* 8006DD08 0006AD08  7C 7D 1B 78 */	mr r29, r3
/* 8006DD0C 0006AD0C  3B C0 00 00 */	li r30, 0
/* 8006DD10 0006AD10  3F 80 80 1A */	lis r28, 0x801a
/* 8006DD14 0006AD14  3B 61 00 08 */	addi r27, r1, 8
/* 8006DD18 0006AD18  3B 40 00 C7 */	li r26, 0xc7
lbl_8006DD1C:
/* 8006DD1C 0006AD1C  1C 1E 00 18 */	mulli r0, r30, 0x18
/* 8006DD20 0006AD20  7F FD 02 14 */	add r31, r29, r0
/* 8006DD24 0006AD24  88 9F 00 38 */	lbz r4, 0x38(r31)
/* 8006DD28 0006AD28  2C 04 00 C7 */	cmpwi r4, 0xc7
/* 8006DD2C 0006AD2C  41 82 00 18 */	beq lbl_8006DD44
/* 8006DD30 0006AD30  81 3C 5B 44 */	lwz r9, 0x5b44(r28)
/* 8006DD34 0006AD34  3D 29 00 03 */	addis r9, r9, 3
/* 8006DD38 0006AD38  80 69 D8 78 */	lwz r3, -0x2788(r9)
/* 8006DD3C 0006AD3C  4B FB D6 41 */	bl RemoveControlPoint__7CCameraUc
/* 8006DD40 0006AD40  9B 5F 00 38 */	stb r26, 0x38(r31)
lbl_8006DD44:
/* 8006DD44 0006AD44  38 1E 00 01 */	addi r0, r30, 1
/* 8006DD48 0006AD48  54 1E 06 3E */	clrlwi r30, r0, 0x18
/* 8006DD4C 0006AD4C  2C 1E 00 04 */	cmpwi r30, 4
/* 8006DD50 0006AD50  40 82 FF CC */	bne lbl_8006DD1C
/* 8006DD54 0006AD54  7F 63 DB 78 */	mr r3, r27
/* 8006DD58 0006AD58  38 80 00 00 */	li r4, 0
/* 8006DD5C 0006AD5C  38 A0 00 0C */	li r5, 0xc
/* 8006DD60 0006AD60  3B E0 00 00 */	li r31, 0
/* 8006DD64 0006AD64  4C C6 31 82 */	crclr 6
/* 8006DD68 0006AD68  48 01 4B 0D */	bl memset
/* 8006DD6C 0006AD6C  3D 20 80 1A */	lis r9, g_pGameGlob@ha
/* 8006DD70 0006AD70  81 69 5B 44 */	lwz r11, g_pGameGlob@l(r9)
/* 8006DD74 0006AD74  3D 6B 00 03 */	addis r11, r11, 3
/* 8006DD78 0006AD78  88 0B D8 74 */	lbz r0, -0x278c(r11)
/* 8006DD7C 0006AD7C  7C 1F 00 40 */	cmplw r31, r0
/* 8006DD80 0006AD80  40 80 00 5C */	bge lbl_8006DDDC
/* 8006DD84 0006AD84  3B C0 00 00 */	li r30, 0
/* 8006DD88 0006AD88  3F A0 80 0F */	lis r29, 0x800f
/* 8006DD8C 0006AD8C  63 DE B4 00 */	ori r30, r30, 0xb400
lbl_8006DD90:
/* 8006DD90 0006AD90  7C 7F F1 D6 */	mullw r3, r31, r30
/* 8006DD94 0006AD94  81 7C 5B 44 */	lwz r11, 0x5b44(r28)
/* 8006DD98 0006AD98  7D 2B 1A 14 */	add r9, r11, r3
/* 8006DD9C 0006AD9C  3D 29 00 01 */	addis r9, r9, 1
/* 8006DDA0 0006ADA0  80 09 B8 A8 */	lwz r0, -0x4758(r9)
/* 8006DDA4 0006ADA4  2C 00 00 00 */	cmpwi r0, 0
/* 8006DDA8 0006ADA8  41 82 00 18 */	beq lbl_8006DDC0
/* 8006DDAC 0006ADAC  38 63 05 20 */	addi r3, r3, 0x520
/* 8006DDB0 0006ADB0  C0 3D 60 A0 */	lfs f1, 0x60a0(r29)
/* 8006DDB4 0006ADB4  7C 6B 1A 14 */	add r3, r11, r3
/* 8006DDB8 0006ADB8  38 81 00 08 */	addi r4, r1, 8
/* 8006DDBC 0006ADBC  4B FD 5A 59 */	bl TornadoRelease__7CPlayerP5Vec3Ff
lbl_8006DDC0:
/* 8006DDC0 0006ADC0  81 3C 5B 44 */	lwz r9, 0x5b44(r28)
/* 8006DDC4 0006ADC4  38 1F 00 01 */	addi r0, r31, 1
/* 8006DDC8 0006ADC8  54 1F 06 3E */	clrlwi r31, r0, 0x18
/* 8006DDCC 0006ADCC  3D 29 00 03 */	addis r9, r9, 3
/* 8006DDD0 0006ADD0  88 09 D8 74 */	lbz r0, -0x278c(r9)
/* 8006DDD4 0006ADD4  7C 1F 00 40 */	cmplw r31, r0
/* 8006DDD8 0006ADD8  41 80 FF B8 */	blt lbl_8006DD90
lbl_8006DDDC:
/* 8006DDDC 0006ADDC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8006DDE0 0006ADE0  7C 08 03 A6 */	mtlr r0
/* 8006DDE4 0006ADE4  BB 41 00 18 */	lmw r26, 0x18(r1)
/* 8006DDE8 0006ADE8  38 21 00 30 */	addi r1, r1, 0x30
/* 8006DDEC 0006ADEC  4E 80 00 20 */	blr 
/* 8006DDF0 0006ADF0  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 8006DDF4 0006ADF4  7C 08 02 A6 */	mflr r0
/* 8006DDF8 0006ADF8  DB 61 00 68 */	stfd f27, 0x68(r1)
/* 8006DDFC 0006ADFC  DB 81 00 70 */	stfd f28, 0x70(r1)
/* 8006DE00 0006AE00  DB A1 00 78 */	stfd f29, 0x78(r1)
/* 8006DE04 0006AE04  DB C1 00 80 */	stfd f30, 0x80(r1)
/* 8006DE08 0006AE08  DB E1 00 88 */	stfd f31, 0x88(r1)
/* 8006DE0C 0006AE0C  BE 21 00 2C */	stmw r17, 0x2c(r1)
/* 8006DE10 0006AE10  90 01 00 94 */	stw r0, 0x94(r1)
/* 8006DE14 0006AE14  7C 7A 1B 78 */	mr r26, r3
/* 8006DE18 0006AE18  3B C0 00 00 */	li r30, 0
/* 8006DE1C 0006AE1C  80 1A 00 08 */	lwz r0, 8(r26)
/* 8006DE20 0006AE20  3F 00 80 1A */	lis r24, 0x801a
/* 8006DE24 0006AE24  83 BA 00 14 */	lwz r29, 0x14(r26)
/* 8006DE28 0006AE28  7C 1E 00 00 */	cmpw r30, r0
/* 8006DE2C 0006AE2C  41 82 00 7C */	beq lbl_8006DEA8
/* 8006DE30 0006AE30  3B 9A 00 18 */	addi r28, r26, 0x18
/* 8006DE34 0006AE34  3B 7A 00 1C */	addi r27, r26, 0x1c
/* 8006DE38 0006AE38  3B 20 00 00 */	li r25, 0
lbl_8006DE3C:
/* 8006DE3C 0006AE3C  80 78 5B 44 */	lwz r3, 0x5b44(r24)
/* 8006DE40 0006AE40  57 DF 10 3A */	slwi r31, r30, 2
/* 8006DE44 0006AE44  7C BC F8 2E */	lwzx r5, r28, r31
/* 8006DE48 0006AE48  7F A4 EB 78 */	mr r4, r29
/* 8006DE4C 0006AE4C  38 63 01 E0 */	addi r3, r3, 0x1e0
/* 8006DE50 0006AE50  48 04 08 A5 */	bl func_800AE6F4
/* 8006DE54 0006AE54  7D 3B F0 AE */	lbzx r9, r27, r30
/* 8006DE58 0006AE58  39 7E 00 01 */	addi r11, r30, 1
/* 8006DE5C 0006AE5C  39 29 00 01 */	addi r9, r9, 1
/* 8006DE60 0006AE60  55 20 06 3E */	clrlwi r0, r9, 0x18
/* 8006DE64 0006AE64  7D 3B F1 AE */	stbx r9, r27, r30
/* 8006DE68 0006AE68  2C 00 00 02 */	cmpwi r0, 2
/* 8006DE6C 0006AE6C  40 82 00 28 */	bne lbl_8006DE94
/* 8006DE70 0006AE70  7F 3B F1 AE */	stbx r25, r27, r30
/* 8006DE74 0006AE74  7D 3C F8 2E */	lwzx r9, r28, r31
/* 8006DE78 0006AE78  39 29 00 01 */	addi r9, r9, 1
/* 8006DE7C 0006AE7C  7D 3C F9 2E */	stwx r9, r28, r31
/* 8006DE80 0006AE80  80 1D 00 08 */	lwz r0, 8(r29)
/* 8006DE84 0006AE84  7C 09 00 00 */	cmpw r9, r0
/* 8006DE88 0006AE88  40 82 00 0C */	bne lbl_8006DE94
/* 8006DE8C 0006AE8C  80 1D 00 04 */	lwz r0, 4(r29)
/* 8006DE90 0006AE90  7C 1C F9 2E */	stwx r0, r28, r31
lbl_8006DE94:
/* 8006DE94 0006AE94  80 1A 00 08 */	lwz r0, 8(r26)
/* 8006DE98 0006AE98  55 7E 06 3E */	clrlwi r30, r11, 0x18
/* 8006DE9C 0006AE9C  3B BD 00 20 */	addi r29, r29, 0x20
/* 8006DEA0 0006AEA0  7C 1E 00 00 */	cmpw r30, r0
/* 8006DEA4 0006AEA4  40 82 FF 98 */	bne lbl_8006DE3C
lbl_8006DEA8:
/* 8006DEA8 0006AEA8  3D 20 80 0F */	lis r9, lbl_800F60B4@ha
/* 8006DEAC 0006AEAC  3A 80 00 00 */	li r20, 0
/* 8006DEB0 0006AEB0  3A E0 00 00 */	li r23, 0
/* 8006DEB4 0006AEB4  C3 69 60 B4 */	lfs f27, lbl_800F60B4@l(r9)
/* 8006DEB8 0006AEB8  3B 60 00 00 */	li r27, 0
/* 8006DEBC 0006AEBC  62 94 B4 00 */	ori r20, r20, 0xb400
/* 8006DEC0 0006AEC0  62 F7 B4 00 */	ori r23, r23, 0xb400
lbl_8006DEC4:
/* 8006DEC4 0006AEC4  7C 7B A1 D6 */	mullw r3, r27, r20
/* 8006DEC8 0006AEC8  81 78 5B 44 */	lwz r11, 0x5b44(r24)
/* 8006DECC 0006AECC  3A 5B 00 01 */	addi r18, r27, 1
/* 8006DED0 0006AED0  7D 2B 1A 14 */	add r9, r11, r3
/* 8006DED4 0006AED4  3D 29 00 01 */	addis r9, r9, 1
/* 8006DED8 0006AED8  80 09 B8 A8 */	lwz r0, -0x4758(r9)
/* 8006DEDC 0006AEDC  2C 00 00 00 */	cmpwi r0, 0
/* 8006DEE0 0006AEE0  41 82 02 5C */	beq lbl_8006E13C
/* 8006DEE4 0006AEE4  1F DB 00 18 */	mulli r30, r27, 0x18
/* 8006DEE8 0006AEE8  3B BA 00 24 */	addi r29, r26, 0x24
/* 8006DEEC 0006AEEC  7F B3 EB 78 */	mr r19, r29
/* 8006DEF0 0006AEF0  7C 1D F0 2E */	lwzx r0, r29, r30
/* 8006DEF4 0006AEF4  7F D5 F3 78 */	mr r21, r30
/* 8006DEF8 0006AEF8  2C 00 00 00 */	cmpwi r0, 0
/* 8006DEFC 0006AEFC  41 82 01 B0 */	beq lbl_8006E0AC
/* 8006DF00 0006AF00  7D 3A F2 14 */	add r9, r26, r30
/* 8006DF04 0006AF04  89 69 00 28 */	lbz r11, 0x28(r9)
/* 8006DF08 0006AF08  39 6B FF FF */	addi r11, r11, -1
/* 8006DF0C 0006AF0C  55 60 06 3E */	clrlwi r0, r11, 0x18
/* 8006DF10 0006AF10  99 69 00 28 */	stb r11, 0x28(r9)
/* 8006DF14 0006AF14  2C 00 00 00 */	cmpwi r0, 0
/* 8006DF18 0006AF18  40 82 02 24 */	bne lbl_8006E13C
/* 8006DF1C 0006AF1C  7E DB B9 D6 */	mullw r22, r27, r23
/* 8006DF20 0006AF20  3D 20 80 0F */	lis r9, lbl_800F60A4@ha
/* 8006DF24 0006AF24  3D 60 80 0F */	lis r11, lbl_800F60A8@ha
/* 8006DF28 0006AF28  C3 A9 60 A4 */	lfs f29, lbl_800F60A4@l(r9)
/* 8006DF2C 0006AF2C  C3 8B 60 A8 */	lfs f28, lbl_800F60A8@l(r11)
/* 8006DF30 0006AF30  3B 80 00 00 */	li r28, 0
/* 8006DF34 0006AF34  3E 20 80 0F */	lis r17, 0x800f
/* 8006DF38 0006AF38  3B E1 00 08 */	addi r31, r1, 8
lbl_8006DF3C:
/* 8006DF3C 0006AF3C  2C 1C 00 02 */	cmpwi r28, 2
/* 8006DF40 0006AF40  41 82 00 30 */	beq lbl_8006DF70
/* 8006DF44 0006AF44  81 38 5B 44 */	lwz r9, 0x5b44(r24)
/* 8006DF48 0006AF48  57 80 10 3A */	slwi r0, r28, 2
/* 8006DF4C 0006AF4C  39 29 04 BC */	addi r9, r9, 0x4bc
/* 8006DF50 0006AF50  7D 69 00 2E */	lwzx r11, r9, r0
/* 8006DF54 0006AF54  81 4B 00 00 */	lwz r10, 0(r11)
/* 8006DF58 0006AF58  81 2B 00 08 */	lwz r9, 8(r11)
/* 8006DF5C 0006AF5C  80 0B 00 04 */	lwz r0, 4(r11)
/* 8006DF60 0006AF60  91 41 00 08 */	stw r10, 8(r1)
/* 8006DF64 0006AF64  90 1F 00 04 */	stw r0, 4(r31)
/* 8006DF68 0006AF68  91 3F 00 08 */	stw r9, 8(r31)
/* 8006DF6C 0006AF6C  48 00 00 10 */	b lbl_8006DF7C
lbl_8006DF70:
/* 8006DF70 0006AF70  D3 A1 00 08 */	stfs f29, 8(r1)
/* 8006DF74 0006AF74  D3 81 00 0C */	stfs f28, 0xc(r1)
/* 8006DF78 0006AF78  D3 A1 00 10 */	stfs f29, 0x10(r1)
lbl_8006DF7C:
/* 8006DF7C 0006AF7C  81 38 5B 44 */	lwz r9, 0x5b44(r24)
/* 8006DF80 0006AF80  3B C0 00 00 */	li r30, 0
/* 8006DF84 0006AF84  3B 20 00 01 */	li r25, 1
/* 8006DF88 0006AF88  7D 29 B2 14 */	add r9, r9, r22
/* 8006DF8C 0006AF8C  3D 29 00 01 */	addis r9, r9, 1
/* 8006DF90 0006AF90  88 09 B8 B2 */	lbz r0, -0x474e(r9)
/* 8006DF94 0006AF94  7C 1E 00 40 */	cmplw r30, r0
/* 8006DF98 0006AF98  40 80 00 AC */	bge lbl_8006E044
/* 8006DF9C 0006AF9C  7F BB B9 D6 */	mullw r29, r27, r23
/* 8006DFA0 0006AFA0  3D 20 80 0F */	lis r9, lbl_800F60AC@ha
/* 8006DFA4 0006AFA4  3D 60 80 0F */	lis r11, lbl_800F60B0@ha
/* 8006DFA8 0006AFA8  C3 C9 60 AC */	lfs f30, lbl_800F60AC@l(r9)
/* 8006DFAC 0006AFAC  C3 EB 60 B0 */	lfs f31, lbl_800F60B0@l(r11)
lbl_8006DFB0:
/* 8006DFB0 0006AFB0  81 78 5B 44 */	lwz r11, 0x5b44(r24)
/* 8006DFB4 0006AFB4  57 C0 10 3A */	slwi r0, r30, 2
/* 8006DFB8 0006AFB8  7C 00 EA 14 */	add r0, r0, r29
/* 8006DFBC 0006AFBC  C1 A1 00 08 */	lfs f13, 8(r1)
/* 8006DFC0 0006AFC0  3D 6B 00 01 */	addis r11, r11, 1
/* 8006DFC4 0006AFC4  C1 81 00 0C */	lfs f12, 0xc(r1)
/* 8006DFC8 0006AFC8  39 6B B8 B4 */	addi r11, r11, -18252
/* 8006DFCC 0006AFCC  C1 61 00 10 */	lfs f11, 0x10(r1)
/* 8006DFD0 0006AFD0  7D 2B 00 2E */	lwzx r9, r11, r0
/* 8006DFD4 0006AFD4  38 61 00 18 */	addi r3, r1, 0x18
/* 8006DFD8 0006AFD8  3D 29 00 01 */	addis r9, r9, 1
/* 8006DFDC 0006AFDC  C0 09 B2 F4 */	lfs f0, -0x4d0c(r9)
/* 8006DFE0 0006AFE0  ED AD 00 28 */	fsubs f13, f13, f0
/* 8006DFE4 0006AFE4  D1 A1 00 18 */	stfs f13, 0x18(r1)
/* 8006DFE8 0006AFE8  7D 2B 00 2E */	lwzx r9, r11, r0
/* 8006DFEC 0006AFEC  3D 29 00 01 */	addis r9, r9, 1
/* 8006DFF0 0006AFF0  C0 09 B2 F8 */	lfs f0, -0x4d08(r9)
/* 8006DFF4 0006AFF4  ED 8C 00 28 */	fsubs f12, f12, f0
/* 8006DFF8 0006AFF8  D1 81 00 1C */	stfs f12, 0x1c(r1)
/* 8006DFFC 0006AFFC  7D 2B 00 2E */	lwzx r9, r11, r0
/* 8006E000 0006B000  3D 29 00 01 */	addis r9, r9, 1
/* 8006E004 0006B004  C0 09 B2 FC */	lfs f0, -0x4d04(r9)
/* 8006E008 0006B008  D3 C1 00 1C */	stfs f30, 0x1c(r1)
/* 8006E00C 0006B00C  ED 6B 00 28 */	fsubs f11, f11, f0
/* 8006E010 0006B010  D1 61 00 20 */	stfs f11, 0x20(r1)
/* 8006E014 0006B014  4B F9 57 AD */	bl MATHS_VectorMagnitude__FP5Vec3F
/* 8006E018 0006B018  38 1E 00 01 */	addi r0, r30, 1
/* 8006E01C 0006B01C  FC 01 F8 00 */	fcmpu cr0, f1, f31
/* 8006E020 0006B020  54 1E 06 3E */	clrlwi r30, r0, 0x18
/* 8006E024 0006B024  40 80 00 08 */	bge lbl_8006E02C
/* 8006E028 0006B028  3B 20 00 00 */	li r25, 0
lbl_8006E02C:
/* 8006E02C 0006B02C  81 38 5B 44 */	lwz r9, 0x5b44(r24)
/* 8006E030 0006B030  7D 29 EA 14 */	add r9, r9, r29
/* 8006E034 0006B034  3D 29 00 01 */	addis r9, r9, 1
/* 8006E038 0006B038  88 09 B8 B2 */	lbz r0, -0x474e(r9)
/* 8006E03C 0006B03C  7C 1E 00 40 */	cmplw r30, r0
/* 8006E040 0006B040  41 80 FF 70 */	blt lbl_8006DFB0
lbl_8006E044:
/* 8006E044 0006B044  2C 19 00 00 */	cmpwi r25, 0
/* 8006E048 0006B048  41 82 00 14 */	beq lbl_8006E05C
/* 8006E04C 0006B04C  38 1C 00 01 */	addi r0, r28, 1
/* 8006E050 0006B050  54 1C 06 3E */	clrlwi r28, r0, 0x18
/* 8006E054 0006B054  2C 1C 00 03 */	cmpwi r28, 3
/* 8006E058 0006B058  40 82 FE E4 */	bne lbl_8006DF3C
lbl_8006E05C:
/* 8006E05C 0006B05C  7F FA AA 14 */	add r31, r26, r21
/* 8006E060 0006B060  88 9F 00 38 */	lbz r4, 0x38(r31)
/* 8006E064 0006B064  2C 04 00 C7 */	cmpwi r4, 0xc7
/* 8006E068 0006B068  41 82 00 1C */	beq lbl_8006E084
/* 8006E06C 0006B06C  81 38 5B 44 */	lwz r9, 0x5b44(r24)
/* 8006E070 0006B070  3D 29 00 03 */	addis r9, r9, 3
/* 8006E074 0006B074  80 69 D8 78 */	lwz r3, -0x2788(r9)
/* 8006E078 0006B078  4B FB D3 05 */	bl RemoveControlPoint__7CCameraUc
/* 8006E07C 0006B07C  38 00 00 C7 */	li r0, 0xc7
/* 8006E080 0006B080  98 1F 00 38 */	stb r0, 0x38(r31)
lbl_8006E084:
/* 8006E084 0006B084  7C 7B A1 D6 */	mullw r3, r27, r20
/* 8006E088 0006B088  80 18 5B 44 */	lwz r0, 0x5b44(r24)
/* 8006E08C 0006B08C  C0 31 60 AC */	lfs f1, 0x60ac(r17)
/* 8006E090 0006B090  38 81 00 08 */	addi r4, r1, 8
/* 8006E094 0006B094  38 63 05 20 */	addi r3, r3, 0x520
/* 8006E098 0006B098  7C 60 1A 14 */	add r3, r0, r3
/* 8006E09C 0006B09C  4B FD 57 79 */	bl TornadoRelease__7CPlayerP5Vec3Ff
/* 8006E0A0 0006B0A0  38 00 00 00 */	li r0, 0
/* 8006E0A4 0006B0A4  7C 13 A9 2E */	stwx r0, r19, r21
/* 8006E0A8 0006B0A8  48 00 00 94 */	b lbl_8006E13C
lbl_8006E0AC:
/* 8006E0AC 0006B0AC  C0 09 B8 18 */	lfs f0, -0x47e8(r9)
/* 8006E0B0 0006B0B0  FC 00 D8 00 */	fcmpu cr0, f0, f27
/* 8006E0B4 0006B0B4  40 80 00 88 */	bge lbl_8006E13C
/* 8006E0B8 0006B0B8  38 63 05 20 */	addi r3, r3, 0x520
/* 8006E0BC 0006B0BC  7F FA F2 14 */	add r31, r26, r30
/* 8006E0C0 0006B0C0  7C 6B 1A 14 */	add r3, r11, r3
/* 8006E0C4 0006B0C4  4B FD 55 95 */	bl TornadoHasControl__7CPlayer
/* 8006E0C8 0006B0C8  3D 20 80 10 */	lis r9, lbl_800FC960@ha
/* 8006E0CC 0006B0CC  57 6A 10 3A */	slwi r10, r27, 2
/* 8006E0D0 0006B0D0  80 09 C9 60 */	lwz r0, lbl_800FC960@l(r9)
/* 8006E0D4 0006B0D4  39 1F 00 2C */	addi r8, r31, 0x2c
/* 8006E0D8 0006B0D8  7C 00 02 14 */	add r0, r0, r0
/* 8006E0DC 0006B0DC  98 1F 00 28 */	stb r0, 0x28(r31)
/* 8006E0E0 0006B0E0  80 F8 5B 44 */	lwz r7, 0x5b44(r24)
/* 8006E0E4 0006B0E4  39 27 04 BC */	addi r9, r7, 0x4bc
/* 8006E0E8 0006B0E8  7D 69 50 2E */	lwzx r11, r9, r10
/* 8006E0EC 0006B0EC  80 0B 00 00 */	lwz r0, 0(r11)
/* 8006E0F0 0006B0F0  81 2B 00 08 */	lwz r9, 8(r11)
/* 8006E0F4 0006B0F4  81 4B 00 04 */	lwz r10, 4(r11)
/* 8006E0F8 0006B0F8  90 1F 00 2C */	stw r0, 0x2c(r31)
/* 8006E0FC 0006B0FC  91 28 00 08 */	stw r9, 8(r8)
/* 8006E100 0006B100  91 48 00 04 */	stw r10, 4(r8)
/* 8006E104 0006B104  88 1F 00 38 */	lbz r0, 0x38(r31)
/* 8006E108 0006B108  2C 00 00 C7 */	cmpwi r0, 0xc7
/* 8006E10C 0006B10C  40 82 00 28 */	bne lbl_8006E134
/* 8006E110 0006B110  3D 27 00 03 */	addis r9, r7, 3
/* 8006E114 0006B114  7C 9E D2 14 */	add r4, r30, r26
/* 8006E118 0006B118  38 84 00 2C */	addi r4, r4, 0x2c
/* 8006E11C 0006B11C  80 69 D8 78 */	lwz r3, -0x2788(r9)
/* 8006E120 0006B120  38 C0 00 01 */	li r6, 1
/* 8006E124 0006B124  7C 85 23 78 */	mr r5, r4
/* 8006E128 0006B128  38 E0 00 00 */	li r7, 0
/* 8006E12C 0006B12C  4B FB D1 BD */	bl AddControlPoint__7CCameraP5Vec3FT1b
/* 8006E130 0006B130  98 7F 00 38 */	stb r3, 0x38(r31)
lbl_8006E134:
/* 8006E134 0006B134  38 00 00 01 */	li r0, 1
/* 8006E138 0006B138  7C 1D F1 2E */	stwx r0, r29, r30
lbl_8006E13C:
/* 8006E13C 0006B13C  56 5B 06 3E */	clrlwi r27, r18, 0x18
/* 8006E140 0006B140  2C 1B 00 04 */	cmpwi r27, 4
/* 8006E144 0006B144  40 82 FD 80 */	bne lbl_8006DEC4
/* 8006E148 0006B148  80 01 00 94 */	lwz r0, 0x94(r1)
/* 8006E14C 0006B14C  7C 08 03 A6 */	mtlr r0
/* 8006E150 0006B150  BA 21 00 2C */	lmw r17, 0x2c(r1)
/* 8006E154 0006B154  CB 61 00 68 */	lfd f27, 0x68(r1)
/* 8006E158 0006B158  CB 81 00 70 */	lfd f28, 0x70(r1)
/* 8006E15C 0006B15C  CB A1 00 78 */	lfd f29, 0x78(r1)
/* 8006E160 0006B160  CB C1 00 80 */	lfd f30, 0x80(r1)
/* 8006E164 0006B164  CB E1 00 88 */	lfd f31, 0x88(r1)
/* 8006E168 0006B168  38 21 00 90 */	addi r1, r1, 0x90
/* 8006E16C 0006B16C  4E 80 00 20 */	blr 
/* 8006E170 0006B170  94 21 FF F8 */	stwu r1, -8(r1)
/* 8006E174 0006B174  7C 08 02 A6 */	mflr r0
/* 8006E178 0006B178  90 01 00 0C */	stw r0, 0xc(r1)
/* 8006E17C 0006B17C  80 83 00 20 */	lwz r4, 0x20(r3)
/* 8006E180 0006B180  3D 20 80 1A */	lis r9, g_pGameGlob@ha
/* 8006E184 0006B184  80 69 5B 44 */	lwz r3, g_pGameGlob@l(r9)
/* 8006E188 0006B188  38 63 01 E0 */	addi r3, r3, 0x1e0
/* 8006E18C 0006B18C  48 04 A9 DD */	bl PSR_ClipAndAddObjectToRenderList
/* 8006E190 0006B190  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8006E194 0006B194  7C 08 03 A6 */	mtlr r0
/* 8006E198 0006B198  38 21 00 08 */	addi r1, r1, 8
/* 8006E19C 0006B19C  4E 80 00 20 */	blr 
/* 8006E1A0 0006B1A0  4E 80 00 20 */	blr 
/* 8006E1A4 0006B1A4  38 60 00 00 */	li r3, 0
/* 8006E1A8 0006B1A8  4E 80 00 20 */	blr 
/* 8006E1AC 0006B1AC  38 60 00 00 */	li r3, 0
/* 8006E1B0 0006B1B0  4E 80 00 20 */	blr 
/* 8006E1B4 0006B1B4  38 60 00 00 */	li r3, 0
/* 8006E1B8 0006B1B8  4E 80 00 20 */	blr 
