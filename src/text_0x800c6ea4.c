#include "types.h"

// extern u32 lbl_800C7018;
// extern u32 lbl_800C7060;

extern u32 lbl_80189DE8;
extern u32 lbl_80189DF0;
extern u32 lbl_80189DF4;
extern u32 lbl_80189DF8;

extern u32 lbl_8020930C;
extern u32 lbl_8020930D;
extern u32 lbl_80259870;
extern u32 lbl_80259874;

void OSInit();
void VIInit();
void PADInit();
void DVDInit();
void* OSGetArenaLo();
void* OSGetArenaHi();
void* OSInitAlloc(void*, void*, int);
void OSSetArenaLo(void*);
u32 OSSetCurrentHeap(u32);
u32 OSCreateHeap(void*, void*);
void VIWaitForRetrace();

void func_800897C8(u32, u32);
void func_800898C4(u32, u32);
void func_800D1C48();
void func_800D1C8C();
void func_800D3F30();
void func_800D3F74();

#ifdef NON_MATCHING
// Doesn't work in it's current state
void func_800C6EA4() {
    void* arenaLo;
    void* arenaHi;
    void* newArenaLo;
    u32 newHeap;

    if(lbl_80189DE8 == 0) {
        OSInit();
        VIInit();
        PADInit();
        DVDInit();

        arenaLo = OSGetArenaLo();
        arenaHi = OSGetArenaHi();
        newArenaLo = OSInitAlloc(arenaLo, arenaHi, 1);
        OSSetArenaLo(newArenaLo);
        newHeap = OSCreateHeap(arenaLo, arenaHi);
        OSSetCurrentHeap(newHeap);
        OSSetArenaLo(arenaHi);
        lbl_80189DE8 = 1;
    }
}
#else
void asm func_800C6EA4() {
nofralloc
/* 800C6EA4 000C3EA4  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 800C6EA8 000C3EA8  7C 08 02 A6 */	mflr r0
/* 800C6EAC 000C3EAC  BF A1 00 0C */	stmw r29, 0xc(r1)
/* 800C6EB0 000C3EB0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 800C6EB4 000C3EB4  3F A0 80 19 */	lis r29, lbl_80189DE8@ha
/* 800C6EB8 000C3EB8  80 1D 9D E8 */	lwz r0, lbl_80189DE8@l(r29)
/* 800C6EBC 000C3EBC  2C 00 00 00 */	cmpwi r0, 0
/* 800C6EC0 000C3EC0  40 82 00 64 */	bne lbl_800C6F24
/* 800C6EC4 000C3EC4  4B FC 18 C5 */	bl OSInit
/* 800C6EC8 000C3EC8  4B FD 07 21 */	bl VIInit
/* 800C6ECC 000C3ECC  4B FD 2C 09 */	bl PADInit
/* 800C6ED0 000C3ED0  4B FC C3 E1 */	bl DVDInit
/* 800C6ED4 000C3ED4  4B FC 2B 61 */	bl OSGetArenaLo
/* 800C6ED8 000C3ED8  7C 7F 1B 78 */	mr r31, r3
/* 800C6EDC 000C3EDC  4B FC 2B 51 */	bl OSGetArenaHi
/* 800C6EE0 000C3EE0  7C 7E 1B 78 */	mr r30, r3
/* 800C6EE4 000C3EE4  38 A0 00 01 */	li r5, 1
/* 800C6EE8 000C3EE8  7F C4 F3 78 */	mr r4, r30
/* 800C6EEC 000C3EEC  7F E3 FB 78 */	mr r3, r31
/* 800C6EF0 000C3EF0  4B FC 2A 61 */	bl OSInitAlloc
/* 800C6EF4 000C3EF4  57 DE 00 34 */	rlwinm r30, r30, 0, 0, 0x1a
/* 800C6EF8 000C3EF8  7C 7F 1B 78 */	mr r31, r3
/* 800C6EFC 000C3EFC  4B FC 2B 49 */	bl OSSetArenaLo
/* 800C6F00 000C3F00  38 7F 00 1F */	addi r3, r31, 0x1f
/* 800C6F04 000C3F04  7F C4 F3 78 */	mr r4, r30
/* 800C6F08 000C3F08  54 63 00 34 */	rlwinm r3, r3, 0, 0, 0x1a
/* 800C6F0C 000C3F0C  4B FC 2A B5 */	bl OSCreateHeap
/* 800C6F10 000C3F10  4B FC 2A 31 */	bl OSSetCurrentHeap
/* 800C6F14 000C3F14  7F C3 F3 78 */	mr r3, r30
/* 800C6F18 000C3F18  4B FC 2B 2D */	bl OSSetArenaLo
/* 800C6F1C 000C3F1C  38 00 00 01 */	li r0, 1
/* 800C6F20 000C3F20  90 1D 9D E8 */	stw r0, -0x6218(r29)
lbl_800C6F24:
/* 800C6F24 000C3F24  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 800C6F28 000C3F28  7C 08 03 A6 */	mtlr r0
/* 800C6F2C 000C3F2C  BB A1 00 0C */	lmw r29, 0xc(r1)
/* 800C6F30 000C3F30  38 21 00 18 */	addi r1, r1, 0x18
/* 800C6F34 000C3F34  4E 80 00 20 */	blr 
}
#endif

