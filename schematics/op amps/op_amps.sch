EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:switches
LIBS:relays
LIBS:motors
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "analog electronics session 2"
Date "2017-08-14"
Rev "1"
Comp "Oxhack"
Comment1 "Dan Weatherill"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L TL081 U?
U 1 1 5991A477
P 3325 1850
F 0 "U?" H 3866 1911 70  0001 L CNN
F 1 "TL081" H 2750 1575 70  0000 L CNN
F 2 "" H 3325 1850 60  0000 C CNN
F 3 "" H 3325 1850 60  0000 C CNN
	1    3325 1850
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 5991A4C3
P 2350 1950
F 0 "R?" V 2250 1950 50  0001 C CNN
F 1 "R1" V 2350 1950 50  0000 C CNN
F 2 "" V 2280 1950 30  0000 C CNN
F 3 "" H 2350 1950 30  0000 C CNN
	1    2350 1950
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 5991A594
P 3225 2750
F 0 "R?" V 3125 2750 50  0001 C CNN
F 1 "R2" V 3225 2750 50  0000 C CNN
F 2 "" V 3155 2750 30  0000 C CNN
F 3 "" H 3225 2750 30  0000 C CNN
	1    3225 2750
	0    1    1    0   
$EndComp
$Comp
L GND #PWR?
U 1 1 5991A66E
P 2650 1800
F 0 "#PWR?" H 2650 1550 50  0001 C CNN
F 1 "GND" H 2800 1750 50  0000 C CNN
F 2 "" H 2650 1800 60  0000 C CNN
F 3 "" H 2650 1800 60  0000 C CNN
	1    2650 1800
	1    0    0    -1  
$EndComp
$Comp
L +12VA #PWR?
U 1 1 5991A77B
P 3225 1325
F 0 "#PWR?" H 3225 1175 50  0001 C CNN
F 1 "+12VA" H 3240 1498 50  0000 C CNN
F 2 "" H 3225 1325 60  0000 C CNN
F 3 "" H 3225 1325 60  0000 C CNN
	1    3225 1325
	1    0    0    -1  
$EndComp
$Comp
L -12VA #PWR?
U 1 1 5991A7A5
P 3225 2450
F 0 "#PWR?" H 3225 2300 50  0001 C CNN
F 1 "-12VA" H 3240 2623 50  0000 C CNN
F 2 "" H 3225 2450 60  0000 C CNN
F 3 "" H 3225 2450 60  0000 C CNN
	1    3225 2450
	-1   0    0    1   
$EndComp
$Comp
L TL081 U?
U 1 1 5991A833
P 8500 1825
F 0 "U?" H 9041 1886 70  0001 L CNN
F 1 "TL081" H 7925 1600 70  0000 L CNN
F 2 "" H 8500 1825 60  0000 C CNN
F 3 "" H 8500 1825 60  0000 C CNN
	1    8500 1825
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 5991AB59
P 7700 2975
F 0 "R?" H 7770 3021 50  0001 L CNN
F 1 "R1" V 7700 2925 50  0000 L CNN
F 2 "" V 7630 2975 30  0000 C CNN
F 3 "" H 7700 2975 30  0000 C CNN
	1    7700 2975
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5991AC27
P 7700 3175
F 0 "#PWR?" H 7700 2925 50  0001 C CNN
F 1 "GND" H 7705 3002 50  0000 C CNN
F 2 "" H 7700 3175 60  0000 C CNN
F 3 "" H 7700 3175 60  0000 C CNN
	1    7700 3175
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 5991AC71
P 8325 2775
F 0 "R?" V 8118 2775 50  0001 C CNN
F 1 "R2" V 8325 2775 50  0000 C CNN
F 2 "" V 8255 2775 30  0000 C CNN
F 3 "" H 8325 2775 30  0000 C CNN
	1    8325 2775
	0    1    1    0   
