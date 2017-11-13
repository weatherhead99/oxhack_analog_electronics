# Oxhack Analog Electronics
-------------------
## Session 5 - Resonance and Colpitts Oscillator


---

## Recap 


## New Stuff

----


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

* I mean it - we are really entering the swamp now!


---

## MOSFETS

**M**etal **O**xide **S**emiconductor **F**ield **E**ffect **T**ransistor

* We previously used one (2n7000) in switching mode to make the boost converter
* Today we are going to use it in "linear" mode as an amplifier

$ I\_D = K \left( \left(V\_{GS} - V\_{th} \right) - {V\_{DS}^2 \over 2} \right) $

----

## MOSFET biasing

<img src="IvsV_mosfet.svg" style="background-color:white"/>

* Need to take care about the value of $V\_{DS}$ and $V\_{GS}$

* called "biasing", principle similar for BJTs and JFETs


----

## Small signal "hybrid pi"  MOSFET model

* Assuming biasing is correct (in linear region), MOSFET looks like this

<img src="mosfet_small_signal.svg" width=500 style="background-color:white"/>



---




## Inductors & Capacitors

Capacitor (stores energy in electric field):

$I = C \times {dV \over dt}$

Inductor (stores energy in magnetic field):

$V = L \times {dI \over dt} $


---


## Resonance

* Whenever a physical system can transfer energy easily between different forms (without much loss), it has natural frequencies which it easily vibrates at

* When driven at a natural frequency, resonance occurs
* [Tacoma Bridge 1940](https://www.youtube.com/watch?v=nkXl8JJBH7E)

* [coupled metronomes](https://www.youtube.com/watch?v=_bJ1gNnlsfE)

----

## Beat Frequencies

* Not everything that looks like resonance is resonance (these pendula are uncoupled)

https://www.youtube.com/watch?v=yVkdfJ9PkRQ

* The nonlinear mixing of similar (but slightly different) frequencies is called "beating",and is also very important and interesting in electronics (but not today!)


---

## Tank Resonator
* Couple a capacitance directly to an inductance
* Energy "sloshes" between electric and magnetic storage
* Often poor Q factor (because everything has resistance)

<img src="tank_resonator.svg" width=300 style="background-color:white"/>


----

$ V\_L = - V\_C $

$ i\_L = i\_C $

$ {d i \over dt} = C {d^2 v \over dt^2} $

$ {d^2 v \over dt^2} + {1 \over {LC} } v = 0 $

* If you fancy solving a differential equation, you'll find this is simple harmonic motion with frequency:

$ f = {1 \over {2\pi \sqrt{LC}}} $

----

## Demonstration

<img src="tank_resonator_demo.svg" width=300 style="background-color:white"/>

* When signal is high, system charges up through diode
* When signal is low, it is allowed to oscillate


---

## Mathematics (aside)


---



## Impedance and Frequency Analysis


---


## Barkhausen Criterion

<img src="barkhausen.svg" style="background-color:white" width=500/>

* Given amplifier $A$ and feedback $\beta$, system <font color="red">**can** </font> oscillate (it might not!) if:

$|\beta A | = 1$ <font color="red"> and </font>  $\angle \beta A = 2n\pi$

---




## Colpitts Oscillator

<img src="colpitts.svg" style="background-color:white" width=500/>

----

* Tank resonator composed of $L$, $C\_1$ and $C\_2$

* need two capacitors to get the full $2\pi$ phase shift (each gives $\pi$)

* The tank circuit naturally resonates

* The amplifier restores losses due to damping

* Pretty good linearity & stability

* Can be made to extremely high frequency (10s of GHz)

----

## Colpitts Oscillator frequency

$f = {1 \over {2\pi \sqrt{LC\_1 C\_2 \over C\_1 + C\_2  } } }$

If capacitors are the same:

$f = {1 \over {2\pi \sqrt{LC \over 2}}} $

* Q factor (bandwidth) limited by parasitic resistance

---

### Practical
<font color="red"> **Take Care Handling the MOSFET** - the gate connection is quite ESD sensitive </font>

1) Build circuit from schematic

2) Experiment with changing the trim pot

3) Look at signals on MOSFET gate and drain

---

### Useful Links

https://artofelectronics.net

[https://github.com/weatherhead99/oxhack\_analog\_electronics](https://github.com/weatherhead99/oxhack\_analog\_electronics)

http://www.electronics-tutorials.ws/

http://www.falstad.com/circuit/e-index.html

