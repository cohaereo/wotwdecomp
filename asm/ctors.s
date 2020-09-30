.include "macros.inc"

.section .ctors, "wa"  # 0x800EEAC0 - 0x800EEB60

.global lbl_800EEAC0
lbl_800EEAC0:
	.incbin "baserom.dol", 0xEBAC0, 0xA0
