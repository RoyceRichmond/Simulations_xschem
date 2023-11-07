v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 180 -300 290 -300 {
lab=#net1}
N 0 -300 50 -300 {
lab=din}
N 240 -300 240 -170 {
lab=#net1}
N 240 -420 240 -300 {
lab=#net1}
N 240 -580 240 -530 {
lab=#net2}
N 240 -580 500 -580 {
lab=#net2}
N 500 -580 500 -0 {
lab=#net2}
N 240 -0 500 -0 {
lab=#net2}
N 240 -60 240 -0 {
lab=#net2}
N 420 -300 500 -300 {
lab=#net2}
N 300 -480 550 -480 {
lab=vout}
N 550 -480 550 -120 {
lab=vout}
N 300 -120 550 -120 {
lab=vout}
N 550 -300 580 -300 {
lab=vout}
N 0 -120 180 -120 {
lab=vin_b}
N 0 -480 180 -480 {
lab=vin_a}
N 70 -240 70 40 {
lab=gnd}
N 0 40 70 40 {
lab=gnd}
N 310 -240 310 40 {
lab=gnd}
N 70 40 310 40 {
lab=gnd}
N 130 -170 200 -170 {
lab=gnd}
N 130 -170 130 40 {
lab=gnd}
N 130 -530 200 -530 {
lab=gnd}
N 130 -530 130 -170 {
lab=gnd}
N -0 -640 310 -640 {
lab=vdd}
N 310 -640 310 -360 {
lab=vdd}
N 70 -640 70 -360 {
lab=vdd}
N 150 -430 200 -430 {
lab=vdd}
N 150 -640 150 -430 {
lab=vdd}
N 150 -70 200 -70 {
lab=vdd}
N 150 -430 150 -70 {
lab=vdd}
N 310 -360 310 -350 {}
N 310 -250 310 -240 {}
N 70 -250 70 -240 {}
N 70 -360 70 -350 {}
C {devices/iopin.sym} 0 -640 2 0 {name=p1 lab=vdd
}
C {devices/iopin.sym} 0 40 2 0 {name=p2 lab=gnd}
C {devices/iopin.sym} 580 -300 0 0 {name=p3 lab=vout}
C {devices/iopin.sym} 0 -480 2 0 {name=p4 lab=vin_a}
C {devices/iopin.sym} 0 -120 2 0 {name=p5 lab=vin_b
}
C {devices/ipin.sym} 0 -300 0 0 {name=p6 lab=din
}
C {inverter.sym} 200 -300 0 0 {name=x1}
C {tranmission_gates.sym} 200 -370 2 1 {name=x2}
C {inverter.sym} 440 -300 0 0 {name=x3}
C {tranmission_gates.sym} 200 -10 2 1 {name=x4}
