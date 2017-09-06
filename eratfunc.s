	.file	1 "eratfunc.c"
	.section .mdebug.abi32
	.previous
	.abicalls
	.text
	.align	2
	.globl	inicializarNumerosPrimos
	.ent	inicializarNumerosPrimos
inicializarNumerosPrimos:
	.frame	$fp,24,$31		# vars= 8, regs= 2/0, args= 0, extra= 8
	.mask	0x50000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$25
	.set	reorder
	subu	$sp,$sp,24
	.cprestore 0
	sw	$fp,20($sp)
	sw	$28,16($sp)
	move	$fp,$sp
	sw	$4,24($fp)
	sw	$5,28($fp)
	li	$2,1			# 0x1
	sw	$2,8($fp)
	li	$2,2			# 0x2
	sw	$2,12($fp)
$L18:
	lw	$2,12($fp)
	lw	$3,24($fp)
	slt	$2,$3,$2
	beq	$2,$0,$L21
	b	$L17
$L21:
	lw	$2,8($fp)
	addu	$2,$2,1
	sw	$2,8($fp)
	lw	$2,12($fp)
	sll	$3,$2,2
	lw	$2,28($fp)
	addu	$3,$3,$2
	lw	$2,8($fp)
	sw	$2,0($3)
	lw	$2,12($fp)
	addu	$2,$2,1
	sw	$2,12($fp)
	b	$L18
$L17:
	move	$sp,$fp
	lw	$fp,20($sp)
	addu	$sp,$sp,24
	j	$31
	.end	inicializarNumerosPrimos
	.size	inicializarNumerosPrimos, .-inicializarNumerosPrimos
	.align	2
	.globl	encontrarNumerosPrimos
	.ent	encontrarNumerosPrimos
encontrarNumerosPrimos:
	.frame	$fp,48,$31		# vars= 8, regs= 3/0, args= 16, extra= 8
	.mask	0xd0000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$25
	.set	reorder
	subu	$sp,$sp,48
	.cprestore 16
	sw	$31,40($sp)
	sw	$fp,36($sp)
	sw	$28,32($sp)
	move	$fp,$sp
	sw	$4,48($fp)
	sw	$5,52($fp)
	lw	$4,48($fp)
	lw	$5,52($fp)
	la	$25,inicializarNumerosPrimos
	jal	$31,$25
	li	$2,2			# 0x2
	sw	$2,24($fp)
$L23:
	lw	$3,24($fp)
	lw	$2,24($fp)
	mult	$3,$2
	mflo	$3
	lw	$2,48($fp)
	slt	$2,$2,$3
	beq	$2,$0,$L26
	b	$L22
$L26:
	lw	$2,24($fp)
	sll	$3,$2,2
	lw	$2,52($fp)
	addu	$2,$3,$2
	lw	$2,0($2)
	beq	$2,$0,$L25
	li	$2,2			# 0x2
	sw	$2,28($fp)
$L28:
	lw	$3,24($fp)
	lw	$2,28($fp)
	mult	$3,$2
	mflo	$3
	lw	$2,48($fp)
	slt	$2,$2,$3
	beq	$2,$0,$L31
	b	$L25
$L31:
	lw	$3,24($fp)
	lw	$2,28($fp)
	mult	$3,$2
	mflo	$2
	sll	$3,$2,2
	lw	$2,52($fp)
	addu	$2,$3,$2
	sw	$0,0($2)
	lw	$2,28($fp)
	addu	$2,$2,1
	sw	$2,28($fp)
	b	$L28
$L25:
	lw	$2,24($fp)
	addu	$2,$2,1
	sw	$2,24($fp)
	b	$L23
$L22:
	move	$sp,$fp
	lw	$31,40($sp)
	lw	$fp,36($sp)
	addu	$sp,$sp,48
	j	$31
	.end	encontrarNumerosPrimos
	.size	encontrarNumerosPrimos, .-encontrarNumerosPrimos
	.rdata
	.align	2
$LC0:
	.ascii	"%d  \000"
	.align	2
$LC1:
	.ascii	"\n\000"
	.text
	.align	2
	.globl	imprimirPorPantalla
	.ent	imprimirPorPantalla
imprimirPorPantalla:
	.frame	$fp,48,$31		# vars= 8, regs= 3/0, args= 16, extra= 8
	.mask	0xd0000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$25
	.set	reorder
	subu	$sp,$sp,48
	.cprestore 16
	sw	$31,40($sp)
	sw	$fp,36($sp)
	sw	$28,32($sp)
	move	$fp,$sp
	sw	$4,48($fp)
	sw	$5,52($fp)
	li	$2,2			# 0x2
	sw	$2,24($fp)
