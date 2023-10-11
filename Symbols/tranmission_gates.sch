v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 510 -380 510 -240 {
lab=vin}
N 570 -380 570 -240 {
lab=vout}
N 400 -320 490 -320 {
lab=vin}
N 490 -320 510 -320 {
lab=vin}
N 570 -320 630 -320 {
lab=vout}
N 630 -320 670 -320 {
lab=vout}
N 390 -190 540 -190 {
lab=din}
N 540 -200 540 -190 {
lab=din}
N 400 -440 540 -440 {
lab=n_din}
N 540 -440 540 -420 {
lab=n_din}
N 540 -380 540 -370 {
lab=vdd}
N 410 -370 540 -370 {
lab=vdd}
N 410 -250 540 -250 {
lab=gnd}
N 540 -250 540 -240 {
lab=gnd}
C {devices/title.sym} 160 -40 0 0 {name=l1 author="Stefan Schippers"}
C {sky130_fd_pr/pfet_01v8.sym} 540 -400 3 1 {name=M3
L=1
W=10
nf=1
mult=1
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 540 -220 3 0 {name=M4
L=1
W=1
nf=1 
mult=1
model=nfet_01v8
spiceprefix=X
}
C {devices/ipin.sym} 390 -190 0 0 {name=p4 lab=din}
C {devices/ipin.sym} 400 -440 0 0 {name=p5 lab=n_din}
C {devices/iopin.sym} 410 -370 2 0 {name=p2 lab=vdd
}
C {devices/iopin.sym} 410 -250 2 0 {name=p3 lab=gnd
}
C {devices/iopin.sym} 400 -320 2 0 {name=p1 lab=vin
}
C {devices/iopin.sym} 670 -320 0 0 {name=p6 lab=vout
}
