#include "types.h"

// #define NON_MATCHING

#define LANG_LANGUAGE_COUNT 6
#define LANG_STRING_COUNT 274
#define LANG_STING_LENGTH 255

extern u8 g_su8TXTcurrentLanguage;
extern char a_u8TextTable[LANG_LANGUAGE_COUNT][LANG_STRING_COUNT][LANG_STING_LENGTH];

enum Language {
    LANG_ENGLISH = 0,
    LANG_FRENCH = 1,
    LANG_GERMAN = 2,
    LANG_SPANISH = 3,
    LANG_ITALIAN = 4,
    LANG_DUTCH = 5,
    LANG_COUNT,
};

bool TXT_IsCurrentLanguageValid__Fv();

#if 1
char* TXT_GetString__FUs(int string_index) {
    if (!TXT_IsCurrentLanguageValid__Fv()) {
        return a_u8TextTable[0][36];
    }

    return a_u8TextTable[g_su8TXTcurrentLanguage][string_index];
}
#else
__ASM void TXT_GetString__FUs() {
    asm volatile(
    "stwu 1, -0x10(1)\t\n"
    "mflr 0\t\n"
    "stw 31, 0xc(1)\t\n"
    "stw 0, 0x14(1)\t\n"
    "mr 31, 3\t\n"
    "bl TXT_IsCurrentLanguageValid__Fv\t\n"
    "cmpwi 3, 0\t\n"
    "beq lbl_80010024\t\n"
    "lis 9, g_su8TXTcurrentLanguage@ha\t\n"
    "lis 0, 0x110EE@h\t\n"
    "lbz 11, g_su8TXTcurrentLanguage@l(9)\t\n"
    "ori 0, 0, 0x110EE@l\t\n"
    "slwi 3, 31, 8\t\n"
    "lis 9, a_u8TextTable@ha\t\n"
    "mullw 11, 11, 0\t\n"
    "subf 3, 31, 3\t\n"
    "addi 9, 9, a_u8TextTable@l\t\n"
    "add 3, 3, 9\t\n"
    "add 3, 11, 3\t\n"
    "b lbl_8001002C\t\n"
"lbl_80010024:\t\n"
    "lis 3, a_u8TextTable+0x23dc@ha\t\n"
    "addi 3, 3, a_u8TextTable+0x23dc@l\t\n"
"lbl_8001002C:\t\n"
    "lwz 0, 0x14(1)\t\n"
    "mtlr 0\t\n"
    "lwz 31, 0xc(1)\t\n"
    "addi 1, 1, 0x10\t\n"
    );
}
#endif

extern u8 lbl_801A5C04;

#if 1
void TXT_ChangeLanguage__FUc(u8 a1) {
    g_su8TXTcurrentLanguage = a1;
    lbl_801A5C04 = a1;
}
#else
__ASM void TXT_ChangeLanguage__FUc(u8 a1) {
    asm volatile(
    "lis 9, g_su8TXTcurrentLanguage@ha\t\n"
    "lis 11, lbl_801A5C04@ha\t\n"
    "stb 3, g_su8TXTcurrentLanguage@l(9)\t\n"
    "stb 3, lbl_801A5C04@l(11)\t\n"
    );
}
#endif

#if 1
bool TXT_IsCurrentLanguageValid__Fv() {
    return g_su8TXTcurrentLanguage < LANG_COUNT; // Works with GCC, not with MWCC
}
#else
__ASM bool TXT_IsCurrentLanguageValid__Fv() {
    asm volatile(
    "lis 9, g_su8TXTcurrentLanguage@ha\t\n"
    "lbz 3, g_su8TXTcurrentLanguage@l(9)\t\n"
    "subfic 3, 3, 5\t\n"
    "li 3, 0\t\n"
    "adde 3, 3, 3\t\n"
    );
}
#endif

#if 1
u8 TXT_GetCurrentLanguage__Fv() {
    return g_su8TXTcurrentLanguage; // Works with GCC, not with MWCC
}
#else
__ASM u8 TXT_GetCurrentLanguage__Fv() {
    asm volatile(
    "lis 9, g_su8TXTcurrentLanguage@ha\t\n"
    "lbz 3, g_su8TXTcurrentLanguage@l(9)\t\n"
    );
}
#endif

#if 1
void func_80010078() {
    TXT_ChangeLanguage__FUc(0);
}
#else
__ASM void func_80010078() {
    asm volatile(
    "stwu 1, -8(1)\t\n"
    "mflr 0\t\n"
    "stw 0, 0xc(1)\t\n"
    "li 3, 0\t\n"
    "bl TXT_ChangeLanguage__FUc\t\n"
    "lwz 0, 0xc(1)\t\n"
    "mtlr 0\t\n"
    "addi 1, 1, 8\t\n"
    );
}
#endif