#include "types.h"

#if 0
dontmangle void func_800051EC() {

}
#else
dontmangle __ASM void func_800051EC() {
	asm volatile(
		"stwu 1, -0x38(1)\t\n"
		"mflr 0\t\n"
		"stfd 31, 0x30(1)\t\n"
		"stmw 27, 0x1c(1)\t\n"
		"stw 0, 0x3c(1)\t\n"
		"mr 31, 3\t\n"
		"mr 29, 4\t\n"
		"lfs 11, 4(29)\t\n"
		"mr 30, 5\t\n"
		"lfs 12, 0xc(31)\t\n"
		"mr 28, 6\t\n"
		"lfs 0, 8(31)\t\n"
		"mr 27, 7\t\n"
		"fsubs 12, 12, 11\t\n"
		"lfs 10, 0(29)\t\n"
		"lfs 13, 0x10(31)\t\n"
		"fmuls 1, 12, 12\t\n"
		"lfs 11, 8(29)\t\n"
		"fsubs 0, 0, 10\t\n"
		"fmadds 1, 0, 0, 1\t\n"
		"stfs 0, 8(1)\t\n"
		"fsubs 13, 13, 11\t\n"
		"stfs 12, 0xc(1)\t\n"
		"fmadds 1, 13, 13, 1\t\n"
		"stfs 13, 0x10(1)\t\n"
		"bl sqrt\t\n"
		"lfs 0, 4(31)\t\n"
		"lis 9, lbl_800EEC64@ha\t\n"
		"lfs 9, lbl_800EEC64@l(9)\t\n"
		"li 0, 0\t\n"
		"fsubs 0, 0, 1\t\n"
		"fcmpu 0, 0, 9\t\n"
		"ble lbl_80005274\t\n"
		"li 0, 1\t\n"
		"lbl_80005274:\t\n"
		"lfs 12, 4(30)\t\n"
		"lfs 13, 0xc(1)\t\n"
		"lfs 0, 8(1)\t\n"
		"fmuls 13, 13, 12\t\n"
		"lfs 10, 0(30)\t\n"
		"lfs 11, 0x10(1)\t\n"
		"lfs 12, 8(30)\t\n"
		"fmadds 0, 0, 10, 13\t\n"
		"fmadds 31, 11, 12, 0\t\n"
		"fcmpu 0, 31, 9\t\n"
		"bge lbl_800052A8\t\n"
		"cmpwi 0, 0\t\n"
		"beq lbl_8000530C\t\n"
		"lbl_800052A8:\t\n"
		"lfs 0, 4(31)\t\n"
		"fmuls 13, 1, 1\t\n"
		"lis 9, lbl_800EEC64@ha\t\n"
		"fmsubs 0, 0, 0, 13\t\n"
		"lfs 12, lbl_800EEC64@l(9)\t\n"
		"fmadds 1, 31, 31, 0\t\n"
		"fcmpu 0, 1, 12\t\n"
		"blt lbl_8000530C\t\n"
		"bl sqrt\t\n"
		"lfs 0, 0(29)\t\n"
		"fsubs 1, 31, 1\t\n"
		"lfs 13, 0(30)\t\n"
		"li 3, 1\t\n"
		"fmadds 13, 1, 13, 0\t\n"
		"stfs 13, 0(28)\t\n"
		"lfs 13, 4(29)\t\n"
		"lfs 0, 4(30)\t\n"
		"fmadds 0, 1, 0, 13\t\n"
		"stfs 0, 4(28)\t\n"
		"lfs 13, 8(30)\t\n"
		"lfs 0, 8(29)\t\n"
		"fmadds 13, 1, 13, 0\t\n"
		"stfs 13, 8(28)\t\n"
		"stfs 1, 0(27)\t\n"
		"b lbl_80005310\t\n"
		"lbl_8000530C:\t\n"
		"li 3, 0\t\n"
		"lbl_80005310:\t\n"
		"lwz 0, 0x3c(1)\t\n"
		"mtlr 0\t\n"
		"lmw 27, 0x1c(1)\t\n"
		"lfd 31, 0x30(1)\t\n"
		"addi 1, 1, 0x38\t\n"
	);
}
#endif

#if 0
dontmangle void func_80005328() {

}
#else
dontmangle __ASM void func_80005328() {
	asm volatile(
		"mr 11, 3\t\n"
		"lfs 13, 4(5)\t\n"
		"lfs 12, 4(11)\t\n"
		"lis 9, lbl_800EEC68@ha\t\n"
		"lfs 0, 0(11)\t\n"
		"lfs 10, 0(5)\t\n"
		"fmuls 12, 12, 13\t\n"
		"lfs 9, 8(11)\t\n"
		"lfs 11, 8(5)\t\n"
		"fmadds 0, 0, 10, 12\t\n"
		"lfs 13, lbl_800EEC68@l(9)\t\n"
		"fmadds 8, 9, 11, 0\t\n"
		"fcmpu 0, 8, 13\t\n"
		"bge lbl_80005378\t\n"
		"lis 9, lbl_800EEC6C@ha\t\n"
		"fneg 13, 8\t\n"
		"lfs 0, lbl_800EEC6C@l(9)\t\n"
		"fcmpu 0, 13, 0\t\n"
		"blt lbl_80005388\t\n"
		"b func_80005390\t\n"
		"lbl_80005378:\t\n"
		"lis 9, lbl_800EEC6C@ha\t\n"
		"lfs 0, lbl_800EEC6C@l(9)\t\n"
		"fcmpu 0, 8, 0\t\n"
		"bge func_80005390\t\n"
		"lbl_80005388:\t\n"
		"li 3, 0\t\n"
	);
}
#endif

#if 0
dontmangle void func_80005390() {

}
#else
dontmangle __ASM void func_80005390() {
	asm volatile(
		"lfs 11, 4(4)\t\n"
		"li 3, 1\t\n"
		"lfs 12, 4(11)\t\n"
		"lfs 9, 0(4)\t\n"
		"lfs 0, 0(11)\t\n"
		"fmuls 12, 12, 11\t\n"
		"lfs 13, 8(11)\t\n"
		"lfs 11, 8(4)\t\n"
		"fmadds 0, 0, 9, 12\t\n"
		"lfs 10, 0xc(11)\t\n"
		"fmadds 13, 13, 11, 0\t\n"
		"lfs 12, 0(5)\t\n"
		"fadds 13, 13, 10\t\n"
		"fneg 13, 13\t\n"
		"fdivs 13, 13, 8\t\n"
		"fmadds 12, 13, 12, 9\t\n"
		"stfs 12, 0(6)\t\n"
		"lfs 12, 4(4)\t\n"
		"lfs 0, 4(5)\t\n"
		"fmadds 0, 13, 0, 12\t\n"
		"stfs 0, 4(6)\t\n"
		"lfs 12, 8(5)\t\n"
		"lfs 0, 8(4)\t\n"
		"fmadds 13, 13, 12, 0\t\n"
		"stfs 13, 8(6)\t\n"
	);
}
#endif

