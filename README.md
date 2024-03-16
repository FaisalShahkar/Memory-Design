# Dual Port RAM Design

This is a simple Verilog implementation of a Dual Port RAM with a size of 32x8, developed as part of the training task in the SemiRise training batch Digital Design course.

## Design Overview

The design features a parameterized dual-port RAM module with independent read and write ports, each equipped with address and data buses. Separate control signals are implemented for read and write operations on each port, ensuring concurrent read and write operations are supported from both ports. All operations are synchronized with the clock signal for accurate timing.

## Design Specifications

- **Data Width:** 32 bits
- **Address Width:** 8 bits
- **Ports:**
  - Port A: Write-enabled with address input for writing data.
  - Port B: Read-enabled with address input for reading data.
- **Operations:**
  - Write Operation: Data can be written to Port A with write enable signal (`wr_en`) and address input (`wr_addr`).
  - Read Operation: Data can be read from Port B with read enable signal (`rd_en`) and address input (`rd_addr`).

## Usage

You can use this Verilog module in your digital design projects that require dual-port RAM functionality. Simply instantiate the module in your design and connect the necessary ports.

## Example Test Bench

An example test bench is provided to demonstrate the functionality of the dual-port RAM module. You can modify and expand this test bench to suit your specific testing requirements.