$EndComp
$Comp
L C C?
U 1 1 5991AD0A
P 3500 1525
F 0 "C?" H 3615 1571 50  0001 L CNN
F 1 "10nF" H 3615 1525 50  0000 L CNN
F 2 "" H 3538 1375 30  0000 C CNN
F 3 "" H 3500 1525 60  0000 C CNN
	1    3500 1525
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 5991AD79
P 3550 2250
F 0 "C?" H 3665 2296 50  0001 L CNN
F 1 "10nF" H 3665 2250 50  0000 L CNN
F 2 "" H 3588 2100 30  0000 C CNN
F 3 "" H 3550 2250 60  0000 C CNN
	1    3550 2250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5991AE1B
P 3500 1675
F 0 "#PWR?" H 3500 1425 50  0001 C CNN
F 1 "GND" H 3650 1625 50  0000 C CNN
F 2 "" H 3500 1675 60  0000 C CNN
F 3 "" H 3500 1675 60  0000 C CNN
	1    3500 1675
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5991AE80
P 3550 2100
F 0 "#PWR?" H 3550 1850 50  0001 C CNN
F 1 "GND" H 3400 2050 50  0000 C CNN
F 2 "" H 3550 2100 60  0000 C CNN
F 3 "" H 3550 2100 60  0000 C CNN
	1    3550 2100
	-1   0    0    1   
$EndComp
$Comp
L +12VA #PWR?
U 1 1 5991AFA0
P 8400 1125
F 0 "#PWR?" H 8400 975 50  0001 C CNN
F 1 "+12VA" H 8415 1298 50  0000 C CNN
F 2 "" H 8400 1125 60  0000 C CNN
F 3 "" H 8400 1125 60  0000 C CNN
	1    8400 1125
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 5991B0AB
P 8675 1525
F 0 "C?" H 8790 1571 50  0001 L CNN
F 1 "C" H 8790 1525 50  0000 L CNN
F 2 "" H 8713 1375 30  0000 C CNN
F 3 "" H 8675 1525 60  0000 C CNN
	1    8675 1525
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5991B24E
P 8675 1675
F 0 "#PWR?" H 8675 1425 50  0001 C CNN
F 1 "GND" H 8825 1625 50  0000 C CNN
F 2 "" H 8675 1675 60  0000 C CNN
F 3 "" H 8675 1675 60  0000 C CNN
	1    8675 1675
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 5991B2AA
P 8750 2200
F 0 "C?" H 8865 2246 50  0001 L CNN
F 1 "C" H 8865 2200 50  0000 L CNN
F 2 "" H 8788 2050 30  0000 C CNN
F 3 "" H 8750 2200 60  0000 C CNN
	1    8750 2200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5991B31E
P 8750 2050
F 0 "#PWR?" H 8750 1800 50  0001 C CNN
F 1 "GND" H 8600 1975 50  0000 C CNN
F 2 "" H 8750 2050 60  0000 C CNN
F 3 "" H 8750 2050 60  0000 C CNN
	1    8750 2050
	-1   0    0    1   
$EndComp
$Comp
L -12VA #PWR?
U 1 1 5991B3BA
P 8400 2500
F 0 "#PWR?" H 8400 2350 50  0001 C CNN
F 1 "-12VA" H 8225 2625 50  0000 C CNN
F 2 "" H 8400 2500 60  0000 C CNN
F 3 "" H 8400 2500 60  0000 C CNN
	1    8400 2500
	-1   0    0    1   
$EndComp
$Comp
L TL081 U?
U 1 1 5991B668
P 3275 5200
F 0 "U?" H 3816 5261 70  0001 L CNN
F 1 "TL081" H 2725 4950 70  0000 L CNN
F 2 "" H 3275 5200 60  0000 C CNN
F 3 "" H 3275 5200 60  0000 C CNN
	1    3275 5200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5991B78F
P 2500 5150
F 0 "#PWR?" H 2500 4900 50  0001 C CNN
F 1 "GND" H 2625 5125 50  0000 C CNN
F 2 "" H 2500 5150 60  0000 C CNN
F 3 "" H 2500 5150 60  0000 C CNN
	1    2500 5150
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 5991B8AC
P 1875 5175
F 0 "R?" V 1775 5175 50  0001 C CNN
F 1 "R1" V 1875 5175 50  0000 C CNN
F 2 "" V 1805 5175 30  0000 C CNN
F 3 "" H 1875 5175 30  0000 C CNN
	1    1875 5175
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 5991B911
P 1875 5525
F 0 "R?" V 1775 5525 50  0001 C CNN
F 1 "R2" V 1875 5525 50  0000 C CNN
F 2 "" V 1805 5525 30  0000 C CNN
F 3 "" H 1875 5525 30  0000 C CNN
	1    1875 5525
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 5991BA67
P 3175 6100
F 0 "R?" V 2968 6100 50  0001 C CNN
F 1 "Rf" V 3175 6100 50  0000 C CNN
F 2 "" V 3105 6100 30  0000 C CNN
F 3 "" H 3175 6100 30  0000 C CNN
	1    3175 6100
	0    1    1    0   
