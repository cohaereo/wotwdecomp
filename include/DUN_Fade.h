#pragma once
#include "types.h"

class CFade {
public:
    CFade();
    void ClearFade();
    void Render();
    void setFadeChange(signed char fadeChange);
    void fadeToBlack();
    void fadeFromBlack();
    void Process();
    u32 getFadeValue();

private:
    PSR_COLOUR mColour;
    s8 mFadeChange;
    u8 _11;
    u8 _12;
    u8 _13;
    bool _14;
    bool mIsFading;
    bool mShowFade;
};
