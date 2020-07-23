import time, math
from threading import Thread

class Controller(Thread):
    def __init__(self):
        Thread.__init__(self)
        #init any variables here as
        self.shutdown = False

    def run(self):
        while not self.shutdown:
            sinTime = math.sin( time.time() ) * 0.5 + 0.5
            print("u_1," + "{0:.4f}".format(sinTime))
            time.sleep(1)

con = Controller()

def main():
    try:
        con.start()
        while True:
            pass
    except KeyboardInterrupt:
        con.shutdown = True
        con.join()

main()

