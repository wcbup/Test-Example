	.file	"array.c"
	.intel_syntax noprefix
 # GNU C17 (Rev10, Built by MSYS2 project) version 12.2.0 (x86_64-w64-mingw32)
 #	compiled by GNU C version 12.2.0, GMP version 6.2.1, MPFR version 4.2.0, MPC version 1.3.1, isl version isl-0.25-GMP

 # GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
 # options passed: -masm=intel -mtune=generic -march=nocona -O0
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
 # TestCode\array.c:4:     int a[] = {0, 1, 9};
	mov	DWORD PTR -12[rbp], 0	 # a[0],
	mov	DWORD PTR -8[rbp], 1	 # a[1],
	mov	DWORD PTR -4[rbp], 9	 # a[2],
 # TestCode\array.c:5:     return a[i];
	mov	eax, DWORD PTR 16[rbp]	 # tmp85, i
	cdqe
	mov	eax, DWORD PTR -12[rbp+rax*4]	 # _6, a[i_5(D)]
 # TestCode\array.c:6: }
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
	sub	rsp, 32	 #,
	.seh_stackalloc	32
	.seh_endprologue
	mov	DWORD PTR 16[rbp], ecx	 # i, i
 # TestCode\array.c:10:     int a[] = {0, 1, 2};
	mov	DWORD PTR -20[rbp], 0	 # a[0],
	mov	DWORD PTR -16[rbp], 1	 # a[1],
	mov	DWORD PTR -12[rbp], 2	 # a[2],
 # TestCode\array.c:11:     int b = 3, c = 4;
	mov	DWORD PTR -4[rbp], 3	 # b,
 # TestCode\array.c:11:     int b = 3, c = 4;
	mov	DWORD PTR -8[rbp], 4	 # c,
 # TestCode\array.c:12:     if (i <= 2 && i >= 0)
	cmp	DWORD PTR 16[rbp], 2	 # i,
	jg	.L4	 #,
 # TestCode\array.c:12:     if (i <= 2 && i >= 0)
	cmp	DWORD PTR 16[rbp], 0	 # i,
	js	.L4	 #,
 # TestCode\array.c:14:         return a[i] + (a[i + 1] + 1) * a[i + 2];
	mov	eax, DWORD PTR 16[rbp]	 # tmp92, i
	cdqe
	mov	edx, DWORD PTR -20[rbp+rax*4]	 # _1, a[i_15(D)]
 # TestCode\array.c:14:         return a[i] + (a[i + 1] + 1) * a[i + 2];
	mov	eax, DWORD PTR 16[rbp]	 # tmp93, i
	add	eax, 1	 # _2,
 # TestCode\array.c:14:         return a[i] + (a[i + 1] + 1) * a[i + 2];
	cdqe
	mov	eax, DWORD PTR -20[rbp+rax*4]	 # _3, a[_2]
 # TestCode\array.c:14:         return a[i] + (a[i + 1] + 1) * a[i + 2];
	lea	ecx, 1[rax]	 # _4,
 # TestCode\array.c:14:         return a[i] + (a[i + 1] + 1) * a[i + 2];
	mov	eax, DWORD PTR 16[rbp]	 # tmp95, i
	add	eax, 2	 # _5,
 # TestCode\array.c:14:         return a[i] + (a[i + 1] + 1) * a[i + 2];
	cdqe
	mov	eax, DWORD PTR -20[rbp+rax*4]	 # _6, a[_5]
 # TestCode\array.c:14:         return a[i] + (a[i + 1] + 1) * a[i + 2];
	imul	eax, ecx	 # _7, _4
 # TestCode\array.c:14:         return a[i] + (a[i + 1] + 1) * a[i + 2];
	add	eax, edx	 # _8, _1
	jmp	.L6	 #
.L4:
 # TestCode\array.c:18:         return 0;
	mov	eax, 0	 # _8,
.L6:
 # TestCode\array.c:20: }
	add	rsp, 32	 #,
	pop	rbp	 #
	ret	
	.seh_endproc
	.globl	array3
	.def	array3;	.scl	2;	.type	32;	.endef
	.seh_proc	array3
