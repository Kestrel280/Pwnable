REM echo off
set asmfile=%1
nasm -f win64 -gcv8 -o %asmfile%.o %asmfile%.asm 
link %asmfile%.o /subsystem:console /out:%asmfile%.exe kernel32.lib legacy_stdio_definitions.lib msvcrt.lib
