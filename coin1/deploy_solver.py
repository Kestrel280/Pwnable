from paramiko.client import SSHClient, AutoAddPolicy
import time
import threading

print(" --- connecting ---")
client = SSHClient()
client.set_missing_host_key_policy(AutoAddPolicy())
client.connect('pwnable.kr', port=2222, username="coin1", password="guest")

print(" --- opening sftp ---")
sftp = client.open_sftp()
sftp.put('solver.py', '/tmp/solver.py')
sftp.close()

print(" --- executing solver ---")
stdin, stdout, stderr = client.exec_command("python /tmp/solver.py", get_pty = True)

time.sleep(2)
nbytes = 0
while True:
    while (nbytes == 0):
        nbytes = len(stdout.channel.in_buffer)
    data = stdout.read(nbytes).decode('utf-8')
    print(data, end = '')
    if '***DONE***' in data:
        break

# print(" --- printing output ---")
# print(stdout.readline(), end='')

