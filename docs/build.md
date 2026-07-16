## Overview

This is mixed-signal design, with the `hx_delay_bank` analog macro block being layout by hand, and the digital register control logic written in verilog. Librelane performs place-and-route for the digital block, and integrates the hand-crafted analog macro block.

Caution ⚠️: The IHP Open PDK is in active development, and the PDK's directory structure is expected to change, so scripts/commands may need to be updated.

Caution ⚠️: The design was characterized for SG13G2 not SG13CMOS5L, as the latter was just newly introduced. Based on the process specification documents provided, they should be similar, though slight differences in parasitics are expected due to the loss of metal layers in the latter.

## Project Structure


| Directory        | Description                                                          |
| ---------------- | -------------------------------------------------------------------- |
| /archive         | Some old stuff / previous iterations                                 |
| /build           | Build outputs for analog macro (automatically generated)            |
| /docs            | Documentation                                                        |
| /schematics      | Xschem schematics and symbols for analog macro                       |
| /src             | Verilog sources, Librelane configuration                             |
| /test            | Verilog testbench (no analog simulation)                             |
| /tile_simulation | Files for simulating the entire integrated design (manually updated) |

## Build Process

There are many dependencies used to create this project.


| Dependency                                                | Description                                                |
| :-------------------------------------------------------- | ---------------------------------------------------------- |
| [IHP-Open-PDK](https://github.com/IHP-GmbH/IHP-Open-PDK)  | PDK for SG13G2 / SG13CMOS5L process node                   |
| [Librelane](https://github.com/librelane/librelane)       | ASIC implementation flow infrastructure                    |
| [Klayout](https://https://www.klayout.de/)                | Layout viewer and editor                                   |
| [Klayout python](https://pypi.org/project/klayout/)       | Standalone distribution of KLayout’s Python API           |
| [Klayout-pex](https://pypi.org/project/klayout-pex/)      | Python package to perform parasitic extraction             |
| [Xschem](https://xschem.sourceforge.io/stefan/index.html) | Schematic circuit editor                                   |
| [Magic](https://github.com/rtimothyedwards/magic)         | Used for lef file generation and parasitic extraction      |
| [Ngspice](https://ngspice.sourceforge.io/)                | SPICE analog circuit simulator                             |
| [Xyce](https://xyce.sandia.gov/)                          | SPICE-compatible high-performance analog circuit simulator |

While most simulations have been written for Ngspice, Xyce was sometimes used.

### Automation script to create analog macro block

To help automate some these processes, an automation script was written to aid in

* generating flattened .gds file for the whole macro / part of the macro (using klayout python)
* generating .lef file from flattened .gds layout for the whole macro (using magic)
* running parasitic extraction from flattened .gds layout for the whole macro / part of the macro (using klayout-pex)
* generating netlist from .sch schematic and .sym schematic symbol for LVS purposes (using xschem)
* running simple pin order check between extracted parasitics netlist and Xschem schematic netlist

The outputs are found in `/build` directory. You will observe quite a number of files being generated. This is because in addition to the whole macro, the script also generates children designs so that they can be more easily tested in isolation.

### Manual task: Layout in Klayout

The majority of the macro (wires, transistors) are drawn manually. PCells from the PDK were used occasionally for some transistors, and the resistor.

### Manual task: DRC check in Klayout

Although the Github Actions do perform DRC check on the whole design,
IHP PDK has a Klayout tool that enables quick DRC checks for whole macro / part of the macro.

### Manual task: LVS check in Klayout

IHP PDK also has a Klayout tool that enables quick LVS checks for whole macro / part of the macro.

### Manual task: Updating .sym port declaration

The port order between the .sym schematic symbol file and the .pex.spice extracted parasitic netlist must be identical for the simulations to work correctly. Moreover, the .sym and .sch files are used to generate the netlist for manual LVS checking, as well as ensuring the macro .lef file correctly indicates the direction (input/output) of the pins.

Below is an example of the port declaration:

```
format="@name @@VDD @@VSS @@DELAY_CELL_OUT_INV @@DELAY_CELL_OUT @@DELAY_CELL_IN @@DELAY_VBIASP @@DELAY_VBIASN @symname"
```

### Manual task: Running analog simulations for macro

To launch Xschem, navigate to the downloaded project directory in your command terminal and enter the following (change the path as necessary):

```
export XSCHEM_USER_LIBRARY_PATH=/home/hx2003/Desktop/ttihp-delay/schematics
xschem schematics/delay_line_with_mux_dll_test.sch --rcfile $PDK_ROOT/ihp-sg13g2/libs.tech/xschem/xschemrc
```

Note: All cells/schematic/symbols are prefixed with hx_ to avoid conflicts with the Xschem library. For example ‘delay_line’ is an existing device in Xschem.

Other than the schematics of the actual analog macro, the following schematics are used to manually test full/various components of the design. Either pre-layout, or post-layout parasitic extracted netlist can be used to verify the design.


| Schematic                        | Description                                                                                                                                                                                                                                                                                                                                       |
| -------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| delay_line_with_mux_dll_test.sch | Tests only a single delay line with mux and DLL. Slave delay lines, which would normally share the same control voltage, are not tested here.                                                                                                                                                                                                   |
| delay\_line\_with\_mux\_test.sch | Tests only a single delay line with mux, with no DLL. A fixed bias voltage is supplied to the delay line. Without DLL, verifying the exact delay value is not the point of this test. Runs multiple simulations across all 32 taps to verify that the delay is proportional to the tap value and that the rise and fall delays are well balanced |

### Manual task: Running analog simulation for entire design

To verify the integration of the analog macro and digital blocks, an analog simulation can be run on the full design post-layout. This essentially tests the file used for submission to Tiny Tapeout. It took about 6 hours to simulate 3000ns at 10ps timestep.

1. Either run the hardening locally, or download the `tt_submission` artifact from Github Actions. Copy `tt_um_hx2003_delay.gds` into `/tile_simulation` directory.
2. Run `tile_parasitic_extraction.ipynb` to generate the `tt_um_hx2003_delay.pex.spice` file for simulation.
3. Check the the port declaration in `tt_um_hx2003_delay.sym` is in the same order as `tt_um_hx2003_delay.pex.spice`. If not, manually update it.
4. Launch Xschem by navigating to the downloaded project directory in your command terminal and enter the following (change the path as necessary):

```
export XSCHEM_USER_LIBRARY_PATH=/home/hx2003/Desktop/ttihp-delay/tile_simulation
xschem tile_simulation/tile_test.sch --rcfile $PDK_ROOT/ihp-sg13g2/libs.tech/xschem/xschemrc
```

5. Ctrl + Left Click the corresponding arrow to start simulation. (Now, for some reason Xyce simulator is getting stuck, so I used Ngspice instead).
6. After simulation is complete, Ctrl + Left Click the corresponding arrow to load the waves.

**What the test should do**
The test initializes the design, and writes the tap values of 2, 6, 7, 18, and 31 to registers addresses 0, 1, 2, 3, 4 respectively. The graph should show that the channel 0, 1, 2, 3 and the reference clock output are delayed accordingly.

## Additional notes

Some extra things of note, to remind myself:
