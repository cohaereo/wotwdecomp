#pragma once
#include "types.h"

typedef void (*volatile eventHandlerCallback_t)(u32, u32, u32);

struct EventHandler {
    int type;
    eventHandlerCallback_t handler;
};

class CEventManager {
public:
    CEventManager();

    void ResetClockAndQueues();
    void ResetAll();
    void ResetEventHandlers();
    void ClearDelayedQueue();
    void AttachEventHandler(u32 type, eventHandlerCallback_t handler);
    void PostEvent(u32 param_1, u32 param_2, u32 param_3);
    void AddDelayedEventToQueue(u32 param_1, u32 param_2, u32 param_3, u32 param_4);
    void PostEventFrameDelayed(u32 param_1, u32 param_2, u32 param_3, u32 param_4);
    void InformNewGameFrame();

private:
    u32 mCounter;
    u32 mHandlerSlots[20];
    EventHandler mHandlers[20];
    u32 _f4[10];
    u32 _11c;
    u32 _120;
    u32 _124;
    u32 _128[40];
};