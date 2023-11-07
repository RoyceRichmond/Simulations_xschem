v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 450 -1440 1250 -1040 {flags=graph
y1=-0.277681
y2=1.36235
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0.000490936
x2=0.00510169
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
x1=0.000490936
x2=0.00510169
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
hilight_wave=2}
B 2 1250 -1850 2050 -1450 {flags=graph
y1=-0.291146
y2=3.37804
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0.000490936
x2=0.00510169
divx=5
subdivx=1
node="d2_n
d1_n
d0_n"
color="4 5 10"
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=2}
N 190 -610 190 -580 {
lab=GND}
N 190 -690 190 -670 {
lab=VDD}
N 90 -150 90 -130 {
lab=sample}
N 90 -70 90 -40 {
lab=GND}
N 340 -670 340 -650 {
lab=vinp}
N 260 -670 260 -650 {
lab=vinn}
N 530 -910 530 -890 {
lab=#net1}
N 530 -910 580 -910 {
lab=#net1}
N 720 -910 980 -910 {
lab=top_caps}
N 1110 -840 1160 -840 {
lab=vinn}
N 1280 -840 1370 -840 {
lab=bottom_caps}
N 870 -330 910 -330 {
lab=VDD}
N 910 -340 910 -330 {
lab=VDD}
N 850 -330 850 -310 {
lab=d0}
N 850 -310 970 -310 {
lab=d0}
N 970 -310 970 -270 {
lab=d0}
N 830 -330 830 -270 {
lab=d1}
N 770 -270 830 -270 {
lab=d1}
N 810 -330 810 -280 {
lab=d2}
N 560 -280 810 -280 {
lab=d2}
N 560 -280 560 -270 {
lab=d2}
N 1460 -320 1460 -300 {
lab=d0_n}
N 1460 -300 1580 -300 {
lab=d0_n}
N 1580 -300 1580 -260 {
lab=d0_n}
N 1440 -320 1440 -260 {
lab=d1_n}
N 1380 -260 1440 -260 {
lab=d1_n}
N 1420 -320 1420 -270 {
lab=d2_n}
N 1170 -270 1420 -270 {
lab=d2_n}
N 1170 -270 1170 -260 {
lab=d2_n}
N 870 -620 870 -490 {
lab=#net2}
N 830 -620 850 -620 {
lab=d0_n}
N 850 -620 850 -490 {
lab=d0_n}
N 830 -610 830 -490 {
lab=d1_n}
N 790 -610 830 -610 {
lab=d1_n}
N 790 -620 790 -610 {
lab=d1_n}
N 810 -600 810 -490 {
lab=d2_n}
N 750 -600 810 -600 {
lab=d2_n}
N 750 -620 750 -600 {
lab=d2_n}
N 1480 -590 1480 -480 {
lab=#net3}
N 1460 -590 1460 -480 {
lab=#net4}
N 1440 -590 1460 -590 {
lab=#net4}
N 1440 -570 1440 -480 {
lab=#net5}
N 1400 -570 1440 -570 {
lab=#net5}
N 1400 -590 1400 -570 {
lab=#net5}
N 1420 -560 1420 -480 {
lab=#net6}
N 1360 -560 1420 -560 {
lab=#net6}
N 1360 -590 1360 -560 {
lab=#net6}
N 980 -910 980 -740 {
lab=top_caps}
N 910 -740 980 -740 {
lab=top_caps}
N 1370 -840 1600 -840 {
lab=bottom_caps}
N 1600 -840 1600 -710 {
lab=bottom_caps}
N 1520 -710 1600 -710 {
lab=bottom_caps}
N 670 -180 670 -110 {
lab=d0}
N 470 -180 470 -120 {
lab=d1}
N 260 -180 260 -130 {
lab=d2}
N 670 -50 670 -40 {
lab=GND}
N 470 -60 470 -50 {
lab=GND}
N 260 -70 260 -50 {
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
only_toplevel=true
place=end
value="* .option SCALE=1e-6
.option method=gear seed=12
.control
.param mult=83
.param v_pp=1.8
.param vinp=0
.param vinn=v_pp-vinp
save all
tran 100n 5m
write remake_a.raw
set color0=white
set color1=black
set xbrushwidth=5
plot d0_n d1_n+4 d2_n+8 d0+12 d1+16 d2+20 sample+24
plot top_caps bottom_caps
.endc
"}
C {devices/vsource.sym} 260 -100 0 0 {name=v3 value="pulse \{v_pp\} 0 2m 1n 1n 3m 5m"}
C {devices/vsource.sym} 470 -90 0 0 {name=v5 value="pulse 0 \{v_pp\} 2m 1n 1n 1m 5m"}
C {devices/vsource.sym} 670 -80 0 0 {name=v6 value="pulse 0 \{v_pp\} 3m 1n 1n 1m 5m"}
C {devices/launcher.sym} 1360 -1040 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/remake_a.raw tran"
}
C {devices/vsource.sym} 90 -100 0 0 {name=v1 value="pulse \{v_pp\} 0 1m 1n 1n 5m 5m"}
C {devices/vsource.sym} 190 -640 0 0 {name=v4 value="\{v_pp\}"}
C {devices/vdd.sym} 190 -690 0 0 {name=l3 lab=VDD}
C {devices/gnd.sym} 190 -580 0 0 {name=l4 lab=GND}
C {devices/gnd.sym} 90 -40 0 0 {name=l5 lab=GND}
C {devices/lab_pin.sym} 90 -150 1 0 {name=p1 sig_type=std_logic lab=sample}
C {devices/vsource.sym} 340 -620 0 0 {name=v2 value="\{vinp\}"}
C {devices/gnd.sym} 340 -590 0 0 {name=l8 lab=GND}
C {devices/lab_pin.sym} 340 -670 1 0 {name=p3 sig_type=std_logic lab=vinp}
C {devices/vsource.sym} 260 -620 0 0 {name=v8 value="\{vinn\}"}
C {devices/gnd.sym} 260 -590 0 0 {name=l35 lab=GND}
C {devices/lab_pin.sym} 260 -670 1 0 {name=p17 sig_type=std_logic lab=vinn}
C {devices/lab_pin.sym} 650 -850 2 0 {name=p2 sig_type=std_logic lab=sample}
C {devices/vsource.sym} 530 -860 0 0 {name=v10 value="\{vinp\}"}
C {devices/gnd.sym} 530 -830 0 0 {name=l14 lab=GND}
C {devices/lab_pin.sym} 770 -910 1 0 {name=p16 sig_type=std_logic lab=top_caps}
C {devices/vdd.sym} 580 -940 0 0 {name=l26 lab=VDD}
C {devices/gnd.sym} 580 -880 0 0 {name=l27 lab=GND}
C {devices/lab_pin.sym} 1370 -840 1 0 {name=p15 sig_type=std_logic lab=bottom_caps}
C {devices/lab_pin.sym} 1220 -780 2 0 {name=p21 sig_type=std_logic lab=sample}
C {devices/gnd.sym} 1150 -810 0 0 {name=l1 lab=GND}
C {devices/vdd.sym} 1150 -870 0 0 {name=l2 lab=VDD}
C {devices/lab_pin.sym} 1120 -840 1 0 {name=p25 sig_type=std_logic lab=vinn}
C {devices/lab_pin.sym} 560 -280 1 0 {name=p26 sig_type=std_logic lab=d2}
C {devices/lab_pin.sym} 770 -270 1 0 {name=p27 sig_type=std_logic lab=d1}
C {devices/lab_pin.sym} 970 -270 0 0 {name=p31 sig_type=std_logic lab=d0}
C {devices/vdd.sym} 630 -430 0 0 {name=l13 lab=VDD}
C {devices/gnd.sym} 630 -400 0 0 {name=l31 lab=GND}
C {devices/vdd.sym} 910 -340 0 0 {name=l32 lab=VDD}
C {devices/lab_pin.sym} 1170 -270 1 0 {name=p33 sig_type=std_logic lab=d2_n}
C {devices/vdd.sym} 1240 -420 0 0 {name=l39 lab=VDD}
C {devices/gnd.sym} 1240 -390 0 0 {name=l40 lab=GND}
C {devices/gnd.sym} 1480 -320 3 0 {name=l43 lab=GND}
C {devices/lab_pin.sym} 1380 -260 1 0 {name=p36 sig_type=std_logic lab=d1_n}
C {devices/lab_pin.sym} 1580 -260 0 0 {name=p38 sig_type=std_logic lab=d0_n}
C {devices/lab_pin.sym} 810 -520 0 0 {name=p46 sig_type=std_logic lab=d2_n}
C {devices/lab_pin.sym} 830 -540 0 0 {name=p47 sig_type=std_logic lab=d1_n}
C {devices/lab_pin.sym} 850 -560 0 0 {name=p48 sig_type=std_logic lab=d0_n}
C {devices/gnd.sym} 260 -50 0 0 {name=l18 lab=GND}
C {devices/gnd.sym} 470 -50 0 0 {name=l19 lab=GND}
C {devices/gnd.sym} 670 -40 0 0 {name=l20 lab=GND}
C {devices/lab_pin.sym} 260 -180 1 0 {name=p6 sig_type=std_logic lab=d2}
C {devices/lab_pin.sym} 470 -180 1 0 {name=p7 sig_type=std_logic lab=d1}
C {devices/lab_pin.sym} 670 -180 1 0 {name=p4 sig_type=std_logic lab=d0}
C {Schematics/ADC/c_array/c_array.sym} 1190 -740 0 0 {name=x1 @value=1}
C {Schematics/ADC/sw/sw.sym} 430 -920 0 0 {name=x3}
C {Schematics/ADC/inverter_array/inverter_array.sym} 1040 -380 0 0 {name=x4}
C {Schematics/ADC/sw/sw.sym} 1000 -850 0 0 {name=x2}
C {Schematics/ADC/c_array/c_array.sym} 580 -770 0 0 {name=x5 @value=1}
C {Schematics/ADC/inverter_array/inverter_array.sym} 430 -390 0 0 {name=x6}