array3:
	push	rbp	 #
	.seh_pushreg	rbp
	mov	rbp, rsp	 #,
	.seh_setframe	rbp, 0
	sub	rsp, 32	 #,
	.seh_stackalloc	32
	.seh_endprologue
	mov	DWORD PTR 16[rbp], ecx	 # i, i
 # TestCode\array.c:25:     a[4] = 100;
	mov	DWORD PTR -16[rbp], 100	 # a[4],
 # TestCode\array.c:26:     return a[i];
	mov	eax, DWORD PTR 16[rbp]	 # tmp85, i
	cdqe
	mov	eax, DWORD PTR -32[rbp+rax*4]	 # _4, a[i_3(D)]
 # TestCode\array.c:27: }
	add	rsp, 32	 #,
	pop	rbp	 #
	ret	
	.seh_endproc
	.section .rdata,"dr"
.LC0:
	.ascii "TestCode\\array.c\0"
.LC1:
	.ascii "i > 0 && i < 4\0"
	.text
	.globl	array4
	.def	array4;	.scl	2;	.type	32;	.endef
	.seh_proc	array4
array4:
	push	rbp	 #
	.seh_pushreg	rbp
	mov	rbp, rsp	 #,
	.seh_setframe	rbp, 0
	sub	rsp, 80	 #,
	.seh_stackalloc	80
	.seh_endprologue
	mov	DWORD PTR 16[rbp], ecx	 # i, i
 # TestCode\array.c:31:     assert(i > 0 && i < 4);
	cmp	DWORD PTR 16[rbp], 0	 # i,
	jle	.L10	 #,
 # TestCode\array.c:31:     assert(i > 0 && i < 4);
	cmp	DWORD PTR 16[rbp], 3	 # i,
	jle	.L13	 #,
.L10:
 # TestCode\array.c:31:     assert(i > 0 && i < 4);
	mov	r8d, 31	 #,
	lea	rax, .LC0[rip]	 # tmp89,
	mov	rdx, rax	 #, tmp89
	lea	rax, .LC1[rip]	 # tmp90,
	mov	rcx, rax	 #, tmp90
	mov	rax, QWORD PTR __imp__assert[rip]	 # tmp91,
	call	rax	 # tmp91
.L13:
 # TestCode\array.c:32:     int a[] = {1, 2, 3, 4};
	mov	DWORD PTR -16[rbp], 1	 # a[0],
	mov	DWORD PTR -12[rbp], 2	 # a[1],
	mov	DWORD PTR -8[rbp], 3	 # a[2],
	mov	DWORD PTR -4[rbp], 4	 # a[3],
 # TestCode\array.c:33:     int b[] = {1, 2, 3, 4, 5};
	mov	DWORD PTR -48[rbp], 1	 # b[0],
	mov	DWORD PTR -44[rbp], 2	 # b[1],
	mov	DWORD PTR -40[rbp], 3	 # b[2],
	mov	DWORD PTR -36[rbp], 4	 # b[3],
	mov	DWORD PTR -32[rbp], 5	 # b[4],
 # TestCode\array.c:34:     return a[i] + b[i + 1];
	mov	eax, DWORD PTR 16[rbp]	 # tmp93, i
	cdqe
	mov	edx, DWORD PTR -16[rbp+rax*4]	 # _1, a[i_5(D)]
 # TestCode\array.c:34:     return a[i] + b[i + 1];
	mov	eax, DWORD PTR 16[rbp]	 # tmp94, i
	add	eax, 1	 # _2,
 # TestCode\array.c:34:     return a[i] + b[i + 1];
	cdqe
	mov	eax, DWORD PTR -48[rbp+rax*4]	 # _3, b[_2]
 # TestCode\array.c:34:     return a[i] + b[i + 1];
	add	eax, edx	 # _19, _1
 # TestCode\array.c:35: }
	add	rsp, 80	 #,
	pop	rbp	 #
	ret	
	.seh_endproc
	.globl	array5
	.def	array5;	.scl	2;	.type	32;	.endef
	.seh_proc	array5
