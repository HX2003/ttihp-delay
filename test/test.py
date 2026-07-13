# SPDX-FileCopyrightText: © 2024 Tiny Tapeout
# SPDX-License-Identifier: Apache-2.0

import cocotb
from cocotb.triggers import Timer


@cocotb.test()
async def test_project(dut):
    if "GL_TEST" in cocotb.plusargs: # PLUSARGS that was set in the Makefile
        GL_TEST = 1
        dut._log.warning("Gate Level simulation detected, some checks will be disabled")
    else:
        GL_TEST = 0

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
    # dll_rst_n is not simulated here

    await Timer(100, unit="ns")
    dut.clk.value = 1

    await Timer(100, unit="ns")
    dut.clk.value = 0
    
    await Timer(100, unit="ns")
    dut.rst_n.value = 1

    await Timer(100, unit="ns")

    if not GL_TEST:    
        dut._log.info("Testing initial register values")

        # Ensure all mux_sel registers are intialized to zero
        assert int(dut.user_project.mux_sel[0].value) == 0
        assert int(dut.user_project.mux_sel[1].value) == 0
        assert int(dut.user_project.mux_sel[2].value) == 0
        assert int(dut.user_project.mux_sel[3].value) == 0
        assert int(dut.user_project.mux_sel[4].value) == 0

        dut._log.info("Testing writing register values")
        async def write_reg(reg_addr, reg_val):
            val = dut.uio_in.value
            val[2:0] = reg_addr
            val[7:3] = reg_val
            dut.uio_in.value = val

            await Timer(100, unit="ns")
            dut.clk.value = 1

            await Timer(100, unit="ns")
            dut.clk.value = 0
        

        await write_reg(0, 2)
        await write_reg(1, 6)
        await write_reg(2, 7)
        await write_reg(3, 18)
        await write_reg(4, 31)

        assert int(dut.user_project.mux_sel[0].value) == 2
        assert int(dut.user_project.mux_sel[1].value) == 6
        assert int(dut.user_project.mux_sel[2].value) == 7
        assert int(dut.user_project.mux_sel[3].value) == 18
        assert int(dut.user_project.mux_sel[4].value) == 31

    dut._log.info("Testing verilog simulation passthrough")
    async def test_pass_through(pass_through_val: str):
        val = dut.ui_in.value
        val[4:0] = pass_through_val
        dut.ui_in.value = val
        await Timer(100, unit="ns")

        assert dut.uo_out.value[4:0] == pass_through_val

    await test_pass_through("00000")
    await test_pass_through("11111")
    await test_pass_through("00001")
    await test_pass_through("00010")
    await test_pass_through("00100")
    await test_pass_through("01000")
    await test_pass_through("10000")