v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 0 -1200 800 -800 {flags=graph
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
color="17 4"
node="i(vcursource)
i(vcursink)"}
B 2 0 -780 800 -380 {flags=graph
y1=-1.0984446
y2=3.4453575
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-9.9999434e-09
x2=9.0000008e-08
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0
divx=5
hilight_wave=0
color=8
node=vdd}
T {Ctrl-Click below to run simulations} 20 -260 0 0 0.3 0.3 {layer=11}
T {Simple test setup

The current source is about 10uA,
which stays the same, regardless of voltage at current_source node,
only above 1.0V, does current become significantly lesser.

The current sink is about 10uA,
which stays the same, regardless of voltage at current_sink node,
only below 0.3V, does current become significantly lesser.

The current sink uses cascode, without it, the current is
observed to be quite off.} -530 40 0 0 0.25 0.25 {}
T {Tips:
1. Ctrl + Left Click the first arrow to Simulate NGSPICE
2. Ctrl + Left Click the second arrow to Annotate and load waves
3. Press B while on the graph, the voltages and current will be back annotated
4. Press E while on the charge_pump_current_generator block, and you will
   go into it, the back annotation still works, then press Ctrl + E, to go back.} -1010 -360 0 0 0.4 0.4 {}
T {Ctrl-Click below to toggle between using post-layout netlist (with parasitics) from .spice, versus using schematic from .sch} 20 -360 0 0 0.3 0.3 {layer=11}
T {Xyce simulator is partially supported, but I did not fully port over everything.} 650 -260 0 0 0.3 0.3 {layer=11}
N -980 -150 -830 -150 {lab=VDD}
N -840 -130 -830 -130 {lab=GND}
N -840 -130 -840 -90 {lab=GND}
N -980 -90 -840 -90 {lab=GND}
N -580 -150 -300 -150 {lab=#net1}
N -300 -150 -300 -120 {lab=#net1}
N -580 -130 -520 -130 {lab=#net2}
N -520 -130 -520 -0 {lab=#net2}
N -480 -40 -480 -0 {lab=#net2}
N -520 0 -480 0 {lab=#net2}
N -480 -120 -400 -120 {lab=#net3}
N -400 -40 -400 0 {lab=GND}
N -400 -120 -400 -100 {lab=#net3}
N -480 -120 -480 -100 {lab=#net3}
C {devices/vsource.sym} -980 -120 0 0 {name=V2 value="PWL(0ns 0 5ns 1.2)"}
C {gnd.sym} -980 -90 0 0 {name=l71 lab=GND}
C {lab_pin.sym} -980 -150 0 0 {name=p18 lab=VDD}
C {devices/ammeter.sym} -300 -90 0 0 {name=Vcursource}
C {/home/hx2003/Desktop/delayline/charge_pump_current_generator.sym} -710 -140 0 0 {name=x1}
C {devices/ammeter.sym} -480 -70 0 0 {name=Vcursink}
C {gnd.sym} -300 0 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} -400 -70 0 0 {name=V3 value=1.2}
C {gnd.sym} -400 0 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} -300 -30 0 0 {name=V1 value=0}
C {simulator_commands_shown.sym} 980 90 0 0 {name=Simulator1
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

.print tran format=RAW i(Vcursource) i(Vcursink) v(vdd)
.tran 5e-12 100e-9 uic
)"}
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
.include [file rootname [file tail [xschem get current_name]]].save

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
C {devices/launcher.sym} 80 -160 0 0 {name=h4
descr="Ctrl + Left Click to Annotate and load waves" 
tclcommand="
xschem annotate_op
xschem raw_read $netlist_dir/[file rootname [file tail [xschem get current_name]]].raw tran
xschem setprop rect 2 0 fullxzoom
"
}
C {launcher.sym} 82.33626929682691 -220 0 0 {name=h5
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
C {devices/launcher.sym} 710 -160 0 0 {name=h6
descr="Ctrl + Left Click to Annotate and load waves for Xyce" 
tclcommand="
xschem annotate_op
xschem raw_read $netlist_dir/[file rootname [file tail [xschem get current_name]]].spice.raw tran
xschem setprop rect 2 0 fullxzoom
"
}
C {simulator_commands_shown.sym} 1020 -80 0 0 {name=Libs_Xyce
simulator=xyce
only_toplevel=false 
value="tcleval(
.lib $::MODELS_XYCE/cornerMOSlv.lib mos_tt
.lib $::MODELS_XYCE/cornerRES.lib res_typ
.lib $::MODELS_XYCE/cornerCAP.lib cap_typ
.include $::PDK_ROOT/$PDK/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice
"}
C {simulator_commands_shown.sym} 20 -80 0 0 {name=Libs_Ngspice
simulator=ngspice
only_toplevel=false
value="tcleval(
.lib $::MODELS_NGSPICE/cornerMOSlv.lib mos_tt
.lib $::MODELS_NGSPICE/cornerRES.lib res_typ
.lib $::MODELS_NGSPICE/cornerCAP.lib cap_typ
.include sg13g2_stdcell.spice
)"}
C {launcher.sym} 1320 -220 0 0 {name=`1
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
C {launcher.sym} 710 -220 0 0 {name=`
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
C {launcher.sym} 82.33626929682691 -310 0 0 {name=h1
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
