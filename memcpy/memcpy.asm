rdtsc():
        push    ebp
        mov     ebp, esp
        rdtsc
        ud2
slow_memcpy(char*, char const*, unsigned int):
        push    ebp
        mov     ebp, esp
        sub     esp, 16
        mov     DWORD PTR [ebp-4], 0
        jmp     .L3
.L4:
        mov     edx, DWORD PTR [ebp-4]
        mov     eax, DWORD PTR [ebp+12]
        add     eax, edx
        mov     ecx, DWORD PTR [ebp-4]
        mov     edx, DWORD PTR [ebp+8]
        add     edx, ecx
        movzx   eax, BYTE PTR [eax]
        mov     BYTE PTR [edx], al
        add     DWORD PTR [ebp-4], 1
.L3:
        mov     eax, DWORD PTR [ebp-4]
        cmp     eax, DWORD PTR [ebp+16]
        jb      .L4
        mov     eax, DWORD PTR [ebp+8]
        leave
        ret
fast_memcpy(char*, char const*, unsigned int):
        push    ebp
        mov     ebp, esp
        sub     esp, 16
        cmp     DWORD PTR [ebp+16], 63
        jbe     .L7
        mov     eax, DWORD PTR [ebp+16]
        shr     eax, 6
        mov     DWORD PTR [ebp-4], eax
        and     DWORD PTR [ebp+16], 63
        jmp     .L8
.L9:
        mov     eax, DWORD PTR [ebp+12]
        mov     edx, DWORD PTR [ebp+8]
        movdqa (eax), %xmm0
movdqa 16(eax), %xmm1
movdqa 32(eax), %xmm2
movdqa 48(eax), %xmm3
movntps %xmm0, (edx)
movntps %xmm1, 16(edx)
movntps %xmm2, 32(edx)
movntps %xmm3, 48(edx)

        add     DWORD PTR [ebp+8], 64
        add     DWORD PTR [ebp+12], 64
.L8:
        mov     eax, DWORD PTR [ebp-4]
        lea     edx, [eax-1]
        mov     DWORD PTR [ebp-4], edx
        test    eax, eax
        setne   al
        test    al, al
        jne     .L9
.L7:
        cmp     DWORD PTR [ebp+16], 0
        je      .L10
        push    DWORD PTR [ebp+16]
        push    DWORD PTR [ebp+12]
        push    DWORD PTR [ebp+8]
        call    slow_memcpy(char*, char const*, unsigned int)
        add     esp, 12
.L10:
        mov     eax, DWORD PTR [ebp+8]
        leave
        ret
.LC0:
        .string "Hey, I have a boring assignment for CS class.. :("
.LC1:
        .string "The assignment is simple."
.LC2:
        .string "-----------------------------------------------------"
.LC3:
        .string "- What is the best implementation of memcpy?        -"
.LC4:
        .string "- 1. implement your own slow/fast version of memcpy -"
.LC5:
        .string "- 2. compare them with various size of data         -"
.LC6:
        .string "- 3. conclude your experiment and submit report     -"
.LC7:
        .string "This time, just help me out with my experiment and get flag"
.LC8:
        .string "No fancy hacking, I promise :D"
.LC9:
        .string "specify the memcpy amount between %d ~ %d : "
.LC10:
        .string "%d"
.LC11:
        .string "don't mess with the experiment."
.LC12:
        .string "ok, lets run the experiment with your configuration"
.LC13:
        .string "experiment %d : memcpy with buffer size %d\n"
.LC14:
        .string "ellapsed CPU cycles for slow_memcpy : %llu\n"
.LC15:
        .string "ellapsed CPU cycles for fast_memcpy : %llu\n"
.LC16:
        .string "thanks for helping my experiment!"
.LC17:
        .string "flag : [erased here. get it from server]"
