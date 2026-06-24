org 100h

mov AH, 01h
int 21h
cmp AL, 41h

JL nieLitera
JGE wieksze
JE nieLitera

wieksze:
cmp AL, 5Ah
JL duzaLit
JG czyMala

czyMala:
cmp AL, 61h
JL nieLitera
cmp AL, 7Ah
JLE malaLit
JG nieLitera

duzaLit:
mov DX, nowaLinia
mov AH, 09h       
int 21h

mov AH, 09h
mov DX, str1
int 21h
jmp koniec

malaLit:
mov DX, nowaLinia
mov AH, 09h       
int 21h

mov AH, 09h
mov DX, str2
int 21h
jmp koniec

nieLitera:
mov DX, nowaLinia
mov AH, 09h       
int 21h

mov AH, 09h
mov DX, str3
int 21h
jmp koniec

koniec:
mov AH, 00h
int 21h

str1 db "duza litera$"
str2 db "mala litera$"
str3 db "to nie litera$"
nowaLinia  DW 0A0Dh, '$'