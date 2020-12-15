.include "macros.inc"

.section .text

.global GXCPInterruptHandler
GXCPInterruptHandler:
/* 800A3B3C 000A0B3C  7C 08 02 A6 */	mflr r0
/* 800A3B40 000A0B40  90 01 00 04 */	stw r0, 4(r1)
/* 800A3B44 000A0B44  94 21 FD 20 */	stwu r1, -0x2e0(r1)
/* 800A3B48 000A0B48  93 E1 02 DC */	stw r31, 0x2dc(r1)
/* 800A3B4C 000A0B4C  7C 9F 23 78 */	mr r31, r4
/* 800A3B50 000A0B50  80 AD 89 7C */	lwz r5, __cpReg-_SDA_BASE_(r13)
/* 800A3B54 000A0B54  80 6D 97 08 */	lwz r3, __GXData-_SDA_BASE_(r13)
/* 800A3B58 000A0B58  A0 05 00 00 */	lhz r0, 0(r5)
/* 800A3B5C 000A0B5C  90 03 00 0C */	stw r0, 0xc(r3)
/* 800A3B60 000A0B60  80 03 00 08 */	lwz r0, 8(r3)
/* 800A3B64 000A0B64  54 00 EF FF */	rlwinm. r0, r0, 0x1d, 0x1f, 0x1f
/* 800A3B68 000A0B68  41 82 00 38 */	beq lbl_800A3BA0
/* 800A3B6C 000A0B6C  80 03 00 0C */	lwz r0, 0xc(r3)
/* 800A3B70 000A0B70  54 00 FF FF */	rlwinm. r0, r0, 0x1f, 0x1f, 0x1f
/* 800A3B74 000A0B74  41 82 00 2C */	beq lbl_800A3BA0
/* 800A3B78 000A0B78  80 6D 89 48 */	lwz r3, lbl_80259CE8-_SDA_BASE_(r13)
/* 800A3B7C 000A0B7C  4B FE 9E 4D */	bl OSResumeThread
/* 800A3B80 000A0B80  38 00 00 00 */	li r0, 0
/* 800A3B84 000A0B84  90 0D 89 50 */	stw r0, lbl_80259CF0-_SDA_BASE_(r13)
/* 800A3B88 000A0B88  38 60 00 01 */	li r3, 1
/* 800A3B8C 000A0B8C  38 80 00 01 */	li r4, 1
/* 800A3B90 000A0B90  48 00 05 A5 */	bl __GXWriteFifoIntReset
/* 800A3B94 000A0B94  38 60 00 01 */	li r3, 1
/* 800A3B98 000A0B98  38 80 00 00 */	li r4, 0
/* 800A3B9C 000A0B9C  48 00 05 69 */	bl __GXWriteFifoIntEnable
lbl_800A3BA0:
/* 800A3BA0 000A0BA0  80 6D 97 08 */	lwz r3, __GXData-_SDA_BASE_(r13)
/* 800A3BA4 000A0BA4  80 03 00 08 */	lwz r0, 8(r3)
/* 800A3BA8 000A0BA8  54 00 F7 FF */	rlwinm. r0, r0, 0x1e, 0x1f, 0x1f
/* 800A3BAC 000A0BAC  41 82 00 44 */	beq lbl_800A3BF0
/* 800A3BB0 000A0BB0  80 03 00 0C */	lwz r0, 0xc(r3)
/* 800A3BB4 000A0BB4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 800A3BB8 000A0BB8  41 82 00 38 */	beq lbl_800A3BF0
/* 800A3BBC 000A0BBC  80 AD 89 58 */	lwz r5, lbl_80259CF8-_SDA_BASE_(r13)
/* 800A3BC0 000A0BC0  38 60 00 00 */	li r3, 0
/* 800A3BC4 000A0BC4  38 80 00 01 */	li r4, 1
/* 800A3BC8 000A0BC8  38 05 00 01 */	addi r0, r5, 1
/* 800A3BCC 000A0BCC  90 0D 89 58 */	stw r0, lbl_80259CF8-_SDA_BASE_(r13)
/* 800A3BD0 000A0BD0  48 00 05 35 */	bl __GXWriteFifoIntEnable
/* 800A3BD4 000A0BD4  38 60 00 01 */	li r3, 1
/* 800A3BD8 000A0BD8  38 80 00 00 */	li r4, 0
/* 800A3BDC 000A0BDC  48 00 05 59 */	bl __GXWriteFifoIntReset
/* 800A3BE0 000A0BE0  38 00 00 01 */	li r0, 1
/* 800A3BE4 000A0BE4  80 6D 89 48 */	lwz r3, lbl_80259CE8-_SDA_BASE_(r13)
/* 800A3BE8 000A0BE8  90 0D 89 50 */	stw r0, lbl_80259CF0-_SDA_BASE_(r13)
/* 800A3BEC 000A0BEC  4B FE A0 65 */	bl OSSuspendThread
lbl_800A3BF0:
/* 800A3BF0 000A0BF0  80 6D 97 08 */	lwz r3, __GXData-_SDA_BASE_(r13)
/* 800A3BF4 000A0BF4  80 83 00 08 */	lwz r4, 8(r3)
/* 800A3BF8 000A0BF8  54 80 DF FF */	rlwinm. r0, r4, 0x1b, 0x1f, 0x1f
/* 800A3BFC 000A0BFC  41 82 00 60 */	beq lbl_800A3C5C
/* 800A3C00 000A0C00  80 03 00 0C */	lwz r0, 0xc(r3)
/* 800A3C04 000A0C04  54 00 E7 FF */	rlwinm. r0, r0, 0x1c, 0x1f, 0x1f
/* 800A3C08 000A0C08  41 82 00 54 */	beq lbl_800A3C5C
/* 800A3C0C 000A0C0C  38 00 00 00 */	li r0, 0
/* 800A3C10 000A0C10  50 04 2E B4 */	rlwimi r4, r0, 5, 0x1a, 0x1a
/* 800A3C14 000A0C14  90 83 00 08 */	stw r4, 8(r3)
/* 800A3C18 000A0C18  80 03 00 08 */	lwz r0, 8(r3)
/* 800A3C1C 000A0C1C  80 6D 89 7C */	lwz r3, __cpReg-_SDA_BASE_(r13)
/* 800A3C20 000A0C20  B0 03 00 02 */	sth r0, 2(r3)
/* 800A3C24 000A0C24  80 0D 89 54 */	lwz r0, lbl_80259CF4-_SDA_BASE_(r13)
/* 800A3C28 000A0C28  28 00 00 00 */	cmplwi r0, 0
/* 800A3C2C 000A0C2C  41 82 00 30 */	beq lbl_800A3C5C
/* 800A3C30 000A0C30  38 61 00 10 */	addi r3, r1, 0x10
/* 800A3C34 000A0C34  4B FE 69 2D */	bl OSClearContext
/* 800A3C38 000A0C38  38 61 00 10 */	addi r3, r1, 0x10
/* 800A3C3C 000A0C3C  4B FE 67 5D */	bl OSSetCurrentContext
/* 800A3C40 000A0C40  81 8D 89 54 */	lwz r12, lbl_80259CF4-_SDA_BASE_(r13)
/* 800A3C44 000A0C44  7D 88 03 A6 */	mtlr r12
/* 800A3C48 000A0C48  4E 80 00 21 */	blrl 
/* 800A3C4C 000A0C4C  38 61 00 10 */	addi r3, r1, 0x10
/* 800A3C50 000A0C50  4B FE 69 11 */	bl OSClearContext
/* 800A3C54 000A0C54  7F E3 FB 78 */	mr r3, r31
/* 800A3C58 000A0C58  4B FE 67 41 */	bl OSSetCurrentContext
lbl_800A3C5C:
/* 800A3C5C 000A0C5C  80 01 02 E4 */	lwz r0, 0x2e4(r1)
/* 800A3C60 000A0C60  83 E1 02 DC */	lwz r31, 0x2dc(r1)
/* 800A3C64 000A0C64  38 21 02 E0 */	addi r1, r1, 0x2e0
/* 800A3C68 000A0C68  7C 08 03 A6 */	mtlr r0
/* 800A3C6C 000A0C6C  4E 80 00 20 */	blr 

