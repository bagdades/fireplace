EESchema Schematic File Version 3
LIBS:power
LIBS:device
LIBS:linear
LIBS:regul
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
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:Switch
LIBS:MCU_Microchip_PIC18
LIBS:MCU_Microchip_PIC16
LIBS:fireplace-cache
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
L R R1
U 1 1 59F37719
P 1550 3050
F 0 "R1" H 1620 3096 50  0000 L CNN
F 1 "100" H 1620 3005 50  0000 L CNN
F 2 "Resistors_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 1480 3050 50  0001 C CNN
F 3 "" H 1550 3050 50  0001 C CNN
	1    1550 3050
	1    0    0    -1  
$EndComp
$Comp
L LED D1
U 1 1 59F37839
P 1950 2200
F 0 "D1" H 1750 2250 50  0000 C CNN
F 1 "LED" H 1941 2325 50  0001 C CNN
F 2 "LEDs:LED_D4.0mm" H 1950 2200 50  0001 C CNN
F 3 "" H 1950 2200 50  0001 C CNN
	1    1950 2200
	1    0    0    -1  
$EndComp
$Comp
L SW_Push SW1
U 1 1 59F37D13
P 3050 2200
F 0 "SW1" H 3250 2250 50  0000 C CNN
F 1 "SW_Push" H 3050 2394 50  0001 C CNN
F 2 "Buttons_Switches_THT:SW_PUSH_6mm_h5mm" H 3050 2400 50  0001 C CNN
F 3 "" H 3050 2400 50  0001 C CNN
	1    3050 2200
	1    0    0    -1  
$EndComp
$Comp
L SW_Push SW2
U 1 1 59F37DF7
P 3050 2400
F 0 "SW2" H 3250 2450 50  0000 C CNN
F 1 "SW_Push" H 3050 2594 50  0001 C CNN
F 2 "Buttons_Switches_THT:SW_PUSH_6mm_h5mm" H 3050 2600 50  0001 C CNN
F 3 "" H 3050 2600 50  0001 C CNN
	1    3050 2400
	1    0    0    -1  
$EndComp
$Comp
L SW_Push SW3
U 1 1 59F37E19
P 3050 2600
F 0 "SW3" H 3250 2650 50  0000 C CNN
F 1 "SW_Push" H 3050 2794 50  0001 C CNN
F 2 "Buttons_Switches_THT:SW_PUSH_6mm_h5mm" H 3050 2800 50  0001 C CNN
F 3 "" H 3050 2800 50  0001 C CNN
	1    3050 2600
	1    0    0    -1  
$EndComp
$Comp
L SW_Push SW4
U 1 1 59F37E39
P 3050 2800
F 0 "SW4" H 3250 2850 50  0000 C CNN
F 1 "SW_Push" H 3050 2994 50  0001 C CNN
F 2 "Buttons_Switches_THT:SW_PUSH_6mm_h5mm" H 3050 3000 50  0001 C CNN
F 3 "" H 3050 3000 50  0001 C CNN
	1    3050 2800
	1    0    0    -1  
$EndComp
$Comp
L LED D2
U 1 1 59F38038
P 1950 2400
F 0 "D2" H 1750 2450 50  0000 C CNN
F 1 "LED" H 1941 2525 50  0001 C CNN
F 2 "LEDs:LED_D4.0mm" H 1950 2400 50  0001 C CNN
F 3 "" H 1950 2400 50  0001 C CNN
	1    1950 2400
	1    0    0    -1  
$EndComp
$Comp
L LED D3
U 1 1 59F3805C
P 1950 2600
F 0 "D3" H 1750 2650 50  0000 C CNN
F 1 "LED" H 1941 2725 50  0001 C CNN
F 2 "LEDs:LED_D4.0mm" H 1950 2600 50  0001 C CNN
F 3 "" H 1950 2600 50  0001 C CNN
	1    1950 2600
	1    0    0    -1  
