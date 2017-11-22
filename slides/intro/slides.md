# Oxhack Analog Electronics
-------
## Session 1 - Introduction

----

# Welcome / about me

----

## What this is 

* This is an introduction to the fundamentals of analog electronics (which underpins digital also)

* This can get a bit difficult, if something isn't clear please ask :-)

* The maths (at a conceptual level, no details) is left in - but please don't be put off
it's mostly there for completeness


----

## What this isn't

* This isn't about the physics (but if you're interested I'm happy to talk about it after)

* This isn't comprehensive - see links at the end for good starting points

* This won't teach you how to actually build cool projects - see Oxhack's digital sessions

----

## Costs

* Printed schematics & info sheets are provided
* All the components you need to build every circuit are provided

* The cost is about £5 for the whole course


---

## Analog Electronics

Wikipedia says:

> Analog electronics are electronic systems with a continuously variable signal, in contrast to digital electronics where signals usually take only two levels. The term "analogue" describes the proportional relationship between a signal and a voltage or current that represents the signal.

----

* Analog is also spelled "analogue"

* Difference between analog and digital

* Signals which vary continuously with time

* Signals can be represented by voltages and currents


---

## Maths crash course

( see "cheat sheets")

* Basic wave definitions (see demo)
  - frequency $ \omega = 2\pi f$ 
  - Amplitude $A$
  - phase $\phi$
  
  - time period:
	
	$ T= {1 \over f} $

----

## Important wave types

(see demo)

* Sine wave

* square wave

* triangle wave

----

## Calculus

* Analogy with car position , speed & acceleration

<img src="integ_diff.svg" width=900/>

(show demo)


----

## Calculus symbols

* Differentiation

$v = {dx \over dt}$

* Integration

$x = \int v dt $

----

## Calculus and frequency

In the top 5 most important concepts in analog electronics:

> Higher frequency signals change faster, therefore have larger derivatives!


---

## Physics crash course

* Electrons

	* Charge $Q$

	* Energy $E$

----

## Voltage and Current

* Voltage $V$ - the energy $E$ carried per unit charge $Q$ (i.e energy per electron)

$ E = V \times Q $

* Current $I$ - the amount of charge $Q$ (i.e. number of electrons) flowing per unit time $t$

$ Q = I \times t$

----

__Current:__
The amount of charge (i.e. number of electrons) passing a point per unit time.

$I = {{dQ}\over{dt}} $

__Voltage:__
The average difference in energy between electrons at two points

__Ground:__
A common (but arbitrary) voltage reference point for a circuit, chosen to have 0 energy.


----

* Electricity is the flow of electrons
* Two important properties: __charge__ and __energy__
* __Charge__ of an electron is fixed and _never changes_
* __Energy__ of an electron changes through interaction with circuit elements

---

## Basic Electronics concepts

* Conventional current is opposite to flow of electrons

* Electrons transfer energy to (and from) circuit components

----

### Kirchoff's Laws 1 (KCL)

1) Current at a node adds up to 0 (electrons can't be created or destroyed)

<img src="kirchoff1.svg" width=250 style="background-color:white" />



----

### Kirchoff's Laws 2 (KVL)

2) Voltage around a loop adds up to 0 (energy change must all be accounted for)

<img src="kirchoff2.svg" width=250 style="background-color:white"/>


----

### Resistors


<img src="resistor.svg" width=250 style="background-color:white"/>

Dissipate energy as heat

$V=I\times R$

Useful for converting current into voltage (or vice versa), defining ratios of voltage drops, limiting current into other devices


----


### capacitors

<img src="capacitor.svg" width=200 style="background-color:white"/>

Store energy temporarily by separating charge in an electric field.

$Q=c \times V$

$\Rightarrow I = c \times {dV \over dt}$

Respond to the _rate of change_ of voltage, not the voltage itself
Useful for filtering, smoothing, short term storage of a voltage


---

# Equipment Intro Demo

* Scope
  * probe setup
  * coupling

* Signal generator
* Power supply

----

## Breadboard

* Convenient for quick prototyping (no solder)
* Each half-row is connected together
* Ground rails are common
* Voltage rails are common

<img src="horizontal-rows.png" />

----

## Breadboard tips

* push components in fully to get good contact (but try not to bend the legs)
* use as few jumper wires as possible (tidier circuits easier to debug!)

<font color="red">
the circuit doesn't have to be laid out the same way as the schematic - all that matters is the topology of the connections!
</font>

---

## RC Filters
<img src="filters.svg" width=300 style="background-color:white" />

$ f\_c = {1 \over {2\pi RC}}$

---

## Practical
* Build low pass & high pass filters
* work out corner frequency
* observe what happens with changing frequency sine wave on input
* Observe what happens with square & triangle waves on low pass

EXTRA:
* build integrator circuit from schematic

---

## Your feedback

* Any complaints or comments let me know to improve future sessions!

* Anyone interested in a "PCB design & build" type session?
* Anyone interested in a specific project build? Any ideas?

* Anyone interested in learning some physics (as opposed to electronics) in different session?



---

### Useful Links

https://artofelectronics.net

http://www.electronics-tutorials.ws

[Walter Lewin's MIT 8.02x lectures](https://www.youtube.com/watch?v=rtlJoXxlSFE&list=PLyQSN7X0ro2314mKyUiOILaOC2hk6Pc3j)

https://github.com/weatherhead99/oxhack\_analog\_electronics

http://www.falstad.com/circuit/e-index.html


