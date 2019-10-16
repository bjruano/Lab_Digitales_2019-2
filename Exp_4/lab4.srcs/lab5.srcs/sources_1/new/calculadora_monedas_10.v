`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.10.2019 12:39:08
// Design Name: 
// Module Name: calculadora_monedas_10
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module calculadora_monedas_10(
    input [13:0] monto,
    output reg [13:0] monedas_10
    );

always @(*)
begin
case(monto)

0: monedas_10 = 0;
10: monedas_10 = 1;
20: monedas_10 = 2;
30: monedas_10 = 3;
40: monedas_10 = 4;
50: monedas_10 = 0;
60: monedas_10 = 1;
70: monedas_10 = 2;
80: monedas_10 = 3;
90: monedas_10 = 4;
100: monedas_10 = 0;
110: monedas_10 = 1;
120: monedas_10 = 2;
130: monedas_10 = 3;
140: monedas_10 = 4;
150: monedas_10 = 0;
160: monedas_10 = 1;
170: monedas_10 = 2;
180: monedas_10 = 3;
190: monedas_10 = 4;
200: monedas_10 = 0;
210: monedas_10 = 1;
220: monedas_10 = 2;
230: monedas_10 = 3;
240: monedas_10 = 4;
250: monedas_10 = 0;
260: monedas_10 = 1;
270: monedas_10 = 2;
280: monedas_10 = 3;
290: monedas_10 = 4;
300: monedas_10 = 0;
310: monedas_10 = 1;
320: monedas_10 = 2;
330: monedas_10 = 3;
340: monedas_10 = 4;
350: monedas_10 = 0;
360: monedas_10 = 1;
370: monedas_10 = 2;
380: monedas_10 = 3;
390: monedas_10 = 4;
400: monedas_10 = 0;
410: monedas_10 = 1;
420: monedas_10 = 2;
430: monedas_10 = 3;
440: monedas_10 = 4;
450: monedas_10 = 0;
460: monedas_10 = 1;
470: monedas_10 = 2;
480: monedas_10 = 3;
490: monedas_10 = 4;
500: monedas_10 = 0;
510: monedas_10 = 1;
520: monedas_10 = 2;
530: monedas_10 = 3;
540: monedas_10 = 4;
550: monedas_10 = 0;
560: monedas_10 = 1;
570: monedas_10 = 2;
580: monedas_10 = 3;
590: monedas_10 = 4;
600: monedas_10 = 0;
610: monedas_10 = 1;
620: monedas_10 = 2;
630: monedas_10 = 3;
640: monedas_10 = 4;
650: monedas_10 = 0;
660: monedas_10 = 1;
670: monedas_10 = 2;
680: monedas_10 = 3;
690: monedas_10 = 4;
700: monedas_10 = 0;
710: monedas_10 = 1;
720: monedas_10 = 2;
730: monedas_10 = 3;
740: monedas_10 = 4;
750: monedas_10 = 0;
760: monedas_10 = 1;
770: monedas_10 = 2;
780: monedas_10 = 3;
790: monedas_10 = 4;
800: monedas_10 = 0;
810: monedas_10 = 1;
820: monedas_10 = 2;
830: monedas_10 = 3;
840: monedas_10 = 4;
850: monedas_10 = 0;
860: monedas_10 = 1;
870: monedas_10 = 2;
880: monedas_10 = 3;
890: monedas_10 = 4;
900: monedas_10 = 0;
910: monedas_10 = 1;
920: monedas_10 = 2;
930: monedas_10 = 3;
940: monedas_10 = 4;
950: monedas_10 = 0;
960: monedas_10 = 1;
970: monedas_10 = 2;
980: monedas_10 = 3;
990: monedas_10 = 4;
1000: monedas_10 = 0;
1010: monedas_10 = 1;
1020: monedas_10 = 2;
1030: monedas_10 = 3;
1040: monedas_10 = 4;
1050: monedas_10 = 0;
1060: monedas_10 = 1;
1070: monedas_10 = 2;
1080: monedas_10 = 3;
1090: monedas_10 = 4;
1100: monedas_10 = 0;
1110: monedas_10 = 1;
1120: monedas_10 = 2;
1130: monedas_10 = 3;
1140: monedas_10 = 4;
1150: monedas_10 = 0;
1160: monedas_10 = 1;
1170: monedas_10 = 2;
1180: monedas_10 = 3;
1190: monedas_10 = 4;
1200: monedas_10 = 0;
1210: monedas_10 = 1;
1220: monedas_10 = 2;
1230: monedas_10 = 3;
1240: monedas_10 = 4;
1250: monedas_10 = 0;
1260: monedas_10 = 1;
1270: monedas_10 = 2;
1280: monedas_10 = 3;
1290: monedas_10 = 4;
1300: monedas_10 = 0;
1310: monedas_10 = 1;
1320: monedas_10 = 2;
1330: monedas_10 = 3;
1340: monedas_10 = 4;
1350: monedas_10 = 0;
1360: monedas_10 = 1;
1370: monedas_10 = 2;
1380: monedas_10 = 3;
1390: monedas_10 = 4;
1400: monedas_10 = 0;
1410: monedas_10 = 1;
1420: monedas_10 = 2;
1430: monedas_10 = 3;
1440: monedas_10 = 4;
1450: monedas_10 = 0;
1460: monedas_10 = 1;
1470: monedas_10 = 2;
1480: monedas_10 = 3;
1490: monedas_10 = 4;
1500: monedas_10 = 0;
1510: monedas_10 = 1;
1520: monedas_10 = 2;
1530: monedas_10 = 3;
1540: monedas_10 = 4;
1550: monedas_10 = 0;
1560: monedas_10 = 1;
1570: monedas_10 = 2;
1580: monedas_10 = 3;
1590: monedas_10 = 4;
1600: monedas_10 = 0;
1610: monedas_10 = 1;
1620: monedas_10 = 2;
1630: monedas_10 = 3;
1640: monedas_10 = 4;
1650: monedas_10 = 0;
1660: monedas_10 = 1;
1670: monedas_10 = 2;
1680: monedas_10 = 3;
1690: monedas_10 = 4;
1700: monedas_10 = 0;
1710: monedas_10 = 1;
1720: monedas_10 = 2;
1730: monedas_10 = 3;
1740: monedas_10 = 4;
1750: monedas_10 = 0;
1760: monedas_10 = 1;
1770: monedas_10 = 2;
1780: monedas_10 = 3;
1790: monedas_10 = 4;
1800: monedas_10 = 0;
1810: monedas_10 = 1;
1820: monedas_10 = 2;
1830: monedas_10 = 3;
1840: monedas_10 = 4;
1850: monedas_10 = 0;
1860: monedas_10 = 1;
1870: monedas_10 = 2;
1880: monedas_10 = 3;
1890: monedas_10 = 4;
1900: monedas_10 = 0;
1910: monedas_10 = 1;
1920: monedas_10 = 2;
1930: monedas_10 = 3;
1940: monedas_10 = 4;
1950: monedas_10 = 0;
1960: monedas_10 = 1;
1970: monedas_10 = 2;
1980: monedas_10 = 3;
1990: monedas_10 = 4;
2000: monedas_10 = 0;
2010: monedas_10 = 1;
2020: monedas_10 = 2;
2030: monedas_10 = 3;
2040: monedas_10 = 4;
2050: monedas_10 = 0;
2060: monedas_10 = 1;
2070: monedas_10 = 2;
2080: monedas_10 = 3;
2090: monedas_10 = 4;
2100: monedas_10 = 0;
2110: monedas_10 = 1;
2120: monedas_10 = 2;
2130: monedas_10 = 3;
2140: monedas_10 = 4;
2150: monedas_10 = 0;
2160: monedas_10 = 1;
2170: monedas_10 = 2;
2180: monedas_10 = 3;
2190: monedas_10 = 4;
2200: monedas_10 = 0;
2210: monedas_10 = 1;
2220: monedas_10 = 2;
2230: monedas_10 = 3;
2240: monedas_10 = 4;
2250: monedas_10 = 0;
2260: monedas_10 = 1;
2270: monedas_10 = 2;
2280: monedas_10 = 3;
2290: monedas_10 = 4;
2300: monedas_10 = 0;
2310: monedas_10 = 1;
2320: monedas_10 = 2;
2330: monedas_10 = 3;
2340: monedas_10 = 4;
2350: monedas_10 = 0;
2360: monedas_10 = 1;
2370: monedas_10 = 2;
2380: monedas_10 = 3;
2390: monedas_10 = 4;
2400: monedas_10 = 0;
2410: monedas_10 = 1;
2420: monedas_10 = 2;
2430: monedas_10 = 3;
2440: monedas_10 = 4;
2450: monedas_10 = 0;
2460: monedas_10 = 1;
2470: monedas_10 = 2;
2480: monedas_10 = 3;
2490: monedas_10 = 4;
2500: monedas_10 = 0;
2510: monedas_10 = 1;
2520: monedas_10 = 2;
2530: monedas_10 = 3;
2540: monedas_10 = 4;
2550: monedas_10 = 0;
2560: monedas_10 = 1;
2570: monedas_10 = 2;
2580: monedas_10 = 3;
2590: monedas_10 = 4;
2600: monedas_10 = 0;
2610: monedas_10 = 1;
2620: monedas_10 = 2;
2630: monedas_10 = 3;
2640: monedas_10 = 4;
2650: monedas_10 = 0;
2660: monedas_10 = 1;
2670: monedas_10 = 2;
2680: monedas_10 = 3;
2690: monedas_10 = 4;
2700: monedas_10 = 0;
2710: monedas_10 = 1;
2720: monedas_10 = 2;
2730: monedas_10 = 3;
2740: monedas_10 = 4;
2750: monedas_10 = 0;
2760: monedas_10 = 1;
2770: monedas_10 = 2;
2780: monedas_10 = 3;
2790: monedas_10 = 4;
2800: monedas_10 = 0;
2810: monedas_10 = 1;
2820: monedas_10 = 2;
2830: monedas_10 = 3;
2840: monedas_10 = 4;
2850: monedas_10 = 0;
2860: monedas_10 = 1;
2870: monedas_10 = 2;
2880: monedas_10 = 3;
2890: monedas_10 = 4;
2900: monedas_10 = 0;
2910: monedas_10 = 1;
2920: monedas_10 = 2;
2930: monedas_10 = 3;
2940: monedas_10 = 4;
2950: monedas_10 = 0;
2960: monedas_10 = 1;
2970: monedas_10 = 2;
2980: monedas_10 = 3;
2990: monedas_10 = 4;
3000: monedas_10 = 0;
3010: monedas_10 = 1;
3020: monedas_10 = 2;
3030: monedas_10 = 3;
3040: monedas_10 = 4;
3050: monedas_10 = 0;
3060: monedas_10 = 1;
3070: monedas_10 = 2;
3080: monedas_10 = 3;
3090: monedas_10 = 4;
3100: monedas_10 = 0;
3110: monedas_10 = 1;
3120: monedas_10 = 2;
3130: monedas_10 = 3;
3140: monedas_10 = 4;
3150: monedas_10 = 0;
3160: monedas_10 = 1;
3170: monedas_10 = 2;
3180: monedas_10 = 3;
3190: monedas_10 = 4;
3200: monedas_10 = 0;
3210: monedas_10 = 1;
3220: monedas_10 = 2;
3230: monedas_10 = 3;
3240: monedas_10 = 4;
3250: monedas_10 = 0;
3260: monedas_10 = 1;
3270: monedas_10 = 2;
3280: monedas_10 = 3;
3290: monedas_10 = 4;
3300: monedas_10 = 0;
3310: monedas_10 = 1;
3320: monedas_10 = 2;
3330: monedas_10 = 3;
3340: monedas_10 = 4;
3350: monedas_10 = 0;
3360: monedas_10 = 1;
3370: monedas_10 = 2;
3380: monedas_10 = 3;
3390: monedas_10 = 4;
3400: monedas_10 = 0;
3410: monedas_10 = 1;
3420: monedas_10 = 2;
3430: monedas_10 = 3;
3440: monedas_10 = 4;
3450: monedas_10 = 0;
3460: monedas_10 = 1;
3470: monedas_10 = 2;
3480: monedas_10 = 3;
3490: monedas_10 = 4;
3500: monedas_10 = 0;
3510: monedas_10 = 1;
3520: monedas_10 = 2;
3530: monedas_10 = 3;
3540: monedas_10 = 4;
3550: monedas_10 = 0;
3560: monedas_10 = 1;
3570: monedas_10 = 2;
3580: monedas_10 = 3;
3590: monedas_10 = 4;
3600: monedas_10 = 0;
3610: monedas_10 = 1;
3620: monedas_10 = 2;
3630: monedas_10 = 3;
3640: monedas_10 = 4;
3650: monedas_10 = 0;
3660: monedas_10 = 1;
3670: monedas_10 = 2;
3680: monedas_10 = 3;
3690: monedas_10 = 4;
3700: monedas_10 = 0;
3710: monedas_10 = 1;
3720: monedas_10 = 2;
3730: monedas_10 = 3;
3740: monedas_10 = 4;
3750: monedas_10 = 0;
3760: monedas_10 = 1;
3770: monedas_10 = 2;
3780: monedas_10 = 3;
3790: monedas_10 = 4;
3800: monedas_10 = 0;
3810: monedas_10 = 1;
3820: monedas_10 = 2;
3830: monedas_10 = 3;
3840: monedas_10 = 4;
3850: monedas_10 = 0;
3860: monedas_10 = 1;
3870: monedas_10 = 2;
3880: monedas_10 = 3;
3890: monedas_10 = 4;
3900: monedas_10 = 0;
3910: monedas_10 = 1;
3920: monedas_10 = 2;
3930: monedas_10 = 3;
3940: monedas_10 = 4;
3950: monedas_10 = 0;
3960: monedas_10 = 1;
3970: monedas_10 = 2;
3980: monedas_10 = 3;
3990: monedas_10 = 4;
4000: monedas_10 = 0;
4010: monedas_10 = 1;
4020: monedas_10 = 2;
4030: monedas_10 = 3;
4040: monedas_10 = 4;
4050: monedas_10 = 0;
4060: monedas_10 = 1;
4070: monedas_10 = 2;
4080: monedas_10 = 3;
4090: monedas_10 = 4;
4100: monedas_10 = 0;
4110: monedas_10 = 1;
4120: monedas_10 = 2;
4130: monedas_10 = 3;
4140: monedas_10 = 4;
4150: monedas_10 = 0;
4160: monedas_10 = 1;
4170: monedas_10 = 2;
4180: monedas_10 = 3;
4190: monedas_10 = 4;
4200: monedas_10 = 0;
4210: monedas_10 = 1;
4220: monedas_10 = 2;
4230: monedas_10 = 3;
4240: monedas_10 = 4;
4250: monedas_10 = 0;
4260: monedas_10 = 1;
4270: monedas_10 = 2;
4280: monedas_10 = 3;
4290: monedas_10 = 4;
4300: monedas_10 = 0;
4310: monedas_10 = 1;
4320: monedas_10 = 2;
4330: monedas_10 = 3;
4340: monedas_10 = 4;
4350: monedas_10 = 0;
4360: monedas_10 = 1;
4370: monedas_10 = 2;
4380: monedas_10 = 3;
4390: monedas_10 = 4;
4400: monedas_10 = 0;
4410: monedas_10 = 1;
4420: monedas_10 = 2;
4430: monedas_10 = 3;
4440: monedas_10 = 4;
4450: monedas_10 = 0;
4460: monedas_10 = 1;
4470: monedas_10 = 2;
4480: monedas_10 = 3;
4490: monedas_10 = 4;
4500: monedas_10 = 0;
4510: monedas_10 = 1;
4520: monedas_10 = 2;
4530: monedas_10 = 3;
4540: monedas_10 = 4;
4550: monedas_10 = 0;
4560: monedas_10 = 1;
4570: monedas_10 = 2;
4580: monedas_10 = 3;
4590: monedas_10 = 4;
4600: monedas_10 = 0;
4610: monedas_10 = 1;
4620: monedas_10 = 2;
4630: monedas_10 = 3;
4640: monedas_10 = 4;
4650: monedas_10 = 0;
4660: monedas_10 = 1;
4670: monedas_10 = 2;
4680: monedas_10 = 3;
4690: monedas_10 = 4;
4700: monedas_10 = 0;
4710: monedas_10 = 1;
4720: monedas_10 = 2;
4730: monedas_10 = 3;
4740: monedas_10 = 4;
4750: monedas_10 = 0;
4760: monedas_10 = 1;
4770: monedas_10 = 2;
4780: monedas_10 = 3;
4790: monedas_10 = 4;
4800: monedas_10 = 0;
4810: monedas_10 = 1;
4820: monedas_10 = 2;
4830: monedas_10 = 3;
4840: monedas_10 = 4;
4850: monedas_10 = 0;
4860: monedas_10 = 1;
4870: monedas_10 = 2;
4880: monedas_10 = 3;
4890: monedas_10 = 4;
4900: monedas_10 = 0;
4910: monedas_10 = 1;
4920: monedas_10 = 2;
4930: monedas_10 = 3;
4940: monedas_10 = 4;
4950: monedas_10 = 0;
4960: monedas_10 = 1;
4970: monedas_10 = 2;
4980: monedas_10 = 3;
4990: monedas_10 = 4;
5000: monedas_10 = 0;
5010: monedas_10 = 1;
5020: monedas_10 = 2;
5030: monedas_10 = 3;
5040: monedas_10 = 4;
5050: monedas_10 = 0;
5060: monedas_10 = 1;
5070: monedas_10 = 2;
5080: monedas_10 = 3;
5090: monedas_10 = 4;
5100: monedas_10 = 0;
5110: monedas_10 = 1;
5120: monedas_10 = 2;
5130: monedas_10 = 3;
5140: monedas_10 = 4;
5150: monedas_10 = 0;
5160: monedas_10 = 1;
5170: monedas_10 = 2;
5180: monedas_10 = 3;
5190: monedas_10 = 4;
5200: monedas_10 = 0;
5210: monedas_10 = 1;
5220: monedas_10 = 2;
5230: monedas_10 = 3;
5240: monedas_10 = 4;
5250: monedas_10 = 0;
5260: monedas_10 = 1;
5270: monedas_10 = 2;
5280: monedas_10 = 3;
5290: monedas_10 = 4;
5300: monedas_10 = 0;
5310: monedas_10 = 1;
5320: monedas_10 = 2;
5330: monedas_10 = 3;
5340: monedas_10 = 4;
5350: monedas_10 = 0;
5360: monedas_10 = 1;
5370: monedas_10 = 2;
5380: monedas_10 = 3;
5390: monedas_10 = 4;
5400: monedas_10 = 0;
5410: monedas_10 = 1;
5420: monedas_10 = 2;
5430: monedas_10 = 3;
5440: monedas_10 = 4;
5450: monedas_10 = 0;
5460: monedas_10 = 1;
5470: monedas_10 = 2;
5480: monedas_10 = 3;
5490: monedas_10 = 4;
5500: monedas_10 = 0;
5510: monedas_10 = 1;
5520: monedas_10 = 2;
5530: monedas_10 = 3;
5540: monedas_10 = 4;
5550: monedas_10 = 0;
5560: monedas_10 = 1;
5570: monedas_10 = 2;
5580: monedas_10 = 3;
5590: monedas_10 = 4;
5600: monedas_10 = 0;
5610: monedas_10 = 1;
5620: monedas_10 = 2;
5630: monedas_10 = 3;
5640: monedas_10 = 4;
5650: monedas_10 = 0;
5660: monedas_10 = 1;
5670: monedas_10 = 2;
5680: monedas_10 = 3;
5690: monedas_10 = 4;
5700: monedas_10 = 0;
5710: monedas_10 = 1;
5720: monedas_10 = 2;
5730: monedas_10 = 3;
5740: monedas_10 = 4;
5750: monedas_10 = 0;
5760: monedas_10 = 1;
5770: monedas_10 = 2;
5780: monedas_10 = 3;
5790: monedas_10 = 4;
5800: monedas_10 = 0;
5810: monedas_10 = 1;
5820: monedas_10 = 2;
5830: monedas_10 = 3;
5840: monedas_10 = 4;
5850: monedas_10 = 0;
5860: monedas_10 = 1;
5870: monedas_10 = 2;
5880: monedas_10 = 3;
5890: monedas_10 = 4;
5900: monedas_10 = 0;
5910: monedas_10 = 1;
5920: monedas_10 = 2;
5930: monedas_10 = 3;
5940: monedas_10 = 4;
5950: monedas_10 = 0;
5960: monedas_10 = 1;
5970: monedas_10 = 2;
5980: monedas_10 = 3;
5990: monedas_10 = 4;
6000: monedas_10 = 0;
6010: monedas_10 = 1;
6020: monedas_10 = 2;
6030: monedas_10 = 3;
6040: monedas_10 = 4;
6050: monedas_10 = 0;
6060: monedas_10 = 1;
6070: monedas_10 = 2;
6080: monedas_10 = 3;
6090: monedas_10 = 4;
6100: monedas_10 = 0;
6110: monedas_10 = 1;
6120: monedas_10 = 2;
6130: monedas_10 = 3;
6140: monedas_10 = 4;
6150: monedas_10 = 0;
6160: monedas_10 = 1;
6170: monedas_10 = 2;
6180: monedas_10 = 3;
6190: monedas_10 = 4;
6200: monedas_10 = 0;
6210: monedas_10 = 1;
6220: monedas_10 = 2;
6230: monedas_10 = 3;
6240: monedas_10 = 4;
6250: monedas_10 = 0;
6260: monedas_10 = 1;
6270: monedas_10 = 2;
6280: monedas_10 = 3;
6290: monedas_10 = 4;
6300: monedas_10 = 0;
6310: monedas_10 = 1;
6320: monedas_10 = 2;
6330: monedas_10 = 3;
6340: monedas_10 = 4;
6350: monedas_10 = 0;
6360: monedas_10 = 1;
6370: monedas_10 = 2;
6380: monedas_10 = 3;
6390: monedas_10 = 4;
6400: monedas_10 = 0;
6410: monedas_10 = 1;
6420: monedas_10 = 2;
6430: monedas_10 = 3;
6440: monedas_10 = 4;
6450: monedas_10 = 0;
6460: monedas_10 = 1;
6470: monedas_10 = 2;
6480: monedas_10 = 3;
6490: monedas_10 = 4;
6500: monedas_10 = 0;
6510: monedas_10 = 1;
6520: monedas_10 = 2;
6530: monedas_10 = 3;
6540: monedas_10 = 4;
6550: monedas_10 = 0;
6560: monedas_10 = 1;
6570: monedas_10 = 2;
6580: monedas_10 = 3;
6590: monedas_10 = 4;
6600: monedas_10 = 0;
6610: monedas_10 = 1;
6620: monedas_10 = 2;
6630: monedas_10 = 3;
6640: monedas_10 = 4;
6650: monedas_10 = 0;
6660: monedas_10 = 1;
6670: monedas_10 = 2;
6680: monedas_10 = 3;
6690: monedas_10 = 4;
6700: monedas_10 = 0;
6710: monedas_10 = 1;
6720: monedas_10 = 2;
6730: monedas_10 = 3;
6740: monedas_10 = 4;
6750: monedas_10 = 0;
6760: monedas_10 = 1;
6770: monedas_10 = 2;
6780: monedas_10 = 3;
6790: monedas_10 = 4;
6800: monedas_10 = 0;
6810: monedas_10 = 1;
6820: monedas_10 = 2;
6830: monedas_10 = 3;
6840: monedas_10 = 4;
6850: monedas_10 = 0;
6860: monedas_10 = 1;
6870: monedas_10 = 2;
6880: monedas_10 = 3;
6890: monedas_10 = 4;
6900: monedas_10 = 0;
6910: monedas_10 = 1;
6920: monedas_10 = 2;
6930: monedas_10 = 3;
6940: monedas_10 = 4;
6950: monedas_10 = 0;
6960: monedas_10 = 1;
6970: monedas_10 = 2;
6980: monedas_10 = 3;
6990: monedas_10 = 4;
7000: monedas_10 = 0;
7010: monedas_10 = 1;
7020: monedas_10 = 2;
7030: monedas_10 = 3;
7040: monedas_10 = 4;
7050: monedas_10 = 0;
7060: monedas_10 = 1;
7070: monedas_10 = 2;
7080: monedas_10 = 3;
7090: monedas_10 = 4;
7100: monedas_10 = 0;
7110: monedas_10 = 1;
7120: monedas_10 = 2;
7130: monedas_10 = 3;
7140: monedas_10 = 4;
7150: monedas_10 = 0;
7160: monedas_10 = 1;
7170: monedas_10 = 2;
7180: monedas_10 = 3;
7190: monedas_10 = 4;
7200: monedas_10 = 0;
7210: monedas_10 = 1;
7220: monedas_10 = 2;
7230: monedas_10 = 3;
7240: monedas_10 = 4;
7250: monedas_10 = 0;
7260: monedas_10 = 1;
7270: monedas_10 = 2;
7280: monedas_10 = 3;
7290: monedas_10 = 4;
7300: monedas_10 = 0;
7310: monedas_10 = 1;
7320: monedas_10 = 2;
7330: monedas_10 = 3;
7340: monedas_10 = 4;
7350: monedas_10 = 0;
7360: monedas_10 = 1;
7370: monedas_10 = 2;
7380: monedas_10 = 3;
7390: monedas_10 = 4;
7400: monedas_10 = 0;
7410: monedas_10 = 1;
7420: monedas_10 = 2;
7430: monedas_10 = 3;
7440: monedas_10 = 4;
7450: monedas_10 = 0;
7460: monedas_10 = 1;
7470: monedas_10 = 2;
7480: monedas_10 = 3;
7490: monedas_10 = 4;
7500: monedas_10 = 0;
7510: monedas_10 = 1;
7520: monedas_10 = 2;
7530: monedas_10 = 3;
7540: monedas_10 = 4;
7550: monedas_10 = 0;
7560: monedas_10 = 1;
7570: monedas_10 = 2;
7580: monedas_10 = 3;
7590: monedas_10 = 4;
7600: monedas_10 = 0;
7610: monedas_10 = 1;
7620: monedas_10 = 2;
7630: monedas_10 = 3;
7640: monedas_10 = 4;
7650: monedas_10 = 0;
7660: monedas_10 = 1;
7670: monedas_10 = 2;
7680: monedas_10 = 3;
7690: monedas_10 = 4;
7700: monedas_10 = 0;
7710: monedas_10 = 1;
7720: monedas_10 = 2;
7730: monedas_10 = 3;
7740: monedas_10 = 4;
7750: monedas_10 = 0;
7760: monedas_10 = 1;
7770: monedas_10 = 2;
7780: monedas_10 = 3;
7790: monedas_10 = 4;
7800: monedas_10 = 0;
7810: monedas_10 = 1;
7820: monedas_10 = 2;
7830: monedas_10 = 3;
7840: monedas_10 = 4;
7850: monedas_10 = 0;
7860: monedas_10 = 1;
7870: monedas_10 = 2;
7880: monedas_10 = 3;
7890: monedas_10 = 4;
7900: monedas_10 = 0;
7910: monedas_10 = 1;
7920: monedas_10 = 2;
7930: monedas_10 = 3;
7940: monedas_10 = 4;
7950: monedas_10 = 0;
7960: monedas_10 = 1;
7970: monedas_10 = 2;
7980: monedas_10 = 3;
7990: monedas_10 = 4;
8000: monedas_10 = 0;
8010: monedas_10 = 1;
8020: monedas_10 = 2;
8030: monedas_10 = 3;
8040: monedas_10 = 4;
8050: monedas_10 = 0;
8060: monedas_10 = 1;
8070: monedas_10 = 2;
8080: monedas_10 = 3;
8090: monedas_10 = 4;
8100: monedas_10 = 0;
8110: monedas_10 = 1;
8120: monedas_10 = 2;
8130: monedas_10 = 3;
8140: monedas_10 = 4;
8150: monedas_10 = 0;
8160: monedas_10 = 1;
8170: monedas_10 = 2;
8180: monedas_10 = 3;
8190: monedas_10 = 4;
8200: monedas_10 = 0;
8210: monedas_10 = 1;
8220: monedas_10 = 2;
8230: monedas_10 = 3;
8240: monedas_10 = 4;
8250: monedas_10 = 0;
8260: monedas_10 = 1;
8270: monedas_10 = 2;
8280: monedas_10 = 3;
8290: monedas_10 = 4;
8300: monedas_10 = 0;
8310: monedas_10 = 1;
8320: monedas_10 = 2;
8330: monedas_10 = 3;
8340: monedas_10 = 4;
8350: monedas_10 = 0;
8360: monedas_10 = 1;
8370: monedas_10 = 2;
8380: monedas_10 = 3;
8390: monedas_10 = 4;
8400: monedas_10 = 0;
8410: monedas_10 = 1;
8420: monedas_10 = 2;
8430: monedas_10 = 3;
8440: monedas_10 = 4;
8450: monedas_10 = 0;
8460: monedas_10 = 1;
8470: monedas_10 = 2;
8480: monedas_10 = 3;
8490: monedas_10 = 4;
8500: monedas_10 = 0;
8510: monedas_10 = 1;
8520: monedas_10 = 2;
8530: monedas_10 = 3;
8540: monedas_10 = 4;
8550: monedas_10 = 0;
8560: monedas_10 = 1;
8570: monedas_10 = 2;
8580: monedas_10 = 3;
8590: monedas_10 = 4;
8600: monedas_10 = 0;
8610: monedas_10 = 1;
8620: monedas_10 = 2;
8630: monedas_10 = 3;
8640: monedas_10 = 4;
8650: monedas_10 = 0;
8660: monedas_10 = 1;
8670: monedas_10 = 2;
8680: monedas_10 = 3;
8690: monedas_10 = 4;
8700: monedas_10 = 0;
8710: monedas_10 = 1;
8720: monedas_10 = 2;
8730: monedas_10 = 3;
8740: monedas_10 = 4;
8750: monedas_10 = 0;
8760: monedas_10 = 1;
8770: monedas_10 = 2;
8780: monedas_10 = 3;
8790: monedas_10 = 4;
8800: monedas_10 = 0;
8810: monedas_10 = 1;
8820: monedas_10 = 2;
8830: monedas_10 = 3;
8840: monedas_10 = 4;
8850: monedas_10 = 0;
8860: monedas_10 = 1;
8870: monedas_10 = 2;
8880: monedas_10 = 3;
8890: monedas_10 = 4;
8900: monedas_10 = 0;
8910: monedas_10 = 1;
8920: monedas_10 = 2;
8930: monedas_10 = 3;
8940: monedas_10 = 4;
8950: monedas_10 = 0;
8960: monedas_10 = 1;
8970: monedas_10 = 2;
8980: monedas_10 = 3;
8990: monedas_10 = 4;
9000: monedas_10 = 0;
9010: monedas_10 = 1;
9020: monedas_10 = 2;
9030: monedas_10 = 3;
9040: monedas_10 = 4;
9050: monedas_10 = 0;
9060: monedas_10 = 1;
9070: monedas_10 = 2;
9080: monedas_10 = 3;
9090: monedas_10 = 4;
9100: monedas_10 = 0;
9110: monedas_10 = 1;
9120: monedas_10 = 2;
9130: monedas_10 = 3;
9140: monedas_10 = 4;
9150: monedas_10 = 0;
9160: monedas_10 = 1;
9170: monedas_10 = 2;
9180: monedas_10 = 3;
9190: monedas_10 = 4;
9200: monedas_10 = 0;
9210: monedas_10 = 1;
9220: monedas_10 = 2;
9230: monedas_10 = 3;
9240: monedas_10 = 4;
9250: monedas_10 = 0;
9260: monedas_10 = 1;
9270: monedas_10 = 2;
9280: monedas_10 = 3;
9290: monedas_10 = 4;
9300: monedas_10 = 0;
9310: monedas_10 = 1;
9320: monedas_10 = 2;
9330: monedas_10 = 3;
9340: monedas_10 = 4;
9350: monedas_10 = 0;
9360: monedas_10 = 1;
9370: monedas_10 = 2;
9380: monedas_10 = 3;
9390: monedas_10 = 4;
9400: monedas_10 = 0;
9410: monedas_10 = 1;
9420: monedas_10 = 2;
9430: monedas_10 = 3;
9440: monedas_10 = 4;
9450: monedas_10 = 0;
9460: monedas_10 = 1;
9470: monedas_10 = 2;
9480: monedas_10 = 3;
9490: monedas_10 = 4;
9500: monedas_10 = 0;
9510: monedas_10 = 1;
9520: monedas_10 = 2;
9530: monedas_10 = 3;
9540: monedas_10 = 4;
9550: monedas_10 = 0;
9560: monedas_10 = 1;
9570: monedas_10 = 2;
9580: monedas_10 = 3;
9590: monedas_10 = 4;
9600: monedas_10 = 0;
9610: monedas_10 = 1;
9620: monedas_10 = 2;
9630: monedas_10 = 3;
9640: monedas_10 = 4;
9650: monedas_10 = 0;
9660: monedas_10 = 1;
9670: monedas_10 = 2;
9680: monedas_10 = 3;
9690: monedas_10 = 4;
9700: monedas_10 = 0;
9710: monedas_10 = 1;
9720: monedas_10 = 2;
9730: monedas_10 = 3;
9740: monedas_10 = 4;
9750: monedas_10 = 0;
9760: monedas_10 = 1;
9770: monedas_10 = 2;
9780: monedas_10 = 3;
9790: monedas_10 = 4;
9800: monedas_10 = 0;
9810: monedas_10 = 1;
9820: monedas_10 = 2;
9830: monedas_10 = 3;
9840: monedas_10 = 4;
9850: monedas_10 = 0;
9860: monedas_10 = 1;
9870: monedas_10 = 2;
9880: monedas_10 = 3;
9890: monedas_10 = 4;
9900: monedas_10 = 0;
9910: monedas_10 = 1;
9920: monedas_10 = 2;
9930: monedas_10 = 3;
9940: monedas_10 = 4;
9950: monedas_10 = 0;
9960: monedas_10 = 1;
9970: monedas_10 = 2;
9980: monedas_10 = 3;
9990: monedas_10 = 4;
default: monedas_10 = 0;

endcase
end
endmodule
