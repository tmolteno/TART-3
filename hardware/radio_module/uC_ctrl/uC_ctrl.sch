EESchema Schematic File Version 4
LIBS:radio_module-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 7
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
L Interface_UART:MAX485E U6
U 1 1 5DBFD31C
P 9900 4350
F 0 "U6" H 9900 5031 50  0000 C CNN
F 1 "SP3485" H 9900 4940 50  0000 C CNN
F 2 "Package_SO:SO-8_5.3x6.2mm_P1.27mm" H 9900 3650 50  0001 C CNN
F 3 "https://datasheets.maximintegrated.com/en/ds/MAX1487E-MAX491E.pdf" H 9900 4400 50  0001 C CNN
	1    9900 4350
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D4
U 1 1 5DC0CBD1
P 2550 6000
F 0 "D4" V 2589 5882 50  0000 R CNN
F 1 "LD_A" V 2498 5882 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 2550 6000 50  0001 C CNN
F 3 "~" H 2550 6000 50  0001 C CNN
	1    2550 6000
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R8
U 1 1 5DC0D53C
P 2550 5550
F 0 "R8" H 2620 5596 50  0000 L CNN
F 1 "1K" H 2620 5505 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 2480 5550 50  0001 C CNN
F 3 "~" H 2550 5550 50  0001 C CNN
	1    2550 5550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR042
U 1 1 5DC0D804
P 2550 6350
F 0 "#PWR042" H 2550 6100 50  0001 C CNN
F 1 "GND" H 2555 6177 50  0000 C CNN
F 2 "" H 2550 6350 50  0001 C CNN
F 3 "" H 2550 6350 50  0001 C CNN
	1    2550 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	9250 4350 9500 4350
Wire Wire Line
	9500 4450 9250 4450
Wire Wire Line
	9250 4450 9250 4350
Wire Wire Line
	9250 4450 9250 4900
Connection ~ 9250 4450
$Comp
L Device:R R12
U 1 1 5DC11EC0
P 9250 5050
F 0 "R12" H 9180 5096 50  0000 R CNN
F 1 "100K" H 9180 5005 50  0000 R CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 9180 5050 50  0001 C CNN
F 3 "~" H 9250 5050 50  0001 C CNN
	1    9250 5050
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR049
U 1 1 5DC12A44
P 9250 5500
F 0 "#PWR049" H 9250 5250 50  0001 C CNN
F 1 "GND" H 9255 5327 50  0000 C CNN
F 2 "" H 9250 5500 50  0001 C CNN
F 3 "" H 9250 5500 50  0001 C CNN
	1    9250 5500
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR051
U 1 1 5DC13213
P 9900 5500
F 0 "#PWR051" H 9900 5250 50  0001 C CNN
F 1 "GND" H 9905 5327 50  0000 C CNN
F 2 "" H 9900 5500 50  0001 C CNN
F 3 "" H 9900 5500 50  0001 C CNN
	1    9900 5500
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9900 5500 9900 4950
Wire Wire Line
	9250 5500 9250 5200
$Comp
L power:GND #PWR047
U 1 1 5DC13C52
P 5100 6350
F 0 "#PWR047" H 5100 6100 50  0001 C CNN
F 1 "GND" H 5105 6177 50  0000 C CNN
F 2 "" H 5100 6350 50  0001 C CNN
F 3 "" H 5100 6350 50  0001 C CNN
	1    5100 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 6350 5100 5250
Wire Wire Line
	10300 4550 10850 4550
Wire Wire Line
	10300 4250 10850 4250
Wire Wire Line
	6300 3050 6850 3050
Wire Wire Line
	5700 2850 6850 2850