main:
        lea     ecx, [esp+4]
        and     esp, -16
        push    DWORD PTR [ecx-4]
        push    ebp
        mov     ebp, esp
        push    ecx
        sub     esp, 116
        mov     eax, DWORD PTR stdout
        push    0
        push    2
        push    0
        push    eax
        call    setvbuf
        add     esp, 16
        mov     eax, DWORD PTR stdin
        push    0
        push    1
        push    0
        push    eax
        call    setvbuf
        add     esp, 16
        sub     esp, 12
        push    OFFSET FLAT:.LC0
        call    puts
        add     esp, 16
        sub     esp, 12
        push    OFFSET FLAT:.LC1
        call    puts
        add     esp, 16
        sub     esp, 12
        push    OFFSET FLAT:.LC2
        call    puts
        add     esp, 16
        sub     esp, 12
        push    OFFSET FLAT:.LC3
        call    puts
        add     esp, 16
        sub     esp, 12
        push    OFFSET FLAT:.LC4
        call    puts
        add     esp, 16
        sub     esp, 12
        push    OFFSET FLAT:.LC5
        call    puts
        add     esp, 16
        sub     esp, 12
        push    OFFSET FLAT:.LC6
        call    puts
        add     esp, 16
        sub     esp, 12
        push    OFFSET FLAT:.LC2
        call    puts
        add     esp, 16
        sub     esp, 12
        push    OFFSET FLAT:.LC7
        call    puts
        add     esp, 16
        sub     esp, 12
        push    OFFSET FLAT:.LC8
        call    puts
        add     esp, 16
        sub     esp, 8
        push    0
        push    -1
        push    34
        push    7
        push    16384
        push    0
        call    mmap
        add     esp, 32
        mov     DWORD PTR [ebp-20], eax
        sub     esp, 8
        push    0
        push    -1
        push    34
        push    7
        push    16384
        push    0
        call    mmap
        add     esp, 32
        mov     DWORD PTR [ebp-24], eax
        sub     esp, 8
        push    0
        push    -1
        push    34
        push    7
        push    8192
        push    0
        call    mmap
        add     esp, 32
        mov     DWORD PTR [ebp-28], eax
        mov     DWORD PTR [ebp-16], 0
        mov     DWORD PTR [ebp-12], 4
        jmp     .L13
.L16:
        mov     eax, DWORD PTR [ebp-12]
        sub     eax, 1
        sub     esp, 8
        push    eax
        push    2
        call    _ZSt3powIiiEN9__gnu_cxx11__promote_2IDTplcvNS1_IT_XsrSt12__is_integerIS2_E7__valueEE6__typeELi0EcvNS1_IT0_XsrS3_IS7_E7__valueEE6__typeELi0EEXsrS3_ISB_E7__valueEE6__typeES2_S7_
        add     esp, 16
        fnstcw  WORD PTR [ebp-106]
        movzx   eax, WORD PTR [ebp-106]
        or      ah, 12
        mov     WORD PTR [ebp-108], ax
        fldcw   WORD PTR [ebp-108]
        fistp   QWORD PTR [ebp-120]
        fldcw   WORD PTR [ebp-106]
        mov     eax, DWORD PTR [ebp-120]
        mov     DWORD PTR [ebp-52], eax
        sub     esp, 8
        push    DWORD PTR [ebp-12]
        push    2
        call    _ZSt3powIiiEN9__gnu_cxx11__promote_2IDTplcvNS1_IT_XsrSt12__is_integerIS2_E7__valueEE6__typeELi0EcvNS1_IT0_XsrS3_IS7_E7__valueEE6__typeELi0EEXsrS3_ISB_E7__valueEE6__typeES2_S7_
        add     esp, 16
        fnstcw  WORD PTR [ebp-106]
        movzx   eax, WORD PTR [ebp-106]
        or      ah, 12
        mov     WORD PTR [ebp-108], ax
        fldcw   WORD PTR [ebp-108]
        fistp   QWORD PTR [ebp-120]
        fldcw   WORD PTR [ebp-106]
        mov     eax, DWORD PTR [ebp-120]
        mov     DWORD PTR [ebp-56], eax
        sub     esp, 4
        push    DWORD PTR [ebp-56]
        push    DWORD PTR [ebp-52]
        push    OFFSET FLAT:.LC9
        call    printf
        add     esp, 16
        sub     esp, 8
        lea     eax, [ebp-60]
        push    eax
        push    OFFSET FLAT:.LC10
        call    __isoc99_scanf
        add     esp, 16
        mov     eax, DWORD PTR [ebp-60]
        cmp     eax, DWORD PTR [ebp-52]
        jb      .L14
        mov     eax, DWORD PTR [ebp-60]
        cmp     DWORD PTR [ebp-56], eax
        jnb     .L15
