#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Tue Jan 16 13:33:19 2018

@author: weatherill
"""

from scipy.special import lambertw
from scipy.constants import k,e
from math import exp
import matplotlib.pyplot as plt
import numpy as np

Vt = lambda T : k * T / e

def diode_I(Vs, R, Is, n, T):
    k = Is * R / (n * Vt(T))
    
    w = abs(lambertw(k * exp((Vs + Is*R)/(n*Vt(T)))))
    
    I = (w / k -1) * Is
    return I


def diode_V(I,R,Vs):
    return Vs - I*R


n = 1.0
Is = 1E-12

Vss = np.linspace(0,12,1000)
R = 220
T = 298

plt.close("all")


figure,ax = plt.subplots(1,1)
ax2 = plt.twinx(ax=ax)


Ii = []
Vds = []

Rs = [100, 500, 1000, 10000]


for R in Rs:
    Vds = []
    Ii = []
    for Vs in Vss:
        I = diode_I(Vs,R,Is,n,T)
        Vd = diode_V(I,R,Vs)
        
        Ii.append(I)
        Vds.append(Vd)
        
    col = ax.plot(Vss,Vds,"-",label="%2.2e" % R )[0].get_color()
    ax2.plot(Vss,np.array(Ii)*1E3, ",")
    
    
    
ax.legend(title="R ($\Omega$)",loc="center right")
ax.set_ylabel("$V_d$ (V)")
ax.set_xlabel("$V_s$ (V)")
ax2.set_ylabel("I (mA)")
ax.set_title("$I_s = 1\\times10^{-12} A$")


Vds = np.linspace(0,1.5,1000)

ns = [1.0, 0.8, 0.5, 0.2]
fig,ax = plt.subplots(1,3,sharey=True)
ax[0].set_xlabel("$V_d$ (V)")
ax[0].set_ylabel("I (mA)")
ax[1].set_xlabel("$V_d$ (V)")
ax[1].set_ylabel("I (mA)")
ax[2].set_xlabel("$V_d$ (V)")
ax[2].set_ylabel("I (mA)")
for n in ns:        
    I = Is*(np.exp(Vds / (n * Vt(T))) -1)
    ax[0].plot(Vds,I*1E3,label="%2.2f" % n)
ax[0].set_ylim(0,100)
ax[0].set_xlim(0,0.8)
ax[0].legend(title="n")
ax[0].set_title("$I_s = 1\\times10^{-12} A , T = 298 K$")

Ts = np.array([-40,-20,0,20,40]) 
n = 1.0
for T  in Ts:
    I = Is * (np.exp(Vds / (n * Vt(T+273))) - 1)
    ax[1].plot(Vds,I*1E3,label="%2.2f" % T)
ax[1].set_ylim(0,100)
ax[1].set_xlim(0,0.8)
ax[1].legend(title="T ($^{\circ}$C)")
ax[1].set_title("$I_s = 1\\times10^{-12} A, n=1.00$")

Iss = np.logspace(-12,-6,5)
for Is in Iss:
    I = Is * (np.exp(Vds / (n * Vt(298))) - 1)
    ax[2].plot(Vds,I*1E3,label="%2.2e" % Is)

ax[2].set_ylim(0,100)
ax[2].set_xlim(0,0.8)
ax[2].legend(title="Is (A)")
ax[2].set_title("$I_s = 1\\times10^{-12} A, T=298 K$")


