.section __TEXT,__text

.globl _main

_main:
    movq $0, %rax;
    movq $4, %rbx;
loop:
    addq $5, %rax;
    subq $1, %rbx;
    cmpq $0, %rbx;
    jne loop

    movq %rax, %rdi
    movq $0x2000001, %rax
    syscall
