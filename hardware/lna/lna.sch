EESchema Schematic File Version 4
LIBS:lna-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Seperate LNA"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Device:L L2
U 1 1 5D67C00B
P 6900 3500
F 0 "L2" H 6953 3546 50  0000 L CNN
F 1 "100nH" H 6953 3455 50  0000 L CNN
F 2 "Inductor_SMD:L_0402_1005Metric" H 6900 3500 50  0001 C CNN
F 3 "Murata LQG15HS" H 6900 3500 50  0001 C CNN
	1    6900 3500
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR03
U 1 1 5D67EEDE
P 5950 4650
F 0 "#PWR03" H 5950 4400 50  0001 C CNN
F 1 "GNDA" H 5955 4477 50  0000 C CNN
F 2 "" H 5950 4650 50  0001 C CNN
F 3 "" H 5950 4650 50  0001 C CNN
	1    5950 4650
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR04
U 1 1 5D67FC09
P 6500 3200
F 0 "#PWR04" H 6500 3050 50  0001 C CNN
F 1 "VCC" H 6517 3373 50  0000 C CNN
F 2 "" H 6500 3200 50  0001 C CNN
F 3 "" H 6500 3200 50  0001 C CNN
	1    6500 3200
	1    0    0    -1  
$EndComp
$Comp
L Device:L L1
U 1 1 5D680C02
P 4750 3850
F 0 "L1" V 4940 3850 50  0000 C CNN
F 1 "5.6nH " V 4849 3850 50  0000 C CNN
F 2 "Inductor_SMD:L_0402_1005Metric" H 4750 3850 50  0001 C CNN
F 3 "Murata LQW15A" H 4750 3850 50  0001 C CNN
	1    4750 3850
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C1
U 1 1 5D69CCB0
P 5500 3200
F 0 "C1" V 5752 3200 50  0000 C CNN
F 1 "1nF" V 5661 3200 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 5538 3050 50  0001 C CNN
F 3 "~" H 5500 3200 50  0001 C CNN
	1    5500 3200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6900 3650 6900 3850
Wire Wire Line
	6900 3350 6900 3200
Wire Wire Line
	6900 3200 6500 3200
Connection ~ 6500 3200
Wire Wire Line
	5350 3200 5050 3200
Wire Wire Line
	5050 3200 5050 3400
$Comp
L lna-rescue:142-0701-801-dk_Coaxial-Connectors-RF J1
U 1 1 5D6A8AB5
P 4100 3850
F 0 "J1" H 4178 4075 50  0000 C CNN
F 1 "142-0701-801" H 4178 3984 50  0000 C CNN
F 2 "Connector_Coaxial:SMA_Amphenol_132134_Vertical" H 4300 4050 60  0001 L CNN
F 3 "http://www.belfuse.com/resources/Johnson/drawings/dr-1420701801.pdf" H 4300 4150 60  0001 L CNN
F 4 "J502-ND" H 4300 4250 60  0001 L CNN "Digi-Key_PN"
F 5 "142-0701-801" H 4300 4350 60  0001 L CNN "MPN"
F 6 "Connectors, Interconnects" H 4300 4450 60  0001 L CNN "Category"
F 7 "Coaxial Connectors (RF)" H 4300 4550 60  0001 L CNN "Family"
F 8 "http://www.belfuse.com/resources/Johnson/drawings/dr-1420701801.pdf" H 4300 4650 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/cinch-connectivity-solutions-johnson/142-0701-801/J502-ND/35280" H 4300 4750 60  0001 L CNN "DK_Detail_Page"
F 10 "CONN SMA JACK STR 50OHM EDGE MNT" H 4300 4850 60  0001 L CNN "Description"
F 11 "Cinch Connectivity Solutions Johnson" H 4300 4950 60  0001 L CNN "Manufacturer"
F 12 "Active" H 4300 5050 60  0001 L CNN "Status"
	1    4100 3850
	1    0    0    -1  