Text HLabel 6850 2850 2    50   Input ~ 0
D0
Text HLabel 6850 3050 2    50   Input ~ 0
DCLK
$Comp
L Device:R R9
U 1 1 5DC2F6A7
P 3000 5550
F 0 "R9" H 3070 5596 50  0000 L CNN
F 1 "1K" H 3070 5505 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 2930 5550 50  0001 C CNN
F 3 "~" H 3000 5550 50  0001 C CNN
	1    3000 5550
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D5
U 1 1 5DC2FA9A
P 3000 6000
F 0 "D5" V 3039 5882 50  0000 R CNN
F 1 "LD_B" V 2948 5882 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 3000 6000 50  0001 C CNN
F 3 "~" H 3000 6000 50  0001 C CNN
	1    3000 6000
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR043
U 1 1 5DC2FE36
P 3000 6350
F 0 "#PWR043" H 3000 6100 50  0001 C CNN
F 1 "GND" H 3005 6177 50  0000 C CNN
F 2 "" H 3000 6350 50  0001 C CNN
F 3 "" H 3000 6350 50  0001 C CNN
	1    3000 6350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R10
U 1 1 5DC30094
P 3400 5550
F 0 "R10" H 3470 5596 50  0000 L CNN
F 1 "1K" H 3470 5505 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 3330 5550 50  0001 C CNN
F 3 "~" H 3400 5550 50  0001 C CNN
	1    3400 5550
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D6
U 1 1 5DC3034C
P 3400 6000
F 0 "D6" V 3439 5883 50  0000 R CNN
F 1 "ANT_A" V 3348 5883 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 3400 6000 50  0001 C CNN
F 3 "~" H 3400 6000 50  0001 C CNN
	1    3400 6000
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR044
U 1 1 5DC3074F
P 3400 6350
F 0 "#PWR044" H 3400 6100 50  0001 C CNN
F 1 "GND" H 3405 6177 50  0000 C CNN
F 2 "" H 3400 6350 50  0001 C CNN
F 3 "" H 3400 6350 50  0001 C CNN
	1    3400 6350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R11
U 1 1 5DC30978
P 3800 5550
F 0 "R11" H 3870 5596 50  0000 L CNN
F 1 "1K" H 3870 5505 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 3730 5550 50  0001 C CNN
F 3 "~" H 3800 5550 50  0001 C CNN
	1    3800 5550
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D7
U 1 1 5DC30BEC
P 3800 6000
F 0 "D7" V 3839 5882 50  0000 R CNN
F 1 "ANT_B" V 3748 5882 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 3800 6000 50  0001 C CNN
F 3 "~" H 3800 6000 50  0001 C CNN
	1    3800 6000
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR045
U 1 1 5DC3109A
P 3800 6350
F 0 "#PWR045" H 3800 6100 50  0001 C CNN
F 1 "GND" H 3805 6177 50  0000 C CNN
F 2 "" H 3800 6350 50  0001 C CNN
F 3 "" H 3800 6350 50  0001 C CNN
	1    3800 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 5700 2550 5850
Wire Wire Line
	2550 6150 2550 6350
Wire Wire Line
	3000 5700 3000 5850
Wire Wire Line
	3000 6150 3000 6350
Wire Wire Line
	3400 5700 3400 5850
Wire Wire Line
	3400 6150 3400 6350
Wire Wire Line
	3800 5700 3800 5850
Wire Wire Line
	3800 6150 3800 6350
Wire Wire Line
	5700 3450 6450 3450
Wire Wire Line
	5700 3550 6450 3550
Wire Wire Line
	5700 4350 9100 4350
Wire Wire Line
	9100 4350 9100 4550
Wire Wire Line
	9100 4550 9500 4550
Wire Wire Line
	5150 1500 5150 1650
Wire Wire Line
	5700 3650 6450 3650
Wire Wire Line
	5700 3750 6450 3750
Wire Wire Line
	5700 3850 6450 3850
Wire Wire Line
	4500 4550 3800 4550
Wire Wire Line
	3800 4550 3800 5400
Wire Wire Line
	4500 4450 3400 4450
Wire Wire Line
	3400 4450 3400 5400
Wire Wire Line
	3000 4250 3000 5400
Wire Wire Line
	2550 4350 2550 5400
Wire Wire Line
	5700 4850 6450 4850
Wire Wire Line
	5700 4750 6450 4750
