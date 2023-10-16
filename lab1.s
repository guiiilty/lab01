	.file	"lab1.c"
	.text
	.section	.rodata
.LC0:
	.string	"Enter a -> "
.LC1:
	.string	"%f"
.LC2:
	.string	"Enter b -> "
.LC3:
	.string	"Enter c -> "
.LC6:
	.string	"f(x) = "
.LC7:
	.string	"%f * x^2 "
.LC8:
	.string	"+ "
.LC9:
	.string	"%f * x "
.LC10:
	.string	"- "
	.align 8
.LC13:
	.string	"Function is even: f(x) = %f = f(-x) = %f\n"
	.align 8
.LC14:
	.string	"Function is odd: f(-x) = %f = -f(x) = %f\n"
	.align 8
.LC15:
	.string	"Function is neither even nor odd:             f(x) = %f != f(-x) = % f != -f(x) = %f\n"
.LC16:
	.string	"Vertex (%f, %f) is a "
.LC17:
	.string	"minimum"
.LC18:
	.string	"maximum"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-24(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-28(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-32(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movss	-24(%rbp), %xmm0
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jp	.L2
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jne	.L2
	movss	-28(%rbp), %xmm0
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jp	.L2
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jne	.L2
	movss	-32(%rbp), %xmm0
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jp	.L2
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jne	.L2
	movl	$0, %eax
	jmp	.L30
.L2:
	movss	.LC5(%rip), %xmm0
	movss	%xmm0, -4(%rbp)
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movss	-24(%rbp), %xmm0
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jp	.L34
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	je	.L7
.L34:
	movss	-24(%rbp), %xmm0
	pxor	%xmm3, %xmm3
	cvtss2sd	%xmm0, %xmm3
	movq	%xmm3, %rax
	movq	%rax, %xmm0
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	movss	-28(%rbp), %xmm0
	pxor	%xmm1, %xmm1
	comiss	%xmm1, %xmm0
	jbe	.L7
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
.L7:
	movss	-28(%rbp), %xmm0
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jp	.L36
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	je	.L10
.L36:
	movss	-28(%rbp), %xmm0
	pxor	%xmm4, %xmm4
	cvtss2sd	%xmm0, %xmm4
	movq	%xmm4, %rax
	movq	%rax, %xmm0
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
.L10:
	movss	-32(%rbp), %xmm0
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jp	.L37
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	je	.L12
.L37:
	movss	-32(%rbp), %xmm0
	pxor	%xmm1, %xmm1
	comiss	%xmm1, %xmm0
	jbe	.L14
	movss	-24(%rbp), %xmm0
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jp	.L16
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jne	.L16
	movss	-28(%rbp), %xmm0
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jp	.L16
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	je	.L18
.L16:
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L14
.L18:
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
.L14:
	movss	-32(%rbp), %xmm0
	movss	.LC11(%rip), %xmm1
	andps	%xmm1, %xmm0
	pxor	%xmm5, %xmm5
	cvtss2sd	%xmm0, %xmm5
	movq	%xmm5, %rax
	movq	%rax, %xmm0
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
.L12:
	movl	$10, %edi
	call	putchar@PLT
	movss	-24(%rbp), %xmm0
	mulss	-4(%rbp), %xmm0
	movaps	%xmm0, %xmm1
	mulss	-4(%rbp), %xmm1
	movss	-28(%rbp), %xmm0
	mulss	-4(%rbp), %xmm0
	addss	%xmm0, %xmm1
	movss	-32(%rbp), %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -8(%rbp)
	movss	-4(%rbp), %xmm0
	movss	.LC12(%rip), %xmm1
	xorps	%xmm0, %xmm1
	movss	-24(%rbp), %xmm0
	mulss	%xmm0, %xmm1
	movss	-4(%rbp), %xmm0
	movss	.LC12(%rip), %xmm2
	xorps	%xmm2, %xmm0
	mulss	%xmm0, %xmm1
	movss	-4(%rbp), %xmm0
	movss	.LC12(%rip), %xmm2
	xorps	%xmm0, %xmm2
	movss	-28(%rbp), %xmm0
	mulss	%xmm2, %xmm0
	addss	%xmm0, %xmm1
	movss	-32(%rbp), %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -12(%rbp)
	movss	-8(%rbp), %xmm0
	ucomiss	-12(%rbp), %xmm0
	jp	.L20
	movss	-8(%rbp), %xmm0
	ucomiss	-12(%rbp), %xmm0
	jne	.L20
	pxor	%xmm0, %xmm0
	cvtss2sd	-12(%rbp), %xmm0
	pxor	%xmm6, %xmm6
	cvtss2sd	-8(%rbp), %xmm6
	movq	%xmm6, %rax
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	leaq	.LC13(%rip), %rax
	movq	%rax, %rdi
	movl	$2, %eax
	call	printf@PLT
	jmp	.L22
.L20:
	movss	-8(%rbp), %xmm0
	movss	.LC12(%rip), %xmm1
	xorps	%xmm1, %xmm0
	ucomiss	-12(%rbp), %xmm0
	jp	.L23
	ucomiss	-12(%rbp), %xmm0
	jne	.L23
	movss	-8(%rbp), %xmm0
	movss	.LC12(%rip), %xmm1
	xorps	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	pxor	%xmm7, %xmm7
	cvtss2sd	-12(%rbp), %xmm7
	movq	%xmm7, %rax
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	leaq	.LC14(%rip), %rax
	movq	%rax, %rdi
	movl	$2, %eax
	call	printf@PLT
	jmp	.L22
.L23:
	movss	-8(%rbp), %xmm0
	movss	.LC12(%rip), %xmm1
	xorps	%xmm1, %xmm0
	pxor	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm1
	pxor	%xmm0, %xmm0
	cvtss2sd	-12(%rbp), %xmm0
	pxor	%xmm3, %xmm3
	cvtss2sd	-8(%rbp), %xmm3
	movq	%xmm3, %rax
	movapd	%xmm1, %xmm2
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	leaq	.LC15(%rip), %rax
	movq	%rax, %rdi
	movl	$3, %eax
	call	printf@PLT
.L22:
	movss	-24(%rbp), %xmm0
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jp	.L42
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	je	.L25
.L42:
	movss	-28(%rbp), %xmm0
	movss	.LC12(%rip), %xmm1
	xorps	%xmm0, %xmm1
	movss	-24(%rbp), %xmm0
	movaps	%xmm0, %xmm2
	addss	%xmm0, %xmm2
	divss	%xmm2, %xmm1
	movaps	%xmm1, %xmm0
	movss	%xmm0, -16(%rbp)
	movss	-24(%rbp), %xmm0
	mulss	-16(%rbp), %xmm0
	movaps	%xmm0, %xmm1
	mulss	-16(%rbp), %xmm1
	movss	-28(%rbp), %xmm0
	mulss	-16(%rbp), %xmm0
	addss	%xmm0, %xmm1
	movss	-32(%rbp), %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -20(%rbp)
	pxor	%xmm0, %xmm0
	cvtss2sd	-20(%rbp), %xmm0
	pxor	%xmm4, %xmm4
	cvtss2sd	-16(%rbp), %xmm4
	movq	%xmm4, %rax
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	leaq	.LC16(%rip), %rax
	movq	%rax, %rdi
	movl	$2, %eax
	call	printf@PLT
	movss	-24(%rbp), %xmm0
	pxor	%xmm1, %xmm1
	comiss	%xmm1, %xmm0
	jbe	.L44
	leaq	.LC17(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L29
.L44:
	leaq	.LC18(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
.L29:
	movl	$10, %edi
	call	putchar@PLT
.L25:
	movl	$0, %eax
.L30:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.section	.rodata
	.align 4
.LC5:
	.long	1065353216
	.align 16
.LC11:
	.long	2147483647
	.long	0
	.long	0
	.long	0
	.align 16
.LC12:
	.long	-2147483648
	.long	0
	.long	0
	.long	0
	.ident	"GCC: (Debian 12.2.0-14) 12.2.0"
	.section	.note.GNU-stack,"",@progbits
