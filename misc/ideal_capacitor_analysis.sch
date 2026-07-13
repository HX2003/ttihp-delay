v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 0 -1110 800 -710 {flags=graph
y1=-2.9758285e-13
y2=2.0529466e-12
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=1e-08
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0
divx=5
color=4
node=cap}
B 2 0 -690 800 -290 {flags=graph
y1=-0.43911506
y2=1.1980464
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-2.5869507e-11
x2=5.8723705e-09
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0
divx=5
hilight_wave=0
color=8
node=gate}
T {Ctrl-Click to execute launcher} 20 -260 0 0 0.3 0.3 {layer=11}
T {https://electronics.stackexchange.com/questions/679295/gate-capacitance-vs-gate-voltage-for-a-mosfet-in-ltspice

The standard equation current I = C * dV/dt, can be used.
Since we know the current, then C = I / (dV/dt)} -1170 -600 0 0 0.4 0.4 {}
N -380 -300 -200 -300 {lab=gate}
N -380 -240 -310 -240 {lab=GND}
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


* initial condition, gate is at 0V
* this is very important
.ic v(gate)=0

.control
  save all

  * initial condition, gate is at 0V
  tran 1p 10n

  let current = 100 * 1e-6

  let cap = current / deriv(v(gate))
  
  * While we can directly plot it in a popup, I instead save it, 
  * and use the integrated graph inside the schematic
  * plot cap
 
  * no need to put save here, as save all saves everything
  * save cap

  write [file rootname [file tail [xschem get current_name]]].raw

  * I DID NOT USE THE BELOW, because if an error occured we wouldn't know
  * Automatically close the popup after simulation complete *
  * quit
.endc
)"}
C {gnd.sym} -310 -240 0 0 {name=l6 lab=GND}
C {isource.sym} -380 -270 2 0 {name=Isource value=100u}
C {lab_pin.sym} -200 -300 2 0 {name=p10 lab=gate}
C {capa.sym} -310 -270 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
