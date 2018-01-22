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

---

## Power Amplifiers

- As opposed to "voltage amplifiers" ( e.g. op-amps), power amplifiers are designed to drive a signal into the output with higher power than was delivered into the input. 
- This may (or may not) also involve increasing the signal voltage

----

## Amplifier classes

- "Class" describes the general topology and features of the amplifier. 

- Broadly speaking:
  - "analog type" : classes A, B, AB, C - generally use power transistors in active mode and the "conduction angle" concept
  - "switching type": classes D, E, F, G, S, T ... - generally use power transistors in saturation mode and digital switching circuitry


----

## Class A amplifier
