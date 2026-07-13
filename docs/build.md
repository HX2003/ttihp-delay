## Project Structure

| Directory  | Description                              |
| ---------- | ---------------------------------------- |
| /archive    | Some old stuff / previous iterations     |
| /build      | Build outputs (automatically generated)  |
| /docs       | Documentation                            |
| /schematics | Xschem schematics and symbols            |
| /src        | Verilog sources, Librelane configuration |
| /test       | Verilog testbench (No analog simulation) |

## Build Process

There are many dependencies used to create this project.


| Dependency                                                | Description                                                |
| :-------------------------------------------------------- | ---------------------------------------------------------- |
| [IHP-Open-PDK](https://github.com/IHP-GmbH/IHP-Open-PDK)  | PDK for SG13G2 / SG13CMOS5L process node                   |
| [Librelane](https://github.com/librelane/librelane)       | ASIC implementation flow infrastructure |   
| [Klayout](https://https://www.klayout.de/)                | Layout viewer and editor                                   |
| [Klayout python](https://pypi.org/project/klayout/)       | Standalone distribution of KLayout’s Python API           |
| [Klayout-pex](https://pypi.org/project/klayout-pex/)      | Python package to perform parasitic extraction             |
| [Xschem](https://xschem.sourceforge.io/stefan/index.html) | Schematic circuit editor                                   |
| [Magic](https://github.com/rtimothyedwards/magic)         | Used for lef file generation and parasitic extraction      |
| [Ngspice](https://ngspice.sourceforge.io/)                | SPICE analog circuit simulator                             |
| [Xyce](https://xyce.sandia.gov/)                          | SPICE-compatible high-performance analog circuit simulator |

While most simulations have been written for Ngspice, Xyce was used for larger simulations.

### Automation script

To help automate some these processes, an automation script was written to aid in

* generating flattened .gds file for the whole design / part of the design (using klayout python)
* generating .lef file from flattened .gds layout for the whole design / part of the design(using magic)
* running parasitic extraction from flattened .gds layout (using klayout-pex)
* generating netlist from .sch schematic for LVS purposes (using xschem)
* running simple pin order check between extracted parasitics netlist and Xschem schematic netlist

The outputs are found in `/build` directory.

### Manual task: Layout and DRC check in klayout

### Manual task: LVS check in klayout

### Manual task: Updating .sym port declaration

## Additional thoughts

Some extra things of note, to remind myself:
