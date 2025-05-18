rdtsc:
        pushl   %ebp
        movl    %esp, %ebp
        rdtsc
        nop
        popl    %ebp
        ret
slow_memcpy:
        pushl   %ebp
        movl    %esp, %ebp
        subl    $16, %esp
        movl    $0, -4(%ebp)
        jmp     .L3
.L4:
        movl    -4(%ebp), %edx
        movl    12(%ebp), %eax
        addl    %edx, %eax
        movl    -4(%ebp), %ecx
        movl    8(%ebp), %edx
        addl    %ecx, %edx
        movzbl  (%eax), %eax
        movb    %al, (%edx)
        addl    $1, -4(%ebp)
.L3:
        movl    -4(%ebp), %eax
        cmpl    16(%ebp), %eax
        jb      .L4
        movl    8(%ebp), %eax
        leave
        ret
fast_memcpy:
        pushl   %ebp
        movl    %esp, %ebp
        subl    $16, %esp
        cmpl    $63, 16(%ebp)
        jbe     .L7
        movl    16(%ebp), %eax
        shrl    $6, %eax
        movl    %eax, -4(%ebp)
        andl    $63, 16(%ebp)
        jmp     .L8
.L9:
        movl    12(%ebp), %eax
        movl    8(%ebp), %edx
        movdqa (%eax), %xmm0
movdqa 16(%eax), %xmm1
movdqa 32(%eax), %xmm2
movdqa 48(%eax), %xmm3
movntps %xmm0, (%edx)
movntps %xmm1, 16(%edx)
movntps %xmm2, 32(%edx)
movntps %xmm3, 48(%edx)

        addl    $64, 8(%ebp)
        addl    $64, 12(%ebp)
.L8:
        movl    -4(%ebp), %eax
        leal    -1(%eax), %edx
        movl    %edx, -4(%ebp)
        testl   %eax, %eax
        jne     .L9
.L7:
        cmpl    $0, 16(%ebp)
        je      .L10
        pushl   16(%ebp)
        pushl   12(%ebp)
        pushl   8(%ebp)
        call    slow_memcpy
        addl    $12, %esp
.L10:
        movl    8(%ebp), %eax
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
.LC10:
        .string "specify the memcpy amount between %d ~ %d : "
.LC11:
        .string "%d"
.LC12:
        .string "don't mess with the experiment."
.LC13:
        .string "ok, lets run the experiment with your configuration"
.LC14:
        .string "experiment %d : memcpy with buffer size %d\n"
.LC15:
        .string "ellapsed CPU cycles for slow_memcpy : %llu\n"
.LC16:
        .string "ellapsed CPU cycles for fast_memcpy : %llu\n"
.LC17:
        .string "thanks for helping my experiment!"
.LC18:
        .string "flag : [erased here. get it from server]"
main:
        leal    4(%esp), %ecx
        andl    $-16, %esp
        pushl   -4(%ecx)
        pushl   %ebp
        movl    %esp, %ebp
        pushl   %ecx
        subl    $116, %esp
        movl    stdout, %eax
        pushl   $0
        pushl   $2
        pushl   $0
        pushl   %eax
        call    setvbuf
        addl    $16, %esp
        movl    stdin, %eax
        pushl   $0
        pushl   $1
        pushl   $0
        pushl   %eax
        call    setvbuf
        addl    $16, %esp
        subl    $12, %esp
        pushl   $.LC0
        call    puts
        addl    $16, %esp
        subl    $12, %esp
        pushl   $.LC1
        call    puts
        addl    $16, %esp
        subl    $12, %esp
        pushl   $.LC2
        call    puts
        addl    $16, %esp
        subl    $12, %esp
        pushl   $.LC3
        call    puts
        addl    $16, %esp
        subl    $12, %esp
        pushl   $.LC4
        call    puts
        addl    $16, %esp
        subl    $12, %esp
        pushl   $.LC5
        call    puts
        addl    $16, %esp
        subl    $12, %esp
        pushl   $.LC6
        call    puts
        addl    $16, %esp
        subl    $12, %esp
        pushl   $.LC2
        call    puts
        addl    $16, %esp
        subl    $12, %esp
        pushl   $.LC7
        call    puts
        addl    $16, %esp
        subl    $12, %esp
        pushl   $.LC8
        call    puts
        addl    $16, %esp
        subl    $8, %esp
        pushl   $0
        pushl   $-1
        pushl   $34
        pushl   $7
        pushl   $16384
        pushl   $0
        call    mmap
        addl    $32, %esp
        movl    %eax, -20(%ebp)
        subl    $8, %esp
        pushl   $0
        pushl   $-1
        pushl   $34
        pushl   $7
        pushl   $16384
        pushl   $0
        call    mmap
        addl    $32, %esp
        movl    %eax, -24(%ebp)
        subl    $8, %esp
        pushl   $0
        pushl   $-1
        pushl   $34
        pushl   $7
        pushl   $8192
        pushl   $0
        call    mmap
        addl    $32, %esp
        movl    %eax, -28(%ebp)
        movl    $0, -16(%ebp)
        movl    $4, -12(%ebp)
        jmp     .L13
