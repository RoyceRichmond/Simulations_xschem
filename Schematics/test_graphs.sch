v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 -130 -270 670 130 {flags=graph
y1=1000
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
N -130 240 -40 240 {
lab=GND}
N -130 240 -130 270 {
lab=GND}
N -130 180 -40 180 {
lab=vp}
C {devices/vsource.sym} -130 210 0 0 {name=V1 value=3 savecurrent=false}
C {devices/res.sym} -40 210 0 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} -130 270 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} -80 180 1 0 {name=p1 sig_type=std_logic lab=vp}
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
