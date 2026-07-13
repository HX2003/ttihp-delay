v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 1310 -710 2110 -310 {flags=graph
y1=-0.72010816
y2=1.7709405
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=1.2e-07
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0
divx=5
hilight_wave=0
color="8 7"
node="DELAY_IN
MUX_OUT"}
B 2 1310 -1140 2110 -740 {flags=graph
y1=-0.72010816
y2=1.7709405
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=2.2231042e-09
x2=1.462231e-07
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0
divx=5
hilight_wave=0
color="8 21"
node="DELAY_IN
DELAY_OUT"}
B 2 1310 -1580 2110 -1180 {flags=graph
y1=-0.72010816
y2=1.7709405
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=2.2231042e-09
x2=1.462231e-07
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0
divx=5
hilight_wave=0
color=4
node=VDD}
B 2 2210 -830 2780 -300 {flags=graph
y1=-2.9251317e-10
y2=3.8087693e-09
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=2.2231042e-09
x2=1.462231e-07
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0
divx=5
hilight_wave=0
color="7 12"
node="delay_rising
delay_falling"
sweep=indices
mode=Line}
T {Ctrl-Click below to run simulations} 1310 -180 0 0 0.3 0.3 {layer=11}
T {Ctrl-Click below to toggle between using post-layout netlist (with parasitics) from .spice, versus using schematic from .sch} 1310 -280 0 0 0.3 0.3 {layer=11}
T {Xyce simulator is partially supported, but I did not fully port over everything.} 1940 -180 0 0 0.3 0.3 {layer=11}
T {To note:

The outputs may have some garbage value intially,
I waited about 60ns before raising DELAY_IN, to 
ensure the output is stable first.

DELAY_OUT is the delayed signal after passing through all delay cells,
but not through the mux.} 550 -530 0 0 0.4 0.4 {}
N 40 -530 80 -530 {lab=VSS}
N 400 -340 400 -260 {lab=VDD}
N 360 -260 360 -200 {lab=#net1}
N 360 -200 400 -200 {lab=#net1}
N 400 -230 400 -200 {lab=#net1}
N 400 230 400 260 {lab=VSS}
N 360 100 360 170 {lab=#net2}
N 270 -340 400 -340 {lab=VDD}
N 560 -110 870 -110 {lab=#net1}
N 360 100 560 100 {lab=#net2}
N 560 -70 560 100 {lab=#net2}
N 560 -200 560 -110 {lab=#net1}
N 400 -200 560 -200 {lab=#net1}
N 140 -530 190 -530 {lab=GND}
N 250 170 360 170 {lab=#net2}
N 560 -70 870 -70 {lab=#net2}
N 350 -90 870 -90 {lab=DELAY_IN}
N 350 -90 350 -40 {lab=DELAY_IN}
N 400 -200 400 -170 {lab=#net1}
N 400 -110 400 140 {lab=#net3}
N 670 0 870 0 {lab=#net4}
N 620 -20 870 -20 {lab=#net5}
N 720 20 870 20 {lab=#net6}
N 770 40 870 40 {lab=#net7}
N 820 60 870 60 {lab=#net8}
N 250 230 400 230 {lab=VSS}
N 400 170 400 230 {lab=VSS}
C {devices/vsource.sym} 190 -560 0 0 {name=V2 value="PWL(0ns 0 0.1ns 1.2)"}
C {gnd.sym} 190 -530 0 0 {name=l2 lab=GND}
C {lab_pin.sym} 190 -590 2 0 {name=p13 lab=VDD}
C {lab_pin.sym} 40 -530 0 0 {name=p4 lab=VSS}
C {res.sym} 110 -530 1 0 {name=R1
value=0.00001
footprint=1206
device=resistor
m=1}
C {lab_pin.sym} 270 -340 0 0 {name=p19 lab=VDD}
C {devices/ammeter.sym} 400 -140 0 0 {name=Vmycc1
l=0.2u}
C {sg13g2_pr/sg13_lv_pmos.sym} 380 -260 0 0 {name=M36
l=0.6u
w=1.12u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 380 170 0 0 {name=M38
l=0.6u
w=0.74u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/vsource.sym} 350 -10 0 0 {name=V3 value="PULSE(0 1.2 60n 100p 100p 20ns 100ns)"}
C {devices/lab_pin.sym} 350 -90 0 0 {name=p20 sig_type=std_logic lab=DELAY_IN}
C {lab_pin.sym} 870 -180 0 0 {name=p17 lab=VDD}
C {lab_pin.sym} 870 -160 0 0 {name=p18 lab=VSS}
C {devices/vsource.sym} 250 200 0 0 {name=V1 value=0.49}
C {hx_delay_line_with_mux.sym} 980 -40 0 0 {name=x1}
C {devices/lab_pin.sym} 1100 -100 2 0 {name=p2 sig_type=std_logic lab=MUX_OUT}
C {simulator_commands_shown.sym} 2310 170 0 0 {name=Simulator1
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
  set middle [file dirname [xschem get current_dirname]]
  set suffix "/build/spice_parasitics/hx_delay_line_with_mux.pex.spice"
  return $prefix$middle$suffix
\}]

* Configure how long to run the simulation for
.param initialStep=50ps, tstop=120ns, tstart=0ns, maxStep=50ps

.print tran format=RAW v(vdd) v(DELAY_IN) v(DELAY_OUT) v(MUX_OUT)
.tran \{initialStep\} \{tstop\} \{tstart\} \{maxStep\}
)"}
C {simulator_commands_shown.sym} 1310 230 0 0 {name=Simulator
simulator=ngspice
only_toplevel=false 
value="tcleval(
* Note! Since this script is wrapped in tcleval,
* code that is written in square brackets are in TCL scripting language
*
* The rest of the code is in spice scripting language

.options temp=25

* Disabled because of computational cost for big designs
* Save FET params like ids, gm, gds, vth, vgs, vdss, vds, cgg, cgsol, cgdol
* for annotation later (easier debugging and analysis)
* .include [file rootname [file tail [xschem get current_name]]].save

[if \{[info exists tcl_var_use_post_layout_netlist] && $tcl_var_use_post_layout_netlist == 1\} \{
  set prefix \\".include \\"
  set middle [file dirname [xschem get current_dirname]]
  set suffix "/build/spice_parasitics/hx_delay_line_with_mux.pex.spice"
  return $prefix$middle$suffix
\}]

* Configure how long to run the simulation for
* NGSpice also supports maxStep, but I did not use here
.csparam suggestedStep=50ps, tstop=120ns

.control
  * IMPORTANT: variable/vector names MUST not be the same as those in netlist
  * otherwise, weirdness occurs
  let do_multi_sim = true    
  
  if do_multi_sim = true
    let high_val = 1.2
    let loop_cnt = 32
    * Initialize vectors to store results
    let indices = vector(loop_cnt)
    let tap_value = vector(loop_cnt)
    let delay_rising = vector(loop_cnt)
    let delay_falling = vector(loop_cnt)
  
    * Loop through 0 to 31 (5-bit patterns)
    let index = 0
    while index < loop_cnt
      let indices\\\\[index\\\\] = index

      * Set voltage sources to either 0 or vdd
      let bit0val = (index % 2) * high_val
      let bit1val = (floor(index / 2) % 2) * high_val
      let bit2val = (floor(index / 4) % 2) * high_val
      let bit3val = (floor(index / 8) % 2) * high_val
      let bit4val = (floor(index / 16) % 2) * high_val
   
      alter Vbit0 = $&bit0val
      alter Vbit1 = $&bit1val
      alter Vbit2 = $&bit2val
      alter Vbit3 = $&bit3val
      alter Vbit4 = $&bit4val
    
      * save all
      save DELAY_IN MUX_OUT
      tran $&suggestedStep $&tstop
  
      * Ignore the first 50ns, thus using TD=50ns
      * Half of supply 1.2V, is 0.6V, thus using VAL=0.6
      meas tran tdelay_rise TRIG v(DELAY_IN) VAL=0.6 TD=50ns RISE=1 TARG v(MUX_OUT) VAL=0.6 TD=40ns RISE=1
      meas tran tdelay_fall TRIG v(DELAY_IN) VAL=0.6 TD=50ns FALL=1 TARG v(MUX_OUT) VAL=0.6 TD=40ns FALL=1
    
      let delay_rising\\\\[index\\\\] = tdelay_rise
      let delay_falling\\\\[index\\\\] = tdelay_fall
  
      * write [file rootname [file tail [xschem get current_name]]].raw
       
      let index = index + 1
    end
  
    write [file rootname [file tail [xschem get current_name]]].raw delay_rising delay_falling indices

    plot delay_rising vs indices delay_falling vs indices title 'Delay vs Tap value' xlabel 'Tap value (0-31)' ylabel 'Delay (s)'
  else
    save all
    tran $&suggestedStep $&tstop
    write [file rootname [file tail [xschem get current_name]]].raw 
  end
   
  * I DID NOT USE THE BELOW, because if an error occured we wouldn't know
  * Automatically close the popup after simulation complete *
  * quit
.endc
)"}
C {devices/launcher.sym} 1370 -20 0 0 {name=h4
descr="Ctrl + Left Click to Annotate and load data for multi-sim" 
tclcommand="
xschem annotate_op
xschem raw_read $netlist_dir/[file rootname [file tail [xschem get current_name]]].raw constants
xschem setprop rect 2 0 fullxzoom
"
}
C {launcher.sym} 1372.336269296827 -140 0 0 {name=h5
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
C {devices/launcher.sym} 2000 -80 0 0 {name=h6
descr="Ctrl + Left Click to Annotate and load waves for Xyce" 
tclcommand="
xschem annotate_op
xschem raw_read $netlist_dir/[file rootname [file tail [xschem get current_name]]].spice.raw tran
xschem setprop rect 2 0 fullxzoom
"
}
C {simulator_commands_shown.sym} 2310 0 0 0 {name=Libs_Xyce
simulator=xyce
only_toplevel=false 
value="tcleval(
.lib $::MODELS_XYCE/cornerMOSlv.lib mos_tt
.lib $::MODELS_XYCE/cornerRES.lib res_typ
.lib $::MODELS_XYCE/cornerCAP.lib cap_typ
* Below has been commented, as standard cell schematics are used instead
*.include $::PDK_ROOT/$PDK/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice
"}
C {simulator_commands_shown.sym} 1310 50 0 0 {name=Libs_Ngspice
simulator=ngspice
only_toplevel=false
value="tcleval(
.lib $::MODELS_NGSPICE/cornerMOSlv.lib mos_tt
.lib $::MODELS_NGSPICE/cornerRES.lib res_typ
.lib $::MODELS_NGSPICE/cornerCAP.lib cap_typ
* Below has been commented, as standard cell schematics are used instead
* .include sg13g2_stdcell.spice
)"}
C {launcher.sym} 2610 -140 0 0 {name=`1
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
C {launcher.sym} 2000 -140 0 0 {name=`
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
C {launcher.sym} 1372.336269296827 -230 0 0 {name=h1
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
C {devices/lab_pin.sym} 1100 -80 2 0 {name=p3 sig_type=std_logic lab=DELAY_OUT}
C {devices/vsource.sym} 670 30 0 0 {name=Vbit1 value=1.2}
C {devices/vsource.sym} 720 50 0 0 {name=Vbit2 value=1.2}
C {lab_pin.sym} 620 40 0 0 {name=p1 lab=VSS}
C {devices/vsource.sym} 620 10 0 0 {name=Vbit0 value=1.2}
C {lab_pin.sym} 670 60 0 0 {name=p5 lab=VSS}
C {lab_pin.sym} 720 80 0 0 {name=p6 lab=VSS}
C {devices/vsource.sym} 770 70 0 0 {name=Vbit3 value=1.2}
C {lab_pin.sym} 770 100 0 0 {name=p7 lab=VSS}
C {devices/vsource.sym} 820 90 0 0 {name=Vbit4 value=1.2}
C {lab_pin.sym} 820 120 0 0 {name=p8 lab=VSS}
C {lab_pin.sym} 350 20 0 0 {name=p9 lab=VSS}
C {lab_pin.sym} 400 260 0 0 {name=p10 lab=VSS}
C {devices/launcher.sym} 1370 -80 0 0 {name=h2
descr="Ctrl + Left Click to Annotate and load waves for single sim" 
tclcommand="
xschem annotate_op
xschem raw_read $netlist_dir/[file rootname [file tail [xschem get current_name]]].raw tran
xschem setprop rect 2 0 fullxzoom
"
}
