#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Tue Nov 14 10:22:54 2017

@author: weatherill
"""

from matplotlib.widgets import Slider
from matplotlib.gridspec import GridSpec

import matplotlib.pyplot as plt
import numpy as np

from math import cos,sin,atan2,sqrt

plt.close("all")
fig = plt.figure()

gs = GridSpec(3,2,height_ratios=[1,1,0.1])


ax1 = plt.subplot(gs[0,0])
ax1.set_ylim(-2,2)
ax2 = plt.subplot(gs[1,0])
axphase = plt.subplot(gs[2,:])

axphasor = plt.subplot(gs[:2,1],polar=True)

NPOINTS = 2000
ts = np.linspace(0,4*np.pi,NPOINTS)

A1 = 1
f1 = 1

A2 = 1
f2 = 1

y1s = A1 * np.sin(2*np.pi * f1 * ts)
y2s = A2 * np.sin(2*np.pi * f2 * ts)


def draw_phasor(theta,r,**kwargs):
    dat_r = [0,r]
    dat_th = [theta,theta]
    return axphasor.plot(dat_th,dat_r,**kwargs)[0]
    


arr1 = draw_phasor(0,A1,c="red")
arr2 = draw_phasor(0,A2,c="blue")



l1 = ax1.plot(ts,y1s,c="red")[0]
l2 = ax1.plot(ts,y2s,c="blue")[0]
    
lsum = ax2.plot(ts, y1s + y2s,c="purple")[0]
arrsum = draw_phasor(0,A1+ A2,c="purple")

dasharr1 = draw_phasor(0,0,ls="dashed",c="gray")
dasharr2 = draw_phasor(0,0,ls="dashed",c="gray")


slphase = Slider(axphase,"phase",0,2*np.pi,0)

def update_phase(v):
    y2s = A2*np.sin(2*np.pi * f2 * ts + v)
    l2.set_data(ts,y2s)
    lsum.set_data(ts,y2s + y1s)
    
    arr2.set_data([v,v],[0,A2])
    
    summag = sqrt( (A1 + A2 *cos(v))**2 + (A2*sin(v))**2)
    sumth = atan2(A2 * sin(v), A1 + A2 * cos(v))
    arrsum.set_data([sumth,sumth],[0,summag])
    
    dasharr1.set_data([0,sumth],[A1,summag])
    dasharr2.set_data([v,sumth],[A2,summag])
    
    fig.canvas.draw_idle()
    

plt.tight_layout()    

slphase.on_changed(update_phase)