v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 380 -410 1180 -10 {flags=graph
y1=1.6
y2=3.6
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-0.00706747
x2=0.0316548
divx=5
subdivx=1
node=out_sw
color=5
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 380 -820 1180 -420 {flags=graph
y1=-0.965687
y2=3.52188
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-0.00706747
x2=0.0316548
divx=5
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0
color="6 4"
node="signal
enable"
hilight_wave=1}
N 40 -90 40 -60 {
lab=VDD}
N 180 180 180 200 {
lab=GND}
N 140 110 180 110 {
lab=enable}
N 180 110 180 120 {
lab=enable}
N 40 -90 100 -90 {
lab=VDD}
N 40 0 100 0 {
lab=GND}
N 100 -30 100 0 {
lab=GND}
N 170 0 170 110 {
lab=enable}
N -30 0 40 0 {
lab=GND}
N 80 -60 100 -60 {
lab=signal}
N 80 -140 80 -60 {
lab=signal}
N -30 -140 80 -140 {
lab=signal}
N -30 -140 -30 -60 {
lab=signal}
N 240 -60 320 -60 {
lab=out_sw}
C {Schematics/ADC/sw/sw.sym} -50 -70 0 0 {name=x1}
C {devices/gnd.sym} 40 0 0 0 {name=l1 lab=GND}
C {devices/vdd.sym} 40 -90 0 0 {name=l2 lab=VDD}
C {devices/vsource.sym} 40 -30 0 0 {name=v1 value="3.3"}
C {devices/code.sym} 470 60 0 0 {name=TT_MODELS
only_toplevel=false
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
C {devices/code.sym} 580 60 0 0 {name=ngspice
only_toplevel=false
place=end
value="* .option SCALE=1e-6 
.option method=gear seed=12
.control
save all
tran 0.1m 30m
write sim_sw.raw
plot enable out_sw
.endc
"}
C {devices/vsource.sym} 180 150 0 0 {name=v4 value="pulse 0 3.3 5m 1n 1n 5m 10m"}
C {devices/gnd.sym} 180 200 0 0 {name=l6 lab=GND}
C {devices/lab_pin.sym} 150 110 3 0 {name=p5 sig_type=std_logic lab=enable}
C {devices/lab_pin.sym} 300 -60 3 0 {name=p1 sig_type=std_logic lab=out_sw}
C {devices/vsource.sym} -30 -30 0 0 {name=v3 value="pulse 2.35 3.3 0 1n 1n 10m 20m"}
C {devices/launcher.sym} 780 30 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/sim_sw.raw tran"
}
C {devices/lab_pin.sym} -30 -140 0 0 {name=p2 sig_type=std_logic lab=signal}
