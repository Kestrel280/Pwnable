from paramiko.client import SSHClient, AutoAddPolicy
import re
import time
import threading

ansi_escape_8bit = re.compile(br'(?:\x1B[@-Z\\-_]|[\x80-\x9A\x9C-\x9F]|(?:\x1B\[|\x9B)[0-?]*[ -/]*[@-~])')
def dec(b): return ansi_escape_8bit.sub(b'', b).decode('ascii', errors='ignore')

alldata = ""

print(" --- connecting ---")
client = SSHClient()
client.set_missing_host_key_policy(AutoAddPolicy())
client.connect('pwnable.kr', port=2222, username="input2", password="guest")

print(" --- opening sftp ---")
sftp = client.open_sftp()
sftp.put('solution.c', '/tmp/k280_input2/solution.c')
sftp.close()

print(" --- compiling solution ---")
channel = client.invoke_shell()
stdin = channel.makefile('wb')
stdout = channel.makefile('rb')
stdin.write("cd /tmp/k280_input2 && cp -s ~/flag flag && echo -e \"copied symlink to flag\\n\" && gcc -o solve solution.c && echo -e \"compiled\\n\"".encode('utf-8'))
stdin.flush()

while 'compiled' not in alldata:
    nbytes = len(stdout.channel.in_buffer)
    if (nbytes > 0):
        data = dec(stdout.read(nbytes))
        print(data, end = '')
        alldata += data

"""print(" --- creating x0a file ---")
time.sleep(0.3)
nbytes = len(stdout.channel.in_buffer)
data = dec(stdout.read(nbytes))
alldata += data
print(data, end = '')
time.sleep(0.3)
stdin.write("\necho -n -e \"\\x00\\x00\\x00\\x00\" > '\\x0a'\n")
stdin.flush()
time.sleep(0.3)
stdin.write("echo -e \"created x0a file with 4 null bytes\\n\"\n")
stdin.flush()


while 'created' not in alldata:
    nbytes = len(stdout.channel.in_buffer)
    if (nbytes > 0):
        data = dec(stdout.read(nbytes))
        print(data, end = '')
        alldata += data
"""

print("\n\n--- running ---\n\n")
stdin.write("cd ~\n".encode('utf-8'))
stdin.flush()
stdin.write("/tmp/k280_input2/solve\n".encode('utf-8'))
stdin.flush()

while True:
    nbytes = len(stdout.channel.in_buffer)
    if (nbytes > 0):
        data = dec(stdout.read(nbytes))
        print(data, end = '')
        alldata += data
    else:
        time.sleep(0.1)

print("--- done ---")

