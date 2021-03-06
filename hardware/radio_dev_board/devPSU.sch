EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 6
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
L Device:Ferrite_Bead FB?
U 1 1 5DCFE299
P 5550 3400
AR Path="/5DCC82D4/5DCFE299" Ref="FB?"  Part="1" 
AR Path="/5DCCA0EA/5DCFE299" Ref="FB1"  Part="1" 
F 0 "FB1" H 5687 3446 50  0000 L CNN
F 1 "600Ohm" H 5687 3355 50  0000 L CNN
F 2 "Inductor_SMD:L_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 5480 3400 50  0001 C CNN
F 3 "~" H 5550 3400 50  0001 C CNN
	1    5550 3400
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5DCFE29F
P 5200 2000
AR Path="/5DCC82D4/5DCFE29F" Ref="#PWR?"  Part="1" 
AR Path="/5DCCA0EA/5DCFE29F" Ref="#PWR049"  Part="1" 
F 0 "#PWR049" H 5200 1850 50  0001 C CNN
F 1 "+5V" H 5215 2173 50  0000 C CNN
F 2 "" H 5200 2000 50  0001 C CNN
F 3 "" H 5200 2000 50  0001 C CNN
	1    5200 2000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DCFE2A5
P 5550 5700
AR Path="/5DCC82D4/5DCFE2A5" Ref="#PWR?"  Part="1" 
AR Path="/5DCCA0EA/5DCFE2A5" Ref="#PWR051"  Part="1" 
F 0 "#PWR051" H 5550 5450 50  0001 C CNN
F 1 "GND" H 5555 5527 50  0000 C CNN
F 2 "" H 5550 5700 50  0001 C CNN
F 3 "" H 5550 5700 50  0001 C CNN
	1    5550 5700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5DCFE2AB
P 5550 4350
AR Path="/5DCC82D4/5DCFE2AB" Ref="C?"  Part="1" 
AR Path="/5DCCA0EA/5DCFE2AB" Ref="C17"  Part="1" 
F 0 "C17" H 5665 4396 50  0000 L CNN
F 1 "0.01" H 5665 4305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5588 4200 50  0001 C CNN
F 3 "~" H 5550 4350 50  0001 C CNN
	1    5550 4350
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 5DCFE2B1
P 7500 3450
AR Path="/5DCC82D4/5DCFE2B1" Ref="D?"  Part="1" 
AR Path="/5DCCA0EA/5DCFE2B1" Ref="D11"  Part="1" 
F 0 "D11" V 7539 3333 50  0000 R CNN
F 1 "5V" V 7448 3333 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7500 3450 50  0001 C CNN
F 3 "~" H 7500 3450 50  0001 C CNN
	1    7500 3450
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5DCFE2B7
P 7500 4000
AR Path="/5DCC82D4/5DCFE2B7" Ref="R?"  Part="1" 
AR Path="/5DCCA0EA/5DCFE2B7" Ref="R16"  Part="1" 
F 0 "R16" H 7430 3954 50  0000 R CNN
F 1 "1K" H 7430 4045 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 7430 4000 50  0001 C CNN
F 3 "~" H 7500 4000 50  0001 C CNN
	1    7500 4000
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DCFE2BD
P 7500 4450
AR Path="/5DCC82D4/5DCFE2BD" Ref="#PWR?"  Part="1" 
AR Path="/5DCCA0EA/5DCFE2BD" Ref="#PWR056"  Part="1" 
F 0 "#PWR056" H 7500 4200 50  0001 C CNN
F 1 "GND" H 7505 4277 50  0000 C CNN
F 2 "" H 7500 4450 50  0001 C CNN
F 3 "" H 7500 4450 50  0001 C CNN
	1    7500 4450
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Schottky D?
U 1 1 5DCFE2C3
P 5550 2900
AR Path="/5DCC82D4/5DCFE2C3" Ref="D?"  Part="1" 
AR Path="/5DCCA0EA/5DCFE2C3" Ref="D9"  Part="1" 
F 0 "D9" V 5504 2979 50  0000 L CNN
F 1 "D_Schottky" V 5595 2979 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-123F" H 5550 2900 50  0001 C CNN
F 3 "~" H 5550 2900 50  0001 C CNN
	1    5550 2900
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 5DCFE2C9
P 5300 2900
AR Path="/5DCC82D4/5DCFE2C9" Ref="C?"  Part="1" 
AR Path="/5DCCA0EA/5DCFE2C9" Ref="C16"  Part="1" 
F 0 "C16" H 5415 2946 50  0000 L CNN
F 1 "0.1" H 5415 2855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5338 2750 50  0001 C CNN
F 3 "~" H 5300 2900 50  0001 C CNN
	1    5300 2900
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5DCFE2CF
P 7500 3100
AR Path="/5DCC82D4/5DCFE2CF" Ref="#PWR?"  Part="1" 
AR Path="/5DCCA0EA/5DCFE2CF" Ref="#PWR055"  Part="1" 
F 0 "#PWR055" H 7500 2950 50  0001 C CNN
F 1 "+5V" H 7515 3273 50  0000 C CNN
F 2 "" H 7500 3100 50  0001 C CNN
F 3 "" H 7500 3100 50  0001 C CNN
	1    7500 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5DCFE2D5
