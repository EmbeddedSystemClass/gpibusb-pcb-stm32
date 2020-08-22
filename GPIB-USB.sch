EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "GPIB / IEEE 488 to USB Serial Adapter"
Date "2020-08-19"
Rev "01"
Comp "SBE"
Comment1 "Based on design by Galvant Industries"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector:USB_B J1
U 1 1 5F3D7981
P 950 1850
F 0 "J1" H 1007 2317 50  0000 C CNN
F 1 "USB_B" H 1007 2226 50  0000 C CNN
F 2 "Connector_USB:USB_B_OST_USB-B1HSxx_Horizontal" H 1100 1800 50  0001 C CNN
F 3 " ~" H 1100 1800 50  0001 C CNN
	1    950  1850
	1    0    0    -1  
$EndComp
$Comp
L Power_Protection:WE-TVS-82400102 U3
U 1 1 5F3D8535
P 2000 2050
F 0 "U3" H 2000 2450 50  0000 C CNN
F 1 "WE-TVS-82400102" H 2000 2350 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6" H 2000 1850 50  0001 C CNN
F 3 "https://katalog.we-online.de/pbs/datasheet/82400102.pdf" H 2000 1800 50  0001 C CNN
F 4 "82400102" H 2000 2050 50  0001 C CNN "article"
	1    2000 2050
	1    0    0    -1  
$EndComp
$Comp
L power:VBUS #PWR05
U 1 1 5F3DBEFC
P 1350 900
F 0 "#PWR05" H 1350 750 50  0001 C CNN
F 1 "VBUS" H 1365 1073 50  0000 C CNN
F 2 "" H 1350 900 50  0001 C CNN
F 3 "" H 1350 900 50  0001 C CNN
	1    1350 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 1650 1350 1650
Wire Wire Line
	1700 1950 1650 1900
Wire Wire Line
	1650 1900 1650 1850
Connection ~ 1650 1850
Wire Wire Line
	1650 1850 2350 1850
Wire Wire Line
	2300 1950 2350 1900
Wire Wire Line
	2350 1900 2350 1850
Connection ~ 2350 1850
$Comp
L power:VBUS #PWR020
U 1 1 5F3E07B3
P 2300 2050
F 0 "#PWR020" H 2300 1900 50  0001 C CNN
F 1 "VBUS" V 2300 2200 50  0000 L CNN
F 2 "" H 2300 2050 50  0001 C CNN
F 3 "" H 2300 2050 50  0001 C CNN
	1    2300 2050
	0    1    1    0   
$EndComp
$Comp
L Device:Ferrite_Bead_Small FB1
U 1 1 5F3E137B
P 850 2400
F 0 "FB1" H 751 2354 50  0000 R CNN
F 1 "1k1" H 751 2445 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 780 2400 50  0001 C CNN
F 3 "https://www.we-online.com/catalog/datasheet/782853112.pdf" H 850 2400 50  0001 C CNN
F 4 "782853112" H 850 2400 50  0001 C CNN "article"
F 5 "0R3" H 850 2400 50  0001 C CNN "RDC"
F 6 "0.8A" H 850 2400 50  0001 C CNN "IDC"
	1    850  2400
	1    0    0    1   
$EndComp
Wire Wire Line
	850  2300 850  2250
Wire Wire Line
	950  2250 950  2550
Wire Wire Line
	950  2550 850  2550
Wire Wire Line
	850  2550 850  2500
Wire Wire Line
	950  2550 950  2600
Connection ~ 950  2550
$Comp
L power:GND #PWR024
U 1 1 5F3E3F89
P 950 2600
F 0 "#PWR024" H 950 2350 50  0001 C CNN
F 1 "GND" H 955 2427 50  0000 C CNN
F 2 "" H 950 2600 50  0001 C CNN
F 3 "" H 950 2600 50  0001 C CNN
	1    950  2600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR019
U 1 1 5F3E47C1
P 1700 2050
F 0 "#PWR019" H 1700 1800 50  0001 C CNN
F 1 "GND" V 1705 1922 50  0000 R CNN
F 2 "" H 1700 2050 50  0001 C CNN
F 3 "" H 1700 2050 50  0001 C CNN
	1    1700 2050
	0    1    1    0   
$EndComp
Wire Wire Line
	1250 1850 1650 1850
Wire Wire Line
	1250 1950 1300 1950
Wire Wire Line
	1300 1950 1350 2000
Wire Wire Line
	1350 2000 1350 2100
Wire Wire Line
	1350 2100 1400 2150
Wire Wire Line
	2300 2150 2350 2150
Wire Wire Line
	1400 2150 1650 2150
Wire Wire Line
	1650 2150 1650 2200
Wire Wire Line
	1650 2200 1700 2250
Wire Wire Line
	1700 2250 2300 2250
Wire Wire Line
	2300 2250 2350 2200
Wire Wire Line
	2350 2200 2350 2150
Connection ~ 1650 2150
Wire Wire Line
	1650 2150 1700 2150
Connection ~ 2350 2150
Text Label 2500 1850 0    31   ~ 0
USB_D+
Text Label 2500 2150 0    31   ~ 0
USB_D-
$Comp
L Device:Polyfuse F1
U 1 1 5F405FFB
P 1900 950
F 0 "F1" V 1750 900 50  0000 C CNN
F 1 "nanoSMDC075F" V 2050 900 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" H 1950 750 50  0001 L CNN
F 3 "https://www.littelfuse.com/~/media/electronics/datasheets/resettable_ptcs/littelfuse_ptc_nanosmdc_datasheet.pdf.pdf" H 1900 950 50  0001 C CNN
F 4 "nanoSMDC075F" V 1900 950 50  0001 C CNN "article"
	1    1900 950 
	0    1    1    0   
$EndComp
$Comp
L Device:R R8
U 1 1 5F40805B
P 7450 5950
F 0 "R8" H 7520 5996 50  0000 L CNN
F 1 "10k" H 7520 5905 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7380 5950 50  0001 C CNN
F 3 "https://industrial.panasonic.com/cdbs/www-data/pdf/RDA0000/AOA0000C301.pdf" H 7450 5950 50  0001 C CNN
F 4 "ERJ-3GEYJ103V" H 7450 5950 50  0001 C CNN "article"
F 5 "yes, if AEC-Q200" H 7450 5950 50  0001 C CNN "alt allowed"
F 6 "0.125W" H 7450 5950 50  0001 C CNN "Power"
	1    7450 5950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR026
U 1 1 5F40934D
P 4300 2850
F 0 "#PWR026" H 4300 2600 50  0001 C CNN
F 1 "GND" H 4305 2677 50  0000 C CNN
F 2 "" H 4300 2850 50  0001 C CNN
F 3 "" H 4300 2850 50  0001 C CNN
	1    4300 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 2750 4400 2800
Wire Wire Line
	4400 2800 4300 2800
Wire Wire Line
	4200 2800 4200 2750
Wire Wire Line
	4300 2750 4300 2800
Connection ~ 4300 2800
Wire Wire Line
	4300 2800 4200 2800
Wire Wire Line
	4300 2800 4300 2850
$Comp
L Interface_USB:FT230XQ U4
U 1 1 5F3D7308
P 4300 2050
F 0 "U4" H 4600 1350 50  0000 C CNN
F 1 "FT230XQ" H 4700 1450 50  0000 C CNN
F 2 "Package_DFN_QFN:QFN-16-1EP_4x4mm_P0.65mm_EP2.1x2.1mm" H 5650 1450 50  0001 C CNN
F 3 "https://www.ftdichip.com/Support/Documents/DataSheets/ICs/DS_FT230X.pdf" H 4300 2050 50  0001 C CNN
	1    4300 2050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5F413EB5
P 2900 1850
F 0 "R1" V 2800 1850 50  0000 C CNN
F 1 "27R" V 3000 1850 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2830 1850 50  0001 C CNN
F 3 "https://industrial.panasonic.com/cdbs/www-data/pdf/RDA0000/AOA0000C301.pdf" H 2900 1850 50  0001 C CNN
F 4 "ERJ-6GEYJ270V" H 2900 1850 50  0001 C CNN "article"
F 5 "yes, if AEC-Q200" H 2900 1850 50  0001 C CNN "alt allowed"
F 6 "0.125W" H 2900 1850 50  0001 C CNN "Power"
	1    2900 1850
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 5F417A6E
P 2900 2150
F 0 "R2" V 2800 2150 50  0000 C CNN
F 1 "27R" V 3000 2150 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2830 2150 50  0001 C CNN
F 3 "https://industrial.panasonic.com/cdbs/www-data/pdf/RDA0000/AOA0000C301.pdf" H 2900 2150 50  0001 C CNN
F 4 "ERJ-6GEYJ270V" H 2900 2150 50  0001 C CNN "article"
F 5 "yes, if AEC-Q200" H 2900 2150 50  0001 C CNN "alt allowed"
F 6 "0.125W" H 2900 2150 50  0001 C CNN "Power"
	1    2900 2150
	0    1    -1   0   
