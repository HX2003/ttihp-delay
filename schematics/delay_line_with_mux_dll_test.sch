v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 10 -450 810 -50 {flags=graph
y1=0.0705946
y2=2.8254951
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-1.3962334e-07
x2=3.6005245e-07
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0
color=21
node=vdd
divx=5
hilight_wave=0}
B 2 10 -880 810 -480 {flags=graph
y1=-0.32531444
y2=1.6675244
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-1.3962334e-07
x2=3.6005245e-07
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0
divx=5
color="4 7"
node="x1.x1.up
x1.x1.down"
fullxzoom=#}
B 2 10 -1320 810 -920 {flags=graph
y1=-0.27153961
y2=1.2589606
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-1.3962334e-07
x2=3.6005245e-07
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0
divx=5
color=20
node=delay_vbiasn}
B 2 10 -1750 810 -1350 {flags=graph
y1=-0.7201082
y2=1.7709405
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-1.3962334e-07
x2=3.6005245e-07
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0
color="8 15"
node="ref_clk
delay_out"
divx=5
hilight_wave=0}
B 2 10 -2610 810 -2210 {flags=graph
y1=-0.60314795
y2=0.92735223
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-1.3962334e-07
x2=3.6005245e-07
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0
divx=5
color=15
node=dll_resetn}
B 2 840 -880 1640 -480 {flags=graph
y1=-1.8946247e-05
y2=2.4418072e-05
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-1.3962334e-07
x2=3.6005245e-07
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0
divx=5
color="4 7"
node="i(x1.x1.x3.vchargeup)
i(x1.x1.x3.vchargedown)"}
B 2 10 -2180 810 -1780 {flags=graph
y1=-0.72010816
y2=1.7709405
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-1.3962334e-07
x2=3.6005245e-07
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0
color="8 15"
node="ref_clk

mux_out"
divx=5
hilight_wave=0
}
B 2 840 -1320 1640 -920 {flags=graph
y1=-5.5319154e-05
y2=0.00012368115
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-1.3962334e-07
x2=3.6005245e-07
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0
divx=5
color=4
node=i(x1.x1.vcharge)}
T {The system should be initialized in reset state,
in which the loop capacitor is to be charged to 1.2V.

The active low reset signal, which initially is at 0V, shall be set to 1.2V after 100ns.

Note that the graphs may be misleading in the event of harmonic lock,
it might be better to test with an additional delay line, and use
a pulse like 20ns high, 100ns low to ensure that the delay is really correct.

Be patient, Xyce simulation took 25 mins for pre-layout,
2 hours for post-layout on my computer.
} -1420 -230 0 0 0.6 0.6 {}
T {Ctrl-Click to execute launcher} 10 110 0 0 0.3 0.3 {layer=11}
T {Ctrl-Click below to toggle between using post-layout netlist (with parasitics) from .spice, versus using schematic from .sch} 0 10 0 0 0.3 0.3 {layer=11}
N -1380 340 -1150 340 {lab=GND}
N -1480 340 -1440 340 {lab=VSS}
N -1110 540 -1110 560 {lab=REF_CLK}
N -1110 540 -880 540 {lab=REF_CLK}
N -880 630 -880 670 {lab=VSS}
N -940 630 -880 630 {lab=VSS}
N -880 610 -880 630 {lab=VSS}
N -940 690 -880 690 {lab=VDD}
C {devices/vsource.sym} -1330 310 0 0 {name=V2 value="PWL(0ns 0 0.1ns 1.2)"}
C {gnd.sym} -1330 340 0 0 {name=l2 lab=GND}
C {lab_pin.sym} -1330 280 2 0 {name=p13 lab=VDD}
C {lab_pin.sym} -1480 340 0 0 {name=p4 lab=VSS}
C {res.sym} -1410 340 1 0 {name=R1
value=0.00001
footprint=1206
device=resistor
m=1}
C {devices/vsource.sym} -1150 310 0 0 {name=V4 value="PWL(0ns 0 500ns 0 500.1ns 1.2)"}
C {gnd.sym} -1150 340 0 0 {name=l71 lab=GND}
C {lab_pin.sym} -1150 280 2 0 {name=p1 lab=DLL_RESETN}
C {devices/vsource.sym} -1110 590 0 0 {name=V1 value="PULSE(0 1.2 5n 100p 100p 10ns 20ns)"}
C {hx_delay_line_with_mux_dll.sym} -770 600 0 0 {name=x1}
C {lab_pin.sym} -880 560 0 0 {name=p6 lab=DLL_RESETN}
C {lab_pin.sym} -880 460 0 0 {name=p2 lab=VDD}
C {lab_pin.sym} -880 480 0 0 {name=p3 lab=VSS}
C {lab_pin.sym} -940 690 0 0 {name=p5 lab=VDD}
C {lab_pin.sym} -940 630 0 0 {name=p7 lab=VSS}
C {lab_pin.sym} -1110 620 0 0 {name=p8 lab=VSS}
C {lab_pin.sym} -650 540 2 0 {name=p9 lab=DELAY_VBIASP}
C {lab_pin.sym} -650 560 2 0 {name=p10 lab=DELAY_VBIASN}
C {lab_pin.sym} -650 610 2 0 {name=p11 lab=MUX_OUT}
C {lab_pin.sym} -650 630 2 0 {name=p12 lab=DELAY_OUT}
C {simulator_commands_shown.sym} 1000 450 0 0 {name=Simulator1
simulator=xyce
only_toplevel=false 
value="tcleval(
* Note! Since this script is wrapped in tcleval,
* code that is written in square brackets are in TCL scripting language
*
* The rest of the code is in spice scripting language

* Make Xyce recognize 'Gnd' as node 0, aka ground
.preprocess replaceground true

.option temp=25

[if \{[info exists tcl_var_use_post_layout_netlist] && $tcl_var_use_post_layout_netlist == 1\} \{
  set prefix \\".include \\"
  set middle [file dirname [xschem get current_dirname]]
  set suffix "/build/spice_parasitics/hx_delay_line_with_mux_dll.pex.spice"
  return $prefix$middle$suffix
\}]

[if \{[info exists tcl_var_use_post_layout_netlist] && $tcl_var_use_post_layout_netlist == 1\} \{
  return \\"
  * When using the post-layout netlist, some nets not accessible
.print tran format=RAW v(DLL_RESETN) v(REF_CLK) v(DELAY_OUT) v(MUX_OUT) v(DELAY_VBIASP) v(DELAY_VBIASN) v(VDD)\\"
\} else \{
  return \\"
.print tran format=RAW v(DLL_RESETN) v(REF_CLK) v(DELAY_OUT) v(MUX_OUT) v(DELAY_VBIASP) v(DELAY_VBIASN) v(VDD)
  + v(x1:x1:up) v(x1:x1:down) i(x1:x1:vcharge) i(x1:x1:x3:vchargeup) i(x1:x1:x3:vchargedown)\\"
\}]

.param initialStep=5ps, tstop=3500ns, tstart=0ns, dtmax=50ps
* .param initialStep=5ps, tstop=3000ns, tstart=0ns, dtmax=5ps

.tran \{initialStep\} \{tstop\} \{tstart\} \{dtmax\}

)"}
C {simulator_commands_shown.sym} 0 450 0 0 {name=Simulator
simulator=ngspice
only_toplevel=false
value="tcleval(
* Note! Since this script is wrapped in tcleval,
* code that is written in square brackets are in TCL scripting language
*
* The rest of the code is in spice scripting language

* Disabled because of computational cost/memory usage for big designs
* Save FET params like ids, gm, gds, vth, vgs, vdss, vds, cgg, cgsol, cgdol
* for annotation later (easier debugging and analysis)
* .include [file rootname [file tail [xschem get current_name]]].save

.options temp=25

[if \{[info exists tcl_var_use_post_layout_netlist] && $tcl_var_use_post_layout_netlist == 1\} \{
  set prefix \\".include \\"
  set middle [xschem get current_dirname]
  set suffix "/build/spice_parasitics/dll_controller.pex.spice"
  return $prefix$middle$suffix
\}]

.control
  * save all is not suitable for large designs / long simulations
  * save all
  [if \{[info exists tcl_var_use_post_layout_netlist] && $tcl_var_use_post_layout_netlist == 1\} \{
    return \\"
    * When using the post-layout netlist, some nets not accessible
    save v(DLL_RESETN) v(REF_CLK) v(DELAY_OUT) v(MUX_OUT) v(DELAY_VBIASP) v(DELAY_VBIASN) v(VDD)\\"
  \} else \{
    return \\"
    save v(DLL_RESETN) v(REF_CLK) v(DELAY_OUT) v(MUX_OUT) v(DELAY_VBIASP) v(DELAY_VBIASN) v(VDD)
    + v(x1.x1.up) v(x1.x1.down) i(x1.x1.vcharge) i(x1.x1.x3.vchargeup) i(x1.x1.x3.vchargedown)\\"
  \}]

  *  
  * 5p timestep seems insufficient *
  * but any lower than that fails to converge on my system at least with KLU solver *
  * thats why I used xyce *
  tran 5p 2500n

  write [file rootname [file tail [xschem get current_name]]].raw

  * I DID NOT USE THE BELOW, because if an error occured we wouldn't know
  * Automatically close the popup after simulation complete *
  * quit
.endc
)"}
C {devices/launcher.sym} 60 210 0 0 {name=h4
descr="Ctrl + Left Click to Annotate and load waves" 
tclcommand="
xschem annotate_op
xschem raw_read $netlist_dir/[file rootname [file tail [xschem get current_name]]].raw tran
xschem setprop rect 2 0 fullxzoom
"
}
C {launcher.sym} 62.33626929682703 150 0 0 {name=h5
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
C {devices/launcher.sym} 690 210 0 0 {name=h6
descr="Ctrl + Left Click to Annotate and load waves for Xyce" 
tclcommand="
xschem annotate_op
xschem raw_read $netlist_dir/[file rootname [file tail [xschem get current_name]]].spice.raw tran
xschem setprop rect 2 0 fullxzoom
"
}
C {simulator_commands_shown.sym} 1000 290 0 0 {name=Libs_Xyce
simulator=xyce
only_toplevel=false 
value="tcleval(
.lib $::MODELS_XYCE/cornerMOSlv.lib mos_tt
.lib $::MODELS_XYCE/cornerRES.lib res_typ
.lib $::MODELS_XYCE/cornerCAP.lib cap_typ
*.include $::PDK_ROOT/$PDK/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice
"}
C {simulator_commands_shown.sym} 0 290 0 0 {name=Libs_Ngspice
simulator=ngspice
only_toplevel=false
value="tcleval(
.lib $::MODELS_NGSPICE/cornerMOSlv.lib mos_tt
.lib $::MODELS_NGSPICE/cornerRES.lib res_typ
.lib $::MODELS_NGSPICE/cornerCAP.lib cap_typ
*.include sg13g2_stdcell.spice
)"}
C {launcher.sym} 1300 150 0 0 {name=`1
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
C {launcher.sym} 690 150 0 0 {name=`
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
C {launcher.sym} 62.33626929682703 60 0 0 {name=h1
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
C {lab_pin.sym} -1110 540 0 0 {name=p14 lab=REF_CLK}
