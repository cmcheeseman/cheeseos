[org 0x7C00]
mov ah, 0x0e
mov al, '6'
int 0x10
mov ah, 0x0e
mov al, '9'
int 0x10


roffset equ 0x7e00
mov ah, 2
mov al, 1
mov ch, 0
mov cl, 1
mov dh, 0
mov es, [nullval]
mov bx, 0x7e00
int 0x13
call roffset

jmp $
nullval: db 0
times 512-($-$$) db 0
