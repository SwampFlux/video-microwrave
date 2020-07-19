#!/usr/bin/env python
"""
MicroWrave Video

Required installed binaries:
    - glslViewer
    - glslViewer Python library
One of the required hardware:
    - ABElectronics ADCPi or
    - the MicroWrave Video module
"""

from glslviewer import GlslViewer
import time
from ADCPi import ADCPi

glsl = GlslViewer('../../assets/fragment-shaders/Villarosa/leaves3.frag', {'lifecode':True})
glsl.start()
adc = ADCPi(0x68, 0x69, 14)

cvTime = [0,0,0,0,0,0,0,0]

def cvToUniforms(channel):
    cv = adc.read_voltage(channel)
    cv_uni = (5.0 - cv) / 5.0
    cv_bi = (2.5 - cv) / 2.5
    cvTime[channel-1] = cvTime[channel-1] + cv_bi
"""
    prefix = 'cv' + str(channel) + '_'
    cv_bundle = {
            prefix + 'uni': cv_uni,
            prefix + 'bi': cv_bi,
            prefix + 'time': cvTime[channel-1]
            }
""" 
    glsl.setUniform("cv%d" % channel,
            "%.1f, %.1f, %.1f" % (cv_uni, cv_bi, cvTime[channel-1])
            )

while True:
    for channel in range(8):
        cvToUniforms(channel)
    
    """    my_cv1 = adc.read_voltage(4)
    gv.setUniform('cv1_uni', (5.0 - my_cv1) / 5.0)
    gv.setUniform('cv1_bi', (2.5 - my_cv1) / 2.5)
    cv1_time = cv1_time + (2.5 - my_cv1) / 2.5
    gv.setUniform('cv1_time', cv1_time)

    my_cv2 = adc.read_voltage(2)
    gv.setUniform('cv2_uni', (5.0 - my_cv2) / 5.0)
    gv.setUniform('cv2_bi', (2.5 - my_cv2) / 2.5)
    cv2_time = cv2_time + (2.5 - my_cv2) / 2.5
    gv.setUniform('cv2_time', cv2_time)

    gv.setUniform('cv2', (5 - adc.read_voltage(2)) / 5.0)
    gv.setUniform('cv3', (5 - adc.read_voltage(3)) / 5.0)
    gv.setUniform('cv4', (5 - adc.read_voltage(4)) / 5.0)
    gv.setUniform('cv5', (5 - adc.read_voltage(5)) / 5.0)
    gv.setUniform('cv6', (5 - adc.read_voltage(6)) / 5.0)
    gv.setUniform('cv7', (5 - adc.read_voltage(7)) / 5.0)
    gv.setUniform('cv8', (5 - adc.read_voltage(8)) / 5.0)
"""

