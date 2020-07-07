	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 15	sdk_version 10, 15, 4
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
	subq	$80, %rsp
	movl	$0, -4(%rbp)
	movl	$5, -8(%rbp)
	leaq	L_.str(%rip), %rax
	movq	%rax, -32(%rbp)
	cmpl	$0, -8(%rbp)
	jg	LBB0_2
## %bb.1:
	movl	$0, -4(%rbp)
	jmp	LBB0_5
LBB0_2:
	xorl	%esi, %esi
	leaq	L_.str.1(%rip), %rdi
	callq	_access
	cmpl	$-1, %eax
	je	LBB0_4
## %bb.3:
	movl	-8(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -8(%rbp)
LBB0_4:
	movl	-8(%rbp), %edx
	leaq	-16(%rbp), %rdi
	leaq	L_.str.2(%rip), %rsi
	movb	$0, %al
	callq	_asprintf
	movq	-16(%rbp), %rdx
	movl	-8(%rbp), %ecx
	movl	-8(%rbp), %r8d
	leaq	-24(%rbp), %rdi
	leaq	L_.str.3(%rip), %rsi
	movl	%eax, -44(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_asprintf
	movq	-16(%rbp), %rdi
	leaq	L_.str.4(%rip), %rsi
	movl	%eax, -48(%rbp)         ## 4-byte Spill
	callq	_fopen
	movq	%rax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	LBB0_6
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movl	-8(%rbp), %r8d
	movq	-32(%rbp), %rax
	movl	$10, %edx
	movl	$9, %ecx
	movl	$34, %r9d
	movq	%rax, (%rsp)
	movl	$37, 8(%rsp)
	movb	$0, %al
	callq	_fprintf
	movq	-40(%rbp), %rdi
	movl	%eax, -52(%rbp)         ## 4-byte Spill
	callq	_fclose
	movq	-24(%rbp), %rdi
	movl	%eax, -56(%rbp)         ## 4-byte Spill
	callq	_system
	movl	%eax, -60(%rbp)         ## 4-byte Spill
LBB0_6:
	movq	-16(%rbp), %rdi
	callq	_free
	movq	-24(%rbp), %rdi
	callq	_free
	movl	$0, -4(%rbp)
LBB0_5:
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%2$c.section%2$c__TEXT,__text,regular,pure_instructions%1$c%2$c.build_version macos, 10, 15%2$csdk_version 10, 15, 4%1$c%2$c.globl%2$c_main                   ## -- Begin function main%1$c%2$c.p2align%2$c4, 0x90%1$c_main:                                  ## @main%1$c%2$c.cfi_startproc%1$c## %6$cbb.0:%1$c%2$cpushq%2$c%6$crbp%1$c%2$c.cfi_def_cfa_offset 16%1$c%2$c.cfi_offset %6$crbp, -16%1$c%2$cmovq%2$c%6$crsp, %6$crbp%1$c%2$c.cfi_def_cfa_register %6$crbp%1$c%2$csubq%2$c$80, %6$crsp%1$c%2$cmovl%2$c$0, -4(%6$crbp)%1$c%2$cmovl%2$c$%3$d, -8(%6$crbp)%1$c%2$cleaq%2$cL_.str(%6$crip), %6$crax%1$c%2$cmovq%2$c%6$crax, -32(%6$crbp)%1$c%2$ccmpl%2$c$0, -8(%6$crbp)%1$c%2$cjg%2$cLBB0_2%1$c## %6$cbb.1:%1$c%2$cmovl%2$c$0, -4(%6$crbp)%1$c%2$cjmp%2$cLBB0_5%1$cLBB0_2:%1$c%2$cxorl%2$c%6$cesi, %6$cesi%1$c%2$cleaq%2$cL_.str.1(%6$crip), %6$crdi%1$c%2$ccallq%2$c_access%1$c%2$ccmpl%2$c$-1, %6$ceax%1$c%2$cje%2$cLBB0_4%1$c## %6$cbb.3:%1$c%2$cmovl%2$c-8(%6$crbp), %6$ceax%1$c%2$caddl%2$c$-1, %6$ceax%1$c%2$cmovl%2$c%6$ceax, -8(%6$crbp)%1$cLBB0_4:%1$c%2$cmovl%2$c-8(%6$crbp), %6$cedx%1$c%2$cleaq%2$c-16(%6$crbp), %6$crdi%1$c%2$cleaq%2$cL_.str.2(%6$crip), %6$crsi%1$c%2$cmovb%2$c$0, %6$cal%1$c%2$ccallq%2$c_asprintf%1$c%2$cmovq%2$c-16(%6$crbp), %6$crdx%1$c%2$cmovl%2$c-8(%6$crbp), %6$cecx%1$c%2$cmovl%2$c-8(%6$crbp), %6$cr8d%1$c%2$cleaq%2$c-24(%6$crbp), %6$crdi%1$c%2$cleaq%2$cL_.str.3(%6$crip), %6$crsi%1$c%2$cmovl%2$c%6$ceax, -44(%6$crbp)         ## 4-byte Spill%1$c%2$cmovb%2$c$0, %6$cal%1$c%2$ccallq%2$c_asprintf%1$c%2$cmovq%2$c-16(%6$crbp), %6$crdi%1$c%2$cleaq%2$cL_.str.4(%6$crip), %6$crsi%1$c%2$cmovl%2$c%6$ceax, -48(%6$crbp)         ## 4-byte Spill%1$c%2$ccallq%2$c_fopen%1$c%2$cmovq%2$c%6$crax, -40(%6$crbp)%1$c%2$ccmpl%2$c$0, -40(%6$crbp)%1$c%2$cje%2$cLBB0_6%1$c%2$cmovq%2$c-40(%6$crbp), %6$crdi%1$c%2$cmovq%2$c-32(%6$crbp), %6$crsi%1$c%2$cmovl%2$c-8(%6$crbp), %6$cr8d%1$c%2$cmovq%2$c-32(%6$crbp), %6$crax%1$c%2$cmovl%2$c$10, %6$cedx%1$c%2$cmovl%2$c$9, %6$cecx%1$c%2$cmovl%2$c$34, %6$cr9d%1$c%2$cmovq%2$c%6$crax, (%6$crsp)%1$c%2$cmovl%2$c$37, 8(%6$crsp)%1$c%2$cmovb%2$c$0, %6$cal%1$c%2$ccallq%2$c_fprintf%1$c%2$cmovq%2$c-40(%6$crbp), %6$crdi%1$c%2$cmovl%2$c%6$ceax, -52(%6$crbp)         ## 4-byte Spill%1$c%2$ccallq%2$c_fclose%1$c%2$cmovq%2$c-24(%6$crbp), %6$crdi%1$c%2$cmovl%2$c%6$ceax, -56(%6$crbp)         ## 4-byte Spill%1$c%2$ccallq%2$c_system%1$c%2$cmovl%2$c%6$ceax, -60(%6$crbp)         ## 4-byte Spill%1$cLBB0_6:%1$c%2$cmovq%2$c-16(%6$crbp), %6$crdi%1$c%2$ccallq%2$c_free%1$c%2$cmovq%2$c-24(%6$crbp), %6$crdi%1$c%2$ccallq%2$c_free%1$c%2$cmovl%2$c$0, -4(%6$crbp)%1$cLBB0_5:%1$c%2$cmovl%2$c-4(%6$crbp), %6$ceax%1$c%2$caddq%2$c$80, %6$crsp%1$c%2$cpopq%2$c%6$crbp%1$c%2$cretq%1$c%2$c.cfi_endproc%1$c                                        ## -- End function%1$c%2$c.section%2$c__TEXT,__cstring,cstring_literals%1$cL_.str:                                 ## @.str%1$c%2$c.asciz%2$c%4$c%5$s%4$c%1$c%1$cL_.str.1:                               ## @.str.1%1$c%2$c.asciz%2$c%4$cSully_5.s%4$c%1$c%1$cL_.str.2:                               ## @.str.2%1$c%2$c.asciz%2$c%4$cSully_%6$cd.s%4$c%1$c%1$cL_.str.3:                               ## @.str.3%1$c%2$c.asciz%2$c%4$cgcc -O2 -fomit-frame-pointer -Wall -Wextra -Werror %6$cs -o Sully_%6$cd && ./Sully_%6$cd%4$c%1$c%1$cL_.str.4:                               ## @.str.4%1$c%2$c.asciz%2$c%4$cw%4$c%1$c%1$c%1$c.subsections_via_symbols%1$c"

L_.str.1:                               ## @.str.1
	.asciz	"Sully_5.s"

L_.str.2:                               ## @.str.2
	.asciz	"Sully_%d.s"

L_.str.3:                               ## @.str.3
	.asciz	"gcc -O2 -fomit-frame-pointer -Wall -Wextra -Werror %s -o Sully_%d && ./Sully_%d"

L_.str.4:                               ## @.str.4
	.asciz	"w"


.subsections_via_symbols