$EndComp
$Comp
L LED D4
U 1 1 59F380B7
P 1950 2800
F 0 "D4" H 1750 2850 50  0000 C CNN
F 1 "LED" H 1941 2925 50  0001 C CNN
F 2 "LEDs:LED_D4.0mm" H 1950 2800 50  0001 C CNN
F 3 "" H 1950 2800 50  0001 C CNN
	1    1950 2800
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 59F381B4
P 3350 3050
F 0 "R2" H 3420 3096 50  0000 L CNN
F 1 "2k" H 3420 3005 50  0000 L CNN
F 2 "Resistors_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 3280 3050 50  0001 C CNN
F 3 "" H 3350 3050 50  0001 C CNN
	1    3350 3050
	1    0    0    -1  
$EndComp
$Comp
L PIC16F84-XX/P U2
U 1 1 59F3863D
P 6000 3750
F 0 "U2" H 5550 4550 50  0000 C CNN
F 1 "PIC16F84-XX/P" H 6450 4550 50  0000 C CNN
F 2 "Housings_DIP:DIP-18_W7.62mm" H 6000 3750 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/30430c.pdf" H 6000 3750 50  0001 C CNN
	1    6000 3750
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 59F387A2
P 3350 3350
F 0 "#PWR01" H 3350 3100 50  0001 C CNN
F 1 "GND" H 3355 3177 50  0000 C CNN
F 2 "" H 3350 3350 50  0001 C CNN
F 3 "" H 3350 3350 50  0001 C CNN
	1    3350 3350
	1    0    0    -1  
$EndComp
Text Label 2150 2200 0    60   ~ 0
ON/OFF
Text Label 2150 2400 0    60   ~ 0
DIMMER
Text Label 2150 2600 0    60   ~ 0
LOW
Text Label 2150 2800 0    60   ~ 0
HIGH
$Comp
L +5V #PWR02
U 1 1 59F38A3C
P 6000 2700
F 0 "#PWR02" H 6000 2550 50  0001 C CNN
F 1 "+5V" H 6015 2873 50  0000 C CNN
F 2 "" H 6000 2700 50  0001 C CNN
F 3 "" H 6000 2700 50  0001 C CNN
	1    6000 2700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 59F38BDE
P 6000 4850
F 0 "#PWR03" H 6000 4600 50  0001 C CNN
F 1 "GND" H 6005 4677 50  0000 C CNN
F 2 "" H 6000 4850 50  0001 C CNN
F 3 "" H 6000 4850 50  0001 C CNN
	1    6000 4850
	1    0    0    -1  
$EndComp
NoConn ~ 6700 3150
$Comp
L ULN2003A U1
U 1 1 59F38F3B
P 5250 5700
F 0 "U1" H 5250 6267 50  0000 C CNN
F 1 "ULN2003A" H 5250 6176 50  0000 C CNN
F 2 "Housings_DIP:DIP-16_W7.62mm" H 5300 5050 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/uln2003a.pdf" H 5350 5600 50  0001 C CNN
	1    5250 5700
	1    0    0    -1  
$EndComp
NoConn ~ 4850 5700
NoConn ~ 4850 5800
$Comp
L Crystal_GND2 Y1
U 1 1 59F39536
P 6900 3350
F 0 "Y1" H 6900 3618 50  0000 C CNN
F 1 "4MHz" H 6900 3527 50  0000 C CNN
F 2 "Crystals:Resonator-3pin_w8.0mm_h3.5mm" H 6900 3350 50  0001 C CNN
F 3 "" H 6900 3350 50  0001 C CNN
	1    6900 3350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 59F39726
P 6900 3600
F 0 "#PWR04" H 6900 3350 50  0001 C CNN
F 1 "GND" H 6905 3427 50  0000 C CNN
F 2 "" H 6900 3600 50  0001 C CNN
F 3 "" H 6900 3600 50  0001 C CNN
	1    6900 3600
	1    0    0    -1  
