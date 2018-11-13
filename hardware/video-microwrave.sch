EESchema Schematic File Version 2
LIBS:power
LIBS:device
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
LIBS:eurocad
LIBS:microwrave
LIBS:video-microwrave-cache
EELAYER 25 0
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
$Comp
L Raspberry_Pi_2_3 U101
U 1 1 5AF38DD5
P 5900 5600
F 0 "U101" H 6600 4350 50  0000 C CNN
F 1 "Raspberry_Pi_Zero" H 5500 6500 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x20_Pitch2.54mm" H 6900 6850 50  0001 C CNN
F 3 "" H 5950 5450 50  0001 C CNN
	1    5900 5600
	1    0    0    -1  
$EndComp
$Sheet
S 1050 900  700  350 
U 5BDF5AC7
F0 "power" 60
F1 "power.sch" 60
F2 "-5Voffset" B R 1750 1000 60 
$EndSheet
$Sheet
S 6400 1250 1050 700 
U 5BE21955
F0 "buffers 1-4" 60
F1 "buffers 1-4.sch" 60
F2 "-5V" B L 6400 1350 60 
F3 "out1" O R 7450 1350 60 
F4 "out2" O R 7450 1450 60 
F5 "out3" O R 7450 1550 60 
F6 "out4" O R 7450 1650 60 
F7 "in3" I L 6400 1750 60 
F8 "in1" I L 6400 1550 60 
F9 "in2" I L 6400 1650 60 
F10 "in4" I L 6400 1850 60 
$EndSheet
$Comp
L +3.3V #PWR01
U 1 1 5BE22E76
P 6000 4000
F 0 "#PWR01" H 6000 3850 50  0001 C CNN
F 1 "+3.3V" H 6000 4140 50  0000 C CNN
F 2 "" H 6000 4000 50  0000 C CNN
F 3 "" H 6000 4000 50  0000 C CNN
	1    6000 4000
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR02
U 1 1 5BE22E99
P 5750 4000
F 0 "#PWR02" H 5750 3850 50  0001 C CNN
F 1 "+5V" H 5750 4140 50  0000 C CNN
F 2 "" H 5750 4000 50  0000 C CNN
F 3 "" H 5750 4000 50  0000 C CNN
	1    5750 4000
	1    0    0    -1  
$EndComp
$Comp
L Earth #PWR03
U 1 1 5BE22F69
P 5500 7100
F 0 "#PWR03" H 5500 6850 50  0001 C CNN
F 1 "Earth" H 5500 6950 50  0001 C CNN
F 2 "" H 5500 7100 50  0000 C CNN
F 3 "" H 5500 7100 50  0000 C CNN
	1    5500 7100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 4000 5750 4150
Wire Wire Line
	5700 4150 5800 4150
Wire Wire Line
	5800 4150 5800 4300
Wire Wire Line
	5700 4150 5700 4300
Connection ~ 5750 4150
Wire Wire Line
	6000 4000 6000 4300
Wire Wire Line
	5500 6900 5500 7100
Wire Wire Line
	5600 6900 5600 7000
Wire Wire Line
	5500 7000 6200 7000
Connection ~ 5500 7000
Wire Wire Line
	5700 7000 5700 6900
Connection ~ 5600 7000
Wire Wire Line
	5800 7000 5800 6900
Connection ~ 5700 7000
Wire Wire Line
	5900 7000 5900 6900
Connection ~ 5800 7000
Wire Wire Line
	6000 7000 6000 6900
Connection ~ 5900 7000
Wire Wire Line
	6100 7000 6100 6900
Connection ~ 6000 7000
Wire Wire Line
	6200 7000 6200 6900
