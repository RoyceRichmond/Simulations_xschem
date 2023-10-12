v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 -130 -270 670 130 {flags=graph
y1=-1.1e+12
y2=3.5e+11
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1e-09
x2=0.001
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=1

color=4
node="\\"res_mos;vpd i(vleft) /\\""}
B 2 250 230 1050 630 {flags=graph
y1=5.55112e-17
y2=1.7
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1e-09
x2=0.001
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=vg
color=4
dataset=-1
unitx=1
logx=0
logy=0
}
N -260 520 -170 520 {
lab=vg}
N -260 520 -260 530 {
lab=vg}
N -290 430 -290 590 {
lab=GND}
N -130 520 -110 520 {
lab=GND}
N -130 430 -130 490 {
lab=vpd}
N -290 370 -220 370 {
lab=vp}
N -160 370 -130 370 {
lab=vp}
N -220 370 -160 370 {
lab=vp}
N -110 520 -110 610 {
lab=GND}
N -130 610 -110 610 {
lab=GND}
N -220 610 -130 610 {
lab=GND}
N -220 590 -220 610 {
lab=GND}
N -260 590 -220 590 {
lab=GND}
N -290 590 -260 590 {
lab=GND}
N -190 610 -190 620 {
lab=GND}
C {devices/vsource.sym} -290 400 0 0 {name=V1 value="1.8" savecurrent=true}
C {devices/res.sym} -130 400 0 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1
savecurrent=true}
C {sky130_fd_pr/corner.sym} 110 180 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/code.sym} 0 180 0 0 {name=Sim_params
only_toplevel=true
place=end
value="*.options savecurrents
.tran 10u 1.2m
.save all
.control
	run
	write mos_test.raw 
.endc
"}
C {devices/vsource.sym} -260 560 0 0 {name=V2 value="PULSE 0 1.8 100u 1m 1m 2m" savecurrent=true}
C {devices/launcher.sym} 300 190 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/mos_test.raw tran"
}
C {sky130_fd_pr/nfet_01v8_esd.sym} -150 520 0 0 {name=M2
L=0.165
W=20.35
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=esd_nfet_01v8
savecurrent=true
spiceprefix=X

}
C {devices/gnd.sym} -190 620 0 0 {name=l1 lab=GND}
C {devices/ammeter.sym} -130 580 0 1 {name=Vleft}
C {devices/lab_pin.sym} -200 370 1 0 {name=p1 sig_type=std_logic lab=vp}
C {devices/lab_pin.sym} -130 460 2 0 {name=p2 sig_type=std_logic lab=vpd}
C {devices/lab_pin.sym} -230 520 1 0 {name=p3 sig_type=std_logic lab=vg}
