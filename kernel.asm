printN:
org 8100h
mov ah, 0h
int 16h
mov ah, 0eh
int 10h
mov ah, 0
int 10h
jmp printN
[BITS 16]
call printN
mov ah, 0x0E
mov al, "X"
int 0x10      ;биос вызывает функцию записи сектора
TIMES 510 - ($ - $$) db 0
DW 0xAA55
