#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Wed Sep 13 17:30:57 2017

@author: weatherill
"""

import matplotlib.pyplot as plt
from scipy.signal import square    
import numpy as np

xs = np.linspace(0,5,2000)

plt.close("all")
plt.figure()

Y = 0

freq = 0.5

for D,c in zip([0.3,0.5,0.7],["red","green","blue"]):
    ys = square(2*np.pi * freq * xs, duty=D)
    plt.plot(xs,ys+Y,c=c,label=str(D))
    Y+=2.5
    
plt.legend(title="D")

plt.annotate("",xy=(2*freq,1.2),xytext=(4*freq,1.2),
             arrowprops = {"arrowstyle": "<->"})


plt.annotate("",xy=(4*freq,1.2),xytext=(6*freq,1.2),
             arrowprops = {"arrowstyle": "<->"})


plt.text(2*freq+freq/2.,0.8,"$T_{OFF}$")
plt.text(4*freq+freq/2.,1.3,"$T_{ON}$")

plt.xlabel("time")
plt.yticks([])

plt.savefig("duty_cycle.svg")