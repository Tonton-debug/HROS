
[BITS 16]
jmp 0000:8100h
TIMES 510 - ($ - $$) db 0
DW 0xAA55
