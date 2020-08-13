section .text
global asm_add
asm_add:
    enter 0, 0
    mov eax, edi
    mov ebx, esi
    add eax, ebx
    leave
    ret
