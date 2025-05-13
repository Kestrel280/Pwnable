bits 64

global _start
section .text

_start:
    ; debug print
    mov     rsi, okay       ; write(*buf*)
    add     rsi, 0x41414000 ;   memory map location
    add     rsi, 46         ;   stub length + 1
    mov     rdx, 5          ; write(*count*)
    mov     rdi, 1          ; write(*fd*)
    mov     rax, 1          ; write syscall
    syscall

    mov     rdi, filename   ; open(*filename*)
    add     rdi, 0x41414000 ;   memory map location
    add     rdi, 46         ;   stub length + 1
    mov     rsi, 0          ; open(*flags*)
    xor     rdx, rdx        ; open(*mode*)
    mov     rax, 2          ; open syscall
    syscall                 ; 
    mov     r9, rax         ; store fd of open file

    ; debug print
    mov     rsi, okay       ; write(*buf*)
    add     rsi, 0x41414000 ;   memory map location
    add     rsi, 46         ;   stub length + 1
    mov     rdx, 5          ; write(*count*)
    mov     rdi, 1          ; write(*fd*)
    mov     rax, 1          ; write syscall
    syscall

    mov     rdi, r9         ; read(*fd*)
    mov     rdx, 255        ; read(*count*)
    mov     rsi, 0x41414500 ; read(*buf*)
    mov     rax, 0          ; read syscall
    syscall
    mov     r10, rax        ; store chars read from read

    mov     rdx, r10        ; chars read from read -> input for write
    mov     rsi, 0x41414500 ; pointer to char buffer to read into

    mov     rdi, 1          ; write(*fd*)
    mov     rdx, 255        ; write(*count*)
    mov     rsi, 0x41414500 ; write(*buf*)
    mov     rax, 1          ; write syscall
    syscall

    mov     rax, 60         ; set up for exit syscall
    mov     rdi, 0          ; exit code
    syscall

section .data:
    filename db "asm.c", 0
    okay db "okay", 0xa, 0xd, 0
