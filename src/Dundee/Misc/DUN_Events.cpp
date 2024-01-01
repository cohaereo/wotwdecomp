#include "DUN_Events.h"
#include "types.h"

dontmangle void ResetEventHandlers__13CEventManager();
dontmangle void ClearDelayedQueue__13CEventManager();

CEventManager::CEventManager() {
    this->mCounter = 0;
    this->ResetEventHandlers();
    this->ClearDelayedQueue();
}

void CEventManager::ResetClockAndQueues() {
    this->mCounter = 0;
    this->ClearDelayedQueue();
}

void CEventManager::ResetAll() {
    this->ResetClockAndQueues();
    this->ResetEventHandlers();
}

// TODO: Needs a cleaner match
void CEventManager::ResetEventHandlers() {
    u8 uVar1;
    u32 uVar2;

    uVar2 = 0;
    do {
        uVar1 = uVar2 + 1;
        this->mHandlerSlots[uVar2] = 0;
        uVar2 = uVar1;
    } while (uVar1 != 20);
}

// TODO: Needs a cleaner match
void CEventManager::ClearDelayedQueue() {
    u8 uVar1;
    u32 uVar2;

    uVar2 = 0;
    do {
        uVar1 = uVar2 + 1;
        this->_f4[uVar2] = 1;
        uVar2 = uVar1;
    } while (uVar1 != 10);
}

dontmangle __ASM void AttachEventHandler__13CEventManagerUiPFUiUiUi_v() {
    asm volatile(
    "mr 7, 3\t\n"
    "li 8, 0\t\n"
    "lwz 0, 4(7)\t\n"
    "li 10, 0\t\n"
    "li 3, 0\t\n"
    "cmpwi 0, 0\t\n"
    "beq lbl_800035D0\t\n"
"lbl_800035A8:\t\n"
    "addi 0, 10, 1\t\n"
    "clrlwi 10, 0, 0x18\t\n"
    "cmpwi 10, 0x14\t\n"
    "beq lbl_800035D4\t\n"
    "slwi 0, 10, 2\t\n"
    "addi 9, 7, 4\t\n"
    "lwzx 11, 9, 0\t\n"
    "cmpwi 11, 0\t\n"
    "bne lbl_800035A8\t\n"
    "mr 3, 10\t\n"
"lbl_800035D0:\t\n"
    "li 8, 1\t\n"
"lbl_800035D4:\t\n"
    "cmpwi 8, 0\t\n"
    "bclr 12, 2 \t\n"
    "addi 11, 7, 4\t\n"
    "slwi 8, 3, 2\t\n"
    "li 0, 1\t\n"
    "slwi 10, 3, 3\t\n"
    "stwx 0, 11, 8\t\n"
    "addi 9, 7, 0x54\t\n"
    "stwx 4, 9, 10\t\n"
    "addi 11, 7, 0x58\t\n"
    "stwx 5, 11, 10\t\n"
    );
}


#if 0
void CEventManager::PostEvent(u32 param_1, u32 param_2, u32 param_3) {
    for(int i = 0; i != 20; i += 1) {
        if ((this->mHandlerSlots[i] != 0) && ((this->mHandlers[i].type & param_1 >> 8) == param_1 >> 8)) {
            this->mHandlers[i].handler(param_1, param_2, param_3);
        }
    }
}
#else
dontmangle __ASM void PostEvent__13CEventManagerUiUiUi() {
    asm volatile(
    "stwu 1, -0x28(1)\t\n"
    "mflr 0\t\n"
    "stmw 24, 8(1)\t\n"
    "stw 0, 0x2c(1)\t\n"
    "mr 29, 4\t\n"
    "addi 24, 3, 0x58\t\n"
    "srwi 30, 29, 8\t\n"
    "addi 25, 3, 4\t\n"
    "addi 26, 3, 0x54\t\n"
    "mr 27, 5\t\n"
    "mr 28, 6\t\n"
    "li 31, 0\t\n"
"lbl_80003634:\t\n"
    "slwi 0, 31, 2\t\n"
    "slwi 11, 31, 3\t\n"
    "lwzx 9, 25, 0\t\n"
    "cmpwi 9, 0\t\n"
    "beq lbl_80003670\t\n"
    "lwzx 0, 26, 11\t\n"
    "mr 3, 29\t\n"
    "mr 4, 27\t\n"
    "mr 5, 28\t\n"
    "and 0, 0, 30\t\n"
    "cmpw 0, 30\t\n"
    "bne lbl_80003670\t\n"
    "lwzx 0, 24, 11\t\n"
    "mtlr 0\t\n"
    "blrl \t\n"
"lbl_80003670:\t\n"
    "addi 0, 31, 1\t\n"
    "clrlwi 31, 0, 0x18\t\n"
    "cmpwi 31, 0x14\t\n"
    "bne lbl_80003634\t\n"
    "lwz 0, 0x2c(1)\t\n"
    "mtlr 0\t\n"
    "lmw 24, 8(1)\t\n"
    "addi 1, 1, 0x28\t\n"
    );
}
#endif

