EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 6
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 2400 1250 1550 1450
U 5DCC82D4
F0 "Arduino Controller" 50
F1 "arduino.sch" 50
F2 "PB0" I R 3950 1300 50 
F3 "PB2" I R 3950 1500 50 
F4 "PB3" I L 2400 1900 50 
F5 "PB4" I L 2400 2000 50 
F6 "PC4" I R 3950 2100 50 
F7 "PC5" I R 3950 2200 50 
F8 "PD0_RX" I R 3950 2450 50 
F9 "PD1_TX" I R 3950 2550 50 
F10 "PD3" I L 2400 1350 50 
F11 "PD2" I R 3950 2650 50 
F12 "PD4" I L 2400 1450 50 
F13 "PD5" I L 2400 1550 50 
F14 "PD6" I L 2400 1650 50 
F15 "PD7" I L 2400 1750 50 
F16 "PB1" I R 3950 1400 50 
F17 "PB5" I L 2400 2100 50 
F18 "D+" I L 2400 2450 50 
F19 "D-" I L 2400 2550 50 
$EndSheet
$Comp
L radioDev-rescue:conn2x18pcie-pcie U2
U 1 1 5DCC86DA
P 8400 3300
F 0 "U2" H 8400 4251 39  0000 C CNN
F 1 "conn2x18pcie" H 8400 4176 39  0000 C CNN
F 2 "Connector:MOLEX_0877159002" H 8400 3300 39  0001 C CNN
F 3 "" H 8400 3300 39  0001 C CNN
	1    8400 3300
	1    0    0    -1  
$EndComp
$Sheet
S 2400 3250 1550 1250
U 5DCC9F01
F0 "Dev Board LVDS Interface" 50
F1 "devInt.sch" 50
F2 "Q0-A" I R 3950 3350 50 
F3 "Q0+A" I R 3950 3450 50 
F4 "Q1+A" I R 3950 3550 50 
F5 "Q1-A" I R 3950 3650 50 
F6 "I0-A" I R 3950 3750 50 
F7 "I0+A" I R 3950 3850 50 
F8 "I1+A" I R 3950 3950 50 
F9 "I1-A" I R 3950 4050 50 
F10 "Q0-B" I L 2400 3350 50 
F11 "Q0+B" I L 2400 3450 50 
F12 "Q1+B" I L 2400 3550 50 
F13 "Q1-B" I L 2400 3650 50 
F14 "I0-B" I L 2400 3750 50 
F15 "I0+B" I L 2400 3850 50 
F16 "I1+B" I L 2400 3950 50 
F17 "I1-B" I L 2400 4050 50 
$EndSheet
$Sheet
S 2400 4850 1550 950 
U 5DCCA0EA
F0 "Dev Board Power Supply" 50
F1 "devPSU.sch" 50
F2 "D+" I L 2400 5450 50 
F3 "D-" I L 2400 5350 50 
$EndSheet
$Comp
L power:+5V #PWR05
U 1 1 5DD0B389
P 7950 1950
F 0 "#PWR05" H 7950 1800 50  0001 C CNN
F 1 "+5V" H 7965 2123 50  0000 C CNN
F 2 "" H 7950 1950 50  0001 C CNN
F 3 "" H 7950 1950 50  0001 C CNN
	1    7950 1950
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR07
U 1 1 5DD0C179
P 8900 1950
F 0 "#PWR07" H 8900 1800 50  0001 C CNN
F 1 "+5V" H 8915 2123 50  0000 C CNN
F 2 "" H 8900 1950 50  0001 C CNN
F 3 "" H 8900 1950 50  0001 C CNN
	1    8900 1950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 5DD0CBAA
P 7950 4900
F 0 "#PWR06" H 7950 4650 50  0001 C CNN
F 1 "GND" H 7955 4727 50  0000 C CNN
F 2 "" H 7950 4900 50  0001 C CNN
F 3 "" H 7950 4900 50  0001 C CNN
	1    7950 4900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 5DD0CE3B
P 8900 4900
F 0 "#PWR08" H 8900 4650 50  0001 C CNN
F 1 "GND" H 8905 4727 50  0000 C CNN
F 2 "" H 8900 4900 50  0001 C CNN
F 3 "" H 8900 4900 50  0001 C CNN
	1    8900 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	8150 2550 7950 2550
