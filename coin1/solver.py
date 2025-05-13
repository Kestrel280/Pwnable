from subprocess import Popen, PIPE, STDOUT
import time

PROGRESS = False
PROGRESS_NEWLINE = False

print("... solver started ...")

p = Popen(['nc', '0', '9007'], stdin=PIPE, stdout=PIPE, stderr=PIPE, text=True)
print("... nc started ...")

while 'Ready?' not in p.stdout.readline():
    pass
p.stdout.readline()

i = 0
j = 0
data = p.stdout.readline().strip()
print(f"0: data = {data}")
N, C = map(lambda x: int(x.split('=')[-1]), data.split(' '))
lo = 0
hi = N
t0 = time.time()

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
    """
    if len(_nums) > 5:  print("\nsent {} - {} (lo: {}, hi: {}, mp: {})".format(nums.split(' ')[0], nums.split(' ')[-1], lo, hi, mp))
    else:               print("\nsent {} (lo: {}, hi: {}, mp: {})".format(nums, lo, hi, mp))
    """
    p.stdin.write(f"{nums}\n")
    p.stdin.flush()
    t.append(time.time())

    data = p.stdout.readline().strip()
    t.append(time.time())
#        print(f"1: data = {data}, ", end = '')

    weight = (data.splitlines()[-1].split(' ')[-1]).strip()
#        print(f"weight: {weight}")

    if 'Congrats' in data:
        time.sleep(1)
        break
    elif 'Correct' in data:
        print(f"\n --- challenge {i} passed ---")
        print(data)
        i += 1
        data = p.stdout.readline().strip()
        if 'Congrats' in data:
            print(data)
            time.sleep(1)
            break
        N, C = map(lambda x: int(x.split('=')[-1]), data.split(' '))
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


print(p.stdout.readline())
print("***DONE***")