$EndComp
$Comp
L -12VA #PWR?
U 1 1 5991BC4C
P 3175 5875
F 0 "#PWR?" H 3175 5725 50  0001 C CNN
F 1 "-12VA" H 3350 5950 50  0000 C CNN
F 2 "" H 3175 5875 60  0000 C CNN
F 3 "" H 3175 5875 60  0000 C CNN
	1    3175 5875
	-1   0    0    1   
$EndComp
$Comp
L C C?
U 1 1 5991BD0C
P 3450 5625
F 0 "C?" H 3565 5671 50  0001 L CNN
F 1 "10nF" H 3565 5625 50  0000 L CNN
F 2 "" H 3488 5475 30  0000 C CNN
F 3 "" H 3450 5625 60  0000 C CNN
	1    3450 5625
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5991BDA7
P 3450 5475
F 0 "#PWR?" H 3450 5225 50  0001 C CNN
F 1 "GND" H 3300 5425 50  0000 C CNN
F 2 "" H 3450 5475 60  0000 C CNN
F 3 "" H 3450 5475 60  0000 C CNN
	1    3450 5475
	-1   0    0    1   
$EndComp
$Comp
L +12VA #PWR?
U 1 1 5991BE7D
P 3175 4650
F 0 "#PWR?" H 3175 4500 50  0001 C CNN
F 1 "+12VA" H 3190 4823 50  0000 C CNN
F 2 "" H 3175 4650 60  0000 C CNN
F 3 "" H 3175 4650 60  0000 C CNN
	1    3175 4650
	1    0    0    -1  
$EndComp
$Comp
L TL081 U?
U 1 1 5991BFC7
P 8900 4875
F 0 "U?" H 9441 4936 70  0001 L CNN
F 1 "TL081" H 8350 4675 70  0000 L CNN
F 2 "" H 8900 4875 60  0000 C CNN
F 3 "" H 8900 4875 60  0000 C CNN
	1    8900 4875
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 5991C0A7
P 7050 4775
F 0 "R?" V 6975 4775 50  0001 C CNN
F 1 "R1" V 7050 4775 50  0000 C CNN
F 2 "" V 6980 4775 30  0000 C CNN
F 3 "" H 7050 4775 30  0000 C CNN
	1    7050 4775
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 5991C14A
P 7300 5200
F 0 "R?" H 7230 5154 50  0001 R CNN
F 1 "R2" V 7300 5225 50  0000 R CNN
F 2 "" V 7230 5200 30  0000 C CNN
F 3 "" H 7300 5200 30  0000 C CNN
	1    7300 5200
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR?
U 1 1 5991C1FF
P 7300 5500
F 0 "#PWR?" H 7300 5250 50  0001 C CNN
F 1 "GND" H 7305 5327 50  0000 C CNN
F 2 "" H 7300 5500 60  0000 C CNN
F 3 "" H 7300 5500 60  0000 C CNN
	1    7300 5500
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 5991C745
P 8025 4975
F 0 "R?" V 7950 4975 50  0001 C CNN
F 1 "R1" V 8025 4975 50  0000 C CNN
F 2 "" V 7955 4975 30  0000 C CNN
F 3 "" H 8025 4975 30  0000 C CNN
	1    8025 4975
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 5991C82F
P 8850 5775
F 0 "R?" V 8775 5775 50  0001 C CNN
F 1 "R2" V 8850 5775 50  0000 C CNN
F 2 "" V 8780 5775 30  0000 C CNN
F 3 "" H 8850 5775 30  0000 C CNN
	1    8850 5775
	0    1    1    0   
