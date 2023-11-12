	.file	"div.c"
	.intel_syntax noprefix
 # GNU C17 (Rev10, Built by MSYS2 project) version 12.2.0 (x86_64-w64-mingw32)
 #	compiled by GNU C version 12.2.0, GMP version 6.2.1, MPFR version 4.2.0, MPC version 1.3.1, isl version isl-0.25-GMP

 # GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
 # options passed: -masm=intel -mtune=generic -march=nocona -O0
	.text
	.globl	div0
	.def	div0;	.scl	2;	.type	32;	.endef
	.seh_proc	div0
div0:
	push	rbp	 #
	.seh_pushreg	rbp
	mov	rbp, rsp	 #,
	.seh_setframe	rbp, 0
	sub	rsp, 16	 #,
	.seh_stackalloc	16
	.seh_endprologue
	mov	DWORD PTR 16[rbp], ecx	 # a, a
 # TestCode\div.c:5:     int b = 0;
	mov	DWORD PTR -4[rbp], 0	 # b,
 # TestCode\div.c:6:     return a / b;
	mov	eax, DWORD PTR 16[rbp]	 # tmp86, a
	cdq
	idiv	DWORD PTR -4[rbp]	 # b
 # TestCode\div.c:7: }
	add	rsp, 16	 #,
	pop	rbp	 #
	ret	
	.seh_endproc
	.globl	div_a_b1
	.def	div_a_b1;	.scl	2;	.type	32;	.endef
	.seh_proc	div_a_b1
div_a_b1:
	push	rbp	 #
	.seh_pushreg	rbp
	mov	rbp, rsp	 #,
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	DWORD PTR 16[rbp], ecx	 # a, a
	mov	DWORD PTR 24[rbp], edx	 # b, b
 # TestCode\div.c:11:     return a / b;
	mov	eax, DWORD PTR 16[rbp]	 # tmp86, a
	cdq
	idiv	DWORD PTR 24[rbp]	 # b
 # TestCode\div.c:12: }
	pop	rbp	 #
	ret	
	.seh_endproc
	.section .rdata,"dr"
.LC0:
	.ascii "TestCode\\div.c\0"
.LC1:
	.ascii "b != 0\0"
	.text
	.globl	div_a_b2
	.def	div_a_b2;	.scl	2;	.type	32;	.endef
	.seh_proc	div_a_b2
div_a_b2:
	push	rbp	 #
	.seh_pushreg	rbp
	mov	rbp, rsp	 #,
	.seh_setframe	rbp, 0
	sub	rsp, 32	 #,
	.seh_stackalloc	32
	.seh_endprologue
	mov	DWORD PTR 16[rbp], ecx	 # a, a
	mov	DWORD PTR 24[rbp], edx	 # b, b
 # TestCode\div.c:16:     assert(b != 0);
	cmp	DWORD PTR 24[rbp], 0	 # b,
	jne	.L8	 #,
 # TestCode\div.c:16:     assert(b != 0);
	mov	r8d, 16	 #,
	lea	rax, .LC0[rip]	 # tmp86,
	mov	rdx, rax	 #, tmp86
	lea	rax, .LC1[rip]	 # tmp87,
	mov	rcx, rax	 #, tmp87
	mov	rax, QWORD PTR __imp__assert[rip]	 # tmp88,
	call	rax	 # tmp88
.L8:
 # TestCode\div.c:17:     return a / b;
	mov	eax, DWORD PTR 16[rbp]	 # tmp91, a
	cdq
	idiv	DWORD PTR 24[rbp]	 # b
 # TestCode\div.c:18: }
	add	rsp, 32	 #,
	pop	rbp	 #
	ret	
	.seh_endproc
	.globl	div_a_b3
	.def	div_a_b3;	.scl	2;	.type	32;	.endef
	.seh_proc	div_a_b3
div_a_b3:
	push	rbp	 #
	.seh_pushreg	rbp
	mov	rbp, rsp	 #,
	.seh_setframe	rbp, 0
	sub	rsp, 16	 #,
	.seh_stackalloc	16
	.seh_endprologue
	mov	DWORD PTR 16[rbp], ecx	 # a, a
	mov	DWORD PTR 24[rbp], edx	 # b, b
 # TestCode\div.c:22:     int c = 9;
	mov	DWORD PTR -4[rbp], 9	 # c,
 # TestCode\div.c:23:     c = a / c;
	mov	eax, DWORD PTR 16[rbp]	 # tmp87, a
	cdq
	idiv	DWORD PTR -4[rbp]	 # c
	mov	DWORD PTR -4[rbp], eax	 # c, tmp85
 # TestCode\div.c:24:     if (c > b)
	mov	eax, DWORD PTR -4[rbp]	 # tmp88, c
	cmp	eax, DWORD PTR 24[rbp]	 # tmp88, b
	jle	.L11	 #,
 # TestCode\div.c:26:         return c / b;
	mov	eax, DWORD PTR -4[rbp]	 # tmp91, c
	cdq
	idiv	DWORD PTR 24[rbp]	 # b
	jmp	.L12	 #
.L11:
 # TestCode\div.c:30:         return a / b;
	mov	eax, DWORD PTR 16[rbp]	 # tmp94, a
	cdq
	idiv	DWORD PTR 24[rbp]	 # b