.global GXInitFifoBase
GXInitFifoBase:
/* 800A3C70 000A0C70  7C 08 02 A6 */	mflr r0
/* 800A3C74 000A0C74  90 01 00 04 */	stw r0, 4(r1)
/* 800A3C78 000A0C78  38 05 FF FC */	addi r0, r5, -4
/* 800A3C7C 000A0C7C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800A3C80 000A0C80  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800A3C84 000A0C84  3B E4 00 00 */	addi r31, r4, 0
/* 800A3C88 000A0C88  7C 1F 02 14 */	add r0, r31, r0
/* 800A3C8C 000A0C8C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800A3C90 000A0C90  3B C3 00 00 */	addi r30, r3, 0
/* 800A3C94 000A0C94  38 85 C0 00 */	addi r4, r5, -16384
/* 800A3C98 000A0C98  93 E3 00 00 */	stw r31, 0(r3)
/* 800A3C9C 000A0C9C  90 03 00 04 */	stw r0, 4(r3)
/* 800A3CA0 000A0CA0  38 00 00 00 */	li r0, 0
/* 800A3CA4 000A0CA4  90 A3 00 08 */	stw r5, 8(r3)
/* 800A3CA8 000A0CA8  54 A5 F8 74 */	rlwinm r5, r5, 0x1f, 1, 0x1a
/* 800A3CAC 000A0CAC  90 1E 00 1C */	stw r0, 0x1c(r30)
/* 800A3CB0 000A0CB0  48 00 00 9D */	bl GXInitFifoLimits
/* 800A3CB4 000A0CB4  38 7E 00 00 */	addi r3, r30, 0
/* 800A3CB8 000A0CB8  38 9F 00 00 */	addi r4, r31, 0
/* 800A3CBC 000A0CBC  38 BF 00 00 */	addi r5, r31, 0
/* 800A3CC0 000A0CC0  48 00 00 1D */	bl GXInitFifoPtrs
/* 800A3CC4 000A0CC4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800A3CC8 000A0CC8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800A3CCC 000A0CCC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800A3CD0 000A0CD0  38 21 00 20 */	addi r1, r1, 0x20
/* 800A3CD4 000A0CD4  7C 08 03 A6 */	mtlr r0
/* 800A3CD8 000A0CD8  4E 80 00 20 */	blr 

