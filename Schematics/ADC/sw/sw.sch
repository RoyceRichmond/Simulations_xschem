v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 260 -130 320 -130 {
lab=out}
N 320 -130 320 40 {
lab=out}
N 260 40 320 40 {
lab=out}
N 320 -40 410 -40 {
lab=out}
N 160 -130 200 -130 {
lab=in}
N 160 -130 160 40 {
lab=in}
N 160 40 200 40 {
lab=in}
N 100 -40 160 -40 {
lab=in}
N 110 -190 130 -190 {
lab=en}
N 230 10 250 10 {
lab=a_gnd}
N 230 10 230 40 {
lab=a_gnd}
N 230 -110 250 -110 {
lab=a_vdd}
N 230 -130 230 -110 {
lab=a_vdd}
N 210 -190 230 -190 {
lab=#net1}
N 230 -190 230 -170 {
lab=#net1}
N 60 -190 110 -190 {
lab=en}
N 230 80 230 100 {
lab=en}
N 250 -110 300 -110 {
lab=a_vdd}
N 300 -260 300 -110 {
lab=a_vdd}
N 130 -260 300 -260 {
lab=a_vdd}
N 130 -290 130 -260 {
lab=a_vdd}
N 130 -370 130 -320 {
lab=a_gnd}
N 130 -370 470 -370 {
lab=a_gnd}
N 470 -370 470 -0 {
lab=a_gnd}
N 250 10 470 10 {
lab=a_gnd}
N 470 0 470 10 {
lab=a_gnd}
N 110 100 230 100 {
lab=en}
N 110 -190 110 100 {
lab=en}
C {devices/iopin.sym} 410 -40 0 0 {name=p1 lab=out}
C {devices/iopin.sym} 100 -40 2 0 {name=p3 lab=in}
C {/home/richmond/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 230 60 3 0 {name=M4
L=0.3
W=1
nf=1 
mult=10
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {/home/richmond/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 230 -150 1 0 {name=M1
L=0.3
W=1
nf=1
mult=10
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {/home/richmond/pdk/sky130A/libs.tech/xschem/sky130_tests/not.sym} 170 -190 0 0 {name=x1 m=1 
+ W_N=1 L_N=0.15 W_P=2 L_P=0.15 
+ VCCPIN=a_vdd VSSPIN=a_gnd}
C {devices/ipin.sym} 60 -190 0 0 {name=p8 lab=en}
C {devices/ipin.sym} 130 -320 0 0 {name=p4 lab=a_gnd}
C {devices/ipin.sym} 130 -290 0 0 {name=p6 lab=a_vdd}
