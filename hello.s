	.text
	.file	"hello.bc"
	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp0:
	.cfi_def_cfa_offset 16
.Ltmp1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp2:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$0, -4(%rbp)
	movl	$.L.str, %edi
	xorl	%eax, %eax
	callq	printf
	xorl	%eax, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Ltmp3:
	.size	main, .Ltmp3-main
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"hello world!\n"
	.size	.L.str, 14


	.ident	"clang version 3.6.2 (tags/RELEASE_362/final) (https://zhangysh1995@bitbucket.org/prismers/llvm3.6.git 43b4328f1eec4a33406c526f5a15f0c3e820784f)"
	.section	".note.GNU-stack","",@progbits
