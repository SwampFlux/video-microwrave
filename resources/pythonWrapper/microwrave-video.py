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
import sys

# start ADCPi
adc = ADCPi(0x68, 0x69, 14)


# start OSC
client = SimpleUDPClient('127.0.0.1', 8000)

cv_time = [0,0,0,0,0,0,0,0]

keepAlive = adc.read_voltage(7) < 2.5

def cvToOSC(channel):
    cv = adc.read_voltage(channel)
    cv_uni = (5.0 - cv) / 5.0
    cv_bi = (2.5 - cv) / 2.5
    cv_time[channel-1] = cv_time[channel-1] + cv_bi
    #client.send_message("/cv" + str(channel), [cv_uni, cv_bi, cv_time[channel-1]]) 
    client.send_message("/cv" + str(channel), cv_time[channel-1]) 
    keepAlive = channel==7 and cv < 2.5

#viewer = GlslViewer('../../assets/fragment-shaders/melansuika.frag', {'livecode':True, 'osc_port':8000})
viewer = GlslViewer('../../assets/fragment-shaders/melansuika.frag', {'osc_port':8000, 'livecode':True})

if keepAlive:
    viewer.start()
    while keepAlive:
        for channel in range(8):
            cv = cvToOSC(channel+1)

viewer.stop()
sys.exit()

