.include "macros.inc"

.section .text

.global GXCallDisplayList
GXCallDisplayList:
/* 800D14E4 000CE4E4  7C 08 02 A6 */	mflr r0
/* 800D14E8 000CE4E8  90 01 00 04 */	stw r0, 4(r1)
/* 800D14EC 000CE4EC  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 800D14F0 000CE4F0  93 E1 00 14 */	stw r31, 0x14(r1)
/* 800D14F4 000CE4F4  3B E4 00 00 */	addi r31, r4, 0
/* 800D14F8 000CE4F8  93 C1 00 10 */	stw r30, 0x10(r1)
/* 800D14FC 000CE4FC  3B C3 00 00 */	addi r30, r3, 0
/* 800D1500 000CE500  80 AD 97 08 */	lwz r5, __GXData-_SDA_BASE_(r13)
/* 800D1504 000CE504  80 05 05 AC */	lwz r0, 0x5ac(r5)
/* 800D1508 000CE508  28 00 00 00 */	cmplwi r0, 0
/* 800D150C 000CE50C  41 82 00 08 */	beq lbl_800D1514
/* 800D1510 000CE510  4B FD 47 E5 */	bl __GXSetDirtyState
lbl_800D1514:
/* 800D1514 000CE514  80 6D 97 08 */	lwz r3, __GXData-_SDA_BASE_(r13)
/* 800D1518 000CE518  80 03 00 00 */	lwz r0, 0(r3)
/* 800D151C 000CE51C  28 00 00 00 */	cmplwi r0, 0
/* 800D1520 000CE520  40 82 00 08 */	bne lbl_800D1528
/* 800D1524 000CE524  4B FD 49 21 */	bl __GXSendFlushPrim
lbl_800D1528:
/* 800D1528 000CE528  38 00 00 40 */	li r0, 0x40
/* 800D152C 000CE52C  3C 60 CC 01 */	lis r3, 0xCC008000@ha
/* 800D1530 000CE530  98 03 80 00 */	stb r0, 0xCC008000@l(r3)
/* 800D1534 000CE534  93 C3 80 00 */	stw r30, -0x8000(r3)
/* 800D1538 000CE538  93 E3 80 00 */	stw r31, -0x8000(r3)
/* 800D153C 000CE53C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 800D1540 000CE540  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 800D1544 000CE544  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 800D1548 000CE548  38 21 00 18 */	addi r1, r1, 0x18
/* 800D154C 000CE54C  7C 08 03 A6 */	mtlr r0
/* 800D1550 000CE550  4E 80 00 20 */	blr 
