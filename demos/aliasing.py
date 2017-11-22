#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Wed Nov 22 02:29:46 2017

@author: danw
"""

from matplotlib.widgets import Slider
from matplotlib.gridspec import GridSpec
import matplotlib.pyplot as plt
import numpy as np

plt.close("all")
fig = plt.figure()

gs = GridSpec(4,1,height_ratios=[10,10,1,1])

ax1 = plt.subplot(gs[0])

NPOINTS= 2000
ts = np.linspace(0,4*np.pi,NPOINTS)
f = 1
sig = np.sin(2 * np.pi  *f * ts )
ax1.plot(ts,sig,c="blue")

sampleplot = ax1.plot([],[],"o-",c="orange")[0]

axsld = plt.subplot(gs[2])
sldr = Slider(axsld,"sample_rate",0.5,4.0,2.0)
axphs = plt.subplot(gs[3])
phsld = Slider(axphs,"phase",0,2*np.pi,0)

ax2 = plt.subplot(gs[1])
ax2.set_xlim(*ax1.get_xlim())
ax2.set_ylim(-1.5,1.5)

interpln = ax2.plot([],[],"--",c="red")[0]
sampln = ax2.plot([],[],"o",c="orange")[0]

def update(v):
    sample_period = 1/( f * v)
    phi = phsld.val * f / (2*np.pi)
    sample_xs = np.arange(phi,max(ts)+phi,sample_period)
    sample_ys = np.sin(2*np.pi*f * sample_xs)
    sampleplot.set_data(sample_xs,sample_ys)
    
    yit = sinc_interp(sample_period,sample_ys,ts )
    sampln.set_data(sample_xs,sample_ys)
    interpln.set_data(ts ,yit)


def sinc_interp(T,ysamps,xinterps):
    ns = np.arange(1,len(ysamps)+1)
    yinterps = np.zeros(len(xinterps))
    for ind,t in enumerate(xinterps):
        coeffs = np.sinc( (t  - ns*T ) / T)
        yinterps[ind] = np.sum(ysamps * coeffs)
    
    return yinterps

def update_phase(v):
    update(sldr.val)

update(2.0)





sldr.on_changed(update)
phsld.on_changed(update_phase)