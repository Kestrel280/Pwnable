from paramiko.client import SSHClient, AutoAddPolicy
import time

PROGRESS = True
PROGRESS_NEWLINE = False

stdout_data = []

client = SSHClient()
client.set_missing_host_key_policy(AutoAddPolicy())
print(" --- connecting ---")
client.connect('pwnable.kr', port=2222, username="coin1", password="guest")
print(" --- starting session... ---")
sh = client.invoke_shell()
time.sleep(1.5)
print(sh.recv(2048).decode('utf-8'))
print(" --- disabling echo ---")
sh.sendall("stty -echo\n".encode('utf-8'))
print(" --- issuing nc command... ---")
sh.sendall("nc 0 9007\n".encode('utf-8'))
time.sleep(1)
print(sh.recv(2048).decode('utf-8'))
print(" --- entering repl ---")

# Receive initial prompt
while not sh.recv_ready():
    pass
time.sleep(0.2)
t0 = time.time()
data = sh.recv(2048).decode('utf-8')
print(f"RECEIVED: {data}")
N, C = map(lambda x: int(x.split('=')[1]), data.split(' '))
print(f"parsed N={N}, C={C}")

t = []
i = 0
j = 0
lo = 0
hi = N
data = 'no_data'
try:
    while True:
        t = []
        t.append(time.time())
        if (lo == hi):
            nums = str(lo)
        else:
            mp = int(((lo + hi) / 2 + 0.5))
            _nums = [_ for _ in range(lo, mp)]
            nums = ' '.join([str(_) for _ in _nums])
        t.append(time.time())
        sh.sendall(f"{nums}\n".encode('utf-8'))
        t.append(time.time())
        """
        if len(_nums) > 5:
            print("\nsent {} - {} (lo: {}, hi: {}, mp: {})".format(nums.split(' ')[0], nums.split(' ')[-1], lo, hi, mp))
        else: 
            print("\nsent {} (lo: {}, hi: {}, mp: {})".format(nums, lo, hi, mp))
        """

        while not sh.recv_ready():
            pass
        time.sleep(0.06)
        data = sh.recv(128).decode('utf-8')
        t.append(time.time())
        # print(f"RECEIVED: ...{data}```")

        weight = (data.splitlines()[-1].split(' ')[-1])
        # print(f"weight: {weight}")
        if 'Correct' in data:
            print(f"\n --- challenge {i} passed ---")
            print(data)
            i += 1
            N, C = map(lambda x: int(x.split('=')[-1]), data.splitlines()[-1].split(' '))
            j = 0
            lo = 0
            hi = N
        elif weight[-1] == '9':
            # print("counterfeit coin in this set, adjusting range")
            hi = mp
        else:
            # print("counterfeit coin NOT in this set, adjusting range")
            lo = lo + 1 if lo == mp else mp
        j += 1
        t.append(time.time())

        if PROGRESS:
            print(f"\r({j}) calc numlist: {(t[1]-t[0])*1000:.1f} | send numlist: {(t[2]-t[1])*1000:.1f} | receive numlist: {(t[3]-t[2])*1000:.1f} | prep next: {(t[4]-t[3])*1000:.1f} | elapsed: {t[4] - t0:.2f}", end='\n' if PROGRESS_NEWLINE else '')
except Exception as e:
    print(f"\nfailed with exception {e}")
    print(f"data: *{data}*")
    print(f"i: {i}")


print("done")


