	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 15	sdk_version 10, 15, 4
	.globl	_call_me                ## -- Begin function call_me
	.p2align	4, 0x90
_call_me:                               ## @call_me
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	leaq	L_.str(%rip), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_main                   ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	$0, -4(%rbp)
	callq	_call_me
	movq	%rax, -16(%rbp)         ## 8-byte Spill
	callq	_call_me
	movq	-16(%rbp), %rdi         ## 8-byte Reload
	movl	$10, %esi
	movl	$9, %edx
	movl	$34, %ecx
	movq	%rax, %r8
	movl	$37, %r9d
	movb	$0, %al
	callq	_printf
	xorl	%ecx, %ecx
	movl	%eax, -20(%rbp)         ## 4-byte Spill
	movl	%ecx, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%2$c.section%2$c__TEXT,__text,regular,pure_instructions%1$c%2$c.build_version macos, 10, 15%2$csdk_version 10, 15, 4%1$c%2$c.globl%2$c_call_me                ## -- Begin function call_me%1$c%2$c.p2align%2$c4, 0x90%1$c_call_me:                               ## @call_me%1$c%2$c.cfi_startproc%1$c## %5$cbb.0:%1$c%2$cpushq%2$c%5$crbp%1$c%2$c.cfi_def_cfa_offset 16%1$c%2$c.cfi_offset %5$crbp, -16%1$c%2$cmovq%2$c%5$crsp, %5$crbp%1$c%2$c.cfi_def_cfa_register %5$crbp%1$c%2$cleaq%2$cL_.str(%5$crip), %5$crax%1$c%2$cmovq%2$c%5$crax, -8(%5$crbp)%1$c%2$cmovq%2$c-8(%5$crbp), %5$crax%1$c%2$cpopq%2$c%5$crbp%1$c%2$cretq%1$c%2$c.cfi_endproc%1$c                                        ## -- End function%1$c%2$c.globl%2$c_main                   ## -- Begin function main%1$c%2$c.p2align%2$c4, 0x90%1$c_main:                                  ## @main%1$c%2$c.cfi_startproc%1$c## %5$cbb.0:%1$c%2$cpushq%2$c%5$crbp%1$c%2$c.cfi_def_cfa_offset 16%1$c%2$c.cfi_offset %5$crbp, -16%1$c%2$cmovq%2$c%5$crsp, %5$crbp%1$c%2$c.cfi_def_cfa_register %5$crbp%1$c%2$csubq%2$c$32, %5$crsp%1$c%2$cmovl%2$c$0, -4(%5$crbp)%1$c%2$ccallq%2$c_call_me%1$c%2$cmovq%2$c%5$crax, -16(%5$crbp)         ## 8-byte Spill%1$c%2$ccallq%2$c_call_me%1$c%2$cmovq%2$c-16(%5$crbp), %5$crdi         ## 8-byte Reload%1$c%2$cmovl%2$c$10, %5$cesi%1$c%2$cmovl%2$c$9, %5$cedx%1$c%2$cmovl%2$c$34, %5$cecx%1$c%2$cmovq%2$c%5$crax, %5$cr8%1$c%2$cmovl%2$c$37, %5$cr9d%1$c%2$cmovb%2$c$0, %5$cal%1$c%2$ccallq%2$c_printf%1$c%2$cxorl%2$c%5$cecx, %5$cecx%1$c%2$cmovl%2$c%5$ceax, -20(%5$crbp)         ## 4-byte Spill%1$c%2$cmovl%2$c%5$cecx, %5$ceax%1$c%2$caddq%2$c$32, %5$crsp%1$c%2$cpopq%2$c%5$crbp%1$c%2$cretq%1$c%2$c.cfi_endproc%1$c                                        ## -- End function%1$c%2$c.section%2$c__TEXT,__cstring,cstring_literals%1$cL_.str:                                 ## @.str%1$c%2$c.asciz%2$c%3$c%4$s%3$c%1$c%1$c%1$c.subsections_via_symbols%1$c"


.subsections_via_symbols
