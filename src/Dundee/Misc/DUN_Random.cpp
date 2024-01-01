#include "types.h"

#if 0
void DUN_sgenrand(unsigned int) {

}
#else
dontmangle __ASM void DUN_sgenrand__FUi() {
	asm volatile(
		"lis 11, lbl_80192480@ha\t\n"
		"lis 9, lbl_800FB5C0@ha\t\n"
		"li 0, 1\t\n"
		"lis 8, 0x00010DCD@h\t\n"
		"stw 0, lbl_800FB5C0@l(9)\t\n"
		"addi 6, 11, lbl_80192480@l\t\n"
		"stw 3, 0x2480(11)\t\n"
		"lis 7, lbl_800FB5C0@ha\t\n"
		"ori 8, 8, 0x00010DCD@l\t\n"
		"lbl_800049A4:\t\n"
		"lwz 11, lbl_800FB5C0@l(7)\t\n"
		"addi 0, 11, -1\t\n"
		"addi 10, 11, 1\t\n"
		"slwi 0, 0, 2\t\n"
		"slwi 11, 11, 2\t\n"
		"lwzx 9, 6, 0\t\n"
		"cmpwi 10, 0x26f\t\n"
		"stw 10, -0x4a40(7)\t\n"
		"mullw 9, 9, 8\t\n"
		"stwx 9, 6, 11\t\n"
		"ble lbl_800049A4\t\n"
	);
}
#endif

#if 0
dontmangle void func_800049D4() {

}
#else
dontmangle __ASM void func_800049D4() {
	asm volatile(
		"stwu 1, -0x10(1)\t\n"
		"mflr 0\t\n"
		"stw 31, 0xc(1)\t\n"
		"stw 0, 0x14(1)\t\n"
		"lis 9, lbl_800FB5C0@ha\t\n"
		"lis 31, 0x8019\t\n"
		"lwz 0, lbl_800FB5C0@l(9)\t\n"
		"cmpwi 0, 0x26f\t\n"
		"ble lbl_80004B08\t\n"
		"cmpwi 0, 0x271\t\n"
		"bne lbl_80004A08\t\n"
		"li 3, 0x1105\t\n"
		"bl DUN_sgenrand__FUi\t\n"
		"lbl_80004A08:\t\n"
		"li 0, 0xe3\t\n"
		"lis 9, lbl_800FB5C4@ha\t\n"
		"mtctr 0\t\n"
		"addi 6, 9, lbl_800FB5C4@l\t\n"
		"addi 8, 31, 0x2480\t\n"
		"li 7, 0\t\n"
		"lbl_80004A20:\t\n"
		"lwz 11, 0(8)\t\n"
		"addi 7, 7, 1\t\n"
		"lwz 0, 4(8)\t\n"
		"rlwinm 11, 11, 0, 0, 0\t\n"
		"lwz 9, 0x634(8)\t\n"
		"clrlwi 0, 0, 1\t\n"
		"or 3, 11, 0\t\n"
		"rlwinm 10, 3, 2, 0x1d, 0x1d\t\n"
		"srwi 0, 3, 1\t\n"
		"lwzx 11, 10, 6\t\n"
		"xor 9, 9, 0\t\n"
		"xor 9, 9, 11\t\n"
		"stw 9, 0(8)\t\n"
		"addi 8, 8, 4\t\n"
		"bdnz lbl_80004A20\t\n"
		"cmpwi 7, 0x26e\t\n"
		"bgt lbl_80004ABC\t\n"
		"lis 9, lbl_80192480@ha\t\n"
		"lis 11, lbl_800FB5C4@ha\t\n"
		"addi 9, 9, lbl_80192480@l\t\n"
		"slwi 0, 7, 2\t\n"
		"addi 6, 11, lbl_800FB5C4@l\t\n"
		"add 8, 0, 9\t\n"
		"lbl_80004A7C:\t\n"
		"lwz 10, 0(8)\t\n"
		"addi 7, 7, 1\t\n"
		"lwz 0, 4(8)\t\n"
		"cmpwi 7, 0x26e\t\n"
		"rlwinm 10, 10, 0, 0, 0\t\n"
		"lwz 9, -0x38c(8)\t\n"
		"clrlwi 0, 0, 1\t\n"
		"or 3, 10, 0\t\n"
		"rlwinm 11, 3, 2, 0x1d, 0x1d\t\n"
		"srwi 0, 3, 1\t\n"
		"lwzx 10, 11, 6\t\n"
		"xor 9, 9, 0\t\n"
		"xor 9, 9, 10\t\n"
		"stw 9, 0(8)\t\n"
		"addi 8, 8, 4\t\n"
		"ble lbl_80004A7C\t\n"
		"lbl_80004ABC:\t\n"
		"lis 11, lbl_80192480@ha\t\n"
		"lis 8, lbl_800FB5C4@ha\t\n"
		"addi 7, 11, lbl_80192480@l\t\n"
		"lwz 9, 0x2480(11)\t\n"
		"lwz 0, 0x9bc(7)\t\n"
		"addi 8, 8, lbl_800FB5C4@l\t\n"
		"clrlwi 9, 9, 1\t\n"
		"lwz 11, 0x630(7)\t\n"
		"rlwinm 0, 0, 0, 0, 0\t\n"
		"lis 5, lbl_800FB5C0@ha\t\n"
		"or 3, 0, 9\t\n"
		"li 6, 0\t\n"
		"rlwinm 0, 3, 2, 0x1d, 0x1d\t\n"
		"srwi 9, 3, 1\t\n"
		"lwzx 10, 8, 0\t\n"
		"xor 11, 11, 9\t\n"
		"stw 6, lbl_800FB5C0@l(5)\t\n"
		"xor 11, 11, 10\t\n"
		"stw 11, 0x9bc(7)\t\n"
		"lbl_80004B08:\t\n"
		"lis 8, lbl_800FB5C0@ha\t\n"
		"lis 9, lbl_80192480@ha\t\n"
		"lwz 11, lbl_800FB5C0@l(8)\t\n"
		"addi 9, 9, lbl_80192480@l\t\n"
		"lis 10, 0x9D2C5680@h\t\n"
		"slwi 0, 11, 2\t\n"
		"ori 10, 10, 0x9D2C5680@l\t\n"
		"lwzx 3, 9, 0\t\n"
		"addi 11, 11, 1\t\n"
		"stw 11, -0x4a40(8)\t\n"
		"srwi 9, 3, 0xb\t\n"
		"xor 3, 3, 9\t\n"
		"slwi 0, 3, 7\t\n"
		"and 0, 0, 10\t\n"
		"xor 3, 3, 0\t\n"
		"slwi 9, 3, 0xf\t\n"
		"andis. 9, 9, 0xefc6\t\n"
		"xor 3, 3, 9\t\n"
		"srwi 0, 3, 0x12\t\n"
		"xor 3, 3, 0\t\n"
		"clrlwi 3, 3, 0x11\t\n"
		"lwz 0, 0x14(1)\t\n"
		"mtlr 0\t\n"
		"lwz 31, 0xc(1)\t\n"
		"addi 1, 1, 0x10\t\n"
	);
}
#endif

