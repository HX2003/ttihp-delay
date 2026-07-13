v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 0 -1110 800 -710 {flags=graph
y1=-2.9640875e-06
y2=2.5707521e-05
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=5e-14
x2=1e-07
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0
divx=5
color=7
node=i(vcurmain)}
B 2 0 -690 800 -290 {flags=graph
y1=-1.0984446
y2=3.4453575
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-1.8454305e-09
x2=1.0203463e-07
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0
divx=5
hilight_wave=0
color=8
node=vdd}
T {Ctrl-Click to execute launcher} 20 -260 0 0 0.3 0.3 {layer=11}
T {Startup circuit for beta mutliplier} -1880 -100 0 0 0.4 0.4 {}
T {Simple test setup} -590 150 0 0 0.4 0.4 {}
T {Key observation:
M5 (nmos with resistor attached must have
W/L a few times larger than M4)} -1050 -50 0 0 0.4 0.4 {}
N -590 140 -410 140 {lab=GND}
N -590 -10 -590 20 {lab=#net1}
N -590 -300 -590 -230 {lab=VDD}
N -590 50 -590 140 {lab=GND}
N -550 50 -450 50 {lab=#net1}
N -410 50 -410 140 {lab=GND}
N -410 -70 -410 20 {lab=#net2}
N -550 -10 -550 50 {lab=#net1}
N -590 -10 -550 -10 {lab=#net1}
N -590 -200 -590 -10 {lab=#net1}
N -630 -160 -450 -160 {lab=#net3}
N -450 -230 -450 -160 {lab=#net3}
N -410 -200 -410 -130 {lab=#net4}
N -410 -300 -410 -230 {lab=VDD}
N -590 -300 -410 -300 {lab=VDD}
N -630 -190 -630 -160 {lab=#net3}
N -1060 -300 -590 -300 {lab=VDD}
N -1140 -220 -1100 -220 {lab=#net3}
N -1060 -190 -1060 -140 {lab=#net3}
N -1060 -300 -1060 -220 {lab=VDD}
N -1180 -190 -1180 -140 {lab=#net5}
N -1140 80 -1100 80 {lab=node0}
N -1060 290 -960 290 {lab=GND}
N -1100 -220 -1100 -190 {lab=#net3}
N -1100 -190 -1060 -190 {lab=#net3}
N -1060 -190 -630 -190 {lab=#net3}
N -1180 30 -1180 50 {lab=node0}
N -1140 30 -1140 80 {lab=node0}
N -1180 30 -1140 30 {lab=node0}
N -1180 80 -1180 210 {lab=GND}
N -1180 -300 -1180 -220 {lab=VDD}
N -1600 -300 -1180 -300 {lab=VDD}
N -1060 110 -1060 130 {lab=#net6}
N -1060 80 -960 80 {lab=GND}
N -960 80 -960 290 {lab=GND}
N -630 -230 -630 -190 {lab=#net3}
N -1180 -300 -1060 -300 {lab=VDD}
N -1600 -300 -1600 -220 {lab=VDD}
N -1800 -300 -1600 -300 {lab=VDD}
N -1600 70 -1600 210 {lab=GND}
N -1600 210 -1180 210 {lab=GND}
N -1600 -30 -1600 40 {lab=#net7}
N -1560 -220 -1530 -220 {lab=#net7}
N -1530 -220 -1530 -30 {lab=#net7}
N -1600 -30 -1530 -30 {lab=#net7}
N -1600 -190 -1600 -30 {lab=#net7}
N -1060 -60 -1060 50 {lab=node1}
N -1180 -0 -1180 30 {lab=node0}
N -1560 70 -1360 70 {lab=node0}
N -1360 0 -1180 -0 {lab=node0}
N -1430 -30 -1340 -30 {lab=GND}
N -1530 -30 -1470 -30 {lab=#net7}
N -1430 -60 -1060 -60 {lab=node1}
N -1060 -80 -1060 -60 {lab=node1}
N -1180 -80 -1180 -0 {lab=node0}
N -1360 0 -1360 70 {lab=node0}
N -1430 0 -1360 0 {lab=node0}
N -1180 210 -1180 290 {lab=GND}
N -1060 270 -1060 290 {lab=GND}
N -1180 290 -1060 290 {lab=GND}
N -1060 190 -1060 210 {lab=#net8}
C {code_shown.sym} 20 -100 0 0 {name=MODEL only_toplevel=false format="tcleval( @value )"

value="
  .lib $::MODELS_NGSPICE/cornerCAP.lib cap_typ
  .lib cornerMOSlv.lib mos_tt
  .lib cornerRES.lib res_typ
"



}
C {devices/vsource.sym} -1800 -270 0 0 {name=V2 value="PWL(0ns 0 5ns 1.2)"}
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
C {gnd.sym} -1800 -240 0 0 {name=l71 lab=GND}
C {lab_pin.sym} -1800 -300 0 0 {name=p18 lab=VDD}
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
.ic v(node0)=0
.ic v(node1)=1.2

.control
  save all
  
  * Initialize all nodes to 0V, except for node1
  tran 5p 100n uic

  write [file rootname [file tail [xschem get current_name]]].raw

  * I DID NOT USE THE BELOW, because if an error occured we wouldn't know
  * Automatically close the popup after simulation complete *
  * quit
.endc
)"}
C {gnd.sym} -410 140 0 0 {name=l4 lab=GND}
C {sg13g2_pr/sg13_lv_pmos.sym} -610 -230 0 0 {name=M4002
l=1u
w=4u
ng=2
m=2
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -430 50 0 0 {name=M4007
l=1u
w=4u
ng=2
m=2
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/ammeter.sym} -410 -100 0 0 {name=Vcurmain}
C {sg13g2_pr/sg13_lv_nmos.sym} -570 50 0 1 {name=M4006
l=1u
w=4u
ng=2
m=2
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -430 -230 0 0 {name=M4003
l=1u
w=4u
ng=2
m=2
model=sg13_lv_pmos
spiceprefix=X
}
C {devices/ammeter.sym} -1060 -110 0 0 {name=Vmcur2}
C {sg13g2_pr/sg13_lv_pmos.sym} -1160 -220 0 1 {name=M4000
l=1u
w=4u
ng=2
m=2
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -1080 -220 0 0 {name=M4001
l=1u
w=4u
ng=2
m=2
model=sg13_lv_pmos
spiceprefix=X
}
C {gnd.sym} -1180 290 0 0 {name=l6 lab=GND}
C {devices/ammeter.sym} -1180 -110 0 0 {name=Vmcur}
C {sg13g2_pr/sg13_lv_nmos.sym} -1160 80 0 1 {name=M4004
l=1u
w=4u
ng=2
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -1080 80 0 0 {name=M4005
l=1u
w=4u
ng=2
m=4
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/rppd.sym} -1060 160 0 0 {name=R4
w=1e-6
l=16e-6
model=rppd
spiceprefix=X
b=0
m=1
}
C {lab_pin.sym} -1180 0 2 0 {name=p1 lab=node0}
C {lab_pin.sym} -1060 -60 2 0 {name=p2 lab=node1}
C {sg13g2_pr/sg13_lv_pmos.sym} -1580 -220 0 1 {name=M4102
l=2u
w=0.36u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {gnd.sym} -1340 -30 3 0 {name=l1 lab=GND}
C {sg13g2_pr/sg13_lv_nmos.sym} -1450 -30 0 0 {name=M4100
l=1u
w=4u
ng=2
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -1580 70 0 1 {name=M4101
l=1u
w=4u
ng=2
m=4
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/rppd.sym} -1060 240 0 0 {name=R1
w=1e-6
l=16e-6
model=rppd
spiceprefix=X
b=0
m=1
}
C {sg13g2_pr/sub.sym} -870 300 0 0 {name=l2 lab=sub!}
C {sg13g2_pr/ptap1.sym} -870 270 0 0 {name=R2
model=ptap1
spiceprefix=X
w=0.78e-6
l=0.78e-6
}
C {devices/gnd.sym} -870 240 2 0 {name=l3 lab=GND}
