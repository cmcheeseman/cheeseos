[org 0x7C00]
mov ah, 0x0e
mov al, '('
int 0x10
mov ah, 0x0e
mov al, ':'
int 0x10
mov ah, 0x0e
mov al, 0xA
int 0x10
alsostuff:
    mov ah, 0
    int 0x16
    mov ah, 0x0e
    int 0x10
    cmp al, 0x0D
    je stuff
    mov [inputyay + bx], al
    inc bx
    jmp alsostuff
stuff:
    mov [inputyay], byte 0x0A
    mov [inputyay + 1], byte 0x0D
    mov ah, 0x0e
    mov bx, inputyay
prnloop:
    mov al, [bx]
    cmp al, 0
    je newline
    int 0x10
    cmp al, '9'
    je sixnine
    inc bx
    jmp prnloop
newline:
    mov ah, 0x0e
    mov al, 0xA
    int 0x10
    mov al, 0x0D
    int 0x10
    sub al, al
    sub bx, bx
    jmp alsostuff
sixnine:
    snoffset equ 0x7e00
    mov ah, 2
    mov al, 1
    mov ch, 0
    mov cl, 3
    mov dh, 0
    mov es, [nullval]
    mov bx, 0x7e00
    int 0x13
    call snoffset

jmp $
inputyay:
   times 258 db 0
nullval: db 0
times 512-($-$$) db 0

