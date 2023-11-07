v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 450 -1440 1250 -1040 {flags=graph
y1=-0.606223
y2=3.39776
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
N 150 -600 150 -570 {
lab=GND}
N 150 -680 150 -660 {
lab=VDD}
N 50 -140 50 -120 {
lab=sample}
N 50 -60 50 -30 {
lab=GND}
N 300 -660 300 -640 {
lab=vinp}
N 220 -660 220 -640 {
lab=vinn}
N 490 -900 490 -880 {
lab=#net1}
N 490 -900 540 -900 {
lab=#net1}
N 680 -900 940 -900 {
lab=top_caps}
N 1070 -830 1120 -830 {
lab=vinn}
N 1240 -830 1330 -830 {
lab=bottom_caps}
N 830 -320 870 -320 {
lab=VDD}
N 870 -330 870 -320 {
lab=VDD}
N 810 -320 810 -300 {
lab=d0}
N 810 -300 930 -300 {
lab=d0}
N 930 -300 930 -260 {
lab=d0}
N 790 -320 790 -260 {
lab=d1}
N 730 -260 790 -260 {
lab=d1}
N 770 -320 770 -270 {
lab=d2}
N 520 -270 770 -270 {
lab=d2}
N 520 -270 520 -260 {
lab=d2}
N 1420 -310 1420 -290 {
lab=d0_n}
N 1420 -290 1540 -290 {
lab=d0_n}
N 1540 -290 1540 -250 {
lab=d0_n}
N 1400 -310 1400 -250 {
lab=d1_n}
N 1340 -250 1400 -250 {
lab=d1_n}
N 1380 -310 1380 -260 {
lab=d2_n}
N 1130 -260 1380 -260 {
lab=d2_n}
N 1130 -260 1130 -250 {
lab=d2_n}
N 830 -610 830 -480 {
lab=#net2}
N 790 -610 810 -610 {
lab=d0_n}
N 810 -610 810 -480 {
lab=d0_n}
N 790 -600 790 -480 {
lab=d1_n}
N 750 -600 790 -600 {
lab=d1_n}
N 750 -610 750 -600 {
lab=d1_n}
N 770 -590 770 -480 {
lab=d2_n}
N 710 -590 770 -590 {
lab=d2_n}
N 710 -610 710 -590 {
lab=d2_n}
N 1440 -580 1440 -470 {
lab=#net3}
N 1420 -580 1420 -470 {
lab=#net4}
N 1400 -580 1420 -580 {
lab=#net4}
N 1400 -560 1400 -470 {
lab=#net5}
N 1360 -560 1400 -560 {
lab=#net5}
N 1360 -580 1360 -560 {
lab=#net5}
N 1380 -550 1380 -470 {
lab=#net6}
N 1320 -550 1380 -550 {
lab=#net6}
N 1320 -580 1320 -550 {
lab=#net6}
N 940 -900 940 -730 {
lab=top_caps}
N 870 -730 940 -730 {
lab=top_caps}
N 1330 -830 1560 -830 {
lab=bottom_caps}
N 1560 -830 1560 -700 {
lab=bottom_caps}
N 1480 -700 1560 -700 {
lab=bottom_caps}
N 630 -170 630 -100 {
lab=d0}
N 430 -170 430 -110 {
lab=d1}
N 220 -170 220 -120 {
lab=d2}
N 630 -40 630 -30 {
lab=GND}
N 430 -50 430 -40 {
lab=GND}
N 220 -60 220 -40 {
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
.param vinp=1.8
.param vinn=v_pp-vinp
save all
tran 100n 5m
write remake_b.raw
set color0=white
set color1=black
set xbrushwidth=5
plot d0_n d1_n+4 d2_n+8 d0+12 d1+16 d2+20 sample+24
plot top_caps bottom_caps
.endc
"}
C {devices/vsource.sym} 220 -90 0 0 {name=v3 value="pulse \{v_pp\} 0 5m 1n 1n 3m 5m"}
C {devices/vsource.sym} 430 -80 0 0 {name=v5 value="pulse 0 \{v_pp\} 2m 1n 1n 5m 5m"}
C {devices/vsource.sym} 630 -70 0 0 {name=v6 value="pulse 0 \{v_pp\} 3m 1n 1n 5m 5m"}
C {devices/launcher.sym} 1370 -1130 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/remake_b.raw tran"
}
C {devices/vsource.sym} 50 -90 0 0 {name=v7 value="pulse \{v_pp\} 0 1m 1n 1n 5m 5m"}
C {devices/vsource.sym} 150 -630 0 0 {name=v9 value="\{v_pp\}"}
C {devices/vdd.sym} 150 -680 0 0 {name=l32 lab=VDD}
C {devices/gnd.sym} 150 -570 0 0 {name=l36 lab=GND}
C {devices/gnd.sym} 50 -30 0 0 {name=l37 lab=GND}
C {devices/lab_pin.sym} 50 -140 1 0 {name=p15 sig_type=std_logic lab=sample}
C {devices/vsource.sym} 300 -610 0 0 {name=v10 value="\{vinp\}"}
C {devices/gnd.sym} 300 -580 0 0 {name=l38 lab=GND}
C {devices/lab_pin.sym} 300 -660 1 0 {name=p16 sig_type=std_logic lab=vinp}
C {devices/vsource.sym} 220 -610 0 0 {name=v11 value="\{vinn\}"}
C {devices/gnd.sym} 220 -580 0 0 {name=l39 lab=GND}
C {devices/lab_pin.sym} 220 -660 1 0 {name=p18 sig_type=std_logic lab=vinn}
C {devices/lab_pin.sym} 610 -840 2 0 {name=p19 sig_type=std_logic lab=sample}
C {devices/vsource.sym} 490 -850 0 0 {name=v12 value="\{vinp\}"}
C {devices/gnd.sym} 490 -820 0 0 {name=l40 lab=GND}
C {devices/lab_pin.sym} 730 -900 1 0 {name=p20 sig_type=std_logic lab=top_caps}
C {devices/vdd.sym} 540 -930 0 0 {name=l41 lab=VDD}
C {devices/gnd.sym} 540 -870 0 0 {name=l42 lab=GND}
C {devices/lab_pin.sym} 1330 -830 1 0 {name=p21 sig_type=std_logic lab=bottom_caps}
C {devices/lab_pin.sym} 1180 -770 2 0 {name=p22 sig_type=std_logic lab=sample}
C {devices/gnd.sym} 1110 -800 0 0 {name=l43 lab=GND}
C {devices/vdd.sym} 1110 -860 0 0 {name=l44 lab=VDD}
C {devices/lab_pin.sym} 1080 -830 1 0 {name=p25 sig_type=std_logic lab=vinn}
C {devices/lab_pin.sym} 520 -270 1 0 {name=p26 sig_type=std_logic lab=d2}
C {devices/lab_pin.sym} 730 -260 1 0 {name=p27 sig_type=std_logic lab=d1}
C {devices/lab_pin.sym} 930 -260 0 0 {name=p31 sig_type=std_logic lab=d0}
C {devices/vdd.sym} 590 -420 0 0 {name=l45 lab=VDD}
C {devices/gnd.sym} 590 -390 0 0 {name=l46 lab=GND}
C {devices/vdd.sym} 870 -330 0 0 {name=l47 lab=VDD}
C {devices/lab_pin.sym} 1130 -260 1 0 {name=p33 sig_type=std_logic lab=d2_n}
C {devices/vdd.sym} 1200 -410 0 0 {name=l48 lab=VDD}
C {devices/gnd.sym} 1200 -380 0 0 {name=l49 lab=GND}
C {devices/gnd.sym} 1440 -310 3 0 {name=l50 lab=GND}
C {devices/lab_pin.sym} 1340 -250 1 0 {name=p36 sig_type=std_logic lab=d1_n}
C {devices/lab_pin.sym} 1540 -250 0 0 {name=p38 sig_type=std_logic lab=d0_n}
C {devices/lab_pin.sym} 770 -510 0 0 {name=p46 sig_type=std_logic lab=d2_n}
C {devices/lab_pin.sym} 790 -530 0 0 {name=p47 sig_type=std_logic lab=d1_n}
C {devices/lab_pin.sym} 810 -550 0 0 {name=p48 sig_type=std_logic lab=d0_n}
C {devices/gnd.sym} 220 -40 0 0 {name=l51 lab=GND}
C {devices/gnd.sym} 430 -40 0 0 {name=l52 lab=GND}
C {devices/gnd.sym} 630 -30 0 0 {name=l53 lab=GND}
C {devices/lab_pin.sym} 220 -170 1 0 {name=p23 sig_type=std_logic lab=d2}
C {devices/lab_pin.sym} 430 -170 1 0 {name=p24 sig_type=std_logic lab=d1}
C {devices/lab_pin.sym} 630 -170 1 0 {name=p28 sig_type=std_logic lab=d0}
C {Schematics/ADC/c_array/c_array.sym} 1150 -730 0 0 {name=x1 @value=1}
C {Schematics/ADC/sw/sw.sym} 390 -910 0 0 {name=x3}
C {Schematics/ADC/inverter_array/inverter_array.sym} 1000 -370 0 0 {name=x4}
C {Schematics/ADC/sw/sw.sym} 960 -840 0 0 {name=x2}
C {Schematics/ADC/c_array/c_array.sym} 540 -760 0 0 {name=x5 @value=1}
C {Schematics/ADC/inverter_array/inverter_array.sym} 390 -380 0 0 {name=x6}
