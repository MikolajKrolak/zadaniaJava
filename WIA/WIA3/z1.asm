org 100h

start:
    mov ah, 0Ah
    mov dx, bufor
    int 21h

    mov ah, 02h
    mov dl, 0Dh
    int 21h
    mov dl, 0Ah
    int 21h

    mov ah, 02h
    mov dl, [bufor + 4]
    int 21h

    mov ah, 00h
    int 21h

bufor db 20, 0
    times 20 db 0