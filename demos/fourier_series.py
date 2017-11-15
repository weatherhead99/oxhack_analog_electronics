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

gs = GridSpec(4,1,height_ratios=[4,1,4,1])

fig = plt.figure()

NPOINTS = 2000

plt.close("all")

ts = np.linspace(0,4*np.pi,NPOINTS)

def sq_wave_fourier_series(N,omega=1):
    xs = np.zeros(len(ts))
    for i in range(N):
        n = 2*i+1
        xs += (1/n) * np.sin(n * omega * ts)
    return 4/ np.pi * xs

def tri_wave_fourier_series(N,omega=1):
    xs = np.zeros(len(ts))
    for i in range(N):
        n = 2*i+1
        xs += (1 / n**2) * (-1)**( (n-1)/2) * np.sin(n * omega* ts)
    return 8 / np.pi**2 * xs

ys = sq_wave_fourier_series(0)

ax = plt.subplot(gs[0])
ax.set_ylim(-2,2)
ax2 = plt.subplot(gs[2])
ax2.set_ylim(-2,2)

axsl = plt.subplot(gs[1])
axsl2 = plt.subplot(gs[3])

ylin = ax.plot(ts,ys)[0]
ylin2= ax2.plot(ts,tri_wave_fourier_series(0))[0]

def plot_fseries(fun,line,v):
    N = int(round(v))
    ys = fun(N)
    line.set_data(ts,ys)
    fig.canvas_draw_idle()

sq_sld = Slider(axsl,"terms",0,20,0)
tri_sld = Slider(axsl2,"terms",0,20,0)


sq_sld.on_changed(lambda v : plot_fseries(sq_wave_fourier_series,ylin,v))
tri_sld.on_changed(lambda v: plot_fseries(tri_wave_fourier_series,ylin2,v))

plt.tight_layout()

plt.show(block=True)