.L12:
 # TestCode\div.c:32: }
	add	rsp, 16	 #,
	pop	rbp	 #
	ret	
	.seh_endproc
	.globl	div_a_b4
	.def	div_a_b4;	.scl	2;	.type	32;	.endef
	.seh_proc	div_a_b4
div_a_b4:
	push	rbp	 #
	.seh_pushreg	rbp
	mov	rbp, rsp	 #,
	.seh_setframe	rbp, 0
	sub	rsp, 16	 #,
	.seh_stackalloc	16
	.seh_endprologue
	mov	DWORD PTR 16[rbp], ecx	 # a, a
	mov	DWORD PTR 24[rbp], edx	 # b, b
 # TestCode\div.c:36:     int c = 9;
	mov	DWORD PTR -4[rbp], 9	 # c,
 # TestCode\div.c:37:     while (a > b && c < 15)
	jmp	.L14	 #
.L16:
 # TestCode\div.c:39:         a = b / c;
	mov	eax, DWORD PTR 24[rbp]	 # tmp87, b
	cdq
	idiv	DWORD PTR -4[rbp]	 # c
	mov	DWORD PTR 16[rbp], eax	 # a, tmp85
 # TestCode\div.c:40:         c += 1;
	add	DWORD PTR -4[rbp], 1	 # c,
.L14:
 # TestCode\div.c:37:     while (a > b && c < 15)
	mov	eax, DWORD PTR 16[rbp]	 # tmp88, a
	cmp	eax, DWORD PTR 24[rbp]	 # tmp88, b
	jle	.L15	 #,
 # TestCode\div.c:37:     while (a > b && c < 15)
	cmp	DWORD PTR -4[rbp], 14	 # c,
	jle	.L16	 #,
.L15:
 # TestCode\div.c:42:     return a;
	mov	eax, DWORD PTR 16[rbp]	 # _8, a
 # TestCode\div.c:43: }
	add	rsp, 16	 #,
	pop	rbp	 #
	ret	
	.seh_endproc
	.globl	div_a_b5
	.def	div_a_b5;	.scl	2;	.type	32;	.endef
	.seh_proc	div_a_b5
div_a_b5:
	push	rbp	 #
	.seh_pushreg	rbp
	mov	rbp, rsp	 #,
	.seh_setframe	rbp, 0
	sub	rsp, 16	 #,
	.seh_stackalloc	16
	.seh_endprologue
	mov	DWORD PTR 16[rbp], ecx	 # a, a
	mov	DWORD PTR 24[rbp], edx	 # b, b
 # TestCode\div.c:47:     int c = 9;
	mov	DWORD PTR -4[rbp], 9	 # c,
 # TestCode\div.c:48:     a = c * b / (a + 3 - c * b);
	mov	eax, DWORD PTR -4[rbp]	 # tmp90, c
	imul	eax, DWORD PTR 24[rbp]	 # _1, b
 # TestCode\div.c:48:     a = c * b / (a + 3 - c * b);
	mov	edx, DWORD PTR 16[rbp]	 # tmp91, a
	lea	ecx, 3[rdx]	 # _2,
 # TestCode\div.c:48:     a = c * b / (a + 3 - c * b);
	mov	edx, DWORD PTR -4[rbp]	 # tmp92, c
	imul	edx, DWORD PTR 24[rbp]	 # _3, b
 # TestCode\div.c:48:     a = c * b / (a + 3 - c * b);
	sub	ecx, edx	 # _4, _3
 # TestCode\div.c:48:     a = c * b / (a + 3 - c * b);
	cdq
	idiv	ecx	 # _4
	mov	DWORD PTR 16[rbp], eax	 # a, tmp93
 # TestCode\div.c:49:     b = a * b + c;
	mov	eax, DWORD PTR 16[rbp]	 # tmp95, a
	imul	eax, DWORD PTR 24[rbp]	 # tmp95, b
	mov	edx, eax	 # _5, tmp95
 # TestCode\div.c:49:     b = a * b + c;
	mov	eax, DWORD PTR -4[rbp]	 # tmp99, c
	add	eax, edx	 # tmp98, _5
	mov	DWORD PTR 24[rbp], eax	 # b, tmp98
 # TestCode\div.c:50:     if (a > b)
	mov	eax, DWORD PTR 16[rbp]	 # tmp100, a
	cmp	eax, DWORD PTR 24[rbp]	 # tmp100, b
	jle	.L19	 #,
 # TestCode\div.c:52:         return b + c / a;
	mov	eax, DWORD PTR -4[rbp]	 # tmp103, c
	cdq
	idiv	DWORD PTR 16[rbp]	 # a
	mov	edx, eax	 # _6, tmp101
 # TestCode\div.c:52:         return b + c / a;
	mov	eax, DWORD PTR 24[rbp]	 # tmp104, b
	add	eax, edx	 # _7, _6
	jmp	.L20	 #
.L19:
 # TestCode\div.c:54:     return a;
	mov	eax, DWORD PTR 16[rbp]	 # _7, a
.L20:
 # TestCode\div.c:55: }
	add	rsp, 16	 #,
	pop	rbp	 #
	ret	
	.seh_endproc
	.ident	"GCC: (Rev10, Built by MSYS2 project) 12.2.0"
