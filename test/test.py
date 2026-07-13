# SPDX-FileCopyrightText: © 2024 Tiny Tapeout
# SPDX-License-Identifier: Apache-2.0

import cocotb
from cocotb.triggers import Timer


@cocotb.test()
async def test_project(dut):
    dut._log.info("Start")

    # Not used a clock is not free running
    # clock = Clock(dut.clk, 10, unit="us")
    # cocotb.start_soon(clock.start())

    # Reset
    dut._log.info("Reset")
    dut.clk.value = 0
    dut.ena.value = 1
    dut.ui_in.value = 0
    dut.uio_in.value = 0
    dut.rst_n.value = 0 

    await Timer(100, unit="ns")
    dut.rst_n.value = 1

    await Timer(100, unit="ns")
    
    dut._log.info("Test project behavior")

    # Ensure all mux_sel registers are intialized to zero
    assert int(dut.user_project.mux_sel[0].value) == 0
    assert int(dut.user_project.mux_sel[1].value) == 0
    assert int(dut.user_project.mux_sel[2].value) == 0
    assert int(dut.user_project.mux_sel[3].value) == 0
    assert int(dut.user_project.mux_sel[4].value) == 0