.L14:
        sub     esp, 12
        push    OFFSET FLAT:.LC11
        call    puts
        add     esp, 16
        sub     esp, 12
        push    0
        call    exit
.L15:
        mov     edx, DWORD PTR [ebp-60]
        mov     eax, DWORD PTR [ebp-16]
        lea     ecx, [eax+1]
        mov     DWORD PTR [ebp-16], ecx
        mov     DWORD PTR [ebp-100+eax*4], edx
        add     DWORD PTR [ebp-12], 1
.L13:
        cmp     DWORD PTR [ebp-12], 13
        jle     .L16
        sub     esp, 12
        push    1
        call    sleep
        add     esp, 16
        sub     esp, 12
        push    OFFSET FLAT:.LC12
        call    puts
        add     esp, 16
        sub     esp, 12
        push    1
        call    sleep
        add     esp, 16
        mov     DWORD PTR [ebp-16], 0
        jmp     .L17
.L18:
        mov     eax, DWORD PTR [ebp-16]
        mov     eax, DWORD PTR [ebp-100+eax*4]
        mov     DWORD PTR [ebp-60], eax
        mov     eax, DWORD PTR [ebp-60]
        mov     edx, DWORD PTR [ebp-16]
        add     edx, 1
        sub     esp, 4
        push    eax
        push    edx
        push    OFFSET FLAT:.LC13
        call    printf
        add     esp, 16
        mov     eax, DWORD PTR [ebp-60]
        sub     esp, 12
        push    eax
        call    malloc
        add     esp, 16
        mov     DWORD PTR [ebp-32], eax
        sub     esp, 4
        push    16384
        push    DWORD PTR [ebp-24]
        push    DWORD PTR [ebp-20]
        call    memcpy
        add     esp, 16
        call    rdtsc()
        mov     DWORD PTR [ebp-40], eax
        mov     DWORD PTR [ebp-36], edx
        mov     eax, DWORD PTR [ebp-60]
        sub     esp, 4
        push    eax
        push    DWORD PTR [ebp-28]
        push    DWORD PTR [ebp-32]
        call    slow_memcpy(char*, char const*, unsigned int)
        add     esp, 16
        call    rdtsc()
        mov     DWORD PTR [ebp-48], eax
        mov     DWORD PTR [ebp-44], edx
        mov     eax, DWORD PTR [ebp-48]
        mov     edx, DWORD PTR [ebp-44]
        sub     eax, DWORD PTR [ebp-40]
        sbb     edx, DWORD PTR [ebp-36]
        sub     esp, 4
        push    edx
        push    eax
        push    OFFSET FLAT:.LC14
        call    printf
        add     esp, 16
        sub     esp, 4
        push    16384
        push    DWORD PTR [ebp-24]
        push    DWORD PTR [ebp-20]
        call    memcpy
        add     esp, 16
        call    rdtsc()
        mov     DWORD PTR [ebp-40], eax
        mov     DWORD PTR [ebp-36], edx
        mov     eax, DWORD PTR [ebp-60]
        sub     esp, 4
        push    eax
        push    DWORD PTR [ebp-28]
        push    DWORD PTR [ebp-32]
        call    fast_memcpy(char*, char const*, unsigned int)
        add     esp, 16
        call    rdtsc()
        mov     DWORD PTR [ebp-48], eax
        mov     DWORD PTR [ebp-44], edx
        mov     eax, DWORD PTR [ebp-48]
        mov     edx, DWORD PTR [ebp-44]
        sub     eax, DWORD PTR [ebp-40]
        sbb     edx, DWORD PTR [ebp-36]
        sub     esp, 4
        push    edx
        push    eax
        push    OFFSET FLAT:.LC15
        call    printf
        add     esp, 16
        sub     esp, 12
        push    10
        call    putchar
        add     esp, 16
        add     DWORD PTR [ebp-16], 1
.L17:
        cmp     DWORD PTR [ebp-16], 9
        jle     .L18
        sub     esp, 12
        push    OFFSET FLAT:.LC16
        call    puts
        add     esp, 16
        sub     esp, 12
        push    OFFSET FLAT:.LC17
        call    puts
        add     esp, 16
        mov     eax, 0
        mov     ecx, DWORD PTR [ebp-4]
        leave
        lea     esp, [ecx-4]
        ret