import time, math

from threading import Timer, Thread, Event

class PerpetualTimer():
    def __init__ (self,t,hFunction):
        self.t = t
        self.hFunction = hFunction
        self.thread = Timer(self.t, self.handleFunction)

    def handleFunction(self):
        self.hFunction()
        self.thread = Timer(self.t, self.handleFunction)
        self.thread.start()

    def start(self):
        self.thread.start()

    def cancel(self):
        self.thread.cancel()

def printer():
    sinTime = math.sin( time.time() ) * 0.5 + 0.5
#    for passes in range(0, 4):
    print("u_1," + "{0:.4f}".format(sinTime))

pt = PerpetualTimer(0.000001, printer)
pt.start()

