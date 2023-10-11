v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 790 -590 1590 -190 {flags=graph
y1=-0.953304
y2=6.77991
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-0.0139142
x2=0.0557842
divx=5
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0
color="4 5 6 7 12"
node="n0_out
n_dummy
dummy
n0_in
vg_out"
hilight_wave=4}
B 2 790 -1020 1590 -620 {flags=graph
y1=0.00113
y2=2.54918
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-0.0139142
x2=0.0557842
divx=5
subdivx=1
node="n_dummy
n0_out"
color="4 5"
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=0}
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
N 160 -170 250 -170 {
lab=#net1}
N 160 -250 160 -170 {
lab=#net1}
N 200 -250 200 -190 {
lab=#net2}
N 200 -190 270 -190 {
lab=#net2}
N 270 -190 270 -170 {
lab=#net2}
N 240 -250 240 -210 {
lab=#net3}
N 240 -210 290 -210 {
lab=#net3}
N 290 -210 290 -170 {
lab=#net3}
N 280 -250 280 -220 {
lab=#net4}
N 280 -220 310 -220 {
lab=#net4}
N 310 -220 310 -170 {
lab=#net4}
N 320 -250 330 -250 {
lab=#net5}
N 330 -250 330 -170 {
lab=#net5}
N 350 -250 360 -250 {
lab=#net6}
N 350 -250 350 -170 {
lab=#net6}
N 370 -250 400 -250 {
lab=#net7}
N 370 -250 370 -170 {
lab=#net7}
N 440 -250 440 -220 {
lab=n0_out}
N 390 -220 440 -220 {
lab=n0_out}
N 390 -220 390 -200 {
lab=n0_out}
N 410 -200 480 -200 {
lab=n_dummy}
N 480 -250 480 -200 {
lab=n_dummy}
N 560 -300 560 -280 {
lab=GND}
N 520 -370 560 -370 {
lab=vg_out}
N 560 -370 560 -360 {
lab=vg_out}
C {devices/gnd.sym} 110 30 0 0 {name=l1 lab=GND}
C {devices/vdd.sym} 110 -140 0 0 {name=l2 lab=VDD}
C {devices/title.sym} 160 360 0 0 {name=l3 author="RRichmondR"}
C {devices/vsource.sym} 110 -80 0 0 {name=v1 value="1.8"}
C {devices/vsource.sym} 390 80 0 0 {name=v2 value="pulse 0 1.8 10m 1n 1n 10m 20m"}
C {devices/gnd.sym} 390 130 0 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} 440 -230 2 0 {name=p1 sig_type=std_logic lab=n0_out}
C {devices/lab_pin.sym} 390 20 0 0 {name=p2 sig_type=std_logic lab=n0_in}
C {devices/launcher.sym} 940 -100 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/ADC.raw tran"
}
C {devices/code.sym} 1090 -110 0 0 {name=TT_MODELS
only_toplevel=false
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
C {devices/code.sym} 1200 -110 0 0 {name=ngspice
only_toplevel=false
place=end
value="* .option SCALE=1e-6 
.option method=gear seed=12
.control
save all
tran 0.1m 30m
write cap_plus_inv.raw
plot n0_in n0_out
plot vg_out
.endc
"}
C {devices/vsource.sym} 430 180 0 0 {name=v3 value="pulse 0 1.8 20m 1n 1n 10m 30m"}
C {devices/gnd.sym} 430 230 0 0 {name=l5 lab=GND}
C {devices/lab_pin.sym} 480 -210 2 0 {name=p3 sig_type=std_logic lab=n_dummy}
C {devices/lab_pin.sym} 430 20 2 0 {name=p4 sig_type=std_logic lab=dummy}
C {Downloads/ADC/inverter_array/inverter_array.sym} -30 -70 0 0 {name=x1}
C {devices/vsource.sym} 560 -330 0 0 {name=v4 value="pulse 0 1.8 5m 1n 1n 10m 50m"}
C {devices/gnd.sym} 560 -280 0 0 {name=l6 lab=GND}
C {devices/lab_pin.sym} 530 -370 3 0 {name=p5 sig_type=std_logic lab=vg_out}
C {Downloads/ADC/c_array/c_array.sym} 190 -400 0 0 {name=x2 @value +MF_P=1}
