v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 450 -1440 1250 -1040 {flags=graph
y1=-0.391876
y2=1.86286
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-0.000618784
x2=0.00446634
divx=5
subdivx=1
node="top_caps
bottom_caps"
color=6
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=1}
B 2 450 -1850 1250 -1450 {flags=graph
y1=-0.399419
y2=3.42263
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-0.000618784
x2=0.00446634
divx=5
subdivx=1
node="d2
d1
d0
sample"
color="4 5 6 10"
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=3}
B 2 1250 -1850 2050 -1450 {flags=graph
y1=-0.291146
y2=3.37804
ypos1=0
ypos2=2
divy=5

unity=1
x1=-0.000618784
x2=0.00446634
divx=5

node="d2_n
d1_n
d0_n"
color="4 5 10"

unitx=1
logx=0
logy=0
hilight_wave=2

subdivy=1
subdivx=1
dataset=-1}
N 30 -570 30 -540 {
lab=GND}
N 30 -650 30 -630 {
lab=VDD}
N -70 -110 -70 -90 {
lab=sample}
N -70 -30 -70 0 {
lab=GND}
N 180 -630 180 -610 {
lab=vinp}
N 100 -630 100 -610 {
lab=vinn}
N 370 -870 370 -850 {
lab=#net1}
N 370 -870 420 -870 {
lab=#net1}
N 560 -870 820 -870 {
lab=top_caps}
N 950 -800 1000 -800 {
lab=vinn}
N 1120 -800 1210 -800 {
lab=bottom_caps}
N 710 -290 750 -290 {
lab=VDD}
N 750 -300 750 -290 {
lab=VDD}
N 690 -290 690 -270 {
lab=d0}
N 690 -270 810 -270 {
lab=d0}
N 810 -270 810 -230 {
lab=d0}
N 670 -290 670 -230 {
lab=d1}
N 610 -230 670 -230 {
lab=d1}
N 650 -290 650 -240 {
lab=d2}
N 400 -240 650 -240 {
lab=d2}
N 400 -240 400 -230 {
lab=d2}
N 1300 -280 1300 -260 {
lab=d0_n}
N 1300 -260 1420 -260 {
lab=d0_n}
N 1420 -260 1420 -220 {
lab=d0_n}
N 1280 -280 1280 -220 {
lab=d1_n}
N 1220 -220 1280 -220 {
lab=d1_n}
N 1260 -280 1260 -230 {
lab=d2_n}
N 1010 -230 1260 -230 {
lab=d2_n}
N 1010 -230 1010 -220 {
lab=d2_n}
N 710 -580 710 -450 {
lab=#net2}
N 670 -580 690 -580 {
lab=d0_n}
N 690 -580 690 -450 {
lab=d0_n}
N 670 -570 670 -450 {
lab=d1_n}
N 630 -570 670 -570 {
lab=d1_n}
N 630 -580 630 -570 {
lab=d1_n}
N 650 -560 650 -450 {
lab=d2_n}
N 590 -560 650 -560 {
lab=d2_n}
N 590 -580 590 -560 {
lab=d2_n}
N 1320 -550 1320 -440 {
lab=#net3}
N 1300 -550 1300 -440 {
lab=#net4}
N 1280 -550 1300 -550 {
lab=#net4}
N 1280 -530 1280 -440 {
lab=#net5}
N 1240 -530 1280 -530 {
lab=#net5}
N 1240 -550 1240 -530 {
lab=#net5}
N 1260 -520 1260 -440 {
lab=#net6}
N 1200 -520 1260 -520 {
lab=#net6}
N 1200 -550 1200 -520 {
lab=#net6}
N 820 -870 820 -700 {
lab=top_caps}
N 750 -700 820 -700 {
lab=top_caps}
N 1210 -800 1440 -800 {
lab=bottom_caps}
N 1440 -800 1440 -670 {
lab=bottom_caps}
N 1360 -670 1440 -670 {
lab=bottom_caps}
N 510 -140 510 -70 {
lab=d0}
N 310 -140 310 -80 {
lab=d1}
N 100 -140 100 -90 {
lab=d2}
N 510 -10 510 0 {
lab=GND}
N 310 -20 310 -10 {
lab=GND}
N 100 -30 100 -10 {
lab=GND}
C {devices/code.sym} 1280 -1310 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/code_shown.sym} 1400 -1330 0 0 {name=ngspice1
only_toplevel=false
place=end
value="* .option SCALE=1e-6
.option method=gear seed=12
.control
.param mult=83
.param v_pp=1.8
.param vinp=0
.param vinn=v_pp-vinp
save all
tran 0.1m 5m
write assemble.raw
*plot top_caps bottom_caps
.endc
"}
C {devices/vsource.sym} -70 -60 0 0 {name=v1 value="pulse \{v_pp\} 0 1m 1n 1n 5m 5m"}
C {devices/vsource.sym} 30 -600 0 0 {name=v4 value="\{v_pp\}"}
C {devices/vdd.sym} 30 -650 0 0 {name=l3 lab=VDD}
C {devices/gnd.sym} 30 -540 0 0 {name=l4 lab=GND}
C {devices/gnd.sym} -70 0 0 0 {name=l5 lab=GND}
C {devices/lab_pin.sym} -70 -110 1 0 {name=p1 sig_type=std_logic lab=sample}
C {devices/vsource.sym} 180 -580 0 0 {name=v2 value="\{vinp\}"}
C {devices/gnd.sym} 180 -550 0 0 {name=l8 lab=GND}
C {devices/lab_pin.sym} 180 -630 1 0 {name=p3 sig_type=std_logic lab=vinp}
C {devices/launcher.sym} 1370 -1090 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/assemble.raw tran"
}
C {devices/vsource.sym} 100 -580 0 0 {name=v8 value="\{vinn\}"}
C {devices/gnd.sym} 100 -550 0 0 {name=l35 lab=GND}
C {devices/lab_pin.sym} 100 -630 1 0 {name=p17 sig_type=std_logic lab=vinn}
C {devices/lab_pin.sym} 490 -810 2 0 {name=p2 sig_type=std_logic lab=sample}
C {devices/vsource.sym} 370 -820 0 0 {name=v10 value="\{vinp\}"}
C {devices/gnd.sym} 370 -790 0 0 {name=l14 lab=GND}
C {devices/lab_pin.sym} 610 -870 1 0 {name=p16 sig_type=std_logic lab=top_caps}
C {sw/sw.sym} 270 -880 0 0 {name=x6}
C {devices/vdd.sym} 420 -900 0 0 {name=l26 lab=VDD}
C {devices/gnd.sym} 420 -840 0 0 {name=l27 lab=GND}
C {devices/lab_pin.sym} 1210 -800 1 0 {name=p15 sig_type=std_logic lab=bottom_caps}
C {sw/sw.sym} 840 -810 0 0 {name=x9}
C {devices/lab_pin.sym} 1060 -740 2 0 {name=p21 sig_type=std_logic lab=sample}
C {devices/gnd.sym} 990 -770 0 0 {name=l1 lab=GND}
C {devices/vdd.sym} 990 -830 0 0 {name=l2 lab=VDD}
C {devices/lab_pin.sym} 960 -800 1 0 {name=p25 sig_type=std_logic lab=vinn}
C {devices/lab_pin.sym} 400 -240 1 0 {name=p26 sig_type=std_logic lab=d2}
C {devices/lab_pin.sym} 610 -230 1 0 {name=p27 sig_type=std_logic lab=d1}
C {devices/lab_pin.sym} 810 -230 0 0 {name=p31 sig_type=std_logic lab=d0}
C {inverter_array/inverter_array.sym} 270 -350 0 0 {name=x10}
C {devices/vdd.sym} 470 -390 0 0 {name=l13 lab=VDD}
C {devices/gnd.sym} 470 -360 0 0 {name=l31 lab=GND}
C {devices/vdd.sym} 750 -300 0 0 {name=l32 lab=VDD}
C {devices/lab_pin.sym} 1010 -230 1 0 {name=p33 sig_type=std_logic lab=d2_n}
C {inverter_array/inverter_array.sym} 880 -340 0 0 {name=x12}
C {devices/vdd.sym} 1080 -380 0 0 {name=l39 lab=VDD}
C {devices/gnd.sym} 1080 -350 0 0 {name=l40 lab=GND}
C {devices/gnd.sym} 1320 -280 3 0 {name=l43 lab=GND}
C {devices/lab_pin.sym} 1220 -220 1 0 {name=p36 sig_type=std_logic lab=d1_n}
C {devices/lab_pin.sym} 1420 -220 0 0 {name=p38 sig_type=std_logic lab=d0_n}
C {c_array/c_array.sym} 420 -730 0 0 {name=x13 @value=1
+ MF_F=83}
C {c_array/c_array.sym} 1030 -700 0 0 {name=x14 @value=1
+ MF_F=83}
C {devices/lab_pin.sym} 650 -480 0 0 {name=p46 sig_type=std_logic lab=d2_n}
C {devices/lab_pin.sym} 670 -500 0 0 {name=p47 sig_type=std_logic lab=d1_n}
C {devices/lab_pin.sym} 690 -520 0 0 {name=p48 sig_type=std_logic lab=d0_n}
C {devices/vsource.sym} 100 -60 0 0 {name=v3 value="pulse \{v_pp\} 0 2m 1n 1n 3m 5m"}
C {devices/vsource.sym} 310 -50 0 0 {name=v5 value="pulse 0 \{v_pp\} 2m 1n 1n 1m 5m"}
C {devices/vsource.sym} 510 -40 0 0 {name=v6 value="pulse 0 \{v_pp\} 3m 1n 1n 1m 5m"}
C {devices/gnd.sym} 100 -10 0 0 {name=l18 lab=GND}
C {devices/gnd.sym} 310 -10 0 0 {name=l19 lab=GND}
C {devices/gnd.sym} 510 0 0 0 {name=l20 lab=GND}
C {devices/lab_pin.sym} 100 -140 1 0 {name=p6 sig_type=std_logic lab=d2}
C {devices/lab_pin.sym} 310 -140 1 0 {name=p7 sig_type=std_logic lab=d1}
C {devices/lab_pin.sym} 510 -140 1 0 {name=p4 sig_type=std_logic lab=d0}
