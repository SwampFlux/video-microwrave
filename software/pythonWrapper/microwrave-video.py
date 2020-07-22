#!/usr/bin/env python3
"""
MicroWrave Video

Required installed binaries:
    - glslViewer

Required libraries:
    - glslViewer Python library
    - OSC

Required Hardware:
    - ABElectronics ADCPi or
    - MicroWrave Video module
"""

from glslviewer import GlslViewer
from ADCPi import ADCPi
from pythonosc.udp_client import SimpleUDPClient 


# start ADCPi
adc = ADCPi(0x68, 0x69, 14)


# start OSC
client = SimpleUDPClient('127.0.0.1', 8000)

cv_time = [0,0,0,0,0,0,0,0]

def cvToOSC(channel):
    cv = adc.read_voltage(channel)
    cv_uni = (5.0 - cv) / 5.0
    cv_bi = (2.5 - cv) / 2.5
    cv_time[channel-1] = cv_time[channel-1] + cv_bi
    client.send_message("/cv" + str(channel), [cv_uni, cv_bi, cv_time]) 
    return cv

viewer = GlslViewer('../../assets/fragment-shaders/Villarosa/leaves3.frag', {'lifecode':True})
while True:
    for channel in range(7):
        cv = cvToOSC(channel)
        if(channel == 7):
            print(cv)
            if(viewer.isRunning == False and cv > 512):
                viewer.start()
            if(viewer.isRunning == True and cv < 512):
                viewer.stop()

