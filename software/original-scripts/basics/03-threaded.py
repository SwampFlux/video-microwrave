import threading, time, math

class Controller(threading.Thread):
    def __init__(self):
        threading.Thread.__init__(self)
        #init any variables here as
        #self.my_var = 123

    def run(self):
        time.sleep(3)
        sinTime = math.sin( time.time() ) * 0.5 + 0.5
        print("u_1," + "{0:.4f}".format(sinTime))

        time.sleep(3)
        sinTime = math.sin( time.time() ) * 0.5 + 0.5
        print("u_1," + "{0:.4f}".format(sinTime))

con = Controller()
con.start()
#con.join()
