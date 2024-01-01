#include "types.h"

#if 0
dontmangle void COL_GetClosestPointOnLine__FP5Vec3FN30() {

}
#else
dontmangle __ASM void COL_GetClosestPointOnLine__FP5Vec3FN30() {
	asm volatile(
		"stwu 1, -0x28(1)\t\n"
		"lfs 0, 4(4)\t\n"
		"lis 9, lbl_800EEC54@ha\t\n"
		"lfs 7, 4(3)\t\n"
		"lfs 13, 0(4)\t\n"
		"lfs 5, 0(3)\t\n"
		"fsubs 9, 0, 7\t\n"
		"lfs 6, 8(3)\t\n"
		"fmuls 0, 9, 9\t\n"
		"lfs 12, 8(4)\t\n"
		"fsubs 11, 13, 5\t\n"
		"lfs 13, lbl_800EEC54@l(9)\t\n"
		"fmadds 0, 11, 11, 0\t\n"
		"fsubs 10, 12, 6\t\n"
		"stfs 11, 8(1)\t\n"
		"fmadds 8, 10, 10, 0\t\n"
		"stfs 9, 0xc(1)\t\n"
		"stfs 10, 0x10(1)\t\n"
		"fcmpu 0, 8, 13\t\n"
		"bne lbl_80004D7C\t\n"
		"fmr 10, 13\t\n"
		"b lbl_80004DA4\t\n"
		"lbl_80004D7C:\t\n"
		"lfs 0, 4(5)\t\n"
		"lfs 12, 0(5)\t\n"
		"fsubs 0, 0, 7\t\n"
		"lfs 13, 8(5)\t\n"
		"fsubs 12, 12, 5\t\n"
		"fmuls 0, 0, 9\t\n"
		"fmadds 12, 12, 11, 0\t\n"
		"fsubs 13, 13, 6\t\n"
		"fmadds 13, 13, 10, 12\t\n"
		"fdivs 10, 13, 8\t\n"
		"lbl_80004DA4:\t\n"
		"lis 9, lbl_800EEC54@ha\t\n"
		"lfs 0, lbl_800EEC54@l(9)\t\n"
		"fcmpu 0, 10, 0\t\n"
		"cror 3, 2, 0\t\n"
		"bns lbl_80004DD4\t\n"
		"lfs 0, 0(3)\t\n"
		"stfs 0, 0(6)\t\n"
		"lfs 13, 4(3)\t\n"
		"stfs 13, 4(6)\t\n"
		"lfs 0, 8(3)\t\n"
		"stfs 0, 8(6)\t\n"
		"b lbl_80004E34\t\n"
		"lbl_80004DD4:\t\n"
		"lis 9, lbl_800EEC58@ha\t\n"
		"lfs 0, lbl_800EEC58@l(9)\t\n"
		"fcmpu 0, 10, 0\t\n"
		"cror 3, 2, 1\t\n"
		"bns lbl_80004E04\t\n"
		"lfs 0, 0(4)\t\n"
		"stfs 0, 0(6)\t\n"
		"lfs 13, 4(4)\t\n"
		"stfs 13, 4(6)\t\n"
		"lfs 0, 8(4)\t\n"
		"stfs 0, 8(6)\t\n"
		"b lbl_80004E34\t\n"
		"lbl_80004E04:\t\n"
		"lfs 13, 0(3)\t\n"
		"lfs 0, 8(1)\t\n"
		"lfs 12, 0xc(1)\t\n"
		"fmadds 0, 10, 0, 13\t\n"
		"lfs 11, 0x10(1)\t\n"
		"stfs 0, 0(6)\t\n"
		"lfs 13, 4(3)\t\n"
		"fmadds 12, 10, 12, 13\t\n"
		"stfs 12, 4(6)\t\n"
		"lfs 0, 8(3)\t\n"
		"fmadds 11, 10, 11, 0\t\n"
		"stfs 11, 8(6)\t\n"
		"lbl_80004E34:\t\n"
		"lfs 11, 4(6)\t\n"
		"lfs 12, 4(5)\t\n"
		"lfs 0, 0(5)\t\n"
		"fsubs 12, 12, 11\t\n"
		"lfs 10, 0(6)\t\n"
		"lfs 13, 8(5)\t\n"
		"fmuls 1, 12, 12\t\n"
		"lfs 11, 8(6)\t\n"
		"fsubs 0, 0, 10\t\n"
		"fmadds 1, 0, 0, 1\t\n"
		"stfs 0, 0x18(1)\t\n"
		"fsubs 13, 13, 11\t\n"
		"stfs 12, 0x1c(1)\t\n"
		"fmadds 1, 13, 13, 1\t\n"
		"stfs 13, 0x20(1)\t\n"
		"addi 1, 1, 0x28\t\n"
	);
}
#endif