Wire Wire Line
	5700 4650 6000 4650
$Comp
L Device:R R7
U 1 1 5DCEF8C4
P 6300 5250
F 0 "R7" H 6370 5296 50  0000 L CNN
F 1 "1K" H 6370 5205 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 6230 5250 50  0001 C CNN
F 3 "~" H 6300 5250 50  0001 C CNN
	1    6300 5250
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D3
U 1 1 5DCEFCE3
P 6300 5650
F 0 "D3" V 6339 5532 50  0000 R CNN
F 1 "ACT/13" V 6248 5532 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 6300 5650 50  0001 C CNN
F 3 "~" H 6300 5650 50  0001 C CNN
	1    6300 5650
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR041
U 1 1 5DCF0171
P 6300 6350
F 0 "#PWR041" H 6300 6100 50  0001 C CNN
F 1 "GND" H 6305 6177 50  0000 C CNN
F 2 "" H 6300 6350 50  0001 C CNN
F 3 "" H 6300 6350 50  0001 C CNN
	1    6300 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 6350 6300 5800
Wire Wire Line
	6300 5500 6300 5400
$Comp
L Device:C C25
U 1 1 5DCF7B54
P 5650 1800
F 0 "C25" H 5765 1846 50  0000 L CNN
F 1 "0.1" H 5765 1755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5688 1650 50  0001 C CNN
F 3 "~" H 5650 1800 50  0001 C CNN
	1    5650 1800
	1    0    0    -1  
$EndComp
$Comp
L Device:C C26
U 1 1 5DCF849A
P 10400 3700
F 0 "C26" H 10515 3746 50  0000 L CNN
F 1 "0.1" H 10515 3655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 10438 3550 50  0001 C CNN
F 3 "~" H 10400 3700 50  0001 C CNN
	1    10400 3700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR052
U 1 1 5DCF87A1
P 10400 5500
F 0 "#PWR052" H 10400 5250 50  0001 C CNN
F 1 "GND" H 10405 5327 50  0000 C CNN
F 2 "" H 10400 5500 50  0001 C CNN
F 3 "" H 10400 5500 50  0001 C CNN
	1    10400 5500
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR048
U 1 1 5DCF8A79
P 5650 2050
F 0 "#PWR048" H 5650 1800 50  0001 C CNN
F 1 "GND" H 5655 1877 50  0000 C CNN
F 2 "" H 5650 2050 50  0001 C CNN
F 3 "" H 5650 2050 50  0001 C CNN
	1    5650 2050
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5650 1650 5150 1650
Connection ~ 5150 1650
Wire Wire Line
	5150 1650 5150 2150
Wire Wire Line
	5650 2050 5650 1950
Wire Wire Line
	10400 5500 10400 3850
Wire Wire Line
	10400 3550 9900 3550
Connection ~ 9900 3550
Wire Wire Line
	9900 3550 9900 3850
Wire Wire Line
	5700 2750 6850 2750
Wire Wire Line
	5700 2650 6850 2650
Text HLabel 6450 3450 2    39   Input ~ 0
A0
Text HLabel 6450 3550 2    39   Input ~ 0
A1
Text HLabel 6450 3650 2    39   Input ~ 0
A2
Text HLabel 6450 3750 2    39   Input ~ 0
A3
Text HLabel 6450 3850 2    39   Input ~ 0
A4
Text HLabel 6450 4750 2    39   Input ~ 0
LD_A
Text HLabel 6850 2650 2    39   Input ~ 0
LD_B
Text HLabel 6450 4850 2    39   Input ~ 0
ANT_A
Text HLabel 6850 2550 2    39   Input ~ 0
ANT_B
Text HLabel 6450 4950 2    39   Input ~ 0
~CS_A
Text HLabel 6850 2750 2    39   Input ~ 0
~CS_B
Text HLabel 10850 4250 2    39   Input ~ 0
B
Text HLabel 10850 4550 2    39   Input ~ 0
A
Text HLabel 6900 4050 2    39   Input ~ 0
~Reset
$Comp
L Device:R R15
U 1 1 5E1F9472
P 7600 5050
F 0 "R15" H 7530 5096 50  0000 R CNN
F 1 "100K" H 7530 5005 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 7530 5050 50  0001 C CNN
F 3 "~" H 7600 5050 50  0001 C CNN
	1    7600 5050
	-1   0    0    -1  