$EndComp
Wire Wire Line
	2350 2150 2750 2150
Wire Wire Line
	2350 1850 2750 1850
Text Label 3100 1850 0    31   ~ 0
USB_ftdi_D+
Text Label 3100 2150 0    31   ~ 0
USB_ftdi_D-
Wire Wire Line
	3050 2150 3450 2150
Wire Wire Line
	3050 1850 3450 1850
Wire Wire Line
	1350 900  1350 950 
Wire Wire Line
	1750 950  1350 950 
Wire Wire Line
	2300 950  2300 900 
$Comp
L power:+5V #PWR06
U 1 1 5F421B1D
P 2300 900
F 0 "#PWR06" H 2300 750 50  0001 C CNN
F 1 "+5V" H 2315 1073 50  0000 C CNN
F 2 "" H 2300 900 50  0001 C CNN
F 3 "" H 2300 900 50  0001 C CNN
	1    2300 900 
	1    0    0    -1  
$EndComp
Connection ~ 1350 950 
Wire Wire Line
	2300 1000 2300 950 
Connection ~ 2300 950 
Wire Wire Line
	2300 1300 2300 1350
$Comp
L power:GND #PWR012
U 1 1 5F4289BD
P 2300 1350
F 0 "#PWR012" H 2300 1100 50  0001 C CNN
F 1 "GND" H 2305 1177 50  0000 C CNN
F 2 "" H 2300 1350 50  0001 C CNN
F 3 "" H 2300 1350 50  0001 C CNN
	1    2300 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 2050 3500 1950
Wire Wire Line
	3500 1950 3500 1900
Wire Wire Line
	3500 1900 3450 1850
Wire Wire Line
	3600 1950 3500 2050
Wire Wire Line
	3500 2050 3500 2100
Wire Wire Line
	3500 2100 3450 2150
$Comp
L power:GND #PWR021
U 1 1 5F431878
P 8750 2150
F 0 "#PWR021" H 8750 1900 50  0001 C CNN
F 1 "GND" H 8755 1977 50  0000 C CNN
F 2 "" H 8750 2150 50  0001 C CNN
F 3 "" H 8750 2150 50  0001 C CNN
	1    8750 2150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR025
U 1 1 5F432D37
P 8750 2600
F 0 "#PWR025" H 8750 2450 50  0001 C CNN
F 1 "+5V" H 8750 2750 50  0000 C CNN
F 2 "" H 8750 2600 50  0001 C CNN
F 3 "" H 8750 2600 50  0001 C CNN
	1    8750 2600
	1    0    0    -1  
$EndComp
Text GLabel 9250 950  2    50   Input ~ 0
conDIO1
Text GLabel 9250 1050 2    50   Input ~ 0
conDIO2
Text GLabel 9250 1150 2    50   Input ~ 0
conDIO3
Text GLabel 9250 1250 2    50   Input ~ 0
conDIO4
Wire Wire Line
	9150 1250 9250 1250
Wire Wire Line
	9250 1150 9150 1150
Wire Wire Line
	9150 1050 9250 1050
Wire Wire Line
	9250 950  9150 950 
Text GLabel 9250 1350 2    50   Input ~ 0
conDIO5
Text GLabel 9250 1450 2    50   Input ~ 0
conDIO6
Text GLabel 9250 1550 2    50   Input ~ 0
conDIO7
Text GLabel 9250 1650 2    50   Input ~ 0
conDIO8
Wire Wire Line
	9150 1650 9250 1650
Wire Wire Line
	9250 1550 9150 1550
Wire Wire Line
	9150 1450 9250 1450
Wire Wire Line
	9250 1350 9150 1350
Text GLabel 8250 950  0    50   Input ~ 0
DIO1
Wire Wire Line
	8250 950  8350 950 
Text GLabel 8250 1050 0    50   Input ~ 0
DIO2
Wire Wire Line
	8250 1050 8350 1050
Text GLabel 8250 1150 0    50   Input ~ 0
DIO3
Wire Wire Line
	8250 1150 8350 1150
Text GLabel 8250 1250 0    50   Input ~ 0
DIO4
Wire Wire Line
	8250 1250 8350 1250
Text GLabel 8250 1350 0    50   Input ~ 0
DIO5
Wire Wire Line
	8250 1350 8350 1350
Text GLabel 8250 1450 0    50   Input ~ 0
DIO6
Wire Wire Line
	8250 1450 8350 1450
Text GLabel 8250 1550 0    50   Input ~ 0
DIO7
Wire Wire Line
	8250 1550 8350 1550
Text GLabel 8250 1650 0    50   Input ~ 0
DIO8
Wire Wire Line
	8250 1650 8350 1650
Text GLabel 8250 1850 0    50   Input ~ 0
TE
Wire Wire Line
	8250 1850 8350 1850
Text GLabel 8250 1950 0    50   Input ~ 0
~PE~
Wire Wire Line
	8250 1950 8350 1950
Wire Wire Line
	9450 2350 9450 2400
$Comp
L power:GND #PWR022
U 1 1 5F43D777
P 9450 2400
F 0 "#PWR022" H 9450 2150 50  0001 C CNN
F 1 "GND" H 9455 2227 50  0000 C CNN
F 2 "" H 9450 2400 50  0001 C CNN
F 3 "" H 9450 2400 50  0001 C CNN
	1    9450 2400
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR017
U 1 1 5F43E5C9
P 9450 2000
F 0 "#PWR017" H 9450 1850 50  0001 C CNN
F 1 "+5V" H 9465 2173 50  0000 C CNN
F 2 "" H 9450 2000 50  0001 C CNN
F 3 "" H 9450 2000 50  0001 C CNN
	1    9450 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9450 2000 9450 2050
$Comp
L power:+5V #PWR015
U 1 1 5F447EB7
P 4200 1350
F 0 "#PWR015" H 4200 1200 50  0001 C CNN
F 1 "+5V" H 4215 1523 50  0000 C CNN
F 2 "" H 4200 1350 50  0001 C CNN
F 3 "" H 4200 1350 50  0001 C CNN
	1    4200 1350
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR016
U 1 1 5F448E4B
P 4400 1350
F 0 "#PWR016" H 4400 1200 50  0001 C CNN
F 1 "+3.3V" H 4415 1523 50  0000 C CNN
F 2 "" H 4400 1350 50  0001 C CNN
F 3 "" H 4400 1350 50  0001 C CNN
	1    4400 1350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 5F44C726
P 3800 1000
F 0 "C1" H 3915 1137 50  0000 L CNN
F 1 "0.1uF" H 3915 1046 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3838 850 50  0001 C CNN
F 3 "https://product.tdk.com/info/en/catalog/datasheets/mlcc_automotive_general_en.pdf" H 3800 1000 50  0001 C CNN
F 4 "25V" H 3915 955 50  0000 L CNN "Voltage"
F 5 "X7R" H 3915 864 50  0000 L CNN "Type"
F 6 "CGA4J2X7R2A104K125AA" H 3800 1000 50  0001 C CNN "article"
F 7 "yes, if AEC-Q200" H 3800 1000 50  0001 C CNN "alt allowed"
	1    3800 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 1150 3800 1200
$Comp
L power:GND #PWR09
U 1 1 5F44C72D
P 3800 1200
F 0 "#PWR09" H 3800 950 50  0001 C CNN
F 1 "GND" H 3805 1027 50  0000 C CNN
F 2 "" H 3800 1200 50  0001 C CNN
F 3 "" H 3800 1200 50  0001 C CNN
	1    3800 1200
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR02
U 1 1 5F44C733
P 3800 800
F 0 "#PWR02" H 3800 650 50  0001 C CNN
F 1 "+5V" H 3815 973 50  0000 C CNN
F 2 "" H 3800 800 50  0001 C CNN
F 3 "" H 3800 800 50  0001 C CNN
	1    3800 800 
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 800  3800 850 
Wire Wire Line
	4750 1150 4750 1200
$Comp
L power:GND #PWR010
U 1 1 5F44E4F2
P 4750 1200
F 0 "#PWR010" H 4750 950 50  0001 C CNN
F 1 "GND" H 4755 1027 50  0000 C CNN
F 2 "" H 4750 1200 50  0001 C CNN
F 3 "" H 4750 1200 50  0001 C CNN
	1    4750 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 800  4750 850 