#if 0
void COL_ClosestPointOnTriangle(COL_TRI *, Vec3F *, Vec3F *) {

}
#else
dontmangle __ASM void COL_ClosestPointOnTriangle__FP7COL_TRIP5Vec3FT1() {
	asm volatile(
		"stwu 1, -0x58(1)\t\n"
		"mflr 0\t\n"
		"stmw 27, 0x44(1)\t\n"
		"stw 0, 0x5c(1)\t\n"
		"mr 30, 3\t\n"
		"mr 28, 4\t\n"
		"addi 27, 30, 0x10\t\n"
		"addi 29, 30, 0x1c\t\n"
		"mr 31, 5\t\n"
		"addi 6, 1, 0x18\t\n"
		"mr 3, 27\t\n"
		"mr 4, 29\t\n"
		"mr 5, 28\t\n"
		"addi 30, 30, 0x28\t\n"
		"bl COL_GetClosestPointOnLine__FP5Vec3FN30\t\n"
		"addi 6, 1, 0x24\t\n"
		"mr 3, 29\t\n"
		"stfs 1, 8(1)\t\n"
		"mr 4, 30\t\n"
		"mr 5, 28\t\n"
		"bl COL_GetClosestPointOnLine__FP5Vec3FN30\t\n"
		"mr 3, 30\t\n"
		"stfs 1, 0xc(1)\t\n"
		"mr 4, 27\t\n"
		"mr 5, 28\t\n"
		"addi 6, 1, 0x30\t\n"
		"bl COL_GetClosestPointOnLine__FP5Vec3FN30\t\n"
		"li 8, 3\t\n"
		"lis 9, lbl_800EEC5C@ha\t\n"
		"mtctr 8\t\n"
		"addi 10, 1, 8\t\n"
		"lfs 13, lbl_800EEC5C@l(9)\t\n"
		"li 0, 1\t\n"
		"stfs 1, 0x10(1)\t\n"
		"li 3, 0\t\n"
		"li 11, 0\t\n"
		"mr 9, 10\t\n"
		"lbl_80004F0C:\t\n"
		"cmpwi 0, 0\t\n"
		"bne lbl_80004F20\t\n"
		"lfs 0, 0(9)\t\n"
		"fcmpu 0, 0, 13\t\n"
		"bge lbl_80004F2C\t\n"
		"lbl_80004F20:\t\n"
		"lfs 13, 0(9)\t\n"
		"li 0, 0\t\n"
		"mr 3, 11\t\n"
		"lbl_80004F2C:\t\n"
		"addi 9, 9, 4\t\n"
		"addi 11, 11, 1\t\n"
		"bdnz lbl_80004F0C\t\n"
		"mulli 9, 3, 0xc\t\n"
		"add 9, 9, 10\t\n"
		"lwz 10, 0x10(9)\t\n"
		"addi 11, 9, 0x10\t\n"
		"lwz 0, 8(11)\t\n"
		"lwz 9, 4(11)\t\n"
		"stw 0, 8(31)\t\n"
		"stw 10, 0(31)\t\n"
		"stw 9, 4(31)\t\n"
		"lwz 0, 0x5c(1)\t\n"
		"mtlr 0\t\n"
		"lmw 27, 0x44(1)\t\n"
		"addi 1, 1, 0x58\t\n"
	);
}
#endif