$L33:
	lw	$2,24($fp)
	lw	$3,48($fp)
	slt	$2,$3,$2
	beq	$2,$0,$L36
	b	$L34
$L36:
	lw	$2,24($fp)
	sll	$3,$2,2
	lw	$2,52($fp)
	addu	$2,$3,$2
	lw	$2,0($2)
	beq	$2,$0,$L35
	lw	$2,24($fp)
	sll	$3,$2,2
	lw	$2,52($fp)
	addu	$2,$3,$2
	la	$4,$LC0
	lw	$5,0($2)
	la	$25,printf
	jal	$31,$25
$L35:
	lw	$2,24($fp)
	addu	$2,$2,1
	sw	$2,24($fp)
	b	$L33
$L34:
	la	$4,$LC1
	la	$25,printf
	jal	$31,$25
	move	$sp,$fp
	lw	$31,40($sp)
	lw	$fp,36($sp)
	addu	$sp,$sp,48
	j	$31
	.end	imprimirPorPantalla
	.size	imprimirPorPantalla, .-imprimirPorPantalla
	.rdata
	.align	2
$LC2:
	.ascii	"w\000"
	.align	2
$LC3:
	.ascii	"%d\n\000"
	.text
	.align	2
	.globl	generarArchivo
	.ent	generarArchivo
generarArchivo:
	.frame	$fp,56,$31		# vars= 16, regs= 3/0, args= 16, extra= 8
	.mask	0xd0000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$25
	.set	reorder
	subu	$sp,$sp,56
	.cprestore 16
	sw	$31,48($sp)
	sw	$fp,44($sp)
	sw	$28,40($sp)
	move	$fp,$sp
	sw	$4,56($fp)
	sw	$5,60($fp)
	sw	$6,64($fp)
	lw	$4,64($fp)
	la	$5,$LC2
	la	$25,fopen
	jal	$31,$25
	sw	$2,24($fp)
	lw	$2,24($fp)
	beq	$2,$0,$L39
	li	$2,2			# 0x2
	sw	$2,28($fp)
$L40:
	lw	$2,28($fp)
	lw	$3,56($fp)
	slt	$2,$3,$2
	beq	$2,$0,$L43
	b	$L41
$L43:
	lw	$2,28($fp)
	sll	$3,$2,2
	lw	$2,60($fp)
	addu	$2,$3,$2
	lw	$2,0($2)
	beq	$2,$0,$L42
	lw	$2,28($fp)
	sll	$3,$2,2
	lw	$2,60($fp)
	addu	$2,$3,$2
	lw	$4,24($fp)
	la	$5,$LC3
	lw	$6,0($2)
	la	$25,fprintf
	jal	$31,$25
$L42:
	lw	$2,28($fp)
	addu	$2,$2,1
	sw	$2,28($fp)
	b	$L40
$L41:
	lw	$4,24($fp)
	la	$25,fclose
	jal	$31,$25
	sw	$0,32($fp)
	b	$L38
$L39:
	li	$2,4			# 0x4
	sw	$2,32($fp)
$L38:
	lw	$2,32($fp)
	move	$sp,$fp
	lw	$31,48($sp)
	lw	$fp,44($sp)
	addu	$sp,$sp,56
	j	$31
	.end	generarArchivo
	.size	generarArchivo, .-generarArchivo
	.rdata
	.align	2
$LC4:
	.ascii	"ERAT version 1.1 \n\000"
	.text
	.align	2
	.globl	mostrarVersion
	.ent	mostrarVersion
mostrarVersion:
	.frame	$fp,40,$31		# vars= 0, regs= 3/0, args= 16, extra= 8
	.mask	0xd0000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$25
	.set	reorder
	subu	$sp,$sp,40
	.cprestore 16
	sw	$31,32($sp)
	sw	$fp,28($sp)
	sw	$28,24($sp)
	move	$fp,$sp
	la	$4,$LC4
	la	$25,printf
	jal	$31,$25
	move	$sp,$fp
	lw	$31,32($sp)
	lw	$fp,28($sp)
	addu	$sp,$sp,40
	j	$31
	.end	mostrarVersion
	.size	mostrarVersion, .-mostrarVersion
	.rdata
	.align	2
$LC5:
	.ascii	"Usage: \n\000"
	.align	2
$LC6:
	.ascii	"\terat -h\n\000"
	.align	2
$LC7:
	.ascii	"\terat -V\n\000"
	.align	2
$LC8:
	.ascii	"\terat [options] N\n\000"
	.align	2
$LC9:
	.ascii	"Options:\n\000"
	.align	2
$LC10:
	.ascii	"\t-h,\t\t--help\t\tPrints usage information.\n\000"
	.align	2
