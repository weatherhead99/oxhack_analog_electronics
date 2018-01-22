EESchema Schematic File Version 4
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L pspice:QNPN Q?
U 1 1 5A661536
P 6325 2700
F 0 "Q?" H 6552 2746 50  0000 L CNN
F 1 "BD135" H 6552 2655 50  0000 L CNN
F 2 "" H 6325 2700 50  0001 C CNN
F 3 "" H 6325 2700 50  0001 C CNN
	1    6325 2700
	1    0    0    -1  
$EndComp
$Comp
L pspice:QPNP Q?
U 1 1 5A6615FD
P 6325 4200
F 0 "Q?" H 6552 4154 50  0000 L CNN
F 1 "BD136" H 6552 4245 50  0000 L CNN
F 2 "" H 6325 4200 50  0001 C CNN
F 3 "" H 6325 4200 50  0001 C CNN
	1    6325 4200
	1    0    0    1   
$EndComp
$Comp
L pspice:0 #GND?
U 1 1 5A6616C5
P 6475 4900
F 0 "#GND?" H 6475 4800 50  0001 C CNN
F 1 "0" H 6475 4987 50  0000 C CNN
F 2 "" H 6475 4900 50  0001 C CNN
F 3 "" H 6475 4900 50  0001 C CNN
	1    6475 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6475 4900 6475 4550
Wire Wire Line
	6475 3850 6475 3400
$Comp
L power:VDD #PWR?
U 1 1 5A661806
P 6475 2000
F 0 "#PWR?" H 6475 1850 50  0001 C CNN
F 1 "VDD" H 6492 2173 50  0000 C CNN
F 2 "" H 6475 2000 50  0001 C CNN
F 3 "" H 6475 2000 50  0001 C CNN
	1    6475 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6475 2000 6475 2350
$Comp
L pspice:DIODE D?
U 1 1 5A661B60
P 5250 3075
F 0 "D?" V 5204 3203 50  0000 L CNN
F 1 "1N4148" V 5295 3203 50  0000 L CNN
F 2 "" H 5250 3075 50  0001 C CNN
F 3 "" H 5250 3075 50  0001 C CNN
	1    5250 3075
	0    1    1    0   
$EndComp
$Comp
L pspice:DIODE D?
U 1 1 5A661BF4
P 5250 3675
F 0 "D?" V 5204 3803 50  0000 L CNN
F 1 "1N4148" V 5295 3803 50  0000 L CNN
F 2 "" H 5250 3675 50  0001 C CNN
F 3 "" H 5250 3675 50  0001 C CNN
	1    5250 3675
	0    1    1    0   
$EndComp
Wire Wire Line
	5250 3875 5250 4200
Wire Wire Line
	5250 4200 6025 4200
Wire Wire Line
	5250 3275 5250 3475
Wire Wire Line
	5250 2875 5250 2700
Wire Wire Line
	5250 2700 6025 2700
$Comp
L pspice:R R?
U 1 1 5A661DA1
P 5250 2150
F 0 "R?" H 5318 2196 50  0000 L CNN
F 1 "R" H 5318 2105 50  0000 L CNN
F 2 "" H 5250 2150 50  0001 C CNN
F 3 "" H 5250 2150 50  0001 C CNN
	1    5250 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 2400 5250 2700
Connection ~ 5250 2700
$Comp
L power:VDD #PWR?
U 1 1 5A661EB1
P 5250 1700
F 0 "#PWR?" H 5250 1550 50  0001 C CNN
F 1 "VDD" H 5267 1873 50  0000 C CNN
F 2 "" H 5250 1700 50  0001 C CNN
F 3 "" H 5250 1700 50  0001 C CNN
	1    5250 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 1700 5250 1900
$Comp
L Amplifier_Operational:TL081 U?
U 1 1 5A662225
P 3825 4200
F 0 "U?" H 4166 4246 50  0000 L CNN
F 1 "TL081" H 4166 4155 50  0000 L CNN
F 2 "" H 3875 4250 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl081.pdf" H 3975 4350 50  0001 C CNN
	1    3825 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4125 4200 5250 4200
Connection ~ 5250 4200
$Comp
L pspice:C C?
U 1 1 5A662489
P 8300 3400
F 0 "C?" V 7985 3400 50  0000 C CNN
F 1 "C" V 8076 3400 50  0000 C CNN
F 2 "" H 8300 3400 50  0001 C CNN
F 3 "" H 8300 3400 50  0001 C CNN
	1    8300 3400
	0    1    1    0   
