#include "types.h"

// #define NON_MATCHING

extern u8 g_language;
extern char* lbl_8010D139;
extern u32* lbl_8010F515;

bool IsLanguageValid();

void asm GetLocalisedString() {
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r31, 0xc(r1)
    stw r0, 0x14(r1)
    mr r31, r3
    bl IsLanguageValid
    cmpwi r3, 0
    beq lbl_80010024
    lis r9, g_language@ha
    lis r0, 0x000110EE@h
    lbz r11, g_language@l(r9)
    ori r0, r0, 0x000110EE@l
    slwi r3, r31, 8
    lis r9, lbl_8010D139@ha
    mullw r11, r11, r0
    subf r3, r31, r3
    addi r9, r9, lbl_8010D139@l
    add r3, r3, r9
    add r3, r11, r3
    b lbl_8001002C
lbl_80010024:
    lis r3, lbl_8010F515@ha
    addi r3, r3, lbl_8010F515@l
lbl_8001002C:
    lwz r0, 0x14(r1)
    mtlr r0
    lwz r31, 0xc(r1)
    addi r1, r1, 0x10
    blr 
}

extern u8 lbl_801A5C04;

#ifdef NON_MATCHING
void SetLanguage(u8 a1) {
    g_language = a1;
    lbl_801A5C04 = a1;
}
#else
void asm SetLanguage(u8 a1) {
    nofralloc
    lis r9, g_language@ha
    lis r11, lbl_801A5C04@ha
    stb r3, g_language@l(r9)
    stb r3, lbl_801A5C04@l(r11)
    blr 
}
#endif

#ifdef NON_MATCHING
bool IsLanguageValid() {
    return g_language < 6; // Works with GCC, not with MWCC
}
#else
bool asm IsLanguageValid() {
    nofralloc
    lis r9, g_language@ha
    lbz r3, g_language@l(r9)
    subfic r3, r3, 5
    li r3, 0
    adde r3, r3, r3
    blr 
}
#endif

#ifdef NON_MATCHING
u8 GetLanguage() {
    return g_language; // Works with GCC, not with MWCC
}
#else
asm u8 GetLanguage() {
    nofralloc
    lis r9, g_language@ha
    lbz r3, g_language@l(r9)
    blr 
}
#endif

#ifdef NON_MATCHING
void ResetLanguage() {
    SetLanguage(0);
}
#else
asm void ResetLanguage() {
    nofralloc
    stwu r1, -8(r1)
    mflr r0
    stw r0, 0xc(r1)
    li r3, 0
    bl SetLanguage
    lwz r0, 0xc(r1)
    mtlr r0
    addi r1, r1, 8
    blr 
}
#endif