Connection ~ 6100 7000
$Sheet
S 2400 4100 1750 900 
U 5BDF5B63
F0 "adc" 60
F1 "adc.sch" 60
F2 "input_1" I L 2400 4200 60 
F3 "input_2" I L 2400 4300 60 
F4 "input_3" I L 2400 4400 60 
F5 "input_4" I L 2400 4500 60 
F6 "input_5" I L 2400 4600 60 
F7 "input_6" I L 2400 4700 60 
F8 "input_7" I L 2400 4800 60 
F9 "input_8" I L 2400 4900 60 
F10 "SDA_3V3" O R 4150 4300 60 
F11 "SCL_3V3" O R 4150 4400 60 
$EndSheet
$Sheet
S 2850 1250 1050 900 
U 5BE4E775
F0 "CV jacks" 60
F1 "CV jacks.sch" 60
F2 "CV1" O R 3900 1350 60 
F3 "CV2" O R 3900 1450 60 
F4 "CV3" O R 3900 1550 60 
F5 "CV4" O R 3900 1650 60 
F6 "CV5" O R 3900 1750 60 
F7 "CV6" O R 3900 1850 60 
F8 "CV7" O R 3900 1950 60 
F9 "CV8" O R 3900 2050 60 
$EndSheet
$Sheet
S 8400 1850 1050 700 
U 5BE52EE7
F0 "buffers 5-6" 60
F1 "buffers 5-6.sch" 60
F2 "-5V" B L 8400 1950 60 
F3 "out1" O R 9450 1950 60 
F4 "out2" O R 9450 2050 60 
F5 "out3" O R 9450 2150 60 
F6 "out4" O R 9450 2250 60 
F7 "in3" I L 8400 2350 60 
F8 "in1" I L 8400 2150 60 
F9 "in2" I L 8400 2250 60 
F10 "in4" I L 8400 2450 60 
$EndSheet
$Comp
L CONN_01X05 P101
U 1 1 5BE59E5A
P 4700 1550
F 0 "P101" H 4700 1850 50  0000 C CNN
F 1 "CONN_01X05" V 4800 1550 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x05_Pitch2.54mm" H 4700 1550 50  0001 C CNN
F 3 "" H 4700 1550 50  0000 C CNN
	1    4700 1550
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X05 P103
U 1 1 5BE5A799
P 4700 2350
F 0 "P103" H 4700 2650 50  0000 C CNN
F 1 "CONN_01X05" V 4800 2350 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x05_Pitch2.54mm" H 4700 2350 50  0001 C CNN
F 3 "" H 4700 2350 50  0000 C CNN
	1    4700 2350
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X05 P102
U 1 1 5BE5A866
P 5950 1750
F 0 "P102" H 5950 2050 50  0000 C CNN
F 1 "CONN_01X05" V 6050 1750 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x05_Pitch2.54mm" H 5950 1750 50  0001 C CNN
F 3 "" H 5950 1750 50  0000 C CNN
	1    5950 1750
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X05 P104
U 1 1 5BE5A932
P 8050 2350
F 0 "P104" H 8050 2650 50  0000 C CNN
F 1 "CONN_01X05" V 8150 2350 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x05_Pitch2.54mm" H 8050 2350 50  0001 C CNN
F 3 "" H 8050 2350 50  0000 C CNN
	1    8050 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 1350 5400 1350
Wire Wire Line
	5400 1350 5400 1550
Wire Wire Line
	5400 1550 6400 1550
Connection ~ 4500 1350
Connection ~ 5750 1550
Wire Wire Line
	3900 1450 5300 1450
Wire Wire Line
	5300 1450 5300 1650
Wire Wire Line
	5300 1650 6400 1650
Connection ~ 4500 1450
Connection ~ 5750 1650
Wire Wire Line
	3900 1550 5200 1550
Wire Wire Line
	5200 1550 5200 1750
Wire Wire Line
	5200 1750 6400 1750
Connection ~ 4500 1550
Connection ~ 5750 1750
Wire Wire Line
	3900 1650 5100 1650
Wire Wire Line
	5100 1650 5100 1850
Wire Wire Line
	5100 1850 6400 1850
Connection ~ 4500 1650
Connection ~ 5750 1850
Wire Wire Line
	4400 2150 8400 2150
Wire Wire Line
	4300 2250 8400 2250
Wire Wire Line
	4200 2350 8400 2350
