org 100h

start:
mov cx, 12

petla:
mov ah, 02h
mov dl, 'H'
int 21h

mov ah, 09h
mov dx, nowaLinia   
int 21h

loop petla

mov ax, 4C00h   
int 21h

nowaLinia db 13, 10, '$'