echo off
set asmfile=%1
nasm -o %asmfile%.o %asmfile%.asm 
python to_hex.py %asmfile%.o
objdump -b binary -Mintel,x86-64 -m i386:x86-64 -D %asmfile%.o

