	.file	"div.c"
	.intel_syntax noprefix
 # GNU C17 (Rev10, Built by MSYS2 project) version 12.2.0 (x86_64-w64-mingw32)
 #	compiled by GNU C version 12.2.0, GMP version 6.2.1, MPFR version 4.2.0, MPC version 1.3.1, isl version isl-0.25-GMP

 # GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
 # options passed: -masm=intel -mtune=generic -march=nocona
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
 # .\div.c:5:     int b = 0;
	mov	DWORD PTR -4[rbp], 0	 # b,
 # .\div.c:6:     return a / b;
	mov	eax, DWORD PTR 16[rbp]	 # tmp86, a
	cdq
	idiv	DWORD PTR -4[rbp]	 # b
 # .\div.c:7: }
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
 # .\div.c:12:     return a / b;
	mov	eax, DWORD PTR 16[rbp]	 # tmp86, a
	cdq
	idiv	DWORD PTR 24[rbp]	 # b
 # .\div.c:13: }
	pop	rbp	 #
	ret	
	.seh_endproc
	.section .rdata,"dr"
.LC0:
	.ascii ".\\div.c\0"
.LC1:
	.ascii "a != 0\0"
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
 # .\div.c:17:     assert(a != 0);
	cmp	DWORD PTR 16[rbp], 0	 # a,
	jne	.L8	 #,
 # .\div.c:17:     assert(a != 0);
	mov	r8d, 17	 #,
	lea	rax, .LC0[rip]	 # tmp86,
	mov	rdx, rax	 #, tmp86
	lea	rax, .LC1[rip]	 # tmp87,
	mov	rcx, rax	 #, tmp87
	mov	rax, QWORD PTR __imp__assert[rip]	 # tmp88,
	call	rax	 # tmp88
.L8:
 # .\div.c:18:     return a / b;
	mov	eax, DWORD PTR 16[rbp]	 # tmp91, a
	cdq
	idiv	DWORD PTR 24[rbp]	 # b
 # .\div.c:19: }
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
 # .\div.c:24:     int c = 9;
	mov	DWORD PTR -4[rbp], 9	 # c,
 # .\div.c:25:     c = a / c;
	mov	eax, DWORD PTR 16[rbp]	 # tmp87, a
	cdq
	idiv	DWORD PTR -4[rbp]	 # c
	mov	DWORD PTR -4[rbp], eax	 # c, tmp85
 # .\div.c:26:     if (c > b)
	mov	eax, DWORD PTR -4[rbp]	 # tmp88, c
	cmp	eax, DWORD PTR 24[rbp]	 # tmp88, b
	jle	.L11	 #,
 # .\div.c:28:         return c / b;
	mov	eax, DWORD PTR -4[rbp]	 # tmp91, c
	cdq
	idiv	DWORD PTR 24[rbp]	 # b
	jmp	.L12	 #
.L11:
 # .\div.c:32:         return a / b;
	mov	eax, DWORD PTR 16[rbp]	 # tmp94, a
	cdq
	idiv	DWORD PTR 24[rbp]	 # b
.L12:
 # .\div.c:34: }
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
 # .\div.c:38:     int c = 9;
	mov	DWORD PTR -4[rbp], 9	 # c,
 # .\div.c:39:     while (a > b)
	jmp	.L14	 #
.L15:
 # .\div.c:41:         a = b / c;
	mov	eax, DWORD PTR 24[rbp]	 # tmp87, b
	cdq
	idiv	DWORD PTR -4[rbp]	 # c
	mov	DWORD PTR 16[rbp], eax	 # a, tmp85
.L14:
 # .\div.c:39:     while (a > b)
	mov	eax, DWORD PTR 16[rbp]	 # tmp88, a
	cmp	eax, DWORD PTR 24[rbp]	 # tmp88, b
	jg	.L15	 #,
 # .\div.c:43:     return a;
	mov	eax, DWORD PTR 16[rbp]	 # _5, a
 # .\div.c:44: }
	add	rsp, 16	 #,
	pop	rbp	 #
	ret	
	.seh_endproc
	.ident	"GCC: (Rev10, Built by MSYS2 project) 12.2.0"
