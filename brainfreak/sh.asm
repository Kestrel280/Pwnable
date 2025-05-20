bits 64

global _start
section .text

_start:
    mov     rax, 0xb        ; execve()
    mov     ebx, 0x0804a0a0 ; pointer to "bash" string
    xor     ecx, ecx        ; argv (null)
    xor     ebx, ebx        ; envp (null)
    syscall
