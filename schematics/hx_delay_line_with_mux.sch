v {xschem version=3.4.8RC file_version=1.3}
G {}
K {dash=3}
V {}
S {}
F {}
E {}
N -340 -180 -200 -180 {lab=VDD}
N -340 -150 -220 -150 {lab=VSS}
N -220 -150 -220 20 {lab=VSS}
N -200 -180 -200 0 {lab=VDD}
N -200 80 -100 80 {lab=DELAY_VBIASP}
N -200 120 -100 120 {lab=DELAY_VBIASN}
N -340 140 -200 140 {lab=DELAY_VBIASN}
N -280 100 -100 100 {lab=DELAY_IN}
N -340 60 -200 60 {lab=DELAY_VBIASP}
N -200 60 -200 80 {lab=DELAY_VBIASP}
N -200 120 -200 140 {lab=DELAY_VBIASN}
N 240 -180 240 -60 {lab=VDD}
N 220 -40 240 -40 {lab=VSS}
N 220 -150 220 -40 {lab=VSS}
N -280 40 -280 100 {lab=DELAY_IN}
N -340 100 -280 100 {lab=DELAY_IN}
N -280 40 90 40 {lab=DELAY_IN}
N 90 20 90 40 {lab=DELAY_IN}
N 240 670 650 670 {lab=DELAY_OUT}
N -340 700 240 700 {lab=MUX_SEL0}
N -200 -180 240 -180 {lab=VDD}
N -220 -150 220 -150 {lab=VSS}
N -220 20 -100 20 {lab=VSS}
N -200 -0 -100 -0 {lab=VDD}
N 90 20 240 20 {lab=DELAY_IN}
N -340 720 240 720 {lab=MUX_SEL1}
N -340 740 240 740 {lab=MUX_SEL2}
N -340 760 240 760 {lab=MUX_SEL3}
N -340 780 240 780 {lab=MUX_SEL4}
C {ipin.sym} -340 -180 0 0 {name=p3 lab=VDD}
C {ipin.sym} -340 -150 0 0 {name=p4 lab=VSS}
C {opin.sym} 650 330 0 0 {name=p37 lab=MUX_OUT}
C {hx_delay_line.sym} 60 340 0 0 {name=x1}
C {hx_mux.sym} 390 390 0 0 {name=x2}
C {ipin.sym} -340 100 0 0 {name=p1 lab=DELAY_IN}
C {ipin.sym} -340 60 0 0 {name=p2 lab=DELAY_VBIASP}
C {ipin.sym} -340 140 0 0 {name=p5 lab=DELAY_VBIASN}
C {opin.sym} 650 670 0 0 {name=p6 lab=DELAY_OUT_LAST}
C {ipin.sym} -340 700 0 0 {name=p7 lab=MUX_SEL0}
C {ipin.sym} -340 720 0 0 {name=p8 lab=MUX_SEL1}
C {ipin.sym} -340 740 0 0 {name=p9 lab=MUX_SEL2}
C {ipin.sym} -340 760 0 0 {name=p10 lab=MUX_SEL3}
C {ipin.sym} -340 780 0 0 {name=p11 lab=MUX_SEL4}