Wire Wire Line
	4100 2450 8400 2450
Wire Wire Line
	3900 1750 4400 1750
Wire Wire Line
	4400 1750 4400 2150
Connection ~ 4500 2150
Wire Wire Line
	3900 1850 4300 1850
Wire Wire Line
	4300 1850 4300 2250
Connection ~ 4500 2250
Wire Wire Line
	3900 1950 4200 1950
Wire Wire Line
	4200 1950 4200 2350
Connection ~ 4500 2350
Wire Wire Line
	3900 2050 4100 2050
Wire Wire Line
	4100 2050 4100 2450
Connection ~ 4500 2450
Connection ~ 7850 2450
Connection ~ 7850 2350
Connection ~ 7850 2250
Connection ~ 7850 2150
$Comp
L Earth #PWR04
U 1 1 5BE5E4CE
P 4500 1750
F 0 "#PWR04" H 4500 1500 50  0001 C CNN
F 1 "Earth" H 4500 1600 50  0001 C CNN
F 2 "" H 4500 1750 50  0000 C CNN
F 3 "" H 4500 1750 50  0000 C CNN
	1    4500 1750
	1    0    0    -1  
$EndComp
$Comp
L Earth #PWR05
U 1 1 5BE5E7A4
P 4500 2550
F 0 "#PWR05" H 4500 2300 50  0001 C CNN
F 1 "Earth" H 4500 2400 50  0001 C CNN
F 2 "" H 4500 2550 50  0000 C CNN
F 3 "" H 4500 2550 50  0000 C CNN
	1    4500 2550
	1    0    0    -1  
$EndComp
$Comp
L Earth #PWR06
U 1 1 5BE5E860
P 5750 1950
F 0 "#PWR06" H 5750 1700 50  0001 C CNN
F 1 "Earth" H 5750 1800 50  0001 C CNN
F 2 "" H 5750 1950 50  0000 C CNN
F 3 "" H 5750 1950 50  0000 C CNN
	1    5750 1950
	1    0    0    -1  
$EndComp
$Comp
L Earth #PWR07
U 1 1 5BE5EE26
P 7850 2550
F 0 "#PWR07" H 7850 2300 50  0001 C CNN
F 1 "Earth" H 7850 2400 50  0001 C CNN
F 2 "" H 7850 2550 50  0000 C CNN
F 3 "" H 7850 2550 50  0000 C CNN
	1    7850 2550
	1    0    0    -1  
$EndComp
Wire Bus Line
	10250 850  10250 2900
Wire Bus Line
	10250 2900 1200 2900
Wire Bus Line
	1200 2900 1200 5650
Entry Wire Line
	10150 1350 10250 1450
Entry Wire Line
	10150 1450 10250 1550
Entry Wire Line
	10150 1550 10250 1650
Entry Wire Line
	10150 1650 10250 1750
Entry Wire Line
	10150 1950 10250 2050
Entry Wire Line
	10150 2050 10250 2150
Entry Wire Line
	10150 2150 10250 2250
Entry Wire Line
	10150 2250 10250 2350
Wire Wire Line
	7450 1350 10150 1350
Wire Wire Line
	10150 1450 7450 1450
Wire Wire Line
	7450 1550 10150 1550
Wire Wire Line
	7450 1650 10150 1650
Wire Wire Line
	9450 1950 10150 1950
Wire Wire Line
	9450 2050 10150 2050
Wire Wire Line
	9450 2150 10150 2150
Wire Wire Line
	9450 2250 10150 2250
Text Label 9600 1350 0    60   ~ 0
buffered_1
Text Label 9600 1450 0    60   ~ 0
buffered_2
Text Label 9600 1550 0    60   ~ 0
buffered_3
Text Label 9600 1650 0    60   ~ 0
buffered_4
Text Label 9600 1950 0    60   ~ 0
buffered_5
Text Label 9600 2050 0    60   ~ 0
buffered_6
Text Label 9600 2150 0    60   ~ 0
buffered_7
Text Label 9600 2250 0    60   ~ 0
buffered_8
Entry Wire Line
	1200 4100 1300 4200