$EndComp
$Comp
L lna-rescue:142-0701-801-dk_Coaxial-Connectors-RF J2
U 1 1 5D6AD89F
P 8150 3850
F 0 "J2" H 8062 3818 50  0000 R CNN
F 1 "142-0701-801" H 8062 3727 50  0000 R CNN
F 2 "Connector_Coaxial:SMA_Amphenol_132134_Vertical" H 8350 4050 60  0001 L CNN
F 3 "http://www.belfuse.com/resources/Johnson/drawings/dr-1420701801.pdf" H 8350 4150 60  0001 L CNN
F 4 "J502-ND" H 8350 4250 60  0001 L CNN "Digi-Key_PN"
F 5 "142-0701-801" H 8350 4350 60  0001 L CNN "MPN"
F 6 "Connectors, Interconnects" H 8350 4450 60  0001 L CNN "Category"
F 7 "Coaxial Connectors (RF)" H 8350 4550 60  0001 L CNN "Family"
F 8 "http://www.belfuse.com/resources/Johnson/drawings/dr-1420701801.pdf" H 8350 4650 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/cinch-connectivity-solutions-johnson/142-0701-801/J502-ND/35280" H 8350 4750 60  0001 L CNN "DK_Detail_Page"
F 10 "CONN SMA JACK STR 50OHM EDGE MNT" H 8350 4850 60  0001 L CNN "Description"
F 11 "Cinch Connectivity Solutions Johnson" H 8350 4950 60  0001 L CNN "Manufacturer"
F 12 "Active" H 8350 5050 60  0001 L CNN "Status"
	1    8150 3850
	-1   0    0    -1  
$EndComp
Text Notes 1300 7400 0    50   ~ 0
AN11420 NXP Application Note on Powering GPS\n
Wire Wire Line
	4600 3850 4300 3850
$Comp
L power:GNDA #PWR0101
U 1 1 5D6B5D30
P 8150 4650
F 0 "#PWR0101" H 8150 4400 50  0001 C CNN
F 1 "GNDA" H 8155 4477 50  0000 C CNN
F 2 "" H 8150 4650 50  0001 C CNN
F 3 "" H 8150 4650 50  0001 C CNN
	1    8150 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8150 4650 8150 4050
Connection ~ 6900 3850
Wire Wire Line
	5650 3200 5750 3200
Connection ~ 5950 3200
Wire Wire Line
	5950 3200 6500 3200
Connection ~ 5750 3200
Wire Wire Line
	5750 3200 5950 3200
$Comp
L lna-rescue:BGU8009 U1
U 1 1 5D6DBAD8
P 5850 3850
F 0 "U1" H 6344 3921 50  0000 L CNN
F 1 "BGU8009" H 6344 3830 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:XSON-NXP-6" H 5850 3850 50  0001 C CNN
F 3 "" H 5850 3850 50  0001 C CNN
	1    5850 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 3350 5950 3200
Wire Wire Line
	5750 3350 5750 3200
Wire Wire Line
	5950 4300 5950 4450
Wire Wire Line
	5950 4450 5750 4450
Wire Wire Line
	5750 4450 5750 4300
Connection ~ 5950 4450
Wire Wire Line
	5950 4450 5950 4650
Wire Wire Line
	6300 3850 6900 3850
Wire Wire Line
	4900 3850 5450 3850
$Comp
L lna-rescue:Bi_ESD_Diode D1
U 1 1 5D6E5A3B
P 6900 4400
F 0 "D1" V 6829 4503 50  0000 L CNN
F 1 "Bi_ESD_Diode" V 6920 4503 50  0000 L CNN
F 2 "lna:SOIC-2" H 6900 4400 50  0001 C CNN
F 3 "" H 6900 4400 50  0001 C CNN
	1    6900 4400
	0    1    1    0   
$EndComp
$Comp
L power:GNDA #PWR02
U 1 1 5D6E5F67
P 6900 4650
F 0 "#PWR02" H 6900 4400 50  0001 C CNN
F 1 "GNDA" H 6905 4477 50  0000 C CNN
F 2 "" H 6900 4650 50  0001 C CNN
F 3 "" H 6900 4650 50  0001 C CNN
	1    6900 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 4650 6900 4600
