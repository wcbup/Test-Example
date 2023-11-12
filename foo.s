	.file	"foo.c"
	.intel_syntax noprefix
 # GNU C17 (Rev10, Built by MSYS2 project) version 12.2.0 (x86_64-w64-mingw32)
 #	compiled by GNU C version 12.2.0, GMP version 6.2.1, MPFR version 4.2.0, MPC version 1.3.1, isl version isl-0.25-GMP

 # GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
 # options passed: -masm=intel -mtune=generic -march=nocona -O0
	.text
	.globl	sum
	.def	sum;	.scl	2;	.type	32;	.endef
	.seh_proc	sum
sum:
	push	rbp	 #
	.seh_pushreg	rbp
	mov	rbp, rsp	 #,
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	DWORD PTR 16[rbp], ecx	 # a, a
	mov	DWORD PTR 24[rbp], edx	 # b, b
	mov	DWORD PTR 32[rbp], r8d	 # c, c
	mov	DWORD PTR 40[rbp], r9d	 # d, d
 # TestCode\foo.c:3:     return a + b + c + d + e + f + g;
	mov	edx, DWORD PTR 16[rbp]	 # tmp89, a
	mov	eax, DWORD PTR 24[rbp]	 # tmp90, b
	add	edx, eax	 # _1, tmp90
 # TestCode\foo.c:3:     return a + b + c + d + e + f + g;
	mov	eax, DWORD PTR 32[rbp]	 # tmp91, c
	add	edx, eax	 # _2, tmp91
 # TestCode\foo.c:3:     return a + b + c + d + e + f + g;
	mov	eax, DWORD PTR 40[rbp]	 # tmp92, d
	add	edx, eax	 # _3, tmp92
 # TestCode\foo.c:3:     return a + b + c + d + e + f + g;
	mov	eax, DWORD PTR 48[rbp]	 # tmp93, e
	add	edx, eax	 # _4, tmp93
 # TestCode\foo.c:3:     return a + b + c + d + e + f + g;
	mov	eax, DWORD PTR 56[rbp]	 # tmp94, f
	add	edx, eax	 # _5, tmp94
 # TestCode\foo.c:3:     return a + b + c + d + e + f + g;
	mov	eax, DWORD PTR 64[rbp]	 # tmp95, g
	add	eax, edx	 # _13, _5
 # TestCode\foo.c:4: }
	pop	rbp	 #
	ret	
	.seh_endproc
	.globl	foo
	.def	foo;	.scl	2;	.type	32;	.endef
	.seh_proc	foo
foo:
	push	rbp	 #
	.seh_pushreg	rbp
	mov	rbp, rsp	 #,
	.seh_setframe	rbp, 0
	sub	rsp, 80	 #,
	.seh_stackalloc	80
	.seh_endprologue
	mov	DWORD PTR 16[rbp], ecx	 # a, a
 # TestCode\foo.c:10:     b = 9;
	mov	DWORD PTR -4[rbp], 9	 # b,
 # TestCode\foo.c:11:     c = 3;
	mov	DWORD PTR -8[rbp], 3	 # c,
 # TestCode\foo.c:12:     c *= 7;
	mov	edx, DWORD PTR -8[rbp]	 # tmp87, c
	mov	eax, edx	 # tmp88, tmp87
	sal	eax, 3	 # tmp89,
	sub	eax, edx	 # tmp90, tmp87
	mov	DWORD PTR -8[rbp], eax	 # c, tmp90
 # TestCode\foo.c:13:     b = b - 1;
	sub	DWORD PTR -4[rbp], 1	 # b,
 # TestCode\foo.c:14:     c = a / b * 77;
	mov	eax, DWORD PTR 16[rbp]	 # tmp93, a
	cdq
	idiv	DWORD PTR -4[rbp]	 # b
 # TestCode\foo.c:14:     c = a / b * 77;
	imul	eax, eax, 77	 # tmp94, _1,
	mov	DWORD PTR -8[rbp], eax	 # c, tmp94
 # TestCode\foo.c:15:     c += sum(b, b, c, b, a, b, b);
	mov	r9d, DWORD PTR -4[rbp]	 # tmp95, b
	mov	r8d, DWORD PTR -8[rbp]	 # tmp96, c
	mov	edx, DWORD PTR -4[rbp]	 # tmp97, b
	mov	eax, DWORD PTR -4[rbp]	 # tmp98, b
	mov	ecx, DWORD PTR -4[rbp]	 # tmp99, b
	mov	DWORD PTR 48[rsp], ecx	 #, tmp99
	mov	ecx, DWORD PTR -4[rbp]	 # tmp100, b
	mov	DWORD PTR 40[rsp], ecx	 #, tmp100
	mov	ecx, DWORD PTR 16[rbp]	 # tmp101, a
	mov	DWORD PTR 32[rsp], ecx	 #, tmp101
	mov	ecx, eax	 #, tmp98
	call	sum	 #
 # TestCode\foo.c:15:     c += sum(b, b, c, b, a, b, b);
	add	DWORD PTR -8[rbp], eax	 # c, _11
 # TestCode\foo.c:16:     return a + b + c;
	mov	edx, DWORD PTR 16[rbp]	 # tmp102, a
	mov	eax, DWORD PTR -4[rbp]	 # tmp103, b
	add	edx, eax	 # _2, tmp103
 # TestCode\foo.c:16:     return a + b + c;
	mov	eax, DWORD PTR -8[rbp]	 # tmp104, c
	add	eax, edx	 # _13, _2
 # TestCode\foo.c:17: }
	add	rsp, 80	 #,
	pop	rbp	 #
	ret	
	.seh_endproc
	.globl	loop
	.def	loop;	.scl	2;	.type	32;	.endef
	.seh_proc	loop
