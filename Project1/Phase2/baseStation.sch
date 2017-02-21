v 20130925 2
C 40000 40000 0 0 0 title-B.sym
C 44600 48800 1 0 0 generic-power.sym
{
T 44800 49050 5 10 1 1 0 3 1
net=5V
}
C 44500 48500 1 270 0 photo-resistor-1.sym
{
T 45200 47800 5 10 0 0 270 0 1
device=PHOTORESISTOR
T 45200 48300 5 10 0 1 270 0 1
refdes=1
}
C 44700 46900 1 270 0 resistor-1.sym
{
T 45100 46600 5 10 0 0 270 0 1
device=RESISTOR
T 45000 46700 5 10 1 1 270 0 1
refdes=470 Ω
}
C 44600 45100 1 0 0 ground.sym
N 44800 48500 44800 48800 4
N 44800 46900 44800 47600 4
N 44800 45400 44800 46000 4
B 46700 46000 3300 1500 3 0 0 0 -1 -1 0 -1 -1 -1 -1 -1
{
T 46800 46700 5 10 1 1 0 0 1
label=Arduino Mega 2560
}
N 44800 47100 46700 47100 4
P 46700 47100 47100 47100 1 0 0
{
T 46700 47100 5 10 0 0 0 0 1
pintype=unknown
T 47155 47095 5 10 1 2 0 0 1
A15=A15
T 47005 47145 5 10 0 1 0 6 1
pinnumber=A15
T 46700 47100 5 10 0 0 0 0 1
pinseq=0
}
B 47000 44200 600 600 3 0 0 0 -1 -1 0 -1 -1 -1 -1 -1
{
T 46800 43900 5 10 1 1 0 0 1
label=Servo Joystick
}
V 47300 44500 200 3 0 0 0 -1 -1 0 -1 -1 -1 -1 -1
P 47500 44800 47500 46000 1 0 0
{
T 47500 45500 5 10 0 0 0 0 1
pintype=unknown
T 47500 45755 5 10 0 1 90 0 1
pinlabel=unknown
T 47450 45605 5 10 0 1 90 6 1
pinnumber=Vcc
T 47500 45500 5 10 0 0 0 0 1
pinseq=0
T 47700 44800 5 10 1 1 90 0 1
pin=SW
}
P 47000 44800 47000 46000 1 0 0
{
T 47000 45500 5 10 0 0 0 0 1
pintype=unknown
T 47000 45755 5 10 0 1 90 0 1
pinlabel=unknown
T 46950 45605 5 10 0 1 90 6 1
pinnumber=Vcc
T 47000 45500 5 10 0 0 0 0 1
pinseq=0
T 47200 44800 5 10 1 1 90 0 1
pin=VRx
}
P 47200 44800 47200 46000 1 0 0
{
T 47200 45500 5 10 0 0 0 0 1
pintype=unknown
T 47200 45755 5 10 0 1 90 0 1
pinlabel=unknown
T 47150 45605 5 10 0 1 90 6 1
pinnumber=Vcc
T 47200 45500 5 10 0 0 0 0 1
pinseq=0
T 47400 44800 5 10 1 1 90 0 1
pin=VRy
}
P 47600 44700 48300 44700 1 0 0
{
T 47800 44700 5 10 0 0 270 0 1
pintype=unknown
T 48355 44695 5 10 0 1 0 0 1
pinlabel=unknown
T 48205 44745 5 10 0 1 0 6 1
pinnumber=Vcc
T 47800 44700 5 10 0 0 270 0 1
pinseq=0
T 47600 44500 5 10 1 1 0 0 1
pin=+5V
}
P 47600 44400 48300 44400 1 0 0
{
T 47800 44400 5 10 0 0 270 0 1
pintype=unknown
T 48355 44395 5 10 0 1 0 0 1
pinlabel=unknown
T 48205 44445 5 10 0 1 0 6 1
pinnumber=Vcc
T 47800 44400 5 10 0 0 270 0 1
pinseq=0
T 47600 44200 5 10 1 1 0 0 1
pin=GND
}
B 49100 44700 600 600 3 0 0 0 -1 -1 0 -1 -1 -1 -1 -1
V 49400 45000 200 3 0 0 0 -1 -1 0 -1 -1 -1 -1 -1
P 49600 45300 49600 45700 1 0 0
{
T 49600 45500 5 10 0 0 0 0 1
pintype=unknown
T 49600 45755 5 10 0 1 90 0 1
pinlabel=unknown
T 49550 45605 5 10 0 1 90 6 1
pinnumber=Vcc
T 49600 45500 5 10 0 0 0 0 1
pinseq=0
T 49800 45300 5 10 1 1 90 0 1
pin=SW
}
P 49100 45300 49100 46000 1 0 0
{
T 49100 45500 5 10 0 0 0 0 1
pintype=unknown
T 49100 45755 5 10 0 1 90 0 1
pinlabel=unknown
T 49050 45605 5 10 0 1 90 6 1
pinnumber=Vcc
T 49100 45500 5 10 0 0 0 0 1
pinseq=0
T 49300 45300 5 10 1 1 90 0 1
pin=VRx
}
P 49300 45300 49300 46000 1 0 0
{
T 49300 45500 5 10 0 0 0 0 1
pintype=unknown
T 49300 45755 5 10 0 1 90 0 1
pinlabel=unknown
T 49250 45605 5 10 0 1 90 6 1
pinnumber=Vcc
T 49300 45500 5 10 0 0 0 0 1
pinseq=0
T 49500 45300 5 10 1 1 90 0 1
pin=VRy
}
P 49700 45200 50400 45200 1 0 0
{
T 49900 45200 5 10 0 0 270 0 1
pintype=unknown
T 50455 45195 5 10 0 1 0 0 1
pinlabel=unknown
T 50305 45245 5 10 0 1 0 6 1
pinnumber=Vcc
T 49900 45200 5 10 0 0 270 0 1
pinseq=0
T 49700 45000 5 10 1 1 0 0 1
pin=+5V
}
P 49700 44900 50400 44900 1 0 0
{
T 49900 44900 5 10 0 0 270 0 1
pintype=unknown
T 50455 44895 5 10 0 1 0 0 1
pinlabel=unknown
T 50305 44945 5 10 0 1 0 6 1
pinnumber=Vcc
T 49900 44900 5 10 0 0 270 0 1
pinseq=0
T 49700 44700 5 10 1 1 0 0 1
pin=GND
}
C 48200 45300 1 0 0 generic-power.sym
{
T 48400 45550 5 10 1 1 0 3 1
net=5V
}
C 50200 45200 1 0 0 generic-power.sym
{
T 50400 45450 5 10 1 1 0 3 1
net=5V
}
C 48100 44100 1 0 0 ground.sym
C 50200 44600 1 0 0 ground.sym
P 47000 46000 47000 46500 1 0 0
{
T 47000 46000 5 10 0 0 0 0 1
pintype=unknown
T 47000 46555 5 10 0 1 90 0 1
pinlabel=unknown
T 46950 46405 5 10 1 1 90 6 1
pinnumber=A8
T 47000 46000 5 10 0 0 0 0 1
pinseq=0
}
T 48800 44400 5 10 1 1 0 0 1
label=Roomba Joystick
P 47200 46000 47200 46500 1 0 0
{
T 47200 46000 5 10 0 0 0 0 1
pintype=unknown
T 47200 46555 5 10 0 1 90 0 1
pinlabel=unknown
T 47150 46405 5 10 1 1 90 6 1
pinnumber=A9
T 47200 46000 5 10 0 0 0 0 1
pinseq=0
}
P 47500 46000 47500 46500 1 0 0
{
T 47500 46000 5 10 0 0 0 0 1
pintype=unknown
T 47500 46555 5 10 0 1 90 0 1
pinlabel=unknown
T 47450 46405 5 10 1 1 90 6 1
pinnumber=D38
T 47500 46000 5 10 0 0 0 0 1
pinseq=0
}
P 49100 46000 49100 46500 1 0 0
{
T 49100 46000 5 10 0 0 0 0 1
pintype=unknown
T 49100 46555 5 10 0 1 90 0 1
pinlabel=unknown
T 49050 46405 5 10 1 1 90 6 1
pinnumber=A10
T 49100 46000 5 10 0 0 0 0 1
pinseq=0
}
P 49300 46000 49300 46500 1 0 0
{
T 49300 46000 5 10 0 0 0 0 1
pintype=unknown
T 49300 46555 5 10 0 1 90 0 1
pinlabel=unknown
T 49250 46405 5 10 1 1 90 6 1
pinnumber=A11
T 49300 46000 5 10 0 0 0 0 1
pinseq=0
}
B 45800 48300 2500 500 3 0 0 0 -1 -1 0 -1 -1 -1 -1 -1
{
T 46600 48500 5 10 1 1 0 0 1
label=LCD Shield
}
U 46800 48200 46800 47500 10 0
U 46800 47500 46800 48200 10 0
{
T 46900 48000 5 10 1 1 0 0 1
netname=A4-A9
T 46900 47800 5 10 1 1 0 0 1
label=+5V
T 46900 47600 5 10 1 1 0 0 1
label=GND
}
U 46800 48200 46800 48300 10 0
U 46800 48100 46800 48000 10 0
T 50100 40700 9 10 1 0 0 0 1
CSC 460 Project 1 Base Station
T 49900 40400 9 10 1 0 0 0 1
baseStation.sch
T 50000 40100 9 10 1 0 0 0 1
1
T 51500 40100 9 10 1 0 0 0 1
1
T 53800 40400 9 10 1 0 0 0 1
0
T 53900 40100 9 10 1 0 0 0 1
Konrad Schultz
C 47500 45200 1 0 0 resistor-1.sym
{
T 47800 45600 5 10 0 0 0 0 1
device=RESISTOR
T 47700 45500 5 10 1 1 0 0 1
refdes=150 Ω
}
C 48100 44700 1 0 0 generic-power.sym
{
T 48300 44950 5 10 1 1 0 3 1
net=5V
}
B 49400 48200 600 500 3 0 0 0 -1 -1 0 -1 -1 -1 -1 -1
P 49400 48600 48800 48600 1 0 0
{
T 49400 48600 5 10 0 0 0 0 1
pintype=unknown
T 49400 48600 5 10 0 0 0 0 1
pinseq=0
T 48995 48645 5 10 1 1 0 0 1
pinnumber=Vcc
}
P 49400 48400 49000 48400 1 0 0
{
T 49400 48400 5 10 0 0 0 0 1
pintype=unknown
T 49400 48400 5 10 0 0 0 0 1
pinseq=0
T 48995 48445 5 10 1 1 0 0 1
pinnumber=GND
}
P 49500 48200 49500 47500 1 0 0
{
T 49500 48200 5 10 0 0 0 0 1
pintype=unknown
T 49500 48200 5 10 0 0 0 0 1
pinseq=0
T 49450 47695 5 10 1 1 90 0 1
pinnumber=RXD
}
P 49800 48200 49800 47500 1 0 0
{
T 49800 48200 5 10 0 0 0 0 1
pintype=unknown
T 49800 48200 5 10 0 0 0 0 1
pinseq=0
T 49750 47695 5 10 1 1 90 0 1
pinnumber=TXD
}
C 48600 48600 1 0 0 generic-power.sym
{
T 48800 48850 5 10 1 1 0 3 1
net=5V
}
C 48800 48100 1 0 0 ground.sym
P 49500 47500 49500 47100 1 0 0
{
T 49500 47500 5 10 0 0 0 0 1
pintype=unknown
T 49500 47500 5 10 0 0 0 0 1
pinseq=0
T 49450 46695 5 10 1 1 90 0 1
pinnumber=TX1 (18)
}
P 49800 47500 49800 47100 1 0 0
{
T 49800 47500 5 10 0 0 0 0 1
pintype=unknown
T 49800 47500 5 10 0 0 0 0 1
pinseq=0
T 49750 46695 5 10 1 1 90 0 1
pinnumber=RX1 (19)
}
T 49300 48800 9 10 1 0 0 0 1
Bluetooth