#if 0
void COL_DoSphereSphereSweepTest(COL_SPHERE *, Vec3F *, COL_SPHERE *, Vec3F *) {

}
#else
dontmangle __ASM void COL_DoSphereSphereSweepTest__FP10COL_SPHEREP5Vec3FT0T1() {
	asm volatile(
		"stwu 1, -0x80(1)\t\n"
		"mflr 0\t\n"
		"mfcr 12\t\n"
		"stfd 29, 0x68(1)\t\n"
		"stfd 30, 0x70(1)\t\n"
		"stfd 31, 0x78(1)\t\n"
		"stmw 29, 0x5c(1)\t\n"
		"stw 0, 0x84(1)\t\n"
		"stw 12, 0x58(1)\t\n"
		"mr 29, 6\t\n"
		"or. 30, 4, 4\t\n"
		"beq lbl_80005470\t\n"
		"lwz 11, 0(30)\t\n"
		"addi 9, 1, 8\t\n"
		"lwz 10, 4(30)\t\n"
		"lis 8, lbl_800EEC70@ha\t\n"
		"lwz 0, 8(30)\t\n"
		"stw 11, 8(1)\t\n"
		"stw 0, 8(9)\t\n"
		"stw 10, 4(9)\t\n"
		"lfs 11, lbl_800EEC70@l(8)\t\n"
		"lfs 13, 0xc(1)\t\n"
		"lfs 12, 8(1)\t\n"
		"fmuls 13, 13, 13\t\n"
		"lfs 0, 0x10(1)\t\n"
		"fmadds 12, 12, 12, 13\t\n"
		"fmadds 0, 0, 0, 12\t\n"
		"fcmpu 0, 0, 11\t\n"
		"cror 3, 2, 0\t\n"
		"bns lbl_80005484\t\n"
		"lbl_80005470:\t\n"
		"lis 9, lbl_800EEC74@ha\t\n"
		"lfs 0, lbl_800EEC74@l(9)\t\n"
		"stfs 0, 8(1)\t\n"
		"stfs 0, 0x10(1)\t\n"
		"stfs 0, 0xc(1)\t\n"
		"lbl_80005484:\t\n"
		"cmpwi 4, 29, 0\t\n"
		"beq 4, lbl_800054D4\t\n"
		"lwz 11, 0(29)\t\n"
		"addi 9, 1, 0x18\t\n"
		"lwz 10, 4(29)\t\n"
		"lis 8, lbl_800EEC70@ha\t\n"
		"lwz 0, 8(29)\t\n"
		"stw 11, 0x18(1)\t\n"
		"stw 0, 8(9)\t\n"
		"stw 10, 4(9)\t\n"
		"lfs 11, lbl_800EEC70@l(8)\t\n"
		"lfs 13, 0x1c(1)\t\n"
		"lfs 12, 0x18(1)\t\n"
		"fmuls 13, 13, 13\t\n"
		"lfs 0, 0x20(1)\t\n"
		"fmadds 12, 12, 12, 13\t\n"
		"fmadds 0, 0, 0, 12\t\n"
		"fcmpu 0, 0, 11\t\n"
		"cror 3, 2, 0\t\n"
		"bns lbl_800054E8\t\n"
		"lbl_800054D4:\t\n"
		"lis 9, lbl_800EEC74@ha\t\n"
		"lfs 0, lbl_800EEC74@l(9)\t\n"
		"stfs 0, 0x18(1)\t\n"
		"stfs 0, 0x20(1)\t\n"
		"stfs 0, 0x1c(1)\t\n"
		"lbl_800054E8:\t\n"
		"lfs 12, 0xc(5)\t\n"
		"lis 9, lbl_800EEC74@ha\t\n"
		"lfs 0, 0xc(3)\t\n"
		"lfs 11, 0x1c(1)\t\n"
		"lfs 13, 0xc(1)\t\n"
		"fsubs 7, 12, 0\t\n"
		"lfs 10, 8(5)\t\n"
		"fsubs 6, 11, 13\t\n"
		"lfs 12, 8(3)\t\n"
		"lfs 11, 0x18(1)\t\n"
		"fmuls 13, 6, 7\t\n"
		"lfs 0, 8(1)\t\n"
		"fsubs 9, 10, 12\t\n"
		"lfs 12, 0x10(3)\t\n"
		"fsubs 8, 11, 0\t\n"
		"lfs 10, 0x10(5)\t\n"
		"lfs 0, 0x10(1)\t\n"
		"fmadds 13, 8, 9, 13\t\n"
		"lfs 11, 0x20(1)\t\n"
		"fsubs 10, 10, 12\t\n"
		"lfs 12, 4(3)\t\n"
		"fsubs 11, 11, 0\t\n"
		"lfs 29, lbl_800EEC74@l(9)\t\n"
		"lfs 0, 4(5)\t\n"
		"fmadds 13, 11, 10, 13\t\n"
		"fadds 30, 13, 13\t\n"
		"stfs 9, 0x28(1)\t\n"
		"fadds 12, 12, 0\t\n"
		"stfs 7, 0x2c(1)\t\n"
		"stfs 10, 0x30(1)\t\n"
		"fcmpu 0, 30, 29\t\n"
		"stfs 8, 0x38(1)\t\n"
		"stfs 6, 0x3c(1)\t\n"
		"stfs 11, 0x40(1)\t\n"
		"cror 3, 2, 1\t\n"
		"bso lbl_800056D8\t\n"
		"fmuls 0, 7, 7\t\n"
		"fmadds 0, 9, 9, 0\t\n"
		"fmadds 0, 10, 10, 0\t\n"
		"fmuls 13, 12, 12\t\n"
		"fsubs 10, 0, 13\t\n"
		"fcmpu 0, 10, 29\t\n"
		"bge lbl_800055EC\t\n"
		"addi 31, 1, 0x48\t\n"
		"li 4, 0\t\n"
		"mr 3, 31\t\n"
		"li 5, 0xc\t\n"
		// "crclr 6\t\n"
		".byte 0x4c,0xc6,0x31,0x82\t\n" // crclr is going to be the death of me
		"bl memset\t\n"
		"cmpwi 30, 0\t\n"
		"beq lbl_800055CC\t\n"
		"lwz 0, 0x48(1)\t\n"
		"lwz 11, 4(31)\t\n"
		"lwz 9, 8(31)\t\n"
		"stw 0, 0(30)\t\n"
		"stw 9, 8(30)\t\n"
		"stw 11, 4(30)\t\n"
		"lbl_800055CC:\t\n"
		"beq 4, lbl_800056D0\t\n"
		"lwz 0, 8(31)\t\n"
		"lwz 9, 0x48(1)\t\n"
		"lwz 11, 4(31)\t\n"
		"stw 0, 8(29)\t\n"
		"stw 9, 0(29)\t\n"
		"stw 11, 4(29)\t\n"
		"b lbl_800056D0\t\n"
		"lbl_800055EC:\t\n"
		"fmuls 0, 6, 6\t\n"
		"lis 9, lbl_800EEC78@ha\t\n"
		"fmadds 0, 8, 8, 0\t\n"
		"lfs 13, lbl_800EEC78@l(9)\t\n"
		"fmadds 31, 11, 11, 0\t\n"
		"li 31, 0\t\n"
		"fmuls 13, 31, 13\t\n"
		"fmuls 13, 13, 10\t\n"
		"fmr 11, 29\t\n"
		"fmsubs 1, 30, 30, 13\t\n"
		"fcmpu 0, 1, 11\t\n"
		"cror 3, 2, 1\t\n"
		"bns lbl_80005674\t\n"
		"bl sqrt\t\n"
		"lis 9, lbl_800EEC7C@ha\t\n"
		"fadds 12, 31, 31\t\n"
		"lfs 10, lbl_800EEC7C@l(9)\t\n"
		"fneg 0, 30\t\n"
		"fadds 13, 0, 1\t\n"
		"fdivs 12, 10, 12\t\n"
		"fsubs 0, 0, 1\t\n"
		"fmuls 13, 13, 12\t\n"
		"fmuls 0, 0, 12\t\n"
		"fmr 11, 13\t\n"
		"fcmpu 0, 0, 13\t\n"
		"bge lbl_80005658\t\n"
		"fmr 11, 0\t\n"
		"lbl_80005658:\t\n"
		"fcmpu 0, 11, 29\t\n"
		"cror 3, 2, 1\t\n"
		"bns lbl_80005674\t\n"
		"fcmpu 0, 11, 10\t\n"
		"cror 3, 2, 0\t\n"
		"bns lbl_80005674\t\n"
		"li 31, 1\t\n"
		"lbl_80005674:\t\n"
		"cmpwi 31, 0\t\n"
		"beq lbl_800056D8\t\n"
		"cmpwi 30, 0\t\n"
		"beq lbl_800056A8\t\n"
		"lfs 0, 8(1)\t\n"
		"fmuls 0, 11, 0\t\n"
		"stfs 0, 0(30)\t\n"
		"lfs 13, 0xc(1)\t\n"
		"fmuls 13, 11, 13\t\n"
		"stfs 13, 4(30)\t\n"
		"lfs 0, 0x10(1)\t\n"
		"fmuls 0, 11, 0\t\n"
		"stfs 0, 8(30)\t\n"
		"lbl_800056A8:\t\n"
		"beq 4, lbl_800056D0\t\n"
		"lfs 0, 0x18(1)\t\n"
		"lfs 13, 0x1c(1)\t\n"
		"lfs 12, 0x20(1)\t\n"
		"fmuls 0, 11, 0\t\n"
		"fmuls 13, 11, 13\t\n"
		"stfs 0, 0(29)\t\n"
		"fmuls 12, 11, 12\t\n"
		"stfs 13, 4(29)\t\n"
		"stfs 12, 8(29)\t\n"
		"lbl_800056D0:\t\n"
		"li 3, 1\t\n"
		"b lbl_800056DC\t\n"
		"lbl_800056D8:\t\n"
		"li 3, 0\t\n"
		"lbl_800056DC:\t\n"
		"lwz 0, 0x84(1)\t\n"
		"lwz 12, 0x58(1)\t\n"
		"mtlr 0\t\n"
		"lmw 29, 0x5c(1)\t\n"
		"lfd 29, 0x68(1)\t\n"
		"lfd 30, 0x70(1)\t\n"
		"lfd 31, 0x78(1)\t\n"
		"mtcrf 8, 12\t\n"
		"addi 1, 1, 0x80\t\n"
	);
}
#endif

