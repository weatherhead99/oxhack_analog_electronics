#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Thu Nov 16 00:52:12 2017

@author: danw
"""

import matplotlib.pyplot as plt
from matplotlib.widgets import Slider, RadioButtons, Cursor
from matplotlib.gridspec import GridSpec
import numpy as np
from math import sin, cos

class DiffTangentDraw:
    def __init__(self,ax,xs,fun,gradfun,**plotkwargs):
        self._ax =ax
        self._xs = xs
        self._fun = fun
        self._gradfun = gradfun
        self._ys = [fun(_) for _ in xs]
        self._line = ax.plot(xs,self._ys,**plotkwargs)[0]
        
    def draw(self,x,d=20):
        m = self._gradfun(x)
        y0 = self._fun(x)

        xx = [x - d, x, x + d]
        yy = [y0 + (m)*(_-x) for _ in xx]
        
        if not hasattr(self,"_gradline"):    
            self._gradline = self._ax.plot(xx,yy,c="green")[0]
        else:
            self._gradline.set_data(xx,yy)
            
        xsel = self._xs[self._xs < x]
        ysel = self._ys[:len(xsel)]
        
        if not hasattr(self,"_integarea"):
            self._integarea = self._ax.fill_between(xsel,ysel,alpha=0.2,color="red")
        else:
            self._integarea.remove()
            self._integarea = self._ax.fill_between(xsel,ysel,alpha=0.2,color="red")
##        
    def move_event(self,event):
        if not event.inaxes:
            return
        x,y = event.xdata, event.ydata
        
        self.draw(x)
    
        
if __name__ == "__main__":

    NPOINTS = 1000
    omega = 1
    ts = np.linspace(0,4*np.pi,NPOINTS)
    ys = np.sin(omega * ts)

    dys = omega * np.cos(omega*ts)
    iys = -1/(omega) * np.cos(omega*ts)

    gs = GridSpec(2,1,height_ratios=[1,1])

    plt.close("all")
    fig,axs  = plt.subplots(2,1,sharex=True)
    ax = axs[0]
    ax.set_xlim(0,max(ts))
    ax.set_ylim(-2,2)

    axdiff = axs[1]

    f = lambda x : sin(x)
    gf = lambda x : cos(x)
    
    curs = Cursor(ax,horizOn=False,vertOn=True,c="orange")
    diffline = axdiff.plot([],[],c="green")[0]
    intline = axdiff.plot([],[],c="red")[0]
    origline = axdiff.plot([],[],c="blue")[0]
    axdiff.set_ylim(-2,2)

    def draw_dif(ev):
        if not ev.inaxes:
            return
        x = ev.xdata
        
        tsel= ts[ts <x]
        ysel = dys[ts < x]
        diffline.set_data(tsel,ysel)

    def draw_int(ev):
        if not ev.inaxes:
            return
        x = ev.xdata

        tsel = ts[ts < x]
        ysel = iys[ts < x]
        intline.set_data(tsel,ysel)
        
    def draw_orig(ev):
        if not ev.inaxes:
            return
        x = ev.xdata
        tsel = ts[ts < x]
        ysel = ys[ts < x]        
        origline.set_data(tsel,ysel)

    tang = DiffTangentDraw(ax,ts,f,gf)
    
    plt.connect("motion_notify_event",tang.move_event)
    plt.connect("motion_notify_event",draw_dif)
    plt.connect("motion_notify_event",draw_int)
    plt.connect("motion_notify_event",draw_orig)
        
