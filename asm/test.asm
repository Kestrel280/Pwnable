bits 64

global _start
section .text

_start:
    mov     rsi, filename       ; write(*buf*)
    add     rsi, 46             ; stub is 45 bytes long
    add     rsi, 0x41414000     ; memory mapped here
    mov     dl, 10              ; write(*count*)
    mov     al, 1               ; write syscall
    mov     dil, 1              ; write(*fd*)
    syscall

    mov     al, 60              ; set up for exit syscall
    mov     dil, 0              ; exit code
    syscall

section .data:
    filename db "helloworld", 0
