nasm -o $1.o $1.asm 
python to_hex.py $1.o
# objdump -b binary -Mintel,x86-64 -m i386:x86-64 -D $1.o