$LC11:
	.ascii	"\t-V,\t\t--version\tPrints version information.\n\000"
	.align	2
$LC12:
	.ascii	"\t-o,\t\t--output\tPath to output file.;\n\000"
	.text
	.align	2
	.globl	mostrarAyuda
	.ent	mostrarAyuda
mostrarAyuda:
	.frame	$fp,40,$31		# vars= 0, regs= 3/0, args= 16, extra= 8
	.mask	0xd0000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$25
	.set	reorder
	subu	$sp,$sp,40
	.cprestore 16
	sw	$31,32($sp)
	sw	$fp,28($sp)
	sw	$28,24($sp)
	move	$fp,$sp
	la	$4,$LC5
	la	$25,printf
	jal	$31,$25
	la	$4,$LC6
	la	$25,printf
	jal	$31,$25
	la	$4,$LC7
	la	$25,printf
	jal	$31,$25
	la	$4,$LC8
	la	$25,printf
	jal	$31,$25
	la	$4,$LC9
	la	$25,printf
	jal	$31,$25
	la	$4,$LC10
	la	$25,printf
	jal	$31,$25
	la	$4,$LC11
	la	$25,printf
	jal	$31,$25
	la	$4,$LC12
	la	$25,printf
	jal	$31,$25
	move	$sp,$fp
	lw	$31,32($sp)
	lw	$fp,28($sp)
	addu	$sp,$sp,40
	j	$31
	.end	mostrarAyuda
	.size	mostrarAyuda, .-mostrarAyuda
	.rdata
	.align	2
$LC13:
	.ascii	"-h\000"
	.align	2
$LC14:
	.ascii	"-V\000"
	.align	2
$LC15:
	.ascii	"-o\000"
	.text
	.align	2
	.globl	validarArgumentos
	.ent	validarArgumentos
validarArgumentos:
	.frame	$fp,48,$31		# vars= 8, regs= 3/0, args= 16, extra= 8
	.mask	0xd0000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$25
	.set	reorder
	subu	$sp,$sp,48
	.cprestore 16
	sw	$31,40($sp)
	sw	$fp,36($sp)
	sw	$28,32($sp)
	move	$fp,$sp
	sw	$4,48($fp)
	sw	$5,52($fp)
	lw	$2,48($fp)
	slt	$2,$2,5
	beq	$2,$0,$L50
	lw	$2,48($fp)
	slt	$2,$2,2
	bne	$2,$0,$L50
	b	$L49
$L50:
	li	$2,2			# 0x2
	sw	$2,24($fp)
	b	$L48
$L49:
	lw	$2,52($fp)
	addu	$2,$2,4
	lw	$4,0($2)
	la	$5,$LC13
	la	$25,strcmp
	jal	$31,$25
	beq	$2,$0,$L51
	lw	$2,52($fp)
	addu	$2,$2,4
	lw	$4,0($2)
	la	$5,$LC14
	la	$25,strcmp
	jal	$31,$25
	beq	$2,$0,$L52
	lw	$2,52($fp)
	addu	$2,$2,4
	lw	$4,0($2)
	la	$5,$LC15
	la	$25,strcmp
	jal	$31,$25
	bne	$2,$0,$L54
	lw	$2,52($fp)
	addu	$2,$2,4
	lw	$4,0($2)
	la	$5,$LC15
	la	$25,strcmp
	jal	$31,$25
	bne	$2,$0,$L57
	lw	$3,48($fp)
	li	$2,2			# 0x2
	beq	$3,$2,$L54
	lw	$3,48($fp)
	li	$2,3			# 0x3
	beq	$3,$2,$L54
	b	$L57
$L54:
	li	$2,2			# 0x2
	sw	$2,24($fp)
	b	$L48
$L52:
	lw	$2,48($fp)
	slt	$2,$2,3
	bne	$2,$0,$L57
	li	$2,2			# 0x2
	sw	$2,24($fp)
	b	$L48
$L51:
	lw	$2,48($fp)
	slt	$2,$2,3
	bne	$2,$0,$L57
	li	$2,2			# 0x2
	sw	$2,24($fp)
	b	$L48
$L57:
	lw	$3,48($fp)
	li	$2,4			# 0x4
	bne	$3,$2,$L59
	lw	$2,52($fp)
	addu	$2,$2,12
	lw	$4,0($2)
	la	$25,atoi
	jal	$31,$25
	slt	$2,$2,4097
	beq	$2,$0,$L61
	lw	$2,52($fp)
	addu	$2,$2,12
	lw	$4,0($2)
	la	$25,atoi
	jal	$31,$25
	slt	$2,$2,2
	bne	$2,$0,$L61
	b	$L59
