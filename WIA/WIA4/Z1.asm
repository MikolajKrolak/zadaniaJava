org 100h

mov AH, 01h
int 21h
mov AH, '_'
cmp AL, AH

JL mniejsze
JG wieksze
JE rowne

mniejsze:
mov AH, 02h
mov DL, '<'
int 21h
jmp koniec

wieksze:
mov AH, 02h
mov DL, '>'
int 21h
jmp koniec

rowne:
mov AH, 02h
mov DL, '='
int 21h
mov AH, 02h
mov DL, '='
int 21h
jmp koniec


koniec:
mov AH, 00h
int 21h
