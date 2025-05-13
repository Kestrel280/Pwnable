import sys

s = open(sys.argv[1], 'rb').read()
o = "".join([f"\\x{c:02x}" for c in s])
print(o)
