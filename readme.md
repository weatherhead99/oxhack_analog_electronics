Intro to Analog Electronics
========================


[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/weatherhead99/oxhack_analog_electronics/master)

This repository contains the slides, schematics and demos which are used in the analog electronics workshops held at Oxhack. For the events, see the Oxhack [meetup page](https://www.meetup.com/Oxford-Hackspace).

Some very brief instructions for how to use these resources follows below. Also, descriptions of the sessions which have been run so far.

You can find browseable versions of the slides and schematics [here](https://weatherhead99.github.io/oxhack_analog_electronics/). These are getting put up as the second set of sessions are run, so not all of the sessions are up yet.


Resources
=========

Schematics
---------

In the schematics folder, there is a folder containing the electronic schematics for each circuit that has been built. These schematics are created using the [Kicad](http://kicad-pcb.org) EDA suite, and you will need a fairly recent version (4.0.6) to view all the schematics perfectly.


Python demos
------------

The demos folder contains simple interactive graphical programs which serve to illustrate some mathematical or physical concepts explained during the sessions. If you want to run these, you will need a python3 installation, equipped with numpy, IPython and matplotlib. Each script can then be run standalone. On GNU/Linux, your system python3 should be sufficient. On OSX and Windows, I recommend [Anaconda](https://www.anaconda.com/download). I am working to port these to jupyter notebook as well, so they can be viewed on the web.

Slides
------

Each session has a set of slides, which are found in the slides folder. The slides are written in markdown format, so you can easily view them in a text editor. If you want to see them how they were presented, you will need to install and use [reveal-md](https://github.com/webpro/reveal-md)

Simulations
-----------
Some of the sessions have simulations accompanying them. These shouldn't be treated as references, as mostly they were simply used when designing the circuits, and may not simulate properly or have mistakes. Some of them are written using [Quite Universal Circuit Simulator](http://qucs.sourceforge.net/) - which incidentally is a very good and friendly simulator for beginners. Others are either written as SPICE style netlists directly, or with a schematic from Kicad, and run using the [gnucap](http://gnucap.org) simulator.

Cheat Sheets
------------
For the first session, some "cheat sheets" were made to hand out as quick references. I had intended to do more of these but so far haven't had time. They were made (and can be viewed) in [inkscape](https://inkscape.org). 

Booklet
-------

Here be dragons. Don't look at this. Really, don't.


Session Descriptions
====================

1) Basic Intro/integrator - we talked about basic electronics concepts, charge & energy, current & voltage, Kirchoff's laws, resistors and capacitors. We then looked at basic use of test equipment and built RC low pass and high pass filters

2) op amps - we looked at operational amplifiers, the backbone of much of analog electronics, and briefly explained how to wire them up in various useful configurations. Probably the most useful session

3) Boost converter - A very simple boost converter was built, which can double the input voltage, and it was used to light an LED using a 1V power supply. Diodes and MOSFETs in switching mode 

4) Relaxation Oscillator - we introduced BJTs and comparators, and built a relaxation oscillator which can output square and triangle waves.

5) Resonance and Colpitts Oscillator - we talked about resonance, fourier analysis, the tank resonator, the MOSFET in linear region. A simple single transistor colpitts oscillator was built which generates a (fairly) low distortion sine wave.
