; moyen.
%define	SOURCE "; moyen.%1$c%%define%2$cSOURCE %3$c%4$s%3$c%1$c%%define%2$cKID_FILE %3$cGrace_kid.s%3$c%1$c%%define%2$cX _main%1$c%1$c%2$csection%2$c.text%1$c%2$cextern%2$c_dprintf%1$c%2$cextern%2$c_open%1$c%2$cextern%2$c_close%1$c%%macro%2$cFT 0%1$c%2$cglobal%2$c_main%1$cX:%1$c%2$cpush%2$crbp%1$c%2$clea%2$c%2$crdi, [rel kid_file]%1$c%2$cmov%2$c%2$crsi, 0x601%1$c%2$cmov%2$c%2$crdx, 644o%1$c%2$cxor%2$c%2$crax, rax%1$c%2$ccall%2$c_open%1$c%2$ccmp%2$c%2$crax, -1%1$c%2$cje%2$c%2$cR_0%1$c%2$cmov%2$c%2$crdi, rax%1$c%2$clea%2$c%2$crsi, [rel source]%1$c%2$cmov%2$c%2$crdx, 10%1$c%2$cmov%2$c%2$crcx, 9%1$c%2$cmov%2$c%2$cr8, 34%1$c%2$cmov%2$c%2$cr9, rsi%1$c%2$cmov%2$c%2$cal, 0%1$c%2$ccall%2$c_dprintf%1$c%2$ccall%2$c_close%1$c%2$cxor%2$c%2$crax, rax%1$cR_0:%1$c%2$cpop%2$c%2$crbp%1$c%2$cret%1$c%%endmacro%1$c%2$cglobal%2$c_start%1$cstart:%1$c%2$cFT%1$c%1$c%2$csection%2$c.data%1$ckid_file:%1$c%2$cdb%2$cKID_FILE, 0%1$csource:%1$c%2$cdb%2$cSOURCE, 0%1$c"
%define	KID_FILE "Grace_kid.s"
%define	X _main

	section	.text
	extern	_dprintf
	extern	_open
	extern	_close
%macro	FT 0
	global	_main
X:
	push	rbp
	lea		rdi, [rel kid_file]
	mov		rsi, 0x601
	mov		rdx, 644o
	xor		rax, rax
	call	_open
	cmp		rax, -1
	je		R_0
	mov		rdi, rax
	lea		rsi, [rel source]
	mov		rdx, 10
	mov		rcx, 9
	mov		r8, 34
	mov		r9, rsi
	mov		al, 0
	call	_dprintf
	call	_close
	xor		rax, rax
R_0:
	pop		rbp
	ret
%endmacro
	global	_start
start:
	FT

	section	.data
kid_file:
	db	KID_FILE, 0
source:
	db	SOURCE, 0
