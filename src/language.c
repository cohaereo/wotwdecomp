#include "types.h"

// #define NON_MATCHING

extern u8 g_Language;
extern char g_LanguageStringTable[6][274][255];
extern u32* lbl_8010F515;

bool LANG_IsLanguageValid();

#ifdef NON_MATCHING
char* LANG_GetString(int string_index) {
    if (!LANG_IsLanguageValid()) {
        return g_LanguageStringTable[0][36];
    }

    return g_LanguageStringTable[g_Language][string_index];
}
#else
void asm LANG_GetString() {
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r31, 0xc(r1)
    stw r0, 0x14(r1)
    mr r31, r3
    bl LANG_IsLanguageValid
    cmpwi r3, 0
    beq lbl_80010024
    lis r9, g_Language@ha
    lis r0, 0x110EE@h
    lbz r11, g_Language@l(r9)
    ori r0, r0, 0x110EE@l
    slwi r3, r31, 8
    lis r9, g_LanguageStringTable@ha
    mullw r11, r11, r0
    subf r3, r31, r3
    addi r9, r9, g_LanguageStringTable@l
    add r3, r3, r9
    add r3, r11, r3
    b lbl_8001002C
lbl_80010024:
    lis r3, g_LanguageStringTable+0x23dc@ha
    addi r3, r3, g_LanguageStringTable+0x23dc@l
lbl_8001002C:
    lwz r0, 0x14(r1)
    mtlr r0
    lwz r31, 0xc(r1)
    addi r1, r1, 0x10
    blr 
}
#endif

extern u8 lbl_801A5C04;

#ifdef NON_MATCHING
void LANG_SetLanguage(u8 a1) {
    g_Language = a1;
    lbl_801A5C04 = a1;
}
#else
void asm LANG_SetLanguage(u8 a1) {
    nofralloc
    lis r9, g_Language@ha
    lis r11, lbl_801A5C04@ha
    stb r3, g_Language@l(r9)
    stb r3, lbl_801A5C04@l(r11)
    blr 
}
#endif

#ifdef NON_MATCHING
bool LANG_IsLanguageValid() {
    return g_Language < 6; // Works with GCC, not with MWCC
}
#else
bool asm LANG_IsLanguageValid() {
    nofralloc
    lis r9, g_Language@ha
    lbz r3, g_Language@l(r9)
    subfic r3, r3, 5
    li r3, 0
    adde r3, r3, r3
    blr 
}
#endif

#ifdef NON_MATCHING
u8 LANG_GetLanguage() {
    return g_Language; // Works with GCC, not with MWCC
}
#else
asm u8 LANG_GetLanguage() {
    nofralloc
    lis r9, g_Language@ha
    lbz r3, g_Language@l(r9)
    blr 
}
#endif

#ifdef NON_MATCHING
void LANG_ResetLanguage() {
    LANG_SetLanguage(0);
}
#else
asm void LANG_ResetLanguage() {
    nofralloc
    stwu r1, -8(r1)
    mflr r0
    stw r0, 0xc(r1)
    li r3, 0
    bl LANG_SetLanguage
    lwz r0, 0xc(r1)
    mtlr r0
    addi r1, r1, 8
    blr 
}
#endif