bits 32

global _start
section .text

_start:
    push 0x04
    pop eax             ; write, no null byte
    push 0x01
    pop ebx             ; write(fd=1)
    mov ecx, [esp+0x04] ; write(buf = argv[1])
    push 0x10
    pop edx             ; write(count = 0x10)
    int 0x80