Entry Wire Line
	1200 4200 1300 4300
Entry Wire Line
	1200 4300 1300 4400
Entry Wire Line
	1200 4400 1300 4500
Entry Wire Line
	1200 4500 1300 4600
Entry Wire Line
	1200 4600 1300 4700
Entry Wire Line
	1200 4700 1300 4800
Entry Wire Line
	1200 4800 1300 4900
Wire Wire Line
	2400 4200 1300 4200
Wire Wire Line
	1300 4300 2400 4300
Wire Wire Line
	1300 4400 2400 4400
Wire Wire Line
	1300 4500 2400 4500
Wire Wire Line
	1300 4600 2400 4600
Wire Wire Line
	1300 4700 2400 4700
Wire Wire Line
	1300 4800 2400 4800
Wire Wire Line
	1300 4900 2400 4900
Text Label 1450 4200 0    60   ~ 0
buffered_1
Text Label 1500 4300 0    60   ~ 0
buffered_2
Text Label 1550 4400 0    60   ~ 0
buffered_3
Text Label 1600 4500 0    60   ~ 0
buffered_4
Text Label 1650 4600 0    60   ~ 0
buffered_5
Text Label 1700 4700 0    60   ~ 0
buffered_6
Text Label 1750 4800 0    60   ~ 0
buffered_7
Text Label 1800 4900 0    60   ~ 0
buffered_8
Wire Wire Line
	4150 4300 4550 4300
Wire Wire Line
	4550 4300 4550 3300
Wire Wire Line
	4550 3300 7250 3300
Wire Wire Line
	7250 3300 7250 4700
Wire Wire Line
	7250 4700 6800 4700
Wire Wire Line
	4150 4400 4650 4400
Wire Wire Line
	4650 4400 4650 3550
Wire Wire Line
	4650 3550 7150 3550
Wire Wire Line
	7150 3550 7150 4800
Wire Wire Line
	7150 4800 6800 4800
Wire Wire Line
	1750 1000 8150 1000
Wire Wire Line
	6150 1000 6150 1350
Wire Wire Line
	6150 1350 6400 1350
Wire Wire Line
	8150 1000 8150 1950
Wire Wire Line
	8150 1950 8400 1950
Connection ~ 6150 1000
NoConn ~ 6100 4300
NoConn ~ 5000 4900
NoConn ~ 5000 5000
NoConn ~ 5000 5100
NoConn ~ 5000 5200
NoConn ~ 5000 5300
NoConn ~ 5000 5400
NoConn ~ 5000 5500
NoConn ~ 5000 5600
NoConn ~ 5000 5700
NoConn ~ 5000 5800
NoConn ~ 5000 5900
NoConn ~ 5000 6000
NoConn ~ 5000 6300
NoConn ~ 5000 6400
NoConn ~ 6800 4900
NoConn ~ 6800 5100
NoConn ~ 6800 5200
NoConn ~ 6800 5400
NoConn ~ 6800 5500
NoConn ~ 6800 5600
NoConn ~ 6800 5700
NoConn ~ 6800 5800
NoConn ~ 6800 6000
NoConn ~ 6800 6100
NoConn ~ 6800 6300
NoConn ~ 6800 6400
Text Label 5800 3550 0    60   ~ 0
I2C_clock
Text Label 5800 3300 0    60   ~ 0
I2C_data
Text Label 4900 1350 0    60   ~ 0
cv1_raw
Text Label 4900 1450 0    60   ~ 0
cv2_raw
Text Label 4900 1550 0    60   ~ 0
cv3_raw
Text Label 4900 1650 0    60   ~ 0
cv4_raw
Text Label 4900 2150 0    60   ~ 0
cv5_raw
Text Label 4900 2250 0    60   ~ 0
cv6_raw
Text Label 4900 2350 0    60   ~ 0
cv7_raw
Text Label 4900 2450 0    60   ~ 0
cv8_raw
$EndSCHEMATC