P 5000 2900
AR Path="/5DCC82D4/5DCFE2D5" Ref="C?"  Part="1" 
AR Path="/5DCCA0EA/5DCFE2D5" Ref="C15"  Part="1" 
F 0 "C15" H 5115 2946 50  0000 L CNN
F 1 "4u7" H 5115 2855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5038 2750 50  0001 C CNN
F 3 "~" H 5000 2900 50  0001 C CNN
	1    5000 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 5700 5550 4500
Wire Wire Line
	5550 4200 5550 3650
Wire Wire Line
	5550 3250 5550 3050
Wire Wire Line
	5200 2000 5200 2450
Wire Wire Line
	5200 2450 5300 2450
Wire Wire Line
	5550 2450 5550 2750
Wire Wire Line
	5300 2750 5300 2450
Connection ~ 5300 2450
Wire Wire Line
	5300 2450 5550 2450
Wire Wire Line
	5200 2450 5000 2450
Wire Wire Line
	5000 2450 5000 2750
Connection ~ 5200 2450
$Comp
L power:GND #PWR?
U 1 1 5DCFE2E7
P 5150 3200
AR Path="/5DCC82D4/5DCFE2E7" Ref="#PWR?"  Part="1" 
AR Path="/5DCCA0EA/5DCFE2E7" Ref="#PWR048"  Part="1" 
F 0 "#PWR048" H 5150 2950 50  0001 C CNN
F 1 "GND" H 5155 3027 50  0000 C CNN
F 2 "" H 5150 3200 50  0001 C CNN
F 3 "" H 5150 3200 50  0001 C CNN
	1    5150 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 3050 5000 3150
Wire Wire Line
	5000 3150 5150 3150
Wire Wire Line
	5300 3150 5300 3050
Wire Wire Line
	5150 3200 5150 3150
Connection ~ 5150 3150
Wire Wire Line
	5150 3150 5300 3150
Connection ~ 5550 3650
Wire Wire Line
	5550 3650 5550 3550
Wire Wire Line
	7500 4450 7500 4150
Wire Wire Line
	7500 3850 7500 3600
Wire Wire Line
	7500 3300 7500 3100
$Comp
L power:GND #PWR?
U 1 1 5DCFE2F8
P 3300 5700
AR Path="/5DCC82D4/5DCFE2F8" Ref="#PWR?"  Part="1" 
AR Path="/5DCCA0EA/5DCFE2F8" Ref="#PWR042"  Part="1" 
F 0 "#PWR042" H 3300 5450 50  0001 C CNN
F 1 "GND" H 3305 5527 50  0000 C CNN
F 2 "" H 3300 5700 50  0001 C CNN
F 3 "" H 3300 5700 50  0001 C CNN
	1    3300 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 5700 3300 4550
Connection ~ 3300 4550
Wire Wire Line
	3300 4550 3300 4300
Wire Wire Line
	3050 4550 3050 4300
Wire Wire Line
	3050 4550 3300 4550
Wire Wire Line
	4350 3650 4350 2800