void asm func_800C6F38() {
nofralloc
/* 800C6F38 000C3F38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800C6F3C 000C3F3C  7C 08 02 A6 */	mflr r0
/* 800C6F40 000C3F40  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800C6F44 000C3F44  90 01 00 14 */	stw r0, 0x14(r1)
/* 800C6F48 000C3F48  3D 20 80 19 */	lis r9, lbl_80189DE8@ha
/* 800C6F4C 000C3F4C  7C 7F 1B 78 */	mr r31, r3
/* 800C6F50 000C3F50  80 09 9D E8 */	lwz r0, lbl_80189DE8@l(r9)
/* 800C6F54 000C3F54  2C 00 00 00 */	cmpwi r0, 0
/* 800C6F58 000C3F58  40 82 00 08 */	bne lbl_800C6F60
/* 800C6F5C 000C3F5C  4B FF FF 49 */	bl func_800C6EA4
lbl_800C6F60:
/* 800C6F60 000C3F60  7F E4 FB 78 */	mr r4, r31
/* 800C6F64 000C3F64  38 60 00 00 */	li r3, 0
/* 800C6F68 000C3F68  4B FC 28 61 */	bl func_800897C8
/* 800C6F6C 000C3F6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800C6F70 000C3F70  7C 08 03 A6 */	mtlr r0
/* 800C6F74 000C3F74  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800C6F78 000C3F78  38 21 00 10 */	addi r1, r1, 0x10
/* 800C6F7C 000C3F7C  4E 80 00 20 */	blr 
}

#ifdef NON_MATCHING
void func_800C6F80(u32 a1) {
    if(lbl_80189DE8 == 0)
        func_800C6EA4();
    
    func_800897C8(0, a1);
}
#else
void asm func_800C6F80() {
nofralloc
/* 800C6F80 000C3F80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800C6F84 000C3F84  7C 08 02 A6 */	mflr r0
/* 800C6F88 000C3F88  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800C6F8C 000C3F8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800C6F90 000C3F90  3D 20 80 19 */	lis r9, lbl_80189DE8@ha
/* 800C6F94 000C3F94  7C 7F 1B 78 */	mr r31, r3
/* 800C6F98 000C3F98  80 09 9D E8 */	lwz r0, lbl_80189DE8@l(r9)
/* 800C6F9C 000C3F9C  2C 00 00 00 */	cmpwi r0, 0
/* 800C6FA0 000C3FA0  40 82 00 08 */	bne lbl_800C6FA8
/* 800C6FA4 000C3FA4  4B FF FF 01 */	bl func_800C6EA4
lbl_800C6FA8:
/* 800C6FA8 000C3FA8  7F E4 FB 78 */	mr r4, r31
/* 800C6FAC 000C3FAC  38 60 00 00 */	li r3, 0
/* 800C6FB0 000C3FB0  4B FC 28 19 */	bl func_800897C8
/* 800C6FB4 000C3FB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800C6FB8 000C3FB8  7C 08 03 A6 */	mtlr r0
/* 800C6FBC 000C3FBC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800C6FC0 000C3FC0  38 21 00 10 */	addi r1, r1, 0x10
/* 800C6FC4 000C3FC4  4E 80 00 20 */	blr 
}
#endif

