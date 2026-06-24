org 100h

mov ah, 02h
mov dh, 12
mov dl, 39
int 10h

mov ah, 02h
mov dl, 'C'
int 21h

mov ah, 00h
int 21h