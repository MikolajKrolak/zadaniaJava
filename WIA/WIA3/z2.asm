org 100h

start:
    mov ah, 09h
    mov dx, tekst
    int 21h

    mov ah, 09h
    mov dx, nowa_linia
    int 21h

    mov byte [tekst + 3], '$'

    mov ah, 09h
    mov dx, tekst
    int 21h

    mov ah, 00h
    int 21h

tekst db 'abcdefghijk$'
nowa_linia db 0Dh, 0Ah, '$'