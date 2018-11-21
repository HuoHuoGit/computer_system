	.file	"switch_eg.c"
	.text
	.globl	switch_eg
	.type	switch_eg, @function
switch_eg:
.LFB0:
	.cfi_startproc
	movl	4(%esp), %eax
	movl	8(%esp), %ecx
	leal	-100(%ecx), %edx
	cmpl	$6, %edx
	ja	.L8
	jmp	*.L4(,%edx,4)
	.section	.rodata
	.align 4
	.align 4
.L4:
	.long	.L3
	.long	.L8
	.long	.L5
	.long	.L6
	.long	.L7
	.long	.L8
	.long	.L7
	.text
.L3:
	leal	(%eax,%eax,2), %edx
	leal	(%eax,%edx,4), %eax
	ret
.L5:
	addl	$10, %eax
.L6:
	addl	$11, %eax
	ret
.L7:
	imull	%eax, %eax
	ret
.L8:
	movl	$0, %eax
	ret
	.cfi_endproc
.LFE0:
	.size	switch_eg, .-switch_eg
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
