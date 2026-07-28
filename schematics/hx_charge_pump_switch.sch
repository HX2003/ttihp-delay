v {xschem version=3.4.8RC file_version=1.3}
G {}
K {dash=3}
V {}
S {}
F {}
E {}
B 4 180 -270 390 300 {dash=3
fill=false}
T {For LVS purposes, please enable Toolbar > Simulation > LVS > Set 'lvs_ignore' attribute,
so that the ammeters are disabled and shorted (symbol should be red)} -770 -450 0 0 0.5 0.5 {}
T {Current mirror to generate
bias voltage for PMOS} 180 -330 0 0 0.4 0.4 {layer=4}
N -210 -90 -210 -60 {lab=DELAY_VBIASN}
N -210 60 -210 120 {lab=DELAY_VBIASN}
N -440 -180 -210 -180 {lab=CURRENT_SOURCE}
N 290 -60 290 20 {lab=DELAY_VBIASP}
N 250 -60 290 -60 {lab=DELAY_VBIASP}
N -660 -120 -480 -120 {lab=UP}
N -280 -120 -250 -120 {lab=UP_INV}
N -280 -120 -280 -40 {lab=UP_INV}
N -660 -40 -280 -40 {lab=UP_INV}
N -660 40 -280 40 {lab=DOWN}
N -280 40 -280 150 {lab=DOWN}
N -280 150 -250 150 {lab=DOWN}
N -440 -90 -440 -70 {lab=VSS}
N -660 150 -480 150 {lab=DOWN_INV}
N -440 100 -440 120 {lab=VDD}
N -40 -120 0 -120 {lab=DLL_RESETN}
N 40 -90 40 0 {lab=DELAY_VBIASN}
N 250 0 250 140 {lab=DELAY_VBIASN}
N 290 -90 290 -60 {lab=DELAY_VBIASP}
N 250 -120 250 -60 {lab=DELAY_VBIASP}
N 290 80 290 110 {lab=DELAY_VBIASP}
N 290 -60 430 -60 {lab=DELAY_VBIASP}
N -210 -180 -210 -150 {lab=CURRENT_SOURCE}
N -210 180 -210 210 {lab=CURRENT_SINK}
N -440 210 -210 210 {lab=CURRENT_SINK}
N -440 180 -440 210 {lab=CURRENT_SINK}
N -440 -180 -440 -150 {lab=CURRENT_SOURCE}
N -660 -180 -440 -180 {lab=CURRENT_SOURCE}
N -440 -120 -380 -120 {lab=VDD}
N -440 150 -380 150 {lab=VSS}
N -210 150 -150 150 {lab=VSS}
N -210 -120 -150 -120 {lab=VDD}
N -660 210 -440 210 {lab=CURRENT_SINK}
N -380 150 -380 270 {lab=VSS}
N -660 270 -380 270 {lab=VSS}
N 290 140 290 270 {lab=VSS}
N -150 150 -150 270 {lab=VSS}
N -40 -290 -40 -120 {lab=DLL_RESETN}
N 40 -240 40 -120 {lab=VDD}
N -380 -240 -380 -120 {lab=VDD}
N -660 -240 -380 -240 {lab=VDD}
N -150 -240 -150 -120 {lab=VDD}
N -380 -240 -150 -240 {lab=VDD}
N -150 270 290 270 {lab=VSS}
N -660 -290 -40 -290 {lab=DLL_RESETN}
N 40 -240 290 -240 {lab=VDD}
N 40 0 250 0 {lab=DELAY_VBIASN}
N -210 -0 40 0 {lab=DELAY_VBIASN}
N -380 270 -150 270 {lab=VSS}
N -150 -240 40 -240 {lab=VDD}
N 250 0 440 0 {lab=DELAY_VBIASN}
N 290 -240 290 -120 {lab=VDD}
C {ipin.sym} -660 -180 0 0 {name=p3 lab=CURRENT_SOURCE}
C {ipin.sym} -660 270 0 0 {name=p4 lab=VSS}
C {opin.sym} 430 -60 0 0 {name=p1 lab=DELAY_VBIASP}
C {opin.sym} 430 0 0 0 {name=p2 lab=DELAY_VBIASN}
C {ipin.sym} -660 -40 0 0 {name=p8 lab=UP_INV}
C {ipin.sym} -660 -120 0 0 {name=p5 lab=UP}
C {ipin.sym} -660 40 0 0 {name=p6 lab=DOWN}
C {sg13g2_pr/sg13_lv_nmos.sym} -230 150 0 0 {name=M3004
l=0.2u
w=0.4u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -230 -120 0 0 {name=M3003
l=0.2u
w=0.4u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 20 -120 0 0 {name=M3002
l=0.2u
w=0.8u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {devices/ammeter.sym} -210 -30 0 0 {name=Vchargeup
lvs_ignore=short}
C {devices/ammeter.sym} -210 30 0 0 {name=Vchargedown
lvs_ignore=short}
C {lab_pin.sym} -440 100 0 0 {name=p17 lab=VDD}
C {sg13g2_pr/sg13_lv_pmos.sym} -460 -120 0 0 {name=M3005
l=0.2u
w=0.4u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -460 150 0 0 {name=M3006
l=0.2u
w=0.4u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/ammeter.sym} 290 50 0 0 {name=Vpmirror
lvs_ignore=short
}
C {sg13g2_pr/sg13_lv_pmos.sym} 270 -120 0 0 {name=M3000
l=0.6u
w=1.12u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 270 140 0 0 {name=M3001
l=0.6u
w=0.74u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {ipin.sym} -660 150 0 0 {name=p7 lab=DOWN_INV}
C {ipin.sym} -660 -290 0 0 {name=p9 lab=DLL_RESETN}
C {lab_pin.sym} -440 -70 0 0 {name=p10 lab=VSS}
C {ipin.sym} -660 -240 0 0 {name=p11 lab=VDD}
C {ipin.sym} -660 210 0 0 {name=p16 lab=CURRENT_SINK}