$EndComp
$Comp
L ATMEGA8-16AU U4
U 1 1 59F3A01F
P 9100 4100
F 0 "U4" H 9900 5300 50  0000 C CNN
F 1 "ATMEGA8-16AU" H 8650 5300 50  0000 C CNN
F 2 "Housings_QFP:LQFP-32_7x7mm_Pitch0.8mm" H 9150 5486 50  0001 C CIN
F 3 "http://www.atmel.com/images/atmel-2486-8-bit-avr-microcontroller-atmega8_l_datasheet.pdf" H 9100 4100 50  0001 C CNN
	1    9100 4100
	1    0    0    -1  
$EndComp
$Comp
L MOC3021M U3
U 1 1 59F3A3E3
P 3050 4750
F 0 "U3" H 3050 5075 50  0000 C CNN
F 1 "MOC3021M" H 3050 4984 50  0000 C CNN
F 2 "Housings_DIP:DIP-6_W7.62mm" H 2850 4550 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/MO/MOC3020M.pdf" H 3025 4750 50  0001 L CNN
	1    3050 4750
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 59F3A53A
P 3950 5000
F 0 "#PWR05" H 3950 4750 50  0001 C CNN
F 1 "GND" H 3955 4827 50  0000 C CNN
F 2 "" H 3950 5000 50  0001 C CNN
F 3 "" H 3950 5000 50  0001 C CNN
	1    3950 5000
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 59F3A66C
P 3650 4650
F 0 "R3" V 3443 4650 50  0000 C CNN
F 1 "1k" V 3534 4650 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 3580 4650 50  0001 C CNN
F 3 "" H 3650 4650 50  0001 C CNN
	1    3650 4650
	0    1    1    0   
$EndComp
$Comp
L QSE159 U5
U 1 1 59F3AB11
P 1700 5500
F 0 "U5" H 1438 5546 50  0000 R CNN
F 1 "QSE159" H 1438 5455 50  0000 R CNN
F 2 "Opto-Devices:ONSemi_QSE15x" H 1700 5500 50  0001 C CNN
F 3 "http://www.onsemi.com/pub/Collateral/QSE159-D.pdf" H 2350 5800 50  0001 C CNN
	1    1700 5500
	1    0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 59F3AC30
P 1800 4950
F 0 "R4" H 1730 4904 50  0000 R CNN
F 1 "100" H 1730 4995 50  0000 R CNN
F 2 "Resistors_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 1730 4950 50  0001 C CNN
F 3 "" H 1800 4950 50  0001 C CNN
	1    1800 4950
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR06
U 1 1 59F3AD52
P 1800 5900
F 0 "#PWR06" H 1800 5650 50  0001 C CNN
F 1 "GND" H 1805 5727 50  0000 C CNN
F 2 "" H 1800 5900 50  0001 C CNN
F 3 "" H 1800 5900 50  0001 C CNN
	1    1800 5900
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR07
U 1 1 59F3AE04
P 1800 4700
F 0 "#PWR07" H 1800 4550 50  0001 C CNN
F 1 "+5V" H 1815 4873 50  0000 C CNN
F 2 "" H 1800 4700 50  0001 C CNN
F 3 "" H 1800 4700 50  0001 C CNN
	1    1800 4700
	1    0    0    -1  
$EndComp
Text Label 4850 3950 0    60   ~ 0
FAN
Text Label 4850 3850 0    60   ~ 0
1000W
Text Label 4850 3750 0    60   ~ 0
SWING
Text Label 4850 3450 0    60   ~ 0
100_W
Text Label 4850 3350 0    60   ~ 0
BUZZER
$Comp
L GND #PWR?
U 1 1 59F3C99D
P 9050 5750
F 0 "#PWR?" H 9050 5500 50  0001 C CNN
F 1 "GND" H 9055 5577 50  0000 C CNN
F 2 "" H 9050 5750 50  0001 C CNN
F 3 "" H 9050 5750 50  0001 C CNN
	1    9050 5750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 59F3CA4A
