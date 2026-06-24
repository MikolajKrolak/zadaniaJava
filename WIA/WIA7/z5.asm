org 100h

start:
mov ah, 02h
mov bh, 0
mov dh, 12
mov dl, 40
int 10h

mov ah, 09h
mov al, 03h
mov bh, 0
mov bl, 74h
mov cx, 1
int 10h

mov ah, 02h
mov bh, 0
mov dh, 0
mov dl, 40
int 10h

mov ah, 09h
mov al, 05h
mov bh, 0
mov bl, 04h
mov cx, 1
int 10h

mov ah, 02h
mov bh, 0
mov dh, 24
mov dl, 40
int 10h

mov ah, 09h
mov al, 06h
mov bh, 0
mov bl, 70h
mov cx, 1
int 10h

mov ax, 4C00h
int 21h