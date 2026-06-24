org 100h

;z1
push word [a]
push word [b]
pop AX
pop CX
mul CX
push AX
push word [c]
pop AX
pop CX
add AX, CX
mov [y1], AX

;z2
push 2h
push word [a]
pop AX
pop CX
mul CX
push AX

push 2h
push word [b]
pop AX
pop CX
mul CX
push AX

pop AX
pop CX
add AX, CX
push AX

push 2h
push word [c]
pop AX
pop CX
mul CX
push AX

pop AX
pop CX
sub AX, CX
mov [y2], AX

;z3
push word [a]
push word [b]
pop AX
pop CX
mov DX, 0x0000
div CX
push AX
push word [c]
pop AX
pop CX
add AX, CX
mov [y3], AX

;z4
push word [a]
push word [b]
push word [c]
pop AX
pop CX
add AX, CX
push AX
pop AX
pop CX
mov DX, 0x0000
div CX
mov [y4], AX

;z5
push word [a]
push word [b]
pop AX
pop CX
mul CX
push AX
push word [c]
pop AX
pop CX
mov DX, 0x0000
div CX
mov [y5], AX

;koniec
mov AH, 00h
int 21h

;dane
a dw 0x05
b dw 0x3B
c dw 0x4C

y1 dw 0x0
y2 dw 0x0
y3 dw 0x0
y4 dw 0x0
y5 dw 0x0