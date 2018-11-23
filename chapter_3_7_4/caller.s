	.file	"caller.c"
	.text
	.globl	caller
	.type	caller, @function
caller:
.LFB0:
	.cfi_startproc
	movl	$832093, %eax
	ret
	.cfi_endproc
.LFE0:
	.size	caller, .-caller
	.globl	swap_add
	.type	swap_add, @function
swap_add:
.LFB1:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	8(%esp), %ebx
	movl	12(%esp), %ecx
	movl	(%ebx), %edx
	movl	(%ecx), %eax
	movl	%eax, (%ebx)
	movl	%edx, (%ecx)
	addl	%edx, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE1:
	.size	swap_add, .-swap_add
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
