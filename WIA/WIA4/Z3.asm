org 100h

main:

mov AH, 01h
int 21h

mov AH, 'Q'
cmp AL, AH
JE inputQ

mov AH, 02h
mov DL, AL
int 21h

jmp main

inputQ:
mov AH, 00h
int 21h

