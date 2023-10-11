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
N 190 -590 190 -560 {
lab=GND}
N 190 -670 190 -650 {
lab=VDD}
N 90 -130 90 -110 {
lab=sample}
N 90 -50 90 -20 {
lab=GND}
N 340 -650 340 -630 {
lab=vinp}
N 260 -650 260 -630 {
lab=vinn}
N 530 -890 530 -870 {
lab=#net1}
N 530 -890 580 -890 {
lab=#net1}
N 720 -890 980 -890 {
lab=top_caps}
N 1110 -820 1160 -820 {
lab=vinn}
N 1280 -820 1370 -820 {
lab=bottom_caps}
N 870 -310 910 -310 {
lab=VDD}
N 910 -320 910 -310 {
lab=VDD}
N 850 -310 850 -290 {
lab=d0}
N 850 -290 970 -290 {
lab=d0}
N 970 -290 970 -250 {
lab=d0}
N 830 -310 830 -250 {
lab=d1}
N 770 -250 830 -250 {
lab=d1}
N 810 -310 810 -260 {
lab=d2}
N 560 -260 810 -260 {
lab=d2}
N 560 -260 560 -250 {
lab=d2}
N 1460 -300 1460 -280 {
lab=d0_n}
N 1460 -280 1580 -280 {
lab=d0_n}
N 1580 -280 1580 -240 {
lab=d0_n}
N 1440 -300 1440 -240 {
lab=d1_n}
N 1380 -240 1440 -240 {
lab=d1_n}
N 1420 -300 1420 -250 {
lab=d2_n}
N 1170 -250 1420 -250 {
lab=d2_n}
N 1170 -250 1170 -240 {
lab=d2_n}
N 870 -600 870 -470 {
lab=#net2}
N 830 -600 850 -600 {
lab=d0_n}
N 850 -600 850 -470 {
lab=d0_n}
N 830 -590 830 -470 {
lab=d1_n}
N 790 -590 830 -590 {
lab=d1_n}
N 790 -600 790 -590 {
lab=d1_n}
N 810 -580 810 -470 {
lab=d2_n}
N 750 -580 810 -580 {
lab=d2_n}
N 750 -600 750 -580 {
lab=d2_n}
N 1480 -570 1480 -460 {
lab=#net3}
N 1460 -570 1460 -460 {
lab=#net4}
N 1440 -570 1460 -570 {
lab=#net4}
N 1440 -550 1440 -460 {
lab=#net5}
N 1400 -550 1440 -550 {
lab=#net5}
N 1400 -570 1400 -550 {
lab=#net5}
N 1420 -540 1420 -460 {
lab=#net6}
N 1360 -540 1420 -540 {
lab=#net6}
N 1360 -570 1360 -540 {
lab=#net6}
N 980 -890 980 -720 {
lab=top_caps}
N 910 -720 980 -720 {
lab=top_caps}
N 1370 -820 1600 -820 {
lab=bottom_caps}
N 1600 -820 1600 -690 {
lab=bottom_caps}
N 1520 -690 1600 -690 {
lab=bottom_caps}
N 670 -160 670 -90 {
lab=d0}
N 470 -160 470 -100 {
lab=d1}
N 260 -160 260 -110 {
lab=d2}
N 670 -30 670 -20 {
lab=GND}
N 470 -40 470 -30 {
lab=GND}
N 260 -50 260 -30 {
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
.param vinp=1.46
.param vinn=v_pp-vinp
save all
tran 100n 5m
write remake_c.raw
set color0=white
set color1=black
set xbrushwidth=5
plot d0_n d1_n+4 d2_n+8 d0+12 d1+16 d2+20 sample+24
plot top_caps bottom_caps
.endc
"}
C {devices/vsource.sym} 260 -80 0 0 {name=v3 value="pulse \{v_pp\} 0 5m 1n 1n 3m 5m"}
C {devices/vsource.sym} 470 -70 0 0 {name=v5 value="pulse 0 \{v_pp\} 2m 1n 1n 5m 5m"}
C {devices/vsource.sym} 670 -60 0 0 {name=v6 value="pulse 0 \{v_pp\} 3m 1n 1n 1m 5m"}
C {devices/launcher.sym} 1370 -1130 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/remake_c.raw tran"
}
C {devices/vsource.sym} 90 -80 0 0 {name=v7 value="pulse \{v_pp\} 0 1m 1n 1n 5m 5m"}
C {devices/vsource.sym} 190 -620 0 0 {name=v9 value="\{v_pp\}"}
C {devices/vdd.sym} 190 -670 0 0 {name=l32 lab=VDD}
C {devices/gnd.sym} 190 -560 0 0 {name=l36 lab=GND}
C {devices/gnd.sym} 90 -20 0 0 {name=l37 lab=GND}
C {devices/lab_pin.sym} 90 -130 1 0 {name=p15 sig_type=std_logic lab=sample}
C {devices/vsource.sym} 340 -600 0 0 {name=v10 value="\{vinp\}"}
C {devices/gnd.sym} 340 -570 0 0 {name=l38 lab=GND}
C {devices/lab_pin.sym} 340 -650 1 0 {name=p16 sig_type=std_logic lab=vinp}
C {devices/vsource.sym} 260 -600 0 0 {name=v11 value="\{vinn\}"}
C {devices/gnd.sym} 260 -570 0 0 {name=l39 lab=GND}
C {devices/lab_pin.sym} 260 -650 1 0 {name=p18 sig_type=std_logic lab=vinn}
C {devices/lab_pin.sym} 650 -830 2 0 {name=p19 sig_type=std_logic lab=sample}
C {devices/vsource.sym} 530 -840 0 0 {name=v12 value="\{vinp\}"}
C {devices/gnd.sym} 530 -810 0 0 {name=l40 lab=GND}
C {devices/lab_pin.sym} 770 -890 1 0 {name=p20 sig_type=std_logic lab=top_caps}
C {devices/vdd.sym} 580 -920 0 0 {name=l41 lab=VDD}
C {devices/gnd.sym} 580 -860 0 0 {name=l42 lab=GND}
C {devices/lab_pin.sym} 1370 -820 1 0 {name=p21 sig_type=std_logic lab=bottom_caps}
C {devices/lab_pin.sym} 1220 -760 2 0 {name=p22 sig_type=std_logic lab=sample}
C {devices/gnd.sym} 1150 -790 0 0 {name=l43 lab=GND}
C {devices/vdd.sym} 1150 -850 0 0 {name=l44 lab=VDD}
C {devices/lab_pin.sym} 1120 -820 1 0 {name=p25 sig_type=std_logic lab=vinn}
C {devices/lab_pin.sym} 560 -260 1 0 {name=p26 sig_type=std_logic lab=d2}
C {devices/lab_pin.sym} 770 -250 1 0 {name=p27 sig_type=std_logic lab=d1}
C {devices/lab_pin.sym} 970 -250 0 0 {name=p31 sig_type=std_logic lab=d0}
C {devices/vdd.sym} 630 -410 0 0 {name=l45 lab=VDD}
C {devices/gnd.sym} 630 -380 0 0 {name=l46 lab=GND}
C {devices/vdd.sym} 910 -320 0 0 {name=l47 lab=VDD}
C {devices/lab_pin.sym} 1170 -250 1 0 {name=p33 sig_type=std_logic lab=d2_n}
C {devices/vdd.sym} 1240 -400 0 0 {name=l48 lab=VDD}
C {devices/gnd.sym} 1240 -370 0 0 {name=l49 lab=GND}
C {devices/gnd.sym} 1480 -300 3 0 {name=l50 lab=GND}
C {devices/lab_pin.sym} 1380 -240 1 0 {name=p36 sig_type=std_logic lab=d1_n}
C {devices/lab_pin.sym} 1580 -240 0 0 {name=p38 sig_type=std_logic lab=d0_n}
C {devices/lab_pin.sym} 810 -500 0 0 {name=p46 sig_type=std_logic lab=d2_n}
C {devices/lab_pin.sym} 830 -520 0 0 {name=p47 sig_type=std_logic lab=d1_n}
C {devices/lab_pin.sym} 850 -540 0 0 {name=p48 sig_type=std_logic lab=d0_n}
C {devices/gnd.sym} 260 -30 0 0 {name=l51 lab=GND}
C {devices/gnd.sym} 470 -30 0 0 {name=l52 lab=GND}
C {devices/gnd.sym} 670 -20 0 0 {name=l53 lab=GND}
C {devices/lab_pin.sym} 260 -160 1 0 {name=p23 sig_type=std_logic lab=d2}
C {devices/lab_pin.sym} 470 -160 1 0 {name=p24 sig_type=std_logic lab=d1}
C {devices/lab_pin.sym} 670 -160 1 0 {name=p28 sig_type=std_logic lab=d0}
C {Schematics/ADC/c_array/c_array.sym} 1190 -720 0 0 {name=x1 @value=1}
C {Schematics/ADC/sw/sw.sym} 430 -900 0 0 {name=x3}
C {Schematics/ADC/inverter_array/inverter_array.sym} 1040 -360 0 0 {name=x4}
C {Schematics/ADC/sw/sw.sym} 1000 -830 0 0 {name=x2}
C {Schematics/ADC/c_array/c_array.sym} 580 -750 0 0 {name=x5 @value=1}
C {Schematics/ADC/inverter_array/inverter_array.sym} 430 -370 0 0 {name=x6}
