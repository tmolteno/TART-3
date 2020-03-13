EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 2
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
L Connector:8P8C J3
U 1 1 5E59977B
P 3600 3650
F 0 "J3" H 3657 4317 50  0000 C CNN
F 1 "8P8C" H 3657 4226 50  0000 C CNN
F 2 "Connector_RJ:RJ45_Amphenol_54602-x08_Horizontal" V 3600 3675 50  0001 C CNN
F 3 "~" V 3600 3675 50  0001 C CNN
	1    3600 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 3250 5900 3250
Wire Wire Line
	4000 3350 5900 3350
Wire Wire Line
	4000 3450 5900 3450
Wire Wire Line
	4000 3550 5900 3550
Wire Wire Line
	5900 3650 4000 3650
Wire Wire Line
	4000 3750 5900 3750
Wire Wire Line
	5900 3850 4000 3850
Wire Wire Line
	4000 3950 5900 3950
Text Label 4550 3250 0    50   ~ 0
A1
Text Label 4550 3350 0    50   ~ 0
A2
Text Label 4550 3450 0    50   ~ 0
A3
Text Label 4550 3550 0    50   ~ 0
A4
Text Label 4550 3650 0    50   ~ 0
A5
Text Label 4550 3750 0    50   ~ 0
A6
Text Label 4550 3850 0    50   ~ 0
A7
Text Label 4550 3950 0    50   ~ 0
A8
Wire Bus Line
	6000 3000 6900 3000
Entry Wire Line
	5900 3250 6000 3150
Entry Wire Line
	5900 3350 6000 3250
Entry Wire Line
	5900 3450 6000 3350
Entry Wire Line
	5900 3550 6000 3450
Entry Wire Line
	5900 3650 6000 3550
Entry Wire Line
	5900 3750 6000 3650
Entry Wire Line
	5900 3850 6000 3750
Entry Wire Line
	5900 3950 6000 3850
Wire Bus Line
	6000 3000 6000 3950
Text HLabel 6900 3000 2    50   Input ~ 0
B[1..8]
Text Label 6250 3000 0    50   ~ 0
A[1..8]
$EndSCHEMATC
