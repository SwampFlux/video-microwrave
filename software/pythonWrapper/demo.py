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

gv = GlslViewer('../../assets/fragment-shaders/Villarosa/scope.frag', {})
gv.start()
adc = ADCPi(0x68, 0x69, 12)

while True:
    gv.setUniform('u_analog1', adc.read_voltage(1) / 5.0);
    gv.setUniform('u_analog2', adc.read_voltage(2) / 5.0);

