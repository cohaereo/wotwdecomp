#include "types.h"

#if 0
dontmangle void func_80004D18() {

}
#else
dontmangle __ASM void func_80004D18() {
	asm volatile(
		"lis 9, lbl_800FC1A0@ha\t\n"
		"stw 3, lbl_800FC1A0@l(9)\t\n"
	);
}
#endif