.global GXInitFifoPtrs
GXInitFifoPtrs:
/* 800A3CDC 000A0CDC  7C 08 02 A6 */	mflr r0
/* 800A3CE0 000A0CE0  90 01 00 04 */	stw r0, 4(r1)
/* 800A3CE4 000A0CE4  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 800A3CE8 000A0CE8  93 E1 00 24 */	stw r31, 0x24(r1)
/* 800A3CEC 000A0CEC  3B E5 00 00 */	addi r31, r5, 0
/* 800A3CF0 000A0CF0  93 C1 00 20 */	stw r30, 0x20(r1)
/* 800A3CF4 000A0CF4  3B C4 00 00 */	addi r30, r4, 0
/* 800A3CF8 000A0CF8  93 A1 00 1C */	stw r29, 0x1c(r1)
/* 800A3CFC 000A0CFC  3B A3 00 00 */	addi r29, r3, 0
/* 800A3D00 000A0D00  4B FE 73 61 */	bl OSDisableInterrupts
/* 800A3D04 000A0D04  93 DD 00 14 */	stw r30, 0x14(r29)
/* 800A3D08 000A0D08  7C 1E F8 50 */	subf r0, r30, r31
/* 800A3D0C 000A0D0C  93 FD 00 18 */	stw r31, 0x18(r29)
/* 800A3D10 000A0D10  90 1D 00 1C */	stw r0, 0x1c(r29)
/* 800A3D14 000A0D14  80 9D 00 1C */	lwz r4, 0x1c(r29)
/* 800A3D18 000A0D18  2C 04 00 00 */	cmpwi r4, 0
/* 800A3D1C 000A0D1C  40 80 00 10 */	bge lbl_800A3D2C
/* 800A3D20 000A0D20  80 1D 00 08 */	lwz r0, 8(r29)
/* 800A3D24 000A0D24  7C 04 02 14 */	add r0, r4, r0
/* 800A3D28 000A0D28  90 1D 00 1C */	stw r0, 0x1c(r29)
lbl_800A3D2C:
/* 800A3D2C 000A0D2C  4B FE 73 5D */	bl OSRestoreInterrupts
/* 800A3D30 000A0D30  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 800A3D34 000A0D34  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 800A3D38 000A0D38  83 C1 00 20 */	lwz r30, 0x20(r1)
/* 800A3D3C 000A0D3C  83 A1 00 1C */	lwz r29, 0x1c(r1)
/* 800A3D40 000A0D40  38 21 00 28 */	addi r1, r1, 0x28
/* 800A3D44 000A0D44  7C 08 03 A6 */	mtlr r0
/* 800A3D48 000A0D48  4E 80 00 20 */	blr 

.global GXInitFifoLimits
GXInitFifoLimits:
/* 800A3D4C 000A0D4C  90 83 00 0C */	stw r4, 0xc(r3)
/* 800A3D50 000A0D50  90 A3 00 10 */	stw r5, 0x10(r3)
/* 800A3D54 000A0D54  4E 80 00 20 */	blr 