.L16:
        movl    -12(%ebp), %eax
        subl    $1, %eax
        movl    %eax, -120(%ebp)
        fildl   -120(%ebp)
        leal    -8(%esp), %esp
        fstpl   (%esp)
        fldl    .LC9
        leal    -8(%esp), %esp
        fstpl   (%esp)
        call    pow
        addl    $16, %esp
        fnstcw  -106(%ebp)
        movzwl  -106(%ebp), %eax
        orb     $12, %ah
        movw    %ax, -108(%ebp)
        fldcw   -108(%ebp)
        fistpq  -120(%ebp)
        fldcw   -106(%ebp)
        movl    -120(%ebp), %eax
        movl    %eax, -52(%ebp)
        fildl   -12(%ebp)
        leal    -8(%esp), %esp
        fstpl   (%esp)
        fldl    .LC9
        leal    -8(%esp), %esp
        fstpl   (%esp)
        call    pow
        addl    $16, %esp
        fnstcw  -106(%ebp)
        movzwl  -106(%ebp), %eax
        orb     $12, %ah
        movw    %ax, -108(%ebp)
        fldcw   -108(%ebp)
        fistpq  -120(%ebp)
        fldcw   -106(%ebp)
        movl    -120(%ebp), %eax
        movl    %eax, -56(%ebp)
        subl    $4, %esp
        pushl   -56(%ebp)
        pushl   -52(%ebp)
        pushl   $.LC10
        call    printf
        addl    $16, %esp
        subl    $8, %esp
        leal    -60(%ebp), %eax
        pushl   %eax
        pushl   $.LC11
        call    __isoc99_scanf
        addl    $16, %esp
        movl    -60(%ebp), %eax
        cmpl    -52(%ebp), %eax
        jb      .L14
        movl    -60(%ebp), %eax
        cmpl    %eax, -56(%ebp)
        jnb     .L15
.L14:
        subl    $12, %esp
        pushl   $.LC12
        call    puts
        addl    $16, %esp
        subl    $12, %esp
        pushl   $0
        call    exit
.L15:
        movl    -16(%ebp), %eax
        leal    1(%eax), %edx
        movl    %edx, -16(%ebp)
        movl    -60(%ebp), %edx
        movl    %edx, -100(%ebp,%eax,4)
        addl    $1, -12(%ebp)
.L13:
        cmpl    $13, -12(%ebp)
        jle     .L16
        subl    $12, %esp
        pushl   $1
        call    sleep
        addl    $16, %esp
        subl    $12, %esp
        pushl   $.LC13
        call    puts
        addl    $16, %esp
        subl    $12, %esp
        pushl   $1
        call    sleep
        addl    $16, %esp
        movl    $0, -16(%ebp)
        jmp     .L17
.L18:
        movl    -16(%ebp), %eax
        movl    -100(%ebp,%eax,4), %eax
        movl    %eax, -60(%ebp)
        movl    -60(%ebp), %eax
        movl    -16(%ebp), %edx
        addl    $1, %edx
        subl    $4, %esp
        pushl   %eax
        pushl   %edx
        pushl   $.LC14
        call    printf
        addl    $16, %esp
        movl    -60(%ebp), %eax
        subl    $12, %esp
        pushl   %eax
        call    malloc
        addl    $16, %esp
        movl    %eax, -32(%ebp)
        subl    $4, %esp
        pushl   $16384
        pushl   -24(%ebp)
        pushl   -20(%ebp)
        call    memcpy
        addl    $16, %esp
        call    rdtsc
        movl    %eax, -40(%ebp)
        movl    %edx, -36(%ebp)
        movl    -60(%ebp), %eax
        subl    $4, %esp
        pushl   %eax
        pushl   -28(%ebp)
        pushl   -32(%ebp)
        call    slow_memcpy
        addl    $16, %esp
        call    rdtsc
        movl    %eax, -48(%ebp)
        movl    %edx, -44(%ebp)
        movl    -48(%ebp), %eax
        movl    -44(%ebp), %edx
        subl    -40(%ebp), %eax
        sbbl    -36(%ebp), %edx
        subl    $4, %esp
        pushl   %edx
        pushl   %eax
        pushl   $.LC15
        call    printf
        addl    $16, %esp
        subl    $4, %esp
        pushl   $16384
        pushl   -24(%ebp)
        pushl   -20(%ebp)
        call    memcpy
        addl    $16, %esp
        call    rdtsc
        movl    %eax, -40(%ebp)
        movl    %edx, -36(%ebp)
        movl    -60(%ebp), %eax
        subl    $4, %esp
        pushl   %eax
        pushl   -28(%ebp)
        pushl   -32(%ebp)
        call    fast_memcpy
        addl    $16, %esp
        call    rdtsc
        movl    %eax, -48(%ebp)
        movl    %edx, -44(%ebp)
        movl    -48(%ebp), %eax
        movl    -44(%ebp), %edx
        subl    -40(%ebp), %eax
        sbbl    -36(%ebp), %edx
        subl    $4, %esp
        pushl   %edx
        pushl   %eax
        pushl   $.LC16
        call    printf
        addl    $16, %esp
        subl    $12, %esp
        pushl   $10
        call    putchar
        addl    $16, %esp
        addl    $1, -16(%ebp)
.L17:
        cmpl    $9, -16(%ebp)
        jle     .L18
        subl    $12, %esp
        pushl   $.LC17
        call    puts
        addl    $16, %esp
        subl    $12, %esp
        pushl   $.LC18
        call    puts
        addl    $16, %esp
        movl    $0, %eax
        movl    -4(%ebp), %ecx
        leave
        leal    -4(%ecx), %esp
        ret
.LC9:
        .long   0
        .long   1073741824