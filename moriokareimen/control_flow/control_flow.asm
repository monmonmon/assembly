section .data

section .bss

section .text

global main

main:
    enter 0,0
    nop

    jmp .compare

.equal:
    mov ebx, 5
    cmp ebx, 8
    jns .greater
    cmp ebx, 7
    jns .greater
    cmp ebx, 6
    jns .greater
    cmp ebx, 5
    jns .greater
    cmp ebx, 4
    jns .greater

.final:
    mov eax, 0
    leave
    ret

.greater:
    xor eax, eax
    xor ebx, ebx
    jmp .final

.compare:
    mov eax, 3
    cmp eax, 2
    jz .equal
    cmp eax, 5
    jz .equal
    cmp eax, 3
    jz .equal
