v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 110 -150 110 -130 {
lab=n_din}
N 20 -30 110 -30 {
lab=gnd}
N 110 -70 110 -30 {
lab=gnd}
N 110 -100 140 -100 {
lab=gnd}
N 140 -100 140 -30 {
lab=gnd}
N 110 -30 140 -30 {
lab=gnd}
N 70 -150 70 -100 {
lab=din}
N 50 -150 70 -150 {
lab=din}
N 110 -150 170 -150 {
lab=n_din}
N 110 -200 140 -200 {
lab=vdd}
N 140 -250 140 -200 {
lab=vdd}
N 110 -250 140 -250 {
lab=vdd}
N 110 -250 110 -230 {
lab=vdd}
N 70 -200 70 -150 {
lab=din}
N 110 -170 110 -150 {
lab=n_din}
N 20 -250 110 -250 {
lab=vdd}
C {sky130_fd_pr/pfet_01v8.sym} 90 -200 0 0 {name=M3
L=1
W=1
nf=1
mult=1
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 90 -100 0 0 {name=M4
L=1
W=1
nf=1 
mult=1
model=nfet_01v8
spiceprefix=X
}
C {devices/ipin.sym} 20 -30 0 0 {name=p11 lab=gnd}
C {devices/opin.sym} 170 -150 0 0 {name=p12 lab=n_din}
C {devices/ipin.sym} 50 -150 0 0 {name=p2 lab=din}
C {devices/ipin.sym} 20 -250 0 0 {name=p3 lab=vdd
}
