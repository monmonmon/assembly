section .data
    a: dq 0.25
    b: dq 1.2
    c: dq 2.0

section .bss

section .text

global main

main:
    enter 0,0
    nop

.add:
    fld qword [a]
    fadd  st0, st0
    fst qword [a]

.sub:
    fld qword [b]
    fld qword [c]
    fsub st0, st2

.mul:
    fmul qword [c]

.div:
    fdiv qword [c]

.final:
    ffree
    mov eax, 0
    leave
    ret
