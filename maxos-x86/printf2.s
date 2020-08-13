.section __DATA,__data
msg:
    .asciz "value =%d, %d\n"

.section __TEXT,__text
.globl _main
_main:
    pushq %rbp
    movq %rsp, %rbp

    movq msg@GOTPCREL(%rip), %rdi
    movq $10, %rsi
    movq $20, %rdx
    movq $0, %rax
    callq _printf

    movq $0, %rdi
    callq _exit
