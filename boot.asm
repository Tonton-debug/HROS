section .text
use16
org 0x7c00

start:
	jmp 0x0000:0x8100 ; call the kernel

TIMES 510 - ($ - $$) db 0
DW 0xAA55