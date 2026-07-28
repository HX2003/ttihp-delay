v {xschem version=3.4.8RC file_version=1.3}
G {}
K {dash=3}
V {}
S {}
F {}
E {}
N 70 270 230 270 {lab=VSS}
N 0 50 30 50 {
lab=#net1}
N 0 -50 30 -50 {
lab=#net1}
N 0 0 0 50 {
lab=#net1}
N -110 -50 -40 -50 {
lab=VDD}
N -110 0 -110 20 {
lab=#net1}
N -180 50 -150 50 {
lab=DELAY_CELL_IN}
N -180 -50 -150 -50 {
lab=DELAY_CELL_IN}
N -110 -20 -110 0 {
lab=#net1}
N -110 0 0 0 {
lab=#net1}
N 0 -50 0 0 {
lab=#net1}
N 70 -280 70 -50 {lab=VDD}
N -110 -170 -110 -80 {lab=#net2}
N -110 190 -110 270 {lab=VSS}
N -40 -280 -40 -50 {lab=VDD}
N -180 0 -180 50 {
lab=DELAY_CELL_IN}
N 160 50 190 50 {
lab=DELAY_CELL_OUT}
N 160 -50 190 -50 {
lab=DELAY_CELL_OUT}
N 160 0 160 50 {
lab=DELAY_CELL_OUT}
N 160 -50 160 0 {
lab=DELAY_CELL_OUT}
N 230 -280 230 -50 {lab=VDD}
N 130 0 160 0 {lab=DELAY_CELL_OUT}
N 70 -20 70 0 {
lab=DELAY_CELL_OUT}
N 230 -0 230 20 {
lab=DELAY_CELL_OUT_INV}
N -40 -280 70 -280 {lab=VDD}
N -110 -280 -40 -280 {lab=VDD}
N 70 -280 230 -280 {lab=VDD}
N -320 -0 -180 0 {lab=DELAY_CELL_IN}
N -180 -50 -180 0 {
lab=DELAY_CELL_IN}
N -320 190 -150 190 {lab=DELAY_VBIASN}
N -320 -200 -150 -200 {lab=DELAY_VBIASP}
N -320 -280 -110 -280 {lab=VDD}
N -40 50 -40 270 {lab=VSS}
N -110 80 -110 160 {lab=#net3}
N -110 50 -40 50 {
lab=VSS}
N 230 50 230 270 {lab=VSS}
N -110 -280 -110 -200 {lab=VDD}
N -320 270 -110 270 {lab=VSS}
N -110 270 -40 270 {lab=VSS}
N 230 -0 370 -0 {lab=DELAY_CELL_OUT_INV}
N 230 -20 230 -0 {
lab=DELAY_CELL_OUT_INV}
N 130 -120 130 0 {lab=DELAY_CELL_OUT}
N 70 0 130 0 {lab=DELAY_CELL_OUT}
N 130 -120 370 -120 {lab=DELAY_CELL_OUT}
N 70 50 70 270 {lab=VSS}
N -40 270 70 270 {lab=VSS}
N 70 0 70 20 {lab=DELAY_CELL_OUT}
C {ipin.sym} -320 -280 0 0 {name=p3 lab=VDD}
C {ipin.sym} -320 270 0 0 {name=p4 lab=VSS}
C {opin.sym} 370 0 0 0 {name=p5 lab=DELAY_CELL_OUT_INV}
C {sg13g2_pr/sg13_lv_nmos.sym} -130 50 0 0 {name=M1
l=0.2u
w=0.74u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -130 190 0 0 {name=M2
l=0.6u
w=0.74u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -130 -200 0 0 {name=M3
l=0.6u
w=1.12u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 50 50 0 0 {name=M4
l=0.13u
w=0.74u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -130 -50 0 0 {name=M5
l=0.2u
w=1.12u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 50 -50 0 0 {name=M6
l=0.13u
w=1.12u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 210 50 0 0 {name=M7
l=0.13u
w=0.74u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 210 -50 0 0 {name=M8
l=0.13u
w=1.12u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {ipin.sym} -320 190 0 0 {name=p1 lab=DELAY_VBIASN}
C {ipin.sym} -320 -200 0 0 {name=p7 lab=DELAY_VBIASP}
C {ipin.sym} -320 0 0 0 {name=p2 lab=DELAY_CELL_IN}
C {opin.sym} 370 -120 0 0 {name=p6 lab=DELAY_CELL_OUT}
