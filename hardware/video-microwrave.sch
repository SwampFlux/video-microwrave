EESchema Schematic File Version 2
LIBS:power
LIBS:microcontrollers
LIBS:74xgxx
LIBS:74xx
LIBS:ac-dc
LIBS:actel
LIBS:adc-dac
LIBS:allegro
LIBS:Altera
LIBS:analog_devices
LIBS:analog_switches
LIBS:atmel
LIBS:audio
LIBS:battery_management
LIBS:bbd
LIBS:bosch
LIBS:brooktre
LIBS:cmos_ieee
LIBS:cmos4000
LIBS:conn
LIBS:contrib
LIBS:cypress
LIBS:dc-dc
LIBS:device
LIBS:digital-audio
LIBS:diode
LIBS:display
LIBS:dsp
LIBS:elec-unifil
LIBS:ESD_Protection
LIBS:ftdi
LIBS:gennum
LIBS:graphic_symbols
LIBS:hc11
LIBS:infineon
LIBS:intel
LIBS:interface
LIBS:intersil
LIBS:ir
LIBS:Lattice
LIBS:leds
LIBS:LEM
LIBS:linear
LIBS:logic_programmable
LIBS:maxim
LIBS:mechanical
LIBS:memory
LIBS:microchip_dspic33dsc
LIBS:microchip_pic10mcu
LIBS:microchip_pic12mcu
LIBS:microchip_pic16mcu
LIBS:microchip_pic18mcu
LIBS:microchip_pic24mcu
LIBS:microchip_pic32mcu
LIBS:microchip
LIBS:modules
LIBS:motor_drivers
LIBS:motorola
LIBS:motors
LIBS:msp430
LIBS:nordicsemi
LIBS:nxp_armmcu
LIBS:nxp
LIBS:onsemi
LIBS:opto
LIBS:Oscillators
LIBS:philips
LIBS:Power_Management
LIBS:powerint
LIBS:pspice
LIBS:references
LIBS:regul
LIBS:relays
LIBS:rfcom
LIBS:RFSolutions
LIBS:sensors
LIBS:silabs
LIBS:siliconi
LIBS:stm8
LIBS:stm32
LIBS:supertex
LIBS:switches
LIBS:texas
LIBS:transf
LIBS:transistors
LIBS:triac_thyristor
LIBS:ttl_ieee
LIBS:valves
LIBS:video
LIBS:wiznet
LIBS:Worldsemi
LIBS:Xicor
LIBS:xilinx
LIBS:zetex
LIBS:Zilog
LIBS:eurocad
LIBS:SparkFun-Aesthetics
LIBS:SparkFun-Batteries
LIBS:SparkFun-Boards
LIBS:SparkFun-Capacitors
LIBS:SparkFun-Clocks
LIBS:SparkFun-Coils
LIBS:SparkFun-Connectors
LIBS:SparkFun-DiscreteSemi
LIBS:SparkFun-Displays
LIBS:SparkFun-Electromechanical
LIBS:SparkFun-Fuses
LIBS:SparkFun-GPS
LIBS:SparkFun-Hardware
LIBS:SparkFun-IC-Amplifiers
LIBS:SparkFun-IC-Comms
LIBS:SparkFun-IC-Conversion
LIBS:SparkFun-IC-Logic
LIBS:SparkFun-IC-Memory
LIBS:SparkFun-IC-Microcontroller
LIBS:SparkFun-IC-Power
LIBS:SparkFun-IC-Special-Function
LIBS:SparkFun-Jumpers
LIBS:SparkFun-LED
LIBS:SparkFun-PowerSymbols
LIBS:SparkFun-Resistors
LIBS:SparkFun-RF
LIBS:SparkFun-Sensors
LIBS:SparkFun-Switches
LIBS:video-microwrave-cache
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
L Raspberry_Pi_2_3 U1
U 1 1 5AF38DD5
P 2550 2250
F 0 "U1" H 3250 1000 50  0000 C CNN
F 1 "Raspberry_Pi_Zero" H 2150 3150 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x20" H 3550 3500 50  0001 C CNN
F 3 "" H 2600 2100 50  0001 C CNN
	1    2550 2250
	1    0    0    -1  