Wire Wire Line
	4350 2800 4000 2800
Wire Wire Line
	4350 3650 5550 3650
Wire Wire Line
	4150 3850 6150 3850
Wire Wire Line
	3900 3500 4150 3500
Wire Wire Line
	4250 3950 6150 3950
Wire Wire Line
	4250 3300 3900 3300
$Comp
L Device:R R?
U 1 1 5DCFE30A
P 4000 5100
AR Path="/5DCC82D4/5DCFE30A" Ref="R?"  Part="1" 
AR Path="/5DCCA0EA/5DCFE30A" Ref="R14"  Part="1" 
F 0 "R14" H 3930 5054 50  0000 R CNN
F 1 "5.11K" H 3930 5145 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 3930 5100 50  0001 C CNN
F 3 "~" H 4000 5100 50  0001 C CNN
	1    4000 5100
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5DCFE310
P 4400 5100
AR Path="/5DCC82D4/5DCFE310" Ref="R?"  Part="1" 
AR Path="/5DCCA0EA/5DCFE310" Ref="R15"  Part="1" 
F 0 "R15" H 4330 5054 50  0000 R CNN
F 1 "5.11K" H 4330 5145 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 4330 5100 50  0001 C CNN
F 3 "~" H 4400 5100 50  0001 C CNN
	1    4400 5100
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DCFE316
P 4000 5700
AR Path="/5DCC82D4/5DCFE316" Ref="#PWR?"  Part="1" 
AR Path="/5DCCA0EA/5DCFE316" Ref="#PWR044"  Part="1" 
F 0 "#PWR044" H 4000 5450 50  0001 C CNN
F 1 "GND" H 4005 5527 50  0000 C CNN
F 2 "" H 4000 5700 50  0001 C CNN
F 3 "" H 4000 5700 50  0001 C CNN
	1    4000 5700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DCFE31C
P 4400 5700
AR Path="/5DCC82D4/5DCFE31C" Ref="#PWR?"  Part="1" 
AR Path="/5DCCA0EA/5DCFE31C" Ref="#PWR046"  Part="1" 
F 0 "#PWR046" H 4400 5450 50  0001 C CNN
F 1 "GND" H 4405 5527 50  0000 C CNN
F 2 "" H 4400 5700 50  0001 C CNN
F 3 "" H 4400 5700 50  0001 C CNN
	1    4400 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 3100 4000 3100
Wire Wire Line
	4000 3100 4000 4950
Wire Wire Line
	3900 3000 4100 3000
Wire Wire Line
	4100 3000 4100 4750
Wire Wire Line
	4100 4750 4400 4750
Wire Wire Line
	4400 4750 4400 4950
Wire Wire Line
	4400 5250 4400 5700
Wire Wire Line
	4000 5250 4000 5700
Wire Wire Line
	4150 3500 4150 3600
Wire Wire Line
	4250 3300 4250 3400
Wire Wire Line
	3900 3400 4250 3400
Connection ~ 4250 3400
NoConn ~ 3900 3900
NoConn ~ 3900 4000
$Comp
L radioDev-rescue:USB_C_Receptacle_USB2.0V1-Connector J?
U 1 1 5DCFE330
P 3300 3400
AR Path="/5DCC82D4/5DCFE330" Ref="J?"  Part="1" 
AR Path="/5DCCA0EA/5DCFE330" Ref="J4"  Part="1" 
AR Path="/5DCFE330" Ref="J4"  Part="1" 
F 0 "J4" H 3407 4267 50  0000 C CNN
F 1 "USB_C_Receptacle_USB2.0V1" H 3407 4176 50  0000 C CNN
F 2 "Connector_USB:TYPE-C-31-M-12" H 3450 3400 50  0001 C CNN
F 3 "https://www.usb.org/sites/default/files/documents/usb_type-c.zip" H 3450 3400 50  0001 C CNN
	1    3300 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 4550 3400 4550
Wire Wire Line
	3400 4550 3400 4300
Wire Wire Line
	3900 2900 4000 2900
Wire Wire Line
	4000 2900 4000 2800
Connection ~ 4000 2800
Wire Wire Line
	4000 2800 3900 2800
