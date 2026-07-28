v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 0 -690 800 -290 {flags=graph
y1=-0.88138572
y2=1.8344686
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-4.3020324e-11
x2=1.6849797e-09
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0
divx=5
hilight_wave=0
color="8 7"
node="sig2
sig3"}
T {Ctrl-Click to execute launcher} 20 -260 0 0 0.3 0.3 {layer=11}
N -890 -250 -860 -250 {
lab=#net1}
N -890 -350 -860 -350 {
lab=#net1}
N -820 -300 -820 -280 {
lab=sig2}
N -730 -250 -700 -250 {
lab=sig2}
N -730 -350 -700 -350 {
lab=sig2}
N -730 -300 -730 -250 {
lab=sig2}
N -730 -350 -730 -300 {
lab=sig2}
N -660 -300 -660 -280 {
lab=sig3}
N -820 -300 -730 -300 {lab=sig2}
N -820 -320 -820 -300 {
lab=sig2}
N -660 -320 -660 -300 {
lab=sig3}
N -890 -310 -890 -250 {lab=#net1}
N -550 -250 -520 -250 {
lab=sig3}
N -550 -350 -520 -350 {
lab=sig3}
N -550 -300 -550 -250 {
lab=sig3}
N -550 -350 -550 -300 {
lab=sig3}
N -480 -300 -480 -280 {
lab=#net2}
N -660 -300 -550 -300 {lab=sig3}
N -1010 -280 -1010 -220 {lab=GND}
N -1190 -340 -1010 -340 {lab=VDD}
N -1010 -380 -1010 -340 {lab=VDD}
N -480 -380 -300 -380 {lab=VDD}
N -1190 -280 -1010 -280 {lab=GND}
N -370 -250 -340 -250 {
lab=#net2}
N -370 -350 -340 -350 {
lab=#net2}
N -370 -300 -370 -250 {
lab=#net2}
N -370 -350 -370 -300 {
lab=#net2}
N -300 -320 -300 -280 {
lab=#net3}
N -480 -300 -370 -300 {lab=#net2}
N -480 -320 -480 -300 {
lab=#net2}
N -480 -220 -300 -220 {lab=GND}
N -980 -310 -980 -280 {lab=#net1}
N -980 -310 -890 -310 {lab=#net1}
N -890 -350 -890 -310 {lab=#net1}
N -820 -380 -820 -350 {lab=VDD}
N -1010 -380 -820 -380 {lab=VDD}
N -660 -380 -660 -350 {lab=VDD}
N -820 -380 -660 -380 {lab=VDD}
N -480 -380 -480 -350 {lab=VDD}
N -660 -380 -480 -380 {lab=VDD}
N -300 -380 -300 -350 {lab=VDD}
N -300 -250 -300 -220 {lab=GND}
N -480 -250 -480 -220 {lab=GND}
N -660 -220 -480 -220 {lab=GND}
N -660 -250 -660 -220 {lab=GND}
N -820 -220 -660 -220 {lab=GND}
N -820 -250 -820 -220 {lab=GND}
N -1010 -220 -820 -220 {lab=GND}
C {code_shown.sym} 20 -100 0 0 {name=MODEL only_toplevel=false format="tcleval( @value )"

value="
  .lib $::MODELS_NGSPICE/cornerCAP.lib cap_typ
  .lib cornerMOSlv.lib mos_tt
  .lib cornerRES.lib res_typ
"



}
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


.control
  save all

  tran 1p 2n

  write [file rootname [file tail [xschem get current_name]]].raw

  * I DID NOT USE THE BELOW, because if an error occured we wouldn't know
  * Automatically close the popup after simulation complete *
  * quit
.endc
)"}
C {sg13g2_pr/sg13_lv_nmos.sym} -840 -250 0 0 {name=M12
l=0.13u
w=0.74u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -840 -350 0 0 {name=M15
l=0.13u
w=1.12u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -680 -250 0 0 {name=M16
l=0.13u
w=0.74u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -680 -350 0 0 {name=M17
l=0.13u
w=1.12u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {devices/vsource.sym} -1190 -310 0 0 {name=V2 value="PWL(0ns 0 0.1ns 1.2)"}
C {gnd.sym} -1190 -280 0 0 {name=l2 lab=GND}
C {lab_pin.sym} -1190 -340 2 0 {name=p13 lab=VDD}
C {sg13g2_pr/sg13_lv_nmos.sym} -500 -250 0 0 {name=M1
l=0.13u
w=0.74u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -500 -350 0 0 {name=M2
l=0.13u
w=1.12u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {lab_pin.sym} -730 -300 2 0 {name=p1 lab=sig2}
C {lab_pin.sym} -550 -300 2 0 {name=p2 lab=sig3}
C {sg13g2_pr/sg13_lv_nmos.sym} -320 -250 0 0 {name=M3
l=0.13u
w=0.74u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -320 -350 0 0 {name=M4
l=0.13u
w=1.12u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {devices/vsource.sym} -980 -250 0 0 {name=V1 value="PWL(0ns 0 1ns 0 1.1ns 1.2)"}
