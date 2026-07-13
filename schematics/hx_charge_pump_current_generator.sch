v {xschem version=3.4.8RC file_version=1.3}
G {}
K {dash=3}
V {}
S {}
F {}
E {}
B 4 -600 -260 -220 360 {dash=3
fill=false}
B 4 160 300 350 490 {dash=3
fill=false}
T {Startup circuit for beta mutliplier} -570 -290 0 0 0.4 0.4 {layer=4}
T {Key observation:
M5 (nmos with resistor attached must have
W/L a few times larger than M4)} -30 30 0 0 0.4 0.4 {}
T {Ultra weak pullup} -490 -200 0 0 0.25 0.25 {}
T {Overrides weak pullup
when activated} -480 150 0 0 0.25 0.25 {}
T {The design is a simple ‘Beta Multiplier’ circuit with resistor which generates a 10uA current.
The output consists of a 10uA current source, and 10uA current sink, which is intended for the charge pump.

A somewhat large variation across temperature is expected for this type of design (it is Proportional to Absolute Temperature (PTAT)),
I got a 40% variation in current from 25 degree C to 125 degree C.
} -580 -480 0 0 0.4 0.4 {}
T {Connnection to resistor sub!,
see PDK example} 170 430 0 0 0.25 0.25 {}
T {The current sink uses cascode to improve the accuracy of the current as voltage
varies at the current_sink node, without it,
the current_sink is observed to be quite off as compared to the current_source,
when they should be identical. 

According to literature, the downside is less voltage headroom,
so it only works well within a certain operating voltage range,
the current steering charge pump design ensures the voltage stays
within this operating range most of the time. Based on simulations,
when using traditional drain switched charge pump without current steering,
the cascode actually makes things worse. } 830 80 0 0 0.4 0.4 {}
N 480 -230 480 -160 {lab=VDD}
N 480 240 480 330 {lab=VSS}
N 520 240 620 240 {lab=#net1}
N 660 240 660 330 {lab=VSS}
N 520 180 520 240 {lab=#net1}
N 480 180 520 180 {lab=#net1}
N 620 -160 620 -90 {lab=node1}
N 660 -130 660 -20 {lab=CURRENT_SOURCE}
N 660 -230 660 -160 {lab=VDD}
N 480 -230 660 -230 {lab=VDD}
N 440 -120 440 -90 {lab=node1}
N 10 -230 480 -230 {lab=VDD}
N -70 -150 -30 -150 {lab=node1}
N 10 -230 10 -150 {lab=VDD}
N -70 160 -30 160 {lab=node0}
N -30 -150 -30 -120 {lab=node1}
N -30 -120 10 -120 {lab=node1}
N 10 -120 440 -120 {lab=node1}
N -70 110 -70 160 {lab=node0}
N -110 110 -70 110 {lab=node0}
N -110 -230 -110 -150 {lab=VDD}
N -110 -230 10 -230 {lab=VDD}
N 10 190 10 230 {lab=#net2}
N 10 160 110 160 {lab=VSS}
N 440 -160 440 -120 {lab=node1}
N 10 330 110 330 {lab=VSS}
N -350 70 -350 140 {lab=node0}
N -350 20 -230 20 {lab=VSS}
N 440 -90 620 -90 {lab=node1}
N -500 20 -500 110 {lab=#net3}
N -500 -230 -110 -230 {lab=VDD}
N -230 330 -110 330 {lab=VSS}
N 400 330 480 330 {lab=VSS}
N -350 -30 10 -30 {lab=node1}
N -350 -30 -350 -10 {lab=node1}
N -350 50 -350 70 {lab=node0}
N -460 140 -350 140 {lab=node0}
N -500 -110 -460 -110 {lab=#net3}
N -460 -150 -460 -110 {lab=#net3}
N -350 70 -110 70 {lab=node0}
N 10 -120 10 -30 {lab=node1}
N -110 -120 -110 70 {lab=node0}
N -660 330 -500 330 {lab=VSS}
N -500 140 -500 330 {lab=VSS}
N -500 -230 -500 -150 {lab=VDD}
N -660 -230 -500 -230 {lab=VDD}
N -230 20 -230 330 {lab=VSS}
N -500 330 -230 330 {lab=VSS}
N -110 70 -110 110 {lab=node0}
N -110 160 -110 330 {lab=VSS}
N -110 110 -110 130 {lab=node0}
N 10 -30 10 130 {lab=node1}
N 110 160 110 330 {lab=VSS}
N -500 -120 -500 -110 {lab=#net3}
N -500 20 -390 20 {lab=#net3}
N -500 -110 -500 20 {lab=#net3}
N 520 70 520 130 {lab=#net4}
N 480 70 520 70 {lab=#net4}
N 780 130 780 330 {lab=VSS}
N 660 330 780 330 {lab=VSS}
N 480 330 660 330 {lab=VSS}
N 400 130 400 330 {lab=VSS}
N 110 330 400 330 {lab=VSS}
N 480 -130 480 70 {lab=#net4}
N 480 70 480 100 {lab=#net4}
N 480 180 480 210 {lab=#net1}
N 480 160 480 180 {lab=#net1}
N 520 130 620 130 {lab=#net4}
N 400 130 480 130 {lab=VSS}
N 660 70 660 100 {lab=CURRENT_SINK}
N 660 160 660 210 {lab=#net5}
N 660 130 780 130 {lab=VSS}
N 10 290 10 330 {lab=VSS}
N -110 330 10 330 {lab=VSS}
C {sg13g2_pr/sg13_lv_pmos.sym} 460 -160 0 0 {name=M4002
l=1u
w=4u
ng=2
m=2
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 640 240 0 0 {name=M4009
l=1u
w=4u
ng=2
m=2
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 500 240 0 1 {name=M4008
l=1u
w=4u
ng=2
m=2
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 640 -160 0 0 {name=M4003
l=1u
w=4u
ng=2
m=2
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -90 -150 0 1 {name=M4000
l=1u
w=4u
ng=2
m=2
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -10 -150 0 0 {name=M4001
l=1u
w=4u
ng=2
m=2
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -90 160 0 1 {name=M4004
l=1u
w=4u
ng=2
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -10 160 0 0 {name=M4005
l=1u
w=4u
ng=2
m=4
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/rppd.sym} 10 260 0 0 {name=R2
w=1e-6
l=32e-6
model=rppd
spiceprefix=X
b=0
m=1
}
C {lab_pin.sym} -110 70 2 0 {name=p1 lab=node0}
C {lab_pin.sym} 10 -30 2 0 {name=p2 lab=node1}
C {sg13g2_pr/sg13_lv_pmos.sym} -480 -150 0 1 {name=M4102
l=2u
w=0.36u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -370 20 0 0 {name=M4100
l=1u
w=4u
ng=2
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -480 140 0 1 {name=M4101
l=1u
w=4u
ng=2
m=4
model=sg13_lv_nmos
spiceprefix=X
}
C {ipin.sym} -660 -230 0 0 {name=p3 lab=VDD}
C {ipin.sym} -660 330 0 0 {name=p4 lab=VSS}
C {opin.sym} 660 -20 0 0 {name=p5 lab=CURRENT_SOURCE}
C {opin.sym} 660 70 0 0 {name=p6 lab=CURRENT_SINK}
C {sg13g2_pr/sub.sym} 240 390 0 0 {name=l6 lab=sub!}
C {sg13g2_pr/ptap1.sym} 240 360 0 0 {name=R4
model=ptap1
spiceprefix=X
w=0.78e-6
l=0.78e-6
}
C {sg13g2_pr/sg13_lv_nmos.sym} 500 130 0 1 {name=M4006
l=1u
w=4u
ng=2
m=2
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 640 130 0 0 {name=M4007
l=1u
w=4u
ng=2
m=2
model=sg13_lv_nmos
spiceprefix=X
}