Wire Wire Line
	6900 4150 6900 3850
Wire Wire Line
	4100 4600 4100 4050
$Comp
L power:GNDA #PWR0102
U 1 1 5D6B61DB
P 4100 4600
F 0 "#PWR0102" H 4100 4350 50  0001 C CNN
F 1 "GNDA" H 4105 4427 50  0000 C CNN
F 2 "" H 4100 4600 50  0001 C CNN
F 3 "" H 4100 4600 50  0001 C CNN
	1    4100 4600
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR0103
U 1 1 5D6EE6A7
P 5050 3400
F 0 "#PWR0103" H 5050 3150 50  0001 C CNN
F 1 "GNDA" H 5055 3227 50  0000 C CNN
F 2 "" H 5050 3400 50  0001 C CNN
F 3 "" H 5050 3400 50  0001 C CNN
	1    5050 3400
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Male J3
U 1 1 5D6F996D
P 3550 7150
F 0 "J3" H 3658 7331 50  0000 C CNN
F 1 "Conn_01x01_Male" H 3658 7240 50  0000 C CNN
F 2 "RF_Shielding:Laird_Technologies_BMI-S-101_13.66x12.70mm" H 3550 7150 50  0001 C CNN
F 3 "~" H 3550 7150 50  0001 C CNN
	1    3550 7150
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR0104
U 1 1 5D6F2F18
P 3900 7250
F 0 "#PWR0104" H 3900 7000 50  0001 C CNN
F 1 "GNDA" H 3905 7077 50  0000 C CNN
F 2 "" H 3900 7250 50  0001 C CNN
F 3 "" H 3900 7250 50  0001 C CNN
	1    3900 7250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 7150 3900 7150
Wire Wire Line
	3900 7150 3900 7250
$Comp
L Mechanical:MountingHole_Pad H1
U 1 1 5D70E3CC
P 4200 7300
F 0 "H1" H 4300 7349 50  0000 L CNN
F 1 "MountingHole_Pad" H 4300 7258 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_Via" H 4200 7300 50  0001 C CNN
F 3 "~" H 4200 7300 50  0001 C CNN
	1    4200 7300
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H2
U 1 1 5D70EDF1
P 4500 7300
F 0 "H2" H 4600 7349 50  0000 L CNN
F 1 "MountingHole_Pad" H 4600 7258 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_Via" H 4500 7300 50  0001 C CNN
F 3 "~" H 4500 7300 50  0001 C CNN
	1    4500 7300
	1    0    0    -1  
$EndComp
NoConn ~ 4200 7400
NoConn ~ 4500 7400
$Comp
L Device:LED D2
U 1 1 5D9FB079
P 9100 3750
F 0 "D2" V 9047 3829 50  0000 L CNN
F 1 "PWR" V 9138 3829 50  0000 L CNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 9100 3750 50  0001 C CNN
F 3 "~" H 9100 3750 50  0001 C CNN
	1    9100 3750
	0    1    1    0   
$EndComp
$Comp
L Device:R R1
U 1 1 5D9FC178
P 9100 3400
F 0 "R1" H 9170 3446 50  0000 L CNN
F 1 "1K" H 9170 3355 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 9030 3400 50  0001 C CNN
F 3 "~" H 9100 3400 50  0001 C CNN
	1    9100 3400
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR0105
U 1 1 5DA0533E
P 9100 3950
F 0 "#PWR0105" H 9100 3700 50  0001 C CNN
F 1 "GNDA" H 9105 3777 50  0000 C CNN
F 2 "" H 9100 3950 50  0001 C CNN
F 3 "" H 9100 3950 50  0001 C CNN
	1    9100 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	9100 3950 9100 3900
Wire Wire Line
	9100 3600 9100 3550
Wire Wire Line
	6900 3850 7950 3850
Wire Wire Line
	6900 3200 9100 3200
Wire Wire Line
	9100 3200 9100 3250
Connection ~ 6900 3200
$EndSCHEMATC