Wire Wire Line
	7950 2550 7950 1950
Wire Wire Line
	8650 4150 8900 4150
Wire Wire Line
	8900 4150 8900 1950
Wire Wire Line
	8150 4250 7950 4250
Wire Wire Line
	7950 4250 7950 4900
Wire Wire Line
	8650 4250 8900 4250
Wire Wire Line
	8900 4250 8900 4900
Wire Wire Line
	8150 2650 7050 2650
Wire Wire Line
	8150 2750 7050 2750
Wire Wire Line
	8150 2850 7050 2850
Wire Wire Line
	8150 2950 7050 2950
Wire Wire Line
	8150 3050 7050 3050
Wire Wire Line
	8150 3150 7050 3150
Wire Wire Line
	8150 3250 7050 3250
Wire Wire Line
	8150 3350 7050 3350
Wire Wire Line
	8150 3450 7050 3450
Wire Wire Line
	8150 3550 7050 3550
Wire Wire Line
	8150 3650 7050 3650
Wire Wire Line
	8150 3750 7050 3750
Wire Wire Line
	8150 3850 7050 3850
Wire Wire Line
	8150 4150 7050 4150
Wire Wire Line
	8650 3850 9700 3850
Wire Wire Line
	8650 3750 9700 3750
Wire Wire Line
	8650 3650 9700 3650
Wire Wire Line
	8650 3550 9700 3550
Wire Wire Line
	8650 3450 9700 3450
Wire Wire Line
	8650 3350 9700 3350
Wire Wire Line
	8650 3250 9700 3250
Wire Wire Line
	8650 3150 9700 3150
Wire Wire Line
	8650 3050 9700 3050
Wire Wire Line
	8650 2950 9700 2950
Wire Wire Line
	8650 2850 9700 2850
Wire Wire Line
	8650 2750 9700 2750
Wire Wire Line
	8650 2650 9700 2650
Wire Wire Line
	8650 2550 9700 2550
Text Label 9400 2550 0    50   ~ 0
Q0-B
Text Label 9400 2650 0    50   ~ 0
Q0+B
Text Label 9400 2750 0    50   ~ 0
Q1+B
Text Label 9400 2850 0    50   ~ 0
Q1-B
Text Label 9400 2950 0    50   ~ 0
I0-B
Text Label 9400 3050 0    50   ~ 0
I0+B
Text Label 9400 3150 0    50   ~ 0
I1+B
Text Label 9400 3250 0    50   ~ 0
I1-B
Text Label 9400 3350 0    50   ~ 0
EXTCLK
Text Label 9400 3450 0    50   ~ 0
A0
Text Label 9400 3550 0    50   ~ 0
A1
Text Label 9400 3650 0    50   ~ 0
A2
Text Label 9400 3750 0    50   ~ 0
A3
Text Label 9400 3850 0    50   ~ 0
A4
Text Label 9400 3950 0    50   ~ 0
A
Text Label 9400 4050 0    50   ~ 0
B
Text Label 7150 2650 0    50   ~ 0
Q0-A
Text Label 7150 2750 0    50   ~ 0
Q0+A
Text Label 7150 2850 0    50   ~ 0
Q1+A
Text Label 7150 2950 0    50   ~ 0
Q1-A
Text Label 7150 3150 0    50   ~ 0
I0+A
Text Label 7150 3050 0    50   ~ 0
I0-A
Text Label 7150 3250 0    50   ~ 0
I1+A
Text Label 7150 3350 0    50   ~ 0
I1-A
Text Label 7150 3450 0    50   ~ 0
CLKIN_B
Text Label 7150 3550 0    50   ~ 0
CLKIN_A
Text Label 7150 3650 0    50   ~ 0
SCK
Text Label 7150 3750 0    50   ~ 0
MOSI
Text Label 7150 3850 0    50   ~ 0
MISO
Text Label 7150 3950 0    50   ~ 0
RXD
Text Label 7150 4050 0    50   ~ 0
TXD
Text Label 7150 4150 0    50   ~ 0
~Reset
Wire Wire Line
	1000 5450 1000 2450
Wire Wire Line
	1000 2450 2400 2450
Wire Wire Line
	1000 5450 2400 5450
Wire Wire Line
	2400 2550 1100 2550
