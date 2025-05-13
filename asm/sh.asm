bits 64

global _start
section .text

_start:
    ; debug print
    mov     rsi, okay   ; write(*buf*)
    add     rsi, 0x41414000 ;   memory map location
    add     rsi, 46         ;   stub length + 1
    mov     dl, 5           ; write(*count*)
    mov     dil, 1          ; write(*fd*)
    mov     al, 1           ; write syscall
    syscall

    mov     rdi, filename   ; open(*filename*)
    add     rdi, 0x41414000 ;   memory map location
    add     rdi, 46         ;   stub length + 1
    mov     sil, 0          ; open(*flags*)
    xor     rdx, rdx        ; open(*mode*)
    mov     al, 2           ; open syscall
    syscall                 ; 
    mov     r9b, al         ; store fd of open file

    ; debug print
    mov     rsi, okay   ; write(*buf*)
    add     rsi, 0x41414000 ;   memory map location
    add     rsi, 46         ;   stub length + 1
    mov     dl, 5           ; write(*count*)
    mov     dil, 1          ; write(*fd*)
    mov     al, 1           ; write syscall
    syscall

    mov     dil, r9b        ; read(*fd*)
    mov     dl, 255         ; read(*count*)
    mov     rsi, 0x41414500 ; read(*buf*)
    mov     al, 0           ; read syscall
    syscall
    mov     r10b, al        ; store chars read from read

    mov     dl, r10b        ; chars read from read -> input for write
    mov     rsi, 0x41414500 ; pointer to char buffer to read into

    mov     dil, 1          ; write(*fd*)
    mov     dl, 255         ; write(*count*)
    mov     rsi, 0x41414500 ; write(*buf*)
    mov     al, 1           ; write syscall
    syscall

    mov     al, 60          ; set up for exit syscall
    mov     dil, 0          ; exit code
    syscall

section .data:
    filename db "asm.c", 0
    okay db "okay", 0xa, 0xd, 0
