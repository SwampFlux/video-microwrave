from glslviewer import *

import math
import time

gv = GlslViewer('basics/scope.frag',{})
gv.start()

while True:
    num = math.sin(time.time()) / 2 + 0.5
    gv.setUniform('u_0', num)
