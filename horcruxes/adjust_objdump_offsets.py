import sys

offset = int(sys.argv[1], 16)
filename = sys.argv[2]

with open(filename, 'r') as fp:
    contents = fp.read()

for line in contents.splitlines():
    try:
        first = line.strip().split(':')[0].split(' ')[0]
        addr = int(first, 16)
        addr = addr + offset
    except (ValueError, AttributeError):
        print(line)
        continue
    print(line.replace(first, hex(addr)[2:]))

