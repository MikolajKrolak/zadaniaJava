org 100h

start:
;Zadanie 1
mov ax, [a]
add ax, [b]
add ax, [c]
mov [y], ax

;Zadanie 2
mov ax, [a]
mov bx, [b]
mul bx
add ax, [c]
mov [y], ax

;Zadanie 3
mov ax, [a]
add ax, ax
mov bx, [b]
add bx, bx
add ax, bx
mov cx, [c]
add cx, cx
sub ax, cx
mov [y], ax

;Zadanie 4
mov ax, [a]
xor dx, dx
mov bx, [b]
div bx
add ax, [c]
mov [y], ax

;Zadanie 5
mov bx, [b]
add bx, [c]
mov ax, [a]
xor dx, dx
div bx
mov [y], ax

;Zadanie 6
mov ax, [b]
xor dx, dx
mov bx, [c]
div bx
mov bx, [a]
mul bx
mov [y], ax

;Zadanie 7
mov ax, [a]
mov bx, [a]
mul bx
mov cx, ax
mov ax, [b]
add ax, ax
add cx, ax
add cx, [c]
mov [y], cx

mov ah, 00h
int 21h

a dw 0x05
b dw 0x3B
c dw 0x4C
y dw 0x0