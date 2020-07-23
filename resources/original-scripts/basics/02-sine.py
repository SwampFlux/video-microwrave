import time, math
import sys

while(True):
    sinTime = math.sin( time.time() ) * 0.5 + 0.5
    sys.stdout.write('u_1,' + '{0:.4f}'.format(sinTime) + '\n')
#    time.sleep(1)
