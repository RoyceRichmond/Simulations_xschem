v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 630 -1070 1430 -670 {flags=graph
y1=-2.2e-12
y2=2.2e-12
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
node=i(v2)
color=4
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 630 -1470 1430 -1070 {flags=graph
y1=8300
y2=5.7e+09
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
node="\\"resistance;vs vpd - i(vleft) /\\""
color=4
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 630 -1870 1430 -1470 {flags=graph
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
N 415 -1245 415 -1235 {
lab=vg}
N 385 -1335 385 -1175 {
lab=GND}
N 385 -1395 455 -1395 {
lab=vs}
N 515 -1395 545 -1395 {
lab=vs}
N 455 -1395 515 -1395 {
lab=vs}
N 455 -1155 545 -1155 {
lab=GND}
N 455 -1175 455 -1155 {
lab=GND}
N 415 -1175 455 -1175 {
lab=GND}
N 385 -1175 415 -1175 {
lab=GND}
N 485 -1155 485 -1145 {
lab=GND}
N 415 -1365 505 -1365 {
lab=vg}
N 415 -1365 415 -1245 {
lab=vg}
N 545 -1215 545 -1155 {
lab=GND}
N 545 -1365 570 -1365 {
lab=vs}
N 570 -1395 570 -1365 {
lab=vs}
N 545 -1395 570 -1395 {
lab=vs}
C {sky130_fd_pr/corner.sym} 490 -1050 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/code.sym} 380 -1050 0 0 {name=Sim_params
only_toplevel=true
place=end
value="*.options savecurrents
.tran 10u 2m
.save all
.control
	run
	write ig_mpos.raw 
.endc
"}
C {devices/vsource.sym} 385 -1365 0 0 {name=V1 value="1.8" savecurrent=true}
C {devices/vsource.sym} 415 -1205 0 0 {name=V2 value="PULSE 1.8 0 0 1m 1m 1n" savecurrent=true}
C {devices/gnd.sym} 485 -1145 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 545 -1335 2 0 {name=p2 sig_type=std_logic lab=vpd}
C {devices/lab_pin.sym} 415 -1245 1 0 {name=p3 sig_type=std_logic lab=vg}
C {sky130_fd_pr/pfet_01v8.sym} 525 -1365 0 0 {name=M1
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
model=pfet_01v8
spiceprefix=X
}
C {devices/ammeter.sym} 545 -1305 0 1 {name=Vleft}
C {devices/res.sym} 545 -1245 0 0 {name=R3
value=1k
footprint=1206
device=resistor
m=1
savecurrent=true}
C {devices/launcher.sym} 450 -1090 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/ig_mpos.raw tran"
}
C {devices/lab_pin.sym} 455 -1395 1 0 {name=p1 sig_type=std_logic lab=vs}
