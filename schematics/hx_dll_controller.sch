v {xschem version=3.4.8RC file_version=1.3}
G {}
K {dash=3}
V {}
S {}
F {}
E {}
T {For LVS purposes, please enable Toolbar > Simulation > LVS > Set 'lvs_ignore' attribute,
so that the ammeters (and subcircuit ammeters) are disabled and shorted (symbol should be red)} -730 -300 0 0 0.5 0.5 {}
N -250 -50 -140 -50 {lab=up}
N -250 -30 -140 -30 {lab=#net1}
N -250 0 -140 0 {lab=down}
N -250 20 -140 20 {lab=#net2}
N -260 -150 -200 -150 {lab=#net3}
N -200 -150 -200 -100 {lab=#net3}
N -200 -100 -140 -100 {lab=#net3}
N -220 -80 -140 -80 {lab=#net4}
N -220 -130 -220 -80 {lab=#net4}
N -260 -130 -220 -130 {lab=#net4}
N 190 -50 330 -50 {lab=DELAY_VBIASP}
N 190 -30 210 -30 {lab=#net5}
N 270 -30 330 -30 {lab=DELAY_VBIASN}
N -170 -130 -140 -130 {lab=VSS}
N -170 -190 -170 -130 {lab=VSS}
N -140 -210 -140 -150 {lab=VDD}
N -600 -210 -140 -210 {lab=VDD}
N -540 40 -510 40 {lab=DLL_RESETN}
N -660 0 -510 0 {lab=DELAY_IN}
N -660 20 -510 20 {lab=DELAY_OUT}
N -190 50 -140 50 {lab=DLL_RESETN}
N -190 50 -190 90 {lab=DLL_RESETN}
N -540 90 -190 90 {lab=DLL_RESETN}
N -540 40 -540 90 {lab=DLL_RESETN}
N -660 40 -540 40 {lab=DLL_RESETN}
N 290 60 290 140 {lab=VSS}
N -580 140 290 140 {lab=VSS}
N -580 -30 -510 -30 {lab=VSS}
N -580 -30 -580 140 {lab=VSS}
N -660 140 -580 140 {lab=VSS}
N -580 -130 -580 -30 {lab=VSS}
N -580 -190 -170 -190 {lab=VSS}
N -600 -150 -510 -150 {lab=VDD}
N -600 -210 -600 -150 {lab=VDD}
N -660 -210 -600 -210 {lab=VDD}
N -600 -150 -600 -50 {lab=VDD}
N -600 -50 -510 -50 {lab=VDD}
N -580 -130 -510 -130 {lab=VSS}
N -580 -190 -580 -130 {lab=VSS}
C {ipin.sym} -660 -210 0 0 {name=p3 lab=VDD}
C {ipin.sym} -660 140 0 0 {name=p4 lab=VSS}
C {opin.sym} 330 -50 0 0 {name=p1 lab=DELAY_VBIASP}
C {opin.sym} 330 -30 0 0 {name=p2 lab=DELAY_VBIASN}
C {ipin.sym} -660 40 0 0 {name=p8 lab=DLL_RESETN}
C {ipin.sym} -660 0 0 0 {name=p5 lab=DELAY_IN}
C {ipin.sym} -660 20 0 0 {name=p6 lab=DELAY_OUT_LAST}
C {lab_pin.sym} -230 -50 2 0 {name=p10 lab=up}
C {lab_pin.sym} -210 0 2 0 {name=p12 lab=down}
C {devices/ammeter.sym} 240 -30 3 0 {name=Vcharge
lvs_ignore=short
}
C {hx_charge_pump_current_generator.sym} -390 -140 0 0 {name=x1
}
C {hx_phase_detector.sym} -380 -40 0 0 {name=x2}
C {hx_loop_capacitor.sym} 290 20 0 0 {name=x4}
C {hx_charge_pump_switch.sym} 50 -30 0 0 {name=x3}