P 9150 5750
F 0 "#PWR?" H 9150 5500 50  0001 C CNN
F 1 "GND" H 9155 5577 50  0000 C CNN
F 2 "" H 9150 5750 50  0001 C CNN
F 3 "" H 9150 5750 50  0001 C CNN
	1    9150 5750
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 59F3CC78
P 9050 2600
F 0 "#PWR?" H 9050 2450 50  0001 C CNN
F 1 "+5V" H 9065 2773 50  0000 C CNN
F 2 "" H 9050 2600 50  0001 C CNN
F 3 "" H 9050 2600 50  0001 C CNN
	1    9050 2600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 59F3CF63
P 7950 3600
F 0 "#PWR?" H 7950 3350 50  0001 C CNN
F 1 "GND" H 7955 3427 50  0000 C CNN
F 2 "" H 7950 3600 50  0001 C CNN
F 3 "" H 7950 3600 50  0001 C CNN
	1    7950 3600
	1    0    0    -1  
$EndComp
Text Label 2100 4350 0    60   ~ 0
LED_COM
Text Label 10500 5000 0    60   ~ 0
LOW
Text Label 10500 5100 0    60   ~ 0
HIGH
Text Label 10500 4800 0    60   ~ 0
ON/OFF
Text Label 10500 4700 0    60   ~ 0
DIMMER
$Comp
L C C?
U 1 1 59F3DCE5
P 7950 3300
F 0 "C?" H 7850 3400 50  0000 L CNN
F 1 "1u" H 7850 3200 50  0000 L CNN
F 2 "" H 7988 3150 50  0001 C CNN
F 3 "" H 7950 3300 50  0001 C CNN
	1    7950 3300
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 59F3DECE
P 8450 2700
F 0 "R?" V 8243 2700 50  0000 C CNN
F 1 "10k" V 8334 2700 50  0000 C CNN
F 2 "" V 8380 2700 50  0001 C CNN
F 3 "" H 8450 2700 50  0001 C CNN
	1    8450 2700
	0    1    1    0   
$EndComp
Wire Wire Line
	1800 2200 1550 2200
Wire Wire Line
	1550 2200 1550 2900
Wire Wire Line
	1550 2800 1800 2800
Wire Wire Line
	1800 2400 1550 2400
Connection ~ 1550 2400
Wire Wire Line
	1800 2600 1550 2600
Connection ~ 1550 2600
Connection ~ 1550 2800
Wire Wire Line
	2100 2200 2850 2200
Wire Wire Line
	2100 2400 2850 2400
Wire Wire Line
	2100 2600 2850 2600
Wire Wire Line
	2100 2800 2850 2800
Wire Wire Line
	3250 2200 3350 2200
Wire Wire Line
	3350 2200 3350 2900
Wire Wire Line
	3350 2800 3250 2800
Wire Wire Line
	3250 2400 3350 2400
Connection ~ 3350 2400
Wire Wire Line
	3250 2600 3350 2600
Connection ~ 3350 2600
Connection ~ 3350 2800
Wire Wire Line
	3350 3200 3350 3350
Wire Wire Line
	6000 2700 6000 2850
Wire Wire Line
	6000 4850 6000 4750
Wire Wire Line
	2800 2200 2800 4250
Wire Wire Line
	2800 4250 5300 4250
Connection ~ 2800 2200
Wire Wire Line
	2700 2400 2700 4150
Wire Wire Line
	2700 4150 5300 4150
Connection ~ 2700 2400
Wire Wire Line
	2600 2600 2600 3650
Wire Wire Line
	2600 3650 3900 3650
Wire Wire Line
	3900 3650 3900 3150
Wire Wire Line
	3900 3150 5300 3150
Connection ~ 2600 2600
Wire Wire Line
	2500 2800 2500 3750
Wire Wire Line
	2500 3750 4000 3750
Wire Wire Line
	4000 3750 4000 3250
Wire Wire Line
	4000 3250 5300 3250
Connection ~ 2500 2800
Wire Wire Line
	1550 3200 1550 4350
Wire Wire Line
	1550 4350 5300 4350
