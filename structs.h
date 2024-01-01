#include "include/types.h"

struct WWPlayerUnk0 {
    u32 pad[9];
    float health;
    u32 unk;
    float health_secondary; // Used for displaying the "red" health bar
};

struct WWPlayer {
    char unk_0[0x8cdc];
    struct WWPlayerUnk0 unk_1;

    char unk_2[0x26f4];
};

STATIC_ASSERT(sizeof(struct WWPlayer) == 0xb400, "Struct is the wrong size!");