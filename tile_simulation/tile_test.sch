v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 -820 -450 -20 -50 {flags=graph
y1=-1.0313656
y2=1.7235349
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-3.0099017e-07
x2=4.5118657e-06
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
y1=-0.27153964
y2=1.2589606
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-3.0099017e-07
x2=4.5118657e-06
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0
divx=5
color="7 8"
node="ref_clk
ref_clk_out"}
B 2 10 -1320 810 -920 {flags=graph
y1=-1.122674
y2=2.5333655
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-3.0099017e-07
x2=4.5118657e-06
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0
divx=5
hilight_wave=0
color="8 7 15 21 19"
node="test_signal_in
test_signal_out0
test_signal_out1
test_signal_out2
test_signal_out3"}
B 2 10 -450 810 -50 {flags=graph
y1=-0.97436758
y2=1.6703368
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-3.0099017e-07
x2=4.5118657e-06
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0
divx=5
color=15
node=dll_rst_n}
B 2 840 -530 1870 -50 {flags=graph
y1=0.0705946
y2=2.8254951
ypos1=-0.016901977
ypos2=3.1051657
divy=5
subdivy=1
unity=1
x1=-3.0099017e-07
x2=4.5118657e-06
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0
divx=5
hilight_wave=0
color="4 4 4 4 4 4 4 4 4 4"
node="stimulus_rst_n
stimulus_clk
stimulus_reg_addr0
stimulus_reg_addr1
stimulus_reg_addr2
stimulus_reg_val0
stimulus_reg_val1
stimulus_reg_val2
stimulus_reg_val3
stimulus_reg_val4"
legend=1
digital=1}
B 2 -820 -880 -20 -480 {flags=graph
y1=-0.97436758
y2=1.6703368
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-3.0099017e-07
x2=4.5118657e-06
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0
divx=5
color=21
node=i(Vmainsupply)}
T {The system should be initialized in reset state,
in which the loop capacitor is to be charged to 1.2V.

The active low reset signal, which initially is at 0V, shall be set to 1.2V after 300ns.} -1440 60 0 0 0.4 0.4 {}
T {Ctrl-Click to execute launcher} 10 110 0 0 0.3 0.3 {layer=11}
T {50 MHz reference clock} -800 270 0 0 0.4 0.4 {}
T {10 MHz Signal 20% duty cycle} -800 410 0 0 0.4 0.4 {}
T {The PWL statements are generated using stimulus.ipynb.} -2000 530 0 0 0.4 0.4 {}
N -620 780 -620 840 {lab=TEST_SIGNAL_IN}
N -620 900 -620 930 {lab=GND}
C {devices/vsource.sym} -1330 310 0 0 {name=Vmainsupply value="PWL(0ns 0 0.1ns 1.2)"}
C {lab_pin.sym} -1330 280 2 0 {name=p13 lab=VDD}
C {devices/vsource.sym} -1150 310 0 0 {name=V4 value="PWL(0ns 0 300ns 0 300.1ns 1.2)"}
C {lab_pin.sym} -1980 580 2 0 {name=p1 lab=STIMULUS_rst_n}
C {devices/vsource.sym} -840 310 0 0 {name=V1 value="PULSE(0 1.2 0n 100p 100p 10ns 20ns)"}
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

[set prefix \\".include \\"
set middle [xschem get current_dirname]
set suffix "/tt_um_hx2003_delay.pex.spice"
return $prefix$middle$suffix]
 
.print tran format=RAW v(VDD) v(dll_rst_n) v(REF_CLK) v(TEST_SIGNAL_IN)
+ v(TEST_SIGNAL_OUT0) v(TEST_SIGNAL_OUT1) v(TEST_SIGNAL_OUT2) v(TEST_SIGNAL_OUT3) v(REF_CLK_OUT)
+ v(STIMULUS_rst_n) + v(STIMULUS_clk)
+ v(STIMULUS_reg_addr0) + v(STIMULUS_reg_addr1) + v(STIMULUS_reg_addr2)
+ v(STIMULUS_reg_val0) + v(STIMULUS_reg_val1) + v(STIMULUS_reg_val2)
+ v(STIMULUS_reg_val3) + v(STIMULUS_reg_val4)
+ i(Vmainsupply)

.param initialStep=5ps, tstop=3000ns, tstart=0ns, dtmax=50ps
* .param initialStep=5ps, tstop=3000ns, tstart=0ns, dtmax=5ps

* skip initial dc operating point calculations using uic
.tran \{initialStep\} \{tstop\} \{tstart\} \{dtmax\} uic

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


[set prefix \\".include \\"
set middle [xschem get current_dirname]
set suffix "/tt_um_hx2003_delay.pex.spice"
return $prefix$middle$suffix]


.control
  * save all is not suitable for large designs / long simulations
  * save all
 
  save v(VDD) v(dll_rst_n) v(REF_CLK) v(TEST_SIGNAL_IN)
  + v(TEST_SIGNAL_OUT0) v(TEST_SIGNAL_OUT1) v(TEST_SIGNAL_OUT2) v(TEST_SIGNAL_OUT3) v(REF_CLK_OUT)
  + v(STIMULUS_rst_n) + v(STIMULUS_clk)
  + v(STIMULUS_reg_addr0) + v(STIMULUS_reg_addr1) + v(STIMULUS_reg_addr2)
  + v(STIMULUS_reg_val0) + v(STIMULUS_reg_val1) + v(STIMULUS_reg_val2)
  + v(STIMULUS_reg_val3) + v(STIMULUS_reg_val4)
  + i(Vmainsupply)

  * skip initial dc operating point calculations using uic
  * use 10p instead of 5p for faster simulation
  tran 10p 3000n uic

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
C {lab_pin.sym} -840 280 0 0 {name=p14 lab=REF_CLK}
C {lab_pin.sym} -620 640 0 0 {name=p15 lab=VDD}
C {lab_pin.sym} -620 860 0 0 {name=p2 lab=REF_CLK}
C {lab_pin.sym} -620 720 0 0 {name=p3 lab=VDD}
C {lab_pin.sym} -620 880 0 0 {name=p6 lab=dll_rst_n}
C {lab_pin.sym} -620 780 0 0 {name=p7 lab=TEST_SIGNAL_IN}
C {devices/vsource.sym} -840 440 0 0 {name=V3 value="PULSE(0 1.2 0n 100p 100p 20ns 100ns)"}
C {lab_pin.sym} -840 410 0 0 {name=p10 lab=TEST_SIGNAL_IN}
C {lab_pin.sym} -1980 710 0 1 {name=p26 lab=STIMULUS_clk}
C {lab_pin.sym} -1980 830 0 1 {name=p27 lab=STIMULUS_reg_addr0}
C {lab_pin.sym} -1980 940 0 1 {name=p28 lab=STIMULUS_reg_addr1}
C {lab_pin.sym} -1980 1050 0 1 {name=p29 lab=STIMULUS_reg_addr2}
C {lab_pin.sym} -1980 1160 0 1 {name=p30 lab=STIMULUS_reg_val0}
C {lab_pin.sym} -1980 1270 0 1 {name=p31 lab=STIMULUS_reg_val1}
C {lab_pin.sym} -1980 1380 0 1 {name=p32 lab=STIMULUS_reg_val2}
C {lab_pin.sym} -1980 1490 0 1 {name=p33 lab=STIMULUS_reg_val3}
C {devices/vsource.sym} -1980 740 0 0 {name=V5 value="PWL(0.0n 0 20.0n 0 20.1n 1.2 40.0n 1.2 40.1n 0 80.0n 0 80.1n 1.2 100.0n 1.2 100.1n 0 140.0n 0 140.1n 1.2 160.0n 1.2 160.1n 0 200.0n 0 200.1n 1.2 220.0n 1.2 220.1n 0 260.0n 0 260.1n 1.2 280.0n 1.2 280.1n 0 320.0n 0 320.1n 1.2 340.0n 1.2 340.1n 0 360.0n 0)"}
C {devices/vsource.sym} -1980 860 0 0 {name=V6 value="PWL(0.0n 0 120.0n 0 120.1n 1.2 180.0n 1.2 180.1n 0 240.0n 0 240.1n 1.2 300.0n 1.2 300.1n 0 360.0n 0)"}
C {devices/vsource.sym} -1980 970 0 0 {name=V7 value="PWL(0.0n 0 180.0n 0 180.1n 1.2 300.0n 1.2 300.1n 0 360.0n 0)"}
C {devices/vsource.sym} -1980 1080 0 0 {name=V8 value="PWL(0.0n 0 300.0n 0 300.1n 1.2 360.0n 1.2)"}
C {devices/vsource.sym} -1980 1190 0 0 {name=V9 value="PWL(0.0n 0 180.0n 0 180.1n 1.2 240.0n 1.2 240.1n 0 300.0n 0 300.1n 1.2 360.0n 1.2)"}
C {devices/vsource.sym} -1980 1300 0 0 {name=V10 value="PWL(0.0n 0 60.0n 0 60.1n 1.2 360.0n 1.2)"}
C {devices/vsource.sym} -1980 1410 0 0 {name=V11 value="PWL(0.0n 0 120.0n 0 120.1n 1.2 240.0n 1.2 240.1n 0 300.0n 0 300.1n 1.2 360.0n 1.2)"}
C {devices/vsource.sym} -1980 1520 0 0 {name=V12 value="PWL(0.0n 0 300.0n 0 300.1n 1.2 360.0n 1.2)"}
C {lab_pin.sym} -1980 1600 0 1 {name=p44 lab=STIMULUS_reg_val4}
C {devices/vsource.sym} -1980 1630 0 0 {name=V13 value="PWL(0.0n 0 240.0n 0 240.1n 1.2 360.0n 1.2)"}
C {lab_pin.sym} -330 780 2 0 {name=p35 lab=TEST_SIGNAL_OUT0}
C {lab_pin.sym} -330 800 2 0 {name=p46 lab=TEST_SIGNAL_OUT1}
C {lab_pin.sym} -330 820 2 0 {name=p47 lab=TEST_SIGNAL_OUT2}
C {lab_pin.sym} -330 840 2 0 {name=p48 lab=TEST_SIGNAL_OUT3}
C {lab_pin.sym} -330 860 2 0 {name=p49 lab=REF_CLK_OUT}
C {gnd.sym} -1330 340 0 0 {name=l2 lab=GND}
C {gnd.sym} -1150 340 0 0 {name=l1 lab=GND}
C {gnd.sym} -840 340 0 0 {name=l3 lab=GND}
C {gnd.sym} -840 470 0 0 {name=l4 lab=GND}
C {gnd.sym} -620 660 0 0 {name=l5 lab=GND}
C {gnd.sym} -1980 770 0 0 {name=l6 lab=GND}
C {gnd.sym} -1980 890 0 0 {name=l7 lab=GND}
C {gnd.sym} -1980 1660 0 0 {name=l8 lab=GND}
C {gnd.sym} -1980 1550 0 0 {name=l9 lab=GND}
C {gnd.sym} -1980 1440 0 0 {name=l10 lab=GND}
C {gnd.sym} -1980 1330 0 0 {name=l11 lab=GND}
C {gnd.sym} -1980 1220 0 0 {name=l12 lab=GND}
C {gnd.sym} -1980 1110 0 0 {name=l13 lab=GND}
C {gnd.sym} -1980 1000 0 0 {name=l14 lab=GND}
C {gnd.sym} -620 920 0 0 {name=l15 lab=GND}
C {devices/vsource.sym} -1980 610 0 0 {name=V14 value="PWL(0.0n 0 60.0n 0 60.1n 1.2 360.0n 1.2)"}
C {gnd.sym} -1980 640 0 0 {name=l16 lab=GND}
C {lab_pin.sym} -620 740 0 0 {name=p4 lab=STIMULUS_rst_n}
C {lab_pin.sym} -1150 280 0 0 {name=p5 lab=dll_rst_n}
C {lab_pin.sym} -620 700 2 1 {name=p8 lab=STIMULUS_clk}
C {lab_pin.sym} -620 960 2 1 {name=p9 lab=STIMULUS_reg_addr0}
C {lab_pin.sym} -620 1000 2 1 {name=p11 lab=STIMULUS_reg_addr1}
C {lab_pin.sym} -620 1040 2 1 {name=p12 lab=STIMULUS_reg_addr2}
C {lab_pin.sym} -620 1080 2 1 {name=p16 lab=STIMULUS_reg_val0}
C {lab_pin.sym} -620 1120 2 1 {name=p17 lab=STIMULUS_reg_val1}
C {lab_pin.sym} -620 1160 2 1 {name=p18 lab=STIMULUS_reg_val2}
C {lab_pin.sym} -620 1200 2 1 {name=p19 lab=STIMULUS_reg_val3}
C {lab_pin.sym} -620 1240 2 1 {name=p20 lab=STIMULUS_reg_val4}
C {tt_um_hx2003_delay.sym} -490 990 0 0 {name=x1}