#if 0
void COL_DoSpherePlaneCollision(COL_SPHERE *, Vec3F *, COLTRIANGLE_LIST *, Vec3F *, unsigned char *, bool, bool, bool *) {

}
#else
dontmangle __ASM void COL_DoSpherePlaneCollision__FP10COL_SPHEREP5Vec3FP16COLTRIANGLE_LISTT1PUcbT5Pb() {
	asm volatile(
		"stwu 1, -0x190(1)\t\n"
		"mflr 0\t\n"
		"mfcr 12\t\n"
		"stfd 28, 0x170(1)\t\n"
		"stfd 29, 0x178(1)\t\n"
		"stfd 30, 0x180(1)\t\n"
		"stfd 31, 0x188(1)\t\n"
		"stmw 14, 0x128(1)\t\n"
		"stw 0, 0x194(1)\t\n"
		"stw 12, 0x124(1)\t\n"
		"stw 10, 0x10c(1)\t\n"
		"li 0, 0\t\n"
		"mr 28, 4\t\n"
		"lis 11, lbl_800EEC80@ha\t\n"
		"stw 0, 0(10)\t\n"
		"mr 30, 3\t\n"
		"lfs 11, lbl_800EEC80@l(11)\t\n"
		"mr 18, 5\t\n"
		"lfs 0, 4(28)\t\n"
		"mr 24, 6\t\n"
		"lfs 13, 0(28)\t\n"
		"lfs 12, 8(28)\t\n"
		"fmuls 0, 0, 0\t\n"
		"fmadds 13, 13, 13, 0\t\n"
		"stw 7, 0x100(1)\t\n"
		"fmadds 1, 12, 12, 13\t\n"
		"stw 8, 0x104(1)\t\n"
		"stw 9, 0x108(1)\t\n"
		"fcmpu 0, 1, 11\t\n"
		"cror 3, 2, 0\t\n"
		"bns lbl_8000579C\t\n"
		"lis 9, lbl_800EEC84@ha\t\n"
		"li 3, -1\t\n"
		"lfs 0, lbl_800EEC84@l(9)\t\n"
		"stfs 0, 0(28)\t\n"
		"stfs 0, 8(28)\t\n"
		"stfs 0, 4(28)\t\n"
		"b lbl_800060F8\t\n"
		"lbl_8000579C:\t\n"
		"lwz 0, 0(28)\t\n"
		"addi 9, 1, 0x58\t\n"
		"lwz 7, 4(28)\t\n"
		"lis 11, lbl_800EEC88@ha\t\n"
		"lwz 10, 8(28)\t\n"
		"addi 8, 1, 0x38\t\n"
		"stw 0, 0x58(1)\t\n"
		"li 17, 0\t\n"
		"stw 7, 4(9)\t\n"
		"li 0, 0\t\n"
		"stw 10, 8(9)\t\n"
		"stw 0, 0x110(1)\t\n"
		"li 9, 1\t\n"
		"lwz 0, 0x58(1)\t\n"
		"stw 9, 0x118(1)\t\n"
		"lfs 28, lbl_800EEC88@l(11)\t\n"
		"lwz 9, 0x100(1)\t\n"
		"li 11, -1\t\n"
		"stw 0, 0x38(1)\t\n"
		"stw 11, 0x114(1)\t\n"
		"cmpwi 4, 9, 0\t\n"
		"stw 10, 8(8)\t\n"
		"stw 7, 4(8)\t\n"
		"bl sqrt\t\n"
		"lfs 0, 4(30)\t\n"
		"fmr 31, 1\t\n"
		"lbz 0, 0(18)\t\n"
		"lwz 9, 0x110(1)\t\n"
		"fadds 29, 31, 0\t\n"
		"cmpw 9, 0\t\n"
		"beq lbl_80005D40\t\n"
		"addi 15, 18, 4\t\n"
		"addi 16, 1, 0x28\t\n"
		"lbl_80005820:\t\n"
		"slwi 10, 17, 3\t\n"
		"li 20, 0\t\n"
		"lwzx 0, 15, 10\t\n"
		"addi 11, 17, 1\t\n"
		"mr 14, 10\t\n"
		"stw 11, 0x11c(1)\t\n"
		"cmpw 20, 0\t\n"
		"beq lbl_80005D2C\t\n"
		"lis 9, lbl_800EEC84@ha\t\n"
		"addi 27, 1, 0x98\t\n"
		"lfs 30, lbl_800EEC84@l(9)\t\n"
		"addi 26, 1, 0x48\t\n"
		"addi 22, 1, 0xc8\t\n"
		"addi 23, 1, 0xc\t\n"
		"li 19, 0\t\n"
		"lbl_8000585C:\t\n"
		"addi 11, 18, 8\t\n"
		"lfs 9, 0xc(30)\t\n"
		"lwzx 9, 11, 10\t\n"
		"lfs 3, 8(30)\t\n"
		"lwzx 0, 9, 19\t\n"
		"add 29, 9, 19\t\n"
		"lwz 11, 4(29)\t\n"
		"lwz 9, 8(29)\t\n"
		"lwz 10, 0xc(29)\t\n"
		"stw 0, 0x98(1)\t\n"
		"stw 11, 4(27)\t\n"
		"stw 9, 8(27)\t\n"
		"stw 10, 0xc(27)\t\n"
		"lfs 8, 0x9c(1)\t\n"
		"lfs 7, 0x98(1)\t\n"
		"lfs 4, 0x10(30)\t\n"
		"fmuls 0, 8, 9\t\n"
		"lfs 6, 0xa0(1)\t\n"
		"fmadds 0, 7, 3, 0\t\n"
		"lfs 5, 0xa4(1)\t\n"
		"fmadds 0, 6, 4, 0\t\n"
		"fadds 10, 0, 5\t\n"
		"fcmpu 0, 10, 30\t\n"
		"blt lbl_80005D14\t\n"
		"fcmpu 0, 10, 29\t\n"
		"bgt lbl_80005D14\t\n"
		"lfs 12, 4(28)\t\n"
		"lfs 13, 0(28)\t\n"
		"fmuls 0, 12, 8\t\n"
		"lfs 11, 8(28)\t\n"
		"fmadds 0, 13, 7, 0\t\n"
		"fmadds 0, 11, 6, 0\t\n"
		"fcmpu 0, 0, 30\t\n"
		"cror 3, 2, 1\t\n"
		"bso lbl_80005D14\t\n"
		"fadds 12, 9, 12\t\n"
		"lfs 9, 4(30)\t\n"
		"fadds 13, 3, 13\t\n"
		"stfs 12, 0x6c(1)\t\n"
		"fadds 0, 4, 11\t\n"
		"fmuls 12, 8, 12\t\n"
		"stfs 13, 0x68(1)\t\n"
		"fmadds 13, 7, 13, 12\t\n"
		"stfs 0, 0x70(1)\t\n"
		"fmadds 13, 6, 0, 13\t\n"
		"fadds 12, 13, 5\t\n"
		"fcmpu 0, 12, 30\t\n"
		"bge lbl_80005924\t\n"
		"fadds 11, 9, 12\t\n"
		"b lbl_80005928\t\n"
		"lbl_80005924:\t\n"
		"fsubs 11, 9, 12\t\n"
		"lbl_80005928:\t\n"
		"lis 9, lbl_800EEC8C@ha\t\n"
		"lis 11, 0x800f\t\n"
		"lfs 0, lbl_800EEC8C@l(9)\t\n"
		"fcmpu 0, 11, 0\t\n"
		"bgt lbl_80005970\t\n"
		"lis 9, lbl_800EEC84@ha\t\n"
		"li 0, 1\t\n"
		"lfs 0, lbl_800EEC84@l(9)\t\n"
		"fcmpu 0, 10, 0\t\n"
		"bge lbl_80005954\t\n"
		"li 0, -1\t\n"
		"lbl_80005954:\t\n"
		"fcmpu 0, 12, 0\t\n"
		"bge lbl_80005968\t\n"
		"cmpwi 0, -1\t\n"
		"bne lbl_80005970\t\n"
		"b lbl_80005D14\t\n"
		"lbl_80005968:\t\n"
		"cmpwi 0, 1\t\n"
		"beq lbl_80005D14\t\n"
		"lbl_80005970:\t\n"
		"fcmpu 0, 10, 30\t\n"
		"lfs 5, 4(30)\t\n"
		"bge lbl_80005984\t\n"
		"fadds 13, 5, 10\t\n"
		"b lbl_80005988\t\n"
		"lbl_80005984:\t\n"
		"fsubs 13, 5, 10\t\n"
		"lbl_80005988:\t\n"
		"lfs 0, -0x1374(11)\t\n"
		"fcmpu 0, 13, 0\t\n"
		"ble lbl_80005A14\t\n"
		"li 3, 1\t\n"
		"lfs 13, 0x98(1)\t\n"
		"lfs 12, 8(30)\t\n"
		"fcmpu 0, 10, 30\t\n"
		"bge lbl_800059B4\t\n"
		"fneg 0, 10\t\n"
		"fmuls 0, 13, 0\t\n"
		"b lbl_800059B8\t\n"
		"lbl_800059B4:\t\n"
		"fmuls 0, 13, 10\t\n"
		"lbl_800059B8:\t\n"
		"fsubs 0, 12, 0\t\n"
		"stfs 0, 0x78(1)\t\n"
		"fcmpu 0, 10, 30\t\n"
		"lfs 13, 0x9c(1)\t\n"
		"lfs 12, 0xc(30)\t\n"
		"bge lbl_800059DC\t\n"
		"fneg 0, 10\t\n"
		"fmuls 0, 13, 0\t\n"
		"b lbl_800059E0\t\n"
		"lbl_800059DC:\t\n"
		"fmuls 0, 13, 10\t\n"
		"lbl_800059E0:\t\n"
		"fsubs 0, 12, 0\t\n"
		"stfs 0, 0x7c(1)\t\n"
		"fcmpu 0, 10, 30\t\n"
		"lfs 13, 0xa0(1)\t\n"
		"lfs 12, 0x10(30)\t\n"
		"bge lbl_80005A04\t\n"
		"fneg 0, 10\t\n"
		"fmuls 0, 13, 0\t\n"
		"b lbl_80005A08\t\n"
		"lbl_80005A04:\t\n"
		"fmuls 0, 13, 10\t\n"
		"lbl_80005A08:\t\n"
		"fsubs 0, 12, 0\t\n"
		"stfs 0, 0x80(1)\t\n"
		"b lbl_80005A88\t\n"
		"lbl_80005A14:\t\n"
		"lfs 11, 0(28)\t\n"
		"mr 3, 27\t\n"
		"lfs 10, 4(28)\t\n"
		"addi 4, 1, 0xa8\t\n"
		"lfs 9, 8(28)\t\n"
		"fdivs 11, 11, 31\t\n"
		"lfs 6, 0x98(1)\t\n"
		"addi 5, 1, 0xb8\t\n"
		"lfs 8, 0x9c(1)\t\n"
		"addi 6, 1, 0x78\t\n"
		"lfs 7, 0xa0(1)\t\n"
		"lfs 0, 8(30)\t\n"
		"lfs 13, 0xc(30)\t\n"
		"lfs 12, 0x10(30)\t\n"
		"fdivs 10, 10, 31\t\n"
		"stfs 11, 0xb8(1)\t\n"
		"fdivs 9, 9, 31\t\n"
		"stfs 10, 0xbc(1)\t\n"
		"fmuls 7, 7, 5\t\n"
		"stfs 9, 0xc0(1)\t\n"
		"fmuls 6, 6, 5\t\n"
		"fmuls 8, 8, 5\t\n"
		"fsubs 0, 0, 6\t\n"
		"fsubs 13, 13, 8\t\n"
		"stfs 0, 0xa8(1)\t\n"
		"fsubs 12, 12, 7\t\n"
		"stfs 13, 0xac(1)\t\n"
		"stfs 12, 0xb0(1)\t\n"
		"bl func_80005328\t\n"
		"lbl_80005A88:\t\n"
		"cmpwi 3, 0\t\n"
		"beq lbl_80005D14\t\n"
		"addi 31, 1, 0x78\t\n"
		"mr 3, 29\t\n"
		"mr 4, 31\t\n"
		"li 25, 0\t\n"
		"bl COL_PointInTriangle__FP7COL_TRIP5Vec3F\t\n"
		"or. 21, 3, 3\t\n"
		"beq lbl_80005B1C\t\n"
		"lfs 12, 4(30)\t\n"
		"li 25, 1\t\n"
		"lfs 11, 0x78(1)\t\n"
		"lfs 10, 0x98(1)\t\n"
		"lfs 13, 0x9c(1)\t\n"
		"fmadds 10, 10, 12, 11\t\n"
		"lfs 9, 0x7c(1)\t\n"
		"lfs 11, 0x80(1)\t\n"
		"lfs 0, 0xa0(1)\t\n"
		"fmadds 13, 13, 12, 9\t\n"
		"stfs 13, 0xcc(1)\t\n"
		"fmadds 0, 0, 12, 11\t\n"
		"stfs 10, 0xc8(1)\t\n"
		"stfs 0, 0xd0(1)\t\n"
		"lwz 9, 0x78(1)\t\n"
		"lwz 11, 8(31)\t\n"
		"lwz 0, 4(31)\t\n"
		"stw 9, 0x48(1)\t\n"
		"stw 0, 4(26)\t\n"
		"stw 11, 8(26)\t\n"
		"lfs 11, 8(30)\t\n"
		"lfs 13, 0xc8(1)\t\n"
		"lfs 10, 0xc(30)\t\n"
		"fsubs 13, 13, 11\t\n"
		"lfs 12, 0xcc(1)\t\n"
		"lfs 11, 0x10(30)\t\n"
		"lfs 0, 0xd0(1)\t\n"
		"b lbl_80005BE4\t\n"
		"lbl_80005B1C:\t\n"
		"mr 4, 31\t\n"
		"mr 5, 22\t\n"
		"mr 3, 29\t\n"
		"bl COL_ClosestPointOnTriangle__FP7COL_TRIP5Vec3FT1\t\n"
		"lfs 0, 0(28)\t\n"
		"mr 3, 30\t\n"
		"lfs 12, 4(28)\t\n"
		"mr 4, 22\t\n"
		"lfs 13, 8(28)\t\n"
		"fneg 0, 0\t\n"
		"fneg 12, 12\t\n"
		"addi 5, 1, 0xd8\t\n"
		"fneg 13, 13\t\n"
		"addi 6, 1, 0xe8\t\n"
		"fdivs 0, 0, 31\t\n"
		"addi 7, 1, 0xf8\t\n"
		"fdivs 12, 12, 31\t\n"
		"stfs 0, 0xd8(1)\t\n"
		"fdivs 13, 13, 31\t\n"
		"stfs 12, 0xdc(1)\t\n"
		"stfs 13, 0xe0(1)\t\n"
		"bl func_800051EC\t\n"
		"mr 10, 22\t\n"
		"cmpwi 3, 0\t\n"
		"beq lbl_80005BF8\t\n"
		"lfs 0, 0xf8(1)\t\n"
		"fcmpu 0, 0, 30\t\n"
		"bge lbl_80005BA0\t\n"
		"fneg 0, 0\t\n"
		"fcmpu 0, 0, 31\t\n"
		"cror 3, 2, 0\t\n"
		"bso lbl_80005BAC\t\n"
		"b lbl_80005BF8\t\n"
		"lbl_80005BA0:\t\n"
		"fcmpu 0, 0, 31\t\n"
		"cror 3, 2, 0\t\n"
		"bns lbl_80005BF8\t\n"
		"lbl_80005BAC:\t\n"
		"lwz 9, 0xc8(1)\t\n"
		"li 25, 1\t\n"
		"lwz 11, 8(10)\t\n"
		"lwz 0, 4(10)\t\n"
		"stw 9, 0x48(1)\t\n"
		"stw 0, 4(26)\t\n"
		"stw 11, 8(26)\t\n"
		"lfs 11, 0xe8(1)\t\n"
		"lfs 13, 0xc8(1)\t\n"
		"lfs 12, 0xcc(1)\t\n"
		"fsubs 13, 13, 11\t\n"
		"lfs 10, 0xec(1)\t\n"
		"lfs 0, 0xd0(1)\t\n"
		"lfs 11, 0xf0(1)\t\n"
		"lbl_80005BE4:\t\n"
		"fsubs 12, 12, 10\t\n"
		"stfs 13, 0x88(1)\t\n"
		"fsubs 0, 0, 11\t\n"
		"stfs 12, 0x8c(1)\t\n"
		"stfs 0, 0x90(1)\t\n"
		"lbl_80005BF8:\t\n"
		"cmpwi 25, 0\t\n"
		"beq lbl_80005D14\t\n"
		"lbz 0, 0x41(29)\t\n"
		"cmpwi 0, 1\t\n"
		"bne lbl_80005C50\t\n"
		"lis 9, lbl_800EEC90@ha\t\n"
		"lfs 0, lbl_800EEC90@l(9)\t\n"
		"fcmpu 0, 31, 0\t\n"
		"cror 3, 2, 1\t\n"
		"bns lbl_80005D14\t\n"
		"lis 9, lbl_801A5B44@ha\t\n"
		"lbz 6, 2(30)\t\n"
		"lwz 11, lbl_801A5B44@l(9)\t\n"
		"li 4, 0x200\t\n"
		"lbz 0, 0(30)\t\n"
		"slwi 6, 6, 0x10\t\n"
		"addis 11, 11, 3\t\n"
		"lbz 5, 0x42(29)\t\n"
		"lwz 3, -0x277c(11)\t\n"
		"or 6, 6, 0\t\n"
		"bl PostEvent__13CEventManagerUiUiUi\t\n"
		"b lbl_80005D14\t\n"
		"lbl_80005C50:\t\n"
		"lfs 0, 0x8c(1)\t\n"
		"lfs 13, 0x88(1)\t\n"
		"fmuls 0, 0, 0\t\n"
		"lfs 1, 0x90(1)\t\n"
		"fmadds 13, 13, 13, 0\t\n"
		"fmadds 1, 1, 1, 13\t\n"
		"bl sqrt\t\n"
		"lwz 0, 0x118(1)\t\n"
		"cmpwi 0, 0\t\n"
		"bne lbl_80005C80\t\n"
		"fcmpu 0, 1, 28\t\n"
		"bge lbl_80005D14\t\n"
		"lbl_80005C80:\t\n"
		"li 0, 2\t\n"
		"addi 11, 1, 0x88\t\n"
		"stb 0, 0x40(29)\t\n"
		"li 9, 0\t\n"
		"stw 17, 0x110(1)\t\n"
		"fmr 28, 1\t\n"
		"stw 20, 0x114(1)\t\n"
		"cmpwi 24, 0\t\n"
		"lwz 0, 0x88(1)\t\n"
		"lwz 10, 8(11)\t\n"
		"stw 9, 0x118(1)\t\n"
		"lwz 9, 4(11)\t\n"
		"stw 0, 0x58(1)\t\n"
		"stw 9, 0x5c(1)\t\n"
		"stw 10, 0x60(1)\t\n"
		"beq lbl_80005D14\t\n"
		"stw 21, 8(1)\t\n"
		"lwz 0, 0x98(1)\t\n"
		"lwz 9, 4(27)\t\n"
		"lwz 11, 8(27)\t\n"
		"lwz 10, 0xc(27)\t\n"
		"stw 0, 0xc(1)\t\n"
		"stw 9, 4(23)\t\n"
		"stw 11, 8(23)\t\n"
		"stw 10, 0xc(23)\t\n"
		"lfs 0, 0x98(1)\t\n"
		"lfs 13, 0x9c(1)\t\n"
		"lfs 12, 0xa0(1)\t\n"
		"stfs 0, 0x1c(1)\t\n"
		"stfs 13, 0x20(1)\t\n"
		"stfs 12, 0x24(1)\t\n"
		"lwz 0, 0x48(1)\t\n"
		"lwz 9, 4(26)\t\n"
		"lwz 11, 8(26)\t\n"
		"stw 0, 0x28(1)\t\n"
		"stw 9, 4(16)\t\n"
		"stw 11, 8(16)\t\n"
		"lbl_80005D14:\t\n"
		"mr 10, 14\t\n"
		"addi 20, 20, 1\t\n"
		"lwzx 0, 15, 10\t\n"
		"addi 19, 19, 0x44\t\n"
		"cmpw 20, 0\t\n"
		"bne lbl_8000585C\t\n"
		"lbl_80005D2C:\t\n"
		"lwz 11, 0x11c(1)\t\n"
		"lbz 0, 0(18)\t\n"
		"clrlwi 17, 11, 0x18\t\n"
		"cmpw 17, 0\t\n"
		"bne lbl_80005820\t\n"
		"lbl_80005D40:\t\n"
		"lwz 9, 0x114(1)\t\n"
		"li 0, 0\t\n"
		"li 25, 0\t\n"
		"cmpwi 9, -1\t\n"
		"beq lbl_80005D84\t\n"
		"cmpwi 24, 0\t\n"
		"beq lbl_80005D84\t\n"
		"lwz 11, 0x108(1)\t\n"
		"cmpwi 11, 0\t\n"
		"bne lbl_80005D80\t\n"
		"lis 9, lbl_800EEC84@ha\t\n"
		"lfs 0, lbl_800EEC84@l(9)\t\n"
		"stfs 0, 8(24)\t\n"
		"stfs 0, 0(24)\t\n"
		"stfs 0, 4(24)\t\n"
		"b lbl_80005D84\t\n"
		"lbl_80005D80:\t\n"
		"li 0, 1\t\n"
		"lbl_80005D84:\t\n"
		"cmpwi 0, 0\t\n"
		"beq lbl_800060CC\t\n"
		"lfs 11, 4(28)\t\n"
		"lis 9, lbl_800EEC80@ha\t\n"
		"lfs 8, 0x5c(1)\t\n"
		"lfs 0, 0(28)\t\n"
		"lfs 9, 0x58(1)\t\n"
		"fsubs 11, 11, 8\t\n"
		"lfs 12, 8(28)\t\n"
		"fmuls 13, 11, 11\t\n"
		"lfs 7, 0x60(1)\t\n"
		"fsubs 0, 0, 9\t\n"
		"fmadds 13, 0, 0, 13\t\n"
		"lfs 10, lbl_800EEC80@l(9)\t\n"
		"fsubs 12, 12, 7\t\n"
		"stfs 0, 0x98(1)\t\n"
		"fmadds 1, 12, 12, 13\t\n"
		"stfs 11, 0x9c(1)\t\n"
		"fcmpu 0, 1, 10\t\n"
		"stfs 12, 0xa0(1)\t\n"
		"cror 3, 2, 0\t\n"
		"bns lbl_80005DF4\t\n"
		"lis 9, lbl_800EEC84@ha\t\n"
		"lfs 0, lbl_800EEC84@l(9)\t\n"
		"stfs 0, 8(24)\t\n"
		"stfs 0, 0(24)\t\n"
		"stfs 0, 4(24)\t\n"
		"b lbl_800060CC\t\n"
		"lbl_80005DF4:\t\n"
		"lwz 9, 0x104(1)\t\n"
		"addi 27, 1, 0xa8\t\n"
		"lwz 0, 8(1)\t\n"
		"addi 31, 1, 0xb8\t\n"
		"cmpwi 9, 0\t\n"
		"addi 29, 1, 0x1c\t\n"
		"mfcr 26\t\n"
		"cmpwi 0, 0\t\n"
		"bne lbl_80005F98\t\n"
		"lfs 13, 0xc(30)\t\n"
		"lfs 0, 8(30)\t\n"
		"lfs 1, 0x10(30)\t\n"
		"fadds 13, 13, 8\t\n"
		"lfs 12, 0x2c(1)\t\n"
		"fadds 0, 0, 9\t\n"
		"lfs 11, 0x28(1)\t\n"
		"fadds 1, 1, 7\t\n"
		"lfs 10, 0x30(1)\t\n"
		"fsubs 13, 13, 12\t\n"
		"fsubs 0, 0, 11\t\n"
		"stfs 13, 0xac(1)\t\n"
		"fmuls 12, 13, 13\t\n"
		"stfs 0, 0xa8(1)\t\n"
		"fsubs 1, 1, 10\t\n"
		"fmadds 0, 0, 0, 12\t\n"
		"stfs 1, 0xb0(1)\t\n"
		"fmadds 1, 1, 1, 0\t\n"
		"bl sqrt\t\n"
		"lfs 13, 0xac(1)\t\n"
		"mtcrf 0x80, 26\t\n"
		"lfs 12, 0xa8(1)\t\n"
		"lfs 0, 0xb0(1)\t\n"
		"fdivs 13, 13, 1\t\n"
		"lfs 11, 0x2c(1)\t\n"
		"lfs 10, 0x28(1)\t\n"
		"lfs 9, 0x30(1)\t\n"
		"fdivs 12, 12, 1\t\n"
		"stfs 13, 0xac(1)\t\n"
		"stfs 13, 0x10(1)\t\n"
		"fdivs 0, 0, 1\t\n"
		"stfs 12, 0xa8(1)\t\n"
		"stfs 12, 0xc(1)\t\n"
		"lwz 11, 0xa8(1)\t\n"
		"fmuls 13, 13, 11\t\n"
		"stfs 0, 0xb0(1)\t\n"
		"stfs 0, 0x14(1)\t\n"
		"fmadds 12, 12, 10, 13\t\n"
		"fnmadds 0, 0, 9, 12\t\n"
		"stfs 0, 0x18(1)\t\n"
		"lwz 0, 4(27)\t\n"
		"lwz 9, 8(27)\t\n"
		"stw 11, 0x1c(1)\t\n"
		"stw 0, 4(29)\t\n"
		"stw 9, 8(29)\t\n"
		"beq lbl_80005F98\t\n"
		"lfs 12, 8(30)\t\n"
		"mr 5, 31\t\n"
		"lfs 11, 0x58(1)\t\n"
		"mr 6, 31\t\n"
		"lfs 13, 0xc(30)\t\n"
		"mr 3, 18\t\n"
		"fadds 12, 12, 11\t\n"
		"lfs 0, 0x10(30)\t\n"
		"lfs 10, 0x5c(1)\t\n"
		"addi 4, 1, 0xc8\t\n"
		"lfs 11, 0x60(1)\t\n"
		"addi 7, 1, 0xfc\t\n"
		"fadds 13, 13, 10\t\n"
		"stfs 12, 0xc8(1)\t\n"
		"fadds 0, 0, 11\t\n"
		"stfs 13, 0xcc(1)\t\n"
		"stfs 0, 0xd0(1)\t\n"
		"bl MISC_GetShadowGroundPoint__FP16COLTRIANGLE_LISTP5Vec3FN21Pf\t\n"
		"or. 3, 3, 3\t\n"
		"beq lbl_80005F98\t\n"
		"lis 9, lbl_800EEC84@ha\t\n"
		"lfs 0, 0xfc(1)\t\n"
		"lfs 13, lbl_800EEC84@l(9)\t\n"
		"fmr 12, 0\t\n"
		"lfs 5, 4(30)\t\n"
		"fcmpu 0, 0, 13\t\n"
		"bge lbl_80005F4C\t\n"
		"fneg 0, 12\t\n"
		"fcmpu 0, 0, 5\t\n"
		"bgt lbl_80005F54\t\n"
		"b lbl_80005F58\t\n"
		"lbl_80005F4C:\t\n"
		"fcmpu 0, 12, 5\t\n"
		"ble lbl_80005F58\t\n"
		"lbl_80005F54:\t\n"
		"li 25, 1\t\n"
		"lbl_80005F58:\t\n"
		"cmpwi 3, 0\t\n"
		"beq lbl_80005F98\t\n"
		"lis 9, lbl_800EEC84@ha\t\n"
		"fadds 13, 5, 5\t\n"
		"lfs 0, lbl_800EEC84@l(9)\t\n"
		"fcmpu 0, 12, 0\t\n"
		"bge lbl_80005F84\t\n"
		"fneg 0, 12\t\n"
		"fcmpu 0, 0, 13\t\n"
		"bgt lbl_80005F8C\t\n"
		"b lbl_80005F98\t\n"
		"lbl_80005F84:\t\n"
		"fcmpu 0, 12, 13\t\n"
		"ble lbl_80005F98\t\n"
		"lbl_80005F8C:\t\n"
		"lwz 9, 0x10c(1)\t\n"
		"li 0, 1\t\n"
		"stw 0, 0(9)\t\n"
		"lbl_80005F98:\t\n"
		"lfs 11, 0x98(1)\t\n"
		"mr 4, 27\t\n"
		"lfs 12, 0x28(1)\t\n"
		"mr 5, 31\t\n"
		"lfs 10, 0x9c(1)\t\n"
		"addi 3, 1, 0xc\t\n"
		"fadds 12, 12, 11\t\n"
		"lfs 13, 0x2c(1)\t\n"
		"lfs 11, 0xa0(1)\t\n"
		"addi 6, 1, 0x78\t\n"
		"lfs 0, 0x30(1)\t\n"
		"fadds 13, 13, 10\t\n"
		"stfs 12, 0xa8(1)\t\n"
		"fadds 0, 0, 11\t\n"
		"stfs 13, 0xac(1)\t\n"
		"stfs 0, 0xb0(1)\t\n"
		"lwz 9, 0x1c(1)\t\n"
		"lwz 11, 8(29)\t\n"
		"lwz 0, 4(29)\t\n"
		"stw 9, 0xb8(1)\t\n"
		"stw 0, 4(31)\t\n"
		"stw 11, 8(31)\t\n"
		"bl func_80005328\t\n"
		"lfs 11, 0x28(1)\t\n"
		"mtcrf 0x80, 26\t\n"
		"lfs 13, 0x78(1)\t\n"
		"lfs 12, 0x7c(1)\t\n"
		"fsubs 13, 13, 11\t\n"
		"lfs 10, 0x2c(1)\t\n"
		"lfs 0, 0x80(1)\t\n"
		"lfs 11, 0x30(1)\t\n"
		"fsubs 12, 12, 10\t\n"
		"stfs 13, 0(24)\t\n"
		"fsubs 0, 0, 11\t\n"
		"stfs 12, 4(24)\t\n"
		"stfs 0, 8(24)\t\n"
		"beq lbl_800060CC\t\n"
		"cmpwi 25, 0\t\n"
		"bne lbl_8000607C\t\n"
		"lwz 0, 0x114(1)\t\n"
		"lis 10, lbl_800EEC94@ha\t\n"
		"lwz 9, 0x110(1)\t\n"
		"mulli 8, 0, 0x44\t\n"
		"lfs 13, lbl_800EEC94@l(10)\t\n"
		"slwi 0, 9, 3\t\n"
		"addi 9, 18, 8\t\n"
		"lwzx 11, 9, 0\t\n"
		"add 11, 11, 8\t\n"
		"lfs 0, 0x38(11)\t\n"
		"fcmpu 0, 0, 13\t\n"
		"cror 3, 2, 1\t\n"
		"bns lbl_8000607C\t\n"
		"lis 9, lbl_800EEC84@ha\t\n"
		"lfs 0, lbl_800EEC84@l(9)\t\n"
		"stfs 0, 8(24)\t\n"
		"stfs 0, 0(24)\t\n"
		"stfs 0, 4(24)\t\n"
		"lbl_8000607C:\t\n"
		"mtcrf 0x80, 26\t\n"
		"beq lbl_800060CC\t\n"
		"lwz 0, 8(1)\t\n"
		"cmpwi 0, 0\t\n"
		"beq lbl_800060CC\t\n"
		"lwz 0, 0x114(1)\t\n"
		"addi 10, 18, 8\t\n"
		"lwz 9, 0x110(1)\t\n"
		"lis 11, lbl_800EEC94@ha\t\n"
		"mulli 8, 0, 0x44\t\n"
		"lfs 13, lbl_800EEC94@l(11)\t\n"
		"slwi 0, 9, 3\t\n"
		"lwzx 9, 10, 0\t\n"
		"add 9, 9, 8\t\n"
		"lfs 0, 0x38(9)\t\n"
		"fcmpu 0, 0, 13\t\n"
		"bge lbl_800060CC\t\n"
		"lwz 11, 0x10c(1)\t\n"
		"li 0, 1\t\n"
		"stw 0, 0(11)\t\n"
		"lbl_800060CC:\t\n"
		"lwz 0, 0x60(1)\t\n"
		"lwz 9, 0x58(1)\t\n"
		"lwz 11, 0x5c(1)\t\n"
		"stw 0, 8(28)\t\n"
		"stw 9, 0(28)\t\n"
		"stw 11, 4(28)\t\n"
		"beq 4, lbl_800060F4\t\n"
		"lwz 11, 0x110(1)\t\n"
		"lwz 9, 0x100(1)\t\n"
		"stb 11, 0(9)\t\n"
		"lbl_800060F4:\t\n"
		"lwz 3, 0x114(1)\t\n"
		"lbl_800060F8:\t\n"
		"lwz 0, 0x194(1)\t\n"
		"lwz 12, 0x124(1)\t\n"
		"mtlr 0\t\n"
		"lmw 14, 0x128(1)\t\n"
		"lfd 28, 0x170(1)\t\n"
		"lfd 29, 0x178(1)\t\n"
		"lfd 30, 0x180(1)\t\n"
		"lfd 31, 0x188(1)\t\n"
		"mtcrf 8, 12\t\n"
		"addi 1, 1, 0x190\t\n"
	);
}
#endif