.global GXSetCPUFifo
GXSetCPUFifo:
/* 800A3D58 000A0D58  7C 08 02 A6 */	mflr r0
/* 800A3D5C 000A0D5C  90 01 00 04 */	stw r0, 4(r1)
/* 800A3D60 000A0D60  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 800A3D64 000A0D64  93 E1 00 14 */	stw r31, 0x14(r1)
/* 800A3D68 000A0D68  93 C1 00 10 */	stw r30, 0x10(r1)
/* 800A3D6C 000A0D6C  7C 7E 1B 78 */	mr r30, r3
/* 800A3D70 000A0D70  4B FE 72 F1 */	bl OSDisableInterrupts
/* 800A3D74 000A0D74  80 0D 89 44 */	lwz r0, lbl_80259CE4-_SDA_BASE_(r13)
/* 800A3D78 000A0D78  3B E3 00 00 */	addi r31, r3, 0
/* 800A3D7C 000A0D7C  93 CD 89 40 */	stw r30, lbl_80259CE0-_SDA_BASE_(r13)
/* 800A3D80 000A0D80  7C 1E 00 40 */	cmplw r30, r0
/* 800A3D84 000A0D84  40 82 00 70 */	bne lbl_800A3DF4
/* 800A3D88 000A0D88  80 1E 00 00 */	lwz r0, 0(r30)
/* 800A3D8C 000A0D8C  39 00 00 00 */	li r8, 0
/* 800A3D90 000A0D90  80 6D 89 78 */	lwz r3, __piReg-_SDA_BASE_(r13)
/* 800A3D94 000A0D94  38 C0 00 00 */	li r6, 0
/* 800A3D98 000A0D98  54 00 00 BE */	clrlwi r0, r0, 2
/* 800A3D9C 000A0D9C  90 03 00 0C */	stw r0, 0xc(r3)
/* 800A3DA0 000A0DA0  38 00 00 01 */	li r0, 1
/* 800A3DA4 000A0DA4  38 60 00 01 */	li r3, 1
/* 800A3DA8 000A0DA8  80 FE 00 04 */	lwz r7, 4(r30)
/* 800A3DAC 000A0DAC  38 80 00 01 */	li r4, 1
/* 800A3DB0 000A0DB0  80 AD 89 78 */	lwz r5, __piReg-_SDA_BASE_(r13)
/* 800A3DB4 000A0DB4  54 E7 00 BE */	clrlwi r7, r7, 2
/* 800A3DB8 000A0DB8  90 E5 00 10 */	stw r7, 0x10(r5)
/* 800A3DBC 000A0DBC  80 FE 00 18 */	lwz r7, 0x18(r30)
/* 800A3DC0 000A0DC0  80 AD 89 78 */	lwz r5, __piReg-_SDA_BASE_(r13)
/* 800A3DC4 000A0DC4  50 E8 01 B4 */	rlwimi r8, r7, 0, 6, 0x1a
/* 800A3DC8 000A0DC8  38 E8 00 00 */	addi r7, r8, 0
/* 800A3DCC 000A0DCC  50 C7 D1 4A */	rlwimi r7, r6, 0x1a, 5, 5
/* 800A3DD0 000A0DD0  90 E5 00 14 */	stw r7, 0x14(r5)
/* 800A3DD4 000A0DD4  98 0D 89 4C */	stb r0, lbl_80259CEC-_SDA_BASE_(r13)
/* 800A3DD8 000A0DD8  48 00 03 5D */	bl __GXWriteFifoIntReset
/* 800A3DDC 000A0DDC  38 60 00 01 */	li r3, 1
/* 800A3DE0 000A0DE0  38 80 00 00 */	li r4, 0
/* 800A3DE4 000A0DE4  48 00 03 21 */	bl __GXWriteFifoIntEnable
/* 800A3DE8 000A0DE8  38 60 00 01 */	li r3, 1
/* 800A3DEC 000A0DEC  48 00 02 E5 */	bl __GXFifoLink
/* 800A3DF0 000A0DF0  48 00 00 6C */	b lbl_800A3E5C
lbl_800A3DF4:
/* 800A3DF4 000A0DF4  88 0D 89 4C */	lbz r0, lbl_80259CEC-_SDA_BASE_(r13)
/* 800A3DF8 000A0DF8  28 00 00 00 */	cmplwi r0, 0
/* 800A3DFC 000A0DFC  41 82 00 14 */	beq lbl_800A3E10
/* 800A3E00 000A0E00  38 60 00 00 */	li r3, 0
/* 800A3E04 000A0E04  48 00 02 CD */	bl __GXFifoLink
/* 800A3E08 000A0E08  38 00 00 00 */	li r0, 0
/* 800A3E0C 000A0E0C  98 0D 89 4C */	stb r0, lbl_80259CEC-_SDA_BASE_(r13)
lbl_800A3E10:
/* 800A3E10 000A0E10  38 60 00 00 */	li r3, 0
/* 800A3E14 000A0E14  38 80 00 00 */	li r4, 0
/* 800A3E18 000A0E18  48 00 02 ED */	bl __GXWriteFifoIntEnable
/* 800A3E1C 000A0E1C  80 9E 00 00 */	lwz r4, 0(r30)
/* 800A3E20 000A0E20  38 A0 00 00 */	li r5, 0
/* 800A3E24 000A0E24  80 6D 89 78 */	lwz r3, __piReg-_SDA_BASE_(r13)
/* 800A3E28 000A0E28  38 00 00 00 */	li r0, 0
/* 800A3E2C 000A0E2C  54 84 00 BE */	clrlwi r4, r4, 2
/* 800A3E30 000A0E30  90 83 00 0C */	stw r4, 0xc(r3)
/* 800A3E34 000A0E34  80 9E 00 04 */	lwz r4, 4(r30)
/* 800A3E38 000A0E38  80 6D 89 78 */	lwz r3, __piReg-_SDA_BASE_(r13)
/* 800A3E3C 000A0E3C  54 84 00 BE */	clrlwi r4, r4, 2
/* 800A3E40 000A0E40  90 83 00 10 */	stw r4, 0x10(r3)
/* 800A3E44 000A0E44  80 9E 00 18 */	lwz r4, 0x18(r30)
/* 800A3E48 000A0E48  80 6D 89 78 */	lwz r3, __piReg-_SDA_BASE_(r13)
/* 800A3E4C 000A0E4C  50 85 01 B4 */	rlwimi r5, r4, 0, 6, 0x1a
/* 800A3E50 000A0E50  38 85 00 00 */	addi r4, r5, 0
/* 800A3E54 000A0E54  50 04 D1 4A */	rlwimi r4, r0, 0x1a, 5, 5
/* 800A3E58 000A0E58  90 83 00 14 */	stw r4, 0x14(r3)
lbl_800A3E5C:
/* 800A3E5C 000A0E5C  4B FE 45 9D */	bl PPCSync
/* 800A3E60 000A0E60  7F E3 FB 78 */	mr r3, r31
/* 800A3E64 000A0E64  4B FE 72 25 */	bl OSRestoreInterrupts
/* 800A3E68 000A0E68  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 800A3E6C 000A0E6C  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 800A3E70 000A0E70  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 800A3E74 000A0E74  38 21 00 18 */	addi r1, r1, 0x18
/* 800A3E78 000A0E78  7C 08 03 A6 */	mtlr r0
/* 800A3E7C 000A0E7C  4E 80 00 20 */	blr 

