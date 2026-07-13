v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 0 -690 800 -290 {flags=graph
y1=-1.4139864
y2=3.1298157
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=7.9898932e-08
x2=8.0210074e-08
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0
divx=5
hilight_wave=0
color=8
node=vdd}
B 2 -830 -1120 -30 -720 {flags=graph
y1=-0.32531444
y2=1.6675244
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=7.9898932e-08
x2=8.0210074e-08
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0
divx=5
color="4 7"
node="up
down"}
B 2 0 -1120 800 -720 {flags=graph
y1=-6.5931074e-05
y2=7.3378051e-05
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=7.9898932e-08
x2=8.0210074e-08
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0
divx=5
color="4 7"
node="i(vchargeup)
i(vchargedown)"
}
B 2 0 -1560 800 -1160 {flags=graph
y1=-1.6549979e-05
y2=1.5590261e-05
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=7.9898932e-08
x2=8.0210074e-08
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0
divx=5
color=8
node=i(vcharge)}
B 2 -830 -1550 -30 -1150 {flags=graph
y1=-0.32531444
y2=1.6675244
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=7.9898932e-08
x2=8.0210074e-08
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0
divx=5
color=18
node=cap}
B 4 -2630 -170 -2250 450 {dash=3
fill=false}
B 4 -1870 390 -1680 580 {dash=3
fill=false}
B 4 -1660 110 -1210 450 {dash=3
fill=false}
T {Ctrl-Click to execute launcher} 20 -260 0 0 0.3 0.3 {layer=11}
T {Simple test setup

The current source is about 10uA,
which stays the same, regardless of voltage at current_source node,
only above 1.0V, does current become significantly lesser.

The current sink is about 10uA,
which stays the same, regardless of voltage at current_sink node,
only below 0.3V, does current become significantly lesser.

The current sink uses cascode, without it, the current is
observed to be quite off.} -780 390 0 0 0.25 0.25 {}
T {Tips:
1. Ctrl + Left Click the first arrow to Simulate NGSPICE
2. Ctrl + Left Click the second arrow to Annotate and load waves
3. Press B while on the graph, the voltages and current will be back annotated
4. Press E while on the charge_pump_current_generator block, and you will
   go into it, the back annotation still works, then press Ctrl + E, to go back.} -1300 -410 0 0 0.4 0.4 {}
T {Startup circuit for beta mutliplier} -2600 20 0 0 0.4 0.4 {}
T {Key observation:
M5 (nmos with resistor attached must have
W/L a few times larger than M4)} -2060 120 0 0 0.4 0.4 {}
T {Ultra weak pullup} -2520 -110 0 0 0.25 0.25 {}
T {Overrides weak pullup
when activated} -2510 240 0 0 0.25 0.25 {}
T {Connnection to resistor sub!,
see PDK example} -1860 520 0 0 0.25 0.25 {}
N -1180 -230 -1120 -230 {lab=#net1}
N -1070 100 -1010 100 {lab=#net2}
N -950 100 -910 100 {lab=cap}
N -910 100 -910 120 {lab=cap}
N -910 180 -910 420 {lab=GND}
N -1390 -230 -1260 -230 {lab=up}
N -1390 490 -1120 490 {lab=down}
N -1550 -140 -1550 -70 {lab=VDD}
N -1550 330 -1550 420 {lab=GND}
N -1370 330 -1370 420 {lab=GND}
N -2020 -140 -1550 -140 {lab=VDD}
N -2100 -60 -2060 -60 {lab=node1}
N -2020 -140 -2020 -60 {lab=VDD}
N -2100 250 -2060 250 {lab=node0}
N -2060 -60 -2060 -30 {lab=node1}
N -2060 -30 -2020 -30 {lab=node1}
N -2020 -30 -1590 -30 {lab=node1}
N -2100 200 -2100 250 {lab=node0}
N -2140 200 -2100 200 {lab=node0}
N -2140 -140 -2140 -60 {lab=VDD}
N -2140 -140 -2020 -140 {lab=VDD}
N -2020 280 -2020 300 {lab=#net3}
N -2020 250 -1920 250 {lab=GND}
N -1590 -70 -1590 -30 {lab=node1}
N -2140 420 -1920 420 {lab=GND}
N -2380 160 -2380 230 {lab=node0}
N -2380 110 -2260 110 {lab=GND}
N -2530 110 -2530 200 {lab=#net4}
N -2530 -140 -2140 -140 {lab=VDD}
N -2260 420 -2140 420 {lab=GND}
N -1630 420 -1550 420 {lab=GND}
N -2380 60 -2020 60 {lab=node1}
N -2380 60 -2380 80 {lab=node1}
N -2380 140 -2380 160 {lab=node0}
N -2490 230 -2380 230 {lab=node0}
N -2530 -20 -2490 -20 {lab=#net4}
N -2490 -60 -2490 -20 {lab=#net4}
N -2380 160 -2140 160 {lab=node0}
N -2020 -30 -2020 60 {lab=node1}
N -2140 -30 -2140 160 {lab=node0}
N -2690 420 -2530 420 {lab=GND}
N -2530 230 -2530 420 {lab=GND}
N -2530 -140 -2530 -60 {lab=VDD}
N -2690 -140 -2530 -140 {lab=VDD}
N -2260 110 -2260 420 {lab=GND}
N -2530 420 -2260 420 {lab=GND}
N -2140 160 -2140 200 {lab=node0}
N -2140 250 -2140 420 {lab=GND}
N -2140 200 -2140 220 {lab=node0}
N -2020 60 -2020 220 {lab=node1}
N -1920 250 -1920 420 {lab=GND}
N -2530 -30 -2530 -20 {lab=#net4}
N -2530 110 -2420 110 {lab=#net4}
N -2530 -20 -2530 110 {lab=#net4}
N -1510 220 -1410 220 {lab=#net5}
N -1510 160 -1510 220 {lab=#net5}
N -1550 160 -1510 160 {lab=#net5}
N -1250 220 -1250 420 {lab=GND}
N -1370 420 -1250 420 {lab=GND}
N -1550 420 -1370 420 {lab=GND}
N -1630 220 -1630 420 {lab=GND}
N -1920 420 -1630 420 {lab=GND}
N -1550 -40 -1550 160 {lab=#net5}
N -1370 250 -1370 300 {lab=#net6}
N -1370 220 -1250 220 {lab=GND}
N -1630 220 -1550 220 {lab=GND}
N -1550 250 -1550 300 {lab=#net7}
N -1550 160 -1550 190 {lab=#net5}
N -2690 160 -2690 420 {lab=GND}
N -2690 -140 -2690 100 {lab=VDD}
N -1070 330 -1070 420 {lab=GND}
N -1190 220 -1110 220 {lab=#net5}
N -950 220 -950 420 {lab=GND}
N -1070 220 -950 220 {lab=GND}
N -1250 420 -1070 420 {lab=GND}
N -1410 160 -1410 220 {lab=#net5}
N -1410 160 -1190 160 {lab=#net5}
N -1190 160 -1190 220 {lab=#net5}
N -1370 10 -1370 190 {lab=#net8}
N -1410 10 -1370 10 {lab=#net8}
N -1410 -80 -1410 -50 {lab=#net9}
N -1410 -140 -1070 -140 {lab=VDD}
N -1070 -140 -1070 -110 {lab=VDD}
N -1410 -140 -1410 -110 {lab=VDD}
N -1550 -140 -1410 -140 {lab=VDD}
N -1370 -20 -1370 10 {lab=#net8}
N -1370 -20 -1110 -20 {lab=#net8}
N -1070 -20 -960 -20 {lab=VDD}
N -1450 -20 -1410 -20 {lab=VDD}
N -1070 -80 -1070 -50 {lab=#net10}
N -1120 -230 -1120 -110 {lab=#net1}
N -1120 -110 -1110 -110 {lab=#net1}
N -1070 10 -1070 40 {lab=#net11}
N -1070 160 -1070 190 {lab=#net12}
N -950 420 -910 420 {lab=GND}
N -1070 420 -950 420 {lab=GND}
N -1120 330 -1120 490 {lab=down}
N -1120 330 -1110 330 {lab=down}
N -1070 250 -1070 300 {lab=#net13}
N -2920 420 -2690 420 {lab=GND}
N -3020 420 -2980 420 {lab=VSS}
N -720 490 -700 490 {lab=down}
N -730 220 -720 220 {lab=down}
N -770 190 -770 220 {lab=VDD}
N -720 220 -720 490 {lab=down}
N -1120 490 -720 490 {lab=down}
N -1070 -80 -810 -80 {lab=#net10}
N -810 -140 -810 -80 {lab=#net10}
N -920 -140 -810 -140 {lab=#net10}
N -1260 -230 -1260 -180 {lab=up}
N -1260 -180 -960 -180 {lab=up}
N -960 -180 -960 -110 {lab=up}
C {code_shown.sym} 20 -100 0 0 {name=MODEL only_toplevel=false format="tcleval( @value )"

value="
  .lib $::MODELS_NGSPICE/cornerCAP.lib cap_typ
  .lib cornerMOSlv.lib mos_tt
  .lib cornerRES.lib res_typ
"



}
C {devices/vsource.sym} -2690 130 0 0 {name=V2 value="PWL(0ns 0 5ns 1.2)"}
C {devices/launcher.sym} 70 -160 0 0 {name=h1
descr="Ctrl + Left Click to Annotate and load waves" 
tclcommand="
xschem annotate_op
xschem raw_read $netlist_dir/[file rootname [file tail [xschem get current_name]]].raw tran
xschem setprop rect 2 0 fullxzoom
"
}
C {launcher.sym} 72.33626929682691 -220 0 0 {name=h3
descr="Ctrl + Left Click to Simulate NGSPICE"
tclcommand="
# Setup the default simulation commands if not already set up
# for example by already launched simulations.
set_sim_defaults
puts $sim(spice,1,cmd) 

# Change the Xyce command. In the spice category there are currently
# 5 commands (0, 1, 2, 3, 4). Command 3 is the Xyce batch
# you can get the number by querying $sim(spice,n)
set sim(spice,1,cmd) \{ngspice  \\"$N\\" -a\}

# change the simulator to be used (Xyce)
set sim(spice,default) 0

# Create FET and BIP .save file
mkdir -p $netlist_dir
write_data [save_params] $netlist_dir/[file rootname [file tail [xschem get current_name]]].save

# Generate netlist
xschem netlist

# Run simulation
simulate

# While its nice to be able to wait for the simulation to complete,
# then automatically annotate and load waves,
# The following waits for the simulation popup to close,
# so if its not closed, then it will keep waiting

# set id1 [simulate]
# vwait execute(exitcode,$id1)
# put "done!"

"
}
C {gnd.sym} -2690 420 0 0 {name=l71 lab=GND}
C {code_shown.sym} 20 20 0 0 {name=NGSPICE only_toplevel=true 
value="tcleval(
* Note! Since this script is wrapped in tcleval,
* code that is written in square brackets are in TCL scripting language
*
* The rest of the code is in spice scripting language

* Disabled because of computational cost/memory usage for big designs
* Save FET params like ids, gm, gds, vth, vgs, vdss, vds, cgg, cgsol, cgdol
* for annotation later (easier debugging and analysis)
.include [file rootname [file tail [xschem get current_name]]].save

* Customized code to include spice model for simulation

.include sg13g2_stdcell.spice
.options temp=25

* For a 'Beta Multiplier' circuit,
* zero current is a possible steady-state operating point,
* so lets force this initial condition, and see if start-up circuit
* works. (Without start-up circuit, the current stays at zero as expected)
.ic v(x1.node0)=0
.ic v(x1.node1)=1.2

* Make capacitor 0.6V
.ic v(cap)=0.6

.control
  save all
  
  * Initialize all nodes to 0V, except for node1
  tran 2p 100n uic

  write [file rootname [file tail [xschem get current_name]]].raw

  * I DID NOT USE THE BELOW, because if an error occured we wouldn't know
  * Automatically close the popup after simulation complete *
  * quit
.endc
)"}
C {devices/vsource.sym} -1390 -200 0 0 {name=V4 value="PULSE(0 1.2 0n 100p 100p 5ns 20ns)"}
C {lab_pin.sym} -1390 -230 0 0 {name=p8 lab=up}
C {sg13g2_stdcells/sg13g2_inv_1.sym} -1220 -230 0 0 {name=x7 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {devices/ammeter.sym} -1070 70 0 0 {name=Vchargeup}
C {devices/ammeter.sym} -1070 130 0 0 {name=Vchargedown}
C {devices/ammeter.sym} -980 100 3 0 {name=Vcharge}
C {lab_pin.sym} -1390 490 0 0 {name=p1 lab=down}
C {capa.sym} -910 150 0 0 {name=C1
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} -910 100 2 0 {name=p2 lab=cap}
C {gnd.sym} -1390 -170 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} -1390 520 0 0 {name=V1 value="PULSE(0 1.2 10n 100p 100p 5ns 20ns)"}
C {gnd.sym} -1390 550 0 0 {name=l3 lab=GND}
C {lab_pin.sym} -2690 -140 0 0 {name=p3 lab=VDD}
C {sg13g2_pr/sg13_lv_pmos.sym} -1570 -70 0 0 {name=M4002
l=1u
w=4u
ng=2
m=2
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -1390 330 0 0 {name=M4007
l=1u
w=2u
ng=2
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -1530 330 0 1 {name=M4006
l=1u
w=2u
ng=2
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -2120 -60 0 1 {name=M4000
l=1u
w=4u
ng=2
m=2
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -2040 -60 0 0 {name=M4001
l=1u
w=4u
ng=2
m=2
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -2120 250 0 1 {name=M4004
l=1u
w=4u
ng=2
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -2040 250 0 0 {name=M4005
l=1u
w=4u
ng=2
m=4
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/rppd.sym} -2020 330 0 0 {name=R2
w=1e-6
l=16e-6
model=rppd
spiceprefix=X
b=0
m=1
}
C {lab_pin.sym} -2140 160 2 0 {name=p5 lab=node0}
C {lab_pin.sym} -2020 60 2 0 {name=p6 lab=node1}
C {sg13g2_pr/sg13_lv_pmos.sym} -2510 -60 0 1 {name=M4102
l=2u
w=0.36u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -2400 110 0 0 {name=M4100
l=1u
w=4u
ng=2
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -2510 230 0 1 {name=M4101
l=1u
w=4u
ng=2
m=4
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/rppd.sym} -2020 390 0 0 {name=R1
w=1e-6
l=16e-6
model=rppd
spiceprefix=X
b=0
m=1
}
C {sg13g2_pr/sub.sym} -1790 480 0 0 {name=l6 lab=sub!}
C {sg13g2_pr/ptap1.sym} -1790 450 0 0 {name=R4
model=ptap1
spiceprefix=X
w=0.78e-6
l=0.78e-6
}
C {sg13g2_pr/sg13_lv_nmos.sym} -1530 220 0 1 {name=M4008
l=1u
w=4u
ng=2
m=2
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -1390 220 0 0 {name=M4009
l=1u
w=4u
ng=2
m=2
model=sg13_lv_nmos
spiceprefix=X
}
C {lab_pin.sym} -1510 330 2 0 {name=p7 lab=VDD}
C {lab_pin.sym} -1410 330 0 0 {name=p9 lab=VDD}
C {sg13g2_pr/sg13_lv_nmos.sym} -1090 330 0 0 {name=M1
l=1u
w=2u
ng=2
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -1090 220 0 0 {name=M2
l=1u
w=4u
ng=2
m=2
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -1390 -20 0 1 {name=M3
l=1u
w=4u
ng=2
m=2
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -1090 -20 0 0 {name=M4
l=1u
w=4u
ng=2
m=2
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -1390 -110 0 1 {name=M5
l=1u
w=2u
ng=2
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -1090 -110 0 0 {name=M6
l=1u
w=2u
ng=2
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {gnd.sym} -1370 -110 3 0 {name=l4 lab=GND}
C {lab_pin.sym} -1450 -20 0 0 {name=p11 lab=VDD}
C {lab_pin.sym} -960 -20 2 0 {name=p12 lab=VDD}
C {lab_pin.sym} -3020 420 0 0 {name=p4 lab=VSS}
C {res.sym} -2950 420 1 0 {name=R3
value=0.00001
footprint=1206
device=resistor
m=1}
C {sg13g2_pr/sg13_lv_pmos.sym} -750 220 2 0 {name=M7
l=1u
w=2u
ng=2
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {lab_pin.sym} -770 190 2 0 {name=p10 lab=VDD}
C {sg13g2_pr/sg13_lv_pmos.sym} -940 -110 0 0 {name=M8
l=1u
w=2u
ng=2
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {lab_pin.sym} -920 -110 2 0 {name=p13 lab=VDD}
