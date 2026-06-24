org 100h

mov ah, 01h
int 21h

mov bl, al

mov ah, 02h
mov dl, ' '
int 21h

mov ah, 02h
mov dl, bl
int 21h

mov ah, 00h
int 21h