.global GXSetGPFifo
GXSetGPFifo:
/* 800A3E80 000A0E80  7C 08 02 A6 */	mflr r0
/* 800A3E84 000A0E84  90 01 00 04 */	stw r0, 4(r1)
/* 800A3E88 000A0E88  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 800A3E8C 000A0E8C  93 E1 00 14 */	stw r31, 0x14(r1)
/* 800A3E90 000A0E90  93 C1 00 10 */	stw r30, 0x10(r1)
/* 800A3E94 000A0E94  7C 7E 1B 78 */	mr r30, r3
/* 800A3E98 000A0E98  4B FE 71 C9 */	bl OSDisableInterrupts
/* 800A3E9C 000A0E9C  7C 7F 1B 78 */	mr r31, r3
/* 800A3EA0 000A0EA0  48 00 02 0D */	bl __GXFifoReadDisable
/* 800A3EA4 000A0EA4  38 60 00 00 */	li r3, 0
/* 800A3EA8 000A0EA8  38 80 00 00 */	li r4, 0
/* 800A3EAC 000A0EAC  48 00 02 59 */	bl __GXWriteFifoIntEnable
/* 800A3EB0 000A0EB0  93 CD 89 44 */	stw r30, lbl_80259CE4-_SDA_BASE_(r13)
/* 800A3EB4 000A0EB4  80 6D 89 7C */	lwz r3, __cpReg-_SDA_BASE_(r13)
/* 800A3EB8 000A0EB8  80 1E 00 00 */	lwz r0, 0(r30)
/* 800A3EBC 000A0EBC  B0 03 00 20 */	sth r0, 0x20(r3)
/* 800A3EC0 000A0EC0  80 1E 00 04 */	lwz r0, 4(r30)
/* 800A3EC4 000A0EC4  80 6D 89 7C */	lwz r3, __cpReg-_SDA_BASE_(r13)
/* 800A3EC8 000A0EC8  B0 03 00 24 */	sth r0, 0x24(r3)
/* 800A3ECC 000A0ECC  80 1E 00 1C */	lwz r0, 0x1c(r30)
/* 800A3ED0 000A0ED0  80 6D 89 7C */	lwz r3, __cpReg-_SDA_BASE_(r13)
/* 800A3ED4 000A0ED4  B0 03 00 30 */	sth r0, 0x30(r3)
/* 800A3ED8 000A0ED8  80 1E 00 18 */	lwz r0, 0x18(r30)
/* 800A3EDC 000A0EDC  80 6D 89 7C */	lwz r3, __cpReg-_SDA_BASE_(r13)
/* 800A3EE0 000A0EE0  B0 03 00 34 */	sth r0, 0x34(r3)
/* 800A3EE4 000A0EE4  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 800A3EE8 000A0EE8  80 6D 89 7C */	lwz r3, __cpReg-_SDA_BASE_(r13)
/* 800A3EEC 000A0EEC  B0 03 00 38 */	sth r0, 0x38(r3)
/* 800A3EF0 000A0EF0  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 800A3EF4 000A0EF4  80 6D 89 7C */	lwz r3, __cpReg-_SDA_BASE_(r13)
/* 800A3EF8 000A0EF8  B0 03 00 28 */	sth r0, 0x28(r3)
/* 800A3EFC 000A0EFC  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 800A3F00 000A0F00  80 6D 89 7C */	lwz r3, __cpReg-_SDA_BASE_(r13)
/* 800A3F04 000A0F04  B0 03 00 2C */	sth r0, 0x2c(r3)
/* 800A3F08 000A0F08  80 1E 00 00 */	lwz r0, 0(r30)
/* 800A3F0C 000A0F0C  80 6D 89 7C */	lwz r3, __cpReg-_SDA_BASE_(r13)
/* 800A3F10 000A0F10  54 00 84 BE */	rlwinm r0, r0, 0x10, 0x12, 0x1f
/* 800A3F14 000A0F14  B0 03 00 22 */	sth r0, 0x22(r3)
/* 800A3F18 000A0F18  80 1E 00 04 */	lwz r0, 4(r30)
/* 800A3F1C 000A0F1C  80 6D 89 7C */	lwz r3, __cpReg-_SDA_BASE_(r13)
/* 800A3F20 000A0F20  54 00 84 BE */	rlwinm r0, r0, 0x10, 0x12, 0x1f
/* 800A3F24 000A0F24  B0 03 00 26 */	sth r0, 0x26(r3)
/* 800A3F28 000A0F28  80 1E 00 1C */	lwz r0, 0x1c(r30)
/* 800A3F2C 000A0F2C  80 6D 89 7C */	lwz r3, __cpReg-_SDA_BASE_(r13)
/* 800A3F30 000A0F30  7C 00 86 70 */	srawi r0, r0, 0x10
/* 800A3F34 000A0F34  B0 03 00 32 */	sth r0, 0x32(r3)
/* 800A3F38 000A0F38  80 1E 00 18 */	lwz r0, 0x18(r30)
/* 800A3F3C 000A0F3C  80 6D 89 7C */	lwz r3, __cpReg-_SDA_BASE_(r13)
/* 800A3F40 000A0F40  54 00 84 BE */	rlwinm r0, r0, 0x10, 0x12, 0x1f
/* 800A3F44 000A0F44  B0 03 00 36 */	sth r0, 0x36(r3)
/* 800A3F48 000A0F48  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 800A3F4C 000A0F4C  80 6D 89 7C */	lwz r3, __cpReg-_SDA_BASE_(r13)
/* 800A3F50 000A0F50  54 00 84 BE */	rlwinm r0, r0, 0x10, 0x12, 0x1f
/* 800A3F54 000A0F54  B0 03 00 3A */	sth r0, 0x3a(r3)
/* 800A3F58 000A0F58  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 800A3F5C 000A0F5C  80 6D 89 7C */	lwz r3, __cpReg-_SDA_BASE_(r13)
/* 800A3F60 000A0F60  54 00 84 3E */	srwi r0, r0, 0x10
/* 800A3F64 000A0F64  B0 03 00 2A */	sth r0, 0x2a(r3)
/* 800A3F68 000A0F68  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 800A3F6C 000A0F6C  80 6D 89 7C */	lwz r3, __cpReg-_SDA_BASE_(r13)
/* 800A3F70 000A0F70  54 00 84 3E */	srwi r0, r0, 0x10
/* 800A3F74 000A0F74  B0 03 00 2E */	sth r0, 0x2e(r3)
/* 800A3F78 000A0F78  4B FE 44 81 */	bl PPCSync
/* 800A3F7C 000A0F7C  80 6D 89 40 */	lwz r3, lbl_80259CE0-_SDA_BASE_(r13)
/* 800A3F80 000A0F80  80 0D 89 44 */	lwz r0, lbl_80259CE4-_SDA_BASE_(r13)
/* 800A3F84 000A0F84  7C 03 00 40 */	cmplw r3, r0
/* 800A3F88 000A0F88  40 82 00 24 */	bne lbl_800A3FAC
/* 800A3F8C 000A0F8C  38 00 00 01 */	li r0, 1
/* 800A3F90 000A0F90  98 0D 89 4C */	stb r0, lbl_80259CEC-_SDA_BASE_(r13)
/* 800A3F94 000A0F94  38 60 00 01 */	li r3, 1
/* 800A3F98 000A0F98  38 80 00 00 */	li r4, 0
/* 800A3F9C 000A0F9C  48 00 01 69 */	bl __GXWriteFifoIntEnable
/* 800A3FA0 000A0FA0  38 60 00 01 */	li r3, 1
/* 800A3FA4 000A0FA4  48 00 01 2D */	bl __GXFifoLink
/* 800A3FA8 000A0FA8  48 00 00 20 */	b lbl_800A3FC8
lbl_800A3FAC:
/* 800A3FAC 000A0FAC  38 00 00 00 */	li r0, 0
/* 800A3FB0 000A0FB0  98 0D 89 4C */	stb r0, lbl_80259CEC-_SDA_BASE_(r13)
/* 800A3FB4 000A0FB4  38 60 00 00 */	li r3, 0
/* 800A3FB8 000A0FB8  38 80 00 00 */	li r4, 0
/* 800A3FBC 000A0FBC  48 00 01 49 */	bl __GXWriteFifoIntEnable
/* 800A3FC0 000A0FC0  38 60 00 00 */	li r3, 0
/* 800A3FC4 000A0FC4  48 00 01 0D */	bl __GXFifoLink
lbl_800A3FC8:
/* 800A3FC8 000A0FC8  38 60 00 01 */	li r3, 1
/* 800A3FCC 000A0FCC  38 80 00 01 */	li r4, 1
/* 800A3FD0 000A0FD0  48 00 01 65 */	bl __GXWriteFifoIntReset
/* 800A3FD4 000A0FD4  48 00 00 B5 */	bl __GXFifoReadEnable
/* 800A3FD8 000A0FD8  7F E3 FB 78 */	mr r3, r31
/* 800A3FDC 000A0FDC  4B FE 70 AD */	bl OSRestoreInterrupts
/* 800A3FE0 000A0FE0  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 800A3FE4 000A0FE4  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 800A3FE8 000A0FE8  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 800A3FEC 000A0FEC  38 21 00 18 */	addi r1, r1, 0x18
/* 800A3FF0 000A0FF0  7C 08 03 A6 */	mtlr r0
/* 800A3FF4 000A0FF4  4E 80 00 20 */	blr 

