;section .text
use16
org 0x8100

clear_screen:
	mov ax, 3
	int 0x10

; String must be in SI
; Also the very last symbol of this string must be a zero symbol,
; so this function knows where this string ends
printf:
	pusha
	xor al, al ; bh = 0
	jmp _printf_loop
	_printf_loop:
		mov ah, 0x0E
		lodsb
		test al, al
		jz _printf_exit
		int 0x10
		jmp _printf_loop
	_printf_exit:
		popa
		ret

start:
	mov si, msg
	cld
	call printf
	jmp $
	
msg: db "HROS Loaded!!!", 0