Wire Wire Line
	4250 3400 4250 3950
Wire Wire Line
	3900 3600 4150 3600
Connection ~ 4150 3600
Wire Wire Line
	4150 3600 4150 3850
Text HLabel 6150 3850 2    50   Input ~ 0
D+
Text HLabel 6150 3950 2    50   Input ~ 0
D-
$Comp
L power:+5V #PWR?
U 1 1 5DD07591
P 10300 5800
AR Path="/5DCC82D4/5DD07591" Ref="#PWR?"  Part="1" 
AR Path="/5DCCA0EA/5DD07591" Ref="#PWR067"  Part="1" 
F 0 "#PWR067" H 10300 5650 50  0001 C CNN
F 1 "+5V" H 10315 5973 50  0000 C CNN
F 2 "" H 10300 5800 50  0001 C CNN
F 3 "" H 10300 5800 50  0001 C CNN
	1    10300 5800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DD07597
P 10600 6100
AR Path="/5DCC82D4/5DD07597" Ref="#PWR?"  Part="1" 
AR Path="/5DCCA0EA/5DD07597" Ref="#PWR068"  Part="1" 
F 0 "#PWR068" H 10600 5850 50  0001 C CNN
F 1 "GND" H 10605 5927 50  0000 C CNN
F 2 "" H 10600 6100 50  0001 C CNN
F 3 "" H 10600 6100 50  0001 C CNN
	1    10600 6100
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG?
U 1 1 5DD0759D
P 10600 5800
AR Path="/5DCC82D4/5DD0759D" Ref="#FLG?"  Part="1" 
AR Path="/5DCCA0EA/5DD0759D" Ref="#FLG03"  Part="1" 
F 0 "#FLG03" H 10600 5875 50  0001 C CNN
F 1 "PWR_FLAG" H 10600 5973 50  0000 C CNN
F 2 "" H 10600 5800 50  0001 C CNN
F 3 "~" H 10600 5800 50  0001 C CNN
	1    10600 5800
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG?
U 1 1 5DD075A3
P 10300 6100
AR Path="/5DCC82D4/5DD075A3" Ref="#FLG?"  Part="1" 
AR Path="/5DCCA0EA/5DD075A3" Ref="#FLG02"  Part="1" 
F 0 "#FLG02" H 10300 6175 50  0001 C CNN
F 1 "PWR_FLAG" H 10300 6273 50  0000 C CNN
F 2 "" H 10300 6100 50  0001 C CNN
F 3 "~" H 10300 6100 50  0001 C CNN
	1    10300 6100
	-1   0    0    1   
$EndComp
Wire Wire Line
	10300 6100 10300 5800
Wire Wire Line
	10600 6100 10600 5800
$Comp
L Regulator_Linear:LM1117-3.3 U10
U 1 1 5DD6E0A8
P 8850 3500
F 0 "U10" H 8850 3742 50  0000 C CNN
F 1 "LM1117-3.3" H 8850 3651 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 8850 3500 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm1117.pdf" H 8850 3500 50  0001 C CNN
	1    8850 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C21
U 1 1 5DD6EBFE
P 8350 3750
F 0 "C21" H 8465 3796 50  0000 L CNN
F 1 "0.1" H 8465 3705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 8388 3600 50  0001 C CNN
F 3 "~" H 8350 3750 50  0001 C CNN
	1    8350 3750
	1    0    0    -1  
$EndComp
$Comp
L Device:C C20
U 1 1 5DD6EFDB
P 8000 3750
F 0 "C20" H 8115 3796 50  0000 L CNN
F 1 "10" H 8115 3705 50  0000 L CNN
F 2 "Capacitor_SMD:C_1210_3225Metric_Pad1.42x2.65mm_HandSolder" H 8038 3600 50  0001 C CNN
F 3 "~" H 8000 3750 50  0001 C CNN
	1    8000 3750
	1    0    0    -1  
$EndComp
$Comp
L Device:C C22
U 1 1 5DD6F25F
P 9300 3750
F 0 "C22" H 9415 3796 50  0000 L CNN
F 1 "0.1" H 9415 3705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 9338 3600 50  0001 C CNN
F 3 "~" H 9300 3750 50  0001 C CNN
	1    9300 3750
	1    0    0    -1  
