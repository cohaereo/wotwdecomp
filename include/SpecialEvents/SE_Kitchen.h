#pragma once
#include "types.h"

class CKitchenSE {
public:
    void SwitchOff();
    int GetSpecialAIInfo(AI_AVOIDANCE_INSTANCE*, u8* param_2);
    int TestIncidentalAICollision(COL_SPHERE *, Vec3F *);
    void ResetTextures(bool);

private:
    void* _vt;
    u32 _4;
    u8 _8;
};