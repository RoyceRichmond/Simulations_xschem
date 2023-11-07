v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 0 -780 800 -380 {flags=graph
y1=1.6
y2=1.8
ypos1=0
ypos2=2
divy=5
subdivy=4
unity=1
x1=-0.0001
x2=0.0019
divx=5
subdivx=4
xlabmag=1.0
ylabmag=1.0
node="\\"dv_res1;1.8 vpd -\\"
\\"dv_res2;1.8 vpd2 -\\"
\\"dv_res3;1.8 vpd3 -\\"
\\"dv_res3;1.8 vpd4 -\\""
color="4 5 6 7"
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=3
rainbow=1}
B 2 0 -1180 800 -780 {flags=graph
y1=0
y2=1.8
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-0.0001
x2=0.0019
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
B 2 0 -380 800 20 {flags=graph
y1=12000
y2=6e+09
ypos1=0
ypos2=2
divy=5
subdivy=4
unity=1
x1=-0.0001
x2=0.0019
divx=5
subdivx=4
xlabmag=1.0
ylabmag=1.0
node="\\"res1;1.8 vpd - i(vleft) /\\"
\\"res2;1.8 vpd2 - i(vleft1) /\\"
\\"res3;1.8 vpd3 - i(vleft2) /\\"
\\"res4;1.8 vpd4 - i(vleft3) /\\""
color="4 7 5 6"
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=0
rainbow=1}
N 875 -965 875 -955 {
lab=vg}
N 845 -1055 845 -895 {
lab=GND}
N 845 -1115 915 -1115 {
lab=#net1}
N 975 -1115 1005 -1115 {
lab=#net1}
N 915 -1115 975 -1115 {
lab=#net1}
N 915 -875 1005 -875 {
lab=GND}
N 915 -895 915 -875 {
lab=GND}
N 875 -895 915 -895 {
lab=GND}
N 845 -895 875 -895 {
lab=GND}
N 945 -875 945 -865 {
lab=GND}
N 840 -710 840 -550 {
lab=GND}
N 840 -770 910 -770 {
lab=#net2}
N 970 -770 1000 -770 {
lab=#net2}
N 910 -770 970 -770 {
lab=#net2}
N 910 -530 1000 -530 {
lab=GND}
N 910 -550 910 -530 {
lab=GND}
N 870 -550 910 -550 {
lab=GND}
N 840 -550 870 -550 {
lab=GND}
N 940 -530 940 -520 {
lab=GND}
N 1105 -1065 1105 -905 {
lab=GND}
N 1105 -1125 1175 -1125 {
lab=#net3}
N 1235 -1125 1265 -1125 {
lab=#net3}
N 1175 -1125 1235 -1125 {
lab=#net3}
N 1175 -885 1265 -885 {
lab=GND}
N 1175 -905 1175 -885 {
lab=GND}
N 1135 -905 1175 -905 {
lab=GND}
N 1105 -905 1135 -905 {
lab=GND}
N 1205 -885 1205 -875 {
lab=GND}
N 1100 -720 1100 -560 {
lab=GND}
N 1100 -780 1170 -780 {
lab=#net4}
N 1230 -780 1260 -780 {
lab=#net4}
N 1170 -780 1230 -780 {
lab=#net4}
N 1170 -540 1260 -540 {
lab=GND}
N 1170 -560 1170 -540 {
lab=GND}
N 1130 -560 1170 -560 {
lab=GND}
N 1100 -560 1130 -560 {
lab=GND}
N 1200 -540 1200 -530 {
lab=GND}
N 1000 -740 1020 -740 {
lab=#net2}
N 1020 -770 1020 -740 {
lab=#net2}
N 1000 -770 1020 -770 {
lab=#net2}
N 1000 -590 1000 -530 {
lab=GND}
N 1260 -780 1280 -780 {
lab=#net4}
N 1280 -780 1280 -750 {
lab=#net4}
N 1260 -750 1280 -750 {
lab=#net4}
N 875 -1085 965 -1085 {
lab=vg}
N 875 -1085 875 -965 {
lab=vg}
N 1265 -945 1265 -885 {
lab=GND}
N 1260 -600 1260 -540 {
lab=GND}
N 1005 -935 1005 -875 {
lab=GND}
N 1005 -1085 1030 -1085 {
lab=#net1}
N 1030 -1115 1030 -1085 {
lab=#net1}
N 1005 -1115 1030 -1115 {
lab=#net1}
N 1265 -1095 1310 -1095 {
lab=#net3}
N 1310 -1125 1310 -1095 {
lab=#net3}
N 1265 -1125 1310 -1125 {
lab=#net3}
C {sky130_fd_pr/corner.sym} 1200 -480 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/code.sym} 1090 -480 0 0 {name=Sim_params
only_toplevel=true
place=end
value="*.options savecurrents
.tran 10u 2m
.save all
.control
	run
	write pmos_resistor_var.raw 
.endc
"}
C {devices/vsource.sym} 845 -1085 0 0 {name=V1 value="1.8" savecurrent=true}
C {devices/vsource.sym} 875 -925 0 0 {name=V2 value="PULSE 1.8 0 0 1m 1m 1n" savecurrent=true}
C {devices/gnd.sym} 945 -865 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 1005 -1055 2 0 {name=p2 sig_type=std_logic lab=vpd}
C {devices/lab_pin.sym} 875 -965 1 0 {name=p3 sig_type=std_logic lab=vg}
C {devices/vsource.sym} 840 -740 0 0 {name=V3 value="1.8" savecurrent=true}
C {devices/gnd.sym} 940 -520 0 0 {name=l2 lab=GND}
C {devices/ammeter.sym} 1000 -680 0 1 {name=Vleft1}
C {devices/lab_pin.sym} 1000 -710 2 0 {name=p5 sig_type=std_logic lab=vpd2}
C {devices/launcher.sym} 885 -390 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/pmos_resistor_var.raw tran"
}
C {devices/vsource.sym} 1105 -1095 0 0 {name=V5 value="1.8" savecurrent=true}
C {devices/gnd.sym} 1205 -875 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} 1265 -1065 2 0 {name=p1 sig_type=std_logic lab=vpd3}
C {devices/vsource.sym} 1100 -750 0 0 {name=V7 value="1.8" savecurrent=true}
C {devices/res.sym} 1000 -620 0 0 {name=R4
value=1k
footprint=1206
device=resistor
m=1
savecurrent=true}
C {devices/gnd.sym} 1200 -530 0 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} 1260 -720 2 0 {name=p6 sig_type=std_logic lab=vpd4}
C {devices/lab_pin.sym} 1225 -1095 0 0 {name=p4 sig_type=std_logic lab=vg}
C {devices/lab_pin.sym} 1220 -750 0 0 {name=p7 sig_type=std_logic lab=vg}
C {devices/lab_pin.sym} 960 -740 0 0 {name=p8 sig_type=std_logic lab=vg}
C {sky130_fd_pr/pfet_01v8.sym} 985 -1085 0 0 {name=M1
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
C {sky130_fd_pr/pfet_01v8_hvt.sym} 1245 -1095 0 0 {name=M2
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
model=pfet_01v8_hvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 980 -740 0 0 {name=M3
L=0.35
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_nf.sym} 1240 -750 0 0 {name=M4
L=0.15
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W / nf * 0.29'"
pd="'2*int((nf+1)/2) * (W / nf + 0.29)'"
as="'int((nf+2)/2) * W / nf * 0.29'"
ps="'2*int((nf+2)/2) * (W / nf + 0.29)'"
nrd="'0.29 / W '" nrs="'0.29 / W '"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/ammeter.sym} 1260 -690 0 1 {name=Vleft3}
C {devices/res.sym} 1260 -630 0 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1
savecurrent=true}
C {devices/ammeter.sym} 1265 -1035 0 1 {name=Vleft2}
C {devices/res.sym} 1265 -975 0 0 {name=R2
value=1k
footprint=1206
device=resistor
m=1
savecurrent=true}
C {devices/ammeter.sym} 1005 -1025 0 1 {name=Vleft}
C {devices/res.sym} 1005 -965 0 0 {name=R3
value=1k
footprint=1206
device=resistor
m=1
savecurrent=true}