.global GXSetBreakPtCallback
GXSetBreakPtCallback:
/* 800A3FF8 000A0FF8  7C 08 02 A6 */	mflr r0
/* 800A3FFC 000A0FFC  90 01 00 04 */	stw r0, 4(r1)
/* 800A4000 000A1000  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 800A4004 000A1004  93 E1 00 14 */	stw r31, 0x14(r1)
/* 800A4008 000A1008  93 C1 00 10 */	stw r30, 0x10(r1)
/* 800A400C 000A100C  7C 7E 1B 78 */	mr r30, r3
/* 800A4010 000A1010  83 ED 89 54 */	lwz r31, lbl_80259CF4-_SDA_BASE_(r13)
/* 800A4014 000A1014  4B FE 70 4D */	bl OSDisableInterrupts
/* 800A4018 000A1018  93 CD 89 54 */	stw r30, lbl_80259CF4-_SDA_BASE_(r13)
/* 800A401C 000A101C  4B FE 70 6D */	bl OSRestoreInterrupts
/* 800A4020 000A1020  7F E3 FB 78 */	mr r3, r31
/* 800A4024 000A1024  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 800A4028 000A1028  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 800A402C 000A102C  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 800A4030 000A1030  38 21 00 18 */	addi r1, r1, 0x18
/* 800A4034 000A1034  7C 08 03 A6 */	mtlr r0
/* 800A4038 000A1038  4E 80 00 20 */	blr 