$EndComp
$Comp
L Device:C C23
U 1 1 5DD6F706
P 9650 3750
F 0 "C23" H 9765 3796 50  0000 L CNN
F 1 "10" H 9765 3705 50  0000 L CNN
F 2 "Capacitor_SMD:C_1210_3225Metric_Pad1.42x2.65mm_HandSolder" H 9688 3600 50  0001 C CNN
F 3 "~" H 9650 3750 50  0001 C CNN
	1    9650 3750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DD6FB23
P 8000 4400
AR Path="/5DCC82D4/5DD6FB23" Ref="#PWR?"  Part="1" 
AR Path="/5DCCA0EA/5DD6FB23" Ref="#PWR058"  Part="1" 
F 0 "#PWR058" H 8000 4150 50  0001 C CNN
F 1 "GND" H 8005 4227 50  0000 C CNN
F 2 "" H 8000 4400 50  0001 C CNN
F 3 "" H 8000 4400 50  0001 C CNN
	1    8000 4400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DD7001D
P 8350 4400
AR Path="/5DCC82D4/5DD7001D" Ref="#PWR?"  Part="1" 
AR Path="/5DCCA0EA/5DD7001D" Ref="#PWR059"  Part="1" 
F 0 "#PWR059" H 8350 4150 50  0001 C CNN
F 1 "GND" H 8355 4227 50  0000 C CNN
F 2 "" H 8350 4400 50  0001 C CNN
F 3 "" H 8350 4400 50  0001 C CNN
	1    8350 4400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DD7033C
P 8850 4400
AR Path="/5DCC82D4/5DD7033C" Ref="#PWR?"  Part="1" 
AR Path="/5DCCA0EA/5DD7033C" Ref="#PWR060"  Part="1" 
F 0 "#PWR060" H 8850 4150 50  0001 C CNN
F 1 "GND" H 8855 4227 50  0000 C CNN
F 2 "" H 8850 4400 50  0001 C CNN
F 3 "" H 8850 4400 50  0001 C CNN
	1    8850 4400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DD70719
P 9300 4400
AR Path="/5DCC82D4/5DD70719" Ref="#PWR?"  Part="1" 
AR Path="/5DCCA0EA/5DD70719" Ref="#PWR061"  Part="1" 
F 0 "#PWR061" H 9300 4150 50  0001 C CNN
F 1 "GND" H 9305 4227 50  0000 C CNN
F 2 "" H 9300 4400 50  0001 C CNN
F 3 "" H 9300 4400 50  0001 C CNN
	1    9300 4400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DD70A04
P 9650 4400
AR Path="/5DCC82D4/5DD70A04" Ref="#PWR?"  Part="1" 
AR Path="/5DCCA0EA/5DD70A04" Ref="#PWR063"  Part="1" 
F 0 "#PWR063" H 9650 4150 50  0001 C CNN
F 1 "GND" H 9655 4227 50  0000 C CNN
F 2 "" H 9650 4400 50  0001 C CNN
F 3 "" H 9650 4400 50  0001 C CNN
	1    9650 4400
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5DD7272D
P 8000 3100
AR Path="/5DCC82D4/5DD7272D" Ref="#PWR?"  Part="1" 
AR Path="/5DCCA0EA/5DD7272D" Ref="#PWR057"  Part="1" 
F 0 "#PWR057" H 8000 2950 50  0001 C CNN
F 1 "+5V" H 8015 3273 50  0000 C CNN
F 2 "" H 8000 3100 50  0001 C CNN
F 3 "" H 8000 3100 50  0001 C CNN
	1    8000 3100
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR062
U 1 1 5DD73092
P 9650 3100
F 0 "#PWR062" H 9650 2950 50  0001 C CNN
F 1 "+3.3V" H 9665 3273 50  0000 C CNN
F 2 "" H 9650 3100 50  0001 C CNN
F 3 "" H 9650 3100 50  0001 C CNN
	1    9650 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 3100 8000 3500
Wire Wire Line
	8550 3500 8350 3500