Wire Wire Line
	4850 5400 4500 5400
Wire Wire Line
	4500 5400 4500 3950
Wire Wire Line
	4500 3950 5300 3950
Wire Wire Line
	4850 5500 4400 5500
Wire Wire Line
	4400 5500 4400 3850
Wire Wire Line
	4400 3850 5300 3850
Wire Wire Line
	4850 5600 4300 5600
Wire Wire Line
	4300 5600 4300 3750
Wire Wire Line
	4300 3750 5300 3750
Wire Wire Line
	4850 5900 4200 5900
Wire Wire Line
	4200 5900 4200 3450
Wire Wire Line
	4200 3450 5300 3450
Wire Wire Line
	4850 6000 4100 6000
Wire Wire Line
	4100 6000 4100 3350
Wire Wire Line
	4100 3350 5300 3350
Wire Wire Line
	6700 3350 6750 3350
Wire Wire Line
	6700 3550 6750 3550
Wire Wire Line
	6750 3550 6750 3850
Wire Wire Line
	6750 3850 7100 3850
Wire Wire Line
	7100 3850 7100 3350
Wire Wire Line
	7100 3350 7050 3350
Wire Wire Line
	6900 3600 6900 3550
Wire Wire Line
	3950 5000 3950 4850
Wire Wire Line
	3950 4850 3350 4850
Wire Wire Line
	3500 4650 3350 4650
Wire Wire Line
	3800 4650 4000 4650
Wire Wire Line
	4000 4650 4000 4050
Wire Wire Line
	4000 4050 5300 4050
Wire Wire Line
	1800 5100 1800 5200
Wire Wire Line
	1800 5900 1800 5800
Wire Wire Line
	1800 4700 1800 4800
Wire Wire Line
	2000 5500 2950 5500
Wire Wire Line
	2950 5500 2950 5250
Wire Wire Line
	2950 5250 4600 5250
Wire Wire Line
	4600 5250 4600 4450
Wire Wire Line
	4600 4450 5300 4450
Wire Wire Line
	10100 4700 10500 4700
Wire Wire Line
	10100 4800 10500 4800
Wire Wire Line
	10100 4900 10500 4900
Wire Wire Line
	10100 5000 10500 5000
Wire Wire Line
	10100 5100 10500 5100
Wire Wire Line
	9150 5750 9150 5700
Wire Wire Line
	9050 5750 9050 5700
Wire Wire Line
	9050 2600 9050 2800
Wire Wire Line
	9150 2700 9150 2800
Wire Wire Line
	8600 2700 9150 2700
Connection ~ 9050 2700
Wire Wire Line
	7950 3450 7950 3600
Wire Wire Line
	7950 3500 8200 3500
Connection ~ 7950 3500
Wire Wire Line
	8200 3100 7950 3100
Wire Wire Line
	7950 2700 7950 3150
Wire Wire Line
	8300 2700 7950 2700
Connection ~ 7950 3100
Wire Wire Line
	10100 3800 10500 3800
Wire Wire Line
	10100 3900 10500 3900
Wire Wire Line
	10100 4000 10500 4000
Wire Wire Line
	10100 4100 10500 4100
Wire Wire Line
	10100 4200 10500 4200
Text Label 10500 3800 0    60   ~ 0
BUZZER
Text Label 10500 3900 0    60   ~ 0
100_W
Text Label 10500 4000 0    60   ~ 0
SWING
Text Label 10500 4100 0    60   ~ 0
1000W
Text Label 10500 4200 0    60   ~ 0
FAN
Wire Wire Line
	10100 5200 10500 5200
Text Label 10500 5200 0    60   ~ 0
LED_COM
Text Label 4900 4450 0    60   ~ 0
IR_IN
Text Label 10500 4900 0    60   ~ 0
IR_IN
Text Label 4850 4050 0    60   ~ 0
LAMP
Wire Wire Line
	10100 4300 10500 4300
Text Label 10500 4300 0    60   ~ 0
LAMP
$EndSCHEMATC