$EndComp
$Comp
L MCP3008 U2
U 1 1 5AF38F39
P 6300 2350
F 0 "U2" H 5850 2800 50  0000 C CNN
F 1 "MCP3008" H 6650 2800 50  0000 C CNN
F 2 "Housings_DIP:DIP-16_W7.62mm" H 6200 2250 50  0001 C CNN
F 3 "" H 6300 2350 50  0000 C CNN
	1    6300 2350
	-1   0    0    1   
$EndComp
$Comp
L C C1
U 1 1 5AF38F74
P 6450 3200
F 0 "C1" H 6475 3300 50  0000 L CNN
F 1 "1uF" H 6475 3100 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 6488 3050 50  0001 C CNN
F 3 "" H 6450 3200 50  0000 C CNN
	1    6450 3200
	0    1    1    0   
$EndComp
$Comp
L POT RV5
U 1 1 5AF391FC
P 10450 1750
F 0 "RV5" V 10275 1750 50  0000 C CNN
F 1 "10k" V 10350 1750 50  0000 C CNN
F 2 "" H 10450 1750 50  0001 C CNN
F 3 "" H 10450 1750 50  0000 C CNN
	1    10450 1750
	-1   0    0    1   
$EndComp
Text GLabel 7000 2650 2    60   Input ~ 0
CV0_result
Text GLabel 10300 1750 0    60   Input ~ 0
CV1_result
Text GLabel 5600 2450 0    60   Input ~ 0
SPI_clock
Text GLabel 3450 2450 2    60   Input ~ 0
SPI_clock
Text GLabel 3450 2350 2    60   Input ~ 0
SPI_to_ADC
Text GLabel 5600 2250 0    60   Input ~ 0
SPI_to_ADC
Text GLabel 3450 2250 2    60   Input ~ 0
SPI_from_ADC
Text GLabel 5600 2350 0    60   Input ~ 0
SPI_from_ADC
Text GLabel 5600 2150 0    60   Input ~ 0
SPI_channel_select
Text GLabel 3450 2150 2    60   Input ~ 0
SPI_channel_select
Text GLabel 7000 2550 2    60   Input ~ 0
CV1_result
Text GLabel 10700 1600 2    60   Input ~ 0
GND2
$Comp
L JACK_2P J5
U 1 1 5AF39973
P 10550 1150
F 0 "J5" H 10200 950 50  0000 C CNN
F 1 "JACK_2P" H 10400 1400 50  0000 C CNN
F 2 "" H 10550 1150 50  0001 C CNN
F 3 "" H 10550 1150 50  0000 C CNN
	1    10550 1150
	0    1    1    0   
$EndComp
Wire Wire Line
	10700 1600 10700 1900
Wire Wire Line
	10700 1900 10450 1900
Wire Wire Line
	10250 1600 10550 1600
Text GLabel 10250 1600 0    60   Input ~ 0
5V
$Comp
L POT RV6
U 1 1 5AF39DC5
P 10450 3200
F 0 "RV6" V 10275 3200 50  0000 C CNN
F 1 "10k" V 10350 3200 50  0000 C CNN
F 2 "" H 10450 3200 50  0001 C CNN
F 3 "" H 10450 3200 50  0000 C CNN
	1    10450 3200
	-1   0    0    1   
$EndComp
Text GLabel 10300 3200 0    60   Input ~ 0
CV3_result
Text GLabel 10700 3050 2    60   Input ~ 0
GND2
$Comp
L JACK_2P J6
U 1 1 5AF39DCE
P 10550 2600
F 0 "J6" H 10200 2400 50  0000 C CNN
F 1 "JACK_2P" H 10400 2850 50  0000 C CNN
F 2 "" H 10550 2600 50  0001 C CNN
F 3 "" H 10550 2600 50  0000 C CNN
	1    10550 2600
	0    1    1    0   
$EndComp
Wire Wire Line
	10700 3050 10700 3350
Wire Wire Line
	10700 3350 10450 3350
Wire Wire Line
	10250 3050 10550 3050
Text GLabel 10250 3050 0    60   Input ~ 0
5V
$Comp
L POT RV7
U 1 1 5AF39E7A
P 10450 4650
F 0 "RV7" V 10275 4650 50  0000 C CNN
F 1 "10k" V 10350 4650 50  0000 C CNN
F 2 "" H 10450 4650 50  0001 C CNN
F 3 "" H 10450 4650 50  0000 C CNN
	1    10450 4650
	-1   0    0    1   