$EndComp
$Comp
L Switch:SW_SPST SW1
U 1 1 5E20C6B2
P 7600 2050
F 0 "SW1" V 7600 2148 50  0000 L CNN
F 1 "SW_SPST" V 7645 2148 50  0001 L CNN
F 2 "Button_Switch_SMD:SW_SPST_PTS645" H 7600 2050 50  0001 C CNN
F 3 "" H 7600 2050 50  0001 C CNN
	1    7600 2050
	0    1    1    0   
$EndComp
Wire Wire Line
	7600 4900 7600 4550
$Comp
L power:GND #PWR06
U 1 1 5E218D13
P 7600 5450
F 0 "#PWR06" H 7600 5200 50  0001 C CNN
F 1 "GND" H 7605 5277 50  0000 C CNN
F 2 "" H 7600 5450 50  0001 C CNN
F 3 "" H 7600 5450 50  0001 C CNN
	1    7600 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 5200 7600 5450
Wire Wire Line
	7600 1850 7600 1550
Wire Wire Line
	5700 4050 6650 4050
$Comp
L MCU_Microchip_ATmega:ATmega328PB-AU U5
U 1 1 5D9D8641
P 5100 3750
F 0 "U5" H 5100 2161 50  0000 C CNN
F 1 "ATmega328PB-AU" H 5100 2070 50  0000 C CNN
F 2 "Package_QFP:TQFP-32_7x7mm_P0.8mm" H 5100 3750 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/40001906C.pdf" H 5100 3750 50  0001 C CNN
	1    5100 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 2250 5200 2150
Wire Wire Line
	5200 2150 5150 2150
Wire Wire Line
	5100 2150 5100 2250
Connection ~ 5150 2150
Wire Wire Line
	5150 2150 5100 2150
Wire Wire Line
	6300 3050 5700 3050
Wire Wire Line
	6300 3050 6300 5100
Connection ~ 6300 3050
$Comp
L Device:R R16
U 1 1 5DA6C364
P 6650 2100
F 0 "R16" H 6580 2146 50  0000 R CNN
F 1 "100K" H 6580 2055 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6580 2100 50  0001 C CNN
F 3 "~" H 6650 2100 50  0001 C CNN
	1    6650 2100
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6650 2250 6650 4050
Connection ~ 6650 4050
Wire Wire Line
	6650 4050 6900 4050
Wire Wire Line
	6650 1950 6650 1550
Wire Wire Line
	5700 4250 9500 4250
Wire Wire Line
	5700 4450 9250 4450
$Comp
L Device:Crystal Y1
U 1 1 5DAE1495
P 8150 3350
F 0 "Y1" H 8150 3618 50  0000 C CNN
F 1 "16MHz" H 8150 3527 50  0000 C CNN
F 2 "Crystal:Crystal_HC49-U_Vertical" H 8150 3350 50  0001 C CNN
F 3 "~" H 8150 3350 50  0001 C CNN
	1    8150 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C44
U 1 1 5DAE1BF8
P 7950 3700
F 0 "C44" H 8065 3746 50  0000 L CNN
F 1 "22p" H 8065 3655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 7988 3550 50  0001 C CNN
F 3 "~" H 7950 3700 50  0001 C CNN
	1    7950 3700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C45
U 1 1 5DAE29DD
P 8350 3700
F 0 "C45" H 8465 3746 50  0000 L CNN
F 1 "22p" H 8465 3655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 8388 3550 50  0001 C CNN
F 3 "~" H 8350 3700 50  0001 C CNN
	1    8350 3700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 5DAE6C58
