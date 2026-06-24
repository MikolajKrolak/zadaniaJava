org 100h

start:
    mov ah, 0Ah
    mov dx, bufor
    int 21h

    xor bx, bx
    mov bl, [bufor + 1]
    mov byte [bufor + 2 + bx], '$'

    mov ah, 02h
    mov dl, 0Dh
    int 21h
    mov dl, 0Ah
    int 21h

    mov ah, 09h
    mov dx, bufor + 2
    int 21h

    mov ah, 00h
    int 21h

bufor db 50, 0
      times 50 db 0