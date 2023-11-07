v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 -130 -270 670 130 {flags=graph
y1=33
y2=1.1e+12
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.002
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
B 2 -130 -670 670 -270 {flags=graph
y1=0
y2=1.8
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.002
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
N -430 -335 -340 -335 {
lab=vg}
N -430 -335 -430 -325 {
lab=vg}
N -460 -425 -460 -265 {
lab=GND}
N -300 -335 -280 -335 {
lab=GND}
N -300 -425 -300 -365 {
lab=vpd}
N -460 -485 -390 -485 {
lab=vp}
N -330 -485 -300 -485 {
lab=vp}
N -390 -485 -330 -485 {
lab=vp}
N -280 -335 -280 -245 {
lab=GND}
N -300 -245 -280 -245 {
lab=GND}
N -390 -245 -300 -245 {
lab=GND}
N -390 -265 -390 -245 {
lab=GND}
N -430 -265 -390 -265 {
lab=GND}
N -460 -265 -430 -265 {
lab=GND}
N -360 -245 -360 -235 {
lab=GND}
C {devices/vsource.sym} -460 -455 0 0 {name=V1 value="1.8" savecurrent=true}
C {devices/res.sym} -300 -455 0 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1
savecurrent=true}
C {sky130_fd_pr/corner.sym} 800 -380 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/code.sym} 690 -380 0 0 {name=Sim_params
only_toplevel=true
place=end
value="*.options savecurrents
.tran 10u 2m
.save all
.control
	run
	write mos_test.raw 
.endc
"}
C {devices/vsource.sym} -430 -295 0 0 {name=V2 value="PULSE 0 1.8 0 1m 1m 2m" savecurrent=true}
C {devices/launcher.sym} 990 -370 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/mos_test.raw tran"
}
C {devices/gnd.sym} -360 -235 0 0 {name=l1 lab=GND}
C {devices/ammeter.sym} -300 -275 0 1 {name=Vleft}
C {devices/lab_pin.sym} -370 -485 1 0 {name=p1 sig_type=std_logic lab=vp}
C {devices/lab_pin.sym} -300 -395 2 0 {name=p2 sig_type=std_logic lab=vpd}
C {devices/lab_pin.sym} -400 -335 1 0 {name=p3 sig_type=std_logic lab=vg}
C {sky130_fd_pr/nfet_01v8.sym} -320 -335 0 0 {name=M1
L=0.15
W=1
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
