v {xschem version=3.4.8RC file_version=1.3}
G {}
K {dash=3}
V {}
S {}
F {}
E {}
N -50 -30 20 -30 {lab=SIGP}
N -50 30 60 30 {lab=VSS}
N 60 -60 60 30 {lab=VSS}
C {ipin.sym} -50 30 0 0 {name=p4 lab=VSS}
C {iopin.sym} -50 -30 2 0 {name=p5 lab=SIGP}
C {sg13g2_pr/sg13_lv_nmos.sym} 40 -30 0 0 {name=M1
l=7u
w=56u
ng=8
m=2
model=sg13_lv_nmos
spiceprefix=X
}
