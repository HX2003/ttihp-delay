/*
 * Copyright (c) 2024 HX2003
 * SPDX-License-Identifier: Apache-2.0
 */

`default_nettype none

module hx_delay_bank (
    input  wire CHAN0_DELAY_IN,
    input  wire CHAN0_MUX_SEL0,
    input  wire CHAN0_MUX_SEL1,
    input  wire CHAN0_MUX_SEL2,
    input  wire CHAN0_MUX_SEL3,
    input  wire CHAN0_MUX_SEL4,
    output wire CHAN0_MUX_OUT,
    output wire CHAN0_DELAY_OUT_LAST,

    input  wire CHAN1_DELAY_IN,
    input  wire CHAN1_MUX_SEL0,
    input  wire CHAN1_MUX_SEL1,
    input  wire CHAN1_MUX_SEL2,
    input  wire CHAN1_MUX_SEL3,
    input  wire CHAN1_MUX_SEL4,
    output wire CHAN1_MUX_OUT,
    output wire CHAN1_DELAY_OUT_LAST,

    input  wire CHAN2_DELAY_IN,
    input  wire CHAN2_MUX_SEL0,
    input  wire CHAN2_MUX_SEL1,
    input  wire CHAN2_MUX_SEL2,
    input  wire CHAN2_MUX_SEL3,
    input  wire CHAN2_MUX_SEL4,
    output wire CHAN2_MUX_OUT,
    output wire CHAN2_DELAY_OUT_LAST,

    input  wire CHAN3_DELAY_IN,
    input  wire CHAN3_MUX_SEL0,
    input  wire CHAN3_MUX_SEL1,
    input  wire CHAN3_MUX_SEL2,
    input  wire CHAN3_MUX_SEL3,
    input  wire CHAN3_MUX_SEL4,
    output wire CHAN3_MUX_OUT,
    output wire CHAN3_DELAY_OUT_LAST,

    input  wire REF_CLK,
    input  wire DLL_RESETN,
    input  wire REF_MUX_SEL0,
    input  wire REF_MUX_SEL1,
    input  wire REF_MUX_SEL2,
    input  wire REF_MUX_SEL3,
    input  wire REF_MUX_SEL4,
    output wire REF_MUX_OUT,
    output wire REF_DELAY_OUT_LAST
);

`ifndef __pnr__
  // Simplified verilog model without timing delay,
  // for purposes of verilog  testbench only.
  assign CHAN0_MUX_OUT = CHAN0_DELAY_IN;
  assign CHAN0_DELAY_OUT_LAST = CHAN0_DELAY_IN;

  assign CHAN1_MUX_OUT = CHAN1_DELAY_IN;
  assign CHAN1_DELAY_OUT_LAST = CHAN1_DELAY_IN;

  assign CHAN2_MUX_OUT = CHAN2_DELAY_IN;
  assign CHAN2_DELAY_OUT_LAST = CHAN2_DELAY_IN;

  assign CHAN3_MUX_OUT = CHAN3_DELAY_IN;
  assign CHAN3_DELAY_OUT_LAST = CHAN3_DELAY_IN;

  assign REF_MUX_OUT = REF_CLK;
  assign REF_DELAY_OUT_LAST = REF_CLK;

  wire _silence_unused_warning = &{
    CHAN0_MUX_SEL0, CHAN0_MUX_SEL1, CHAN0_MUX_SEL2, CHAN0_MUX_SEL3, CHAN0_MUX_SEL4,
    CHAN1_MUX_SEL0, CHAN1_MUX_SEL1, CHAN1_MUX_SEL2, CHAN1_MUX_SEL3, CHAN1_MUX_SEL4,
    CHAN2_MUX_SEL0, CHAN2_MUX_SEL1, CHAN2_MUX_SEL2, CHAN2_MUX_SEL3, CHAN2_MUX_SEL4,
    CHAN3_MUX_SEL0, CHAN3_MUX_SEL1, CHAN3_MUX_SEL2, CHAN3_MUX_SEL3, CHAN3_MUX_SEL4,
    REF_MUX_SEL0, REF_MUX_SEL1, REF_MUX_SEL2, REF_MUX_SEL3, REF_MUX_SEL4,
    DLL_RESETN, 1'b0};
`endif

endmodule