#if 0
void COL_DoesSphereIntersectPlane(COL_SPHERE *, COL_TRI *) {

}
#else
dontmangle __ASM void COL_DoesSphereIntersectPlane__FP10COL_SPHEREP7COL_TRI() {
	asm volatile(
		"stwu 1, -0x40(1)\t\n"
		"mflr 0\t\n"
		"stmw 30, 0x38(1)\t\n"
		"stw 0, 0x44(1)\t\n"
		"lwz 10, 0(4)\t\n"
		"addi 9, 1, 8\t\n"
		"lwz 8, 4(4)\t\n"
		"mr 31, 3\t\n"
		"lwz 11, 8(4)\t\n"
		"lis 7, lbl_800EEC98@ha\t\n"
		"lwz 0, 0xc(4)\t\n"
		"li 30, 0\t\n"
		"stw 10, 8(1)\t\n"
		"stw 0, 0xc(9)\t\n"
		"stw 8, 4(9)\t\n"
		"stw 11, 8(9)\t\n"
		"lfs 11, 0xc(31)\t\n"
		"lfs 13, 0xc(1)\t\n"
		"lfs 12, 8(1)\t\n"
		"fmuls 13, 13, 11\t\n"
		"lfs 9, 8(31)\t\n"
		"lfs 0, 0x10(1)\t\n"
		"lfs 11, 0x10(31)\t\n"
		"fmadds 12, 12, 9, 13\t\n"
		"lfs 10, 0x14(1)\t\n"
		"fmadds 0, 0, 11, 12\t\n"
		"lfs 13, lbl_800EEC98@l(7)\t\n"
		"fadds 12, 0, 10\t\n"
		"lfs 8, 4(31)\t\n"
		"fcmpu 0, 12, 13\t\n"
		"bge lbl_800061B4\t\n"
		"fneg 0, 12\t\n"
		"fcmpu 0, 0, 8\t\n"
		"cror 3, 2, 0\t\n"
		"bso lbl_800061C0\t\n"
		"b lbl_80006220\t\n"
		"lbl_800061B4:\t\n"
		"fcmpu 0, 12, 8\t\n"
		"cror 3, 2, 0\t\n"
		"bns lbl_80006220\t\n"
		"lbl_800061C0:\t\n"
		"mr 3, 4\t\n"
		"addi 5, 1, 0x18\t\n"
		"addi 4, 31, 8\t\n"
		"bl COL_ClosestPointOnTriangle__FP7COL_TRIP5Vec3FT1\t\n"
		"lfs 0, 0xc(31)\t\n"
		"lfs 10, 0x1c(1)\t\n"
		"lfs 8, 8(31)\t\n"
		"lfs 13, 0x18(1)\t\n"
		"fsubs 10, 10, 0\t\n"
		"lfs 9, 0x10(31)\t\n"
		"fmuls 12, 10, 10\t\n"
		"lfs 11, 0x20(1)\t\n"
		"fsubs 13, 13, 8\t\n"
		"lfs 0, 4(31)\t\n"
		"fmadds 12, 13, 13, 12\t\n"
		"fsubs 11, 11, 9\t\n"
		"stfs 13, 0x28(1)\t\n"
		"fmadds 12, 11, 11, 12\t\n"
		"stfs 10, 0x2c(1)\t\n"
		"fmuls 0, 0, 0\t\n"
		"stfs 11, 0x30(1)\t\n"
		"fcmpu 0, 12, 0\t\n"
		"bge lbl_80006220\t\n"
		"li 30, 1\t\n"
		"lbl_80006220:\t\n"
		"mr 3, 30\t\n"
		"lwz 0, 0x44(1)\t\n"
		"mtlr 0\t\n"
		"lmw 30, 0x38(1)\t\n"
		"addi 1, 1, 0x40\t\n"
	);
}
#endif

