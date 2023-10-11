v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 470 -550 1270 -150 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-0.00688836
x2=0.0368781
divx=5
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0
color="4 5 6 7"
node="n0_out
n_dummy
dummy
n0_in"
hilight_wave=3}
N 110 -110 170 -110 {
lab=VDD}
N 110 -50 170 -50 {
lab=GND}
N 170 -80 170 -50 {
lab=GND}
N 110 -50 110 30 {
lab=GND}
N 110 -140 110 -110 {
lab=VDD}
N 390 110 390 130 {
lab=GND}
N 390 -10 390 50 {
lab=n0_in}
N 390 -200 390 -170 {
lab=n0_out}
N 430 210 430 230 {
lab=GND}
N 430 -10 430 150 {
lab=dummy}
N 410 -10 430 -10 {
lab=dummy}
N 350 -10 370 -10 {
lab=GND}
N 330 -10 350 -10 {
lab=GND}
N 310 -10 330 -10 {
lab=GND}
N 290 -10 310 -10 {
lab=GND}
N 270 -10 290 -10 {
lab=GND}
N 250 -10 270 -10 {
lab=GND}
N 110 -10 250 -10 {
lab=GND}
N 410 -200 410 -170 {
lab=n_dummy}
C {devices/gnd.sym} 110 30 0 0 {name=l1 lab=GND}
C {devices/vdd.sym} 110 -140 0 0 {name=l2 lab=VDD}
C {devices/title.sym} 160 360 0 0 {name=l3 author="RRichmondR"}
C {devices/vsource.sym} 110 -80 0 0 {name=v1 value="1.8"}
C {devices/vsource.sym} 390 80 0 0 {name=v2 value="pulse 0 1.8 10m 1n 1n 10m 20m"}
C {devices/gnd.sym} 390 130 0 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} 390 -200 0 0 {name=p1 sig_type=std_logic lab=n0_out}
C {devices/lab_pin.sym} 390 20 0 0 {name=p2 sig_type=std_logic lab=n0_in}
C {devices/launcher.sym} 520 -100 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/ADC.raw tran"
}
C {devices/code.sym} 560 -30 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
C {devices/code.sym} 570 120 0 0 {name=ngspice
only_toplevel=true
place=end
value="* .option SCALE=1e-6 
.option method=gear seed=12
.control
save all
tran 0.1m 30m
write ADC.raw
plot n0_in n0_out
.endc
"}
C {devices/vsource.sym} 430 180 0 0 {name=v3 value="pulse 0 1.8 20m 1n 1n 10m 30m"}
C {devices/gnd.sym} 430 230 0 0 {name=l5 lab=GND}
C {devices/lab_pin.sym} 410 -200 1 0 {name=p3 sig_type=std_logic lab=n_dummy}
C {devices/lab_pin.sym} 430 20 2 0 {name=p4 sig_type=std_logic lab=dummy}
C {Downloads/ADC/inverter_array/inverter_array.sym} -30 -70 0 0 {name=x1}
