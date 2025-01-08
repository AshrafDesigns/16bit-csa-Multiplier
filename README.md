
# 16-bit Carry Select Adder

This repository contains the Verilog implementation of a 16-bit Carry Select Adder (CSA), a hardware-efficient design used for fast addition operations in digital systems. 

## Overview

Carry Select Adder (CSA) is an arithmetic circuit used to perform addition of two binary numbers. It improves performance by dividing the addition into smaller parts and computing carry-in values in parallel, significantly reducing propagation delay compared to a Ripple Carry Adder.

### Key Features:
- **High Performance:** Reduces carry propagation delay.
- **Parallel Computation:** Calculates results for carry-in `0` and `1` simultaneously.
- **Scalable Design:** Easily extendable to larger bit widths.

---

## Architecture

The 16-bit CSA is divided into smaller blocks:
1. **Lower Bits:** Uses Ripple Carry Adder (RCA) for the first few bits.
2. **Higher Bits:** Uses two RCAs to compute sums for carry-in `0` and `1`.
3. **Multiplexer:** Selects the final sum and carry based on the carry-in from the lower block.

---

## File Structure

- `csa_16bit.v` - Verilog implementation of the 16-bit CSA.
- `testbench.v` - Testbench for verifying the functionality of the CSA.
- `README.md` - Documentation for the project.

---

## Simulation and Verification

1. **Simulation Tool:** Use any Verilog simulator (e.g., ModelSim, Xilinx Vivado, or Cadence Xcelium).
2. **Steps to Simulate:**
   - Compile `csa_16bit.v` and `testbench.v`.
   - Run the testbench to verify the functionality.
   - View waveforms to analyze the adder's performance.

3. **Test Cases:**
   - Input: `A = 16'hFFFF`, `B = 16'h0001`, `Cin = 0`
   - Expected Output: `Sum = 16'h0000`, `Cout = 1`
   - Additional cases include random and boundary inputs.

---

## How to Use

1. Clone this repository:
   ```bash
   git clone https://github.com/YourUsername/16-bit-csa-multiplier.git
