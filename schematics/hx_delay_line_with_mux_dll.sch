v {xschem version=3.4.8RC file_version=1.3}
G {}
K {dash=3}
V {}
S {}
F {}
E {}
N -140 -180 280 -180 {lab=VDD}
N 510 160 510 190 {lab=DELAY_OUT_LAST}
N 200 130 280 130 {lab=DELAY_VBIASP}
N 180 170 280 170 {lab=DELAY_VBIASN}
N 180 -10 180 170 {lab=DELAY_VBIASN}
N -160 -10 -140 -10 {lab=DELAY_OUT_LAST}
N 180 -10 620 -10 {lab=DELAY_VBIASN}
N 200 -30 620 -30 {lab=DELAY_VBIASP}
N 510 140 620 140 {lab=MUX_OUT}
N -140 -180 -140 -80 {lab=VDD}
N -340 -180 -140 -180 {lab=VDD}
N -160 -60 -140 -60 {lab=VSS}
N -160 -150 -160 -60 {lab=VSS}
N -340 -150 -160 -150 {lab=VSS}
N 260 80 280 80 {lab=VSS}
N 260 -150 260 80 {lab=VSS}
N 280 -180 280 60 {lab=VDD}
N -260 -30 -140 -30 {lab=REF_CLK}
N -260 -30 -260 150 {lab=REF_CLK}
N -340 -30 -260 -30 {lab=REF_CLK}
N 200 -30 200 130 {lab=DELAY_VBIASP}
N -340 10 -140 10 {lab=DLL_RESETN}
N -160 -10 -160 190 {lab=DELAY_OUT_LAST}
N 510 160 620 160 {lab=DELAY_OUT_LAST}
N -340 220 280 220 {lab=MUX_SEL0}
N -340 240 280 240 {lab=MUX_SEL1}
N -340 260 280 260 {lab=MUX_SEL2}
N -340 280 280 280 {lab=MUX_SEL3}
N -340 300 280 300 {lab=MUX_SEL4}
N -160 -150 260 -150 {lab=VSS}
N 150 -10 180 -10 {lab=DELAY_VBIASN}
N 150 -30 200 -30 {lab=DELAY_VBIASP}
N -160 190 510 190 {lab=DELAY_OUT_LAST}
N -260 150 280 150 {lab=REF_CLK}
C {ipin.sym} -340 -180 0 0 {name=p3 lab=VDD}
C {ipin.sym} -340 -150 0 0 {name=p4 lab=VSS}
C {opin.sym} 620 140 0 0 {name=p37 lab=MUX_OUT}
C {ipin.sym} -340 -30 0 0 {name=p1 lab=REF_CLK}
C {ipin.sym} -340 10 0 0 {name=p5 lab=DLL_RESETN}
C {ipin.sym} -340 220 0 0 {name=p7 lab=MUX_SEL0}
C {ipin.sym} -340 240 0 0 {name=p8 lab=MUX_SEL1}
C {ipin.sym} -340 260 0 0 {name=p9 lab=MUX_SEL2}
C {ipin.sym} -340 280 0 0 {name=p10 lab=MUX_SEL3}
C {ipin.sym} -340 300 0 0 {name=p11 lab=MUX_SEL4}
C {hx_dll_controller.sym} 10 -70 0 0 {name=x1}
C {hx_delay_line_with_mux.sym} 390 200 0 0 {name=x2}
C {opin.sym} 620 -10 0 0 {name=p12 lab=DELAY_VBIASN}
C {opin.sym} 620 -30 0 0 {name=p2 lab=DELAY_VBIASP}
C {opin.sym} 620 160 0 0 {name=p6 lab=DELAY_OUT_LAST}
