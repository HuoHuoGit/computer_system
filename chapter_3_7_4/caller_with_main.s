	.file	"caller_with_main.c"
	.text
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
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	leal	4(%esp), %ecx
	.cfi_def_cfa 1, 0
	andl	$-16, %esp
	pushl	-4(%ecx)
	pushl	%ebp
	.cfi_escape 0x10,0x5,0x2,0x75,0
	movl	%esp, %ebp
	pushl	%ecx
	.cfi_escape 0xf,0x3,0x75,0x7c,0x6
	subl	$20, %esp
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
	movl	$534, -20(%ebp)
	movl	$1057, -16(%ebp)
	leal	-16(%ebp), %eax
	pushl	%eax
	leal	-20(%ebp), %eax
	pushl	%eax
	call	swap_add
	movl	-20(%ebp), %edx
	subl	-16(%ebp), %edx
	imull	%edx, %eax
	addl	$8, %esp
	movl	-12(%ebp), %ecx
	xorl	%gs:20, %ecx
	je	.L4
	call	__stack_chk_fail
.L4:
	movl	-4(%ebp), %ecx
	.cfi_def_cfa 1, 0
	leave
	.cfi_restore 5
	leal	-4(%ecx), %esp
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