$Comp
L power:+3.3V #PWR03
U 1 1 5F44F515
P 4750 800
F 0 "#PWR03" H 4750 650 50  0001 C CNN
F 1 "+3.3V" H 4765 973 50  0000 C CNN
F 2 "" H 4750 800 50  0001 C CNN
F 3 "" H 4750 800 50  0001 C CNN
	1    4750 800 
	1    0    0    -1  
$EndComp
Text GLabel 5250 1750 2    50   Input ~ 0
USART2_TX
Text GLabel 5250 1650 2    50   Input ~ 0
USART2_RX
$Comp
L Power_Protection:SP7538P D1
U 1 1 5F4581EC
P 10450 1250
F 0 "D1" V 9858 1250 50  0000 C CNN
F 1 "SP7538P" V 9949 1250 50  0000 C CNN
F 2 "Package_DFN_QFN:UDFN-9_1.0x3.8mm_P0.5mm" H 11000 1200 50  0001 L CNN
F 3 "https://www.littelfuse.com/~/media/electronics/datasheets/tvs_diode_arrays/littelfuse_tvs_diode_array_sp7538p_datasheet.pdf.pdf" H 10625 1275 50  0001 C CNN
F 4 "SP7538PUTG" V 10450 1250 50  0001 C CNN "article"
	1    10450 1250
	0    -1   1    0   
$EndComp
$Comp
L power:GND #PWR011
U 1 1 5F45E99D
P 10750 1250
F 0 "#PWR011" H 10750 1000 50  0001 C CNN
F 1 "GND" V 10750 1050 50  0000 C CNN
F 2 "" H 10750 1250 50  0001 C CNN
F 3 "" H 10750 1250 50  0001 C CNN
	1    10750 1250
	0    -1   1    0   
$EndComp
Text GLabel 10050 1250 0    50   Input ~ 0
conDIO1
Text GLabel 10050 1350 0    50   Input ~ 0
conDIO2
Text GLabel 10050 1150 0    50   Input ~ 0
conDIO3
Text GLabel 10050 1450 0    50   Input ~ 0
conDIO4
Wire Wire Line
	10150 1250 10050 1250
Wire Wire Line
	10050 1150 10150 1150
Wire Wire Line
	10150 1050 10050 1050
Wire Wire Line
	10050 950  10150 950 
Text GLabel 10050 1550 0    50   Input ~ 0
conDIO5
Text GLabel 10050 1050 0    50   Input ~ 0
conDIO6
Text GLabel 10050 1650 0    50   Input ~ 0
conDIO7
Text GLabel 10050 950  0    50   Input ~ 0
conDIO8
Wire Wire Line
	10150 1650 10050 1650
Wire Wire Line
	10050 1550 10150 1550
Wire Wire Line
	10150 1450 10050 1450
Wire Wire Line
	10050 1350 10150 1350
$Comp
L Interface:SN75162BDW U5
U 1 1 5F499B91
P 8750 3300
F 0 "U5" H 8850 4050 50  0000 C CNN
F 1 "SN75162BDW" H 8350 4000 50  0000 C CNN
F 2 "Package_SO:SOIC-24W_7.5x15.4mm_P1.27mm" H 8750 2600 50  0001 C CNN
F 3 "https://www.ti.com/lit/ds/symlink/sn75162b.pdf" H 8700 3650 50  0001 C CNN
F 4 "SN75162BDW" H 8750 3300 50  0001 C CNN "article"
	1    8750 3300
	1    0    0    -1  
$EndComp
$Comp
L Interface:SN75160BDW U2
U 1 1 5F49AB21
P 8750 1450
F 0 "U2" H 8850 2200 50  0000 C CNN
F 1 "SN75160BDW" H 8350 2150 50  0000 C CNN
F 2 "Package_SO:SOIC-20W_7.5x12.8mm_P1.27mm" H 8750 1150 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn75160b.pdf" H 8700 1800 50  0001 C CNN
F 4 "SN75160BDW" H 8750 1450 50  0001 C CNN "article"
	1    8750 1450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR030
U 1 1 5F4A88E5
P 8750 4000
F 0 "#PWR030" H 8750 3750 50  0001 C CNN
F 1 "GND" H 8755 3827 50  0000 C CNN
F 2 "" H 8750 4000 50  0001 C CNN
F 3 "" H 8750 4000 50  0001 C CNN
	1    8750 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9900 2350 9900 2400
$Comp
L power:GND #PWR023
U 1 1 5F4B0C34
P 9900 2400
F 0 "#PWR023" H 9900 2150 50  0001 C CNN
F 1 "GND" H 9905 2227 50  0000 C CNN
F 2 "" H 9900 2400 50  0001 C CNN
F 3 "" H 9900 2400 50  0001 C CNN
	1    9900 2400
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR018
U 1 1 5F4B0C3A
P 9900 2000
F 0 "#PWR018" H 9900 1850 50  0001 C CNN
F 1 "+5V" H 9915 2173 50  0000 C CNN
F 2 "" H 9900 2000 50  0001 C CNN
F 3 "" H 9900 2000 50  0001 C CNN
	1    9900 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9900 2000 9900 2050
$Comp
L power:+5V #PWR01
U 1 1 5F4B2061
P 8750 750
F 0 "#PWR01" H 8750 600 50  0001 C CNN
F 1 "+5V" H 8750 900 50  0000 C CNN
F 2 "" H 8750 750 50  0001 C CNN
F 3 "" H 8750 750 50  0001 C CNN
	1    8750 750 
	1    0    0    -1  
$EndComp
Text GLabel 9250 2800 2    50   Input ~ 0
conREN
Text GLabel 9250 2900 2    50   Input ~ 0
conIFC
Text GLabel 9250 3000 2    50   Input ~ 0
conNDAC
Text GLabel 9250 3100 2    50   Input ~ 0
conNRFD
Wire Wire Line
	9150 3100 9250 3100
Wire Wire Line
	9250 3000 9150 3000
Wire Wire Line
	9150 2900 9250 2900
Wire Wire Line
	9250 2800 9150 2800
Text GLabel 9250 3200 2    50   Input ~ 0
conDAV
Text GLabel 9250 3300 2    50   Input ~ 0
conEOI
Text GLabel 9250 3400 2    50   Input ~ 0
conATN
Text GLabel 9250 3500 2    50   Input ~ 0
conSRQ
Wire Wire Line
	9150 3500 9250 3500
Wire Wire Line
	9250 3400 9150 3400
Wire Wire Line
	9150 3300 9250 3300
Wire Wire Line
	9250 3200 9150 3200
Text GLabel 8250 2800 0    50   Input ~ 0
REN
Wire Wire Line
	8250 2800 8350 2800
Text GLabel 8250 2900 0    50   Input ~ 0
IFC
Wire Wire Line
	8250 2900 8350 2900
Text GLabel 8250 3000 0    50   Input ~ 0
NDAC
Wire Wire Line
	8250 3000 8350 3000
Text GLabel 8250 3100 0    50   Input ~ 0
NRFD
Wire Wire Line
	8250 3100 8350 3100
Text GLabel 8250 3200 0    50   Input ~ 0
DAV
Wire Wire Line
	8250 3200 8350 3200
Text GLabel 8250 3300 0    50   Input ~ 0
EOI
Wire Wire Line
	8250 3300 8350 3300
Text GLabel 8250 3400 0    50   Input ~ 0
ATN
Wire Wire Line
	8250 3400 8350 3400
Text GLabel 8250 3500 0    50   Input ~ 0
SRQ
Wire Wire Line
	8250 3500 8350 3500
Text GLabel 8250 3700 0    50   Input ~ 0
TE
Wire Wire Line
	8250 3700 8350 3700
Text GLabel 8250 3800 0    50   Input ~ 0
SC
Wire Wire Line
	8250 3800 8350 3800
Text GLabel 9250 3700 2    50   Input ~ 0
DC
Wire Wire Line
	9250 3700 9150 3700
$Comp
L Power_Protection:SP7538P D2
U 1 1 5F4C6F2F
P 10450 3100
F 0 "D2" V 9858 3100 50  0000 C CNN
F 1 "SP7538P" V 9949 3100 50  0000 C CNN
F 2 "Package_DFN_QFN:UDFN-9_1.0x3.8mm_P0.5mm" H 11000 3050 50  0001 L CNN
F 3 "https://www.littelfuse.com/~/media/electronics/datasheets/tvs_diode_arrays/littelfuse_tvs_diode_array_sp7538p_datasheet.pdf.pdf" H 10625 3125 50  0001 C CNN
F 4 "SP7538PUTG" V 10450 3100 50  0001 C CNN "article"
	1    10450 3100
	0    -1   1    0   
