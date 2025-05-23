bits 64

global _start
section .text

_start:
    mov     rdi, 0x6032a0       ; arg0 (filename) -- stored in buf[0]
    mov     rsi, 0x6032b0       ; arg1 (argv)
    mov     rdx, 0x6032b0       ; arg2 (envp)
    syscall

