v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 790 -980 1590 -580 {flags=graph

y2=3.19809
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=6.64368e-06
x2=0.000659916
divx=5
subdivx=1
node="vs2
vs1
vout_sw"
color="4 5 6"
dataset=-1
unitx=1
logx=0
logy=0
rainbow=1
hilight_wave=2
y1=-0.876082}
N 180 -810 180 -710 {
lab=VDD}
N 180 -810 250 -810 {
lab=VDD}
N 250 -810 250 -780 {
lab=VDD}
N 250 -720 250 -670 {
lab=vdd_x_3/4}
N 250 -610 250 -580 {
lab=vdd_x_2/4}
N 180 -650 180 -490 {
lab=GND}
N 250 -420 250 -360 {
lab=GND}
N 250 -520 250 -480 {
lab=vdd_x_1/4}
N 180 -360 250 -360 {
lab=GND}
N 180 -490 180 -360 {
lab=GND}
N 250 -360 500 -360 {
lab=GND}
N 620 -510 620 -360 {
lab=GND}
N 500 -360 620 -360 {
lab=GND}
N 80 -480 80 -360 {
lab=GND}
N 80 -360 180 -360 {
lab=GND}
N -130 -480 -130 -370 {
lab=GND}
N -130 -370 -130 -360 {
lab=GND}
N -130 -360 80 -360 {
lab=GND}
N -130 -600 -130 -540 {
lab=vs1}
N -230 -600 -130 -600 {
lab=vs1}
N 40 -240 290 -240 {
lab=vs2}
N 40 -650 40 -240 {
lab=vs2}
N 40 -650 80 -650 {
lab=vs2}
N -290 -220 290 -220 {
lab=vs1}
N -290 -600 -290 -220 {
lab=vs1}
N -290 -600 -230 -600 {
lab=vs1}
N 350 -140 350 -130 {
lab=GND}
N 350 -210 390 -210 {
lab=#net1}
N 350 -210 350 -200 {
lab=#net1}
N 510 -210 550 -210 {
lab=vout_sw}
N 410 -160 410 -140 {
lab=GND}
N 410 -275 410 -260 {
lab=VDD}
N 290 -320 290 -240 {
lab=vs2}
N 290 -320 450 -320 {
lab=vs2}
N 450 -320 450 -275 {
lab=vs2}
N 450 -160 450 -95 {
lab=vs1}
N 260 -95 450 -95 {
lab=vs1}
N 260 -100 260 -95 {
lab=vs1}
N 260 -220 260 -100 {
lab=vs1}
N 430 -570 430 -360 {
lab=GND}
N 300 -660 370 -660 {
lab=vdd_x_3/4}
N 300 -680 300 -660 {
lab=vdd_x_3/4}
N 250 -680 300 -680 {
lab=vdd_x_3/4}
N 360 -620 370 -620 {
lab=vdd_x_2/4}
N 360 -620 360 -590 {
lab=vdd_x_2/4}
N 250 -590 360 -590 {
lab=vdd_x_2/4}
N 80 -650 80 -540 {
lab=vs2}
N 330 -640 370 -640 {
lab=vs2}
N 330 -880 330 -640 {
lab=vs2}
N 80 -880 330 -880 {
lab=vs2}
N 80 -880 80 -650 {
lab=vs2}
N 430 -810 430 -700 {
lab=VDD}
N 250 -810 430 -810 {
lab=VDD}
N 430 -580 430 -570 {
lab=GND}
N 490 -640 620 -640 {
lab=#net2}
N 620 -580 620 -510 {}
C {devices/gnd.sym} 250 -360 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 250 -700 2 0 {name=p1 sig_type=std_logic lab=vdd_x_3/4}
C {devices/vsource.sym} 180 -680 0 0 {name=V1 value=1.8}
C {devices/res.sym} 250 -750 0 0 {name=R1
value=100k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 250 -640 0 0 {name=R2
value=100k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 250 -550 0 0 {name=R3
value=100k
footprint=1206
device=resistor
m=1}
C {devices/vdd.sym} 250 -810 0 0 {name=l2 lab=VDD}
C {devices/lab_pin.sym} 250 -600 2 0 {name=p2 sig_type=std_logic lab=vdd_x_2/4}
C {devices/title.sym} 160 -40 0 0 {name=l3 author="Stefan Schippers"}
C {devices/res.sym} 250 -450 0 0 {name=R4
value=100k
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 250 -500 2 0 {name=p3 sig_type=std_logic lab=vdd_x_1/4}
C {sky130_fd_pr/corner.sym} 770 -510 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/code.sym} 650 -510 0 0 {name=STIMULI 
only_toplevel=true
place=end
value=".options savecurrents
.tran 0.1m 1m uic
.save all
.control
	run
	write adc.raw
*plot all.vout 
.endc
"}
C {devices/launcher.sym} 980 -500 0 0 {name=h17 
descr="Load waves" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw tran

"
}
C {devices/vsource.sym} 80 -510 0 0 {name=V2 value="PULSE 0 1.8 200u 1n 1n 200u 1m"}
C {devices/vsource.sym} -130 -510 0 0 {name=V3 value="PULSE 0 1.8 0 1n 1n 200u 1m"}
C {devices/lab_pin.sym} -130 -600 1 0 {name=p5 sig_type=std_logic lab=vs1}
C {devices/lab_pin.sym} 80 -630 2 0 {name=p6 sig_type=std_logic lab=vs2
}
C {devices/vdd.sym} 410 -275 0 0 {name=l5 lab=VDD}
C {devices/gnd.sym} 410 -140 0 0 {name=l6 lab=GND}
C {devices/vsource.sym} 350 -170 0 0 {name=V4 value=1.8}
C {devices/gnd.sym} 350 -130 0 0 {name=l7 lab=GND}
C {Symbols/tranmission_gates.sym} 410 -320 0 0 {name=x1}
C {devices/lab_pin.sym} 550 -210 2 0 {name=p7 sig_type=std_logic lab=vout_sw}
C {Symbols/mos_sym_spdt.sym} 520 -640 0 0 {name=x2}
C {devices/res.sym} 620 -610 0 0 {name=R5
value=100k
footprint=1206
device=resistor
m=1}