$EndComp
$Comp
L power:GND #PWR027
U 1 1 5F4C6F35
P 10750 3100
F 0 "#PWR027" H 10750 2850 50  0001 C CNN
F 1 "GND" V 10750 2900 50  0000 C CNN
F 2 "" H 10750 3100 50  0001 C CNN
F 3 "" H 10750 3100 50  0001 C CNN
	1    10750 3100
	0    -1   1    0   
$EndComp
Text GLabel 10050 3100 0    50   Input ~ 0
conREN
Text GLabel 10050 3200 0    50   Input ~ 0
conIFC
Text GLabel 10050 3000 0    50   Input ~ 0
conNDAC
Text GLabel 10050 3300 0    50   Input ~ 0
conNRFD
Wire Wire Line
	10150 3100 10050 3100
Wire Wire Line
	10050 3000 10150 3000
Wire Wire Line
	10150 2900 10050 2900
Wire Wire Line
	10050 2800 10150 2800
Text GLabel 10050 3400 0    50   Input ~ 0
conDAV
Text GLabel 10050 2900 0    50   Input ~ 0
conEOI
Text GLabel 10050 3500 0    50   Input ~ 0
conATN
Text GLabel 10050 2800 0    50   Input ~ 0
conSRQ
Wire Wire Line
	10150 3500 10050 3500
Wire Wire Line
	10050 3400 10150 3400
Wire Wire Line
	10150 3300 10050 3300
Wire Wire Line
	10050 3200 10150 3200
$Comp
L Regulator_Linear:LD1117S33TR_SOT223 U1
U 1 1 5F4F77C6
P 2900 950
F 0 "U1" H 2900 1192 50  0000 C CNN
F 1 "LD1117S33CTR" H 2900 1101 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 2900 1150 50  0001 C CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/CD00000544.pdf" H 3000 700 50  0001 C CNN
F 4 "LD1117S33CTR" H 2900 950 50  0001 C CNN "article"
	1    2900 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 950  2300 950 
Wire Wire Line
	2600 950  2300 950 
Wire Wire Line
	2900 1350 2900 1250
Wire Wire Line
	3300 1300 3300 1350
$Comp
L power:GND #PWR013
U 1 1 5F50B125
P 2900 1350
F 0 "#PWR013" H 2900 1100 50  0001 C CNN
F 1 "GND" H 2905 1177 50  0000 C CNN
F 2 "" H 2900 1350 50  0001 C CNN
F 3 "" H 2900 1350 50  0001 C CNN
	1    2900 1350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR014
U 1 1 5F5127E6
P 3300 1350
F 0 "#PWR014" H 3300 1100 50  0001 C CNN
F 1 "GND" H 3305 1177 50  0000 C CNN
F 2 "" H 3300 1350 50  0001 C CNN
F 3 "" H 3300 1350 50  0001 C CNN
	1    3300 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 1000 3300 950 
Wire Wire Line
	3300 950  3200 950 
Wire Wire Line
	3300 950  3300 900 
Connection ~ 3300 950 
$Comp
L power:+3.3V #PWR07
U 1 1 5F519A7F
P 3300 900
F 0 "#PWR07" H 3300 750 50  0001 C CNN
F 1 "+3.3V" H 3315 1073 50  0000 C CNN
F 2 "" H 3300 900 50  0001 C CNN
F 3 "" H 3300 900 50  0001 C CNN
	1    3300 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 950  1350 1650
$Comp
L nomis-kicad-lib:112-024-113R001 X1
U 1 1 5F3E9AFB
P 10300 3950
F 0 "X1" H 10300 3965 50  0000 C CNN
F 1 "112-024-113R001" H 10300 3874 50  0000 C CNN
F 2 "nomis-kicad-lib:112-024-113R001" H 10300 3950 50  0001 C CNN
F 3 "https://content.norcomp.net/rohspdfs/SCSI-050Ribbon/11Y/112/112-YYY-113RYY1.pdf" H 10300 3950 50  0001 C CNN
	1    10300 3950
	1    0    0    -1  
$EndComp
Text Notes 9800 5850 0    50   ~ 0
DOUBLE CHECK PINOUT !!
Text GLabel 9950 4200 0    50   Input ~ 0
conDIO1
Text GLabel 9950 4300 0    50   Input ~ 0
conDIO2
Text GLabel 9950 4400 0    50   Input ~ 0
conDIO3
Text GLabel 9950 4500 0    50   Input ~ 0
conDIO4
Text GLabel 10650 4200 2    50   Input ~ 0
conDIO5
Text GLabel 10650 4300 2    50   Input ~ 0
conDIO6
Text GLabel 10650 4400 2    50   Input ~ 0
conDIO7
Text GLabel 10650 4500 2    50   Input ~ 0
conDIO8
Text GLabel 10650 4600 2    50   Input ~ 0
conREN
Text GLabel 9950 5000 0    50   Input ~ 0
conIFC
Text GLabel 9950 4900 0    50   Input ~ 0
conNDAC
Text GLabel 9950 4800 0    50   Input ~ 0
conNRFD
Text GLabel 9950 4700 0    50   Input ~ 0
conDAV
Text GLabel 9950 4600 0    50   Input ~ 0
conEOI
Text GLabel 9950 5200 0    50   Input ~ 0
conATN
Text GLabel 9950 5100 0    50   Input ~ 0
conSRQ
Wire Wire Line
	10050 4500 9950 4500
Wire Wire Line
	9950 4400 10050 4400
Wire Wire Line
	10050 4300 9950 4300
Wire Wire Line
	9950 4200 10050 4200
Wire Wire Line
	10050 4900 9950 4900
Wire Wire Line
	9950 4800 10050 4800
Wire Wire Line
	10050 4700 9950 4700
Wire Wire Line
	9950 4600 10050 4600
Wire Wire Line
	10650 4500 10550 4500
Wire Wire Line
	10550 4400 10650 4400
Wire Wire Line
	10650 4300 10550 4300
Wire Wire Line
	10550 4200 10650 4200
Wire Wire Line
	10650 4900 10550 4900
Wire Wire Line
	10550 4800 10650 4800
Wire Wire Line
	10650 4700 10550 4700
Wire Wire Line
	10550 4600 10650 4600
Wire Wire Line
	10550 5200 10650 5200
Wire Wire Line
	10650 5100 10550 5100
Wire Wire Line
	10550 5000 10650 5000
Wire Wire Line
	10050 5300 9950 5300
Wire Wire Line
	9950 5200 10050 5200
Wire Wire Line
	10050 5100 9950 5100
Wire Wire Line
	9950 5000 10050 5000
$Comp
L power:GND #PWR036
U 1 1 5F48EC96
P 9950 5300
F 0 "#PWR036" H 9950 5050 50  0001 C CNN
F 1 "GND" V 9950 5100 50  0000 C CNN
F 2 "" H 9950 5300 50  0001 C CNN
F 3 "" H 9950 5300 50  0001 C CNN
	1    9950 5300
	0    1    -1   0   
$EndComp
$Comp
L power:GND #PWR037
U 1 1 5F49199F
P 10750 5300
F 0 "#PWR037" H 10750 5050 50  0001 C CNN
F 1 "GND" V 10750 5100 50  0000 C CNN
F 2 "" H 10750 5300 50  0001 C CNN
F 3 "" H 10750 5300 50  0001 C CNN
	1    10750 5300
	0    -1   1    0   
$EndComp
Wire Wire Line
	10550 5300 10650 5300
Wire Wire Line
	10650 5300 10650 5200
Connection ~ 10650 5300
Wire Wire Line
	10650 5300 10750 5300
Connection ~ 10650 4800
Wire Wire Line
	10650 4800 10650 4700
Connection ~ 10650 4900
Wire Wire Line
	10650 4900 10650 4800
Connection ~ 10650 5000
Wire Wire Line
	10650 5000 10650 4900
Connection ~ 10650 5100
Wire Wire Line
	10650 5100 10650 5000
Connection ~ 10650 5200
Wire Wire Line
	10650 5200 10650 5100
$Comp
L MCU_ST_STM32F4:STM32F410RBTx U6
U 1 1 5F3F4D20
P 1900 5550
F 0 "U6" H 2350 3750 50  0000 C CNN
F 1 "STM32F410RBTx" H 1250 3750 50  0000 C CNN
F 2 "Package_QFP:LQFP-64_10x10mm_P0.5mm" H 1300 3850 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/DM00214043.pdf" H 1900 5550 50  0001 C CNN
	1    1900 5550
	-1   0    0    -1  
