	.file	"array.c"
	.intel_syntax noprefix
 # GNU C17 (Rev10, Built by MSYS2 project) version 12.2.0 (x86_64-w64-mingw32)
 #	compiled by GNU C version 12.2.0, GMP version 6.2.1, MPFR version 4.2.0, MPC version 1.3.1, isl version isl-0.25-GMP

 # GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
 # options passed: -masm=intel -mtune=generic -march=nocona
	.text
	.globl	array1
	.def	array1;	.scl	2;	.type	32;	.endef
	.seh_proc	array1
array1:
	push	rbp	 #
	.seh_pushreg	rbp
	mov	rbp, rsp	 #,
	.seh_setframe	rbp, 0
	sub	rsp, 16	 #,
	.seh_stackalloc	16
	.seh_endprologue
	mov	DWORD PTR 16[rbp], ecx	 # i, i
 # .\array.c:3:     int a[] = {0, 1, 2};
	mov	DWORD PTR -12[rbp], 0	 # a[0],
	mov	DWORD PTR -8[rbp], 1	 # a[1],
	mov	DWORD PTR -4[rbp], 2	 # a[2],
 # .\array.c:4:     return a[i];
	mov	eax, DWORD PTR 16[rbp]	 # tmp85, i
	cdqe
	mov	eax, DWORD PTR -12[rbp+rax*4]	 # _6, a[i_5(D)]
 # .\array.c:5: }
	add	rsp, 16	 #,
	pop	rbp	 #
	ret	
	.seh_endproc
	.globl	array2
	.def	array2;	.scl	2;	.type	32;	.endef
	.seh_proc	array2
array2:
	push	rbp	 #
	.seh_pushreg	rbp
	mov	rbp, rsp	 #,
	.seh_setframe	rbp, 0
	sub	rsp, 16	 #,
	.seh_stackalloc	16
	.seh_endprologue
	mov	DWORD PTR 16[rbp], ecx	 # i, i
 # .\array.c:9:     int a[] = {0, 1, 2};
	mov	DWORD PTR -12[rbp], 0	 # a[0],
	mov	DWORD PTR -8[rbp], 1	 # a[1],
	mov	DWORD PTR -4[rbp], 2	 # a[2],
 # .\array.c:10:     if (i <= 2 && i >= 0)
	cmp	DWORD PTR 16[rbp], 2	 # i,
	jg	.L4	 #,
 # .\array.c:10:     if (i <= 2 && i >= 0)
	cmp	DWORD PTR 16[rbp], 0	 # i,
	js	.L4	 #,
 # .\array.c:12:         return a[i];
	mov	eax, DWORD PTR 16[rbp]	 # tmp85, i
	cdqe
	mov	eax, DWORD PTR -12[rbp+rax*4]	 # _1, a[i_6(D)]
	jmp	.L6	 #
.L4:
 # .\array.c:16:         return 0;
	mov	eax, 0	 # _1,
.L6:
 # .\array.c:18: }
	add	rsp, 16	 #,
	pop	rbp	 #
	ret	
	.seh_endproc
	.ident	"GCC: (Rev10, Built by MSYS2 project) 12.2.0"