#ifdef NON_MATCHING
void func_800C6FC8(u32 a1) {
    func_800898C4(0, a1);
}
#else
void asm func_800C6FC8() {
nofralloc
/* 800C6FC8 000C3FC8  94 21 FF F8 */	stwu r1, -8(r1)
/* 800C6FCC 000C3FCC  7C 08 02 A6 */	mflr r0
/* 800C6FD0 000C3FD0  90 01 00 0C */	stw r0, 0xc(r1)
/* 800C6FD4 000C3FD4  7C 64 1B 78 */	mr r4, r3
/* 800C6FD8 000C3FD8  38 60 00 00 */	li r3, 0
/* 800C6FDC 000C3FDC  4B FC 28 E9 */	bl func_800898C4
/* 800C6FE0 000C3FE0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 800C6FE4 000C3FE4  7C 08 03 A6 */	mtlr r0
/* 800C6FE8 000C3FE8  38 21 00 08 */	addi r1, r1, 8
/* 800C6FEC 000C3FEC  4E 80 00 20 */	blr 
}
#endif

#undef NON_MATCHING

void asm func_800C6FF0() {
nofralloc
/* 800C6FF0 000C3FF0  94 21 FF F8 */	stwu r1, -8(r1)
/* 800C6FF4 000C3FF4  7C 08 02 A6 */	mflr r0
/* 800C6FF8 000C3FF8  90 01 00 0C */	stw r0, 0xc(r1)
/* 800C6FFC 000C3FFC  7C 64 1B 78 */	mr r4, r3
/* 800C7000 000C4000  38 60 00 00 */	li r3, 0
/* 800C7004 000C4004  4B FC 28 C1 */	bl func_800898C4
/* 800C7008 000C4008  80 01 00 0C */	lwz r0, 0xc(r1)
/* 800C700C 000C400C  7C 08 03 A6 */	mtlr r0
/* 800C7010 000C4010  38 21 00 08 */	addi r1, r1, 8
/* 800C7014 000C4014  4E 80 00 20 */	blr 
lbl_800C7018:
/* 800C7018 000C4018  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800C701C 000C401C  7C 08 02 A6 */	mflr r0
/* 800C7020 000C4020  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800C7024 000C4024  90 01 00 14 */	stw r0, 0x14(r1)
/* 800C7028 000C4028  3D 20 80 19 */	lis r9, lbl_80189DE8@ha
/* 800C702C 000C402C  7C 7F 1B 78 */	mr r31, r3
/* 800C7030 000C4030  80 09 9D E8 */	lwz r0, lbl_80189DE8@l(r9)
/* 800C7034 000C4034  2C 00 00 00 */	cmpwi r0, 0
/* 800C7038 000C4038  40 82 00 08 */	bne lbl_800C7040
/* 800C703C 000C403C  4B FF FE 69 */	bl func_800C6EA4
lbl_800C7040:
/* 800C7040 000C4040  7F E4 FB 78 */	mr r4, r31
/* 800C7044 000C4044  38 60 00 00 */	li r3, 0
/* 800C7048 000C4048  4B FC 27 81 */	bl func_800897C8
/* 800C704C 000C404C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800C7050 000C4050  7C 08 03 A6 */	mtlr r0
/* 800C7054 000C4054  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800C7058 000C4058  38 21 00 10 */	addi r1, r1, 0x10
/* 800C705C 000C405C  4E 80 00 20 */	blr 
lbl_800C7060:
/* 800C7060 000C4060  94 21 FF F8 */	stwu r1, -8(r1)
/* 800C7064 000C4064  7C 08 02 A6 */	mflr r0
/* 800C7068 000C4068  90 01 00 0C */	stw r0, 0xc(r1)
/* 800C706C 000C406C  7C 64 1B 78 */	mr r4, r3
/* 800C7070 000C4070  38 60 00 00 */	li r3, 0
/* 800C7074 000C4074  4B FC 28 51 */	bl func_800898C4
/* 800C7078 000C4078  80 01 00 0C */	lwz r0, 0xc(r1)
/* 800C707C 000C407C  7C 08 03 A6 */	mtlr r0
/* 800C7080 000C4080  38 21 00 08 */	addi r1, r1, 8
/* 800C7084 000C4084  4E 80 00 20 */	blr 
}

