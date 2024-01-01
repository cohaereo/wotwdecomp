/*
Code sections:
	.text0:	0x00000100	0x80003100	0x800034A0
	.text1:	0x000004A0	0x800034A0	0x800EEAC0
Data sections:
	.data0:	0x000EBAC0	0x800EEAC0	0x800EEB60
	.data1:	0x000EBB60	0x800EEB60	0x800FB580
	.data2:	0x000F8580	0x800FB580	0x80192460
	.data3:	0x0018F460	0x802593A0	0x802599A0
	.data4:	0x0018FA60	0x80259F80	0x8025AFC0
BSS section:
	.bss:	0x00000000	0x80192480	0x80259F74
Entry Point: 0x80003100
*/

.set r0, 0
.set r1, 1
.set r2, 2
.set r3, 3
.set r4, 4
.set r5, 5
.set r6, 6
.set r7, 7
.set r8, 8
.set r9, 9
.set r10, 10
.set r11, 11
.set r12, 12
.set r13, 13
.set r14, 14
.set r15, 15
.set r16, 16
.set r17, 17
.set r18, 18
.set r19, 19
.set r20, 20
.set r21, 21
.set r22, 22
.set r23, 23
.set r24, 24
.set r25, 25
.set r26, 26
.set r27, 27
.set r28, 28
.set r29, 29
.set r30, 30
.set r31, 31
.set f0, 0
.set f1, 1
.set f2, 2
.set f3, 3
.set f4, 4
.set f5, 5
.set f6, 6
.set f7, 7
.set f8, 8
.set f9, 9
.set f10, 10
.set f11, 11
.set f12, 12
.set f13, 13
.set f14, 14
.set f15, 15
.set f16, 16
.set f17, 17
.set f18, 18
.set f19, 19
.set f20, 20
.set f21, 21
.set f22, 22
.set f23, 23
.set f24, 24
.set f25, 25
.set f26, 26
.set f27, 27
.set f28, 28
.set f29, 29
.set f30, 30
.set f31, 31
.set qr0, 0
.set qr1, 1
.set qr2, 2
.set qr3, 3
.set qr4, 4
.set qr5, 5
.set qr6, 6
.set qr7, 7
.set cr0, 0
.set cr1, 1
.set cr2, 2
.set cr3, 3
.set cr4, 4
.set cr5, 5
.set cr6, 6
.set cr7, 7

# Small Data Area (read/write) Base
.set _SDA_BASE_, 0x802613A0
# Small Data Area (read only) Base
.set _SDA2_BASE_, 0x802713A0

.macro	string_align str
.string	"\str"
.balign 8, 0
.endm

.macro	string_align4 str
.string	"\str"
.balign 4, 0
.endm

.macro	insertdata label datatype value
.global \label
\label:
.\datatype \value
.endm
