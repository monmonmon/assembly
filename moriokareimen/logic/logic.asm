section .bss

section .data

section .text

global main

main:
    enter 0, 0
    nop

.not:
    xor rax, rax
    xor rbx, rbx
    mov ax, 0b00001111
    not ax

.and:
    xor rax, rax
    xor rbx, rbx
    mov ax, 0b00001111
    mov bx, 0b00001100
    and ax, bx

.or:
    xor rax, rax
    xor rbx, rbx
    mov ax, 0b00001111
    mov bx, 0b10100100
    or ax, bx

.xor:
    xor rax, rax
    xor rbx, rbx
    mov ax, 0b00001111
    mov bx, 0b10100100
    xor ax, bx

.shl:
    xor rax, rax
    xor rbx, rbx
    mov ax, 0b00001111
    shl ax, 3

.shr:
    xor rax, rax
    xor rbx, rbx
    mov ax, 0b00001111
    shr ax, 3

.final:
    mov eax, 0
    leave
    ret
