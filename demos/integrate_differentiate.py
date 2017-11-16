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
from math import sin, cos, modf, copysign

def sign(x): return 1 if x >=0 else -1

class DiffTangentDraw:
    def __init__(self,ax,curveax,xs):
        self._ax =ax
        self._xs = xs
        self._curveax = curveax
        
    def update_funs(self,fun,dfun,ifun):
        self._fun = fun
        self._gradfun = dfun
        self._ifun = ifun
        self._dys = [dfun(_) for _ in self._xs]
        self._iys = [ifun(_) for _ in self._xs]
        self._ys = [fun(_) for _ in self._xs]
        
        if not hasattr(self,"_line"):
            self._line = self._ax.plot(self._xs,self._ys,c="blue")[0]
        else:
            self._line.set_data(self._xs,self._ys)
        
        plt.gcf().canvas.draw_idle()
        
    def draw_tangent(self,x,d=20):
        m = self._gradfun(x)
        y0 = self._fun(x)

        xx = [x - d, x, x + d]
        yy = [y0 + (m)*(_-x) for _ in xx]
        
        if not hasattr(self,"_gradline"):    
            self._gradline = self._ax.plot(xx,yy,c="green")[0]
        else:
            self._gradline.set_data(xx,yy)
            
    def draw_area(self,x):
        xsel = self._xs[self._xs < x]
        ysel = self._ys[:len(xsel)]
        
        if not hasattr(self,"_integarea"):
            self._integarea = self._ax.fill_between(xsel,ysel,alpha=0.2,color="red")
        else:
            self._integarea.remove()
            self._integarea = self._ax.fill_between(xsel,ysel,alpha=0.2,color="red")
##  
    def draw_curve(self,x,yvals,attrname,col):
        xsel = self._xs[self._xs < x]
        ysel = yvals[:len(xsel)]
        if not hasattr(self,attrname):
            setattr(self,attrname,self._curveax.plot(xsel,ysel,c=col)[0])
        else:
            getattr(self,attrname).set_data(xsel,ysel)
                            
    
    def move_event(self,event):
        if not event.inaxes:
            return
        x = event.xdata
        
        self.draw_tangent(x)
        self.draw_area(x)
        
        self.draw_curve(x,self._dys,"_diffline","green")
        self.draw_curve(x,self._iys,"_intline","red")
        self.draw_curve(x,self._ys,"_origline","blue")
    
def setup_sine_wave(drawobj,ax,cax):
    f = lambda x : sin(x)
    gf = lambda x : cos(x)
    ifun = lambda x : -cos(x)
    drawobj.update_funs(f,gf,ifun)
    cax.set_ylim(-2,2)
    ax.set_ylim(-2,2)

    
def setup_square_wave(drawobj,ax,cax):
    f = lambda x : 1 if modf(x / np.pi /2)[0] < 0.5 else -1    
    pm = lambda x : 1 if modf(x/np.pi)[1] %2 == 0 else -1    
    gf =  lambda x : pm(x) * 1000 if modf(x/np.pi)[0] < 0.01 else 0
    ifun = lambda x : modf(x/np.pi/2)[0] if modf(x/np.pi/2)[0] < 0.5 else modf(3-x/np.pi/2)[0]
    drawobj.update_funs(f,gf,ifun)
    cax.set_ylim(-2,2)
    ax.set_ylim(-2,2)


def setup_tri_wave(drawobj,ax,cax):
    m = lambda x : modf(x/np.pi/2)[0]
    m2 = lambda x: modf(x/np.pi)[0]
    f = lambda x : m2(x) -0.5 if m(x) < 0.5 else  (m2(-x)+0.5)
    gf = lambda x: 1 / np.pi if m(x) < 0.5 else -(1/np.pi)
    ifun = lambda x : (-0.5*m2(x) + m2(x)**2/2) if m(x) < 0.5 else (m2(-x)**2/2 + 0.5*m2(-x))
    drawobj.update_funs(f,gf,ifun)
    
    cax.set_ylim(-0.5,0.5)
    ax.set_ylim(-1,1)

if __name__ == "__main__":

    NPOINTS = 1000
    omega = 1
    ts = np.linspace(0,4*np.pi,NPOINTS)

    plt.close("all")
    fig,axs  = plt.subplots(2,1,sharex=True)
    
    rax = plt.axes([0.05,0.1,0.15,0.15])
    radios = RadioButtons(rax,["sine","square","tri"])
    
    
    ax = axs[0]
    ax.set_xlim(0,max(ts))
    ax.set_ylim(-2,2)

    axdiff = axs[1]    
    curs = Cursor(ax,horizOn=False,vertOn=True,c="orange")
    axdiff.set_ylim(-2,2)

    tang = DiffTangentDraw(ax,axdiff,ts)
#    setup_sine_wave(tang)
#    setup_square_wave(tang)
    
    
    def choose_wave(name):
        if name == "sine":
            setup_sine_wave(tang,ax,axdiff)
        elif name == "square":
            setup_square_wave(tang,ax,axdiff)
        elif name == "tri":
            setup_tri_wave(tang,ax,axdiff)
    
    setup_sine_wave(tang,ax,axdiff)
    radios.on_clicked(choose_wave)
    plt.connect("motion_notify_event",tang.move_event)

        
plt.show(block=True)