.global __GXFifoInit
__GXFifoInit:
/* 800A403C 000A103C  7C 08 02 A6 */	mflr r0
/* 800A4040 000A1040  3C 60 80 0A */	lis r3, GXCPInterruptHandler@ha
/* 800A4044 000A1044  90 01 00 04 */	stw r0, 4(r1)
/* 800A4048 000A1048  38 83 3B 3C */	addi r4, r3, GXCPInterruptHandler@l
/* 800A404C 000A104C  38 60 00 11 */	li r3, 0x11
/* 800A4050 000A1050  94 21 FF F8 */	stwu r1, -8(r1)
/* 800A4054 000A1054  4B FE 70 59 */	bl __OSSetInterruptHandler
/* 800A4058 000A1058  38 60 40 00 */	li r3, 0x4000
/* 800A405C 000A105C  4B FE 74 55 */	bl __OSUnmaskInterrupts
/* 800A4060 000A1060  4B FE 8F 99 */	bl OSGetCurrentThread
/* 800A4064 000A1064  38 00 00 00 */	li r0, 0
/* 800A4068 000A1068  90 6D 89 48 */	stw r3, lbl_80259CE8-_SDA_BASE_(r13)
/* 800A406C 000A106C  90 0D 89 50 */	stw r0, lbl_80259CF0-_SDA_BASE_(r13)
/* 800A4070 000A1070  90 0D 89 40 */	stw r0, lbl_80259CE0-_SDA_BASE_(r13)
/* 800A4074 000A1074  90 0D 89 44 */	stw r0, lbl_80259CE4-_SDA_BASE_(r13)
/* 800A4078 000A1078  80 01 00 0C */	lwz r0, 0xc(r1)
/* 800A407C 000A107C  38 21 00 08 */	addi r1, r1, 8
/* 800A4080 000A1080  7C 08 03 A6 */	mtlr r0
/* 800A4084 000A1084  4E 80 00 20 */	blr 

.global __GXFifoReadEnable
__GXFifoReadEnable:
/* 800A4088 000A1088  80 8D 97 08 */	lwz r4, __GXData-_SDA_BASE_(r13)
/* 800A408C 000A108C  38 00 00 01 */	li r0, 1
/* 800A4090 000A1090  80 64 00 08 */	lwz r3, 8(r4)
/* 800A4094 000A1094  50 03 07 FE */	rlwimi r3, r0, 0, 0x1f, 0x1f
/* 800A4098 000A1098  90 64 00 08 */	stw r3, 8(r4)
/* 800A409C 000A109C  80 04 00 08 */	lwz r0, 8(r4)
/* 800A40A0 000A10A0  80 6D 89 7C */	lwz r3, __cpReg-_SDA_BASE_(r13)
/* 800A40A4 000A10A4  B0 03 00 02 */	sth r0, 2(r3)
/* 800A40A8 000A10A8  4E 80 00 20 */	blr 

.global __GXFifoReadDisable
__GXFifoReadDisable:
/* 800A40AC 000A10AC  80 8D 97 08 */	lwz r4, __GXData-_SDA_BASE_(r13)
/* 800A40B0 000A10B0  38 00 00 00 */	li r0, 0
/* 800A40B4 000A10B4  80 64 00 08 */	lwz r3, 8(r4)
/* 800A40B8 000A10B8  50 03 07 FE */	rlwimi r3, r0, 0, 0x1f, 0x1f
/* 800A40BC 000A10BC  90 64 00 08 */	stw r3, 8(r4)
/* 800A40C0 000A10C0  80 04 00 08 */	lwz r0, 8(r4)
/* 800A40C4 000A10C4  80 6D 89 7C */	lwz r3, __cpReg-_SDA_BASE_(r13)
/* 800A40C8 000A10C8  B0 03 00 02 */	sth r0, 2(r3)
/* 800A40CC 000A10CC  4E 80 00 20 */	blr 

