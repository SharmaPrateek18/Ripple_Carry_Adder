# Ripple_Carry_Adder
A Ripple Carry Adder of 8 bits is implemented using Verilog.

# Overview
This Verilog module implements an 8-bit ripple carry adder (RCA) using full adders. The module takes two 8-bit inputs a and b, a carry-in input cin, and outputs an 8-bit sum s and a carry-out output cout.

# Inputs
**a (8-bit):** First input to be added

**b (8-bit):** Second input to be added

**cin (1-bit):** Carry-in input

# Outputs

**s (8-bit):** Sum of the two inputs

**cout (1-bit):** Carry-out output

# Wires

**c1-c7 (1-bit each):** Wires for connecting the carry outputs of the full adders

# Full Adders
The RCA is constructed using eight full adders (FA0 to FA7), which are instantiated using Verilog module Full_Adder. Each full adder takes three inputs (a bit from a, a bit from b, and a carry-in bit) and produces two outputs (a sum bit and a carry-out bit). The carry-out bit from each full adder is connected to the carry-in bit of the next full adder using the c1-c7 wires.

The Verilog code uses wire data types for connecting the carry-out bits of the full adders, and output data types for the sum and carry-out outputs.

# Simulation
To simulate the RCA, testbench code is provided that instantiates the top_RCA module and provides stimulus to its inputs. This testbench code can be used to verify that the module produces the correct output for various input combinations.
