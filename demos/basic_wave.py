#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Thu Nov 16 03:15:38 2017

@author: danw
"""

import matplotlib.pyplot as plt
from matplotlib.widgets import Slider
from matplotlib.gridspec import GridSpec
import numpy as np

gs = GridSpec(5,1,height_ratios=[8,8,1,1,1])

fig = plt.figure()
NPOINTS =1000
ts = np.linspace(0,4*np.pi,NPOINTS)

plt.close("all")

class SineWave:
    def __init__(self,xs,ax):
        self._A = 1
        self._omega = 1
        self._phi = 0
        self._xs = xs
        self._ax = ax
        self.update()
        
    def update(self):
        self._ys = self._A * np.sin(self._omega * self._xs + self._phi)
        if not hasattr(self,"_line"):
            self._line = self._ax.plot(self._xs,self._ys)[0]
        else:
            self._line.set_data(self._xs,self._ys)
        update_line2(self)
        
    def set_amplitude(self,v):
        self._A = v
        self.update()
        
    def set_phase(self,v):
        self._phi = v
        self.update()
    
    def set_freq(self,v):
        self._omega = v
        self.update()
        
fig = plt.figure()
ax = plt.subplot(gs[0])
ax.set_ylim(-2,2)

ax2 = plt.subplot(gs[1])
ax2.set_ylim(-4,4)

lin2 = ax2.plot(ts,np.sin(ts),c="red")[0]

def update_line2(obj):
    lin2.set_data(ts,np.sin(ts) + obj._ys)


sw = SineWave(ts,ax)
sw_ref = ax.plot(ts,np.sin(ts),ls="--",c="gray")

fax = plt.subplot(gs[2])
fsld = Slider(fax,"omega",0.1,5,1.0)
fsld.on_changed(sw.set_freq)

ampax = plt.subplot(gs[3])
ampsld = Slider(ampax,"amplitude",0.5,2,1.0)
ampsld.on_changed(sw.set_amplitude)

phaseax = plt.subplot(gs[4])
phasesld = Slider(phaseax,"phase",0,2*np.pi,0)
phasesld.on_changed(sw.set_phase)

plt.show(block=True)



