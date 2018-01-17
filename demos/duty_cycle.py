# -*- coding: utf-8 -*-
"""
Spyder Editor

This is a temporary script file.
"""

from matplotlib.widgets import Slider
import matplotlib.pyplot as plt
from matplotlib.gridspec import GridSpec

from scipy.signal import square
import numpy as np

plt.close("all")

fig = plt.figure()

gs = GridSpec(3,1,height_ratios=[10,1,1])

axgraph = plt.subplot(gs[0])

axgraph.set_ylabel("voltage (V)")
axgraph.set_xlabel("time (s)")

f = 1 
NPOINTS = 2000
ts = np.linspace(0,4,NPOINTS)

duty = 0.5
sig = square(2 * np.pi * f * ts,duty=duty)
sigln = axgraph.plot(ts,sig)[0]


axfreq = plt.subplot(gs[1])
axduty = plt.subplot(gs[2])
freqsld = Slider(axfreq,"frequency (Hz)",1,10,1.0)
dutysld = Slider(axduty,"duty cycle",0,1,0.5)


def update_freq(v):
    global f
    f = v
    newsig = square(2 * np.pi * f * ts,duty )
    sigln.set_data(ts,newsig)

def update_duty(v):
    global duty
    duty = v
    newsig = square(2*np.pi * f * ts, duty)
    sigln.set_data(ts,newsig)

freqsld.on_changed(update_freq)
dutysld.on_changed(update_duty)    

plt.tight_layout()
plt.show(block=True)