void asm func_800C7088() {
nofralloc
/* 800C7088 000C4088  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800C708C 000C408C  7C 08 02 A6 */	mflr r0
/* 800C7090 000C4090  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800C7094 000C4094  90 01 00 14 */	stw r0, 0x14(r1)
/* 800C7098 000C4098  3D 20 80 19 */	lis r9, lbl_80189DE8@ha
/* 800C709C 000C409C  7C 7F 1B 78 */	mr r31, r3
/* 800C70A0 000C40A0  80 09 9D E8 */	lwz r0, lbl_80189DE8@l(r9)
/* 800C70A4 000C40A4  2C 00 00 00 */	cmpwi r0, 0
/* 800C70A8 000C40A8  40 82 00 08 */	bne lbl_800C70B0
/* 800C70AC 000C40AC  4B FF FD F9 */	bl func_800C6EA4
lbl_800C70B0:
/* 800C70B0 000C40B0  7F E4 FB 78 */	mr r4, r31
/* 800C70B4 000C40B4  38 60 00 00 */	li r3, 0
/* 800C70B8 000C40B8  4B FC 27 11 */	bl func_800897C8
/* 800C70BC 000C40BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800C70C0 000C40C0  7C 08 03 A6 */	mtlr r0
/* 800C70C4 000C40C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800C70C8 000C40C8  38 21 00 10 */	addi r1, r1, 0x10
/* 800C70CC 000C40CC  4E 80 00 20 */	blr 
}

void asm func_800C70D0() {
nofralloc
/* 800C70D0 000C40D0  94 21 FF F8 */	stwu r1, -8(r1)
/* 800C70D4 000C40D4  7C 08 02 A6 */	mflr r0
/* 800C70D8 000C40D8  90 01 00 0C */	stw r0, 0xc(r1)
/* 800C70DC 000C40DC  3D 20 80 0C */	lis r9, 0x800C7018@ha
/* 800C70E0 000C40E0  3D 60 80 0C */	lis r11, 0x800C7060@ha
/* 800C70E4 000C40E4  39 29 70 18 */	addi r9, r9, 0x800C7018@l
/* 800C70E8 000C40E8  39 6B 70 60 */	addi r11, r11, 0x800C7060@l
/* 800C70EC 000C40EC  3D 40 80 26 */	lis r10, lbl_80259870@ha
/* 800C70F0 000C40F0  3D 00 80 26 */	lis r8, lbl_80259874@ha
/* 800C70F4 000C40F4  91 2A 98 70 */	stw r9, lbl_80259870@l(r10)
/* 800C70F8 000C40F8  91 68 98 74 */	stw r11, lbl_80259874@l(r8)
/* 800C70FC 000C40FC  4B FF FD A9 */	bl func_800C6EA4
/* 800C7100 000C4100  80 01 00 0C */	lwz r0, 0xc(r1)
/* 800C7104 000C4104  7C 08 03 A6 */	mtlr r0
/* 800C7108 000C4108  38 21 00 08 */	addi r1, r1, 8
/* 800C710C 000C410C  4E 80 00 20 */	blr 
}

