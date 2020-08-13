.section __TEXT,__text

.globl _main

_main:
    pushq %rbp
    movq %rsp, %rbp
    movq $10, %rdi
    callq _exit
