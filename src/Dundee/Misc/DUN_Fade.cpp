#include "types.h"

#if 0
void CFade::CFade(void) {

}
#else
dontmangle __ASM void __5CFade() {
	asm volatile(
		"mr 9, 3\t\n"
		"li 0, 0\t\n"
		"stw 0, 0x18(9)\t\n"
		"stw 0, 0xc(9)\t\n"
		"stw 0, 0(9)\t\n"
		"stw 0, 4(9)\t\n"
		"stw 0, 8(9)\t\n"
		"stw 0, 0x14(9)\t\n"
		"stw 0, 0x1c(9)\t\n"
	);
}
#endif

#if 0
void CFade::ClearFade(void) {

}
#else
dontmangle __ASM void ClearFade__5CFade() {
	asm volatile(
		"li 0, 0\t\n"
		"stw 0, 0x18(3)\t\n"
		"stw 0, 0xc(3)\t\n"
		"stw 0, 0(3)\t\n"
		"stw 0, 4(3)\t\n"
		"stw 0, 8(3)\t\n"
	);
}
#endif

#if 0
void CFade::Render(void) {

}
#else
dontmangle __ASM void Render__5CFade() {
	asm volatile(
		"stwu 1, -8(1)\t\n"
		"mflr 0\t\n"
		"stw 0, 0xc(1)\t\n"
		"lwz 0, 0x14(3)\t\n"
		"cmpwi 0, 0\t\n"
		"beq lbl_80009DE4\t\n"
		"lis 9, lbl_800EF0A4@ha\t\n"
		"lis 11, lbl_800EF0A8@ha\t\n"
		"lfs 1, lbl_800EF0A4@l(9)\t\n"
		"li 0, 0x80\t\n"
		"lfs 3, lbl_800EF0A8@l(11)\t\n"
		"mr 5, 3\t\n"
		"stw 0, 0xc(3)\t\n"
		"li 4, 0\t\n"
		"li 3, 0\t\n"
		"fmr 2, 1\t\n"
		"fmr 4, 3\t\n"
		"bl PSR_SFX_RenderInterfaceFlat\t\n"
		"b lbl_80009E18\t\n"
		"lbl_80009DE4:\t\n"
		"lwz 0, 0x1c(3)\t\n"
		"cmpwi 0, 0\t\n"
		"beq lbl_80009E18\t\n"
		"lis 9, lbl_800EF0A4@ha\t\n"
		"lis 11, lbl_800EF0A8@ha\t\n"
		"lfs 1, lbl_800EF0A4@l(9)\t\n"
		"mr 5, 3\t\n"
		"lfs 3, lbl_800EF0A8@l(11)\t\n"
		"li 3, 0\t\n"
		"li 4, 0\t\n"
		"fmr 2, 1\t\n"
		"fmr 4, 3\t\n"
		"bl PSR_SFX_RenderInterfaceFlat\t\n"
		"lbl_80009E18:\t\n"
		"lwz 0, 0xc(1)\t\n"
		"mtlr 0\t\n"
		"addi 1, 1, 8\t\n"
	);
}
#endif

#if 0
void CFade::setFadeChange(signed char) {

}
#else
dontmangle __ASM void setFadeChange__5CFadeSc() {
	asm volatile(
		"stb 4, 0x10(3)\t\n"
	);
}
#endif

#if 0
void CFade::fadeToBlack(void) {

}
#else
dontmangle __ASM void fadeToBlack__5CFade() {
	asm volatile(
		"li 9, 0\t\n"
		"li 11, 1\t\n"
		"li 0, 8\t\n"
		"stw 11, 0x1c(3)\t\n"
		"stw 9, 0xc(3)\t\n"
		"stb 0, 0x10(3)\t\n"
		"stw 9, 0x14(3)\t\n"
		"stw 11, 0x18(3)\t\n"
	);
}
#endif

#if 0
void CFade::fadeFromBlack(void) {

}
#else
dontmangle __ASM void fadeFromBlack__5CFade() {
	asm volatile(
		"li 10, 1\t\n"
		"li 0, 0\t\n"
		"li 9, 0x80\t\n"
		"li 11, -8\t\n"
		"stw 10, 0x1c(3)\t\n"
		"stw 0, 0x14(3)\t\n"
		"stw 9, 0xc(3)\t\n"
		"stb 11, 0x10(3)\t\n"
		"stw 10, 0x18(3)\t\n"
	);
}
#endif

#if 0
void CFade::Process(void) {

}
#else
dontmangle __ASM void Process__5CFade() {
	asm volatile(
		"stwu 1, -0x10(1)\t\n"
		"mflr 0\t\n"
		"stw 31, 0xc(1)\t\n"
		"stw 0, 0x14(1)\t\n"
		"mr 31, 3\t\n"
		"lwz 0, 0x18(31)\t\n"
		"cmpwi 0, 0\t\n"
		"beq lbl_80009F28\t\n"
		"lbz 0, 0x10(31)\t\n"
		"lwz 9, 0xc(31)\t\n"
		"extsb 0, 0\t\n"
		"add 9, 9, 0\t\n"
		"cmplwi 9, 0x7f\t\n"
		"stw 9, 0xc(31)\t\n"
		"ble lbl_80009EF4\t\n"
		"lis 9, lbl_801A5B44@ha\t\n"
		"li 10, 0\t\n"
		"lwz 11, lbl_801A5B44@l(9)\t\n"
		"li 0, 0x80\t\n"
		"li 9, 1\t\n"
		"stw 10, 0x1c(31)\t\n"
		"stw 0, 0xc(31)\t\n"
		"addis 11, 11, 3\t\n"
		"stw 9, 0x14(31)\t\n"
		"li 4, 0x101\t\n"
		"stw 10, 0x18(31)\t\n"
		"li 5, 0\t\n"
		"li 6, 0\t\n"
		"lwz 3, -0x277c(11)\t\n"
		"bl PostEvent__13CEventManagerUiUiUi\t\n"
		"lbl_80009EF4:\t\n"
		"lwz 0, 0xc(31)\t\n"
		"cmpwi 0, 0\t\n"
		"bne lbl_80009F28\t\n"
		"lis 11, lbl_801A5B44@ha\t\n"
		"li 4, 0x101\t\n"
		"lwz 9, lbl_801A5B44@l(11)\t\n"
		"li 5, 0\t\n"
		"stw 0, 0x18(31)\t\n"
		"li 6, 0\t\n"
		"stw 0, 0x1c(31)\t\n"
		"addis 9, 9, 3\t\n"
		"lwz 3, -0x277c(9)\t\n"
		"bl PostEvent__13CEventManagerUiUiUi\t\n"
		"lbl_80009F28:\t\n"
		"lwz 0, 0x14(1)\t\n"
		"mtlr 0\t\n"
		"lwz 31, 0xc(1)\t\n"
		"addi 1, 1, 0x10\t\n"
	);
}
#endif

#if 0
void CFade::getFadeValue(void) {

}
#else
dontmangle __ASM void getFadeValue__5CFade() {
	asm volatile(
		"lwz 3, 0xc(3)\t\n"
	);
}
#endif

