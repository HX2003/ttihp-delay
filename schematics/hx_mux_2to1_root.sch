v {xschem version=3.4.8RC file_version=1.3}
G {}
K {dash=3}
V {}
S {}
F {}
E {}
N -80 290 -80 310 {lab=#net1}
N -120 290 -120 340 {lab=MUX_SEL}
N 190 130 190 210 {lab=#net2}
N 130 70 130 130 {lab=VDD}
N 130 160 130 210 {lab=VSS}
N 190 70 190 130 {lab=#net2}
N 70 140 70 210 {lab=MUX_IN0}
N 70 70 100 70 {lab=MUX_IN0}
N 70 210 100 210 {lab=MUX_IN0}
N 160 70 190 70 {lab=#net2}
N 160 210 190 210 {lab=#net2}
N 130 -10 130 30 {lab=MUX_SEL}
N -120 240 -120 290 {lab=MUX_SEL}
N 190 130 290 130 {lab=#net2}
N -80 340 -80 400 {lab=VSS}
N 190 430 190 510 {lab=#net2}
N 130 370 130 430 {lab=VDD}
N 130 460 130 510 {lab=VSS}
N 190 370 190 430 {lab=#net2}
N 70 440 70 510 {lab=MUX_IN1}
N 70 370 100 370 {lab=MUX_IN1}
N 70 510 100 510 {lab=MUX_IN1}
N 160 370 190 370 {lab=#net2}
N 160 510 190 510 {lab=#net2}
N 190 430 290 430 {lab=#net2}
N 290 290 290 430 {lab=#net2}
N -80 270 -80 290 {lab=#net1}
N -330 -10 -220 -10 {lab=MUX_SEL}
N -220 290 -220 590 {lab=MUX_SEL}
N 130 550 130 590 {lab=MUX_SEL}
N -80 180 -80 240 {lab=VDD}
N -330 140 70 140 {lab=MUX_IN0}
N 70 70 70 140 {lab=MUX_IN0}
N -330 440 70 440 {lab=MUX_IN1}
N 70 370 70 440 {lab=MUX_IN1}
N 290 290 330 290 {lab=#net2}
N 290 130 290 290 {lab=#net2}
N 410 290 450 290 {lab=MUX_OUT}
N -220 -10 130 -10 {lab=MUX_SEL}
N 130 250 130 290 {lab=#net1}
N 130 290 130 330 {lab=#net1}
N -220 590 130 590 {lab=MUX_SEL}
N -80 290 130 290 {lab=#net1}
N -220 290 -120 290 {lab=MUX_SEL}
N -220 -10 -220 290 {lab=MUX_SEL}
C {ipin.sym} -330 -100 0 0 {name=p3 lab=VDD}
C {ipin.sym} -330 -70 0 0 {name=p4 lab=VSS}
C {ipin.sym} -330 140 0 0 {name=p7 lab=MUX_IN0}
C {opin.sym} 450 290 0 0 {name=p37 lab=MUX_OUT}
C {ipin.sym} -330 440 0 0 {name=p1 lab=MUX_IN1}
C {sg13g2_pr/sg13_lv_nmos.sym} -100 340 0 0 {name=M1
l=0.13u
w=0.74u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -100 240 0 0 {name=M2
l=0.13u
w=1.12u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 130 230 3 0 {name=M3
l=0.13u
w=0.74u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 130 50 1 0 {name=M4
l=0.13u
w=1.12u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {lab_pin.sym} 130 130 2 0 {name=p6 lab=VDD}
C {lab_pin.sym} 130 160 2 0 {name=p42 lab=VSS}
C {lab_pin.sym} -80 180 0 0 {name=p43 lab=VDD}
C {lab_pin.sym} -80 400 0 0 {name=p44 lab=VSS}
C {ipin.sym} -330 -10 0 0 {name=p45 lab=MUX_SEL}
C {sg13g2_pr/sg13_lv_nmos.sym} 130 530 3 0 {name=M5
l=0.13u
w=0.74u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 130 350 1 0 {name=M6
l=0.13u
w=1.12u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {lab_pin.sym} 130 430 2 0 {name=p46 lab=VDD}
C {lab_pin.sym} 130 460 2 0 {name=p47 lab=VSS}
C {sg13g2_buf_2.sym} 370 290 0 0 {name=x14 VDD=VDD VSS=VSS prefix=sg13g2_ }
