echo off
set asmfile=%1
nasm -o %asmfile%.o %asmfile%.asm 
python to_hex.py %asmfile%.o

