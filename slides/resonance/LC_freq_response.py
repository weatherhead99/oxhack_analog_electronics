#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Tue Nov 14 23:43:02 2017

@author: danw
"""

import numpy as np
import matplotlib.pyplot as plt


xs = np.logspace(-1,1,1000)

f = lambda x : x**2 / abs(1 - x**2)

plt.close("all")
plt.plot(xs,f(xs))

plt.loglog()

plt.ylabel("Z")
plt.xlabel(" $\omega / \omega_0$")
plt.savefig("LC_tank.svg")
