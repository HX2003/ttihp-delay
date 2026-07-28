v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 0 -690 800 -290 {flags=graph
y1=-5.0731551e-08
y2=1.8323593e-07
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0.8
x2=1.2
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0
divx=5
hilight_wave=0
color=8
node=i(vcurmain)
sim_type=dc}
B 2 0 -1160 800 -760 {flags=graph
y1=-2.8756161e-08
y2=1.1735267e-07
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0.73502849
x2=1.5644684
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0
divx=5
hilight_wave=0
color=8
node=i(vcurmain)
sim_type=dc}
T {Ctrl-Click to execute launcher} 20 -260 0 0 0.3 0.3 {layer=11}
T {Todo startup circuit
for beta mutliplier} -1420 -90 0 0 0.4 0.4 {}
T {Simple test setup, voltage on drain pin
is not considered here would could affect the current too} -600 180 0 0 0.4 0.4 {}
N -1120 -220 -1100 -220 {lab=vbiasp}
N -1230 -300 -1230 -220 {lab=VDD}
N -1180 -300 -1180 -250 {lab=VDD}
N -1230 -300 -1180 -300 {lab=VDD}
N -1060 -220 -970 -220 {lab=VDD}
N -970 -300 -970 -220 {lab=VDD}
N -1060 -300 -970 -300 {lab=VDD}
N -1230 -220 -1180 -220 {lab=VDD}
N -1120 -220 -1120 -160 {lab=vbiasp}
N -1120 -160 -1060 -160 {lab=vbiasp}
N -1140 -220 -1120 -220 {lab=vbiasp}
N -870 -300 -870 -250 {lab=VDD}
N -970 -300 -870 -300 {lab=VDD}
N -1060 -160 -910 -160 {lab=vbiasp}
N -910 -220 -910 -160 {lab=vbiasp}
N -1180 -40 -1180 -20 {lab=vbiasn}
N -1120 10 -1100 10 {lab=vbiasn}
N -1120 -40 -1120 10 {lab=vbiasn}
N -1140 10 -1120 10 {lab=vbiasn}
N -1180 -40 -1120 -40 {lab=vbiasn}
N -1260 10 -1180 10 {lab=GND}
N -1260 10 -1260 140 {lab=GND}
N -1060 -190 -1060 -160 {lab=vbiasp}
N -1060 50 -1060 60 {lab=#net1}
N -1060 120 -1060 140 {lab=GND}
N -1180 40 -1180 140 {lab=GND}
N -1060 50 -870 50 {lab=#net1}
N -1060 40 -1060 50 {lab=#net1}
N -870 30 -870 50 {lab=#net1}
N -870 -50 -870 -30 {lab=#net2}
N -930 0 -910 0 {lab=#net3}
N -930 -80 -930 0 {lab=#net3}
N -930 -80 -910 -80 {lab=#net3}
N -1020 90 -770 90 {lab=#net3}
N -870 -130 -770 -130 {lab=#net3}
N -870 -130 -870 -110 {lab=#net3}
N -870 -190 -870 -130 {lab=#net3}
N -770 -130 -770 90 {lab=#net3}
N -930 -130 -870 -130 {lab=#net3}
N -930 -130 -930 -80 {lab=#net3}
N -1140 90 -1060 90 {lab=GND}
N -1140 90 -1140 140 {lab=GND}
N -1180 140 -1140 140 {lab=GND}
N -1060 10 -1010 10 {lab=GND}
N -1060 -300 -1060 -250 {lab=VDD}
N -1180 -300 -1060 -300 {lab=VDD}
N -870 -220 -820 -220 {lab=VDD}
N -820 -300 -820 -220 {lab=VDD}
N -870 -300 -820 -300 {lab=VDD}
N -870 -80 -820 -80 {lab=GND}
N -870 0 -820 0 {lab=GND}
N -1260 140 -1180 140 {lab=GND}
N -1380 -300 -1230 -300 {lab=VDD}
N -1060 -160 -1060 -140 {lab=vbiasp}
N -1060 -80 -1060 -20 {lab=#net4}
N -1180 -190 -1180 -140 {lab=#net5}
N -1180 -80 -1180 -40 {lab=vbiasn}
N -1140 140 -1060 140 {lab=GND}
N -590 140 -410 140 {lab=GND}
N -820 -300 -590 -300 {lab=VDD}
N -590 -10 -590 20 {lab=#net6}
N -590 -300 -590 -230 {lab=VDD}
N -1060 140 -590 140 {lab=GND}
N -590 50 -590 140 {lab=GND}
N -550 50 -450 50 {lab=#net6}
N -410 50 -410 140 {lab=GND}
N -410 -70 -410 20 {lab=#net7}
N -630 -230 -630 -160 {lab=vbiasp}
N -550 -10 -550 50 {lab=#net6}
N -590 -10 -550 -10 {lab=#net6}
N -590 -200 -590 -10 {lab=#net6}
N -910 -160 -630 -160 {lab=vbiasp}
N -630 -160 -450 -160 {lab=vbiasp}
N -450 -230 -450 -160 {lab=vbiasp}
N -410 -200 -410 -130 {lab=#net8}
N -410 -300 -410 -230 {lab=VDD}
N -590 -300 -410 -300 {lab=VDD}
C {code_shown.sym} 20 -100 0 0 {name=MODEL only_toplevel=false format="tcleval( @value )"

value="
  .lib $::MODELS_NGSPICE/cornerCAP.lib cap_typ
  .lib cornerMOSlv.lib mos_tt
  .lib cornerRES.lib res_typ
"



}
C {devices/vsource.sym} -1380 -270 0 0 {name=Vdd}
C {devices/launcher.sym} 70 -160 0 0 {name=h1
descr="Ctrl + Left Click to Annotate and load waves [DC Analysis]" 
tclcommand="
xschem annotate_op
xschem raw_read $netlist_dir/[file rootname [file tail [xschem get current_name]]].raw dc
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
C {gnd.sym} -1380 -240 0 0 {name=l71 lab=GND}
C {devices/ammeter.sym} -1060 -110 0 0 {name=Vmcur2}
C {lab_pin.sym} -1380 -300 0 0 {name=p18 lab=VDD}
C {sg13g2_pr/sg13_lv_nmos.sym} -1160 10 0 1 {name=M15
l=0.4u
w=2u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -1160 -220 0 1 {name=M1
l=0.4u
w=2u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -1080 -220 0 0 {name=M33
l=0.4u
w=2u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -890 -220 0 0 {name=M53
l=0.4u
w=2u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -1080 10 0 0 {name=M55
l=0.4u
w=2u
ng=1
m=8
model=sg13_lv_nmos
spiceprefix=X
}
C {gnd.sym} -1180 140 0 0 {name=l6 lab=GND}
C {sg13g2_pr/sg13_lv_nmos.sym} -1040 90 0 1 {name=M56
l=2u
w=0.8u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -890 0 0 0 {name=M57
l=1u
w=0.4u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -890 -80 0 0 {name=M58
l=1u
w=0.4u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {gnd.sym} -1010 10 0 0 {name=l7 lab=GND}
C {gnd.sym} -820 -80 0 0 {name=l3 lab=GND}
C {gnd.sym} -820 0 0 0 {name=l5 lab=GND}
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

.options temp=125

.control
  save all
  
  op

  write [file rootname [file tail [xschem get current_name]]].raw

  set appendwrite
  dc Vdd 0.8 1.2 0.01

  write [file rootname [file tail [xschem get current_name]]].raw


  * I DID NOT USE THE BELOW, because if an error occured we wouldn't know
  * Automatically close the popup after simulation complete *
  * quit
.endc
)"}
C {devices/ammeter.sym} -1180 -110 0 0 {name=Vmcur}
C {gnd.sym} -410 140 0 0 {name=l4 lab=GND}
C {sg13g2_pr/sg13_lv_pmos.sym} -610 -230 0 0 {name=M29
l=1.5u
w=2u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -430 50 0 0 {name=M30
l=1.5u
w=2u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/ammeter.sym} -410 -100 0 0 {name=Vcurmain}
C {lab_pin.sym} -1120 -40 0 1 {name=p1 lab=vbiasn}
C {lab_pin.sym} -990 -160 0 1 {name=p2 lab=vbiasp}
C {sg13g2_pr/sg13_lv_nmos.sym} -570 50 0 1 {name=M2
l=1.5u
w=2u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -430 -230 0 0 {name=M3
l=1.5u
w=2u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
