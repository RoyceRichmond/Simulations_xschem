v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 910 -700 1710 -300 {flags=graph
y1=-1.03221
y2=2.34928
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-0.000177892
x2=0.00112987
divx=5
subdivx=1
node="din
vin_a
vin_b
vout

vout2"
color="4 5 6 12 10"
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=4}
N 200 -320 200 -280 {
lab=n_din}
N 200 -220 200 -180 {
lab=gnd}
N 200 -250 230 -250 {
lab=gnd}
N 230 -250 230 -180 {
lab=gnd}
N 200 -180 230 -180 {
lab=gnd}
N 160 -350 160 -250 {
lab=din}
N 200 -350 230 -350 {
lab=vdd}
N 230 -400 230 -350 {
lab=vdd}
N 200 -400 200 -380 {
lab=vdd}
N 200 -400 230 -400 {
lab=vdd}
N 430 -320 430 -280 {
lab=#net1}
N 430 -220 430 -180 {
lab=gnd}
N 430 -250 460 -250 {
lab=gnd}
N 460 -250 460 -180 {
lab=gnd}
N 430 -180 460 -180 {
lab=gnd}
N 390 -350 390 -250 {
lab=n_din}
N 430 -350 460 -350 {
lab=vdd}
N 460 -400 460 -350 {
lab=vdd}
N 430 -400 430 -380 {
lab=vdd}
N 430 -400 460 -400 {
lab=vdd}
N 280 -600 280 -460 {
lab=vin_a}
N 340 -600 340 -460 {
lab=vout}
N 310 -600 310 -590 {
lab=gnd}
N 310 -480 310 -460 {
lab=vdd}
N 280 -120 280 20 {
lab=vin_b}
N 340 -120 340 20 {
lab=vout}
N 310 -120 310 -110 {
lab=gnd}
N 310 0 310 20 {
lab=vdd}
N 200 -300 390 -300 {
lab=n_din}
N 310 -420 310 -300 {
lab=n_din}
N 310 -300 310 -160 {
lab=n_din}
N 310 60 560 60 {
lab=#net1}
N 560 -640 560 60 {
lab=#net1}
N 310 -640 560 -640 {
lab=#net1}
N 100 -530 280 -530 {
lab=vin_a}
N 100 -50 280 -50 {
lab=vin_b}
N 340 -530 610 -530 {
lab=vout}
N 610 -530 610 -230 {
lab=vout}
N 340 -50 610 -50 {
lab=vout}
N 610 -230 610 -50 {
lab=vout}
N 430 -300 560 -300 {
lab=#net1}
N 100 -300 160 -300 {
lab=din}
N 610 -300 630 -300 {
lab=vout}
N -80 -260 -80 -240 {
lab=vdd}
N -80 -180 -80 -150 {
lab=gnd}
N 20 -270 20 -240 {
lab=din}
N 20 -270 110 -270 {
lab=din}
N 110 -300 110 -270 {
lab=din}
N 20 -180 20 -150 {
lab=gnd}
N -150 -180 -80 -180 {
lab=gnd}
N -220 -180 -150 -180 {
lab=gnd}
N -150 -610 -150 -240 {
lab=vin_a}
N -150 -610 210 -610 {
lab=vin_a}
N 210 -610 210 -530 {
lab=vin_a}
N -270 -240 -220 -240 {
lab=vin_b}
N -270 -240 -270 0 {
lab=vin_b}
N -270 0 170 0 {
lab=vin_b}
N 170 -50 170 0 {
lab=vin_b}
N 110 -330 110 -300 {
lab=din}
N -90 -330 -80 -330 {
lab=#net2}
N -90 -410 -90 -330 {
lab=#net2}
N -90 -410 -40 -410 {
lab=#net2}
N -40 -40 -40 -0 {
lab=vin_b}
N -10 -350 -10 -300 {
lab=gnd}
N -10 -350 20 -350 {
lab=gnd}
N 20 -490 20 -470 {
lab=vdd}
N 80 -410 120 -410 {
lab=vout2}
N -220 -430 -40 -430 {
lab=vin_b}
N -220 -430 -220 -240 {
lab=vin_b}
N -150 -390 -40 -390 {
lab=vin_a}
N 540 -120 610 -120 {
lab=vout}
N 460 -120 480 -120 {
lab=gnd}
N 460 -180 460 -120 {
lab=gnd}
N -20 -330 110 -330 {
lab=din}
C {sky130_fd_pr/pfet_01v8.sym} 180 -350 0 0 {name=M3
L=1
W=1
nf=1
mult=1
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 180 -250 0 0 {name=M4
L=1
W=1
nf=1 
mult=1
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 200 -400 0 0 {name=p1 sig_type=std_logic lab=vdd
}
C {devices/lab_pin.sym} 200 -180 0 0 {name=p4 sig_type=std_logic lab=gnd}
C {sky130_fd_pr/pfet_01v8.sym} 410 -350 0 0 {name=M1
L=1
W=1
nf=1
mult=1
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 410 -250 0 0 {name=M2
L=1
W=1
nf=1 
mult=1
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 430 -400 0 0 {name=p2 sig_type=std_logic lab=vdd
}
C {devices/lab_pin.sym} 430 -180 0 0 {name=p3 sig_type=std_logic lab=gnd}
C {sky130_fd_pr/pfet_01v8.sym} 310 -440 3 0 {name=M5
L=1
W=10
nf=1
mult=1
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 310 -620 3 1 {name=M6
L=1
W=1
nf=1 
mult=1
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 310 -480 3 1 {name=p5 sig_type=std_logic lab=vdd
}
C {devices/lab_pin.sym} 310 -590 1 1 {name=p8 sig_type=std_logic lab=gnd}
C {sky130_fd_pr/pfet_01v8.sym} 310 40 3 0 {name=M7
L=1
W=10
nf=1
mult=1
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 310 -140 3 1 {name=M8
L=1
W=1
nf=1 
mult=1
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 310 0 3 1 {name=p6 sig_type=std_logic lab=vdd
}
C {devices/lab_pin.sym} 310 -110 1 1 {name=p7 sig_type=std_logic lab=gnd}
C {devices/lab_pin.sym} 140 -530 1 0 {name=p9 sig_type=std_logic lab=vin_a}
C {devices/iopin.sym} 630 -300 0 0 {name=p10 lab=vout}
C {devices/iopin.sym} 100 -530 2 0 {name=p11 lab=vin_a
}
C {devices/iopin.sym} 100 -50 2 0 {name=p12 lab=vin_b}
C {devices/iopin.sym} 100 -300 2 0 {name=p13 lab=din}
C {devices/lab_pin.sym} 130 -300 1 0 {name=p14 sig_type=std_logic lab=din}
C {devices/lab_pin.sym} 130 -50 1 0 {name=p15 sig_type=std_logic lab=vin_b}
C {devices/lab_pin.sym} 350 -300 1 0 {name=p16 sig_type=std_logic lab=n_din}
C {devices/lab_pin.sym} 610 -340 2 0 {name=p17 sig_type=std_logic lab=vout}
C {devices/code.sym} 1160 -250 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/code.sym} 1170 -100 0 0 {name=ngspice
only_toplevel=true
place=end
value="* .option SCALE=1e-6 
.option method=gear seed=12
.control
save all
tran 0.1m 1m
write mos_spdt.raw
plot din n_din vout
.endc
"}
C {devices/launcher.sym} 1345 -225 0 0 {name=h2 
descr="Select arrow and 
Ctrl-Left-Click to load/unload waveforms" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw tran
"
}
C {devices/vsource.sym} 20 -210 0 0 {name=V3 value="pulse 0 1.8 500u 10n 10n 500u 1m"}
C {devices/lab_pin.sym} -80 -260 1 0 {name=p19 sig_type=std_logic lab=vdd
}
C {devices/lab_pin.sym} -80 -150 3 0 {name=p20 sig_type=std_logic lab=gnd}
C {devices/vsource.sym} -80 -210 0 0 {name=V4 value=1.8}
C {devices/lab_pin.sym} 20 -150 3 0 {name=p18 sig_type=std_logic lab=gnd}
C {devices/vsource.sym} -150 -210 0 0 {name=V1 value=1.2}
C {devices/vsource.sym} -220 -210 0 0 {name=V2 value=1.8}
C {devices/lab_pin.sym} 20 -490 0 0 {name=p21 sig_type=std_logic lab=vdd
}
C {devices/lab_pin.sym} -10 -300 3 0 {name=p22 sig_type=std_logic lab=gnd}
C {devices/lab_pin.sym} 90 -410 2 0 {name=p23 sig_type=std_logic lab=vout2}
C {devices/res.sym} 510 -120 1 0 {name=R1
value=100e6
footprint=1206
device=resistor
m=1}
C {Symbols/mos_sym_spdt.sym} 110 -410 0 0 {name=x1}
C {devices/res.sym} -50 -330 3 0 {name=R2
value=100
footprint=1206
device=resistor
m=1}
