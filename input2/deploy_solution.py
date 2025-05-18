from paramiko.client import SSHClient, AutoAddPolicy
import time
import threading

print(" --- connecting ---")
client = SSHClient()
client.set_missing_host_key_policy(AutoAddPolicy())
client.connect('pwnable.kr', port=2222, username="input2", password="guest")

print(" --- opening sftp ---")
sftp = client.open_sftp()
sftp.put('solution.c', '/tmp/k280_input2/solution.c')
sftp.close()

print(" --- compiling solution ---")
stdin, stdout, stderr = client.exec_command("cd /tmp/k280_input2 && gcc -o solve solution.c && echo \"compiled\"", get_pty = True)

alldata = ""
while 'compiled' not in alldata:
    nbytes = len(stdout.channel.in_buffer)
    data = stdout.read(nbytes).decode('utf-8')
    print(data, end = '')
    alldata += data

print("--- running ---")
stdin.write("cd ~\n".encode('utf-8'))
stdin.flush()
stdin.write("/tmp/k280_input2/solve\n".encode('utf-8'))
stdin.flush()

while True:
    nbytes = len(stdout.channel.in_buffer)
    data = stdout.read(nbytes).decode('utf-8')
    print(data, end = '')
    alldata += data

print("--- done ---")

