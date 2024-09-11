	.text
	.syntax unified
	.eabi_attribute	67, "2.09"	@ Tag_conformance
	.eabi_attribute	6, 2	@ Tag_CPU_arch
	.eabi_attribute	8, 1	@ Tag_ARM_ISA_use
	.eabi_attribute	9, 1	@ Tag_THUMB_ISA_use
	.eabi_attribute	34, 1	@ Tag_CPU_unaligned_access
	.eabi_attribute	17, 1	@ Tag_ABI_PCS_GOT_use
	.eabi_attribute	20, 1	@ Tag_ABI_FP_denormal
	.eabi_attribute	21, 0	@ Tag_ABI_FP_exceptions
	.eabi_attribute	23, 3	@ Tag_ABI_FP_number_model
	.eabi_attribute	24, 1	@ Tag_ABI_align_needed
	.eabi_attribute	25, 1	@ Tag_ABI_align_preserved
	.eabi_attribute	38, 1	@ Tag_ABI_FP_16bit_format
	.eabi_attribute	18, 4	@ Tag_ABI_PCS_wchar_t
	.eabi_attribute	26, 2	@ Tag_ABI_enum_size
	.eabi_attribute	14, 0	@ Tag_ABI_PCS_R9_use
	.file	"main.c"
	.globl	main                            @ -- Begin function main
	.p2align	2
	.type	main,%function
	.code	32                              @ @main
main:
	.fnstart
@ %bb.0:
	.save	{r4, r10, r11, lr}
	push	{r4, r10, r11, lr}
	.setfp	r11, sp, #8
	add	r11, sp, #8
	.pad	#24
	sub	sp, sp, #24
	mov	r0, #0
	str	r0, [r11, #-12]
	str	r0, [sp, #16]
	mov	r0, #1
	str	r0, [sp, #12]
	str	r0, [sp, #8]
	ldr	r0, .LCPI0_0
	mov	r1, sp
	bl	__isoc99_scanf
	ldr	r1, [sp, #16]
	ldr	r4, .LCPI0_1
	mov	r0, r4
	bl	printf
	ldr	r1, [sp, #12]
	mov	r0, r4
	bl	printf
	b	.LBB0_1
.LBB0_1:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #8]
	ldr	r1, [sp]
	cmp	r0, r1
	bge	.LBB0_3
	b	.LBB0_2
.LBB0_2:                                @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [sp, #12]
	str	r0, [sp, #4]
	ldr	r0, [sp, #16]
	ldr	r1, [sp, #12]
	add	r0, r0, r1
	str	r0, [sp, #12]
	ldr	r1, [sp, #12]
	ldr	r0, .LCPI0_1
	bl	printf
	ldr	r0, [sp, #4]
	str	r0, [sp, #16]
	ldr	r0, [sp, #8]
	add	r0, r0, #1
	str	r0, [sp, #8]
	b	.LBB0_1
.LBB0_3:
	mov	r0, #0
	sub	sp, r11, #8
	pop	{r4, r10, r11, lr}
	bx	lr
	.p2align	2
@ %bb.4:
.LCPI0_0:
	.long	.L.str
.LCPI0_1:
	.long	.L.str.1
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cantunwind
	.fnend
                                        @ -- End function
	.type	.L.str,%object                  @ @.str
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str:
	.asciz	"%d"
	.size	.L.str, 3

	.type	.L.str.1,%object                @ @.str.1
.L.str.1:
	.asciz	"%d\n"
	.size	.L.str.1, 4

	.ident	"Ubuntu clang version 14.0.0-1ubuntu1.1"
	.section	".note.GNU-stack","",%progbits
	.eabi_attribute	30, 6	@ Tag_ABI_optimization_goals
