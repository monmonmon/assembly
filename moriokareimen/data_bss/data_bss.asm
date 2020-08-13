section .data
    msg db "Takoyaki", 0

section .bss
    buff resd 5

section .text

global main

main:
    enter 0, 0
    nop

.access_data:
    lea ebx, [msg]
    mov eax, [ebx]
    inc ebx
    mov eax, [ebx]
    inc ebx
    mov eax, [ebx]
    inc ebx
    mov eax, [ebx]
    inc ebx
    mov eax, [ebx]
    inc ebx
    mov eax, [ebx]
    inc ebx
    mov eax, [ebx]
    inc ebx
    mov eax, [ebx]
    inc ebx
    xor ebx, ebx

.access_bss:
    mov eax, 100
    mov [buff], eax
    mov eax, 200
    mov [buff + 4], eax
    mov eax, 300
    mov [buff + 8], eax
    mov eax, 400
    mov [buff + 12], eax
    mov eax, 500
    mov [buff + 16], eax

    mov eax, 4
    lea ebx, [buff + eax]
    mov eax, [ebx]

.final:
    mov eax, 0
    leave
    ret
