EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 9 18
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
L Connector:Conn_01x24_Male J1
U 1 1 5F7B13BB
P 3500 4000
F 0 "J1" H 3608 5281 50  0000 C CNN
F 1 "Conn_01x24" H 3608 5190 50  0000 C CNN
F 2 "Connector_PinHeader_1.00mm:PinHeader_1x24_P1.00mm_Vertical" H 3500 4000 50  0001 C CNN
F 3 "~" H 3500 4000 50  0001 C CNN
	1    3500 4000
	1    0    0    -1  
$EndComp
Text HLabel 8500 2750 2    50   Input ~ 0
clka[0..7]
Text HLabel 8500 3100 2    50   Input ~ 0
clkb[0..7]
Text HLabel 8500 3450 2    50   Input ~ 0
clkc[0..7]
Wire Wire Line
	3700 2900 4500 2900
Wire Wire Line
	3700 3000 4500 3000
Wire Wire Line
	3700 3100 4500 3100
Wire Wire Line
	3700 3200 4500 3200
Wire Wire Line
	3700 3300 4500 3300
Wire Wire Line
	3700 3400 4500 3400
Wire Wire Line
	3700 3500 4500 3500
Wire Wire Line
	3700 3600 4500 3600
Entry Wire Line
	4500 3600 4600 3500
Entry Wire Line
	4500 3500 4600 3400
Entry Wire Line
	4500 3400 4600 3300
Entry Wire Line
	4500 3300 4600 3200
Entry Wire Line
	4500 3200 4600 3100
Entry Wire Line
	4500 3100 4600 3000
Entry Wire Line
	4500 3000 4600 2900
Entry Wire Line
	4500 2900 4600 2800
Text Label 4000 2900 0    50   ~ 0
a0
Text Label 4000 3000 0    50   ~ 0
a1
Text Label 4000 3100 0    50   ~ 0
a2
Text Label 4000 3200 0    50   ~ 0
a3
Text Label 4000 3300 0    50   ~ 0
a4
Text Label 4000 3400 0    50   ~ 0
a5
Text Label 4000 3500 0    50   ~ 0
a6
Text Label 4000 3600 0    50   ~ 0
a7
Wire Wire Line
	3700 3700 4600 3700
Wire Wire Line
	3700 3800 4600 3800
Wire Wire Line
	3700 3900 4600 3900
Wire Wire Line
	3700 4000 4600 4000
Wire Wire Line
	3700 4100 4600 4100
Wire Wire Line
	3700 4200 4600 4200
Wire Wire Line
	3700 4300 4600 4300
Wire Wire Line
	3700 4400 4600 4400
Entry Wire Line
	4600 3700 4700 3600
Entry Wire Line
	4600 3800 4700 3700
Entry Wire Line
	4600 3900 4700 3800
Entry Wire Line
	4600 4000 4700 3900
Entry Wire Line
	4600 4100 4700 4000
Entry Wire Line
	4600 4200 4700 4100
Entry Wire Line
	4600 4300 4700 4200
Entry Wire Line
	4600 4400 4700 4300
Text Label 4000 3700 0    50   ~ 0
b0
Text Label 4000 3800 0    50   ~ 0
b1
Text Label 4000 3900 0    50   ~ 0
b2
Text Label 4000 4000 0    50   ~ 0
b3
Text Label 4000 4100 0    50   ~ 0
b4
Text Label 4000 4200 0    50   ~ 0
b5
Text Label 4000 4300 0    50   ~ 0
b6
Text Label 4000 4400 0    50   ~ 0
b7
Wire Bus Line
	4700 3100 8500 3100
Wire Bus Line
	4600 2750 8500 2750
Wire Wire Line
	3700 4500 4700 4500
Wire Wire Line
	3700 4600 4700 4600
Wire Wire Line
	3700 4700 4700 4700
Wire Wire Line
	3700 4800 4700 4800
Wire Wire Line
	3700 4900 4700 4900
Wire Wire Line
	3700 5000 4700 5000
Wire Wire Line
	3700 5100 4700 5100
Wire Wire Line
	3700 5200 4700 5200
Entry Wire Line
	4700 4500 4800 4400
Entry Wire Line
	4700 4600 4800 4500
Entry Wire Line
	4700 4700 4800 4600
Entry Wire Line
	4700 4800 4800 4700
Entry Wire Line
	4700 4900 4800 4800
Entry Wire Line
	4700 5000 4800 4900
Entry Wire Line
	4700 5100 4800 5000
Entry Wire Line
	4700 5200 4800 5100
Wire Bus Line
	4800 3450 8500 3450
Text Label 4000 4500 0    50   ~ 0
c0
Text Label 4000 4600 0    50   ~ 0
c1
Text Label 4000 4700 0    50   ~ 0
c2
Text Label 4000 4800 0    50   ~ 0
c3
Text Label 4000 4900 0    50   ~ 0
c4
Text Label 4000 5000 0    50   ~ 0
c5
Text Label 4000 5100 0    50   ~ 0
c6
Text Label 4000 5200 0    50   ~ 0
c7
Text Label 6200 2750 0    50   ~ 0
a[0..7]
Text Label 6200 3100 0    50   ~ 0
b[0..7]
Text Label 6200 3450 0    50   ~ 0
c[0..7]
Wire Bus Line
	4700 3100 4700 4300
Wire Bus Line
	4600 2750 4600 3500
Wire Bus Line
	4800 3450 4800 5100
$EndSCHEMATC