#if 0
void DUN_frand(void) {

}
#else
dontmangle __ASM void DUN_frand__Fv() {
	asm volatile(
		"stwu 1, -0x10(1)\t\n"
		"mflr 0\t\n"
		"stw 0, 0x14(1)\t\n"
		"bl func_800049D4\t\n"
		"lis 0, 0x4330\t\n"
		"stw 3, 0xc(1)\t\n"
		"lis 9, lbl_800EEBF0@ha\t\n"
		"lfd 0, lbl_800EEBF0@l(9)\t\n"
		"lis 10, lbl_800EEBF8@ha\t\n"
		"stw 0, 8(1)\t\n"
		"lfs 13, lbl_800EEBF8@l(10)\t\n"
		"lfd 1, 8(1)\t\n"
		"fsub 1, 1, 0\t\n"
		"frsp 1, 1\t\n"
		"fdivs 1, 1, 13\t\n"
		"lwz 0, 0x14(1)\t\n"
		"mtlr 0\t\n"
		"addi 1, 1, 0x10\t\n"
	);
}
#endif

#if 0
dontmangle void func_80004BBC() {

}
#else
dontmangle __ASM void func_80004BBC() {
	asm volatile(
		"stwu 1, -8(1)\t\n"
		"mflr 0\t\n"
		"stw 0, 0xc(1)\t\n"
		"bl func_800049D4\t\n"
		"clrlwi 3, 3, 0x18\t\n"
		"lwz 0, 0xc(1)\t\n"
		"mtlr 0\t\n"
		"addi 1, 1, 8\t\n"
	);
}
#endif

