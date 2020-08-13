.section __DATA,__data
inform: .asciz "%d%d"
num1: .long 0
num2: .long 0
verify: .asciz "num1=%d, num2=%d\n"
answer: .asciz "answer=%d\n"

.section __TEXT,__text
.globl _main
_main:
    pushq %rbp
    movq %rsp, %rbp

# scanf
    movq inform@GOTPCREL(%rip), %rdi
    movq num1@GOTPCREL(%rip), %rsi
    movq num2@GOTPCREL(%rip), %rdx
    movq $0, %rax
    callq _scanf

# printf
    movq verify@GOTPCREL(%rip), %rdi
    movq num1@GOTPCREL(%rip), %rcx
    movl (%rcx), %esi
    movq num2@GOTPCREL(%rip), %rcx
    movl (%rcx), %edx
    movq $0, %rax
    callq _printf

# # num1 + num2
#     addq %rdx, %rsi
#
# # printf
#     movq answer@GOTPCREL(%rip), %rdi
#     movq $0, %rax
#     callq _printf

    movq answer@GOTPCREL(%rip), %rdi
    movq num1@GOTPCREL(%rip), %rcx
    movl (%rcx), %esi
    movq num2@GOTPCREL(%rip), %rcx
    addl (%rcx), %esi
    movq $0, %rax
    callq _printf

    movq $0, %rdi
    callq _exit
