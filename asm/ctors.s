.include "macros.inc"

.section .ctors, "wa"  # 0x800EEAC0 - 0x800EEB60

.global lbl_800EEAC0
lbl_800EEAC0:
	.long  -1
	.4byte func_80006978
	.4byte func_800089F4
	.4byte func_80009114
	.4byte func_80009980
	.4byte func_80029EAC
	.4byte func_8002F434
	.4byte func_80030354
	.4byte func_8003C3B4
	.4byte func_8003E338
	.4byte func_80044A28
	.4byte func_8007C138
	.4byte func_8007C914
	.4byte func_800BBE8C
	.4byte func_800C7180
	.4byte func_800C7790
	.4byte func_800D434C
	.4byte func_800D65D8
	.4byte func_800DC590
	.4byte func_800DF738
	.long  0
	.long  0
	.long  0
	.long  0
	.long  -1
	.4byte func_800069A4
	.4byte func_80008A20
	.4byte func_80009140
	.4byte func_800099AC
	.4byte func_8007C164
	.4byte func_800BBEB8
	.4byte func_800C71AC
	.4byte func_800D4378
	.4byte func_800D6604
	.4byte func_800DC5BC
	.4byte func_800DF764
	.long  0
	.long  0
	.long  0
	.long  0

	/* .incbin "baserom.dol", 0xEBAC0, 0xA0 */
