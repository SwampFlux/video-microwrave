from subprocess import Popen, PIPE
from time import sleep
# from nbstreamreader import NonBlockingStreamReader as NBSR

# run the viewer as a subprocess
p = Popen(['glslViewer', 'demo.frag'], stdin = PIPE, stdout = PIPE, stderr = PIPE, shell = False)
#nbsr = NBSR(p.stdout)

while True:
    p.stdin.write('u_demo,1\n')
    time.sleep(3)
