	.file	"var_ele.c"
	.text
	.globl	var_ele
	.type	var_ele, @function
var_ele:
.LFB0:
	.cfi_startproc
	movl	12(%esp), %eax     # get i
	sall	$2, %eax           # 4 * i
	imull	4(%esp), %eax      # n * 4 * i
	movl	16(%esp), %ecx     # get j
	leal	0(,%ecx,4), %edx   # 4 * j
	addl	8(%esp), %edx      # xA + 4*j
	movl	(%edx,%eax), %eax  # *(xA + 4*j + n*4*i)
	ret
	.cfi_endproc
.LFE0:
	.size	var_ele, .-var_ele
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