void asm func_800C7110(u32 a1, u16 a2) {
nofralloc
/* 800C7110 000C4110  94 21 FF F8 */	stwu r1, -8(r1)
/* 800C7114 000C4114  7C 08 02 A6 */	mflr r0
/* 800C7118 000C4118  90 01 00 0C */	stw r0, 0xc(r1)
/* 800C711C 000C411C  38 00 00 00 */	li r0, 0
/* 800C7120 000C4120  60 00 FF FF */	ori r0, r0, 0xffff
/* 800C7124 000C4124  7C 04 00 00 */	cmpw r4, r0
/* 800C7128 000C4128  40 82 00 48 */	bne lbl_800C7170
/* 800C712C 000C412C  2C 03 00 00 */	cmpwi r3, 0
/* 800C7130 000C4130  41 82 00 20 */	beq lbl_800C7150
/* 800C7134 000C4134  3C 60 80 21 */	lis r3, lbl_8020930C@ha
/* 800C7138 000C4138  38 63 93 0C */	addi r3, r3, lbl_8020930C@l
/* 800C713C 000C413C  48 00 CD F5 */	bl func_800D3F30
/* 800C7140 000C4140  3C 60 80 21 */	lis r3, lbl_8020930D@ha
/* 800C7144 000C4144  38 63 93 0D */	addi r3, r3, lbl_8020930D@l
/* 800C7148 000C4148  48 00 AB 01 */	bl func_800D1C48
/* 800C714C 000C414C  48 00 00 24 */	b lbl_800C7170
lbl_800C7150:
/* 800C7150 000C4150  3C 60 80 21 */	lis r3, lbl_8020930D@ha
/* 800C7154 000C4154  38 80 00 02 */	li r4, 2
/* 800C7158 000C4158  38 63 93 0D */	addi r3, r3, lbl_8020930D@l
/* 800C715C 000C415C  48 00 AB 31 */	bl func_800D1C8C
/* 800C7160 000C4160  3C 60 80 21 */	lis r3, lbl_8020930C@ha
/* 800C7164 000C4164  38 80 00 02 */	li r4, 2
/* 800C7168 000C4168  38 63 93 0C */	addi r3, r3, lbl_8020930C@l
/* 800C716C 000C416C  48 00 CE 09 */	bl func_800D3F74
lbl_800C7170:
/* 800C7170 000C4170  80 01 00 0C */	lwz r0, 0xc(r1)
/* 800C7174 000C4174  7C 08 03 A6 */	mtlr r0
/* 800C7178 000C4178  38 21 00 08 */	addi r1, r1, 8
/* 800C717C 000C417C  4E 80 00 20 */	blr 
}

#ifdef NON_MATCHING
void func_800C7180() {
    func_800C7110(1, 0xffff);
}
#else
void asm func_800C7180() {
nofralloc
/* 800C7180 000C4180  94 21 FF F8 */	stwu r1, -8(r1)
/* 800C7184 000C4184  7C 08 02 A6 */	mflr r0
/* 800C7188 000C4188  90 01 00 0C */	stw r0, 0xc(r1)
/* 800C718C 000C418C  38 80 00 00 */	li r4, 0
/* 800C7190 000C4190  38 60 00 01 */	li r3, 1
/* 800C7194 000C4194  60 84 FF FF */	ori r4, r4, 0xffff
/* 800C7198 000C4198  4B FF FF 79 */	bl func_800C7110
/* 800C719C 000C419C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 800C71A0 000C41A0  7C 08 03 A6 */	mtlr r0
/* 800C71A4 000C41A4  38 21 00 08 */	addi r1, r1, 8
/* 800C71A8 000C41A8  4E 80 00 20 */	blr 
}
#endif

#ifdef NON_MATCHING
void func_800C71AC() {
    func_800C7110(0, 0xffff);
}
#else
void asm func_800C71AC() {
nofralloc
/* 800C71AC 000C41AC  94 21 FF F8 */	stwu r1, -8(r1)
/* 800C71B0 000C41B0  7C 08 02 A6 */	mflr r0
/* 800C71B4 000C41B4  90 01 00 0C */	stw r0, 0xc(r1)
/* 800C71B8 000C41B8  38 80 00 00 */	li r4, 0
/* 800C71BC 000C41BC  38 60 00 00 */	li r3, 0
/* 800C71C0 000C41C0  60 84 FF FF */	ori r4, r4, 0xffff
/* 800C71C4 000C41C4  4B FF FF 4D */	bl func_800C7110
/* 800C71C8 000C41C8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 800C71CC 000C41CC  7C 08 03 A6 */	mtlr r0
/* 800C71D0 000C41D0  38 21 00 08 */	addi r1, r1, 8
/* 800C71D4 000C41D4  4E 80 00 20 */	blr 
}
#endif

void func_800C71D8() {
    return;
}

u32 func_800C71DC() {
    return 0;
}

void func_800C71E4() {
    return;
}

u32 func_800C71E8() {
    return 0;
}

