# use select instead of sleep

import time, select, sys

def getNum():
#    t = time.time() / 10000
    return 123

i, o, e = select.select( [getNum()], [sys.stdout], [], 1.0)

print(o)
