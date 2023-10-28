	.file	"userDefinedException.c"
	.intel_syntax noprefix
 # GNU C17 (Rev10, Built by MSYS2 project) version 12.2.0 (x86_64-w64-mingw32)
 #	compiled by GNU C version 12.2.0, GMP version 6.2.1, MPFR version 4.2.0, MPC version 1.3.1, isl version isl-0.25-GMP

 # GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
 # options passed: -masm=intel -mtune=generic -march=nocona
	.text
	.globl	fib1
	.def	fib1;	.scl	2;	.type	32;	.endef
	.seh_proc	fib1
fib1:
	push	rbp	 #
	.seh_pushreg	rbp
	push	rbx	 #
	.seh_pushreg	rbx
	sub	rsp, 40	 #,
	.seh_stackalloc	40
	lea	rbp, 32[rsp]	 #,
	.seh_setframe	rbp, 32
	.seh_endprologue
	mov	DWORD PTR 32[rbp], ecx	 # a, a
 # .\userDefinedException.c:8:     if (a <= 0)
	cmp	DWORD PTR 32[rbp], 0	 # a,
	jg	.L2	 #,
 # .\userDefinedException.c:10:         return 0;
	mov	eax, 0	 # _5,
	jmp	.L3	 #
.L2:
 # .\userDefinedException.c:12:     else if (a == 1)
	cmp	DWORD PTR 32[rbp], 1	 # a,
	jne	.L4	 #,
 # .\userDefinedException.c:14:         return 1;
	mov	eax, 1	 # _5,
	jmp	.L3	 #
.L4:
 # .\userDefinedException.c:18:         return fib1(a - 1) + fib1(a - 2);
	mov	eax, DWORD PTR 32[rbp]	 # tmp88, a
	sub	eax, 1	 # _1,
	mov	ecx, eax	 #, _1
	call	fib1	 #
	mov	ebx, eax	 # _2,
 # .\userDefinedException.c:18:         return fib1(a - 1) + fib1(a - 2);
	mov	eax, DWORD PTR 32[rbp]	 # tmp89, a
	sub	eax, 2	 # _3,
	mov	ecx, eax	 #, _3
	call	fib1	 #
 # .\userDefinedException.c:18:         return fib1(a - 1) + fib1(a - 2);
	add	eax, ebx	 # _5, _2
.L3:
 # .\userDefinedException.c:20: }
	add	rsp, 40	 #,
	pop	rbx	 #
	pop	rbp	 #
	ret	
	.seh_endproc
	.globl	fib2
	.def	fib2;	.scl	2;	.type	32;	.endef
	.seh_proc	fib2
fib2:
	push	rbp	 #
	.seh_pushreg	rbp
	push	rbx	 #
	.seh_pushreg	rbx
	sub	rsp, 40	 #,
	.seh_stackalloc	40
	lea	rbp, 32[rsp]	 #,
	.seh_setframe	rbp, 32
	.seh_endprologue
	mov	DWORD PTR 32[rbp], ecx	 # a, a
 # .\userDefinedException.c:24:     if (a <= 0)
	cmp	DWORD PTR 32[rbp], 0	 # a,
	jg	.L6	 #,
 # .\userDefinedException.c:26:         if (a < 0)
	cmp	DWORD PTR 32[rbp], 0	 # a,
	jns	.L7	 #,
 # .\userDefinedException.c:28:             userDefinedException();
	call	userDefinedException	 #
.L7:
 # .\userDefinedException.c:30:         return 0;
	mov	eax, 0	 # _5,
	jmp	.L8	 #
.L6:
 # .\userDefinedException.c:32:     else if (a == 1)
	cmp	DWORD PTR 32[rbp], 1	 # a,
	jne	.L9	 #,
 # .\userDefinedException.c:34:         return 1;
	mov	eax, 1	 # _5,
	jmp	.L8	 #