dontmangle __ASM void AddDelayedEventToQueue__13CEventManagerUiUiUiUi() {
    asm volatile(
    "li 0, 0xa\t\n"
    "addi 9, 3, 0xf4\t\n"
    "mtctr 0\t\n"
    "li 11, 0\t\n"
    "li 10, 0\t\n"
    "addi 3, 3, 0x128\t\n"
"lbl_800036AC:\t\n"
    "lwz 0, 0(9)\t\n"
    "cmpwi 0, 0\t\n"
    "beq lbl_800036D0\t\n"
    "stw 10, 0(9)\t\n"
    "li 11, 1\t\n"
    "stw 7, -0xc(3)\t\n"
    "stw 4, -8(3)\t\n"
    "stw 5, -4(3)\t\n"
    "stw 6, 0(3)\t\n"
"lbl_800036D0:\t\n"
    "cmpwi 11, 0\t\n"
    "bclr 4, 2 \t\n"
    "addi 3, 3, 0x10\t\n"
    "addi 9, 9, 4\t\n"
    "bdnz lbl_800036AC\t\n"
    );
}

void CEventManager::PostEventFrameDelayed(u32 param_1, u32 param_2, u32 param_3, u32 delay) {
    u32 relativeDelay = this->mCounter + delay;
    if(relativeDelay > 31999)
        relativeDelay -= 32000;
    
    this->AddDelayedEventToQueue(param_1, param_2, param_3, relativeDelay);
}

dontmangle __ASM void InformNewGameFrame__13CEventManager() {
    asm volatile(
    "stwu 1, -0x20(1)\t\n"
    "mflr 0\t\n"
    "stmw 26, 8(1)\t\n"
    "stw 0, 0x24(1)\t\n"
    "mr 30, 3\t\n"
    "lwz 11, 0(30)\t\n"
    "addi 0, 11, 1\t\n"
    "mr 9, 0\t\n"
    "stw 0, 0(30)\t\n"
    "cmplwi 9, 0x7cff\t\n"
    "ble lbl_8000374C\t\n"
    "addi 9, 11, -31999\t\n"
"lbl_8000374C:\t\n"
    "stw 9, 0(30)\t\n"
    "li 27, 0\t\n"
    "addi 28, 30, 0xf4\t\n"
    "li 26, 1\t\n"
    "addi 31, 30, 0x128\t\n"
    "li 29, 0\t\n"
"lbl_80003764:\t\n"
    "lwzx 0, 29, 28\t\n"
    "cmpwi 0, 0\t\n"
    "bne lbl_80003798\t\n"
    "lwz 9, 0(30)\t\n"
    "lwz 0, -0xc(31)\t\n"
    "cmplw 9, 0\t\n"
    "blt lbl_80003798\t\n"
    "lwz 4, -8(31)\t\n"
    "mr 3, 30\t\n"
    "lwz 5, -4(31)\t\n"
    "lwz 6, 0(31)\t\n"
    "bl PostEvent__13CEventManagerUiUiUi\t\n"
    "stwx 26, 29, 28\t\n"
"lbl_80003798:\t\n"
    "cmpwi 27, 9\t\n"
    "addi 31, 31, 0x10\t\n"
    "addi 29, 29, 4\t\n"
    "addi 27, 27, 1\t\n"
    "bne lbl_80003764\t\n"
    "lwz 0, 0x24(1)\t\n"
    "mtlr 0\t\n"
    "lmw 26, 8(1)\t\n"
    "addi 1, 1, 0x20\t\n"
    );
}