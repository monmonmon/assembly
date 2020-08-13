section .bss

section .data

section .text

global main

main:
    enter 9, 0
    nop

.push:
    mov rax, 1
    push rax
    mov rax, 2
    push rax
    mov rax, 3
    push rax
    mov rax, 4
    push rax

.pop:
    mov rax, [rsp]
    mov rax, [rsp + 8]
    mov rax, [rsp + 16]
    mov rax, [rsp + 24]
    pop rax
    pop rax
    pop rax
    pop rax

.final:
    mov eax, 0
    leave
    ret