$EndComp
$Comp
L Device:Crystal Y1
U 1 1 5F3FF052
P 3000 5350
F 0 "Y1" V 3000 5100 50  0000 L CNN
F 1 "ABM7-16.000MHZ" V 3000 5500 50  0000 L CNN
F 2 "Crystal:Crystal_SMD_Abracon_ABM7-2Pin_6.0x3.5mm" H 3000 5350 50  0001 C CNN
F 3 "https://abracon.com/Resonators/abm7.pdf" H 3000 5350 50  0001 C CNN
F 4 "ABM7-16.000MHZ-D2Y-T " V 3000 5350 50  0001 C CNN "article"
	1    3000 5350
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_ARM_JTAG_SWD_10 J3
U 1 1 5F404BC7
P 8750 5550
F 0 "J3" H 9300 5150 50  0000 R CNN
F 1 "Conn_ARM_JTAG_SWD_10" H 9850 4950 50  0000 R CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_2x05_P1.27mm_Vertical_SMD" H 8750 5550 50  0001 C CNN
F 3 "http://infocenter.arm.com/help/topic/com.arm.doc.ddi0314h/DDI0314H_coresight_components_trm.pdf" V 8400 4300 50  0001 C CNN
F 4 "20021121-00010C4LF" H 8750 5550 50  0001 C CNN "article"
	1    8750 5550
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR041
U 1 1 5F4171BC
P 8750 6150
F 0 "#PWR041" H 8750 5900 50  0001 C CNN
F 1 "GND" H 8755 5977 50  0000 C CNN
F 2 "" H 8750 6150 50  0001 C CNN
F 3 "" H 8750 6150 50  0001 C CNN
	1    8750 6150
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8750 6150 8850 6150
Connection ~ 8750 6150
$Comp
L power:+3.3V #PWR034
U 1 1 5F42263D
P 8750 4950
F 0 "#PWR034" H 8750 4800 50  0001 C CNN
F 1 "+3.3V" H 8765 5123 50  0000 C CNN
F 2 "" H 8750 4950 50  0001 C CNN
F 3 "" H 8750 4950 50  0001 C CNN
	1    8750 4950
	-1   0    0    -1  
$EndComp
Text GLabel 2700 5650 2    50   Input ~ 0
DIO1
Text GLabel 2700 5750 2    50   Input ~ 0
DIO2
Text GLabel 2700 5850 2    50   Input ~ 0
DIO3
Text GLabel 2700 5950 2    50   Input ~ 0
DIO4
Text GLabel 2700 6050 2    50   Input ~ 0
DIO5
Text GLabel 2700 6150 2    50   Input ~ 0
DIO6
Text GLabel 2700 6250 2    50   Input ~ 0
DIO7
Text GLabel 2700 6350 2    50   Input ~ 0
DIO8
Wire Wire Line
	2700 5650 2600 5650
Wire Wire Line
	2700 5750 2600 5750
Wire Wire Line
	2700 5850 2600 5850
Wire Wire Line
	2700 5950 2600 5950
Wire Wire Line
	2700 6050 2600 6050
Wire Wire Line
	2700 6150 2600 6150
Wire Wire Line
	2700 6250 2600 6250
Wire Wire Line
	2700 6350 2600 6350
Text GLabel 1100 4150 0    50   Input ~ 0
USART2_TX
Text GLabel 1100 4250 0    50   Input ~ 0
USART2_RX
Wire Wire Line
	1100 4150 1200 4150
Wire Wire Line
	1200 4250 1100 4250
$Comp
L power:+3.3V #PWR029
U 1 1 5F46A039
P 1600 3650
F 0 "#PWR029" H 1600 3500 50  0001 C CNN
F 1 "+3.3V" H 1615 3823 50  0000 C CNN
F 2 "" H 1600 3650 50  0001 C CNN
F 3 "" H 1600 3650 50  0001 C CNN
	1    1600 3650
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1600 3650 1600 3700
Wire Wire Line
	1600 3700 1700 3700
Wire Wire Line
	2100 3700 2100 3750
Connection ~ 1600 3700
Wire Wire Line
	1600 3700 1600 3750
Wire Wire Line
	2000 3750 2000 3700
Connection ~ 2000 3700
Wire Wire Line
	2000 3700 2100 3700
Wire Wire Line
	1900 3700 1900 3750
Connection ~ 1900 3700
Wire Wire Line
	1900 3700 2000 3700
Wire Wire Line
	1800 3750 1800 3700
Connection ~ 1800 3700
Wire Wire Line
	1800 3700 1900 3700
Wire Wire Line
	1700 3700 1700 3750
Connection ~ 1700 3700
Wire Wire Line
	1700 3700 1800 3700
Wire Wire Line
	2100 7350 2100 7400
Wire Wire Line
	2100 7400 2000 7400
Wire Wire Line
	1700 7400 1700 7350
Wire Wire Line
	1700 7400 1700 7450
Connection ~ 1700 7400
Wire Wire Line
	1800 7400 1800 7350
Connection ~ 1800 7400
Wire Wire Line
	1800 7400 1700 7400
Wire Wire Line
	1900 7400 1900 7350
Connection ~ 1900 7400
Wire Wire Line
	1900 7400 1800 7400
Wire Wire Line
	2000 7400 2000 7350
Connection ~ 2000 7400
Wire Wire Line
	2000 7400 1900 7400
$Comp
L power:GND #PWR049
U 1 1 5F4BDF5F
P 1700 7450
F 0 "#PWR049" H 1700 7200 50  0001 C CNN
F 1 "GND" H 1705 7277 50  0000 C CNN
F 2 "" H 1700 7450 50  0001 C CNN
F 3 "" H 1700 7450 50  0001 C CNN
	1    1700 7450
	-1   0    0    -1  
$EndComp
Text GLabel 1100 5350 0    50   Input ~ 0
TCK
Text GLabel 1100 5250 0    50   Input ~ 0
TMS
Wire Wire Line
	1100 5250 1200 5250
Wire Wire Line
	1200 5350 1100 5350
Text GLabel 7150 5350 0    50   Input ~ 0
TCK
Text GLabel 7150 5650 0    50   Input ~ 0
TMS
$Comp
L Connector_Generic:Conn_01x02 J2
U 1 1 5F4F3156
P 4350 4150
F 0 "J2" H 4500 4050 50  0000 C CNN
F 1 "Conn_01x02" H 4700 4150 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 4350 4150 50  0001 C CNN
F 3 "~" H 4350 4150 50  0001 C CNN
F 4 "do not populate" H 4350 4150 50  0001 C CNN "article"
	1    4350 4150
	1    0    0    1   
$EndComp
Wire Wire Line
	6500 7400 6500 7450
$Comp
L power:GND #PWR055
U 1 1 5F4FFF26
P 6500 7450
F 0 "#PWR055" H 6500 7200 50  0001 C CNN
F 1 "GND" H 6505 7277 50  0000 C CNN
F 2 "" H 6500 7450 50  0001 C CNN
F 3 "" H 6500 7450 50  0001 C CNN
	1    6500 7450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 7050 6500 7100
$Comp
L power:+3.3V #PWR048
U 1 1 5F4FFF2D
P 6500 7050
F 0 "#PWR048" H 6500 6900 50  0001 C CNN
F 1 "+3.3V" H 6515 7223 50  0000 C CNN
F 2 "" H 6500 7050 50  0001 C CNN
F 3 "" H 6500 7050 50  0001 C CNN
	1    6500 7050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 7400 6050 7450
$Comp
L power:GND #PWR054
U 1 1 5F509011
P 6050 7450
F 0 "#PWR054" H 6050 7200 50  0001 C CNN
F 1 "GND" H 6055 7277 50  0000 C CNN
F 2 "" H 6050 7450 50  0001 C CNN
F 3 "" H 6050 7450 50  0001 C CNN
	1    6050 7450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 7050 6050 7100
$Comp
L power:+3.3V #PWR047
U 1 1 5F509018
P 6050 7050
F 0 "#PWR047" H 6050 6900 50  0001 C CNN
F 1 "+3.3V" H 6065 7223 50  0000 C CNN
F 2 "" H 6050 7050 50  0001 C CNN
F 3 "" H 6050 7050 50  0001 C CNN
	1    6050 7050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 7400 5600 7450
$Comp
L power:GND #PWR053
U 1 1 5F5121BE
P 5600 7450
F 0 "#PWR053" H 5600 7200 50  0001 C CNN
F 1 "GND" H 5605 7277 50  0000 C CNN
F 2 "" H 5600 7450 50  0001 C CNN
F 3 "" H 5600 7450 50  0001 C CNN
	1    5600 7450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 7050 5600 7100
