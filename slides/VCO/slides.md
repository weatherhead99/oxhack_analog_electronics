# Oxhack Analog Electronics
-------------------
## Session 6 - Voltage Controlled Oscillator


---


## Recap 
<font color="green">
Op amps
Relaxation Oscillators

## New Stuff
VCOs
A quite complicated circuit build

---


## If you missed previous sessions

* Please ask for recap
* Please ask questions
* Please ask for help

## If you are a regular

* Encourage and help others
* Take turns building and debugging

----

## Usual Caveats Apply

* This isn't intended to explain the physics (but ask me if you're interested, I am a semiconductor physicist by training / background)

* This isn't comprehensive - good tutorials on the web, or read AoE

* This is complicated - don't worry if you don't "get it" all at once


---


## VCO

* One of the most important (and still commonly used) analog circuits

* Many ways to build

* Figures of merit: Phase noise, stability, frequency range, linear/log input

* Can be built in linear (sine/harmonic) or relaxation (square, saw, triangle) configurations


----


## VCO Applications

* Modulation circuits (as in FM radio)

* Tuning circuits (all over RF!)

* Audio synthesizers (note for music, ideally want a logarithmic frequency response, VCO we are building today has a roughly linear frequency response)


----


## Aside - Linear VCOs

* Mostly used in high frequency RF
* Use e.g. LC tank circuit and Colpitts oscillator
* The variable capacitance is provided by a varactor diode

---

## Relaxation VCO

* Based around op amp integrator + schmidt trigger

[show falstad demo](http://www.falstad.com/circuit/e-vco.html)

* Frequency~ linearly dependent on control voltage

* Frequency ~ related to:

$$ f \approx { 1 \over R C} $$

* Work it out on board (if really keen....)

---


### Practical
1) build circuit from schematic
2) observe frequency response to signal
3) Find limits on control voltage

---


### Useful Links

https://artofelectronics.net

[https://github.com/weatherhead99/oxhack\_analog\_electronics](https://github.com/weatherhead99/oxhack\_analog\_electronics)

[https://weatherhead99.github.io/oxhack\_analog\_electronics](https://weatherhead99.github.io/oxhack\_analog\_electronics)

http://www.electronics-tutorials.ws/

http://www.falstad.com/circuit/e-index.html

