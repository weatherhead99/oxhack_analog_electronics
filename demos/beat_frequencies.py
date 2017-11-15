#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Tue Nov 14 22:47:06 2017

@author: danw
"""

import matplotlib.pyplot as plt
from matplotlib.widgets import Slider
from matplotlib.gridspec import GridSpec
import numpy as np

gs = GridSpec(3,1,height_ratios=[4,4,1])

fig = plt.figure()

NPOINTS = 2000

plt.close("all")

ts = np.linspace(0,4*np.pi,NPOINTS)

omega_base = 2
y1s = np.sin(2*np.pi * omega_base * ts)


plt.close("all")
fig = plt.figure()

ax1 = plt.subplot(gs[0])
ax2 = plt.subplot(gs[1])
sldax = plt.subplot(gs[2])

lin1 = ax1.plot(ts,y1s,c="red")[0]
lin2 = ax1.plot(ts,y1s,c="blue")[0]

linsum = ax2.plot(ts,2*y1s,c="purple")[0]

sldr = Slider(sldax,"frequency",0.9,1.1,1.0)


def update_freq(v):
    ys = np.sin(2*np.pi * (omega_base)*v * ts)
    lin2.set_data(ts,ys)
    linsum.set_data(ts,ys+y1s)
    fig.canvas.draw_idle()

sldr.on_changed(update_freq)


plt.show(block=True)