.global __GXFifoLink
__GXFifoLink:
/* 800A40D0 000A10D0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800A40D4 000A10D4  41 82 00 0C */	beq lbl_800A40E0
/* 800A40D8 000A10D8  38 80 00 01 */	li r4, 1
/* 800A40DC 000A10DC  48 00 00 08 */	b lbl_800A40E4
lbl_800A40E0:
/* 800A40E0 000A10E0  38 80 00 00 */	li r4, 0
lbl_800A40E4:
/* 800A40E4 000A10E4  80 6D 97 08 */	lwz r3, __GXData-_SDA_BASE_(r13)
/* 800A40E8 000A10E8  80 03 00 08 */	lwz r0, 8(r3)
/* 800A40EC 000A10EC  50 80 26 F6 */	rlwimi r0, r4, 4, 0x1b, 0x1b
/* 800A40F0 000A10F0  90 03 00 08 */	stw r0, 8(r3)
/* 800A40F4 000A10F4  80 03 00 08 */	lwz r0, 8(r3)
/* 800A40F8 000A10F8  80 6D 89 7C */	lwz r3, __cpReg-_SDA_BASE_(r13)
/* 800A40FC 000A10FC  B0 03 00 02 */	sth r0, 2(r3)
/* 800A4100 000A1100  4E 80 00 20 */	blr 

.global __GXWriteFifoIntEnable
__GXWriteFifoIntEnable:
/* 800A4104 000A1104  80 AD 97 08 */	lwz r5, __GXData-_SDA_BASE_(r13)
/* 800A4108 000A1108  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 800A410C 000A110C  80 85 00 08 */	lwz r4, 8(r5)
/* 800A4110 000A1110  50 64 17 7A */	rlwimi r4, r3, 2, 0x1d, 0x1d
/* 800A4114 000A1114  90 85 00 08 */	stw r4, 8(r5)
/* 800A4118 000A1118  80 65 00 08 */	lwz r3, 8(r5)
/* 800A411C 000A111C  50 03 1F 38 */	rlwimi r3, r0, 3, 0x1c, 0x1c
/* 800A4120 000A1120  90 65 00 08 */	stw r3, 8(r5)
/* 800A4124 000A1124  80 05 00 08 */	lwz r0, 8(r5)
/* 800A4128 000A1128  80 6D 89 7C */	lwz r3, __cpReg-_SDA_BASE_(r13)
/* 800A412C 000A112C  B0 03 00 02 */	sth r0, 2(r3)
/* 800A4130 000A1130  4E 80 00 20 */	blr 

.global __GXWriteFifoIntReset
__GXWriteFifoIntReset:
/* 800A4134 000A1134  80 AD 97 08 */	lwz r5, __GXData-_SDA_BASE_(r13)
/* 800A4138 000A1138  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 800A413C 000A113C  80 85 00 10 */	lwz r4, 0x10(r5)
/* 800A4140 000A1140  50 64 07 FE */	rlwimi r4, r3, 0, 0x1f, 0x1f
/* 800A4144 000A1144  90 85 00 10 */	stw r4, 0x10(r5)
/* 800A4148 000A1148  80 65 00 10 */	lwz r3, 0x10(r5)
/* 800A414C 000A114C  50 03 0F BC */	rlwimi r3, r0, 1, 0x1e, 0x1e
/* 800A4150 000A1150  90 65 00 10 */	stw r3, 0x10(r5)
/* 800A4154 000A1154  80 05 00 10 */	lwz r0, 0x10(r5)
/* 800A4158 000A1158  80 6D 89 7C */	lwz r3, __cpReg-_SDA_BASE_(r13)
/* 800A415C 000A115C  B0 03 00 04 */	sth r0, 4(r3)
/* 800A4160 000A1160  4E 80 00 20 */	blr 

.global GXSetCurrentGXThread
GXSetCurrentGXThread:
/* 800A4164 000A1164  7C 08 02 A6 */	mflr r0
/* 800A4168 000A1168  90 01 00 04 */	stw r0, 4(r1)
/* 800A416C 000A116C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800A4170 000A1170  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800A4174 000A1174  93 C1 00 08 */	stw r30, 8(r1)
/* 800A4178 000A1178  4B FE 6E E9 */	bl OSDisableInterrupts
/* 800A417C 000A117C  83 CD 89 48 */	lwz r30, lbl_80259CE8-_SDA_BASE_(r13)
/* 800A4180 000A1180  7C 7F 1B 78 */	mr r31, r3
/* 800A4184 000A1184  4B FE 8E 75 */	bl OSGetCurrentThread
/* 800A4188 000A1188  90 6D 89 48 */	stw r3, lbl_80259CE8-_SDA_BASE_(r13)
/* 800A418C 000A118C  7F E3 FB 78 */	mr r3, r31
/* 800A4190 000A1190  4B FE 6E F9 */	bl OSRestoreInterrupts
/* 800A4194 000A1194  7F C3 F3 78 */	mr r3, r30
/* 800A4198 000A1198  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800A419C 000A119C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800A41A0 000A11A0  83 C1 00 08 */	lwz r30, 8(r1)
/* 800A41A4 000A11A4  38 21 00 10 */	addi r1, r1, 0x10
/* 800A41A8 000A11A8  7C 08 03 A6 */	mtlr r0
/* 800A41AC 000A11AC  4E 80 00 20 */	blr 

.global GXGetGPFifo
GXGetGPFifo:
/* 800A41B0 000A11B0  80 6D 89 44 */	lwz r3, lbl_80259CE4-_SDA_BASE_(r13)
/* 800A41B4 000A11B4  4E 80 00 20 */	blr 
