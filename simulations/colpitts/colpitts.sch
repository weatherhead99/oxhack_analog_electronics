<Qucs Schematic 0.0.18>
<Properties>
  <View=-300,-290,1195,855,1,0,0>
  <Grid=10,10,1>
  <DataSet=colpitts.dat>
  <DataDisplay=colpitts.dpl>
  <OpenDisplay=1>
  <Script=colpitts.m>
  <RunScript=0>
  <showFrame=0>
  <FrameText0=Title>
  <FrameText1=Drawn By:>
  <FrameText2=Date:>
  <FrameText3=Revision:>
</Properties>
<Symbol>
</Symbol>
<Components>
  <.DC DC1 1 670 550 0 46 0 0 "26.85" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "no" 0 "150" 0 "no" 0 "none" 0 "CroutLU" 0>
  <Vdc V1 1 190 -220 18 -26 0 1 "5 V" 1>
  <GND * 1 190 -150 0 0 0 0>
  <_MOSFET T1 1 480 160 8 -26 0 0 "nfet" 0 "2.2 V" 1 "0.17" 1 "0.0" 0 "0.6 V" 0 "0.00125" 1 "0.35" 0 "0.448" 0 "350" 0 "1e-14 A" 0 "1.0" 0 "1 um" 0 "1 um" 0 "0.0" 0 "0.1 um" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0 F" 0 "0.0 F" 0 "0.8 V" 0 "0.5" 0 "0.5" 0 "0.0" 0 "0.33" 0 "0.0 ps" 0 "0.0" 0 "0.0" 0 "1" 0 "600.0" 0 "0.0" 0 "1" 0 "1" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0 m" 0 "0.0 m" 0 "0.0" 0 "1.0" 0 "1.0" 0 "26.85" 0 "26.85" 0>
  <C C1 1 130 160 -26 17 0 0 "10 nF" 1 "" 0 "neutral" 0>
  <GND * 1 10 290 0 0 0 0>
  <C C2 1 10 60 17 -26 0 1 "10 nF" 1 "" 0 "neutral" 0>
  <L L1 1 230 70 -59 -26 0 3 "10 mH" 1 "" 0>
  <R R3 1 300 -40 -26 15 0 0 "1 kOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <GND * 1 480 400 0 0 0 0>
  <.TR TR1 1 680 690 0 77 0 0 "lin" 1 "0" 1 "5 ms" 1 "24000" 0 "Trapezoidal" 0 "2" 0 "1 ns" 0 "1e-16" 0 "150" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "26.85" 0 "1e-3" 0 "1e-6" 0 "1" 0 "CroutLU" 0 "no" 0 "yes" 0 "0" 0>
  <R R1 1 480 -170 15 -26 0 1 "560 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <R R4 1 390 60 15 -26 0 1 "20kOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <R R5 1 480 290 15 -26 0 1 "100 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
</Components>
<Wires>
  <190 -190 190 -150 "" 0 0 0 "">
  <190 -270 190 -250 "" 0 0 0 "">
  <190 -270 480 -270 "" 0 0 0 "">
  <480 -270 480 -200 "" 0 0 0 "">
  <480 -140 480 -40 "" 0 0 0 "">
  <160 160 230 160 "" 0 0 0 "">
  <480 -40 480 130 "out" 510 10 78 "">
  <10 160 100 160 "" 0 0 0 "">
  <10 160 10 290 "" 0 0 0 "">
  <10 -40 230 -40 "" 0 0 0 "">
  <10 -40 10 30 "" 0 0 0 "">
  <10 90 10 160 "" 0 0 0 "">
  <230 100 230 160 "" 0 0 0 "">
  <230 -40 230 40 "" 0 0 0 "">
  <370 160 390 160 "" 0 0 0 "">
  <370 160 370 170 "" 0 0 0 "">
  <330 -40 390 -40 "" 0 0 0 "">
  <230 -40 270 -40 "" 0 0 0 "">
  <390 -40 480 -40 "" 0 0 0 "">
  <390 -40 390 30 "" 0 0 0 "">
  <390 160 450 160 "" 0 0 0 "">
  <390 90 390 160 "" 0 0 0 "">
  <230 160 370 160 "gate" 310 90 90 "">
  <480 190 480 260 "" 0 0 0 "">
  <480 320 480 400 "" 0 0 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
</Paintings>