Wire Wire Line
	1100 2550 1100 5350
Wire Wire Line
	1100 5350 2400 5350
$Comp
L Device:R R3
U 1 1 5DD9D52E
P 9950 4150
F 0 "R3" H 10020 4196 50  0000 L CNN
F 1 "120" H 10020 4105 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 9880 4150 50  0001 C CNN
F 3 "~" H 9950 4150 50  0001 C CNN
	1    9950 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	9950 3950 9950 4000
Wire Wire Line
	8650 3950 9950 3950
Wire Wire Line
	9800 4050 9800 4300
Wire Wire Line
	9800 4300 9950 4300
Wire Wire Line
	8650 4050 9800 4050
$Comp
L Interface_UART:SP3485CN U1
U 1 1 5DDA36D8
P 5550 2100
F 0 "U1" H 5550 2681 50  0000 C CNN
F 1 "SP3485CN" H 5550 2590 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 6600 1750 50  0001 C CIN
F 3 "http://www.icbase.com/pdf/SPX/SPX00480106.pdf" H 5550 2100 50  0001 C CNN
	1    5550 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 2000 6300 2000
Wire Wire Line
	5950 2200 6100 2200
Text Label 6450 2000 0    50   ~ 0
A
Text Label 6450 2200 0    50   ~ 0
B
$Comp
L Device:R R2
U 1 1 5DDA60A1
P 6300 2450
F 0 "R2" H 6370 2496 50  0000 L CNN
F 1 "120" H 6370 2405 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 6230 2450 50  0001 C CNN
F 3 "~" H 6300 2450 50  0001 C CNN
	1    6300 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 2300 6300 2000
Connection ~ 6300 2000
Wire Wire Line
	6300 2000 6600 2000
Wire Wire Line
	6300 2600 6100 2600
Wire Wire Line
	6100 2600 6100 2200
Connection ~ 6100 2200
Wire Wire Line
	6100 2200 6600 2200
Wire Wire Line
	4900 2550 4900 2300
Wire Wire Line
	4900 2300 5150 2300
Wire Wire Line
	3950 2550 4900 2550
Wire Wire Line
	5150 1900 4800 1900
Wire Wire Line
	4800 1900 4800 2450
Wire Wire Line
	4800 2450 3950 2450
$Comp
L Device:R R1
U 1 1 5DDAF013
P 5000 2950
F 0 "R1" H 5070 2996 50  0000 L CNN
F 1 "R" H 5070 2905 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 4930 2950 50  0001 C CNN
F 3 "~" H 5000 2950 50  0001 C CNN
	1    5000 2950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 5DDAF411
P 5000 3300
F 0 "#PWR01" H 5000 3050 50  0001 C CNN
F 1 "GND" H 5005 3127 50  0000 C CNN
F 2 "" H 5000 3300 50  0001 C CNN
F 3 "" H 5000 3300 50  0001 C CNN
	1    5000 3300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5DDAF54E
P 5550 3300
F 0 "#PWR03" H 5550 3050 50  0001 C CNN
F 1 "GND" H 5555 3127 50  0000 C CNN
F 2 "" H 5550 3300 50  0001 C CNN
F 3 "" H 5550 3300 50  0001 C CNN
	1    5550 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 3300 5550 2500
$Comp
L power:+3.3V #PWR02
U 1 1 5DDB1FA5
P 5550 1150
F 0 "#PWR02" H 5550 1000 50  0001 C CNN
F 1 "+3.3V" H 5565 1323 50  0000 C CNN
F 2 "" H 5550 1150 50  0001 C CNN
F 3 "" H 5550 1150 50  0001 C CNN
	1    5550 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 1700 5550 1200
$Comp
L Device:C C1
U 1 1 5DDB531E
P 6050 1350
F 0 "C1" H 6165 1396 50  0000 L CNN
F 1 "C" H 6165 1305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 6088 1200 50  0001 C CNN
F 3 "~" H 6050 1350 50  0001 C CNN
	1    6050 1350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 5DDB597C
P 6050 1600
F 0 "#PWR04" H 6050 1350 50  0001 C CNN
F 1 "GND" H 6055 1427 50  0000 C CNN
F 2 "" H 6050 1600 50  0001 C CNN
F 3 "" H 6050 1600 50  0001 C CNN
	1    6050 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 1600 6050 1500
