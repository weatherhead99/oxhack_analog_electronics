# Oxhack Analog Electronics
-------------
## Session 7 - Power Amplifiers

---


## Before we start

* This isn't comprehensive - if you're interested buy AoE or do online tutorials
* This isn't intended to explain the physics (though ask me if you're interested)
* <font color="red">__NEVER__ </font>build your own SMPS from scratch, this is just a concept demonstrator, IRL use pre-built chips and read the datasheet carefully
* There is a lot to take in here, don't worry if you don't understand immediately

---


## Recap

* Diodes
* BJTs 
* Power
* Efficiency

----

## Diodes

$ I = I_S \left( e^{V \over {n V\_t} } - 1 \right) $

$ V_t = {q\_e \over {k\_B T} } \approx 26 \mathrm{mV}   $ @ 298K (room temp)


- Note that the equation for diode Vf in a circuit, is not solvable with elementary functions (requires lambert W function).

- Despite this, diode forward voltage drop changes very slowly with current - diodes are often used as voltage "clamps" (show Vf demo)


----

### BJTs (biasing)

For a BJT in "active" (simplified Ebers-Moll model): 

$ I\_E = I\_S \left( e^{V\_{BE} \over V\_T } - 1\right)$

$ I\_C \approx \beta I\_B $

$ I\_E = I\_C + I\_B $


----

### For the masochists:

Full Ebers-Moll model (i.e. not just "active mode"):

$ I\_E = I\_{SS} \left(\left(e^{V\_{BE} \over V\_T}  - e^{V\_{BC} \over V\_T} \right) + {1 \over \beta} \left(e^{V\_{BE} \over V\_T}- 1 \right)   \right) $


- this is the origin of the "saturation" effect


----

## Q point

- Recall that with diodes, whilst there isn't a "true threshold", that in real world terms there is a point where the exponential current increase for small voltage increase becomes "infinite". This is called the "threshold", and is ~0.7V in silicon devices (that is just a rule of thumb - varies with temperature and other things).

- To operate a BJT (or MOSFET for that matter) as an amplifier, must "bias" the base (or gate) such that it is above this level. This is called the Q-point


----

## BJT biasing

- From the Ebers-Moll equation, BJT looks like a voltage controlled device.

- Remember though, that it sinks current through the base to the emitter, just like a diode (it _is_ a diode actually). So, just like any other diode, you must have resistance from the supply to the base, otherwise the BJT will fry itself.


----

## One more point about transistor bias

- A silicon BJT doesn't have a "real" threshold, but does have the same threshold behaviour as a silicon diode, so you can almost always start by assuming the threshold is ~0.7V.

- A MOSFET really _does_ have a threshold, and it can be tuned by device construction from as low as ~0.05V to ~200V. So MOSFETS require careful consideration in biasing.


### Power

$ P = V \times I $

$ P = {E \over Q} \times {Q \over t} = {E \over t} $

The rate of energy use by a load


----

### Efficiency 

Recall, for a  power _supply_ :

$ P\_{out} = \eta P\_{in} $

$ \eta \leq 1$ 

Unlike the power supply, "efficiency" today basically means "how much current does the amplifier use when it's not doing anything?"

Amount of current flowing with no signal input is called "quiescent current"

---

## Power Amplifiers

- As opposed to "voltage amplifiers" ( e.g. op-amps), power amplifiers are designed to drive a signal into the output with higher power than was delivered into the input. 
- This may (or may not) also involve increasing the signal voltage

----

#### Aside - MOSFET vs BJT for amplifiers
Pros for BJT:
	* Higher gain
	* bigger linear/active region
	* higher current capacity for same size device
	* gain doesn't depend on input voltage
	
Pros for MOSFET:
	* super high input impedance
	* better power consumption for same gain
	* better matching

On the whole, I'd recommend a BJT design for your first homebrew power amp. 

----


## Amplifier classes

- "Class" describes the general topology and features of the amplifier. 

- Broadly speaking:
  - "analog type" : classes A, B, AB, C - generally use power transistors in active mode and the "conduction angle" concept
  - "switching type": classes D, E, F, G, S, T ... - generally use power transistors in saturation mode and digital switching circuitry


----


## Class A amplifier

<img src="class_A.svg" width=550 style="background-color:white">


----


## Class A amplifier

- One transistor, which amplifies the whole signal.
- Must always sit at its bias point, therefore always consumes power even when no signal present
- As good as it gets in terms of linearity and distortion


----


## Class B amplifier

<img src="class_B.svg" width=550 style="background-color:white">


----

## Class B amplifier

- complementary pair of transistors
- the NPN only conducts on the "top half" of signals, the PNP only on the "bottom half" 
- theoretically no quiescent power consumption
- Suffers greatly from so-called "crossover distortion" due to the transistors having a threshold

----

## Class AB amplifier 

<img src="class_AB.svg" width=500 style="background-color:white">


----

## Class AB amplifier

- Compromise between class A  and class B
- Transistors are biased "just above" the threshold, so during crossover, they both conduct. 
- Diodes act as voltage sources / clamps
- Needs careful adjustment to achieve optimum efficiency
- Ideally, needs carefully matched transistors and diodes (we don't have those today!)


---

## Other considerations

- In practical amplifiers, we also need to think about distortion and working range.
- Today, we will mitigate both of these issues using feedback and an op amp
- (Discussion of the circuit to build and how it works)


---

### Practical

1) Measure Vt of your transistors and Vf of your diodes

2) Build circuit

3) setup biasing

5) play some sounds through loudspeaker & piezo buzzers

6) explore what happens when changing the amplifier feedback point, or removing feedback altogether


---

### options for next session:

 - parametric EQ & filtering?
 
 - PLLs, clocking, frequency multiplying?
 
 - home brew ADC? 
 
 - practical electronics? (e.g. reading datasheets, laying out PCBs etc)
 

---


### Links:

https://artofelectronics.net

[https://github.com/weatherhead99/oxhack\_analog\_electronics](https://github.com/weatherhead99/oxhack\_analog\_electronics)

http://www.electronics-tutorials.ws/

[https://weatherhead99.github.io/oxhack_analog_electronics]
