import time, sys, urllib, re

from subprocess import Popen, PIPE
from time import sleep

class Shader:
    process = {}
    waitTime = 500

    def __init__(self, filename, options = {}):
        self.process = Popen('glslViewer', stdin=PIPE, stdout=PIPE, stderr=PIPE, shell=False)
      #  flags = fcntl(self.process.stdout, F_GETFL) # get current self.process.stdout flags
#        getSomething(self)
        print('shader created');

    def getSomething(self):
        self.process.stdin.write('u_demo,1\n')
        print('u_demo,1\n')
        sleep(self.waitTime)
