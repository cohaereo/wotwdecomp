#pragma once

typedef signed char s8;
typedef signed short s16;
typedef signed int s32;

typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;

typedef float f32;

struct Vec3F {
    f32 x;
    f32 y;
    f32 z;
};

struct Vec2F {
    f32 x;
    f32 y;
};

struct SIMPLE_SHADOW{};
struct PLANE_EQN{};
struct COLTRIANGLE_LIST{};
struct PSR_GDS{};
struct PSR_BAD{};
struct _PSR_FORMATTED_TEXT_DATA{};
struct _PSR_FONT_DEFINITION{};
struct CHARACTERSET_INFORMATION{};
struct PSR_MATRIX{};
struct COL_SPHERE{};
struct STICK_WAGGLE{};
struct COL_TRI{};
struct BACKGROUNDS{};
struct OBJECT{};
struct PLYR_BASIC_INFO{};
struct CHARACTER_FUNCTION_DATA{};
struct AI_AVOIDANCE_INSTANCE{};

struct PSR_COLOUR {
    u32 r, g, b, a;
};


class CPlayer;
class CRotMatrix;

// typedef unsigned char bool;

#define STATIC_ASSERT(COND,MSG) static int static_assertion_##MSG[(COND)?1:-1]

#define __ASM __attribute__ ((naked))

#define dontmangle extern "C"

#define CFIELD(type, offset) (*(type*)((u8*)this + offset))
#define PFIELD(var, type, offset) ((type*)((u8*)var + offset))

// template<typename T>
// inline T* fieldptr(void* ptr, u32 offset) {
//     return (T*)((u8*)ptr + offset);
// }