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
EELAYER 25 0
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
L Raspberry_Pi_2_3 U?
U 1 1 5AF38DD5
P 2750 3250
F 0 "U?" H 3450 2000 50  0000 C CNN
F 1 "Raspberry_Pi_Zero" H 2350 4150 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x20" H 3750 4500 50  0001 C CNN
F 3 "" H 2800 3100 50  0001 C CNN
	1    2750 3250
	1    0    0    -1  
$EndComp
$Comp
L MCP3008 U?
U 1 1 5AF38F39
P 6500 3350
F 0 "U?" H 6050 3800 50  0000 C CNN
F 1 "MCP3008" H 6850 3800 50  0000 C CNN
F 2 "" H 6400 3250 50  0000 C CNN
F 3 "" H 6500 3350 50  0000 C CNN
	1    6500 3350
	-1   0    0    1   
$EndComp
$Comp
L C C?
U 1 1 5AF38F74
P 6750 3950
F 0 "C?" H 6775 4050 50  0000 L CNN
F 1 "1uF" H 6775 3850 50  0000 L CNN
F 2 "" H 6788 3800 50  0000 C CNN
F 3 "" H 6750 3950 50  0000 C CNN
	1    6750 3950
	0    1    1    0   
$EndComp
$Comp
L POT RV?
U 1 1 5AF391FC
P 8250 1900
F 0 "RV?" V 8075 1900 50  0000 C CNN
F 1 "POT" V 8150 1900 50  0000 C CNN
F 2 "" H 8250 1900 50  0000 C CNN
F 3 "" H 8250 1900 50  0000 C CNN
	1    8250 1900
	-1   0    0    1   
$EndComp
Text GLabel 7200 3650 2    60   Input ~ 0
CV0
Text GLabel 8100 1900 0    60   Input ~ 0
CV0
Text GLabel 5800 3450 0    60   Input ~ 0
SPI_clock
Text GLabel 3650 3450 2    60   Input ~ 0
SPI_clock
Text GLabel 3650 3350 2    60   Input ~ 0
SPI_to_ADC
Text GLabel 5800 3250 0    60   Input ~ 0
SPI_to_ADC
Text GLabel 3650 3250 2    60   Input ~ 0
SPI_from_ADC
Text GLabel 5800 3350 0    60   Input ~ 0
SPI_from_ADC
Text GLabel 5800 3150 0    60   Input ~ 0
SPI_channel_select
Text GLabel 3650 3150 2    60   Input ~ 0
SPI_channel_select
$EndSCHEMATC