Connection ~ 8000 3500
Wire Wire Line
	8000 3500 8000 3600
Wire Wire Line
	8350 3600 8350 3500
Connection ~ 8350 3500
Wire Wire Line
	8350 3500 8000 3500
Wire Wire Line
	8350 4400 8350 3900
Wire Wire Line
	8000 4400 8000 3900
Wire Wire Line
	8850 4400 8850 3800
Wire Wire Line
	9300 4400 9300 3900
Wire Wire Line
	9650 4400 9650 3900
Wire Wire Line
	9650 3600 9650 3500
Wire Wire Line
	9150 3500 9300 3500
Connection ~ 9650 3500
Wire Wire Line
	9650 3500 9650 3100
Wire Wire Line
	9300 3600 9300 3500
Connection ~ 9300 3500
Wire Wire Line
	9300 3500 9650 3500
$Comp
L power:+3.3V #PWR064
U 1 1 5DD81075
P 10050 5800
F 0 "#PWR064" H 10050 5650 50  0001 C CNN
F 1 "+3.3V" H 10065 5973 50  0000 C CNN
F 2 "" H 10050 5800 50  0001 C CNN
F 3 "" H 10050 5800 50  0001 C CNN
	1    10050 5800
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG?
U 1 1 5DD81A3D
P 10050 6100
AR Path="/5DCC82D4/5DD81A3D" Ref="#FLG?"  Part="1" 
AR Path="/5DCCA0EA/5DD81A3D" Ref="#FLG01"  Part="1" 
F 0 "#FLG01" H 10050 6175 50  0001 C CNN
F 1 "PWR_FLAG" H 10050 6273 50  0000 C CNN
F 2 "" H 10050 6100 50  0001 C CNN
F 3 "~" H 10050 6100 50  0001 C CNN
	1    10050 6100
	-1   0    0    1   
$EndComp
Wire Wire Line
	10050 6100 10050 5800
$Comp
L Device:LED D?
U 1 1 5DD920FB
P 10150 3500
AR Path="/5DCC82D4/5DD920FB" Ref="D?"  Part="1" 
AR Path="/5DCCA0EA/5DD920FB" Ref="D12"  Part="1" 
F 0 "D12" V 10189 3383 50  0000 R CNN
F 1 "3V3" V 10098 3383 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 10150 3500 50  0001 C CNN
F 3 "~" H 10150 3500 50  0001 C CNN
	1    10150 3500
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5DD926A9
P 10150 4050
AR Path="/5DCC82D4/5DD926A9" Ref="R?"  Part="1" 
AR Path="/5DCCA0EA/5DD926A9" Ref="R17"  Part="1" 
F 0 "R17" H 10080 4004 50  0000 R CNN
F 1 "1K" H 10080 4095 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 10080 4050 50  0001 C CNN
F 3 "~" H 10150 4050 50  0001 C CNN
	1    10150 4050
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DD92AA0
P 10150 4400
AR Path="/5DCC82D4/5DD92AA0" Ref="#PWR?"  Part="1" 
AR Path="/5DCCA0EA/5DD92AA0" Ref="#PWR066"  Part="1" 
F 0 "#PWR066" H 10150 4150 50  0001 C CNN
F 1 "GND" H 10155 4227 50  0000 C CNN
F 2 "" H 10150 4400 50  0001 C CNN
F 3 "" H 10150 4400 50  0001 C CNN
	1    10150 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	10150 4400 10150 4200
Wire Wire Line
	10150 3900 10150 3650
$Comp
L power:+3.3V #PWR065
U 1 1 5DD95AE8
P 10150 3100
F 0 "#PWR065" H 10150 2950 50  0001 C CNN
F 1 "+3.3V" H 10165 3273 50  0000 C CNN
F 2 "" H 10150 3100 50  0001 C CNN
F 3 "" H 10150 3100 50  0001 C CNN
	1    10150 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	10150 3100 10150 3350
$Comp
L Connector:Barrel_Jack_Switch J5
U 1 1 5DF3679F
P 3350 6500
F 0 "J5" H 3407 6817 50  0000 C CNN
F 1 "Barrel_Jack_MountingPin" H 3407 6726 50  0000 C CNN
F 2 "Connector_BarrelJack:BarrelJack_Wuerth_6941xx301002" H 3400 6460 50  0001 C CNN
F 3 "~" H 3400 6460 50  0001 C CNN
	1    3350 6500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DF3BF58