Wire Wire Line
	6050 1200 5550 1200
Connection ~ 5550 1200
Wire Wire Line
	5550 1200 5550 1150
Wire Wire Line
	5150 2000 5000 2000
Wire Wire Line
	5000 2000 5000 2200
Wire Wire Line
	5150 2200 5000 2200
Connection ~ 5000 2200
Wire Wire Line
	5000 2200 5000 2650
Wire Wire Line
	5000 3100 5000 3300
Connection ~ 5000 2650
Wire Wire Line
	5000 2650 5000 2800
Wire Wire Line
	3950 3350 4650 3350
Wire Wire Line
	3950 3450 4650 3450
Wire Wire Line
	3950 3550 4650 3550
Wire Wire Line
	3950 3650 4650 3650
Wire Wire Line
	3950 3750 4650 3750
Wire Wire Line
	3950 3850 4650 3850
Wire Wire Line
	3950 3950 4650 3950
Wire Wire Line
	3950 4050 4650 4050
Wire Wire Line
	2400 3350 1550 3350
Wire Wire Line
	2400 3450 1550 3450
Wire Wire Line
	2400 3550 1550 3550
Wire Wire Line
	2400 3650 1550 3650
Wire Wire Line
	2400 3750 1550 3750
Wire Wire Line
	2400 3850 1550 3850
Wire Wire Line
	2400 3950 1550 3950
Wire Wire Line
	2400 4050 1550 4050
Text Label 1750 3350 0    50   ~ 0
Q0-B
Text Label 1750 3450 0    50   ~ 0
Q0+B
Text Label 1750 3550 0    50   ~ 0
Q1+B
Text Label 1750 3650 0    50   ~ 0
Q1-B
Text Label 1750 3750 0    50   ~ 0
I0-B
Text Label 1750 3850 0    50   ~ 0
I0+B
Text Label 1750 3950 0    50   ~ 0
I1+B
Text Label 1750 4050 0    50   ~ 0
I1-B
Text Label 4200 3350 0    50   ~ 0
Q0-A
Text Label 4200 3450 0    50   ~ 0
Q0+A
Text Label 4200 3550 0    50   ~ 0
Q1+A
Text Label 4200 3650 0    50   ~ 0
Q1-A
Text Label 4200 3750 0    50   ~ 0
I0-A
Text Label 4200 3850 0    50   ~ 0
I0+A
Text Label 4200 3950 0    50   ~ 0
I1+A
Text Label 4200 4050 0    50   ~ 0
I1-A
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J1
U 1 1 5DE9394F
P 8400 5900
F 0 "J1" H 8450 6217 50  0000 C CNN
F 1 "Conn_02x03_Odd_Even" H 8450 6126 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical" H 8400 5900 50  0001 C CNN
F 3 "~" H 8400 5900 50  0001 C CNN
	1    8400 5900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR010
U 1 1 5DE941B9
P 8950 6250
F 0 "#PWR010" H 8950 6000 50  0001 C CNN
F 1 "GND" H 8955 6077 50  0000 C CNN
F 2 "" H 8950 6250 50  0001 C CNN
F 3 "" H 8950 6250 50  0001 C CNN
	1    8950 6250
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR09
U 1 1 5DE94874
P 8950 5550
F 0 "#PWR09" H 8950 5400 50  0001 C CNN
F 1 "+5V" H 8965 5723 50  0000 C CNN
F 2 "" H 8950 5550 50  0001 C CNN
F 3 "" H 8950 5550 50  0001 C CNN
	1    8950 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8700 5800 8950 5800
Wire Wire Line
	8950 5800 8950 5550
Wire Wire Line
	8700 6000 8950 6000
Wire Wire Line
	8950 6000 8950 6250
Wire Wire Line
	8200 6000 7500 6000
Wire Wire Line
	8200 5900 7500 5900
Wire Wire Line
	8200 5800 7500 5800
Wire Wire Line
	8700 5900 9300 5900
Wire Wire Line
	3950 2650 5000 2650
Wire Wire Line
	2400 2100 1550 2100
Wire Wire Line
	2400 2000 1550 2000
Wire Wire Line
	2400 1900 1550 1900