array5:
	push	rbp	 #
	.seh_pushreg	rbp
	mov	rbp, rsp	 #,
	.seh_setframe	rbp, 0
	sub	rsp, 32	 #,
	.seh_stackalloc	32
	.seh_endprologue
	mov	DWORD PTR 16[rbp], ecx	 # x, x
	mov	DWORD PTR 24[rbp], edx	 # y, y
 # TestCode\array.c:39:     int a[] = {1, 2, 3, 4, 5, 6, 7};
	mov	DWORD PTR -32[rbp], 1	 # a[0],
	mov	DWORD PTR -28[rbp], 2	 # a[1],
	mov	DWORD PTR -24[rbp], 3	 # a[2],
	mov	DWORD PTR -20[rbp], 4	 # a[3],
	mov	DWORD PTR -16[rbp], 5	 # a[4],
	mov	DWORD PTR -12[rbp], 6	 # a[5],
	mov	DWORD PTR -8[rbp], 7	 # a[6],
 # TestCode\array.c:40:     int index = 3;
	mov	DWORD PTR -4[rbp], 3	 # index,
 # TestCode\array.c:41:     if (x > y)
	mov	eax, DWORD PTR 16[rbp]	 # tmp84, x
	cmp	eax, DWORD PTR 24[rbp]	 # tmp84, y
	jle	.L16	 #,
 # TestCode\array.c:43:         index += y;
	mov	eax, DWORD PTR 24[rbp]	 # tmp85, y
	add	DWORD PTR -4[rbp], eax	 # index, tmp85
	jmp	.L17	 #
.L16:
 # TestCode\array.c:47:         index += x;
	mov	eax, DWORD PTR 16[rbp]	 # tmp86, x
	add	DWORD PTR -4[rbp], eax	 # index, tmp86
.L17:
 # TestCode\array.c:49:     return a[index];
	mov	eax, DWORD PTR -4[rbp]	 # tmp88, index
	cdqe
	mov	eax, DWORD PTR -32[rbp+rax*4]	 # _15, a[index_1]
 # TestCode\array.c:50: }
	add	rsp, 32	 #,
	pop	rbp	 #
	ret	
	.seh_endproc
	.section .rdata,"dr"
.LC2:
	.ascii "x < 7\0"
	.text
	.globl	array6
	.def	array6;	.scl	2;	.type	32;	.endef
	.seh_proc	array6
array6:
	push	rbp	 #
	.seh_pushreg	rbp
	mov	rbp, rsp	 #,
	.seh_setframe	rbp, 0
	sub	rsp, 64	 #,
	.seh_stackalloc	64
	.seh_endprologue
	mov	DWORD PTR 16[rbp], ecx	 # x, x
	mov	DWORD PTR 24[rbp], edx	 # y, y
 # TestCode\array.c:54:     assert(x < 7);
	cmp	DWORD PTR 16[rbp], 6	 # x,
	jle	.L22	 #,
 # TestCode\array.c:54:     assert(x < 7);
	mov	r8d, 54	 #,
	lea	rax, .LC0[rip]	 # tmp86,
	mov	rdx, rax	 #, tmp86
	lea	rax, .LC2[rip]	 # tmp87,
	mov	rcx, rax	 #, tmp87
	mov	rax, QWORD PTR __imp__assert[rip]	 # tmp88,
	call	rax	 # tmp88
.L22:
 # TestCode\array.c:55:     int a[] = {1, 2, 3, 4, 5, 6, 7};
	mov	DWORD PTR -32[rbp], 1	 # a[0],
	mov	DWORD PTR -28[rbp], 2	 # a[1],
	mov	DWORD PTR -24[rbp], 3	 # a[2],
	mov	DWORD PTR -20[rbp], 4	 # a[3],
	mov	DWORD PTR -16[rbp], 5	 # a[4],
	mov	DWORD PTR -12[rbp], 6	 # a[5],
	mov	DWORD PTR -8[rbp], 7	 # a[6],
 # TestCode\array.c:56:     int index = 3;
	mov	DWORD PTR -4[rbp], 3	 # index,
 # TestCode\array.c:57:     if (x > y)
	mov	eax, DWORD PTR 16[rbp]	 # tmp89, x
	cmp	eax, DWORD PTR 24[rbp]	 # tmp89, y
	jle	.L23	 #,
 # TestCode\array.c:59:         index += y;
	mov	eax, DWORD PTR 24[rbp]	 # tmp90, y
	add	DWORD PTR -4[rbp], eax	 # index, tmp90
	jmp	.L24	 #
.L23:
 # TestCode\array.c:63:         index += x;
	mov	eax, DWORD PTR 16[rbp]	 # tmp91, x
	add	DWORD PTR -4[rbp], eax	 # index, tmp91
.L24:
 # TestCode\array.c:65:     return a[index];
	mov	eax, DWORD PTR -4[rbp]	 # tmp93, index
	cdqe
	mov	eax, DWORD PTR -32[rbp+rax*4]	 # _19, a[index_1]
 # TestCode\array.c:66: }
	add	rsp, 64	 #,
	pop	rbp	 #
	ret	
	.seh_endproc
	.ident	"GCC: (Rev10, Built by MSYS2 project) 12.2.0"
