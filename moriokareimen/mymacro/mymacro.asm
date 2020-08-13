%include 'sum.asm'

section .data

section .bss

section .text

global main

main:
    enter 0,0
    nop

.call_macro:
    mov rax, 1
    mov rbx, 2
    mov rcx, 3
    sum rax, rbx, rcx

.final:
    mov eax, 0
    leave
    ret