$Comp
L power:+3.3V #PWR046
U 1 1 5F5121C5
P 5600 7050
F 0 "#PWR046" H 5600 6900 50  0001 C CNN
F 1 "+3.3V" H 5615 7223 50  0000 C CNN
F 2 "" H 5600 7050 50  0001 C CNN
F 3 "" H 5600 7050 50  0001 C CNN
	1    5600 7050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 7400 5150 7450
$Comp
L power:GND #PWR052
U 1 1 5F51B5F9
P 5150 7450
F 0 "#PWR052" H 5150 7200 50  0001 C CNN
F 1 "GND" H 5155 7277 50  0000 C CNN
F 2 "" H 5150 7450 50  0001 C CNN
F 3 "" H 5150 7450 50  0001 C CNN
	1    5150 7450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 7050 5150 7100
$Comp
L power:+3.3V #PWR045
U 1 1 5F51B600
P 5150 7050
F 0 "#PWR045" H 5150 6900 50  0001 C CNN
F 1 "+3.3V" H 5165 7223 50  0000 C CNN
F 2 "" H 5150 7050 50  0001 C CNN
F 3 "" H 5150 7050 50  0001 C CNN
	1    5150 7050
	1    0    0    -1  
$EndComp
$Comp
L power:VCCQ #PWR032
U 1 1 5F524795
P 2700 4350
F 0 "#PWR032" H 2700 4200 50  0001 C CNN
F 1 "VCCQ" V 2700 4500 50  0000 L CNN
F 2 "" H 2700 4350 50  0001 C CNN
F 3 "" H 2700 4350 50  0001 C CNN
	1    2700 4350
	0    1    -1   0   
$EndComp
Wire Wire Line
	2700 4350 2600 4350
$Comp
L power:VCCQ #PWR043
U 1 1 5F530B83
P 4250 7050
F 0 "#PWR043" H 4250 6900 50  0001 C CNN
F 1 "VCCQ" H 4150 7200 50  0000 L CNN
F 2 "" H 4250 7050 50  0001 C CNN
F 3 "" H 4250 7050 50  0001 C CNN
	1    4250 7050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C7
U 1 1 5F42CB2C
P 3450 5150
F 0 "C7" V 3400 4900 50  0000 L CNN
F 1 "18pF" V 3400 5250 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3488 5000 50  0001 C CNN
F 3 "https://product.tdk.com/info/en/catalog/datasheets/mlcc_automotive_general_en.pdf" H 3450 5150 50  0001 C CNN
F 4 "50V" V 3500 4900 50  0000 L CNN "Voltage"
F 5 "NP0" V 3500 5250 50  0000 L CNN "Type"
F 6 "CGA3E2C0G1H180J080AA" H 3450 5150 50  0001 C CNN "article"
F 7 "yes, if AEC-Q200" H 3450 5150 50  0001 C CNN "alt allowed"
	1    3450 5150
	0    -1   1    0   
$EndComp
Wire Wire Line
	3300 5550 3150 5550
Wire Wire Line
	3150 5550 3100 5500
Wire Wire Line
	3100 5500 3000 5500
Wire Wire Line
	2750 5500 2700 5450
Wire Wire Line
	2700 5450 2600 5450
Connection ~ 3000 5500
Wire Wire Line
	3000 5500 2750 5500
Wire Wire Line
	2600 5350 2700 5350
Wire Wire Line
	2700 5350 2850 5200
Wire Wire Line
	2850 5200 3000 5200
Wire Wire Line
	3100 5200 3150 5150
Wire Wire Line
	3150 5150 3300 5150
Connection ~ 3000 5200
Wire Wire Line
	3000 5200 3100 5200
$Comp
L power:GND #PWR035
U 1 1 5F449F73
P 3750 5150
F 0 "#PWR035" H 3750 4900 50  0001 C CNN
F 1 "GND" V 3750 4950 50  0000 C CNN
F 2 "" H 3750 5150 50  0001 C CNN
F 3 "" H 3750 5150 50  0001 C CNN
	1    3750 5150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3750 5150 3600 5150
$Comp
L power:GND #PWR038
U 1 1 5F455B49
P 3750 5550
F 0 "#PWR038" H 3750 5300 50  0001 C CNN
F 1 "GND" V 3750 5350 50  0000 C CNN
F 2 "" H 3750 5550 50  0001 C CNN
F 3 "" H 3750 5550 50  0001 C CNN
	1    3750 5550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3750 5550 3600 5550
$Comp
L Device:C C8
U 1 1 5F461DE0
P 3450 5550
F 0 "C8" V 3400 5300 50  0000 L CNN
F 1 "18pF" V 3400 5650 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3488 5400 50  0001 C CNN
F 3 "https://product.tdk.com/info/en/catalog/datasheets/mlcc_automotive_general_en.pdf" H 3450 5550 50  0001 C CNN
F 4 "50V" V 3500 5300 50  0000 L CNN "Voltage"
F 5 "NP0" V 3500 5650 50  0000 L CNN "Type"
F 6 "CGA3E2C0G1H180J080AA" H 3450 5550 50  0001 C CNN "article"
F 7 "yes, if AEC-Q200" H 3450 5550 50  0001 C CNN "alt allowed"
	1    3450 5550
	0    -1   1    0   
$EndComp
$Comp
L Device:C C3
U 1 1 5F472101
P 2300 1150
F 0 "C3" H 2415 1287 50  0000 L CNN
F 1 "1uF" H 2415 1196 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2338 1000 50  0001 C CNN
F 3 "https://product.tdk.com/info/en/catalog/datasheets/mlcc_automotive_general_en.pdf" H 2300 1150 50  0001 C CNN
F 4 "50V" H 2415 1105 50  0000 L CNN "Voltage"
F 5 "X7R" H 2415 1014 50  0000 L CNN "Type"
F 6 "CGA4J3X7R1H105K125AB" H 2300 1150 50  0001 C CNN "article"
F 7 "yes, if AEC-Q200" H 2300 1150 50  0001 C CNN "alt allowed"
	1    2300 1150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 5F4821F4
P 3300 1150
F 0 "C4" H 3415 1287 50  0000 L CNN
F 1 "1uF" H 3415 1196 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3338 1000 50  0001 C CNN
F 3 "https://product.tdk.com/info/en/catalog/datasheets/mlcc_automotive_general_en.pdf" H 3300 1150 50  0001 C CNN
F 4 "50V" H 3415 1105 50  0000 L CNN "Voltage"
F 5 "X7R" H 3415 1014 50  0000 L CNN "Type"
F 6 "CGA4J3X7R1H105K125AB" H 3300 1150 50  0001 C CNN "article"
F 7 "yes, if AEC-Q200" H 3300 1150 50  0001 C CNN "alt allowed"
	1    3300 1150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5F483F59
P 4750 1000
F 0 "C2" H 4865 1137 50  0000 L CNN
F 1 "0.1uF" H 4865 1046 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4788 850 50  0001 C CNN
F 3 "https://product.tdk.com/info/en/catalog/datasheets/mlcc_automotive_general_en.pdf" H 4750 1000 50  0001 C CNN
F 4 "25V" H 4865 955 50  0000 L CNN "Voltage"
F 5 "X7R" H 4865 864 50  0000 L CNN "Type"
F 6 "CGA4J2X7R2A104K125AA" H 4750 1000 50  0001 C CNN "article"
F 7 "yes, if AEC-Q200" H 4750 1000 50  0001 C CNN "alt allowed"
	1    4750 1000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 5F484672
P 9900 2200
F 0 "C6" H 10015 2337 50  0000 L CNN
F 1 "0.1uF" H 10015 2246 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 9938 2050 50  0001 C CNN
F 3 "https://product.tdk.com/info/en/catalog/datasheets/mlcc_automotive_general_en.pdf" H 9900 2200 50  0001 C CNN
F 4 "25V" H 10015 2155 50  0000 L CNN "Voltage"
F 5 "X7R" H 10015 2064 50  0000 L CNN "Type"
F 6 "CGA4J2X7R2A104K125AA" H 9900 2200 50  0001 C CNN "article"
F 7 "yes, if AEC-Q200" H 9900 2200 50  0001 C CNN "alt allowed"
	1    9900 2200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 5F48BAE2
P 9450 2200
F 0 "C5" H 9565 2337 50  0000 L CNN
F 1 "0.1uF" H 9565 2246 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 9488 2050 50  0001 C CNN
F 3 "https://product.tdk.com/info/en/catalog/datasheets/mlcc_automotive_general_en.pdf" H 9450 2200 50  0001 C CNN
F 4 "25V" H 9565 2155 50  0000 L CNN "Voltage"
F 5 "X7R" H 9565 2064 50  0000 L CNN "Type"
F 6 "CGA4J2X7R2A104K125AA" H 9450 2200 50  0001 C CNN "article"
F 7 "yes, if AEC-Q200" H 9450 2200 50  0001 C CNN "alt allowed"
	1    9450 2200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C11
