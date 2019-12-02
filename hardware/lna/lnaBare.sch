EESchema Schematic File Version 4
LIBS:lnaBare-cache
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
P 6000 3250
F 0 "L2" H 6053 3296 50  0000 L CNN
F 1 "100nH" H 6053 3205 50  0000 L CNN
F 2 "Inductor_SMD:L_0402_1005Metric" H 6000 3250 50  0001 C CNN
F 3 "Murata LQG15HS" H 6000 3250 50  0001 C CNN
	1    6000 3250
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR03
U 1 1 5D67EEDE
P 5050 4400
F 0 "#PWR03" H 5050 4150 50  0001 C CNN
F 1 "GNDA" H 5055 4227 50  0000 C CNN
F 2 "" H 5050 4400 50  0001 C CNN
F 3 "" H 5050 4400 50  0001 C CNN
	1    5050 4400
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR04
U 1 1 5D67FC09
P 5600 2950
F 0 "#PWR04" H 5600 2800 50  0001 C CNN
F 1 "VCC" H 5617 3123 50  0000 C CNN
F 2 "" H 5600 2950 50  0001 C CNN
F 3 "" H 5600 2950 50  0001 C CNN
	1    5600 2950
	1    0    0    -1  
$EndComp
$Comp
L Device:L L1
U 1 1 5D680C02
P 3850 3600
F 0 "L1" V 4040 3600 50  0000 C CNN
F 1 "5.6nH " V 3949 3600 50  0000 C CNN
F 2 "Inductor_SMD:L_0402_1005Metric" H 3850 3600 50  0001 C CNN
F 3 "Murata LQW15A" H 3850 3600 50  0001 C CNN
	1    3850 3600
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C1
U 1 1 5D69CCB0
P 4600 2950
F 0 "C1" V 4852 2950 50  0000 C CNN
F 1 "1nF" V 4761 2950 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4638 2800 50  0001 C CNN
F 3 "~" H 4600 2950 50  0001 C CNN
	1    4600 2950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6000 3400 6000 3600
Wire Wire Line
	6000 3100 6000 2950
Wire Wire Line
	6000 2950 5600 2950
Connection ~ 5600 2950
Wire Wire Line
	4450 2950 4150 2950
Wire Wire Line
	4150 2950 4150 3150
$Comp
L lna-rescue:142-0701-801-dk_Coaxial-Connectors-RF J1
U 1 1 5D6A8AB5
P 3200 3600
F 0 "J1" H 3278 3825 50  0000 C CNN
F 1 "142-0701-801" H 3278 3734 50  0000 C CNN
F 2 "Connector_Coaxial:SMA_Amphenol_132134_Vertical" H 3400 3800 60  0001 L CNN
F 3 "http://www.belfuse.com/resources/Johnson/drawings/dr-1420701801.pdf" H 3400 3900 60  0001 L CNN
F 4 "J502-ND" H 3400 4000 60  0001 L CNN "Digi-Key_PN"
F 5 "142-0701-801" H 3400 4100 60  0001 L CNN "MPN"
F 6 "Connectors, Interconnects" H 3400 4200 60  0001 L CNN "Category"
F 7 "Coaxial Connectors (RF)" H 3400 4300 60  0001 L CNN "Family"
F 8 "http://www.belfuse.com/resources/Johnson/drawings/dr-1420701801.pdf" H 3400 4400 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/cinch-connectivity-solutions-johnson/142-0701-801/J502-ND/35280" H 3400 4500 60  0001 L CNN "DK_Detail_Page"
F 10 "CONN SMA JACK STR 50OHM EDGE MNT" H 3400 4600 60  0001 L CNN "Description"
F 11 "Cinch Connectivity Solutions Johnson" H 3400 4700 60  0001 L CNN "Manufacturer"
F 12 "Active" H 3400 4800 60  0001 L CNN "Status"
	1    3200 3600
	1    0    0    -1  
$EndComp
$Comp
L lna-rescue:142-0701-801-dk_Coaxial-Connectors-RF J2
U 1 1 5D6AD89F
P 7250 3600
F 0 "J2" H 7162 3568 50  0000 R CNN
F 1 "142-0701-801" H 7162 3477 50  0000 R CNN
F 2 "Connector_Coaxial:SMA_Amphenol_132134_Vertical" H 7450 3800 60  0001 L CNN
F 3 "http://www.belfuse.com/resources/Johnson/drawings/dr-1420701801.pdf" H 7450 3900 60  0001 L CNN
F 4 "J502-ND" H 7450 4000 60  0001 L CNN "Digi-Key_PN"
F 5 "142-0701-801" H 7450 4100 60  0001 L CNN "MPN"
F 6 "Connectors, Interconnects" H 7450 4200 60  0001 L CNN "Category"
F 7 "Coaxial Connectors (RF)" H 7450 4300 60  0001 L CNN "Family"
F 8 "http://www.belfuse.com/resources/Johnson/drawings/dr-1420701801.pdf" H 7450 4400 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/cinch-connectivity-solutions-johnson/142-0701-801/J502-ND/35280" H 7450 4500 60  0001 L CNN "DK_Detail_Page"
F 10 "CONN SMA JACK STR 50OHM EDGE MNT" H 7450 4600 60  0001 L CNN "Description"
F 11 "Cinch Connectivity Solutions Johnson" H 7450 4700 60  0001 L CNN "Manufacturer"
F 12 "Active" H 7450 4800 60  0001 L CNN "Status"
	1    7250 3600
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3700 3600 3400 3600
$Comp
L power:GNDA #PWR0101
U 1 1 5D6B5D30
P 7250 4400
F 0 "#PWR0101" H 7250 4150 50  0001 C CNN
F 1 "GNDA" H 7255 4227 50  0000 C CNN
F 2 "" H 7250 4400 50  0001 C CNN
F 3 "" H 7250 4400 50  0001 C CNN
	1    7250 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 4400 7250 3800