P 3800 7100
AR Path="/5DCC82D4/5DF3BF58" Ref="#PWR?"  Part="1" 
AR Path="/5DCCA0EA/5DF3BF58" Ref="#PWR043"  Part="1" 
F 0 "#PWR043" H 3800 6850 50  0001 C CNN
F 1 "GND" H 3805 6927 50  0000 C CNN
F 2 "" H 3800 7100 50  0001 C CNN
F 3 "" H 3800 7100 50  0001 C CNN
	1    3800 7100
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:LM78M05_TO220 U9
U 1 1 5DF3CA5F
P 5250 6400
F 0 "U9" H 5250 6642 50  0000 C CNN
F 1 "78M05_Switcher" H 5250 6551 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 5250 6625 50  0001 C CIN
F 3 "http://www.fairchildsemi.com/ds/LM/LM78M05.pdf" H 5250 6350 50  0001 C CNN
	1    5250 6400
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C13
U 1 1 5DF3D7BA
P 4150 6700
F 0 "C13" H 4268 6746 50  0000 L CNN
F 1 "10u" H 4268 6655 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D12.5mm_P5.00mm" H 4188 6550 50  0001 C CNN
F 3 "~" H 4150 6700 50  0001 C CNN
	1    4150 6700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C14
U 1 1 5DF3E622
P 4500 6700
F 0 "C14" H 4615 6746 50  0000 L CNN
F 1 "0.1" H 4615 6655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4538 6550 50  0001 C CNN
F 3 "~" H 4500 6700 50  0001 C CNN
	1    4500 6700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C18
U 1 1 5DF3FA53
P 5900 6700
F 0 "C18" H 6015 6746 50  0000 L CNN
F 1 "0.1" H 6015 6655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5938 6550 50  0001 C CNN
F 3 "~" H 5900 6700 50  0001 C CNN
	1    5900 6700
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C19
U 1 1 5DF3FFED
P 6250 6700
F 0 "C19" H 6368 6746 50  0000 L CNN
F 1 "10u" H 6368 6655 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D12.5mm_P5.00mm" H 6288 6550 50  0001 C CNN
F 3 "~" H 6250 6700 50  0001 C CNN
	1    6250 6700
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5DF44BF0
P 6950 6250
AR Path="/5DCC82D4/5DF44BF0" Ref="#PWR?"  Part="1" 
AR Path="/5DCCA0EA/5DF44BF0" Ref="#PWR054"  Part="1" 
F 0 "#PWR054" H 6950 6100 50  0001 C CNN
F 1 "+5V" H 6965 6423 50  0000 C CNN
F 2 "" H 6950 6250 50  0001 C CNN
F 3 "" H 6950 6250 50  0001 C CNN
	1    6950 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 6550 5900 6400
Connection ~ 5900 6400
Wire Wire Line
	5900 6400 5550 6400
Wire Wire Line
	6250 6550 6250 6400
Wire Wire Line
	6250 6400 5900 6400
$Comp
L power:GND #PWR?
U 1 1 5DF4CCF5
P 4150 7100
AR Path="/5DCC82D4/5DF4CCF5" Ref="#PWR?"  Part="1" 
AR Path="/5DCCA0EA/5DF4CCF5" Ref="#PWR045"  Part="1" 
F 0 "#PWR045" H 4150 6850 50  0001 C CNN
F 1 "GND" H 4155 6927 50  0000 C CNN
F 2 "" H 4150 7100 50  0001 C CNN
F 3 "" H 4150 7100 50  0001 C CNN
	1    4150 7100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DF4D012
P 4500 7100
AR Path="/5DCC82D4/5DF4D012" Ref="#PWR?"  Part="1" 
AR Path="/5DCCA0EA/5DF4D012" Ref="#PWR047"  Part="1" 
F 0 "#PWR047" H 4500 6850 50  0001 C CNN
F 1 "GND" H 4505 6927 50  0000 C CNN
F 2 "" H 4500 7100 50  0001 C CNN
F 3 "" H 4500 7100 50  0001 C CNN
	1    4500 7100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DF4D2D0
