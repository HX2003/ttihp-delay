<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## Overview

This project is a 4 Channel - 32 Tap Programmable Delay with Delay Locked Loop Calibration. It delays a signal by between 0 and up to 31 taps, with each tap providing 0.625 ns of delay, resulting in a maximum total delay of 19.375 ns when using a 50 MHz external reference clock. Intended applications include data alignment/ adding additional delay to meet setup/hold constraints, which may be especially valuable given the high latency of Tiny Tapeout’s mux infrastructure.

## How to use

Provide a 50 MHz reference clock to the `ref_clk` pin (not `clk`), as well as any signal you want to delay on the channel input pins. You should observe a delayed version on the corresponding channel output pin. The total delay is a sum of delay caused by the delay line itself (0 to 19.375ns 0.625ns to 20ns), the delay line multiplexer (~0.6ns), and Tiny Tapeout’s mux infrastructure (10+ ns).


| Top Level Pin | Specific Name  | Direction | Width  | Description                                   |
| :------------ | :------------- | :-------- | :----- | :-------------------------------------------- |
| clk           | -              | Input     | 1 bit  | Non-free running clock for registers         |
| rst_n         | -              | Input     | 1 bit  | Active-low reset for registers                |
| ui[3:0]       | delay_in[3:0]  | Input     | 4 bits | Signal to be delayed (4 independent channels) |
| ui[4]         | ref_clk        | Input     | 1 bit  | 50 MHz reference clock for DLL                |
| ui[5]         | dll_rst_n      | Input     | 1 bit  | Active-low reset for DLL                      |
| ui[7:6]       | -              | Input     | 2 bits | Unused                                        |
| uio[2:0]      | reg_addr[2:0]  | Input     | 3 bits | Register address value to write               |
| uio[7:3]      | reg_val[4:0]   | Input     | 5 bits | Register data value to write                  |
| uo[3:0]       | delay_out[3:0] | Output    | 4 bits | Delayed signal (4 independent channels)      |
| uo[4]         | ref_clk_out    | Output    | 1 bit  | Delayed reference clock                      |
| uo[7:5]       | -              | Output    | 3 bit  | Unused                                        |

Initialization procedure:

1. Ensure `rst_n`, `dll_rst_n` and `clk` are low for at least 1ms.
2. Raise `clk` high.
3. Make `clk` low.
4. Raise `rst_n` and `dll_rst_n` high for at least 5ms.
5. Keep `rst_n` and `dll_rst_n` high. The DLL should be locked at this point.

To write a delay value to a register, set the 3 bit register address and the 5 bit delay tap amount to the correct value. Wait for a little, then raise `clk` high for some time, then make `clk` low.


| Register Address |      Register Name      |
| :--------------: | :----------------------: |
|        0        |        Channel 0        |
|        1        |        Channel 1        |
|        2        |        Channel 2        |
|        3        |        Channel 3        |
|        4        | External reference clock |