$EndComp
Text GLabel 10300 4650 0    60   Input ~ 0
CV5_result
Text GLabel 10700 4500 2    60   Input ~ 0
GND2
$Comp
L JACK_2P J7
U 1 1 5AF39E83
P 10550 4050
F 0 "J7" H 10200 3850 50  0000 C CNN
F 1 "JACK_2P" H 10400 4300 50  0000 C CNN
F 2 "" H 10550 4050 50  0001 C CNN
F 3 "" H 10550 4050 50  0000 C CNN
	1    10550 4050
	0    1    1    0   
$EndComp
Wire Wire Line
	10700 4500 10700 4800
Wire Wire Line
	10700 4800 10450 4800
Wire Wire Line
	10250 4500 10550 4500
Text GLabel 10250 4500 0    60   Input ~ 0
5V
$Comp
L POT RV1
U 1 1 5AF39F43
P 8900 1750
F 0 "RV1" V 8725 1750 50  0000 C CNN
F 1 "10k" V 8800 1750 50  0000 C CNN
F 2 "" H 8900 1750 50  0001 C CNN
F 3 "" H 8900 1750 50  0000 C CNN
	1    8900 1750
	-1   0    0    1   
$EndComp
Text GLabel 8750 1750 0    60   Input ~ 0
CV0_result
Text GLabel 9150 1600 2    60   Input ~ 0
GND2
$Comp
L JACK_2P J1
U 1 1 5AF39F4C
P 9000 1150
F 0 "J1" H 8650 950 50  0000 C CNN
F 1 "JACK_2P" H 8850 1400 50  0000 C CNN
F 2 "" H 9000 1150 50  0001 C CNN
F 3 "" H 9000 1150 50  0000 C CNN
	1    9000 1150
	0    1    1    0   
$EndComp
Wire Wire Line
	9150 1600 9150 1900
Wire Wire Line
	9150 1900 8900 1900
Wire Wire Line
	8700 1600 9000 1600
Text GLabel 8700 1600 0    60   Input ~ 0
5V
$Comp
L POT RV2
U 1 1 5AF39FDA
P 8900 3200
F 0 "RV2" V 8725 3200 50  0000 C CNN
F 1 "10k" V 8800 3200 50  0000 C CNN
F 2 "" H 8900 3200 50  0001 C CNN
F 3 "" H 8900 3200 50  0000 C CNN
	1    8900 3200
	-1   0    0    1   
$EndComp
Text GLabel 8750 3200 0    60   Input ~ 0
CV2_result
Text GLabel 9150 3050 2    60   Input ~ 0
GND2
$Comp
L JACK_2P J2
U 1 1 5AF39FE3
P 9000 2600
F 0 "J2" H 8650 2400 50  0000 C CNN
F 1 "JACK_2P" H 8850 2850 50  0000 C CNN
F 2 "" H 9000 2600 50  0001 C CNN
F 3 "" H 9000 2600 50  0000 C CNN
	1    9000 2600
	0    1    1    0   
$EndComp
Wire Wire Line
	9150 3050 9150 3350
Wire Wire Line
	9150 3350 8900 3350
Wire Wire Line
	8700 3050 9000 3050
Text GLabel 8700 3050 0    60   Input ~ 0
5V
$Comp
L POT RV3
U 1 1 5AF3A03B
P 8900 4650
F 0 "RV3" V 8725 4650 50  0000 C CNN
F 1 "10k" V 8800 4650 50  0000 C CNN
F 2 "" H 8900 4650 50  0001 C CNN
F 3 "" H 8900 4650 50  0000 C CNN
	1    8900 4650
	-1   0    0    1   
$EndComp
Text GLabel 8750 4650 0    60   Input ~ 0
CV4_result
Text GLabel 9150 4500 2    60   Input ~ 0
GND2
$Comp
L JACK_2P J3
U 1 1 5AF3A044
P 9000 4050
F 0 "J3" H 8650 3850 50  0000 C CNN
F 1 "JACK_2P" H 8850 4300 50  0000 C CNN
F 2 "" H 9000 4050 50  0001 C CNN
F 3 "" H 9000 4050 50  0000 C CNN
	1    9000 4050
	0    1    1    0   
