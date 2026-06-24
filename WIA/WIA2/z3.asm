org 100h

mov ah, 02h
mov dh, 0
mov dl, 0
int 10h

mov ah, 02h
mov dl, 'A'
int 21h

mov ah, 00h
int 21h