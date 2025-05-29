import array
import struct
import sys

assert len(sys.argv) > 1, "specify filename"
with open(sys.argv[1], 'r') as fp:
    s = fp.read()
    o = bytearray.fromhex(s)
    f = len(o) // 4 * 'I'           # construct format string for struct unpack
    o = struct.unpack(f, o)         # unpack bytearray into unsigned ints
    a = array.array('I', o)         # store in an array
    a.byteswap()                    # byte swap
    b = bytearray(a)

    with open(f"{sys.argv[1]}.bin", 'wb') as nfp:
        nfp.write(b)
        # nfp.write(bytearray.fromhex(s))
