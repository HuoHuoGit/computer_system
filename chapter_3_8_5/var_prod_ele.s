	.file	"var_prod_ele.c"
	.text
	.globl	var_prod_ele
	.type	var_prod_ele, @function
var_prod_ele:
.LFB0:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	20(%esp), %edi       # get n
	testl	%edi, %edi           # n <= 0 ?
	jle	.L4
	movl	32(%esp), %eax       # get i
	leal	0(,%eax,4), %esi     # 4 * i
	imull	%edi, %esi           # n * 4 * i
	addl	24(%esp), %esi       # xA + n*4*i
	leal	0(,%edi,4), %ebp     # 4 * n
	movl	36(%esp), %edx       # get k
	movl	28(%esp), %eax       # get xB
	leal	(%eax,%edx,4), %ebx  # xB + 4 * k
	movl	$0, %eax
	movl	$0, %edx
.L3:
	movl	(%esi,%edx,4), %ecx  # *(xA + n*4*i + 4 * j)
	imull	(%ebx), %ecx         # *(xA + n*4*i + 4*j) * *(xB + 4*k) 
	addl	%ecx, %eax           # result + *(xA + n*4*i + 4*k) * *(xB + 4*k) 
	addl	$1, %edx             # j++ 
	addl	%ebp, %ebx           # xB + 4 * k + 4*n
	cmpl	%edx, %edi           # n : j
	jne	.L3
	jmp	.L2
.L4:
	movl	$0, %eax
.L2:
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE0:
	.size	var_prod_ele, .-var_prod_ele
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
