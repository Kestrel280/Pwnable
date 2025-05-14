scp -P2222 horcruxes@pwnable.kr:horcruxes horcruxes
objdump -Mintel -d --no-show-raw-insn horcruxes > horcruxes.asm
python adjust_objdump_offsets.py -08040000 horcruxes.asm > horcruxes_0.asm
xxd -o 0x08041000 horcruxes > horcruxes.bin 
