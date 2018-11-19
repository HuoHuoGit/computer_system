	.file	"arith.c"
	.text
	.globl	arith
	.type	arith, @function
arith:
.LFB0:
	.cfi_startproc
	movl	12(%esp), %ecx
	movl	8(%esp), %eax
	addl	4(%esp), %eax
	movzwl	%ax, %edx
	leal	(%ecx,%ecx,2), %eax
	sall	$4, %eax
	imull	%edx, %eax
	ret
	.cfi_endproc
.LFE0:
	.size	arith, .-arith
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
