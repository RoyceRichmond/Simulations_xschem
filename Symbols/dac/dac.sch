v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 1570 -1460 1600 -1460 {
lab=vout}
N 1740 -1460 1780 -1460 {
lab=vin}
N 1670 -1400 1770 -1400 {
lab=sample}
N 1740 -1490 1770 -1490 {
lab=vdd}
N 1740 -1430 1770 -1430 {
lab=vss}
N 1590 -1520 1590 -1460 {
lab=vout}
N 1210 -1250 1320 -1250 {
lab=#net1}
N 1210 -1340 1210 -1250 {
lab=#net1}
N 1340 -1260 1340 -1250 {
lab=#net2}
N 1250 -1260 1340 -1260 {
lab=#net2}
N 1250 -1340 1250 -1260 {
lab=#net2}
N 1360 -1270 1360 -1250 {
lab=#net3}
N 1290 -1270 1360 -1270 {
lab=#net3}
N 1290 -1340 1290 -1270 {
lab=#net3}
N 1380 -1280 1380 -1250 {
lab=#net4}
N 1330 -1280 1380 -1280 {
lab=#net4}
N 1330 -1340 1330 -1280 {
lab=#net4}
N 1400 -1290 1400 -1250 {
lab=#net5}
N 1370 -1290 1400 -1290 {
lab=#net5}
N 1370 -1340 1370 -1290 {
lab=#net5}
N 1420 -1300 1420 -1250 {
lab=#net6}
N 1410 -1300 1420 -1300 {
lab=#net6}
N 1410 -1340 1410 -1300 {
lab=#net6}
N 1440 -1340 1450 -1340 {
lab=#net7}
N 1440 -1340 1440 -1250 {
lab=#net7}
N 1460 -1270 1460 -1250 {
lab=#net8}
N 1460 -1270 1490 -1270 {
lab=#net8}
N 1490 -1340 1490 -1270 {
lab=#net8}
N 1480 -1250 1530 -1250 {
lab=#net9}
N 1530 -1340 1530 -1250 {
lab=#net9}
N 1220 -1190 1240 -1190 {
lab=vdd}
N 1220 -1160 1240 -1160 {
lab=vss}
N 1320 -1090 1320 -1060 {
lab=ctl[7]}
N 1340 -1090 1340 -1060 {
lab=ctl[6]}
N 1360 -1090 1360 -1060 {
lab=ctl[5]}
N 1380 -1090 1380 -1060 {
lab=ctl[4]}
N 1400 -1090 1400 -1060 {
lab=ctl[3]}
N 1420 -1090 1420 -1060 {
lab=ctl[2]}
N 1440 -1090 1440 -1060 {
lab=ctl[1]}
N 1460 -1090 1460 -1060 {
lab=ctl[0]}
N 1480 -1090 1480 -1060 {
lab=dummy}
C {Schematics/ADC/c_array/c_array.sym} 1240 -1490 0 0 {name=x1 @value=1}
C {Schematics/ADC/inverter_array/inverter_array.sym} 1040 -1150 0 0 {name=x2}
C {Schematics/ADC/sw/sw.sym} 1890 -1470 0 1 {name=x3}
C {devices/iopin.sym} 1780 -1460 0 0 {name=p1 lab=vin}
C {devices/lab_wire.sym} 1770 -1490 0 0 {name=p2 sig_type=std_logic lab=vdd}
C {devices/iopin.sym} 1770 -1400 0 0 {name=p3 lab=sample}
C {devices/iopin.sym} 1860 -1540 0 0 {name=p4 lab=vdd}
C {devices/iopin.sym} 1860 -1510 0 0 {name=p5 lab=vss}
C {devices/lab_wire.sym} 1770 -1430 0 0 {name=p6 sig_type=std_logic lab=vss}
C {devices/iopin.sym} 1590 -1520 0 0 {name=p7 lab=vout}
C {devices/lab_wire.sym} 1220 -1190 0 0 {name=p8 sig_type=std_logic lab=vdd}
C {devices/lab_wire.sym} 1220 -1160 0 0 {name=p9 sig_type=std_logic lab=vss}
C {devices/iopin.sym} 1860 -1480 0 0 {name=p10 lab=dummy}
C {devices/iopin.sym} 1860 -1450 0 0 {name=p11 lab=ctl[7:0]}
C {devices/lab_wire.sym} 1320 -1060 3 0 {name=p12 sig_type=std_logic lab=ctl[7]}
C {devices/lab_wire.sym} 1340 -1060 3 0 {name=p13 sig_type=std_logic lab=ctl[6]}
C {devices/lab_wire.sym} 1360 -1060 3 0 {name=p14 sig_type=std_logic lab=ctl[5]}
C {devices/lab_wire.sym} 1380 -1060 3 0 {name=p15 sig_type=std_logic lab=ctl[4]}
C {devices/lab_wire.sym} 1400 -1060 3 0 {name=p16 sig_type=std_logic lab=ctl[3]}
C {devices/lab_wire.sym} 1420 -1060 3 0 {name=p17 sig_type=std_logic lab=ctl[2]}
C {devices/lab_wire.sym} 1440 -1060 3 0 {name=p18 sig_type=std_logic lab=ctl[1]}
C {devices/lab_wire.sym} 1460 -1060 3 0 {name=p19 sig_type=std_logic lab=ctl[0]}
C {devices/lab_wire.sym} 1480 -1060 3 0 {name=p20 sig_type=std_logic lab=dummy}