$EndComp
$Comp
L C C?
U 1 1 5991CF28
P 9150 5325
F 0 "C?" H 9265 5371 50  0001 L CNN
F 1 "10nF" H 9265 5325 50  0000 L CNN
F 2 "" H 9188 5175 30  0000 C CNN
F 3 "" H 9150 5325 60  0000 C CNN
	1    9150 5325
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 5991D04F
P 9100 4350
F 0 "C?" H 9215 4396 50  0001 L CNN
F 1 "10nF" H 9215 4350 50  0000 L CNN
F 2 "" H 9138 4200 30  0000 C CNN
F 3 "" H 9100 4350 60  0000 C CNN
	1    9100 4350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5991D11F
P 9100 4550
F 0 "#PWR?" H 9100 4300 50  0001 C CNN
F 1 "GND" H 9105 4377 50  0000 C CNN
F 2 "" H 9100 4550 60  0000 C CNN
F 3 "" H 9100 4550 60  0000 C CNN
	1    9100 4550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5991D220
P 9150 5100
F 0 "#PWR?" H 9150 4850 50  0001 C CNN
F 1 "GND" H 9075 4975 50  0000 C CNN
F 2 "" H 9150 5100 60  0000 C CNN
F 3 "" H 9150 5100 60  0000 C CNN
	1    9150 5100
	-1   0    0    1   
$EndComp
$Comp
L -12VA #PWR?
U 1 1 5991D50F
P 8800 5550
F 0 "#PWR?" H 8800 5400 50  0001 C CNN
F 1 "-12VA" H 8950 5625 50  0000 C CNN
F 2 "" H 8800 5550 60  0000 C CNN
F 3 "" H 8800 5550 60  0000 C CNN
	1    8800 5550
	-1   0    0    1   
$EndComp
$Comp
L +12VA #PWR?
U 1 1 5991D5C7
P 8800 4200
F 0 "#PWR?" H 8800 4050 50  0001 C CNN
F 1 "+12VA" H 8815 4373 50  0000 C CNN
F 2 "" H 8800 4200 60  0000 C CNN
F 3 "" H 8800 4200 60  0000 C CNN
	1    8800 4200
	1    0    0    -1  
$EndComp
Text Notes 2850 900  0    60   ~ 12
Inverting amplifier
Text Notes 7925 800  0    60   ~ 12
non-inverting amplifier
Text Notes 2650 4200 0    60   ~ 12
summing amplifier
Text Notes 8325 3825 0    60   ~ 12
difference amplifier
$Comp
L C C?
U 1 1 5991EAA6
P 3475 4850
F 0 "C?" H 3590 4896 50  0001 L CNN
F 1 "10nF" H 3590 4850 50  0000 L CNN
F 2 "" H 3513 4700 30  0000 C CNN
F 3 "" H 3475 4850 60  0000 C CNN
	1    3475 4850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5991EAE7
P 3475 5000
F 0 "#PWR?" H 3475 4750 50  0001 C CNN
F 1 "GND" H 3625 4975 50  0000 C CNN
F 2 "" H 3475 5000 60  0000 C CNN
F 3 "" H 3475 5000 60  0000 C CNN
	1    3475 5000
	1    0    0    -1  
$EndComp
Text Label 1725 1950 0    60   ~ 0
V_IN
Text Label 4225 1850 0    60   ~ 0
V_OUT
Text Label 7275 1725 0    60   ~ 0
V_IN
Text Label 9250 1825 0    60   ~ 0
V_OUT
Text Label 1325 5175 0    60   ~ 0
V_IN1
Text Label 1325 5525 0    60   ~ 0
V_IN2
Text Label 4225 5200 0    60   ~ 0
V_OUT
Text Label 6425 4775 0    60   ~ 0
V_IN1
Text Label 7450 4975 0    60   ~ 0
V_IN2
Text Label 9700 4875 0    60   ~ 0
V_OUT
Text Notes 2625 3025 0    60   ~ 0
V_OUT =  - V_IN * (R2 / R1)\n
Text Notes 8250 3225 0    60   ~ 0
V_OUT = V_IN * (1 + (R2 / R1) )
Text Notes 1950 6725 0    60   ~ 0
V_OUT = - Rf * (V_IN1 / R1 + V_IN2 / R2)
Text Notes 7975 6125 0    60   ~ 0
V_OUT = - (R1 / R2) * (V_IN2 - V_IN1)
Wire Wire Line
	2700 2750 3075 2750
