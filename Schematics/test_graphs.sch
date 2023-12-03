v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 -130 -270 670 130 {flags=graph
y1=0
y2=1100
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1e-09
x2=0.001
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="\\"resistance;vp i(@r1[i]) /\\""
color=4
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=0}
B 2 -130 340 670 740 {flags=graph
y1=1e-05
y2=0.002
ypos1=0
ypos2=1
divy=5
subdivy=1
unity=1
x1=1e-09
x2=0.001
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0

color=4
node=i(@r1[i])
hilight_wave=0}
N -130 240 -130 270 {
lab=GND}
N -170 180 -130 180 {
lab=#net1}
N -390 180 -340 180 {
lab=#net2}
N -280 240 -130 240 {
lab=GND}
N -280 180 -230 180 {
lab=vp}
N -390 240 -280 240 {
lab=GND}
C {devices/vsource.sym} -130 210 0 0 {name=V1 value="SIN(1.5 1.5 3k 0.33m 0 0)" savecurrent=false}
C {devices/res.sym} -260 210 0 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} -130 270 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} -250 180 1 0 {name=p1 sig_type=std_logic lab=vp}
C {sky130_fd_pr/corner.sym} 110 180 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/code.sym} 0 180 0 0 {name=Sim_params
only_toplevel=true
place=end
value=".options savecurrents
.tran 100n 1m uic
.save all
.control
	run
	write test_graphs.raw
*plot all.Vout 
.endc
"}
C {devices/launcher.sym} 300 200 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/test_graphs.raw tran"
}
C {devices/vsource.sym} -390 210 0 0 {name=V2 value="SIN(0.5 0.5 8k 0.33m 0 0)" savecurrent=false}
C {devices/res.sym} -310 180 1 0 {name=R2
value=.1
footprint=1206
device=resistor
m=1}
C {devices/res.sym} -200 180 1 0 {name=R3
value=.1
footprint=1206
device=resistor
m=1}
