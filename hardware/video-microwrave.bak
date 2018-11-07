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
Sheet 1 4
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
L Raspberry_Pi_2_3 U1
U 1 1 5AF38DD5
P 9250 2550
F 0 "U1" H 9950 1300 50  0000 C CNN
F 1 "Raspberry_Pi_Zero" H 8850 3450 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x20" H 10250 3800 50  0001 C CNN
F 3 "" H 9300 2400 50  0001 C CNN
	1    9250 2550
	1    0    0    -1  
$EndComp
Text GLabel 10150 2750 2    60   Input ~ 0
SPI_clock
Text GLabel 10150 2650 2    60   Input ~ 0
SPI_to_ADC
Text GLabel 10150 2550 2    60   Input ~ 0
SPI_from_ADC
Text GLabel 10150 2450 2    60   Input ~ 0
SPI_channel_select
$Sheet
S 700  700  700  350 
U 5BDF5AC7
F0 "power" 60
F1 "power.sch" 60
$EndSheet
$Sheet
S 700  1500 1550 1000
U 5BE21955
F0 "controls" 60
F1 "controls.sch" 60
$EndSheet
$Comp
L +3.3V #PWR?
U 1 1 5BE22E76
P 9350 950
F 0 "#PWR?" H 9350 800 50  0001 C CNN
F 1 "+3.3V" H 9350 1090 50  0000 C CNN
F 2 "" H 9350 950 50  0000 C CNN
F 3 "" H 9350 950 50  0000 C CNN
	1    9350 950 
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 5BE22E99
P 9100 950
F 0 "#PWR?" H 9100 800 50  0001 C CNN
F 1 "+5V" H 9100 1090 50  0000 C CNN
F 2 "" H 9100 950 50  0000 C CNN
F 3 "" H 9100 950 50  0000 C CNN
	1    9100 950 
	1    0    0    -1  
$EndComp
$Comp
L Earth #PWR?
U 1 1 5BE22F69
P 8850 4050
F 0 "#PWR?" H 8850 3800 50  0001 C CNN
F 1 "Earth" H 8850 3900 50  0001 C CNN
F 2 "" H 8850 4050 50  0000 C CNN
F 3 "" H 8850 4050 50  0000 C CNN
	1    8850 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	9100 950  9100 1100
Wire Wire Line
	9050 1100 9100 1100
Wire Wire Line
	9100 1100 9150 1100
Wire Wire Line
	9150 1100 9150 1250
Wire Wire Line
	9050 1100 9050 1250
Connection ~ 9100 1100
Wire Wire Line
	9350 950  9350 1250
Wire Wire Line
	8850 3850 8850 3950
Wire Wire Line
	8850 3950 8850 4050
Wire Wire Line
	8950 3850 8950 3950
Wire Wire Line
	8850 3950 8950 3950
Wire Wire Line
	8950 3950 9050 3950
Wire Wire Line
	9050 3950 9150 3950
Wire Wire Line
	9150 3950 9250 3950
Wire Wire Line
	9250 3950 9350 3950
Wire Wire Line
	9350 3950 9450 3950
Wire Wire Line
	9450 3950 9550 3950
Connection ~ 8850 3950
Wire Wire Line
	9050 3950 9050 3850
Connection ~ 8950 3950
Wire Wire Line
	9150 3950 9150 3850
Connection ~ 9050 3950
Wire Wire Line
	9250 3950 9250 3850
Connection ~ 9150 3950
Wire Wire Line
	9350 3950 9350 3850
Connection ~ 9250 3950
Wire Wire Line
	9450 3950 9450 3850
Connection ~ 9350 3950
Wire Wire Line
	9550 3950 9550 3850
Connection ~ 9450 3950
$Sheet
S 3300 1550 1750 900 
U 5BDF5B63
F0 "adc" 60
F1 "adc.sch" 60
F2 "input_[1-8]" I L 3300 1700 60 
$EndSheet
$EndSCHEMATC