Connection ~ 6000 3600
Wire Wire Line
	4750 2950 4850 2950
Connection ~ 5050 2950
Wire Wire Line
	5050 2950 5600 2950
Connection ~ 4850 2950
Wire Wire Line
	4850 2950 5050 2950
$Comp
L lna-rescue:BGU8009 U1
U 1 1 5D6DBAD8
P 4950 3600
F 0 "U1" H 5444 3671 50  0000 L CNN
F 1 "BGU8009" H 5444 3580 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:XSON-NXP-6" H 4950 3600 50  0001 C CNN
F 3 "" H 4950 3600 50  0001 C CNN
	1    4950 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 3100 5050 2950
Wire Wire Line
	4850 3100 4850 2950
Wire Wire Line
	5050 4050 5050 4200
Wire Wire Line
	5050 4200 4850 4200
Wire Wire Line
	4850 4200 4850 4050
Connection ~ 5050 4200
Wire Wire Line
	5050 4200 5050 4400
Wire Wire Line
	5400 3600 6000 3600
Wire Wire Line
	4000 3600 4550 3600
$Comp
L lna-rescue:Bi_ESD_Diode D1
U 1 1 5D6E5A3B
P 6000 4150
F 0 "D1" V 5929 4253 50  0000 L CNN
F 1 "Bi_ESD_Diode" V 6020 4253 50  0000 L CNN
F 2 "lna:SOIC-2" H 6000 4150 50  0001 C CNN
F 3 "" H 6000 4150 50  0001 C CNN
	1    6000 4150
	0    1    1    0   
$EndComp
$Comp
L power:GNDA #PWR02
U 1 1 5D6E5F67
P 6000 4400
F 0 "#PWR02" H 6000 4150 50  0001 C CNN
F 1 "GNDA" H 6005 4227 50  0000 C CNN
F 2 "" H 6000 4400 50  0001 C CNN
F 3 "" H 6000 4400 50  0001 C CNN
	1    6000 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 4400 6000 4350
Wire Wire Line
	6000 3900 6000 3600
Wire Wire Line
	3200 4350 3200 3800
$Comp
L power:GNDA #PWR0102
U 1 1 5D6B61DB
P 3200 4350
F 0 "#PWR0102" H 3200 4100 50  0001 C CNN
F 1 "GNDA" H 3205 4177 50  0000 C CNN
F 2 "" H 3200 4350 50  0001 C CNN
F 3 "" H 3200 4350 50  0001 C CNN
	1    3200 4350
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR0103
U 1 1 5D6EE6A7
P 4150 3150
F 0 "#PWR0103" H 4150 2900 50  0001 C CNN
F 1 "GNDA" H 4155 2977 50  0000 C CNN
F 2 "" H 4150 3150 50  0001 C CNN
F 3 "" H 4150 3150 50  0001 C CNN
	1    4150 3150
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D2
U 1 1 5D9FB079
P 8200 3500
F 0 "D2" V 8147 3579 50  0000 L CNN
F 1 "PWR" V 8238 3579 50  0000 L CNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 8200 3500 50  0001 C CNN
F 3 "~" H 8200 3500 50  0001 C CNN
	1    8200 3500
	0    1    1    0   
$EndComp
$Comp
L Device:R R1
U 1 1 5D9FC178
P 8200 3150
F 0 "R1" H 8270 3196 50  0000 L CNN
F 1 "1K" H 8270 3105 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 8130 3150 50  0001 C CNN
F 3 "~" H 8200 3150 50  0001 C CNN
	1    8200 3150
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR0105
U 1 1 5DA0533E
P 8200 3700
F 0 "#PWR0105" H 8200 3450 50  0001 C CNN
F 1 "GNDA" H 8205 3527 50  0000 C CNN
F 2 "" H 8200 3700 50  0001 C CNN
F 3 "" H 8200 3700 50  0001 C CNN
	1    8200 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 3700 8200 3650
Wire Wire Line
	8200 3350 8200 3300
Wire Wire Line
	6000 3600 7050 3600
Wire Wire Line
	6000 2950 8200 2950
Wire Wire Line
	8200 2950 8200 3000
Connection ~ 6000 2950
$EndSCHEMATC
