v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 980 -590 1780 -190 {flags=graph
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
B 2 970 -1000 1770 -600 {flags=graph
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
N 230 -440 290 -440 {
lab=VDD}
N 230 -380 290 -380 {
lab=GND}
N 290 -410 290 -380 {
lab=GND}
N 230 -380 230 -300 {
lab=GND}
N 230 -470 230 -440 {
lab=VDD}
N 510 -220 510 -200 {
lab=GND}
N 510 -340 510 -280 {
lab=n0_in}
N 510 -530 510 -500 {
lab=#net1}
N 550 -120 550 -100 {
lab=GND}
N 550 -340 550 -180 {
lab=dummy}
N 530 -340 550 -340 {
lab=dummy}
N 470 -340 490 -340 {
lab=GND}
N 450 -340 470 -340 {
lab=GND}
N 430 -340 450 -340 {
lab=GND}
N 410 -340 430 -340 {
lab=GND}
N 390 -340 410 -340 {
lab=GND}
N 370 -340 390 -340 {
lab=GND}
N 230 -340 370 -340 {
lab=GND}
N 530 -530 530 -500 {
lab=#net2}
N 280 -500 370 -500 {
lab=#net3}
N 280 -580 280 -500 {
lab=#net3}
N 320 -580 320 -520 {
lab=#net4}
N 320 -520 390 -520 {
lab=#net4}
N 390 -520 390 -500 {
lab=#net4}
N 360 -580 360 -540 {
lab=#net5}
N 360 -540 410 -540 {
lab=#net5}
N 410 -540 410 -500 {
lab=#net5}
N 400 -580 400 -550 {
lab=#net6}
N 400 -550 430 -550 {
lab=#net6}
N 430 -550 430 -500 {
lab=#net6}
N 440 -580 450 -580 {
lab=#net7}
N 450 -580 450 -500 {
lab=#net7}
N 470 -580 480 -580 {
lab=#net8}
N 470 -580 470 -500 {
lab=#net8}
N 490 -580 520 -580 {
lab=#net9}
N 490 -580 490 -500 {
lab=#net9}
N 560 -580 560 -550 {
lab=#net1}
N 510 -550 560 -550 {
lab=#net1}
N 510 -550 510 -530 {
lab=#net1}
N 530 -530 600 -530 {
lab=#net2}
N 600 -580 600 -530 {
lab=#net2}
N 640 -700 680 -700 {
lab=vg_out}
C {devices/title.sym} 160 360 0 0 {name=l3 author="RRichmondR"}
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
.param MF_P=1
.control
save all
tran 0.1m 30m
write cap_plus_inv.raw
plot dummy dummy_out
.endc
"}
C {devices/gnd.sym} 230 -300 0 0 {name=l7 lab=GND}
C {devices/vdd.sym} 230 -470 0 0 {name=l8 lab=VDD}
C {devices/vsource.sym} 230 -410 0 0 {name=v5 value="1.8"}
C {devices/vsource.sym} 510 -250 0 0 {name=v6 value="pulse 0 1.8 10m 1n 1n 10m 20m"}
C {devices/gnd.sym} 510 -200 0 0 {name=l9 lab=GND}
C {devices/lab_pin.sym} 510 -310 0 0 {name=p3 sig_type=std_logic lab=n0_in}
C {devices/vsource.sym} 550 -150 0 0 {name=v7 value="pulse 0 1.8 20m 1n 1n 10m 30m"}
C {devices/gnd.sym} 550 -100 0 0 {name=l10 lab=GND}
C {devices/lab_pin.sym} 550 -310 2 0 {name=p5 sig_type=std_logic lab=dummy}
C {Schematics/ADC/inverter_array/inverter_array.sym} 90 -400 0 0 {name=x2}
C {devices/lab_pin.sym} 650 -700 3 0 {name=p6 sig_type=std_logic lab=vg_out}
C {Schematics/ADC/c_array/c_array.sym} 310 -730 0 0 {name=x3 @value}