U 1 1 5F49FAA1
P 5150 7250
F 0 "C11" H 5265 7387 50  0000 L CNN
F 1 "0.1uF" H 5265 7296 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5188 7100 50  0001 C CNN
F 3 "https://product.tdk.com/info/en/catalog/datasheets/mlcc_automotive_general_en.pdf" H 5150 7250 50  0001 C CNN
F 4 "25V" H 5265 7205 50  0000 L CNN "Voltage"
F 5 "X7R" H 5265 7114 50  0000 L CNN "Type"
F 6 "CGA4J2X7R2A104K125AA" H 5150 7250 50  0001 C CNN "article"
F 7 "yes, if AEC-Q200" H 5150 7250 50  0001 C CNN "alt allowed"
	1    5150 7250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C12
U 1 1 5F4A0D4E
P 5600 7250
F 0 "C12" H 5715 7387 50  0000 L CNN
F 1 "0.1uF" H 5715 7296 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5638 7100 50  0001 C CNN
F 3 "https://product.tdk.com/info/en/catalog/datasheets/mlcc_automotive_general_en.pdf" H 5600 7250 50  0001 C CNN
F 4 "25V" H 5715 7205 50  0000 L CNN "Voltage"
F 5 "X7R" H 5715 7114 50  0000 L CNN "Type"
F 6 "CGA4J2X7R2A104K125AA" H 5600 7250 50  0001 C CNN "article"
F 7 "yes, if AEC-Q200" H 5600 7250 50  0001 C CNN "alt allowed"
	1    5600 7250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C13
U 1 1 5F4A11D6
P 6050 7250
F 0 "C13" H 6165 7387 50  0000 L CNN
F 1 "0.1uF" H 6165 7296 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 6088 7100 50  0001 C CNN
F 3 "https://product.tdk.com/info/en/catalog/datasheets/mlcc_automotive_general_en.pdf" H 6050 7250 50  0001 C CNN
F 4 "25V" H 6165 7205 50  0000 L CNN "Voltage"
F 5 "X7R" H 6165 7114 50  0000 L CNN "Type"
F 6 "CGA4J2X7R2A104K125AA" H 6050 7250 50  0001 C CNN "article"
F 7 "yes, if AEC-Q200" H 6050 7250 50  0001 C CNN "alt allowed"
	1    6050 7250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C14
U 1 1 5F4A15C1
P 6500 7250
F 0 "C14" H 6615 7387 50  0000 L CNN
F 1 "0.1uF" H 6615 7296 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 6538 7100 50  0001 C CNN
F 3 "https://product.tdk.com/info/en/catalog/datasheets/mlcc_automotive_general_en.pdf" H 6500 7250 50  0001 C CNN
F 4 "25V" H 6615 7205 50  0000 L CNN "Voltage"
F 5 "X7R" H 6615 7114 50  0000 L CNN "Type"
F 6 "CGA4J2X7R2A104K125AA" H 6500 7250 50  0001 C CNN "article"
F 7 "yes, if AEC-Q200" H 6500 7250 50  0001 C CNN "alt allowed"
	1    6500 7250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 5F4C8BEF
P 7800 5350
F 0 "R5" V 7850 5600 50  0000 C CNN
F 1 "100R" V 7900 5350 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7730 5350 50  0001 C CNN
F 3 "https://industrial.panasonic.com/cdbs/www-data/pdf/RDA0000/AOA0000C301.pdf" H 7800 5350 50  0001 C CNN
F 4 "ERJ-6GEYJ101V" H 7800 5350 50  0001 C CNN "article"
F 5 "yes, if AEC-Q200" H 7800 5350 50  0001 C CNN "alt allowed"
F 6 "0.125W" V 7800 5350 50  0001 C CNN "Power"
	1    7800 5350
	0    -1   1    0   
$EndComp
Wire Wire Line
	8250 5550 8100 5550
Wire Wire Line
	8100 5550 8000 5650
Wire Wire Line
	8000 5650 7950 5650
Wire Wire Line
	8250 5450 8100 5450
Wire Wire Line
	8100 5450 8000 5350
Wire Wire Line
	8000 5350 7950 5350
NoConn ~ 8250 5650
NoConn ~ 8250 5750
$Comp
L Device:R R6
U 1 1 5F5888D1
P 7800 5650
F 0 "R6" V 7850 5900 50  0000 C CNN
F 1 "100R" V 7900 5650 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7730 5650 50  0001 C CNN
F 3 "https://industrial.panasonic.com/cdbs/www-data/pdf/RDA0000/AOA0000C301.pdf" H 7800 5650 50  0001 C CNN
F 4 "ERJ-6GEYJ101V" H 7800 5650 50  0001 C CNN "article"
F 5 "yes, if AEC-Q200" H 7800 5650 50  0001 C CNN "alt allowed"
F 6 "0.125W" V 7800 5650 50  0001 C CNN "Power"
	1    7800 5650
	0    -1   1    0   
$EndComp
Wire Wire Line
	7450 5800 7450 5650
Wire Wire Line
	7650 5650 7450 5650
$Comp
L Device:R R7
U 1 1 5F5BDA81
P 7250 5950
F 0 "R7" H 7320 5996 50  0000 L CNN
F 1 "10k" H 7320 5905 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7180 5950 50  0001 C CNN
F 3 "https://industrial.panasonic.com/cdbs/www-data/pdf/RDA0000/AOA0000C301.pdf" H 7250 5950 50  0001 C CNN
F 4 "ERJ-3GEYJ103V" H 7250 5950 50  0001 C CNN "article"
F 5 "yes, if AEC-Q200" H 7250 5950 50  0001 C CNN "alt allowed"
F 6 "0.125W" H 7250 5950 50  0001 C CNN "Power"
	1    7250 5950
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7250 5800 7250 5350
Wire Wire Line
	7650 5350 7250 5350
$Comp
L power:GND #PWR040
U 1 1 5F5F1E37
P 7450 6150
F 0 "#PWR040" H 7450 5900 50  0001 C CNN
F 1 "GND" H 7455 5977 50  0000 C CNN
F 2 "" H 7450 6150 50  0001 C CNN
F 3 "" H 7450 6150 50  0001 C CNN
	1    7450 6150
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR039
U 1 1 5F5F2598
P 7250 6150
F 0 "#PWR039" H 7250 5900 50  0001 C CNN
F 1 "GND" H 7255 5977 50  0000 C CNN
F 2 "" H 7250 6150 50  0001 C CNN
F 3 "" H 7250 6150 50  0001 C CNN
	1    7250 6150
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7250 6150 7250 6100
Wire Wire Line
	7450 6150 7450 6100
Text GLabel 850  5850 0    50   Input ~ 0
BOOT1
Text GLabel 3350 4150 2    50   Input ~ 0
BOOT0
$Comp
L power:GND #PWR051
U 1 1 5F633D3C
P 4700 7450
F 0 "#PWR051" H 4700 7200 50  0001 C CNN
F 1 "GND" H 4705 7277 50  0000 C CNN
F 2 "" H 4700 7450 50  0001 C CNN
F 3 "" H 4700 7450 50  0001 C CNN
	1    4700 7450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C10
U 1 1 5F633D46
P 4700 7250
F 0 "C10" H 4815 7387 50  0000 L CNN
F 1 "0.1uF" H 4815 7296 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4738 7100 50  0001 C CNN
F 3 "https://product.tdk.com/info/en/catalog/datasheets/mlcc_automotive_general_en.pdf" H 4700 7250 50  0001 C CNN
F 4 "25V" H 4815 7205 50  0000 L CNN "Voltage"
F 5 "X7R" H 4815 7114 50  0000 L CNN "Type"
F 6 "CGA4J2X7R2A104K125AA" H 4700 7250 50  0001 C CNN "article"
F 7 "yes, if AEC-Q200" H 4700 7250 50  0001 C CNN "alt allowed"
	1    4700 7250
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR044
U 1 1 5F64093A
P 4700 7050
F 0 "#PWR044" H 4700 6900 50  0001 C CNN
F 1 "+3.3V" H 4715 7223 50  0000 C CNN
F 2 "" H 4700 7050 50  0001 C CNN
F 3 "" H 4700 7050 50  0001 C CNN
	1    4700 7050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 7050 4700 7100
Wire Wire Line
	4700 7400 4700 7450
