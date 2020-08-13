section .bss

section .data

section .text

global main

main:
    enter 0,0
    ; push ebp
    ; mov ebp, esp

; .add:
;     xor eax, eax
;     xor ebx, ebx
;     mov eax, 2
;     mov ebx, 7
;     add eax, ebx
;
; .sub:
;     xor eax, eax
;     xor ebx, ebx
;     mov eax, 4
;     mov ebx, 3
;     sub eax, ebx
;
; .mul:
;     xor eax, eax
;     xor ebx, ebx
;     mov ax, 10
;     mov bl, 2
;     mul bl

; 引数が1byteの場合のdiv
.div:
    xor eax, eax
    xor ebx, ebx
    mov ax, 10
    mov bl, 3
    div bl

; 引数が2byteの場合のdiv　なんか動かない
.div2:
    xor eax, eax
    xor ebx, ebx
    mov eax, 300
    mov bx, 10
    div bx

; 引数が4byteの場合のdiv
.div4:
    xor rax, rax
    xor rbx, rbx
    mov rax, 123456
    mov ebx, 54321
    div ebx

.final:
    mov eax, 0
    leave
    ret