#if 0
dontmangle void func_80004BE0() {

}
#else
dontmangle __ASM void func_80004BE0() {
	asm volatile(
		"stwu 1, -8(1)\t\n"
		"mflr 0\t\n"
		"stw 0, 0xc(1)\t\n"
		"bl func_80004BBC\t\n"
		"andi. 0, 3, 0x80\t\n"
		"bne lbl_80004C00\t\n"
		"bl DUN_frand__Fv\t\n"
		"b lbl_80004C08\t\n"
		"lbl_80004C00:\t\n"
		"bl DUN_frand__Fv\t\n"
		"fneg 1, 1\t\n"
		"lbl_80004C08:\t\n"
		"lwz 0, 0xc(1)\t\n"
		"mtlr 0\t\n"
		"addi 1, 1, 8\t\n"
	);
}
#endif

#if 0
void DUN_RandomNumber(int, int) {

}
#else
dontmangle __ASM void DUN_RandomNumber__Fii() {
	asm volatile(
		"stwu 1, -0x18(1)\t\n"
		"mflr 0\t\n"
		"stmw 30, 0x10(1)\t\n"
		"stw 0, 0x1c(1)\t\n"
		"mr 30, 3\t\n"
		"subf. 0, 30, 4\t\n"
		"bge lbl_80004C7C\t\n"
		"subf 0, 4, 30\t\n"
		"xoris 0, 0, 0x8000\t\n"
		"lis 8, 0x4330\t\n"
		"stw 0, 0xc(1)\t\n"
		"lis 9, lbl_800EEC00@ha\t\n"
		"lfd 13, lbl_800EEC00@l(9)\t\n"
		"lis 11, lbl_800EEC08@ha\t\n"
		"stw 8, 8(1)\t\n"
		"lfd 12, lbl_800EEC08@l(11)\t\n"
		"lfd 0, 8(1)\t\n"
		"fsub 0, 0, 13\t\n"
		"frsp 0, 0\t\n"
		"fmr 13, 0\t\n"
		"fcmpu 0, 13, 12\t\n"
		"cror 3, 2, 1\t\n"
		"bso lbl_80004CC8\t\n"
		"mr 9, 10\t\n"
		"b lbl_80004CB8\t\n"
		"lbl_80004C7C:\t\n"
		"xoris 0, 0, 0x8000\t\n"
		"stw 0, 0xc(1)\t\n"
		"lis 11, 0x4330\t\n"
		"lis 10, lbl_800EEC00@ha\t\n"
		"lis 8, lbl_800EEC08@ha\t\n"
		"stw 11, 8(1)\t\n"
		"lfd 13, lbl_800EEC00@l(10)\t\n"
		"lfd 0, 8(1)\t\n"
		"lfd 12, lbl_800EEC08@l(8)\t\n"
		"fsub 0, 0, 13\t\n"
		"frsp 0, 0\t\n"
		"fmr 13, 0\t\n"
		"fcmpu 0, 13, 12\t\n"
		"cror 3, 2, 1\t\n"
		"bso lbl_80004CC8\t\n"
		"lbl_80004CB8:\t\n"
		"fctiwz 0, 13\t\n"
		"stfd 0, 8(1)\t\n"
		"lwz 9, 0xc(1)\t\n"
		"b lbl_80004CDC\t\n"
		"lbl_80004CC8:\t\n"
		"fsub 0, 13, 12\t\n"
		"fctiwz 13, 0\t\n"
		"stfd 13, 8(1)\t\n"
		"lwz 9, 0xc(1)\t\n"
		"xoris 9, 9, 0x8000\t\n"
		"lbl_80004CDC:\t\n"
		"addi 31, 9, 1\t\n"
		"cmpwi 31, 0\t\n"
		"beq lbl_80004D00\t\n"
		"bl func_800049D4\t\n"
		"divwu 0, 3, 31\t\n"
		"mullw 0, 0, 31\t\n"
		"subf 3, 0, 3\t\n"
		"add 3, 3, 30\t\n"
		"b lbl_80004D04\t\n"
		"lbl_80004D00:\t\n"
		"li 3, 0\t\n"
		"lbl_80004D04:\t\n"
		"lwz 0, 0x1c(1)\t\n"
		"mtlr 0\t\n"
		"lmw 30, 0x10(1)\t\n"
		"addi 1, 1, 0x18\t\n"
	);
}
#endif