#if 0
void COL_PointIn2DTriangle(Vec2F *, Vec2F *) {

}
#else
dontmangle __ASM void COL_PointIn2DTriangle__FP5Vec2FT0() {
	asm volatile(
		"stwu 1, -0x30(1)\t\n"
		"stmw 27, 0x1c(1)\t\n"
		"mr 31, 3\t\n"
		"lis 9, lbl_800FC1A8@ha\t\n"
		"addi 28, 9, lbl_800FC1A8@l\t\n"
		"mr 29, 4\t\n"
		"lfs 8, 4(31)\t\n"
		"addi 27, 28, 4\t\n"
		"li 3, 0\t\n"
		"li 5, 0\t\n"
		"addi 30, 1, 8\t\n"
		"addi 4, 1, 0x10\t\n"
		"lbl_80004FA0:\t\n"
		"slwi 0, 5, 3\t\n"
		"li 6, -1\t\n"
		"lwzx 8, 27, 0\t\n"
		"lwzx 7, 28, 0\t\n"
		"slwi 8, 8, 3\t\n"
		"slwi 7, 7, 3\t\n"
		"add 8, 8, 29\t\n"
		"add 7, 7, 29\t\n"
		"lwz 9, 0(8)\t\n"
		"lwz 10, 4(8)\t\n"
		"lwz 11, 0(7)\t\n"
		"lwz 12, 4(7)\t\n"
		"stw 9, 0x10(1)\t\n"
		"stw 10, 0x14(1)\t\n"
		"stw 11, 8(1)\t\n"
		"stw 12, 0xc(1)\t\n"
		"lfs 0, 4(30)\t\n"
		"fcmpu 0, 0, 8\t\n"
		"cror 3, 2, 1\t\n"
		"bns lbl_80004FF4\t\n"
		"li 6, 1\t\n"
		"lbl_80004FF4:\t\n"
		"lfs 0, 4(4)\t\n"
		"fcmpu 0, 0, 8\t\n"
		"cror 3, 2, 1\t\n"
		"bns lbl_80005010\t\n"
		"cmpwi 6, 1\t\n"
		"bne lbl_80005018\t\n"
		"b lbl_80005078\t\n"
		"lbl_80005010:\t\n"
		"cmpwi 6, -1\t\n"
		"beq lbl_80005078\t\n"
		"lbl_80005018:\t\n"
		"lfs 13, 8(1)\t\n"
		"lfs 0, 0(31)\t\n"
		"fmr 11, 13\t\n"
		"lfs 10, 0x10(1)\t\n"
		"fmr 9, 0\t\n"
		"fcmpu 0, 13, 0\t\n"
		"cror 3, 2, 1\t\n"
		"bns lbl_80005044\t\n"
		"fcmpu 0, 10, 9\t\n"
		"cror 3, 2, 1\t\n"
		"bso lbl_80005074\t\n"
		"lbl_80005044:\t\n"
		"lfs 12, 4(4)\t\n"
		"fsubs 11, 11, 10\t\n"
		"lfs 0, 4(31)\t\n"
		"lfs 13, 4(30)\t\n"
		"fsubs 0, 12, 0\t\n"
		"fmuls 0, 0, 11\t\n"
		"fsubs 13, 13, 12\t\n"
		"fdivs 0, 0, 13\t\n"
		"fsubs 0, 10, 0\t\n"
		"fcmpu 0, 0, 9\t\n"
		"cror 3, 2, 1\t\n"
		"bns lbl_80005078\t\n"
		"lbl_80005074:\t\n"
		"xori 3, 3, 1\t\n"
		"lbl_80005078:\t\n"
		"addi 0, 5, 1\t\n"
		"clrlwi 5, 0, 0x18\t\n"
		"cmpwi 5, 3\t\n"
		"bne lbl_80004FA0\t\n"
		"lmw 27, 0x1c(1)\t\n"
		"addi 1, 1, 0x30\t\n"
	);
}
#endif