$EndComp
$Comp
L pspice:R R?
U 1 1 5A6625E0
P 9275 4350
F 0 "R?" H 9343 4396 50  0000 L CNN
F 1 "R" H 9343 4305 50  0000 L CNN
F 2 "" H 9275 4350 50  0001 C CNN
F 3 "" H 9275 4350 50  0001 C CNN
	1    9275 4350
	1    0    0    -1  
$EndComp
$Comp
L pspice:0 #GND?
U 1 1 5A6626D4
P 9275 5175
F 0 "#GND?" H 9275 5075 50  0001 C CNN
F 1 "0" H 9275 5262 50  0000 C CNN
F 2 "" H 9275 5175 50  0001 C CNN
F 3 "" H 9275 5175 50  0001 C CNN
	1    9275 5175
	1    0    0    -1  
$EndComp
Wire Wire Line
	9275 5175 9275 4850
Wire Wire Line
	9275 4100 9275 3850
Wire Wire Line
	9275 3400 8550 3400
Wire Wire Line
	8050 3400 7750 3400
Connection ~ 6475 3400
Wire Wire Line
	6475 3400 6475 3050
$Comp
L pspice:R R?
U 1 1 5A662AF9
P 3825 5625
F 0 "R?" H 3893 5671 50  0000 L CNN
F 1 "R" H 3893 5580 50  0000 L CNN
F 2 "" H 3825 5625 50  0001 C CNN
F 3 "" H 3825 5625 50  0001 C CNN
	1    3825 5625
	0    1    1    0   
$EndComp
Wire Wire Line
	3725 4700 3725 4500
Wire Wire Line
	3725 3575 3725 3900
Wire Wire Line
	3575 5625 3075 5625
Wire Wire Line
	3075 5625 3075 4300
Wire Wire Line
	3075 4300 3525 4300
Wire Wire Line
	4075 5625 7750 5625
Wire Wire Line
	7750 5625 7750 3400
Connection ~ 7750 3400
Wire Wire Line
	7750 3400 6475 3400
$Comp
L pspice:R R?
U 1 1 5A6636C5
P 1875 2075
F 0 "R?" H 1943 2121 50  0000 L CNN
F 1 "100k" H 1943 2030 50  0000 L CNN
F 2 "" H 1875 2075 50  0001 C CNN
F 3 "" H 1875 2075 50  0001 C CNN
	1    1875 2075
	1    0    0    -1  
$EndComp
$Comp
L pspice:R R?
U 1 1 5A6637BD
P 1875 2800
F 0 "R?" H 1943 2846 50  0000 L CNN
F 1 "100k" H 1943 2755 50  0000 L CNN
F 2 "" H 1875 2800 50  0001 C CNN
F 3 "" H 1875 2800 50  0001 C CNN
	1    1875 2800
	1    0    0    -1  
$EndComp
$Comp
L pspice:0 #GND?
U 1 1 5A663897
P 1875 3225
F 0 "#GND?" H 1875 3125 50  0001 C CNN
F 1 "0" H 1875 3312 50  0000 C CNN
F 2 "" H 1875 3225 50  0001 C CNN
F 3 "" H 1875 3225 50  0001 C CNN
	1    1875 3225
	1    0    0    -1  
$EndComp
Wire Wire Line
	1875 3225 1875 3050
$Comp
L pspice:0 #GND?
U 1 1 5A66472B
P 3725 4700
F 0 "#GND?" H 3725 4600 50  0001 C CNN
F 1 "0" H 3725 4787 50  0000 C CNN
F 2 "" H 3725 4700 50  0001 C CNN
F 3 "" H 3725 4700 50  0001 C CNN
	1    3725 4700
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR?
U 1 1 5A6648A8
P 3725 3575
F 0 "#PWR?" H 3725 3425 50  0001 C CNN
F 1 "VDD" H 3742 3748 50  0000 C CNN
F 2 "" H 3725 3575 50  0001 C CNN
F 3 "" H 3725 3575 50  0001 C CNN
	1    3725 3575
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR?
U 1 1 5A6649F8
P 1875 1825
F 0 "#PWR?" H 1875 1675 50  0001 C CNN
F 1 "VDD" H 1892 1998 50  0000 C CNN
F 2 "" H 1875 1825 50  0001 C CNN
F 3 "" H 1875 1825 50  0001 C CNN
	1    1875 1825
	1    0    0    -1  
$EndComp
Wire Wire Line
	1875 2325 1875 2450
$Comp
L pspice:R R?
U 1 1 5A665595
P 2675 4300
F 0 "R?" H 2743 4346 50  0000 L CNN
F 1 "R" H 2743 4255 50  0000 L CNN
F 2 "" H 2675 4300 50  0001 C CNN
F 3 "" H 2675 4300 50  0001 C CNN
	1    2675 4300
	0    1    1    0   
