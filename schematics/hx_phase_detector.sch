v {xschem version=3.4.8RC file_version=1.3}
G {}
K {dash=3}
V {}
S {}
F {}
E {}
T {crossed for LVS layout} 170 -50 0 0 0.2 0.2 {}
N 0 -120 170 -120 {lab=UP}
N 0 80 170 80 {lab=DOWN}
N -310 -100 -180 -100 {lab=#net1}
N -510 -100 -490 -100 {lab=DELAY_IN}
N -510 -140 -510 -100 {lab=DELAY_IN}
N -510 -140 -200 -140 {lab=DELAY_IN}
N -200 -140 -200 -120 {lab=DELAY_IN}
N -200 -120 -180 -120 {lab=DELAY_IN}
N -580 -80 -490 -80 {lab=#net2}
N -250 60 -180 60 {lab=#net3}
N -560 -60 -490 -60 {lab=DLL_RESETN}
N -660 -140 -510 -140 {lab=DELAY_IN}
N -660 80 -180 80 {lab=DELAY_OUT}
N -660 -60 -560 -60 {lab=DLL_RESETN}
N -180 -20 -20 -20 {lab=#net4}
N -180 -20 -180 40 {lab=#net4}
N -180 -80 -180 -20 {lab=#net4}
N 170 -20 170 80 {lab=DOWN}
N 70 170 140 170 {lab=#net5}
N 140 20 140 170 {lab=#net5}
N -560 170 -10 170 {lab=DLL_RESETN}
N -560 -60 -560 170 {lab=DLL_RESETN}
N 170 -120 170 -60 {lab=UP}
N 140 -20 170 -60 {lab=UP}
N 140 -60 170 -20 {lab=DOWN}
C {ipin.sym} -660 -230 0 0 {name=p3 lab=VDD}
C {ipin.sym} -660 140 0 0 {name=p4 lab=VSS}
C {sg13g2_stdcells/sg13g2_dfrbp_1.sym} -90 -100 0 0 {name=x200 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_dfrbp_1.sym} -90 60 2 1 {name=x201 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_tiehi.sym} -580 -80 0 0 {name=x206 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_dfrbpq_1.sym} -400 -80 0 0 {name=x204 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_tiehi.sym} -250 60 0 0 {name=x205 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {opin.sym} 170 -120 0 0 {name=p1 lab=UP}
C {opin.sym} 170 80 0 0 {name=p2 lab=DOWN}
C {opin.sym} 0 -100 0 0 {name=p7 lab=UP_INV}
C {ipin.sym} -660 -60 0 0 {name=p8 lab=DLL_RESETN}
C {opin.sym} 0 60 0 0 {name=p9 lab=DOWN_INV}
C {ipin.sym} -660 -140 0 0 {name=p5 lab=DELAY_IN}
C {ipin.sym} -660 80 0 0 {name=p6 lab=DELAY_OUT}
C {sg13g2_a21oi_1.sym} 60 -20 0 1 {name=x202 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_inv_1.sym} 30 170 0 0 {name=x203 VDD=VDD VSS=VSS prefix=sg13g2_ }
