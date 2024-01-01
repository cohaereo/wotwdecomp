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

bool TXT_IsCurrentLanguageValid();

char* TXT_GetString(u16 stringIndex) {
    if (!TXT_IsCurrentLanguageValid()) {
        return a_u8TextTable[0][36];
    }

    return a_u8TextTable[g_su8TXTcurrentLanguage][stringIndex];
}

extern u8 lbl_801A5C04;

void TXT_ChangeLanguage(u8 newLanguage) {
    g_su8TXTcurrentLanguage = newLanguage;
    lbl_801A5C04 = newLanguage; // TODO: Part of the save file
}

bool TXT_IsCurrentLanguageValid() {
    return g_su8TXTcurrentLanguage < LANG_COUNT;
}

u8 TXT_GetCurrentLanguage() {
    return g_su8TXTcurrentLanguage;
}

void TXT_SetLanguageToEnglish(u8) {
    TXT_ChangeLanguage(LANG_ENGLISH);
}