$EndComp
Wire Wire Line
	2925 4300 3075 4300
Connection ~ 3075 4300
$Comp
L pspice:C C?
U 1 1 5A6659F9
P 2025 4300
F 0 "C?" V 1710 4300 50  0000 C CNN
F 1 "C" V 1801 4300 50  0000 C CNN
F 2 "" H 2025 4300 50  0001 C CNN
F 3 "" H 2025 4300 50  0001 C CNN
	1    2025 4300
	0    1    1    0   
$EndComp
Wire Wire Line
	2275 4300 2425 4300
Wire Wire Line
	1775 4300 1525 4300
Text GLabel 1525 4300 0    50   Input ~ 0
input
Wire Wire Line
	1875 2450 2625 2450
Wire Wire Line
	2625 2450 2625 4100
Wire Wire Line
	2625 4100 3525 4100
Connection ~ 1875 2450
Wire Wire Line
	1875 2450 1875 2550
$Comp
L pspice:INDUCTOR L?
U 1 1 5A666D29
P 9950 4350
F 0 "L?" V 9904 4428 50  0000 L CNN
F 1 "INDUCTOR" V 9995 4428 50  0000 L CNN
F 2 "" H 9950 4350 50  0001 C CNN
F 3 "" H 9950 4350 50  0001 C CNN
	1    9950 4350
	0    1    1    0   
$EndComp
Wire Wire Line
	9950 4600 9950 4850
Wire Wire Line
	9950 4850 9275 4850
Connection ~ 9275 4850
Wire Wire Line
	9275 4850 9275 4600
Wire Wire Line
	9950 4100 9950 3850
Wire Wire Line
	9950 3850 9275 3850
Connection ~ 9275 3850
Wire Wire Line
	9275 3850 9275 3400
Wire Notes Line
	8675 3650 10950 3650
Wire Notes Line
	10950 3650 10950 5650
Wire Notes Line
	10950 5650 8675 5650
Wire Notes Line
	8675 5650 8675 3650
Text Notes 10075 3625 0    50   ~ 0
headphones / speaker
$Comp
L pspice:VSOURCE V?
U 1 1 5A669A05
P 9925 1500
F 0 "V?" H 10153 1546 50  0000 L CNN
F 1 "VSOURCE" H 10153 1455 50  0000 L CNN
F 2 "" H 9925 1500 50  0001 C CNN
F 3 "" H 9925 1500 50  0001 C CNN
	1    9925 1500
	1    0    0    -1  
$EndComp
$Comp
L pspice:VSOURCE V?
U 1 1 5A669BC2
P 8250 1525
F 0 "V?" H 8478 1571 50  0000 L CNN
F 1 "VSOURCE" H 8478 1480 50  0000 L CNN
F 2 "" H 8250 1525 50  0001 C CNN
F 3 "" H 8250 1525 50  0001 C CNN
	1    8250 1525
	1    0    0    -1  
$EndComp
Text GLabel 10375 875  2    50   Input ~ 0
input
Wire Wire Line
	10375 875  9925 875 
Wire Wire Line
	9925 875  9925 1200
$Comp
L pspice:0 #GND?
U 1 1 5A66A5B8
P 9925 2125
F 0 "#GND?" H 9925 2025 50  0001 C CNN
F 1 "0" H 9925 2212 50  0000 C CNN
F 2 "" H 9925 2125 50  0001 C CNN
F 3 "" H 9925 2125 50  0001 C CNN
	1    9925 2125
	1    0    0    -1  
$EndComp
Wire Wire Line
	9925 2125 9925 1800
$Comp
L pspice:0 #GND?
U 1 1 5A66AF93
P 8250 2100
F 0 "#GND?" H 8250 2000 50  0001 C CNN
F 1 "0" H 8250 2187 50  0000 C CNN
F 2 "" H 8250 2100 50  0001 C CNN
F 3 "" H 8250 2100 50  0001 C CNN
	1    8250 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 2100 8250 1825
$Comp
L power:VDD #PWR?
U 1 1 5A66B840
P 8250 950
F 0 "#PWR?" H 8250 800 50  0001 C CNN
F 1 "VDD" H 8267 1123 50  0000 C CNN
F 2 "" H 8250 950 50  0001 C CNN
F 3 "" H 8250 950 50  0001 C CNN
	1    8250 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 950  8250 1225
NoConn ~ 3825 4500
NoConn ~ 3925 4500
NoConn ~ 6225 3050
NoConn ~ 6225 3850
$EndSCHEMATC