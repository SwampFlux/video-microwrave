from threading import Thread

class MyThread(Thread):
    def __init__(self, event):
        print('we made a thing')
    
    def getGPIO():
        return 123

    def run(self):
        print( getGPIO.wait(1) )

yum = MyThread

yum.start()