Wire Wire Line
	3975 1850 3975 2750
Wire Wire Line
	3975 2750 3375 2750
Wire Wire Line
	3625 1850 4475 1850
Wire Wire Line
	2200 1950 1725 1950
Wire Wire Line
	2650 1750 3025 1750
Wire Wire Line
	2650 1750 2650 1800
Wire Wire Line
	3225 1325 3225 1550
Wire Wire Line
	3225 2150 3225 2450
Wire Wire Line
	7700 1925 7700 2825
Wire Wire Line
	7700 1925 8200 1925
Wire Wire Line
	8475 2775 9550 2775
Wire Wire Line
	9550 2775 9550 1825
Wire Wire Line
	9550 1825 8800 1825
Wire Wire Line
	3500 1375 3225 1375
Connection ~ 3225 1375
Wire Wire Line
	3225 2400 3550 2400
Connection ~ 3225 2400
Wire Wire Line
	7275 1725 8200 1725
Wire Wire Line
	8400 1125 8400 1525
Wire Wire Line
	8400 1225 8675 1225
Wire Wire Line
	8675 1225 8675 1375
Connection ~ 8400 1225
Wire Wire Line
	8400 2125 8400 2500
Wire Wire Line
	8400 2500 8750 2500
Wire Wire Line
	8750 2500 8750 2350
Wire Wire Line
	2500 5150 2500 5100
Wire Wire Line
	2500 5100 2975 5100
Wire Wire Line
	2025 5175 2150 5175
Wire Wire Line
	2150 5175 2150 5525
Wire Wire Line
	2150 5300 2975 5300
Wire Wire Line
	2150 5525 2025 5525
Connection ~ 2150 5300
Wire Wire Line
	1325 5175 1725 5175
Wire Wire Line
	1725 5525 1325 5525
Wire Wire Line
	2550 5300 2550 6100
Wire Wire Line
	2550 6100 3025 6100
Connection ~ 2550 5300
Wire Wire Line
	3775 5200 3775 6100
Wire Wire Line
	3775 6100 3325 6100
Wire Wire Line
	3575 5200 4525 5200
Wire Wire Line
	3175 5500 3175 5875
Wire Wire Line
	3175 5775 3450 5775
Connection ~ 3175 5775
Wire Wire Line
	3175 4650 3175 4900
Wire Wire Line
	7300 5500 7300 5350
Wire Wire Line
	7200 4775 8600 4775
Wire Wire Line
	7300 4775 7300 5050
Wire Wire Line
	6900 4775 6425 4775
Connection ~ 7300 4775
Wire Wire Line
	8175 4975 8600 4975
Wire Wire Line
	8300 4975 8300 5775
Wire Wire Line
	8300 5775 8700 5775
Connection ~ 8300 4975
Wire Wire Line
	9000 5775 9975 5775
Wire Wire Line
	9975 5775 9975 4875
Wire Wire Line
	9975 4875 9200 4875
Wire Wire Line
	7875 4975 7450 4975
Wire Wire Line
	8800 4200 8800 4575
Wire Wire Line
	8800 4200 9100 4200
Wire Wire Line
	9100 4500 9100 4550
Wire Wire Line
	9150 5100 9150 5175
Wire Wire Line
	8800 5175 8800 5550
Wire Wire Line
	8800 5475 9150 5475
Connection ~ 8800 4200
Connection ~ 8800 5475
Wire Wire Line
	3175 4675 3475 4675
Wire Wire Line
	3475 4675 3475 4700
Connection ~ 3175 4675
Wire Wire Line
	7700 3125 7700 3175
Wire Wire Line
	8175 2775 7700 2775
Connection ~ 7700 2775
Connection ~ 3775 5200
Connection ~ 3975 1850
Wire Wire Line
	3025 1950 2500 1950
Wire Wire Line
	2700 2750 2700 1950
Connection ~ 2700 1950
$EndSCHEMATC