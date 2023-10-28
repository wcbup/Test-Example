	.file	"foo.c"
	.intel_syntax noprefix
 # GNU C17 (Rev10, Built by MSYS2 project) version 12.2.0 (x86_64-w64-mingw32)
 #	compiled by GNU C version 12.2.0, GMP version 6.2.1, MPFR version 4.2.0, MPC version 1.3.1, isl version isl-0.25-GMP

 # GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
 # options passed: -masm=intel -mtune=generic -march=nocona
	.text
	.globl	foo
	.def	foo;	.scl	2;	.type	32;	.endef
	.seh_proc	foo
foo:
	push	rbp	 #
	.seh_pushreg	rbp
	mov	rbp, rsp	 #,
	.seh_setframe	rbp, 0
	sub	rsp, 16	 #,
	.seh_stackalloc	16
	.seh_endprologue
	mov	DWORD PTR 16[rbp], ecx	 # a, a
 # .\foo.c:4:     b = a + 1;
	mov	eax, DWORD PTR 16[rbp]	 # tmp89, a
	add	eax, 1	 # tmp88,
	mov	DWORD PTR -4[rbp], eax	 # b, tmp88
 # .\foo.c:5:     c = (a - 2) / b * 7;
	mov	eax, DWORD PTR 16[rbp]	 # tmp90, a
	sub	eax, 2	 # _1,
 # .\foo.c:5:     c = (a - 2) / b * 7;
	cdq
	idiv	DWORD PTR -4[rbp]	 # b
	mov	edx, eax	 # _2, tmp91
 # .\foo.c:5:     c = (a - 2) / b * 7;
	mov	eax, edx	 # tmp93, _2
	sal	eax, 3	 # tmp94,
	sub	eax, edx	 # tmp95, _2
	mov	DWORD PTR -8[rbp], eax	 # c, tmp95
 # .\foo.c:6:     return b / c;
	mov	eax, DWORD PTR -4[rbp]	 # tmp98, b
	cdq
	idiv	DWORD PTR -8[rbp]	 # c
 # .\foo.c:7: }
	add	rsp, 16	 #,
	pop	rbp	 #
	ret	
	.seh_endproc
	.ident	"GCC: (Rev10, Built by MSYS2 project) 12.2.0"