P 7950 4000
F 0 "#PWR08" H 7950 3750 50  0001 C CNN
F 1 "GND" H 7955 3827 50  0000 C CNN
F 2 "" H 7950 4000 50  0001 C CNN
F 3 "" H 7950 4000 50  0001 C CNN
	1    7950 4000
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR09
U 1 1 5DAE7134
P 8350 4000
F 0 "#PWR09" H 8350 3750 50  0001 C CNN
F 1 "GND" H 8355 3827 50  0000 C CNN
F 2 "" H 8350 4000 50  0001 C CNN
F 3 "" H 8350 4000 50  0001 C CNN
	1    8350 4000
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7950 3850 7950 4000
Wire Wire Line
	8350 3850 8350 4000
Wire Wire Line
	8300 3350 8350 3350
Wire Wire Line
	8350 3350 8350 3550
Wire Wire Line
	8000 3350 7950 3350
Wire Wire Line
	7950 3350 7950 3550
Wire Wire Line
	5700 3150 8350 3150
Wire Wire Line
	8350 3150 8350 3350
Connection ~ 8350 3350
Wire Wire Line
	5700 3250 7950 3250
Wire Wire Line
	7950 3250 7950 3350
Connection ~ 7950 3350
$Comp
L Device:C C46
U 1 1 5DB2F566
P 4650 1800
F 0 "C46" H 4765 1846 50  0000 L CNN
F 1 "0.1" H 4765 1755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4688 1650 50  0001 C CNN
F 3 "~" H 4650 1800 50  0001 C CNN
	1    4650 1800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR010
U 1 1 5DB2F9FD
P 4650 2050
F 0 "#PWR010" H 4650 1800 50  0001 C CNN
F 1 "GND" H 4655 1877 50  0000 C CNN
F 2 "" H 4650 2050 50  0001 C CNN
F 3 "" H 4650 2050 50  0001 C CNN
	1    4650 2050
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4650 2050 4650 1950
Wire Wire Line
	5150 1650 4650 1650
NoConn ~ 4500 2550
Wire Wire Line
	2550 4350 4500 4350
Wire Wire Line
	4500 4250 3000 4250
Text GLabel 5150 1500 1    50   Input ~ 0
3v3
Text GLabel 6650 1550 1    50   Input ~ 0
3v3
Text GLabel 7600 1550 1    50   Input ~ 0
3v3
Wire Wire Line
	9900 1550 9900 3550
Text GLabel 9900 1550 1    50   Input ~ 0
3v3
Wire Wire Line
	5700 4950 6450 4950
Wire Wire Line
	5700 2550 6850 2550
NoConn ~ 6000 3950
Wire Wire Line
	5700 4550 7600 4550
Connection ~ 7600 4550
Wire Wire Line
	7600 2250 7600 4550
Wire Wire Line
	5700 2950 6850 2950
Text HLabel 6850 2950 2    50   Input ~ 0
DI
$Comp
L Device:R R25
U 1 1 5DB40094
P 6000 5250
F 0 "R25" H 6070 5296 50  0000 L CNN
F 1 "1K" H 6070 5205 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 5930 5250 50  0001 C CNN
F 3 "~" H 6000 5250 50  0001 C CNN
	1    6000 5250
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D8
U 1 1 5DB407CB
P 6000 5650
F 0 "D8" V 6039 5532 50  0000 R CNN
F 1 "4" V 5948 5532 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 6000 5650 50  0001 C CNN
F 3 "~" H 6000 5650 50  0001 C CNN
	1    6000 5650
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR05
U 1 1 5DB40BB3
P 6000 6350
F 0 "#PWR05" H 6000 6100 50  0001 C CNN
F 1 "GND" H 6005 6177 50  0000 C CNN
F 2 "" H 6000 6350 50  0001 C CNN
F 3 "" H 6000 6350 50  0001 C CNN
	1    6000 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 3950 6000 3950
Wire Wire Line
	6000 5400 6000 5500
Wire Wire Line
	6000 5800 6000 6350
Wire Wire Line
	6000 5100 6000 4650
$EndSCHEMATC