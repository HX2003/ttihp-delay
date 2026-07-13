/*
 * Copyright (c) 2024 HX2003
 * SPDX-License-Identifier: Apache-2.0
 */

`default_nettype none

module tt_um_hx2003_delay (
    input  wire [7:0] ui_in,    // Dedicated inputs
    output wire [7:0] uo_out,   // Dedicated outputs
    input  wire [7:0] uio_in,   // IOs: Input path
    output wire [7:0] uio_out,  // IOs: Output path
    output wire [7:0] uio_oe,   // IOs: Enable path (active high: 0=input, 1=output)
    input  wire       ena,      // always 1 when the design is powered, so you can ignore it
    input  wire       clk,      // clock
    input  wire       rst_n     // reset_n - low to reset
);
  wire delay_out[3:0];
  wire ref_clk_out;

  wire delay_in[3:0] = ui_in[3:0];
  wire ref_clk = ui_in[4];
  wire dll_rst_n = ui_in[5];

  assign uo_out[3:0] = delay_out[3:0];
  assign uo_out[4] = ref_clk_out;
  assign uo_out[7:5] = {3'b000};

  // Assign all bidirectional pins as inputs
  assign uio_out = 0;
  assign uio_oe  = 0;

  wire reg_addr[2:0] = uio[2:0];
  wire reg_val[4:0] = uio[7:3];

  reg [4:0] mux_sel [0:4]; // Array of 5, 5 bit values

  reg ref_mux_sel[4:0];

  delay_bank delay_bank_inst (
    .CHAN0_DELAY_IN(delay_in[0])
    .CHAN0_MUX_SEL0(mux_sel[0][0]),
    .CHAN0_MUX_SEL1(mux_sel[0][1]),
    .CHAN0_MUX_SEL2(mux_sel[0][2]),
    .CHAN0_MUX_SEL3(mux_sel[0][3]),
    .CHAN0_MUX_SEL4(mux_sel[0][4]),
    .CHAN0_MUX_OUT(delay_out[0]),
    .CHAN0_DELAY_OUT_LAST(),

    .CHAN1_DELAY_IN(delay_in[1])
    .CHAN1_MUX_SEL0(mux_sel[1][0]),
    .CHAN1_MUX_SEL1(mux_sel[1][1]),
    .CHAN1_MUX_SEL2(mux_sel[1][2]),
    .CHAN1_MUX_SEL3(mux_sel[1][3]),
    .CHAN1_MUX_SEL4(mux_sel[1][4]),
    .CHAN1_MUX_OUT(delay_out[1]),
    .CHAN1_DELAY_OUT_LAST(),

    .CHAN2_DELAY_IN(delay_in[2])
    .CHAN2_MUX_SEL0(mux_sel[2][0]),
    .CHAN2_MUX_SEL1(mux_sel[2][1]),
    .CHAN2_MUX_SEL2(mux_sel[2][2]),
    .CHAN2_MUX_SEL3(mux_sel[2][3]),
    .CHAN2_MUX_SEL4(mux_sel[2][4]),
    .CHAN2_MUX_OUT(delay_out[2]),
    .CHAN2_DELAY_OUT_LAST(),

    .CHAN3_DELAY_IN(delay_in[3])
    .CHAN3_MUX_SEL0(mux_sel[3][0]),
    .CHAN3_MUX_SEL1(mux_sel[3][1]),
    .CHAN3_MUX_SEL2(mux_sel[3][2]),
    .CHAN3_MUX_SEL3(mux_sel[3][3]),
    .CHAN3_MUX_SEL4(mux_sel[3][4]),
    .CHAN3_MUX_OUT(delay_out[3]),
    .CHAN3_DELAY_OUT_LAST(),

    .REF_CLK_IN(ref_clk),
    .DLL_RESETN(dll_rst_n),
    .REF_MUX_SEL0(mux_sel[4][0]),
    .REF_MUX_SEL1(mux_sel[4][1]),
    .REF_MUX_SEL2(mux_sel[4][2]),
    .REF_MUX_SEL3(mux_sel[4][3]),
    .REF_MUX_SEL4(mux_sel[4][4]), 
    .REF_MUX_OUT(ref_clk_out)
    .REF_DELAY_OUT_LAST()
  );

  always @(posedge clk) begin
    if (rst_n == 0) begin
      for (int i = 0; i < 5; i++) begin
        mux_sel[i] <= 5'b0;
      end
    end else begin
      mux_sel[reg_addr] = reg_val;
    end
  end

  // List all unused inputs to prevent warnings
  wire _unused = &{ena, ui_in[7:6], 1'b0};

endmodule
