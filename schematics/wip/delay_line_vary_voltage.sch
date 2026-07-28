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
x1=4.0664246e-09
x2=7.0351057e-09
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
T {Note that output is inverted} -50 -10 0 0 0.4 0.4 {}
T {Note bigger length} -750 360 0 0 0.4 0.4 {}
T {Note bigger length} -750 -70 0 0 0.4 0.4 {}
N -330 160 -300 160 {
lab=#net1}
N -330 60 -300 60 {
lab=#net1}
N -330 110 -330 160 {
lab=#net1}
N -260 110 -260 130 {
lab=#net2}
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
N -440 90 -440 110 {
lab=#net1}
N -440 110 -330 110 {
lab=#net1}
N -330 60 -330 110 {
lab=#net1}
N -510 110 -510 160 {
lab=in}
N -390 160 -390 390 {
lab=GND}
N -440 190 -440 310 {
lab=#net3}
N -390 -170 -260 -170 {lab=VDD}
N -440 -170 -440 -90 {lab=VDD}
N -260 -170 -260 60 {lab=VDD}
N -480 -90 -480 -30 {lab=#net4}
N -480 270 -480 340 {lab=#net5}
N -650 -170 -650 -90 {lab=VDD}
N -690 -90 -690 -30 {lab=#net4}
N -650 -170 -440 -170 {lab=VDD}
N -650 390 -440 390 {lab=GND}
N -650 -30 -650 30 {lab=#net4}
N -780 -170 -650 -170 {lab=VDD}
N -690 -30 -650 -30 {lab=#net4}
N -650 -60 -650 -30 {lab=#net4}
N -650 -30 -480 -30 {lab=#net4}
N -650 90 -650 310 {lab=#net6}
N -440 -60 -440 30 {lab=#net7}
N -440 340 -440 390 {lab=GND}
N -650 340 -650 390 {lab=GND}
N -390 -170 -390 60 {lab=VDD}
N -440 -170 -390 -170 {lab=VDD}
N -440 390 -390 390 {lab=GND}
N -260 90 -260 110 {
lab=#net2}
N -390 390 -260 390 {lab=GND}
N -260 160 -260 390 {lab=GND}
N -1030 -220 -940 -220 {lab=VSS}
N -1020 -280 -940 -280 {lab=GND}
N -690 270 -480 270 {lab=#net5}
N -690 270 -690 340 {lab=#net5}
N -700 110 -510 110 {lab=in}
N -700 110 -700 130 {lab=in}
N -510 60 -510 110 {
lab=in}
N -1020 270 -690 270 {lab=#net5}
N -1020 270 -1020 340 {lab=#net5}
N -160 160 -130 160 {
lab=#net2}
N -160 60 -130 60 {
lab=#net2}
N -160 110 -160 160 {
lab=#net2}
N -160 60 -160 110 {
lab=#net2}
N -90 -170 -90 60 {lab=VDD}
N -90 160 -90 390 {lab=GND}
N -90 110 -90 130 {
lab=out}
N -260 110 -160 110 {lab=#net2}
N -260 390 -90 390 {lab=GND}
N -90 110 20 110 {lab=out}
N -90 90 -90 110 {
lab=out}
N -260 -170 -90 -170 {lab=VDD}
N -480 340 -460 340 {lab=#net5}
C {code_shown.sym} 110 -150 0 0 {name=MODEL only_toplevel=false format="tcleval( @value )"

value="
  .lib $::MODELS_NGSPICE/cornerCAP.lib cap_typ
  .lib cornerMOSlv.lib mos_tt
  .lib cornerRES.lib res_typ
"



}
C {devices/launcher.sym} -310 -330 0 0 {name=h2
descr="Ctrl + Left Click to Annotate and load waves" 
tclcommand="
xschem annotate_op
xschem raw_read $netlist_dir/[file rootname [file tail [xschem get current_name]]].raw tran
xschem setprop rect 2 0 fullxzoom
"
}
C {devices/lab_pin.sym} 20 110 2 0 {name=p1 sig_type=std_logic lab=out}
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
l=1u
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
l=1u
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
C {code_shown.sym} 110 60 0 0 {name=NGSPICE2 only_toplevel=false

value="
.options temp=27
.include sg13g2_stdcell.spice
.control
  * 1. Define the sweep parameters
  let v_start = 0.40
  let v_stop = 1.0
  let v_step = 0.02
  let v_steps = (v_stop - v_start) / v_step + 1
  
  * 2. Create empty vectors to store our "summary" data
  let v_axis = unitvec(v_steps)
  let delay_results = unitvec(v_steps)
  let freq_results = unitvec(v_steps)
  let index = 0
  
  while index <= v_steps
    let v_act = v_start + index * v_step
    save all
    alter VCtrl v_act
    tran 5p 25n
    
    * Perform measurement
    * Please note that the output is inverted, so we detect FALLing edge
    meas tran tdiff TRIG v(in) VAL=0.6 RISE=1 TARG v(out) VAL=0.6 FALL=1


    let delay_results[index] = tdiff
    let freq_results[index] = 1/tdiff
    let v_axis[index] = v_act

    let v_act = v_act + v_step
    let index = index + 1


    write delay_line_vary_voltage.raw
  end

  * 4. Plot the results:
  plot delay_results vs v_axis title 'Delay vs Ctrl voltage' xlabel 'V (V)' ylabel 'Delay (s)'
  plot freq_results vs v_axis title 'Freq vs Ctrl voltage' xlabel 'V (V)' ylabel 'Frequency (Hz)'



.endc
"



}
C {devices/vsource.sym} -1020 -310 0 0 {name=V2 value="PWL(0ns 0 1ns 1.2)"}
C {gnd.sym} -1020 -280 0 0 {name=l2 lab=GND}
C {lab_pin.sym} -1020 -340 2 0 {name=p13 lab=VDD}
C {devices/vsource.sym} -700 160 0 0 {name=V1 value="PWL(0ns 0 5ns 0 5.001ns 1.2 20ns 1.2 20.001ns 0)"}
C {devices/lab_pin.sym} -570 110 2 0 {name=p3 sig_type=std_logic lab=in}
C {gnd.sym} -700 190 0 0 {name=l1 lab=GND}
C {gnd.sym} -390 390 0 0 {name=l3 lab=GND}
C {lab_pin.sym} -1030 -220 0 0 {name=p4 lab=VSS}
C {res.sym} -940 -250 0 0 {name=R1
value=0.00001
footprint=1206
device=resistor
m=1}
C {devices/vsource.sym} -1020 370 0 0 {name=VCtrl value="0"}
C {gnd.sym} -1020 400 0 0 {name=l4 lab=GND}
C {sg13g2_pr/sg13_lv_nmos.sym} -110 160 0 0 {name=M1
l=0.13u
w=0.74u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -110 60 0 0 {name=M8
l=0.13u
w=1.12u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