.L9:
 # .\userDefinedException.c:38:         return fib2(a - 1) + fib2(a - 2);
	mov	eax, DWORD PTR 32[rbp]	 # tmp88, a
	sub	eax, 1	 # _1,
	mov	ecx, eax	 #, _1
	call	fib2	 #
	mov	ebx, eax	 # _2,
 # .\userDefinedException.c:38:         return fib2(a - 1) + fib2(a - 2);
	mov	eax, DWORD PTR 32[rbp]	 # tmp89, a
	sub	eax, 2	 # _3,
	mov	ecx, eax	 #, _3
	call	fib2	 #
 # .\userDefinedException.c:38:         return fib2(a - 1) + fib2(a - 2);
	add	eax, ebx	 # _5, _2
.L8:
 # .\userDefinedException.c:40: }
	add	rsp, 40	 #,
	pop	rbx	 #
	pop	rbp	 #
	ret	
	.seh_endproc
	.section .rdata,"dr"
.LC0:
	.ascii ".\\userDefinedException.c\0"
.LC1:
	.ascii "a >= 0\0"
	.text
	.globl	fib3
	.def	fib3;	.scl	2;	.type	32;	.endef
	.seh_proc	fib3
fib3:
	push	rbp	 #
	.seh_pushreg	rbp
	push	rbx	 #
	.seh_pushreg	rbx
	sub	rsp, 40	 #,
	.seh_stackalloc	40
	lea	rbp, 32[rsp]	 #,
	.seh_setframe	rbp, 32
	.seh_endprologue
	mov	DWORD PTR 32[rbp], ecx	 # a, a
 # .\userDefinedException.c:44:     assert(a >= 0);
	cmp	DWORD PTR 32[rbp], 0	 # a,
	jns	.L13	 #,
 # .\userDefinedException.c:44:     assert(a >= 0);
	mov	r8d, 44	 #,
	lea	rax, .LC0[rip]	 # tmp90,
	mov	rdx, rax	 #, tmp90
	lea	rax, .LC1[rip]	 # tmp91,
	mov	rcx, rax	 #, tmp91
	mov	rax, QWORD PTR __imp__assert[rip]	 # tmp92,
	call	rax	 # tmp92
.L13:
 # .\userDefinedException.c:45:     if (a <= 0)
	cmp	DWORD PTR 32[rbp], 0	 # a,
	jg	.L14	 #,
 # .\userDefinedException.c:47:         if (a < 0)
	cmp	DWORD PTR 32[rbp], 0	 # a,
	jns	.L15	 #,
 # .\userDefinedException.c:49:             userDefinedException();
	call	userDefinedException	 #
.L15:
 # .\userDefinedException.c:51:         return 0;
	mov	eax, 0	 # _5,
	jmp	.L16	 #
.L14:
 # .\userDefinedException.c:53:     else if (a == 1)
	cmp	DWORD PTR 32[rbp], 1	 # a,
	jne	.L17	 #,
 # .\userDefinedException.c:55:         return 1;
	mov	eax, 1	 # _5,
	jmp	.L16	 #
.L17:
 # .\userDefinedException.c:59:         return fib3(a - 1) + fib3(a - 2);
	mov	eax, DWORD PTR 32[rbp]	 # tmp93, a
	sub	eax, 1	 # _1,
	mov	ecx, eax	 #, _1
	call	fib3	 #
	mov	ebx, eax	 # _2,
 # .\userDefinedException.c:59:         return fib3(a - 1) + fib3(a - 2);
	mov	eax, DWORD PTR 32[rbp]	 # tmp94, a
	sub	eax, 2	 # _3,
	mov	ecx, eax	 #, _3
	call	fib3	 #
 # .\userDefinedException.c:59:         return fib3(a - 1) + fib3(a - 2);
	add	eax, ebx	 # _5, _2
.L16:
 # .\userDefinedException.c:61: }
	add	rsp, 40	 #,
	pop	rbx	 #
	pop	rbp	 #
	ret	
	.seh_endproc
	.ident	"GCC: (Rev10, Built by MSYS2 project) 12.2.0"
	.def	userDefinedException;	.scl	2;	.type	32;	.endef
