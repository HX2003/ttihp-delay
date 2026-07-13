/*
 * Copyright (c) 2024 HX2003
 * SPDX-License-Identifier: Apache-2.0
 */

`default_nettype none

module delay_bank (
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

    input  wire REF_CLK_IN,
    input  wire DLL_RESETN,
    input  wire REF_MUX_SEL0,
    input  wire REF_MUX_SEL1,
    input  wire REF_MUX_SEL2,
    input  wire REF_MUX_SEL3,
    input  wire REF_MUX_SEL4,
    output wire REF_MUX_OUT,
    output wire REF_DELAY_OUT_LAST
);

endmodule
