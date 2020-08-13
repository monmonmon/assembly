    .globl _main

message:
    .asciz "Hello World\n"

_main:
    push %ebp
    sub $8, %esp

    lea message, %eax
    mov %eax, (%esp)
    call _printf

    add $8, %esp
    pop %ebp
    xor %eax, %eax
    ret
