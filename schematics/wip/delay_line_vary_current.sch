v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 -700 -810 100 -410 {flags=graph
y1=-1.3570894
y2=2.5351742
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
color="21 8 5"
node="out
in
vdd"
divx=5}
T {Note that output is inverted} -80 -30 0 0 0.4 0.4 {}
N -330 160 -300 160 {
lab=#net1}
N -330 60 -300 60 {
lab=#net1}
N -330 110 -330 160 {
lab=#net1}
N -440 160 -390 160 {
lab=GND}
N -440 60 -390 60 {
lab=VDD}
N -440 110 -440 130 {
lab=#net1}
N -510 160 -480 160 {
lab=in}
N -510 60 -480 60 {
lab=in}
N -510 110 -510 160 {
lab=in}
N -440 90 -440 110 {
lab=#net1}
N -440 110 -330 110 {
lab=#net1}
N -330 60 -330 110 {
lab=#net1}
N -510 60 -510 110 {
lab=in}
N -390 160 -390 390 {
lab=GND}
N -440 190 -440 310 {
lab=#net2}
N -440 -170 -440 -90 {lab=VDD}
N -260 -170 -260 60 {lab=VDD}
N -480 -90 -480 -30 {lab=#net3}
N -480 270 -480 340 {lab=#net4}
N -650 -170 -650 -90 {lab=VDD}
N -690 -90 -690 -30 {lab=#net3}
N -650 -170 -440 -170 {lab=VDD}
N -650 390 -440 390 {lab=GND}
N -750 340 -690 340 {lab=#net4}
N -650 -30 -650 30 {lab=#net3}
N -780 -170 -650 -170 {lab=VDD}
N -690 -30 -650 -30 {lab=#net3}
N -650 -60 -650 -30 {lab=#net3}
N -650 -30 -480 -30 {lab=#net3}
N -650 270 -480 270 {lab=#net4}
N -750 270 -750 340 {lab=#net4}
N -650 270 -650 310 {lab=#net4}
N -750 270 -650 270 {lab=#net4}
N -650 90 -650 170 {lab=#net5}
N -650 230 -650 270 {lab=#net4}
N -440 -60 -440 30 {lab=#net6}
N -810 110 -510 110 {lab=in}
N -810 110 -810 120 {lab=in}
N -440 340 -440 390 {lab=GND}
N -650 340 -650 390 {lab=GND}
N -390 -170 -390 60 {lab=VDD}
N -440 -170 -390 -170 {lab=VDD}
N -440 390 -390 390 {lab=GND}
N -260 110 -260 130 {
lab=#net7}
N -390 390 -260 390 {lab=GND}
N -260 160 -260 390 {lab=GND}
N -990 210 -900 210 {lab=VSS}
N -980 150 -900 150 {lab=GND}
N -170 160 -140 160 {
lab=#net7}
N -170 60 -140 60 {
lab=#net7}
N -170 110 -170 160 {
lab=#net7}
N -170 60 -170 110 {
lab=#net7}
N -100 -170 -100 60 {lab=VDD}
N -100 160 -100 390 {lab=GND}
N -260 110 -170 110 {lab=#net7}
N -100 110 -100 130 {
lab=out}
N -260 90 -260 110 {
lab=#net7}
N -260 -170 -100 -170 {lab=VDD}
N -390 -170 -260 -170 {lab=VDD}
N -260 390 -100 390 {lab=GND}
N -100 110 10 110 {lab=out}
N -100 90 -100 110 {
lab=out}
C {code_shown.sym} 110 -150 0 0 {name=MODEL only_toplevel=false format="tcleval( @value )"

value="
  .lib $::MODELS_NGSPICE/cornerCAP.lib cap_typ
  .lib cornerMOSlv.lib mos_tt
  .lib cornerRES.lib res_typ
"



}
C {devices/launcher.sym} -310 -350 0 0 {name=h2
descr="Ctrl + Left Click to Annotate and load waves" 
tclcommand="
xschem annotate_op
xschem raw_read $netlist_dir/[file rootname [file tail [xschem get current_name]]].raw tran
xschem setprop rect 2 0 fullxzoom
"
}
C {devices/lab_pin.sym} 10 110 2 0 {name=p1 sig_type=std_logic lab=out}
C {lab_pin.sym} -780 -170 0 0 {name=p2 lab=VDD}
C {sg13g2_pr/sg13_lv_nmos.sym} -460 160 0 0 {name=M7
l=0.2u
w=0.74u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -460 340 0 0 {name=M10
l=0.6u
w=0.74u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/ammeter.sym} -650 60 0 0 {name=Vmycc
l=0.2u}
C {sg13g2_pr/sg13_lv_pmos.sym} -460 -90 0 0 {name=M18
l=0.6u
w=1.12u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -670 -90 0 0 {name=M14
l=0.6u
w=1.12u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -280 160 0 0 {name=M15
l=0.13u
w=0.74u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -670 340 0 0 {name=M21
l=0.6u
w=0.74u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -460 60 0 0 {name=M22
l=0.2u
w=1.12u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -280 60 0 0 {name=M23
l=0.13u
w=1.12u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {code_shown.sym} 120 40 0 0 {name=NGSPICE2 only_toplevel=false

value="
.options temp=27
.include sg13g2_stdcell.spice
.control
  * 1. Define the sweep parameters
  let i_start = 1e-6
  let i_stop = 30e-6
  let i_step = 1e-6
  let i_steps = (i_stop - i_start) / i_step + 1
  
  * 2. Create empty vectors to store our "summary" data
  let i_axis = unitvec(i_steps)
  let delay_results = unitvec(i_steps)
  let index = 0

  let i_act = i_start
  while i_act <= i_stop
    save all
    alter I_CustomSource i_act
    tran 5p 10n
    
    * Perform measurement
    * Please note that the output is inverted, so we detect FALLing edge
    meas tran tdiff TRIG v(in) VAL=0.6 RISE=1 TARG v(out) VAL=0.6 FALL=1

    let delay_results[index] = tdiff
    let i_axis[index] = i_act

    let i_act = i_act + i_step
    let index = index + 1


    write delay_line_vary_current.raw
  end

  * 4. Plot the results:
  plot delay_results vs i_axis title 'Ring Oscillator: Delay vs Bias current' xlabel 'I (A)' ylabel 'Delay (s)'
.endc
"



}
C {isource.sym} -650 200 0 0 {name=I_CustomSource value=40u
l=0.2u}
C {devices/vsource.sym} -980 120 0 0 {name=V2 value="PWL(0ns 0 1ns 1.2)"}
C {gnd.sym} -980 150 0 0 {name=l2 lab=GND}
C {lab_pin.sym} -980 90 2 0 {name=p13 lab=VDD}
C {devices/vsource.sym} -810 150 0 0 {name=V1 value="PULSE(0 1.2 5n 200p 200p 1 1)"}
C {devices/lab_pin.sym} -570 110 2 0 {name=p3 sig_type=std_logic lab=in}
C {gnd.sym} -810 180 0 0 {name=l1 lab=GND}
C {gnd.sym} -390 390 0 0 {name=l3 lab=GND}
C {lab_pin.sym} -990 210 0 0 {name=p4 lab=VSS}
C {res.sym} -900 180 0 0 {name=R1
value=0.00001
footprint=1206
device=resistor
m=1}
C {sg13g2_pr/sg13_lv_nmos.sym} -120 160 0 0 {name=M1
l=0.13u
w=0.74u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -120 60 0 0 {name=M8
l=0.13u
w=1.12u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
