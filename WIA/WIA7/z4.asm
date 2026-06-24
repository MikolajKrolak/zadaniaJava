org 100h

start:
mov ah, 02h
mov bh, 0
mov dh, 24
mov dl, 79
int 10h

mov ah, 09h
mov al, '8'
mov bh, 0
mov bl, 0Fh
mov cx, 1
int 10h

mov ax, 4C00h
int 21h