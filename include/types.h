typedef char s8;
typedef short s16;
typedef int s32;

typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;

// typedef unsigned char bool;

#define STATIC_ASSERT(COND,MSG) static int static_assertion_##MSG[(COND)?1:-1]

#define __ASM __attribute__ ((naked))

#define dontmangle extern "C"