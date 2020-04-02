section .data
    fmt: db "%d", 0x0a, 0
    fizz: db "Fizz", 0x0a, 0
    buzz: db "Buzz", 0x0a, 0
    fizzbuzz: db "Fizz Buzz", 0x0a, 0

section .bss

section .text

global main

extern printf

main:
    push rbp
    mov rbp, rsp

    mov r12, 1
    mov r13, 30

.loop:
    cmp r12, r13
    jz .final

.div15:
    mov rax, r12
    mov rbx, 15
    mov rdx, 0
    div rbx
    cmp rdx, 0
    jz .fizzbuzz

.div5:
    mov rax, r12
    mov rbx, 5
    mov rdx, 0
    div rbx
    cmp rdx, 0
    jz .buzz

.div3:
    mov rax, r12
    mov rbx, 3
    mov rdx, 0
    div rbx
    cmp rdx, 0
    jz .fizz

.print_counter:
    mov rdi, fmt
    mov rsi, r12
    mov rax, 0
    call printf

.inc:
    inc r12
    jmp .loop

.fizz:
    mov rdi, fizz
    mov rax, 0
    call printf
    jmp .inc

.buzz:
    mov rdi, buzz
    mov rax, 0
    call printf
    jmp .inc

.fizzbuzz:
    mov rdi, fizzbuzz
    mov rax, 0
    call printf
    jmp .inc

.final:
    mov rax, 0
    mov rsp, rbp
    pop rbp
    ret
