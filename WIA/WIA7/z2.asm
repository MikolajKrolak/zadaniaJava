org 100h

start:
mov di, bufor

wczytuj:
mov ah, 01h
int 21h

cmp al, 13
je koniec_wczytywania

mov [di], al
inc di
jmp wczytuj

koniec_wczytywania:
mov byte [di], '$'

mov ah, 09h
mov dx, nowaLinia
int 21h

mov dx, bufor
int 21h

mov ax, 4C00h
int 21h

nowaLinia db 13, 10, '$'
bufor times 255 db 0