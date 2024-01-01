#include "types.h"

// TODO: There's probably more files for COL_ such as COL_Plane and (maybe) COL_Line

#if 0
dontmangle void COL_RegisterMallocFunc(void *(*)(unsigned int, unsigned int)) {

}
#else
dontmangle __ASM void COL_RegisterMallocFunc__FPFUiUi_Pv() {
	asm volatile(
		"lis 9, gs_pCOL_MallocFUNC@ha\t\n"
		"stw 3, gs_pCOL_MallocFUNC@l(9)\t\n"
	);
}
#endif

