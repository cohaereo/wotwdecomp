#include "types.h"
#include "DUN_Events.h"
#include "DUN_Fade.h"

CFade::CFade(void) {
  this->mColour.a = 0;
  this->mColour.r = 0;
  this->mColour.g = 0;
  this->mColour.b = 0;
  this->_14 = false;
  this->mShowFade = false;
  this->mIsFading = false;
}

void CFade::ClearFade(void) {
	this->mColour.a = 0;
	this->mColour.r = 0;
	this->mColour.g = 0;
	this->mColour.b = 0;
	this->mIsFading = false;
}

extern float lbl_800EF0A4; // 0.0
extern float lbl_800EF0A8; // 1.0
dontmangle void PSR_SFX_RenderInterfaceFlat(int, int, float, float, float, float, PSR_COLOUR*);

void CFade::Render(void) {
	if(this->_14) {
		this->mColour.a = 0x80;
		PSR_SFX_RenderInterfaceFlat(0, 0, lbl_800EF0A4, lbl_800EF0A4, lbl_800EF0A8, lbl_800EF0A8, &this->mColour);
	} else {
		if(this->mShowFade) {
			PSR_SFX_RenderInterfaceFlat(0, 0, lbl_800EF0A4, lbl_800EF0A4, lbl_800EF0A8, lbl_800EF0A8, &this->mColour);
		}
	}
}

void CFade::setFadeChange(signed char v) {
	this->mFadeChange = v;
}

// Matches, just in the wrong order
#if 0
void CFade::fadeToBlack(void) {
	this->mColour.a = 0;
	this->mIsFading = 1;
	this->mFadeChange = 8;
	this->_14 = 0;
	this->mShowFade = 1;
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

void CFade::fadeFromBlack(void) {
	this->mIsFading = 1;
	this->_14 = 0;
	this->mColour.a = 0x80;
	this->mFadeChange = -8;
	this->mShowFade = 1;
}

extern u8* g_pGameGlob;
#if 0
void CFade::Process(void) {
	if (this->mIsFading != false) {
		(this->mColour).a += this->mFadeChange;
		if (this->mColour.a > 0x7f) {
			this->mIsFading = false;
			this->mShowFade = false;
			this->mColour.a = 0x80;
			this->_14 = true;

			// TODO: CGameGlob structure
			(*(CEventManager**)(g_pGameGlob + 0x2d884))->PostEvent(0x101, 0, 0);
		}
		if (this->mColour.a == 0) {
			this->mIsFading = 0;
			this->mShowFade = 0;
			(*(CEventManager**)(g_pGameGlob + 0x2d884))->PostEvent(0x101, 0, 0);
		}
	}
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
		"lis 9, g_pGameGlob@ha\t\n"
		"li 10, 0\t\n"
		"lwz 11, g_pGameGlob@l(9)\t\n"
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
		"lis 11, g_pGameGlob@ha\t\n"
		"li 4, 0x101\t\n"
		"lwz 9, g_pGameGlob@l(11)\t\n"
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

u32 CFade::getFadeValue() {
	return this->mColour.a;
}
