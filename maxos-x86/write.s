.section __DATA,__data
msg:
    .asciz "Hello World\n"

.section __TEXT,__text
.globl _main
_main:
    pushq %rbp
    movq %rsp, %rbp

    movq $0x2000004, %rax
    movq $1, %rdi
    movq msg@GOTPCREL(%rip), %rsi
    movq $12, %rdx
    syscall

    movq $0, %rax
    popq %rbp
    retq