void asm func_800C71F0() {
nofralloc
/* 800C71F0 000C41F0  94 21 FF F8 */	stwu r1, -8(r1)
/* 800C71F4 000C41F4  7C 08 02 A6 */	mflr r0
/* 800C71F8 000C41F8  90 01 00 0C */	stw r0, 0xc(r1)
/* 800C71FC 000C41FC  4B FD 08 9D */	bl VIWaitForRetrace
/* 800C7200 000C4200  38 60 00 00 */	li r3, 0
/* 800C7204 000C4204  80 01 00 0C */	lwz r0, 0xc(r1)
/* 800C7208 000C4208  7C 08 03 A6 */	mtlr r0
/* 800C720C 000C420C  38 21 00 08 */	addi r1, r1, 8
/* 800C7210 000C4210  4E 80 00 20 */	blr 
}

void asm func_800C7214() {
nofralloc
/* 800C7214 000C4214  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800C7218 000C4218  7C 80 23 79 */	or. r0, r4, r4
/* 800C721C 000C421C  7C 09 03 A6 */	mtctr r0
/* 800C7220 000C4220  40 81 00 48 */	ble lbl_800C7268
/* 800C7224 000C4224  38 E1 00 08 */	addi r7, r1, 8
/* 800C7228 000C4228  39 00 00 00 */	li r8, 0
lbl_800C722C:
/* 800C722C 000C422C  7C 08 18 2E */	lwzx r0, r8, r3
/* 800C7230 000C4230  90 01 00 08 */	stw r0, 8(r1)
/* 800C7234 000C4234  89 27 00 01 */	lbz r9, 1(r7)
/* 800C7238 000C4238  88 01 00 08 */	lbz r0, 8(r1)
/* 800C723C 000C423C  89 67 00 02 */	lbz r11, 2(r7)
/* 800C7240 000C4240  55 29 40 2E */	slwi r9, r9, 8
/* 800C7244 000C4244  89 47 00 03 */	lbz r10, 3(r7)
/* 800C7248 000C4248  7C 00 4B 78 */	or r0, r0, r9
/* 800C724C 000C424C  55 6B 80 1E */	slwi r11, r11, 0x10
/* 800C7250 000C4250  7C 00 5B 78 */	or r0, r0, r11
/* 800C7254 000C4254  55 4A C0 0E */	slwi r10, r10, 0x18
/* 800C7258 000C4258  7C 00 53 78 */	or r0, r0, r10
/* 800C725C 000C425C  7C 08 19 2E */	stwx r0, r8, r3
/* 800C7260 000C4260  39 08 00 04 */	addi r8, r8, 4
/* 800C7264 000C4264  42 00 FF C8 */	bdnz lbl_800C722C
lbl_800C7268:
/* 800C7268 000C4268  38 21 00 10 */	addi r1, r1, 0x10
/* 800C726C 000C426C  4E 80 00 20 */	blr 
}

void func_800C7270() {}

#ifdef NON_MATCHING
void func_800C7274(u32 a1) {
    lbl_80189DF0 = a1;
}
#else
void asm func_800C7274(u32 a1) {
nofralloc
/* 800C7274 000C4274  3D 20 80 19 */	lis r9, lbl_80189DF0@ha
/* 800C7278 000C4278  90 69 9D F0 */	stw r3, lbl_80189DF0@l(r9)
/* 800C727C 000C427C  4E 80 00 20 */	blr 
}
#endif

#ifdef NON_MATCHING
void func_800C7280(u32 a1) {
    lbl_80189DF4 = a1;
}
#else
void asm func_800C7280() {
nofralloc
/* 800C7280 000C4280  3D 20 80 19 */	lis r9, lbl_80189DF4@ha
/* 800C7284 000C4284  90 69 9D F4 */	stw r3, lbl_80189DF4@l(r9)
/* 800C7288 000C4288  4E 80 00 20 */	blr 
}
#endif

#ifdef NON_MATCHING
void func_800C728C(u32 a1) {
    lbl_80189DF8 = a1;
}
#else
void asm func_800C728C() {
nofralloc
/* 800C728C 000C428C  3D 20 80 19 */	lis r9, lbl_80189DF8@ha
/* 800C7290 000C4290  90 69 9D F8 */	stw r3, lbl_80189DF8@l(r9)
/* 800C7294 000C4294  4E 80 00 20 */	blr 
}
#endif