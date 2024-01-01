#include "types.h"

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

char* TXT_GetString__FUs(int string_index) {
    if (!TXT_IsCurrentLanguageValid__Fv()) {
        return a_u8TextTable[0][36];
    }

    return a_u8TextTable[g_su8TXTcurrentLanguage][string_index];
}

extern u8 lbl_801A5C04;

void TXT_ChangeLanguage__FUc(u8 a1) {
    g_su8TXTcurrentLanguage = a1;
    lbl_801A5C04 = a1; // TODO: Part of the save file
}

bool TXT_IsCurrentLanguageValid__Fv() {
    return g_su8TXTcurrentLanguage < LANG_COUNT;
}

u8 TXT_GetCurrentLanguage__Fv() {
    return g_su8TXTcurrentLanguage;
}

void func_80010078() {
    TXT_ChangeLanguage__FUc(0);
}