loop:
	push	rbp	 #
	.seh_pushreg	rbp
	mov	rbp, rsp	 #,
	.seh_setframe	rbp, 0
	sub	rsp, 16	 #,
	.seh_stackalloc	16
	.seh_endprologue
	mov	DWORD PTR 16[rbp], ecx	 # x, x
 # TestCode\foo.c:21:     int sum = 0;
	mov	DWORD PTR -4[rbp], 0	 # sum,
 # TestCode\foo.c:22:     while (x > 0)
	jmp	.L6	 #
.L7:
 # TestCode\foo.c:24:         sum += x;
	mov	eax, DWORD PTR 16[rbp]	 # tmp84, x
	add	DWORD PTR -4[rbp], eax	 # sum, tmp84
 # TestCode\foo.c:25:         x -= 1;
	sub	DWORD PTR 16[rbp], 1	 # x,
.L6:
 # TestCode\foo.c:22:     while (x > 0)
	cmp	DWORD PTR 16[rbp], 0	 # x,
	jg	.L7	 #,
 # TestCode\foo.c:27:     return sum;
	mov	eax, DWORD PTR -4[rbp]	 # _5, sum
 # TestCode\foo.c:28: }
	add	rsp, 16	 #,
	pop	rbp	 #
	ret	
	.seh_endproc
	.globl	fib
	.def	fib;	.scl	2;	.type	32;	.endef
	.seh_proc	fib
fib:
	push	rbp	 #
	.seh_pushreg	rbp
	push	rbx	 #
	.seh_pushreg	rbx
	sub	rsp, 40	 #,
	.seh_stackalloc	40
	lea	rbp, 32[rsp]	 #,
	.seh_setframe	rbp, 32
	.seh_endprologue
	mov	DWORD PTR 32[rbp], ecx	 # x, x
 # TestCode\foo.c:32:     if (x <= 0)
	cmp	DWORD PTR 32[rbp], 0	 # x,
	jg	.L10	 #,
 # TestCode\foo.c:34:         return 0;
	mov	eax, 0	 # _5,
	jmp	.L11	 #
.L10:
 # TestCode\foo.c:36:     else if(x == 1)
	cmp	DWORD PTR 32[rbp], 1	 # x,
	jne	.L12	 #,
 # TestCode\foo.c:38:         return 1;
	mov	eax, 1	 # _5,
	jmp	.L11	 #
.L12:
 # TestCode\foo.c:42:         return fib(x - 1) + fib(x - 2);
	mov	eax, DWORD PTR 32[rbp]	 # tmp88, x
	sub	eax, 1	 # _1,
	mov	ecx, eax	 #, _1
	call	fib	 #
	mov	ebx, eax	 # _2,
 # TestCode\foo.c:42:         return fib(x - 1) + fib(x - 2);
	mov	eax, DWORD PTR 32[rbp]	 # tmp89, x
	sub	eax, 2	 # _3,
	mov	ecx, eax	 #, _3
	call	fib	 #
 # TestCode\foo.c:42:         return fib(x - 1) + fib(x - 2);
	add	eax, ebx	 # _5, _2
.L11:
 # TestCode\foo.c:44: }
	add	rsp, 40	 #,
	pop	rbx	 #
	pop	rbp	 #
	ret	
	.seh_endproc
	.ident	"GCC: (Rev10, Built by MSYS2 project) 12.2.0"
