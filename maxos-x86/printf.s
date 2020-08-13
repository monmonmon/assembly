.section __DATA,__data
msg:
    .asciz "Hello World\n"

.section __TEXT,__text

.globl _main

_main:
    pushq %rbp
    movq %rsp, %rbp

    movq msg@GOTPCREL(%rip), %rdi
    movq $0, %rax
    callq _printf

    ; movq $0, %rax
    popq %rbp
    retq