Text Label 1750 1900 0    50   ~ 0
MOSI
Text Label 1750 2000 0    50   ~ 0
MISO
Text Label 1750 2100 0    50   ~ 0
SCK
Text Label 9000 5900 0    50   ~ 0
MOSI
Text Label 7650 5800 0    50   ~ 0
MISO
Text Label 7650 5900 0    50   ~ 0
SCK
Text Label 7650 6000 0    50   ~ 0
~Reset
$Sheet
S 2400 6150 1550 950 
U 5DEE09E8
F0 "Clock generation" 50
F1 "clk.sch" 50
F2 "CLK_A" I R 3950 6450 50 
F3 "CLK_B" I R 3950 6550 50 
F4 "EXTCLK" I R 3950 6650 50 
$EndSheet
Wire Wire Line
	3950 6450 4700 6450
Wire Wire Line
	3950 6550 4700 6550
Text Label 4150 6450 0    50   ~ 0
CLKIN_A
Text Label 4150 6550 0    50   ~ 0
CLKIN_B
$Comp
L Mechanical:MountingHole H1
U 1 1 5DF02CAA
P 3900 7550
F 0 "H1" H 4000 7596 50  0000 L CNN
F 1 "MountingHole" H 4000 7505 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_DIN965" H 3900 7550 50  0001 C CNN
F 3 "~" H 3900 7550 50  0001 C CNN
	1    3900 7550
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 5DF03083
P 4650 7550
F 0 "H2" H 4750 7596 50  0000 L CNN
F 1 "MountingHole" H 4750 7505 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_DIN965" H 4650 7550 50  0001 C CNN
F 3 "~" H 4650 7550 50  0001 C CNN
	1    4650 7550
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 5DF03444
P 5350 7550
F 0 "H3" H 5450 7596 50  0000 L CNN
F 1 "MountingHole" H 5450 7505 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_DIN965" H 5350 7550 50  0001 C CNN
F 3 "~" H 5350 7550 50  0001 C CNN
	1    5350 7550
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 5DF0371A
P 6050 7550
F 0 "H4" H 6150 7596 50  0000 L CNN
F 1 "MountingHole" H 6150 7505 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_DIN965" H 6050 7550 50  0001 C CNN
F 3 "~" H 6050 7550 50  0001 C CNN
	1    6050 7550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 1750 1550 1750
Wire Wire Line
	2400 1650 1550 1650
Wire Wire Line
	2400 1550 1550 1550
Wire Wire Line
	2400 1450 1550 1450
Wire Wire Line
	2400 1350 1550 1350
Wire Wire Line
	3950 2200 4500 2200
Wire Wire Line
	3950 2100 4500 2100
Wire Wire Line
	3950 1500 4500 1500
Wire Wire Line
	3950 1400 4500 1400
Wire Wire Line
	3950 1300 4500 1300
Text Label 1750 1350 0    50   ~ 0
A0
Text Label 1750 1450 0    50   ~ 0
A1
Text Label 1750 1550 0    50   ~ 0
A2
Text Label 1750 1650 0    50   ~ 0
A3
Text Label 1750 1750 0    50   ~ 0
A4
NoConn ~ 4500 1300
NoConn ~ 4500 1400
NoConn ~ 4500 2100
NoConn ~ 4500 2200
Wire Wire Line
	3950 6650 4700 6650
Text Label 4150 6650 0    50   ~ 0
EXTCLK
$Sheet
S 4850 4850 1350 950 
U 5E01CA25
F0 "Radio board USB to Serial" 50
F1 "USB_Serial.sch" 50
F2 "RX" I R 6200 5050 50 
F3 "TX" I R 6200 5150 50 
F4 "~Reset" I R 6200 5350 50 
$EndSheet
Text Label 4100 1500 0    50   ~ 0
~Reset
Text Notes 4100 1600 0    50   ~ 0
GPIO 10
Wire Wire Line
	7050 4150 7050 5350
Wire Wire Line
	6200 5350 7050 5350
Wire Wire Line
	6950 4050 6950 5150
Wire Wire Line
	6950 4050 8150 4050
Wire Wire Line
	6200 5150 6950 5150
Wire Wire Line
	6850 3950 6850 5050
Wire Wire Line
	6850 3950 8150 3950
Wire Wire Line
	6200 5050 6850 5050
$EndSCHEMATC
