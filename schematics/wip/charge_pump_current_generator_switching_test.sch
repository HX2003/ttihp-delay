v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 0 -770 800 -370 {flags=graph
y1=-0.44339224
y2=1.8830344
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=5e-14
x2=2e-07
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0
divx=5
hilight_wave=0
color=8
node=vdd}
B 2 -830 -1200 -30 -800 {flags=graph
y1=-0.32531444
y2=1.6675244
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1.0883713e-07
x2=2.0703592e-07
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0
divx=5
color="4 7"
node="up
down"}
B 2 0 -1200 800 -800 {flags=graph
y1=-2.6484322e-05
y2=1.9925297e-05
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1.0883713e-07
x2=2.0703592e-07
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
B 2 0 -1640 800 -1240 {flags=graph
y1=-2.2901526e-05
y2=1.8158732e-05
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1.0883713e-07
x2=2.0703592e-07
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0
divx=5
color=8
node=i(vcharge)}
B 2 -830 -1630 -30 -1230 {flags=graph
y1=-0.32531444
y2=1.6675244
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1.0883713e-07
x2=2.0703592e-07
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0
divx=5
color=18
node=cap}
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
T {Ctrl-Click below to run simulations} 20 -250 0 0 0.3 0.3 {layer=11}
T {Ctrl-Click below to toggle between using post-layout netlist (with parasitics) from .spice, versus using schematic from .sch} 20 -350 0 0 0.3 0.3 {layer=11}
T {Xyce simulator is partially supported, but I did not fully port over everything.} 650 -250 0 0 0.3 0.3 {layer=11}
N -1430 50 -1280 50 {lab=VDD}
N -1290 70 -1280 70 {lab=GND}
N -1290 70 -1290 110 {lab=GND}
N -400 80 -340 80 {lab=#net1}
N -1030 70 -1030 370 {lab=#net2}
N -400 280 -240 280 {lab=GND}
N -280 80 -240 80 {lab=cap}
N -240 80 -240 100 {lab=cap}
N -400 -150 -260 -150 {lab=VDD}
N -1660 110 -1290 110 {lab=GND}
N -1760 110 -1720 110 {lab=VSS}
N -1030 -220 -1030 50 {lab=#net3}
N -400 -220 -400 -180 {lab=#net4}
N -400 310 -400 370 {lab=#net2}
N -520 -220 -400 -220 {lab=#net4}
N -520 -10 -460 -10 {lab=VDD}
N -530 180 -470 180 {lab=GND}
N -600 180 -570 180 {lab=#net5}
N -710 180 -710 280 {lab=down}
N -710 180 -680 180 {lab=down}
N -710 280 -440 280 {lab=down}
N -530 370 -400 370 {lab=#net2}
N -520 -220 -520 -40 {lab=#net4}
N -530 210 -530 370 {lab=#net2}
N -400 140 -400 250 {lab=#net6}
N -240 150 -240 280 {lab=GND}
N -820 -220 -520 -220 {lab=#net4}
N -580 -150 -440 -150 {lab=#net7}
N -400 -120 -400 20 {lab=#net8}
N -950 180 -880 180 {lab=#net9}
N -720 180 -710 180 {lab=down}
N -950 -150 -920 -150 {lab=#net10}
N -1030 370 -530 370 {lab=#net2}
N -700 -150 -660 -150 {lab=up}
N -700 -150 -700 -10 {lab=up}
N -760 -150 -700 -150 {lab=up}
N -700 -10 -560 -10 {lab=up}
N -1030 -220 -880 -220 {lab=#net3}
C {devices/vsource.sym} -1430 80 0 0 {name=V2 value="PWL(0ns 0 5ns 1.2)"}
C {gnd.sym} -1430 110 0 0 {name=l71 lab=GND}
C {/home/hx2003/Desktop/delayline/charge_pump_current_generator.sym} -1160 60 0 0 {name=x1
}
C {devices/vsource.sym} -950 -120 0 0 {name=V4 value="PULSE(0 1.2 0n 100p 100p 5ns 20ns)"}
C {sg13g2_pr/sg13_lv_nmos.sym} -420 280 0 0 {name=M3101
l=0.2u
w=0.4u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -420 -150 0 0 {name=M3100
l=0.2u
w=0.4u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {lab_pin.sym} -700 -150 0 0 {name=p8 lab=up}
C {devices/ammeter.sym} -400 50 0 0 {name=Vchargeup}
C {devices/ammeter.sym} -400 110 0 0 {name=Vchargedown}
C {devices/ammeter.sym} -310 80 3 0 {name=Vcharge}
C {lab_pin.sym} -710 280 0 0 {name=p1 lab=down}
C {gnd.sym} -290 280 0 0 {name=l1 lab=GND}
C {capa.sym} -240 130 0 0 {name=C1
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} -240 80 2 0 {name=p2 lab=cap}
C {gnd.sym} -950 -90 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} -950 210 0 0 {name=V1 value="PULSE(0.0 1.2 10n 100p 100p 5ns 20ns)"}
C {gnd.sym} -950 240 0 0 {name=l3 lab=GND}
C {lab_pin.sym} -1430 50 0 0 {name=p3 lab=VDD}
C {lab_pin.sym} -260 -150 2 0 {name=p4 lab=VDD}
C {lab_pin.sym} -1760 110 0 0 {name=p5 lab=VSS}
C {res.sym} -1690 110 1 0 {name=R1
value=0.00001
footprint=1206
device=resistor
m=1}
C {lab_pin.sym} -460 -10 2 0 {name=p6 lab=VDD}
C {gnd.sym} -520 20 0 0 {name=l4 lab=GND}
C {gnd.sym} -470 180 0 0 {name=l5 lab=GND}
C {sg13g2_stdcells/sg13g2_inv_1.sym} -640 180 0 0 {name=x2 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {lab_pin.sym} -530 150 2 0 {name=p7 lab=VDD}
C {sg13g2_pr/sg13_lv_pmos.sym} -540 -10 0 0 {name=M3103
l=0.2u
w=0.4u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -550 180 0 0 {name=M3104
l=0.2u
w=0.4u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/ammeter.sym} -850 -220 3 0 {name=Vcurrentsource}
C {sg13g2_stdcells/sg13g2_inv_1.sym} -620 -150 0 0 {name=x3 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {simulator_commands_shown.sym} 20 100 0 0 {name=Simulator
simulator=ngspice
only_toplevel=false 
value="tcleval(
* Note! Since this script is wrapped in tcleval,
* code that is written in square brackets are in TCL scripting language
*
* The rest of the code is in spice scripting language

.options temp=25

* Save FET params like ids, gm, gds, vth, vgs, vdss, vds, cgg, cgsol, cgdol
* for annotation later (easier debugging and analysis)
* .include [file rootname [file tail [xschem get current_name]]].save

[if \{[info exists tcl_var_use_post_layout_netlist] && $tcl_var_use_post_layout_netlist == 1\} \{
  set prefix \\".include \\"
  set middle [xschem get current_dirname]
  set suffix "/build/spice_parasitics/charge_pump_current_generator.pex.spice"
  return $prefix$middle$suffix
\}]

* For a 'Beta Multiplier' circuit,
* zero current is a possible steady-state operating point,
* so lets force this initial condition, and see if start-up circuit
* works. (Without start-up circuit, the current stays at zero as expected)
* (Note that these internal nodes are not available in post-layout netlist,
* so it has no effect then)
.ic v(x1.node0)=0
.ic v(x1.node1)=1.2

* Make capacitor 0.6V
.ic v(cap)=0.6

.control
  save all
  
  * Initialize all nodes to 0V, except for node1
  tran 5p 200n uic

  write [file rootname [file tail [xschem get current_name]]].raw

  * I DID NOT USE THE BELOW, because if an error occured we wouldn't know
  * Automatically close the popup after simulation complete *
  * quit
.endc
)"}
C {simulator_commands_shown.sym} 990 110 0 0 {name=Simulator1
simulator=xyce
only_toplevel=false 
value="tcleval(
* Note! Since this script is wrapped in tcleval,
* code that is written in square brackets are in TCL scripting language
*
* The rest of the code is in spice scripting language

.preprocess replaceground true
.option temp=25

[if \{[info exists tcl_var_use_post_layout_netlist] && $tcl_var_use_post_layout_netlist == 1\} \{
  set prefix \\".include \\"
  set middle [xschem get current_dirname]
  set suffix "/build/spice_parasitics/charge_pump_current_generator.pex.spice"
  return $prefix$middle$suffix
\}]

* For a 'Beta Multiplier' circuit,
* zero current is a possible steady-state operating point,
* so lets force this initial condition, and see if start-up circuit
* works. (Without start-up circuit, the current stays at zero as expected)
* (Note that these internal nodes are not available in post-layout netlist,
* so it has no effect)
.ic v(x1.node0)=0
.ic v(x1.node1)=1.2

* Make capacitor 0.6V
.ic v(cap)=0.6

.print tran format=RAW v(up) v(down) v(cap) v(vdd) i(Vcharge) i(Vchargeup) i(Vchargedown)
.tran 5e-12 200e-9 uic
)"}
C {devices/launcher.sym} 80 -150 0 0 {name=h4
descr="Ctrl + Left Click to Annotate and load waves" 
tclcommand="
xschem annotate_op
xschem raw_read $netlist_dir/[file rootname [file tail [xschem get current_name]]].raw tran
xschem setprop rect 2 0 fullxzoom
"
}
C {launcher.sym} 82.33626929682691 -210 0 0 {name=h5
descr="Ctrl + Left Click to Simulate NGSPICE"
tclcommand="
# Setup the default simulation commands if not already set up
# for example by already launched simulations.
set_sim_defaults
puts $sim(spice,0,cmd) 

# Change the Xyce command. In the spice category there are currently
# 5 commands (0, 1, 2, 3, 4). Command 3 is the Xyce batch
# you can get the number by querying $sim(spice,n)
set sim(spice,0,cmd) \{$terminal -e \{ngspice -i "$N" -a || sh\}\}

# change the simulator to be used (Ngspice)
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
C {devices/launcher.sym} 710 -150 0 0 {name=h6
descr="Ctrl + Left Click to Annotate and load waves for Xyce" 
tclcommand="
xschem annotate_op
xschem raw_read $netlist_dir/[file rootname [file tail [xschem get current_name]]].spice.raw tran
xschem setprop rect 2 0 fullxzoom
"
}
C {simulator_commands_shown.sym} 1020 -70 0 0 {name=Libs_Xyce
simulator=xyce
only_toplevel=false 
value="tcleval(
.lib $::MODELS_XYCE/cornerMOSlv.lib mos_tt
.lib $::MODELS_XYCE/cornerRES.lib res_typ
.lib $::MODELS_XYCE/cornerCAP.lib cap_typ
.include $::PDK_ROOT/$PDK/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice
"}
C {simulator_commands_shown.sym} 20 -70 0 0 {name=Libs_Ngspice
simulator=ngspice
only_toplevel=false
value="tcleval(
.lib $::MODELS_NGSPICE/cornerMOSlv.lib mos_tt
.lib $::MODELS_NGSPICE/cornerRES.lib res_typ
.lib $::MODELS_NGSPICE/cornerCAP.lib cap_typ
.include sg13g2_stdcell.spice
)"}
C {launcher.sym} 1320 -210 0 0 {name=`1
descr="Ctrl + Left Click to Simulate Parallel Xyce"
tclcommand="
# Setup the default simulation commands if not already set up
# for example by already launched simulations.
set_sim_defaults

# Change the Xyce command. In the spice category there are currently
# 5 commands (0, 1, 2, 3, 4). Command 4 is the Xyce parallel batch
# you can get the number by querying $sim(spice,n)
set sim(spice,4,cmd) \{$terminal -e \{mpirun Xyce -plugin $env(PDK_ROOT)/$env(PDK)/libs.tech/xyce/plugins/Xyce_Plugin_PSP103_VA.so,$env(PDK_ROOT)/$env(PDK)/libs.tech/xyce/plugins/Xyce_Plugin_r3_cmc.so $N || sh\}\}

# change the simulator to be used (Xyce)
set sim(spice,default) 4

# run netlist and simulation
xschem netlist
simulate
"}
C {launcher.sym} 710 -210 0 0 {name=`
descr="Ctrl + Left Click to Simulate Serial Xyce"
tclcommand="
# Setup the default simulation commands if not already set up
# for example by already launched simulations.
set_sim_defaults

# Change the Xyce command. In the spice category there are currently
# 5 commands (0, 1, 2, 3, 4). Command 3 is the Xyce batch
# you can get the number by querying $sim(spice,n)
set sim(spice,3,cmd) \{$terminal -e \{Xyce -plugin $env(PDK_ROOT)/$env(PDK)/libs.tech/xyce/plugins/Xyce_Plugin_PSP103_VA.so,$env(PDK_ROOT)/$env(PDK)/libs.tech/xyce/plugins/Xyce_Plugin_r3_cmc.so $N || sh\}\}

# change the simulator to be used (Xyce)
set sim(spice,default) 3

# run netlist and simulation
xschem netlist
simulate
"}
C {launcher.sym} 82.33626929682691 -300 0 0 {name=h1
descr="tcleval([
  if \{[info exists tcl_var_use_post_layout_netlist] && $tcl_var_use_post_layout_netlist == 1\} \{
    return \\"Ctrl + Left Click to revert to using schematic\\"
  \} else \{
    return \\"Ctrl + Left Click to use post-layout netlist (with parasitics)\\"
  \}])"
tclcommand="
  if \{[info exists tcl_var_use_post_layout_netlist] && $tcl_var_use_post_layout_netlist == 1\} \{
    set tcl_var_use_post_layout_netlist 0 
  \} else \{
    set tcl_var_use_post_layout_netlist 1
  \}
  xschem reset_caches
  xschem redraw
"
}
C {sg13g2_stdcells/sg13g2_inv_1.sym} -760 180 0 0 {name=x4 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_1.sym} -880 -150 0 0 {name=x5 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_1.sym} -800 -150 0 0 {name=x6 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_1.sym} -840 180 0 0 {name=x7 VDD=VDD VSS=VSS prefix=sg13g2_ }