$L61:
	li	$2,1			# 0x1
	sw	$2,24($fp)
	b	$L48
$L59:
	lw	$3,48($fp)
	li	$2,3			# 0x3
	bne	$3,$2,$L62
	lw	$2,52($fp)
	addu	$2,$2,8
	lw	$4,0($2)
	la	$25,atoi
	jal	$31,$25
	slt	$2,$2,4097
	beq	$2,$0,$L64
	lw	$2,52($fp)
	addu	$2,$2,8
	lw	$4,0($2)
	la	$25,atoi
	jal	$31,$25
	slt	$2,$2,2
	bne	$2,$0,$L64
	b	$L62
$L64:
	li	$2,1			# 0x1
	sw	$2,24($fp)
	b	$L48
$L62:
	sw	$0,24($fp)
$L48:
	lw	$2,24($fp)
	move	$sp,$fp
	lw	$31,40($sp)
	lw	$fp,36($sp)
	addu	$sp,$sp,48
	j	$31
	.end	validarArgumentos
	.size	validarArgumentos, .-validarArgumentos
	.rdata
	.align	2
$LC16:
	.ascii	"-\000"
	.text
	.align	2
	.globl	realizarAccion
	.ent	realizarAccion
realizarAccion:
	.frame	$fp,56,$31		# vars= 16, regs= 3/0, args= 16, extra= 8
	.mask	0xd0000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$25
	.set	reorder
	subu	$sp,$sp,56
	.cprestore 16
	sw	$31,48($sp)
	sw	$fp,44($sp)
	sw	$28,40($sp)
	move	$fp,$sp
	sw	$4,56($fp)
	sw	$5,60($fp)
	sw	$0,24($fp)
	lw	$2,60($fp)
	addu	$2,$2,4
	lw	$4,0($2)
	la	$5,$LC13
	la	$25,strcmp
	jal	$31,$25
	bne	$2,$0,$L66
	la	$25,mostrarAyuda
	jal	$31,$25
	b	$L67
$L66:
	lw	$2,60($fp)
	addu	$2,$2,4
	lw	$4,0($2)
	la	$5,$LC14
	la	$25,strcmp
	jal	$31,$25
	bne	$2,$0,$L68
	la	$25,mostrarVersion
	jal	$31,$25
	b	$L67
$L68:
	sw	$sp,32($fp)
	lw	$3,56($fp)
	li	$2,3			# 0x3
	bne	$3,$2,$L70
	lw	$2,60($fp)
	addu	$2,$2,8
	lw	$4,0($2)
	la	$25,atoi
	jal	$31,$25
	sw	$2,28($fp)
	b	$L71
$L70:
	lw	$2,60($fp)
	addu	$2,$2,12
	lw	$4,0($2)
	la	$25,atoi
	jal	$31,$25
	sw	$2,28($fp)
$L71:
	lw	$2,28($fp)
	addu	$2,$2,-1
	sll	$2,$2,2
	addu	$2,$2,4
	addu	$2,$2,7
	srl	$2,$2,3
	sll	$2,$2,3
	subu	$sp,$sp,$2
	addu	$2,$sp,16
	sw	$2,36($fp)
	lw	$4,28($fp)
	lw	$5,36($fp)
	la	$25,encontrarNumerosPrimos
	jal	$31,$25
	lw	$2,60($fp)
	addu	$2,$2,4
	lw	$4,0($2)
	la	$5,$LC15
	la	$25,strcmp
	jal	$31,$25
	bne	$2,$0,$L72
	lw	$2,60($fp)
	addu	$2,$2,8
	lw	$4,0($2)
	la	$5,$LC16
	la	$25,strcmp
	jal	$31,$25
	bne	$2,$0,$L72
	lw	$4,28($fp)
	lw	$5,36($fp)
	la	$25,imprimirPorPantalla
	jal	$31,$25
	b	$L73
$L72:
	lw	$2,60($fp)
	addu	$2,$2,4
	lw	$4,0($2)
	la	$5,$LC15
	la	$25,strcmp
	jal	$31,$25
	bne	$2,$0,$L73
	lw	$2,60($fp)
	addu	$2,$2,8
	lw	$4,28($fp)
	lw	$5,36($fp)
	lw	$6,0($2)
	la	$25,generarArchivo
	jal	$31,$25
	sw	$2,24($fp)
$L73:
	lw	$sp,32($fp)
$L67:
	lw	$2,24($fp)
	move	$sp,$fp
	lw	$31,48($sp)
	lw	$fp,44($sp)
	addu	$sp,$sp,56
	j	$31
	.end	realizarAccion
	.size	realizarAccion, .-realizarAccion
	.ident	"GCC: (GNU) 3.3.3 (NetBSD nb3 20040520)"
