.section __DATA,__data
inform:
    .asciz "%d"
num:
    .long 0
value:
    .asciz "value =%d\n"

.section __TEXT,__text
.globl _main
_main:
    pushq %rbp
    movq %rsp, %rbp

    movq inform@GOTPCREL(%rip), %rdi
    movq num@GOTPCREL(%rip), %rsi
    callq _scanf

    movq value@GOTPCREL(%rip), %rdi
    movq num@GOTPCREL(%rip), %rcx
    movl (%rcx), %esi
    movq $0, %rax
    callq _printf

    movq $0, %rdi
    callq _exit