#if 0
void COL_PointInTriangle(COL_TRI *, Vec3F *) {

}
#else
dontmangle __ASM void COL_PointInTriangle__FP7COL_TRIP5Vec3F() {
	asm volatile(
		"stwu 1, -0x28(1)\t\n"
		"mflr 0\t\n"
		"stw 0, 0x2c(1)\t\n"
		"lis 9, lbl_800EEC60@ha\t\n"
		"lfs 12, 0x34(3)\t\n"
		"lfs 11, lbl_800EEC60@l(9)\t\n"
		"fcmpu 0, 12, 11\t\n"
		"bge lbl_800050B8\t\n"
		"fneg 12, 12\t\n"
		"lbl_800050B8:\t\n"
		"lfs 13, 0x38(3)\t\n"
		"fcmpu 0, 13, 11\t\n"
		"bge lbl_800050C8\t\n"
		"fneg 13, 13\t\n"
		"lbl_800050C8:\t\n"
		"lfs 0, 0x3c(3)\t\n"
		"fcmpu 0, 0, 11\t\n"
		"bge lbl_800050D8\t\n"
		"fneg 0, 0\t\n"
		"lbl_800050D8:\t\n"
		"fcmpu 0, 12, 13\t\n"
		"ble lbl_800050F4\t\n"
		"fcmpu 0, 12, 0\t\n"
		"li 0, 2\t\n"
		"ble lbl_80005104\t\n"
		"li 0, 0\t\n"
		"b lbl_80005104\t\n"
		"lbl_800050F4:\t\n"
		"fcmpu 0, 13, 0\t\n"
		"li 0, 2\t\n"
		"ble lbl_80005104\t\n"
		"li 0, 1\t\n"
		"lbl_80005104:\t\n"
		"cmpwi 0, 1\t\n"
		"beq lbl_8000515C\t\n"
		"bgt lbl_80005120\t\n"
		"cmpwi 0, 0\t\n"
		"beq lbl_80005130\t\n"
		"addi 0, 1, 0x20\t\n"
		"b lbl_800051D0\t\n"
		"lbl_80005120:\t\n"
		"cmpwi 0, 2\t\n"
		"beq lbl_80005188\t\n"
		"addi 0, 1, 0x20\t\n"
		"b lbl_800051D0\t\n"
		"lbl_80005130:\t\n"
		"lfs 7, 0x30(3)\t\n"
		"addi 9, 1, 0x20\t\n"
		"lfs 10, 0x14(3)\t\n"
		"mr 0, 9\t\n"
		"lfs 0, 0x18(3)\t\n"
		"lfs 13, 0x20(3)\t\n"
		"lfs 12, 0x24(3)\t\n"
		"lfs 11, 0x2c(3)\t\n"
		"lfs 9, 4(4)\t\n"
		"lfs 8, 8(4)\t\n"
		"b lbl_800051B0\t\n"
		"lbl_8000515C:\t\n"
		"lfs 7, 0x30(3)\t\n"
		"addi 9, 1, 0x20\t\n"
		"lfs 10, 0x10(3)\t\n"
		"mr 0, 9\t\n"
		"lfs 0, 0x18(3)\t\n"
		"lfs 13, 0x1c(3)\t\n"
		"lfs 12, 0x24(3)\t\n"
		"lfs 11, 0x28(3)\t\n"
		"lfs 9, 0(4)\t\n"
		"lfs 8, 8(4)\t\n"
		"b lbl_800051B0\t\n"
		"lbl_80005188:\t\n"
		"lfs 7, 0x2c(3)\t\n"
		"addi 9, 1, 0x20\t\n"
		"lfs 10, 0x10(3)\t\n"
		"mr 0, 9\t\n"
		"lfs 0, 0x14(3)\t\n"
		"lfs 13, 0x1c(3)\t\n"
		"lfs 12, 0x20(3)\t\n"
		"lfs 11, 0x28(3)\t\n"
		"lfs 9, 0(4)\t\n"
		"lfs 8, 4(4)\t\n"
		"lbl_800051B0:\t\n"
		"stfs 10, 8(1)\t\n"
		"stfs 0, 0xc(1)\t\n"
		"stfs 13, 0x10(1)\t\n"
		"stfs 12, 0x14(1)\t\n"
		"stfs 11, 0x18(1)\t\n"
		"stfs 7, 0x1c(1)\t\n"
		"stfs 9, 0x20(1)\t\n"
		"stfs 8, 4(9)\t\n"
		"lbl_800051D0:\t\n"
		"mr 3, 0\t\n"
		"addi 4, 1, 8\t\n"
		"bl COL_PointIn2DTriangle__FP5Vec2FT0\t\n"
		"lwz 0, 0x2c(1)\t\n"
		"mtlr 0\t\n"
		"addi 1, 1, 0x28\t\n"
	);
}
#endif
