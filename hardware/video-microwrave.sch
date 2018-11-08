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
P 9350 5050
F 0 "U101" H 10050 3800 50  0000 C CNN
F 1 "Raspberry_Pi_Zero" H 8950 5950 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x20" H 10350 6300 50  0001 C CNN
F 3 "" H 9400 4900 50  0001 C CNN
	1    9350 5050
	1    0    0    -1  
$EndComp
Text GLabel 10250 5250 2    60   Input ~ 0
SPI_clock
Text GLabel 10250 5150 2    60   Input ~ 0
SPI_to_ADC
Text GLabel 10250 5050 2    60   Input ~ 0
SPI_from_ADC
Text GLabel 10250 4950 2    60   Input ~ 0
SPI_channel_select
$Sheet
S 1050 900  700  350 
U 5BDF5AC7
F0 "power" 60
F1 "power.sch" 60
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
P 9450 3450
F 0 "#PWR01" H 9450 3300 50  0001 C CNN
F 1 "+3.3V" H 9450 3590 50  0000 C CNN
F 2 "" H 9450 3450 50  0000 C CNN
F 3 "" H 9450 3450 50  0000 C CNN
	1    9450 3450
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR02
U 1 1 5BE22E99
P 9200 3450
F 0 "#PWR02" H 9200 3300 50  0001 C CNN
F 1 "+5V" H 9200 3590 50  0000 C CNN
F 2 "" H 9200 3450 50  0000 C CNN
F 3 "" H 9200 3450 50  0000 C CNN
	1    9200 3450
	1    0    0    -1  
$EndComp
$Comp
L Earth #PWR03
U 1 1 5BE22F69
P 8950 6550
F 0 "#PWR03" H 8950 6300 50  0001 C CNN
F 1 "Earth" H 8950 6400 50  0001 C CNN
F 2 "" H 8950 6550 50  0000 C CNN
F 3 "" H 8950 6550 50  0000 C CNN
	1    8950 6550
	1    0    0    -1  
$EndComp
Wire Wire Line
	9200 3450 9200 3600
Wire Wire Line
	9150 3600 9250 3600
Wire Wire Line
	9250 3600 9250 3750
Wire Wire Line
	9150 3600 9150 3750
Connection ~ 9200 3600
Wire Wire Line
	9450 3450 9450 3750
Wire Wire Line
	8950 6350 8950 6550
Wire Wire Line
	9050 6350 9050 6450
Wire Wire Line
	8950 6450 9650 6450
Connection ~ 8950 6450
Wire Wire Line
	9150 6450 9150 6350
Connection ~ 9050 6450
Wire Wire Line
	9250 6450 9250 6350
Connection ~ 9150 6450
Wire Wire Line
	9350 6450 9350 6350
Connection ~ 9250 6450
Wire Wire Line
	9450 6450 9450 6350
Connection ~ 9350 6450
Wire Wire Line
	9550 6450 9550 6350
Connection ~ 9450 6450
Wire Wire Line
	9650 6450 9650 6350
Connection ~ 9550 6450
$Sheet
S 900  2850 1750 900 
U 5BDF5B63
F0 "adc" 60
F1 "adc.sch" 60
F2 "input_[1-8]" I L 900 3000 60 
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
Text Label 5400 1350 0    60   ~ 0
1
Text Label 5300 1450 0    60   ~ 0
2
Text Label 5200 1550 0    60   ~ 0
3
Text Label 5100 1650 0    60   ~ 0
4
Text Label 5400 2150 0    60   ~ 0
5
Text Label 5300 2250 0    60   ~ 0
6
Text Label 5200 2350 0    60   ~ 0
7
Text Label 5100 2450 0    60   ~ 0
8
$EndSCHEMATC
