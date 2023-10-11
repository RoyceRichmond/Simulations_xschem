v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 880 -1230 1680 -830 {flags=graph
y1=-0.754565
y2=3.43749
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0.0079912
x2=0.0128728
divx=5
subdivx=1
node="signal
out_sw
enable"
color="6 5 10"
dataset=-1
unitx=1
logx=0
logy=0
rainbow=1
hilight_wave=1}
B 2 880 -830 1680 -430 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0.0079912
x2=0.0128728
divx=5
subdivx=1
node=out_inv
color=4
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=0}
N 310 -1090 310 -1060 {
lab=VDD}
N 440 -830 440 -810 {
lab=GND}
N 310 -1090 370 -1090 {
lab=VDD}
N 310 -1000 370 -1000 {
lab=GND}
N 370 -1030 370 -1000 {
lab=GND}
N 440 -1000 440 -890 {
lab=enable}
N 240 -1000 310 -1000 {
lab=GND}
N 350 -1060 370 -1060 {
lab=signal}
N 350 -1140 350 -1060 {
lab=signal}
N 240 -1140 350 -1140 {
lab=signal}
N 180 -1140 180 -1060 {
lab=signal}
N 510 -1060 590 -1060 {
lab=out_sw}
N 590 -1060 640 -1060 {
lab=out_sw}
N 180 -1000 240 -1000 {
lab=GND}
N 180 -1140 240 -1140 {
lab=signal}
N 640 -1060 640 -750 {
lab=out_sw}
N 600 -740 640 -740 {
lab=out_sw}
N 640 -750 640 -740 {
lab=out_sw}
N 240 -560 300 -560 {
lab=out_inv}
N 240 -620 240 -560 {
lab=out_inv}
N 310 -560 320 -560 {
lab=GND}
N 310 -570 310 -560 {
lab=GND}
N 280 -570 310 -570 {
lab=GND}
N 280 -620 280 -570 {
lab=GND}
N 340 -570 340 -560 {
lab=GND}
N 320 -620 320 -570 {
lab=GND}
N 320 -570 340 -570 {
lab=GND}
N 360 -620 360 -560 {
lab=GND}
N 380 -620 380 -560 {
lab=GND}
N 380 -620 400 -620 {
lab=GND}
N 400 -600 400 -560 {
lab=GND}
N 400 -600 440 -600 {
lab=GND}
N 440 -620 440 -600 {
lab=GND}
N 420 -590 420 -560 {
lab=GND}
N 420 -590 480 -590 {
lab=GND}
N 480 -620 480 -590 {
lab=GND}
N 440 -580 440 -560 {
lab=GND}
N 440 -580 520 -580 {
lab=GND}
N 520 -620 520 -580 {
lab=GND}
N 460 -570 460 -560 {
lab=GND}
N 460 -570 560 -570 {
lab=GND}
N 560 -620 560 -570 {
lab=GND}
N 300 -560 300 -520 {
lab=out_inv}
N 300 -460 300 -450 {
lab=GND}
N 270 -1140 270 -1120 {
lab=signal}
N 320 -560 340 -560 {
lab=GND}
N 340 -560 360 -560 {
lab=GND}
N 360 -560 380 -560 {
lab=GND}
N 380 -560 400 -560 {
lab=GND}
N 400 -560 420 -560 {
lab=GND}
N 420 -560 440 -560 {
lab=GND}
N 440 -560 460 -560 {
lab=GND}
C {Downloads/ADC/sw/sw.sym} 220 -1070 0 0 {name=x3}
C {devices/gnd.sym} 310 -1000 0 0 {name=l3 lab=GND}
C {devices/vdd.sym} 310 -1090 0 0 {name=l6 lab=VDD}
C {devices/vsource.sym} 310 -1030 0 0 {name=v4 value="1.8"}
C {devices/code.sym} 1140 -240 0 0 {name=TT_MODELS
only_toplevel=false
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
C {devices/gnd.sym} 440 -810 0 0 {name=l7 lab=GND}
C {devices/lab_pin.sym} 440 -970 0 0 {name=p1 sig_type=std_logic lab=enable}
C {devices/lab_pin.sym} 570 -1060 3 0 {name=p3 sig_type=std_logic lab=out_sw}
C {devices/lab_pin.sym} 180 -1140 0 0 {name=p6 sig_type=std_logic lab=signal}
C {devices/vsource.sym} 180 -1030 0 0 {name=v6 value="SIN 0.9 0.9 100 0 0"}
C {Downloads/ADC/c_array/c_array.sym} 270 -770 0 0 {name=x1 @value=1
+ MF_P=128}
C {devices/gnd.sym} 300 -450 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 300 -490 0 0 {name=v2 value="pulse 1.8 0 11m 1n 1n .1m 30m"}
C {devices/lab_pin.sym} 300 -530 2 0 {name=p2 sig_type=std_logic lab=out_inv}
C {devices/code_shown.sym} 1280 -230 0 0 {name=ngspice
only_toplevel=false
place=end
value="* .option SCALE=1e-8 
.option method=gear seed=12
.control
save all
tran 0.01m 40m
write integration_1v8.raw
.endc
"}
C {devices/res.sym} 270 -1090 0 0 {name=R1
value=100e6
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 270 -1060 0 0 {name=l4 lab=GND}
C {devices/gnd.sym} 440 -560 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 440 -860 0 0 {name=v1 value="pulse 0 1.8 10m 1n 1n .1m 30m"}
C {devices/launcher.sym} 950 -370 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/integration_1v8.raw tran"
}