$EndComp
Wire Wire Line
	9150 4500 9150 4800
Wire Wire Line
	9150 4800 8900 4800
Wire Wire Line
	8700 4500 9000 4500
Text GLabel 8700 4500 0    60   Input ~ 0
5V
$Comp
L POT RV4
U 1 1 5AF3A358
P 8900 6200
F 0 "RV4" V 8725 6200 50  0000 C CNN
F 1 "10k" V 8800 6200 50  0000 C CNN
F 2 "" H 8900 6200 50  0001 C CNN
F 3 "" H 8900 6200 50  0000 C CNN
	1    8900 6200
	-1   0    0    1   
$EndComp
Text GLabel 8750 6200 0    60   Input ~ 0
CV6_result
Text GLabel 9150 6050 2    60   Input ~ 0
GND2
$Comp
L JACK_2P J4
U 1 1 5AF3A361
P 9000 5600
F 0 "J4" H 8650 5400 50  0000 C CNN
F 1 "JACK_2P" H 8850 5850 50  0000 C CNN
F 2 "" H 9000 5600 50  0001 C CNN
F 3 "" H 9000 5600 50  0000 C CNN
	1    9000 5600
	0    1    1    0   
$EndComp
Wire Wire Line
	9150 6050 9150 6350
Wire Wire Line
	9150 6350 8900 6350
Wire Wire Line
	8700 6050 9000 6050
Text GLabel 8700 6050 0    60   Input ~ 0
5V
$Comp
L POT RV8
U 1 1 5AF3A3D9
P 10450 6200
F 0 "RV8" V 10275 6200 50  0000 C CNN
F 1 "10k" V 10350 6200 50  0000 C CNN
F 2 "" H 10450 6200 50  0001 C CNN
F 3 "" H 10450 6200 50  0000 C CNN
	1    10450 6200
	-1   0    0    1   
$EndComp
Text GLabel 10300 6200 0    60   Input ~ 0
CV7_result
Text GLabel 10700 6050 2    60   Input ~ 0
GND2
$Comp
L JACK_2P J8
U 1 1 5AF3A3E2
P 10550 5600
F 0 "J8" H 10200 5400 50  0000 C CNN
F 1 "JACK_2P" H 10400 5850 50  0000 C CNN
F 2 "" H 10550 5600 50  0001 C CNN
F 3 "" H 10550 5600 50  0000 C CNN
	1    10550 5600
	0    1    1    0   
$EndComp
Wire Wire Line
	10700 6050 10700 6350
Wire Wire Line
	10700 6350 10450 6350
Wire Wire Line
	10250 6050 10550 6050
Text GLabel 10250 6050 0    60   Input ~ 0
5V
Text GLabel 7000 2450 2    60   Input ~ 0
CV2_result
Text GLabel 7000 2350 2    60   Input ~ 0
CV3_result
Text GLabel 7000 2250 2    60   Input ~ 0
CV4_result
Text GLabel 7000 2150 2    60   Input ~ 0
CV5_result
Text GLabel 7000 2050 2    60   Input ~ 0
CV6_result
Text GLabel 7000 1950 2    60   Input ~ 0
CV7_result
Text GLabel 6300 3450 3    60   Input ~ 0
5V
Wire Wire Line
	6400 2950 6300 2950
Wire Wire Line
	6300 2950 6200 2950
Wire Wire Line
	6300 2950 6300 3200
Wire Wire Line
	6300 3200 6300 3450
Connection ~ 6300 3200
Connection ~ 6300 2950
Text GLabel 6600 3200 2    60   Input ~ 0
GND0
Text GLabel 2150 3550 3    60   Input ~ 0
GND0
Text GLabel 6200 1650 1    60   Input ~ 0
GND0
Text GLabel 6400 1650 1    60   Input ~ 0
GND1
Text GLabel 2250 3550 3    60   Input ~ 0
GND1
Text GLabel 2350 3550 3    60   Input ~ 0
GND2
Text GLabel 2350 950  1    60   Input ~ 0
5V
$EndSCHEMATC
