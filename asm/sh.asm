bits 64

global _start
section .text

_start:
    mov     al, 2           ; set up for open
    mov     sil, 0          ; RDONLY
    syscall                 ; open flag file

    mov     dil, al         ; store fd into rdi (for read/write)
    mov     al, 0           ; set up for read
    mov     rsi, 0x41414400 ; pointer to char buffer to read into
    mov     dl, 255         ; set up count arg for read
    syscall

    mov     dl, al          ; chars read from read -> input for write
    mov     al, 1           ; set up for write
    mov     dil, 1          ; set up stdout fd for write
    syscall

    mov     al, 60          ; set up for exit syscall
    mov     dil, 0          ; exit code
    syscall

section .data:
    filename db "asm.c", 0
