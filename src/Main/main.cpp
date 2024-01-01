#include "types.h"

dontmangle void __main();
void APP_Initialise();
void APP_Process();
void APP_Render();

#ifdef NON_MATCHING
// #if 1
dontmangle int main_() {
    __main();
    APP_Initialise();
    
    while(1) {
        APP_Process();
        APP_Render();
    }

    return 0;
}
#else
// Function is called main_ instead of main because the ProDG compiler forces a call to __main at the very start
dontmangle __ASM void main_() {
    // nofralloc
    asm volatile(
    "stwu 1, -0x10(1)\t\n"
    "mflr 0\t\n"
    "mfcr 12\t\n"
    "stw 0, 0x14(1)\t\n"
    "stw 12, 0xc(1)\t\n"
    "bl __main\t\n"
    "li 0, 0\t\n"
    "cmpwi 4, 0, 0\t\n"
    "bl APP_Initialise__Fv\t\n"
"lbl_8000F134:\t\n"
    "bl APP_Process__Fv\t\n"
    "bl APP_Render__Fv\t\n"
    "beq 4, lbl_8000F134\t\n"
    "li 3, 0\t\n"
    "lwz 0, 0x14(1)\t\n"
    "lwz 12, 0xc(1)\t\n"
    "mtlr 0\t\n"
    "mtcrf 8, 12\t\n"
    "addi 1, 1, 0x10\t\n"
    );
}
#endif