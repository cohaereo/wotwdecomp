.include "macros.inc"

.section .text

.global LoadAndInitialiseData__9CBoxingSE
LoadAndInitialiseData__9CBoxingSE:
/* 8006977C 0006677C  94 21 FF F8 */	stwu r1, -8(r1)
/* 80069780 00066780  7C 08 02 A6 */	mflr r0
/* 80069784 00066784  90 01 00 0C */	stw r0, 0xc(r1)
/* 80069788 00066788  3C 80 80 0F */	lis r4, lbl_800F5C94@ha
/* 8006978C 0006678C  38 63 00 04 */	addi r3, r3, 4
/* 80069790 00066790  38 84 5C 94 */	addi r4, r4, lbl_800F5C94@l
/* 80069794 00066794  4B FA 2B 81 */	bl APP_LoadBAD__FP7PSR_BADPc
/* 80069798 00066798  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8006979C 0006679C  7C 08 03 A6 */	mtlr r0
/* 800697A0 000667A0  38 21 00 08 */	addi r1, r1, 8
/* 800697A4 000667A4  4E 80 00 20 */	blr 
/* 800697A8 000667A8  80 03 00 08 */	lwz r0, 8(r3)
/* 800697AC 000667AC  39 40 00 00 */	li r10, 0
/* 800697B0 000667B0  81 03 00 14 */	lwz r8, 0x14(r3)
/* 800697B4 000667B4  7C 0A 00 00 */	cmpw r10, r0
/* 800697B8 000667B8  4D 82 00 20 */	beqlr 
/* 800697BC 000667BC  38 C3 00 18 */	addi r6, r3, 0x18
/* 800697C0 000667C0  38 E3 00 28 */	addi r7, r3, 0x28
/* 800697C4 000667C4  38 A0 00 00 */	li r5, 0
lbl_800697C8:
/* 800697C8 000667C8  81 68 00 04 */	lwz r11, 4(r8)
/* 800697CC 000667CC  55 49 10 3A */	slwi r9, r10, 2
/* 800697D0 000667D0  38 0A 00 01 */	addi r0, r10, 1
/* 800697D4 000667D4  39 08 00 20 */	addi r8, r8, 0x20
/* 800697D8 000667D8  7D 66 49 2E */	stwx r11, r6, r9
/* 800697DC 000667DC  54 0A 06 3E */	clrlwi r10, r0, 0x18
/* 800697E0 000667E0  7C A7 49 2E */	stwx r5, r7, r9
/* 800697E4 000667E4  80 03 00 08 */	lwz r0, 8(r3)
/* 800697E8 000667E8  7C 0A 00 00 */	cmpw r10, r0
/* 800697EC 000667EC  40 82 FF DC */	bne lbl_800697C8
/* 800697F0 000667F0  4E 80 00 20 */	blr 
/* 800697F4 000667F4  94 21 FF A8 */	stwu r1, -0x58(r1)
/* 800697F8 000667F8  7C 08 02 A6 */	mflr r0
/* 800697FC 000667FC  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80069800 00066800  BF A1 00 44 */	stmw r29, 0x44(r1)
/* 80069804 00066804  90 01 00 5C */	stw r0, 0x5c(r1)
/* 80069808 00066808  7C 9F 23 78 */	mr r31, r4
/* 8006980C 0006680C  38 E1 00 08 */	addi r7, r1, 8
/* 80069810 00066810  81 7F 00 08 */	lwz r11, 8(r31)
/* 80069814 00066814  39 3F 00 08 */	addi r9, r31, 8
/* 80069818 00066818  C0 FF 00 04 */	lfs f7, 4(r31)
/* 8006981C 0006681C  3D 00 80 0F */	lis r8, lbl_800F5CAC@ha
/* 80069820 00066820  81 49 00 08 */	lwz r10, 8(r9)
/* 80069824 00066824  80 09 00 04 */	lwz r0, 4(r9)
/* 80069828 00066828  91 61 00 08 */	stw r11, 8(r1)
/* 8006982C 0006682C  90 07 00 04 */	stw r0, 4(r7)
/* 80069830 00066830  91 47 00 08 */	stw r10, 8(r7)
/* 80069834 00066834  C1 28 5C AC */	lfs f9, lbl_800F5CAC@l(r8)
/* 80069838 00066838  C1 65 00 04 */	lfs f11, 4(r5)
/* 8006983C 0006683C  C1 81 00 0C */	lfs f12, 0xc(r1)
/* 80069840 00066840  C1 45 00 00 */	lfs f10, 0(r5)
/* 80069844 00066844  ED 8C 58 2A */	fadds f12, f12, f11
/* 80069848 00066848  C0 01 00 08 */	lfs f0, 8(r1)
/* 8006984C 0006684C  C1 65 00 08 */	lfs f11, 8(r5)
/* 80069850 00066850  ED 0C 38 28 */	fsubs f8, f12, f7
/* 80069854 00066854  C1 A1 00 10 */	lfs f13, 0x10(r1)
/* 80069858 00066858  EC 00 50 2A */	fadds f0, f0, f10
/* 8006985C 0006685C  D0 01 00 08 */	stfs f0, 8(r1)
/* 80069860 00066860  FC 08 48 00 */	fcmpu cr0, f8, f9
/* 80069864 00066864  ED AD 58 2A */	fadds f13, f13, f11
/* 80069868 00066868  D1 81 00 0C */	stfs f12, 0xc(r1)
/* 8006986C 0006686C  D1 A1 00 10 */	stfs f13, 0x10(r1)
/* 80069870 00066870  41 81 02 B8 */	bgt lbl_80069B28
/* 80069874 00066874  81 41 00 08 */	lwz r10, 8(r1)
/* 80069878 00066878  39 21 00 18 */	addi r9, r1, 0x18
/* 8006987C 0006687C  81 07 00 08 */	lwz r8, 8(r7)
/* 80069880 00066880  3D 60 80 0F */	lis r11, lbl_800F5CB0@ha
/* 80069884 00066884  80 07 00 04 */	lwz r0, 4(r7)
/* 80069888 00066888  7D 24 4B 78 */	mr r4, r9
/* 8006988C 0006688C  91 41 00 18 */	stw r10, 0x18(r1)
/* 80069890 00066890  90 09 00 04 */	stw r0, 4(r9)
/* 80069894 00066894  39 40 00 00 */	li r10, 0
/* 80069898 00066898  91 09 00 08 */	stw r8, 8(r9)
/* 8006989C 0006689C  C1 AB 5C B0 */	lfs f13, lbl_800F5CB0@l(r11)
/* 800698A0 000668A0  C1 81 00 08 */	lfs f12, 8(r1)
/* 800698A4 000668A4  EC 0C 38 28 */	fsubs f0, f12, f7
/* 800698A8 000668A8  FC 00 68 00 */	fcmpu cr0, f0, f13
/* 800698AC 000668AC  40 81 00 98 */	ble lbl_80069944
/* 800698B0 000668B0  3D 20 80 0F */	lis r9, lbl_800F5CB4@ha
/* 800698B4 000668B4  ED AC 38 2A */	fadds f13, f12, f7
/* 800698B8 000668B8  C0 09 5C B4 */	lfs f0, lbl_800F5CB4@l(r9)
/* 800698BC 000668BC  FC 0D 00 00 */	fcmpu cr0, f13, f0
/* 800698C0 000668C0  40 80 00 84 */	bge lbl_80069944
/* 800698C4 000668C4  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 800698C8 000668C8  3D 20 80 0F */	lis r9, lbl_800F5CB8@ha
/* 800698CC 000668CC  C1 A9 5C B8 */	lfs f13, lbl_800F5CB8@l(r9)
/* 800698D0 000668D0  EC 00 38 28 */	fsubs f0, f0, f7
/* 800698D4 000668D4  FC 00 68 00 */	fcmpu cr0, f0, f13
/* 800698D8 000668D8  40 80 00 28 */	bge lbl_80069900
/* 800698DC 000668DC  3D 20 80 0F */	lis r9, lbl_800F5CBC@ha
/* 800698E0 000668E0  3D 60 80 0F */	lis r11, lbl_800F5CC0@ha
/* 800698E4 000668E4  C1 A9 5C BC */	lfs f13, lbl_800F5CBC@l(r9)
/* 800698E8 000668E8  39 40 00 01 */	li r10, 1
/* 800698EC 000668EC  C0 0B 5C C0 */	lfs f0, lbl_800F5CC0@l(r11)
/* 800698F0 000668F0  D1 A1 00 2C */	stfs f13, 0x2c(r1)
/* 800698F4 000668F4  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 800698F8 000668F8  D1 A1 00 28 */	stfs f13, 0x28(r1)
/* 800698FC 000668FC  91 43 00 30 */	stw r10, 0x30(r3)
lbl_80069900:
/* 80069900 00066900  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80069904 00066904  3D 20 80 0F */	lis r9, lbl_800F5CC4@ha
/* 80069908 00066908  C1 BF 00 04 */	lfs f13, 4(r31)
/* 8006990C 0006690C  C1 89 5C C4 */	lfs f12, lbl_800F5CC4@l(r9)
/* 80069910 00066910  EC 00 68 2A */	fadds f0, f0, f13
/* 80069914 00066914  FC 00 60 00 */	fcmpu cr0, f0, f12
/* 80069918 00066918  40 81 00 D8 */	ble lbl_800699F0
/* 8006991C 0006691C  3D 20 80 0F */	lis r9, lbl_800F5CBC@ha
/* 80069920 00066920  3D 60 80 0F */	lis r11, lbl_800F5CC8@ha
/* 80069924 00066924  C1 A9 5C BC */	lfs f13, lbl_800F5CBC@l(r9)
/* 80069928 00066928  39 40 00 01 */	li r10, 1
/* 8006992C 0006692C  C0 0B 5C C8 */	lfs f0, lbl_800F5CC8@l(r11)
/* 80069930 00066930  D1 A1 00 2C */	stfs f13, 0x2c(r1)
/* 80069934 00066934  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80069938 00066938  91 43 00 2C */	stw r10, 0x2c(r3)
/* 8006993C 0006693C  D1 A1 00 28 */	stfs f13, 0x28(r1)
/* 80069940 00066940  48 00 00 B0 */	b lbl_800699F0
lbl_80069944:
/* 80069944 00066944  C1 61 00 10 */	lfs f11, 0x10(r1)
/* 80069948 00066948  3D 20 80 0F */	lis r9, lbl_800F5CB0@ha
/* 8006994C 0006694C  C1 9F 00 04 */	lfs f12, 4(r31)
/* 80069950 00066950  C1 A9 5C B0 */	lfs f13, lbl_800F5CB0@l(r9)
/* 80069954 00066954  EC 0B 60 28 */	fsubs f0, f11, f12
/* 80069958 00066958  FC 00 68 00 */	fcmpu cr0, f0, f13
/* 8006995C 0006695C  40 81 00 94 */	ble lbl_800699F0
/* 80069960 00066960  3D 20 80 0F */	lis r9, lbl_800F5CB4@ha
/* 80069964 00066964  ED AB 60 2A */	fadds f13, f11, f12
/* 80069968 00066968  C0 09 5C B4 */	lfs f0, lbl_800F5CB4@l(r9)
/* 8006996C 0006696C  FC 0D 00 00 */	fcmpu cr0, f13, f0
/* 80069970 00066970  40 80 00 80 */	bge lbl_800699F0
/* 80069974 00066974  C0 01 00 08 */	lfs f0, 8(r1)
/* 80069978 00066978  3D 20 80 0F */	lis r9, lbl_800F5CB8@ha
/* 8006997C 0006697C  C1 A9 5C B8 */	lfs f13, lbl_800F5CB8@l(r9)
/* 80069980 00066980  EC 00 60 28 */	fsubs f0, f0, f12
/* 80069984 00066984  FC 00 68 00 */	fcmpu cr0, f0, f13
/* 80069988 00066988  40 80 00 28 */	bge lbl_800699B0
/* 8006998C 0006698C  3D 60 80 0F */	lis r11, lbl_800F5CC0@ha
/* 80069990 00066990  3D 20 80 0F */	lis r9, lbl_800F5CBC@ha
/* 80069994 00066994  C1 A9 5C BC */	lfs f13, lbl_800F5CBC@l(r9)
/* 80069998 00066998  39 40 00 01 */	li r10, 1
/* 8006999C 0006699C  C0 0B 5C C0 */	lfs f0, lbl_800F5CC0@l(r11)
/* 800699A0 000669A0  D1 A1 00 30 */	stfs f13, 0x30(r1)
/* 800699A4 000669A4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 800699A8 000669A8  D1 A1 00 2C */	stfs f13, 0x2c(r1)
/* 800699AC 000669AC  91 43 00 34 */	stw r10, 0x34(r3)
lbl_800699B0:
/* 800699B0 000669B0  C0 01 00 08 */	lfs f0, 8(r1)
/* 800699B4 000669B4  3D 20 80 0F */	lis r9, lbl_800F5CC4@ha
/* 800699B8 000669B8  C1 BF 00 04 */	lfs f13, 4(r31)
/* 800699BC 000669BC  C1 89 5C C4 */	lfs f12, lbl_800F5CC4@l(r9)
/* 800699C0 000669C0  EC 00 68 2A */	fadds f0, f0, f13
/* 800699C4 000669C4  FC 00 60 00 */	fcmpu cr0, f0, f12
/* 800699C8 000669C8  40 81 00 28 */	ble lbl_800699F0
/* 800699CC 000669CC  3D 60 80 0F */	lis r11, lbl_800F5CC8@ha
/* 800699D0 000669D0  3D 20 80 0F */	lis r9, lbl_800F5CBC@ha
/* 800699D4 000669D4  C1 A9 5C BC */	lfs f13, lbl_800F5CBC@l(r9)
/* 800699D8 000669D8  39 40 00 01 */	li r10, 1
/* 800699DC 000669DC  C0 0B 5C C8 */	lfs f0, lbl_800F5CC8@l(r11)
/* 800699E0 000669E0  D1 A1 00 30 */	stfs f13, 0x30(r1)
/* 800699E4 000669E4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 800699E8 000669E8  91 43 00 28 */	stw r10, 0x28(r3)
/* 800699EC 000669EC  D1 A1 00 2C */	stfs f13, 0x2c(r1)
lbl_800699F0:
/* 800699F0 000669F0  2C 0A 00 00 */	cmpwi r10, 0
/* 800699F4 000669F4  41 82 01 34 */	beq lbl_80069B28
/* 800699F8 000669F8  C0 05 00 08 */	lfs f0, 8(r5)
/* 800699FC 000669FC  3D 20 80 0F */	lis r9, lbl_800F5CCC@ha
/* 80069A00 00066A00  C1 21 00 30 */	lfs f9, 0x30(r1)
/* 80069A04 00066A04  C1 A5 00 00 */	lfs f13, 0(r5)
/* 80069A08 00066A08  C1 41 00 28 */	lfs f10, 0x28(r1)
/* 80069A0C 00066A0C  EC 00 02 72 */	fmuls f0, f0, f9
/* 80069A10 00066A10  C1 89 5C CC */	lfs f12, lbl_800F5CCC@l(r9)
/* 80069A14 00066A14  EF ED 02 BE */	fnmadds f31, f13, f10, f0
/* 80069A18 00066A18  FC 1F 60 00 */	fcmpu cr0, f31, f12
/* 80069A1C 00066A1C  40 81 00 08 */	ble lbl_80069A24
/* 80069A20 00066A20  FF E0 60 90 */	fmr f31, f12
lbl_80069A24:
/* 80069A24 00066A24  3D 20 80 0F */	lis r9, lbl_800F5CBC@ha
/* 80069A28 00066A28  C0 29 5C BC */	lfs f1, lbl_800F5CBC@l(r9)
/* 80069A2C 00066A2C  FC 1F 08 00 */	fcmpu cr0, f31, f1
/* 80069A30 00066A30  4C 62 0B 82 */	cror 3, 2, 1
/* 80069A34 00066A34  40 83 00 F4 */	bns lbl_80069B28
/* 80069A38 00066A38  88 7F 00 00 */	lbz r3, 0(r31)
/* 80069A3C 00066A3C  3D 20 80 0F */	lis r9, lbl_800F5CD0@ha
/* 80069A40 00066A40  3B C0 00 00 */	li r30, 0
/* 80069A44 00066A44  C1 A9 5C D0 */	lfs f13, lbl_800F5CD0@l(r9)
/* 80069A48 00066A48  63 DE B4 00 */	ori r30, r30, 0xb400
/* 80069A4C 00066A4C  3D 20 80 0F */	lis r9, lbl_800F5CAC@ha
/* 80069A50 00066A50  7C 63 F1 D6 */	mullw r3, r3, r30
/* 80069A54 00066A54  EF FF 68 2A */	fadds f31, f31, f13
/* 80069A58 00066A58  C0 09 5C AC */	lfs f0, lbl_800F5CAC@l(r9)
/* 80069A5C 00066A5C  ED 29 07 F2 */	fmuls f9, f9, f31
/* 80069A60 00066A60  3F A0 80 1A */	lis r29, g_pGameGlob@ha
/* 80069A64 00066A64  C1 81 00 18 */	lfs f12, 0x18(r1)
/* 80069A68 00066A68  ED 4A 07 F2 */	fmuls f10, f10, f31
/* 80069A6C 00066A6C  C1 A1 00 20 */	lfs f13, 0x20(r1)
/* 80069A70 00066A70  ED 69 00 32 */	fmuls f11, f9, f0
/* 80069A74 00066A74  80 1D 5B 44 */	lwz r0, g_pGameGlob@l(r29)
/* 80069A78 00066A78  EC 0A 00 32 */	fmuls f0, f10, f0
/* 80069A7C 00066A7C  3C 63 FF FF */	addis r3, r3, 0xffff
/* 80069A80 00066A80  ED 8C 00 28 */	fsubs f12, f12, f0
/* 80069A84 00066A84  7C 63 02 14 */	add r3, r3, r0
/* 80069A88 00066A88  ED AD 58 28 */	fsubs f13, f13, f11
/* 80069A8C 00066A8C  D1 81 00 18 */	stfs f12, 0x18(r1)
/* 80069A90 00066A90  D1 A1 00 20 */	stfs f13, 0x20(r1)
/* 80069A94 00066A94  38 63 5A 5C */	addi r3, r3, 0x5a5c
/* 80069A98 00066A98  D1 41 00 28 */	stfs f10, 0x28(r1)
/* 80069A9C 00066A9C  FC 40 08 90 */	fmr f2, f1
/* 80069AA0 00066AA0  D1 21 00 30 */	stfs f9, 0x30(r1)
/* 80069AA4 00066AA4  38 A0 00 00 */	li r5, 0
/* 80069AA8 00066AA8  38 C0 00 01 */	li r6, 1
/* 80069AAC 00066AAC  38 E0 00 00 */	li r7, 0
/* 80069AB0 00066AB0  4B FD 24 15 */	bl KnockedOverByForce__11CPlayerAnimP5Vec3FffbN24
/* 80069AB4 00066AB4  2C 03 00 00 */	cmpwi r3, 0
/* 80069AB8 00066AB8  40 82 00 4C */	bne lbl_80069B04
/* 80069ABC 00066ABC  88 7F 00 00 */	lbz r3, 0(r31)
/* 80069AC0 00066AC0  3D 20 80 0F */	lis r9, lbl_800F5CD4@ha
/* 80069AC4 00066AC4  C1 89 5C D4 */	lfs f12, lbl_800F5CD4@l(r9)
/* 80069AC8 00066AC8  ED 7F F8 2A */	fadds f11, f31, f31
/* 80069ACC 00066ACC  7C 63 F1 D6 */	mullw r3, r3, r30
/* 80069AD0 00066AD0  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80069AD4 00066AD4  C1 A1 00 30 */	lfs f13, 0x30(r1)
/* 80069AD8 00066AD8  38 81 00 28 */	addi r4, r1, 0x28
/* 80069ADC 00066ADC  80 1D 5B 44 */	lwz r0, 0x5b44(r29)
/* 80069AE0 00066AE0  EC 00 03 32 */	fmuls f0, f0, f12
/* 80069AE4 00066AE4  ED AD 03 32 */	fmuls f13, f13, f12
/* 80069AE8 00066AE8  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80069AEC 00066AEC  3C 63 FF FF */	addis r3, r3, 0xffff
/* 80069AF0 00066AF0  D1 61 00 2C */	stfs f11, 0x2c(r1)
/* 80069AF4 00066AF4  38 63 51 20 */	addi r3, r3, 0x5120
/* 80069AF8 00066AF8  D1 A1 00 30 */	stfs f13, 0x30(r1)
/* 80069AFC 00066AFC  7C 60 1A 14 */	add r3, r0, r3
/* 80069B00 00066B00  4B FD A3 E9 */	bl ApplyForceToPlayer__7CPlayerP5Vec3F
lbl_80069B04:
/* 80069B04 00066B04  81 3D 5B 44 */	lwz r9, 0x5b44(r29)
/* 80069B08 00066B08  3B C1 00 38 */	addi r30, r1, 0x38
/* 80069B0C 00066B0C  7F C3 F3 78 */	mr r3, r30
/* 80069B10 00066B10  38 A0 00 05 */	li r5, 5
/* 80069B14 00066B14  3D 29 00 03 */	addis r9, r9, 3
/* 80069B18 00066B18  80 89 D8 94 */	lwz r4, -0x276c(r9)
/* 80069B1C 00066B1C  48 01 1C D9 */	bl StartLevelSound__6CAudioi
/* 80069B20 00066B20  7F C3 F3 78 */	mr r3, r30
/* 80069B24 00066B24  48 01 27 CD */	bl musunk_FUN_8007c2f0
lbl_80069B28:
/* 80069B28 00066B28  38 60 00 00 */	li r3, 0
/* 80069B2C 00066B2C  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 80069B30 00066B30  7C 08 03 A6 */	mtlr r0
/* 80069B34 00066B34  BB A1 00 44 */	lmw r29, 0x44(r1)
/* 80069B38 00066B38  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80069B3C 00066B3C  38 21 00 58 */	addi r1, r1, 0x58
/* 80069B40 00066B40  4E 80 00 20 */	blr 
/* 80069B44 00066B44  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 80069B48 00066B48  7C 08 02 A6 */	mflr r0
/* 80069B4C 00066B4C  BF 01 00 08 */	stmw r24, 8(r1)
/* 80069B50 00066B50  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80069B54 00066B54  7C 7B 1B 78 */	mr r27, r3
/* 80069B58 00066B58  3B 80 00 00 */	li r28, 0
/* 80069B5C 00066B5C  80 1B 00 08 */	lwz r0, 8(r27)
/* 80069B60 00066B60  83 DB 00 14 */	lwz r30, 0x14(r27)
/* 80069B64 00066B64  7C 1C 00 00 */	cmpw r28, r0
/* 80069B68 00066B68  41 82 00 94 */	beq lbl_80069BFC
/* 80069B6C 00066B6C  3F 00 80 1A */	lis r24, g_pGameGlob@ha
/* 80069B70 00066B70  3B BB 00 18 */	addi r29, r27, 0x18
/* 80069B74 00066B74  3B 5B 00 28 */	addi r26, r27, 0x28
/* 80069B78 00066B78  3B 20 00 00 */	li r25, 0
lbl_80069B7C:
/* 80069B7C 00066B7C  81 38 5B 44 */	lwz r9, g_pGameGlob@l(r24)
/* 80069B80 00066B80  57 9F 10 3A */	slwi r31, r28, 2
/* 80069B84 00066B84  7C BD F8 2E */	lwzx r5, r29, r31
/* 80069B88 00066B88  7F C4 F3 78 */	mr r4, r30
/* 80069B8C 00066B8C  3D 29 00 03 */	addis r9, r9, 3
/* 80069B90 00066B90  80 69 D8 7C */	lwz r3, -0x2784(r9)
/* 80069B94 00066B94  38 63 20 1C */	addi r3, r3, 0x201c
/* 80069B98 00066B98  48 04 4B 5D */	bl func_800AE6F4
/* 80069B9C 00066B9C  7D 3D F8 2E */	lwzx r9, r29, r31
/* 80069BA0 00066BA0  80 1E 00 04 */	lwz r0, 4(r30)
/* 80069BA4 00066BA4  7C 09 00 00 */	cmpw r9, r0
/* 80069BA8 00066BA8  41 82 00 28 */	beq lbl_80069BD0
/* 80069BAC 00066BAC  39 29 00 01 */	addi r9, r9, 1
/* 80069BB0 00066BB0  7D 3D F9 2E */	stwx r9, r29, r31
/* 80069BB4 00066BB4  80 1E 00 08 */	lwz r0, 8(r30)
/* 80069BB8 00066BB8  7C 09 00 00 */	cmpw r9, r0
/* 80069BBC 00066BBC  40 82 00 0C */	bne lbl_80069BC8
/* 80069BC0 00066BC0  80 1E 00 04 */	lwz r0, 4(r30)
/* 80069BC4 00066BC4  7C 1D F9 2E */	stwx r0, r29, r31
lbl_80069BC8:
/* 80069BC8 00066BC8  7F 3A F9 2E */	stwx r25, r26, r31
/* 80069BCC 00066BCC  48 00 00 18 */	b lbl_80069BE4
lbl_80069BD0:
/* 80069BD0 00066BD0  7C 1A F8 2E */	lwzx r0, r26, r31
/* 80069BD4 00066BD4  2C 00 00 00 */	cmpwi r0, 0
/* 80069BD8 00066BD8  41 82 00 0C */	beq lbl_80069BE4
/* 80069BDC 00066BDC  38 09 00 01 */	addi r0, r9, 1
/* 80069BE0 00066BE0  7C 1D F9 2E */	stwx r0, r29, r31
lbl_80069BE4:
/* 80069BE4 00066BE4  38 1C 00 01 */	addi r0, r28, 1
/* 80069BE8 00066BE8  81 3B 00 08 */	lwz r9, 8(r27)
/* 80069BEC 00066BEC  54 1C 06 3E */	clrlwi r28, r0, 0x18
/* 80069BF0 00066BF0  3B DE 00 20 */	addi r30, r30, 0x20
/* 80069BF4 00066BF4  7C 1C 48 00 */	cmpw r28, r9
/* 80069BF8 00066BF8  40 82 FF 84 */	bne lbl_80069B7C
lbl_80069BFC:
/* 80069BFC 00066BFC  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80069C00 00066C00  7C 08 03 A6 */	mtlr r0
/* 80069C04 00066C04  BB 01 00 08 */	lmw r24, 8(r1)
/* 80069C08 00066C08  38 21 00 28 */	addi r1, r1, 0x28
/* 80069C0C 00066C0C  4E 80 00 20 */	blr 
/* 80069C10 00066C10  4E 80 00 20 */	blr 
/* 80069C14 00066C14  38 60 00 00 */	li r3, 0
/* 80069C18 00066C18  4E 80 00 20 */	blr 
/* 80069C1C 00066C1C  4E 80 00 20 */	blr 
/* 80069C20 00066C20  4E 80 00 20 */	blr 
/* 80069C24 00066C24  38 60 00 00 */	li r3, 0
/* 80069C28 00066C28  4E 80 00 20 */	blr 