$Comp
L power:GND #PWR050
U 1 1 5F6C51BD
P 4250 7450
F 0 "#PWR050" H 4250 7200 50  0001 C CNN
F 1 "GND" H 4255 7277 50  0000 C CNN
F 2 "" H 4250 7450 50  0001 C CNN
F 3 "" H 4250 7450 50  0001 C CNN
	1    4250 7450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C9
U 1 1 5F6C51C7
P 4250 7250
F 0 "C9" H 4365 7387 50  0000 L CNN
F 1 "0.1uF" H 4365 7296 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4288 7100 50  0001 C CNN
F 3 "https://product.tdk.com/info/en/catalog/datasheets/mlcc_automotive_general_en.pdf" H 4250 7250 50  0001 C CNN
F 4 "25V" H 4365 7205 50  0000 L CNN "Voltage"
F 5 "X7R" H 4365 7114 50  0000 L CNN "Type"
F 6 "CGA4J2X7R2A104K125AA" H 4250 7250 50  0001 C CNN "article"
F 7 "yes, if AEC-Q200" H 4250 7250 50  0001 C CNN "alt allowed"
	1    4250 7250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 7050 4250 7100
Wire Wire Line
	4250 7400 4250 7450
$Comp
L Device:R R3
U 1 1 5F74DBBC
P 3250 3750
F 0 "R3" H 3320 3796 50  0000 L CNN
F 1 "10k" H 3320 3705 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3180 3750 50  0001 C CNN
F 3 "https://industrial.panasonic.com/cdbs/www-data/pdf/RDA0000/AOA0000C301.pdf" H 3250 3750 50  0001 C CNN
F 4 "ERJ-3GEYJ103V" H 3250 3750 50  0001 C CNN "article"
F 5 "yes, if AEC-Q200" H 3250 3750 50  0001 C CNN "alt allowed"
F 6 "0.125W" H 3250 3750 50  0001 C CNN "Power"
	1    3250 3750
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR028
U 1 1 5F74ECB4
P 3250 3600
F 0 "#PWR028" H 3250 3450 50  0001 C CNN
F 1 "+3.3V" H 3265 3773 50  0000 C CNN
F 2 "" H 3250 3600 50  0001 C CNN
F 3 "" H 3250 3600 50  0001 C CNN
	1    3250 3600
	-1   0    0    -1  
$EndComp
Text GLabel 3350 3950 2    50   Input ~ 0
~RST~
Text GLabel 7150 5250 0    50   Input ~ 0
~RST~
Connection ~ 7450 5650
Connection ~ 7250 5350
Wire Wire Line
	7150 5650 7450 5650
Wire Wire Line
	7150 5350 7250 5350
Wire Wire Line
	7150 5250 8250 5250
$Comp
L Device:R R4
U 1 1 5F84785B
P 3250 4350
F 0 "R4" H 3320 4396 50  0000 L CNN
F 1 "10k" H 3320 4305 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3180 4350 50  0001 C CNN
F 3 "https://industrial.panasonic.com/cdbs/www-data/pdf/RDA0000/AOA0000C301.pdf" H 3250 4350 50  0001 C CNN
F 4 "ERJ-3GEYJ103V" H 3250 4350 50  0001 C CNN "article"
F 5 "yes, if AEC-Q200" H 3250 4350 50  0001 C CNN "alt allowed"
F 6 "0.125W" H 3250 4350 50  0001 C CNN "Power"
	1    3250 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 4150 3250 4150
Wire Wire Line
	3250 4200 3250 4150
Connection ~ 3250 4150
Wire Wire Line
	3250 4150 3350 4150
$Comp
L power:GND #PWR033
U 1 1 5F8653D2
P 3250 4500
F 0 "#PWR033" H 3250 4250 50  0001 C CNN
F 1 "GND" H 3255 4327 50  0000 C CNN
F 2 "" H 3250 4500 50  0001 C CNN
F 3 "" H 3250 4500 50  0001 C CNN
	1    3250 4500
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3250 3900 3250 3950
Connection ~ 3250 3950
Wire Wire Line
	3250 3950 3350 3950
Wire Wire Line
	2600 3950 3250 3950
Text GLabel 4150 4150 0    50   Input ~ 0
BOOT0
$Comp
L power:+3.3V #PWR031
U 1 1 5F8A6251
P 4150 4050
F 0 "#PWR031" H 4150 3900 50  0001 C CNN
F 1 "+3.3V" V 4150 4300 50  0000 C CNN
F 2 "" H 4150 4050 50  0001 C CNN
F 3 "" H 4150 4050 50  0001 C CNN
	1    4150 4050
	0    -1   1    0   
$EndComp
Text Notes 3550 4550 0    50   ~ 0
BOOT0\n0 = Flash\n1 = Bootloader
$Comp
L Device:R R9
U 1 1 5F8BB5EB
P 950 6050
F 0 "R9" H 1020 6096 50  0000 L CNN
F 1 "10k" H 1020 6005 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 880 6050 50  0001 C CNN
F 3 "https://industrial.panasonic.com/cdbs/www-data/pdf/RDA0000/AOA0000C301.pdf" H 950 6050 50  0001 C CNN
F 4 "ERJ-3GEYJ103V" H 950 6050 50  0001 C CNN "article"
F 5 "yes, if AEC-Q200" H 950 6050 50  0001 C CNN "alt allowed"
F 6 "0.125W" H 950 6050 50  0001 C CNN "Power"
	1    950  6050
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR042
U 1 1 5F8BB5F1
P 950 6200
F 0 "#PWR042" H 950 5950 50  0001 C CNN
F 1 "GND" H 955 6027 50  0000 C CNN
F 2 "" H 950 6200 50  0001 C CNN
F 3 "" H 950 6200 50  0001 C CNN
	1    950  6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	850  5850 950  5850
Wire Wire Line
	950  5900 950  5850
Connection ~ 950  5850
Wire Wire Line
	950  5850 1200 5850
$Comp
L Connector:TestPoint TP1
U 1 1 5F9027B2
P 6900 850
F 0 "TP1" V 6854 1038 50  0000 L CNN
F 1 "TestPoint" V 6945 1038 50  0000 L CNN
F 2 "TestPoint:TestPoint_Loop_D1.80mm_Drill1.0mm_Beaded" H 7100 850 50  0001 C CNN
F 3 "~" H 7100 850 50  0001 C CNN
F 4 "do not populate" H 6900 850 50  0001 C CNN "article"
	1    6900 850 
	0    1    1    0   
$EndComp
$Comp
L power:+3.3V #PWR04
U 1 1 5F9123EF
P 6900 850
F 0 "#PWR04" H 6900 700 50  0001 C CNN
F 1 "+3.3V" V 6900 1100 50  0000 C CNN
F 2 "" H 6900 850 50  0001 C CNN
F 3 "" H 6900 850 50  0001 C CNN
	1    6900 850 
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR08
U 1 1 5F913AA6
P 6900 1050
F 0 "#PWR08" H 6900 900 50  0001 C CNN
F 1 "+5V" V 6900 1300 50  0000 C CNN
F 2 "" H 6900 1050 50  0001 C CNN
F 3 "" H 6900 1050 50  0001 C CNN
	1    6900 1050
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint TP2
U 1 1 5F9145DF
P 6900 1050
F 0 "TP2" V 6854 1238 50  0000 L CNN
F 1 "TestPoint" V 6945 1238 50  0000 L CNN
F 2 "TestPoint:TestPoint_Loop_D1.80mm_Drill1.0mm_Beaded" H 7100 1050 50  0001 C CNN
F 3 "~" H 7100 1050 50  0001 C CNN
F 4 "do not populate" H 6900 1050 50  0001 C CNN "article"
	1    6900 1050
	0    1    1    0   
$EndComp
Text Notes 10250 1900 0    50   ~ 0
TVS for ESD protection
Text Notes 7650 2400 0    50   ~ 0
octal general-purpose\ninterface bus transceiver
Text Notes 9800 5550 0    50   ~ 0
IEEE 488 / GPIB connector
Text Notes 7650 6300 0    50   ~ 0
10 Pin SWD connector
Text Notes 1550 1250 0    50   ~ 0
750mA Fuse
Text Notes 1600 2400 0    50   ~ 0
TVS for ESD protection
Text Label 2850 5200 0    31   ~ 0
CK+
Text Label 2800 5500 0    31   ~ 0
CK-
Text Label 8100 5550 0    31   ~ 0
cTMS
Text Label 8100 5450 0    31   ~ 0
cTCK
Wire Wire Line
	5250 1650 5000 1650
Wire Wire Line
	5000 1750 5250 1750
$EndSCHEMATC
