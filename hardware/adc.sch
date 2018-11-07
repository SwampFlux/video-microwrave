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
Sheet 4 4
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 4100 2800 0    60   Input ~ 0
input_1
Text HLabel 4100 3000 0    60   Input ~ 0
input_2
Text HLabel 5700 3100 2    60   Input ~ 0
input_3
Text HLabel 5700 2900 2    60   Input ~ 0
input_4
Text HLabel 4100 4050 0    60   Input ~ 0
input_5
Text HLabel 4100 4250 0    60   Input ~ 0
input_6
Text HLabel 5700 4150 2    60   Input ~ 0
input_7
Text HLabel 5700 4350 2    60   Input ~ 0
input_8
$Comp
L MCP3424 U?
U 1 1 5BDF6151
P 4900 3100
F 0 "U?" H 4900 2600 60  0000 C CNN
F 1 "MCP3424" H 4900 3600 60  0000 C CNN
F 2 "" H 4900 3100 60  0001 C CNN
F 3 "" H 4900 3100 60  0001 C CNN
	1    4900 3100
	1    0    0    -1  
$EndComp
$Comp
L MCP3424 U?
U 1 1 5BDF618D
P 4900 4350
F 0 "U?" H 4900 3850 60  0000 C CNN
F 1 "MCP3424" H 4900 4850 60  0000 C CNN
F 2 "" H 4900 4350 60  0001 C CNN
F 3 "" H 4900 4350 60  0001 C CNN
	1    4900 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 2800 4400 2800
Wire Wire Line
	4100 3000 4400 3000
Wire Wire Line
	5700 3100 5400 3100
Wire Wire Line
	5700 2900 5400 2900
$Comp
L Earth #PWR?
U 1 1 5BE328ED
P 4300 2900
F 0 "#PWR?" H 4300 2650 50  0001 C CNN
F 1 "Earth" H 4300 2750 50  0001 C CNN
F 2 "" H 4300 2900 50  0000 C CNN
F 3 "" H 4300 2900 50  0000 C CNN
	1    4300 2900
	0    1    1    0   
$EndComp
Wire Wire Line
	4300 2900 4400 2900
$Comp
L Earth #PWR?
U 1 1 5BE3290F
P 4300 3100
F 0 "#PWR?" H 4300 2850 50  0001 C CNN
F 1 "Earth" H 4300 2950 50  0001 C CNN
F 2 "" H 4300 3100 50  0000 C CNN
F 3 "" H 4300 3100 50  0000 C CNN
	1    4300 3100
	0    1    1    0   
$EndComp
Wire Wire Line
	4300 3100 4400 3100
$Comp
L Earth #PWR?
U 1 1 5BE32932
P 5550 2800
F 0 "#PWR?" H 5550 2550 50  0001 C CNN
F 1 "Earth" H 5550 2650 50  0001 C CNN
F 2 "" H 5550 2800 50  0000 C CNN
F 3 "" H 5550 2800 50  0000 C CNN
	1    5550 2800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5550 2800 5400 2800
$Comp
L Earth #PWR?
U 1 1 5BE32956
P 5550 3000
F 0 "#PWR?" H 5550 2750 50  0001 C CNN
F 1 "Earth" H 5550 2850 50  0001 C CNN
F 2 "" H 5550 3000 50  0000 C CNN
F 3 "" H 5550 3000 50  0000 C CNN
	1    5550 3000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5550 3000 5400 3000
Wire Wire Line
	5700 4150 5400 4150
Wire Wire Line
	5400 4350 5700 4350
Wire Wire Line
	4400 4250 4100 4250
Wire Wire Line
	4100 4050 4400 4050
$Comp
L Earth #PWR?
U 1 1 5BE329E0
P 5550 4250
F 0 "#PWR?" H 5550 4000 50  0001 C CNN
F 1 "Earth" H 5550 4100 50  0001 C CNN
F 2 "" H 5550 4250 50  0000 C CNN
F 3 "" H 5550 4250 50  0000 C CNN
	1    5550 4250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5550 4250 5400 4250
$Comp
L Earth #PWR?
U 1 1 5BE32A0A
P 5550 4050
F 0 "#PWR?" H 5550 3800 50  0001 C CNN
F 1 "Earth" H 5550 3900 50  0001 C CNN
F 2 "" H 5550 4050 50  0000 C CNN
F 3 "" H 5550 4050 50  0000 C CNN
	1    5550 4050
	0    -1   -1   0   
$EndComp
$Comp
L Earth #PWR?
U 1 1 5BE32A35
P 4300 4150
F 0 "#PWR?" H 4300 3900 50  0001 C CNN
F 1 "Earth" H 4300 4000 50  0001 C CNN
F 2 "" H 4300 4150 50  0000 C CNN
F 3 "" H 4300 4150 50  0000 C CNN
	1    4300 4150
	0    1    1    0   
$EndComp
Wire Wire Line
	4300 4150 4400 4150
$Comp
L Earth #PWR?
U 1 1 5BE32A71
P 4300 4350
F 0 "#PWR?" H 4300 4100 50  0001 C CNN
F 1 "Earth" H 4300 4200 50  0001 C CNN
F 2 "" H 4300 4350 50  0000 C CNN
F 3 "" H 4300 4350 50  0000 C CNN
	1    4300 4350
	0    1    1    0   
$EndComp
Wire Wire Line
	4300 4350 4400 4350
Wire Wire Line
	5550 4050 5400 4050
$EndSCHEMATC
