v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 20 -730 820 -330 {flags=graph
y1=-1.03221
y2=2.34928
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-0.0008839
x2=0.00182039
divx=5
subdivx=1
node="din
n_din"
color="4 5"
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=0}
N 110 -170 110 -130 {
lab=n_din}
N 20 -30 110 -30 {
lab=gnd}
N 110 -70 110 -30 {
lab=gnd}
N 110 -100 140 -100 {
lab=gnd}
N 140 -100 140 -30 {
lab=gnd}
N 110 -30 140 -30 {
lab=gnd}
N 70 -200 70 -100 {
lab=din}
N 50 -150 70 -150 {
lab=din}
N 110 -150 170 -150 {
lab=n_din}
N 110 -200 140 -200 {
lab=vdd}
N 140 -250 140 -200 {
lab=vdd}
N 20 -250 140 -250 {
lab=vdd}
N 110 -250 110 -230 {
lab=vdd}
N -150 -200 -150 -180 {
lab=vdd}
N -150 -120 -150 -90 {
lab=gnd}
N -150 -100 -70 -100 {
lab=gnd}
N -70 -190 -70 -160 {
lab=din}
N -70 -190 70 -190 {
lab=din}
C {sky130_fd_pr/pfet_01v8.sym} 90 -200 0 0 {name=M3
L=1
W=1
nf=1
mult=1
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 90 -100 0 0 {name=M4
L=1
W=1
nf=1 
mult=1
model=nfet_01v8
spiceprefix=X
}
C {devices/code.sym} 270 -280 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/code.sym} 280 -130 0 0 {name=ngspice
only_toplevel=true
place=end
value="* .option SCALE=1e-6 
.option method=gear seed=12
.control
save all
tran 0.1m 1m
write sim_inverter.raw
plot din n_din
.endc
"}
C {devices/lab_pin.sym} 40 -250 1 0 {name=p1 sig_type=std_logic lab=vdd
}
C {devices/lab_pin.sym} 70 -30 3 0 {name=p4 sig_type=std_logic lab=gnd}
C {devices/lab_pin.sym} 160 -150 1 0 {name=p7 sig_type=std_logic lab=n_din}
C {devices/lab_pin.sym} 70 -180 0 0 {name=p8 sig_type=std_logic lab=din}
C {devices/launcher.sym} 455 -255 0 0 {name=h2 
descr="Select arrow and 
Ctrl-Left-Click to load/unload waveforms" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw tran
"
}
C {devices/vsource.sym} -70 -130 0 0 {name=V1 value="pulse 0 1.8 500u 10n 10n 500u 1m"}
C {devices/lab_pin.sym} -150 -200 1 0 {name=p9 sig_type=std_logic lab=vdd
}
C {devices/lab_pin.sym} -150 -90 3 0 {name=p10 sig_type=std_logic lab=gnd}
C {devices/vsource.sym} -150 -150 0 0 {name=V2 value=1.8}
