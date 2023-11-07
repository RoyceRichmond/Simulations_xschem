v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 350 -390 350 -350 {
lab=n_din}
N 350 -290 350 -250 {
lab=#net1}
N 350 -320 380 -320 {
lab=#net1}
N 380 -320 380 -250 {
lab=#net1}
N 350 -250 380 -250 {
lab=#net1}
N 310 -420 310 -320 {
lab=din}
N 350 -420 380 -420 {
lab=vdd}
N 380 -470 380 -420 {
lab=vdd}
N 350 -470 350 -450 {
lab=vdd}
N 350 -470 380 -470 {
lab=vdd}
N 580 -390 580 -350 {
lab=#net2}
N 580 -290 580 -250 {
lab=gnd}
N 580 -320 610 -320 {
lab=gnd}
N 610 -320 610 -250 {
lab=gnd}
N 580 -250 610 -250 {
lab=gnd}
N 540 -420 540 -320 {
lab=n_din}
N 580 -420 610 -420 {
lab=vdd}
N 610 -470 610 -420 {
lab=vdd}
N 580 -470 580 -450 {
lab=vdd}
N 580 -470 610 -470 {
lab=vdd}
N 430 -670 430 -530 {
lab=vin_a}
N 490 -670 490 -530 {
lab=vout}
N 460 -670 460 -660 {
lab=gnd}
N 460 -550 460 -530 {
lab=vdd}
N 430 -190 430 -50 {
lab=vin_b}
N 490 -190 490 -50 {
lab=vout}
N 460 -190 460 -180 {
lab=gnd}
N 460 -70 460 -50 {
lab=vdd}
N 350 -370 540 -370 {
lab=n_din}
N 460 -490 460 -370 {
lab=n_din}
N 460 -370 460 -230 {
lab=n_din}
N 460 -10 710 -10 {
lab=#net2}
N 710 -710 710 -10 {
lab=#net2}
N 460 -710 710 -710 {
lab=#net2}
N 250 -600 430 -600 {
lab=vin_a}
N 250 -120 430 -120 {
lab=vin_b}
N 490 -600 760 -600 {
lab=vout}
N 760 -600 760 -300 {
lab=vout}
N 490 -120 760 -120 {
lab=vout}
N 760 -300 760 -120 {
lab=vout}
N 580 -370 710 -370 {
lab=#net2}
N 250 -370 310 -370 {
lab=din}
N 760 -370 780 -370 {
lab=vout}
N 250 -10 300 -10 {
lab=gnd}
N 240 -720 290 -720 {
lab=vdd}
C {sky130_fd_pr/pfet_01v8.sym} 330 -420 0 0 {name=M3
L=1
W=1
nf=1
mult=1
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 330 -320 0 0 {name=M4
L=1
W=1
nf=1 
mult=1
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 350 -470 0 0 {name=p1 sig_type=std_logic lab=vdd
}
C {devices/lab_pin.sym} 300 -10 1 0 {name=p4 sig_type=std_logic lab=gnd}
C {sky130_fd_pr/pfet_01v8.sym} 560 -420 0 0 {name=M1
L=1
W=1
nf=1
mult=1
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 560 -320 0 0 {name=M2
L=1
W=1
nf=1 
mult=1
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 580 -470 0 0 {name=p2 sig_type=std_logic lab=vdd
}
C {devices/lab_pin.sym} 580 -250 0 0 {name=p3 sig_type=std_logic lab=gnd}
C {sky130_fd_pr/pfet_01v8.sym} 460 -510 3 0 {name=M5
L=1
W=10
nf=1
mult=1
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 460 -690 3 1 {name=M6
L=1
W=1
nf=1 
mult=1
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 460 -550 3 1 {name=p5 sig_type=std_logic lab=vdd
}
C {devices/lab_pin.sym} 460 -660 1 1 {name=p8 sig_type=std_logic lab=gnd}
C {sky130_fd_pr/pfet_01v8.sym} 460 -30 3 0 {name=M7
L=1
W=10
nf=1
mult=1
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 460 -210 3 1 {name=M8
L=1
W=1
nf=1 
mult=1
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 460 -70 3 1 {name=p6 sig_type=std_logic lab=vdd
}
C {devices/lab_pin.sym} 460 -180 1 1 {name=p7 sig_type=std_logic lab=gnd}
C {devices/lab_pin.sym} 290 -600 1 0 {name=p9 sig_type=std_logic lab=vin_a}
C {devices/iopin.sym} 780 -370 0 0 {name=p10 lab=vout}
C {devices/iopin.sym} 250 -600 2 0 {name=p11 lab=vin_a
}
C {devices/iopin.sym} 250 -120 2 0 {name=p12 lab=vin_b}
C {devices/lab_pin.sym} 280 -370 1 0 {name=p14 sig_type=std_logic lab=din}
C {devices/lab_pin.sym} 280 -120 1 0 {name=p15 sig_type=std_logic lab=vin_b}
C {devices/lab_pin.sym} 500 -370 1 0 {name=p16 sig_type=std_logic lab=n_din}
C {devices/lab_pin.sym} 760 -410 2 0 {name=p17 sig_type=std_logic lab=vout}
C {devices/iopin.sym} 240 -720 2 0 {name=p18 lab=vdd
}
C {devices/iopin.sym} 250 -10 2 0 {name=p19 lab=gnd
}
C {devices/lab_pin.sym} 290 -720 3 1 {name=p20 sig_type=std_logic lab=vdd
}
C {devices/ipin.sym} 250 -370 0 0 {name=p21 lab=din}
