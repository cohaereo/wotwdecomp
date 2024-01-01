#pragma once
#include "types.h"

class CPlayer {
public:
    void ZeroAllVelocities();
    void ApplyForceToPlayer(Vec3F* force);
    char* GetPlayerName();
    char* GetTeamName();

};