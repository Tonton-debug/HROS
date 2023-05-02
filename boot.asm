[BITS 16]
mov ah,02h
mov al,08h
mov cx,0012h
mov bx,8100h
int 13h
mov sp,810h
mov ds,100h
jmp 0000:8100h


TIMES 510 - ($ - $$) db 0
DW 0xAA55

