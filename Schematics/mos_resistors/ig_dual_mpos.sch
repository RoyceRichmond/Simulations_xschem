v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 630 -1070 1430 -670 {flags=graph
y1=-4.9e-12
y2=4.8e-12
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
node="\\"Igate;i(v4) 1 *\\"
\\"Igate_dual;i(v2) 1 *\\""
color="4 5"
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=1}
B 2 630 -1470 1430 -1070 {flags=graph
y1=8300
y2=1.6e+10
ypos1=0
ypos2=2
divy=5
subdivy=4
unity=1
x1=0
x2=0.002
divx=5
subdivx=4
xlabmag=1.0
ylabmag=1.0
node="\\"resistance;vp vpd - i(vleft) /\\"
\\"res_single;vpp vpdp - i(vleft1) /\\""
color="4 5"
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
node="vg
vgp"
color="4 5"
dataset=-1
unitx=1
logx=0
logy=0
}
N 360 -1335 360 -1325 {
lab=vg}
N 330 -1425 330 -1265 {
lab=GND}
N 330 -1265 360 -1265 {
lab=GND}
N 425 -1485 445 -1485 {
lab=#net1}
N 395 -1445 475 -1445 {
lab=vg}
N 475 -1505 475 -1485 {
lab=vpd}
N 475 -1505 505 -1505 {
lab=vpd}
N 505 -1505 505 -1485 {
lab=vpd}
N 505 -1485 535 -1485 {
lab=vpd}
N 395 -1505 395 -1485 {
lab=vp}
N 365 -1505 395 -1505 {
lab=vp}
N 365 -1505 365 -1485 {
lab=vp}
N 330 -1485 365 -1485 {
lab=vp}
N 360 -1335 440 -1335 {
lab=vg}
N 440 -1445 440 -1335 {
lab=vg}
N 535 -1365 535 -1265 {
lab=GND}
N 360 -1265 535 -1265 {
lab=GND}
N 1530 -1295 1530 -1285 {
lab=vgp}
N 1500 -1385 1500 -1225 {
lab=GND}
N 1500 -1445 1570 -1445 {
lab=vpp}
N 1630 -1445 1660 -1445 {
lab=vpp}
N 1570 -1445 1630 -1445 {
lab=vpp}
N 1570 -1205 1660 -1205 {
lab=GND}
N 1570 -1225 1570 -1205 {
lab=GND}
N 1530 -1225 1570 -1225 {
lab=GND}
N 1500 -1225 1530 -1225 {
lab=GND}
N 1600 -1205 1600 -1195 {
lab=GND}
N 1530 -1415 1620 -1415 {
lab=vgp}
N 1530 -1415 1530 -1295 {
lab=vgp}
N 1660 -1265 1660 -1205 {
lab=GND}
N 1660 -1415 1685 -1415 {
lab=vpp}
N 1685 -1445 1685 -1415 {
lab=vpp}
N 1660 -1445 1685 -1445 {
lab=vpp}
C {sky130_fd_pr/corner.sym} 490 -1050 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/code.sym} 380 -1050 0 0 {name=Sim_params
only_toplevel=true
place=end
value="*.options savecurrents
.tran 10u 2m
.save all
.control
	run
	write ig_dual_mpos.raw 
.endc
"}
C {devices/vsource.sym} 330 -1455 0 0 {name=V1 value="1.8" savecurrent=true}
C {devices/vsource.sym} 360 -1295 0 0 {name=V2 value="PULSE 1.8 0 0 1m 1m 1n" savecurrent=true}
C {devices/gnd.sym} 360 -1265 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 535 -1485 2 0 {name=p2 sig_type=std_logic lab=vpd}
C {devices/lab_pin.sym} 360 -1335 1 0 {name=p3 sig_type=std_logic lab=vg}
C {sky130_fd_pr/pfet_01v8.sym} 395 -1465 1 1 {name=M1
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
C {devices/ammeter.sym} 535 -1455 0 1 {name=Vleft}
C {devices/res.sym} 535 -1395 0 0 {name=R3
value=1k
footprint=1206
device=resistor
m=1
savecurrent=true}
C {devices/launcher.sym} 450 -1090 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/ig_dual_mpos.raw tran"
}
C {devices/lab_pin.sym} 330 -1485 1 0 {name=p1 sig_type=std_logic lab=vp}
C {sky130_fd_pr/pfet_01v8.sym} 475 -1465 3 0 {name=M2
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
C {devices/vsource.sym} 1500 -1415 0 0 {name=V3 value="1.8" savecurrent=true}
C {devices/vsource.sym} 1530 -1255 0 0 {name=V4 value="PULSE 1.8 0 0 1m 1m 1n" savecurrent=true}
C {devices/gnd.sym} 1600 -1195 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} 1660 -1385 2 0 {name=p4 sig_type=std_logic lab=vpdp}
C {devices/lab_pin.sym} 1530 -1295 1 0 {name=p5 sig_type=std_logic lab=vgp}
C {sky130_fd_pr/pfet_01v8.sym} 1640 -1415 0 0 {name=M3
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
C {devices/ammeter.sym} 1660 -1355 0 1 {name=Vleft1}
C {devices/res.sym} 1660 -1295 0 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1
savecurrent=true}
C {devices/lab_pin.sym} 1595 -1445 1 0 {name=p6 sig_type=std_logic lab=vpp
}
