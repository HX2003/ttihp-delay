v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -100 -760 -40 -760 {lab=VDD}
N -100 -410 -100 -60 {lab=VDD}
N -120 -740 -40 -740 {lab=VSS}
N -120 -390 -120 -40 {lab=VSS}
N -120 -390 -40 -390 {lab=VSS}
N -100 -410 -40 -410 {lab=VDD}
N -120 -40 -120 470 {lab=VSS}
N -100 -60 -100 450 {lab=VDD}
N -180 -690 -40 -690 {lab=#net1}
N -180 -340 -40 -340 {lab=#net1}
N -200 -650 -40 -650 {lab=#net2}
N -200 -300 -40 -300 {lab=#net2}
N -240 530 -40 530 {lab=REF_CLK}
N -240 550 -40 550 {lab=DLL_RESETN}
N -100 -60 -40 -60 {lab=VDD}
N -120 -40 -40 -40 {lab=VSS}
N -180 10 -40 10 {lab=#net1}
N -200 50 -40 50 {lab=#net2}
N -180 -340 -180 10 {lab=#net1}
N -200 -300 -200 50 {lab=#net2}
N -100 -760 -100 -410 {lab=VDD}
N -120 -740 -120 -390 {lab=VSS}
N -180 -690 -180 -340 {lab=#net1}
N -200 -650 -200 -300 {lab=#net2}
N -100 -1110 -100 -760 {lab=VDD}
N -100 -1110 -40 -1110 {lab=VDD}
N -100 -1210 -100 -1110 {lab=VDD}
N -120 -1090 -40 -1090 {lab=VSS}
N -120 -1090 -120 -740 {lab=VSS}
N -180 -1040 -40 -1040 {lab=#net1}
N -180 -1040 -180 -690 {lab=#net1}
N -200 -1000 -200 -650 {lab=#net2}
N -200 -1000 -40 -1000 {lab=#net2}
N -120 470 -40 470 {lab=VSS}
N -100 450 -40 450 {lab=VDD}
N -180 300 270 300 {lab=#net1}
N -180 10 -180 300 {lab=#net1}
N 270 300 270 530 {lab=#net1}
N 190 530 270 530 {lab=#net1}
N -200 320 250 320 {lab=#net2}
N -200 50 -200 320 {lab=#net2}
N 190 550 250 550 {lab=#net2}
N 250 320 250 550 {lab=#net2}
N -240 -1210 -100 -1210 {lab=VDD}
N -240 -1180 -120 -1180 {lab=VSS}
N -120 -1180 -120 -1090 {lab=VSS}
C {hx_delay_line_with_mux.sym} 70 -620 0 0 {name=x1}
C {hx_delay_line_with_mux.sym} 70 -270 0 0 {name=x2}
C {hx_delay_line_with_mux.sym} 70 80 0 0 {name=x3}
C {ipin.sym} -240 -1210 0 0 {name=p6 lab=VDD}
C {ipin.sym} -240 -1180 0 0 {name=p7 lab=VSS}
C {ipin.sym} -240 530 0 0 {name=p8 lab=REF_CLK}
C {ipin.sym} -240 550 0 0 {name=p10 lab=DLL_RESETN}
C {hx_delay_line_with_mux.sym} 70 -970 0 0 {name=x6}
C {ipin.sym} -40 600 0 0 {name=p1 lab=REF_MUX_SEL0}
C {ipin.sym} -40 620 0 0 {name=p2 lab=REF_MUX_SEL1}
C {ipin.sym} -40 640 0 0 {name=p3 lab=REF_MUX_SEL2}
C {ipin.sym} -40 660 0 0 {name=p4 lab=REF_MUX_SEL3}
C {ipin.sym} -40 680 0 0 {name=p5 lab=REF_MUX_SEL4}
C {ipin.sym} -40 100 0 0 {name=p9 lab=CHAN3_MUX_SEL0}
C {ipin.sym} -40 120 0 0 {name=p11 lab=CHAN3_MUX_SEL1}
C {ipin.sym} -40 140 0 0 {name=p12 lab=CHAN3_MUX_SEL2}
C {ipin.sym} -40 160 0 0 {name=p13 lab=CHAN3_MUX_SEL3}
C {ipin.sym} -40 180 0 0 {name=p14 lab=CHAN3_MUX_SEL4}
C {ipin.sym} -40 -250 0 0 {name=p15 lab=CHAN2_MUX_SEL0}
C {ipin.sym} -40 -230 0 0 {name=p16 lab=CHAN2_MUX_SEL1}
C {ipin.sym} -40 -210 0 0 {name=p17 lab=CHAN2_MUX_SEL2}
C {ipin.sym} -40 -190 0 0 {name=p18 lab=CHAN2_MUX_SEL3}
C {ipin.sym} -40 -170 0 0 {name=p19 lab=CHAN2_MUX_SEL4}
C {ipin.sym} -40 -600 0 0 {name=p20 lab=CHAN1_MUX_SEL0}
C {ipin.sym} -40 -580 0 0 {name=p21 lab=CHAN1_MUX_SEL1}
C {ipin.sym} -40 -560 0 0 {name=p22 lab=CHAN1_MUX_SEL2}
C {ipin.sym} -40 -540 0 0 {name=p23 lab=CHAN1_MUX_SEL3}
C {ipin.sym} -40 -520 0 0 {name=p24 lab=CHAN1_MUX_SEL4}
C {ipin.sym} -40 -950 0 0 {name=p25 lab=CHAN0_MUX_SEL0}
C {ipin.sym} -40 -930 0 0 {name=p26 lab=CHAN0_MUX_SEL1}
C {ipin.sym} -40 -910 0 0 {name=p27 lab=CHAN0_MUX_SEL2}
C {ipin.sym} -40 -890 0 0 {name=p28 lab=CHAN0_MUX_SEL3}
C {ipin.sym} -40 -870 0 0 {name=p29 lab=CHAN0_MUX_SEL4}
C {hx_delay_line_with_mux_dll.sym} 70 590 0 0 {name=x4}
C {ipin.sym} -40 30 0 0 {name=p30 lab=CHAN3_DELAY_IN}
C {ipin.sym} -40 -320 0 0 {name=p31 lab=CHAN2_DELAY_IN}
C {ipin.sym} -40 -670 0 0 {name=p32 lab=CHAN1_DELAY_IN}
C {ipin.sym} -40 -1020 0 0 {name=p33 lab=CHAN0_DELAY_IN}
C {opin.sym} 190 -1030 0 0 {name=p34 lab=CHAN0_MUX_OUT}
C {opin.sym} 190 -1010 0 0 {name=p35 lab=CHAN0_DELAY_OUT_LAST}
C {opin.sym} 190 -680 0 0 {name=p36 lab=CHAN1_MUX_OUT}
C {opin.sym} 190 -660 0 0 {name=p37 lab=CHAN1_DELAY_OUT_LAST}
C {opin.sym} 190 -330 0 0 {name=p38 lab=CHAN2_MUX_OUT}
C {opin.sym} 190 -310 0 0 {name=p39 lab=CHAN2_DELAY_OUT_LAST}
C {opin.sym} 190 20 0 0 {name=p40 lab=CHAN3_MUX_OUT}
C {opin.sym} 190 40 0 0 {name=p41 lab=CHAN3_DELAY_OUT_LAST}
C {opin.sym} 190 600 0 0 {name=p42 lab=REF_MUX_OUT}
C {opin.sym} 190 620 0 0 {name=p43 lab=REF_DELAY_OUT_LAST}