P 5250 7100
AR Path="/5DCC82D4/5DF4D2D0" Ref="#PWR?"  Part="1" 
AR Path="/5DCCA0EA/5DF4D2D0" Ref="#PWR050"  Part="1" 
F 0 "#PWR050" H 5250 6850 50  0001 C CNN
F 1 "GND" H 5255 6927 50  0000 C CNN
F 2 "" H 5250 7100 50  0001 C CNN
F 3 "" H 5250 7100 50  0001 C CNN
	1    5250 7100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DF4D5D0
P 5900 7100
AR Path="/5DCC82D4/5DF4D5D0" Ref="#PWR?"  Part="1" 
AR Path="/5DCCA0EA/5DF4D5D0" Ref="#PWR052"  Part="1" 
F 0 "#PWR052" H 5900 6850 50  0001 C CNN
F 1 "GND" H 5905 6927 50  0000 C CNN
F 2 "" H 5900 7100 50  0001 C CNN
F 3 "" H 5900 7100 50  0001 C CNN
	1    5900 7100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DF4DA3B
P 6250 7100
AR Path="/5DCC82D4/5DF4DA3B" Ref="#PWR?"  Part="1" 
AR Path="/5DCCA0EA/5DF4DA3B" Ref="#PWR053"  Part="1" 
F 0 "#PWR053" H 6250 6850 50  0001 C CNN
F 1 "GND" H 6255 6927 50  0000 C CNN
F 2 "" H 6250 7100 50  0001 C CNN
F 3 "" H 6250 7100 50  0001 C CNN
	1    6250 7100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 7100 6250 6850
Wire Wire Line
	5900 7100 5900 6850
Wire Wire Line
	5250 6700 5250 7100
Wire Wire Line
	4500 7100 4500 6850
Wire Wire Line
	4150 7100 4150 6850
Wire Wire Line
	3800 7100 3800 6600
Wire Wire Line
	3800 6600 3650 6600
Wire Wire Line
	3650 6400 4150 6400
Wire Wire Line
	4500 6550 4500 6400
Connection ~ 4500 6400
Wire Wire Line
	4500 6400 4950 6400
Wire Wire Line
	4150 6550 4150 6400
Connection ~ 4150 6400
Wire Wire Line
	4150 6400 4500 6400
Wire Wire Line
	3650 6500 3800 6500
Wire Wire Line
	3800 6500 3800 6600
Connection ~ 3800 6600
$Comp
L Device:D_Schottky D?
U 1 1 5DF8D14E
P 6650 6400
AR Path="/5DCC82D4/5DF8D14E" Ref="D?"  Part="1" 
AR Path="/5DCCA0EA/5DF8D14E" Ref="D10"  Part="1" 
F 0 "D10" V 6604 6479 50  0000 L CNN
F 1 "D_Schottky" V 6695 6479 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-123F" H 6650 6400 50  0001 C CNN
F 3 "~" H 6650 6400 50  0001 C CNN
	1    6650 6400
	-1   0    0    1   
$EndComp
$Comp
L Device:D_Schottky D?
U 1 1 5DF9467B
P 5250 6000
AR Path="/5DCC82D4/5DF9467B" Ref="D?"  Part="1" 
AR Path="/5DCCA0EA/5DF9467B" Ref="D8"  Part="1" 
F 0 "D8" V 5204 6079 50  0000 L CNN
F 1 "D_Schottky" V 5295 6079 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-123F" H 5250 6000 50  0001 C CNN
F 3 "~" H 5250 6000 50  0001 C CNN
	1    5250 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 6000 5900 6000
Wire Wire Line
	5900 6000 5900 6400
Wire Wire Line
	5100 6000 4500 6000
Wire Wire Line
	4500 6000 4500 6400
Wire Wire Line
	6250 6400 6500 6400
Connection ~ 6250 6400
Wire Wire Line
	6800 6400 6950 6400
Wire Wire Line
	6950 6400 6950 6250
$EndSCHEMATC
