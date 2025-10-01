# Single-Cycle CPU in SystemVerilog

## Overview
This repository contains a simple **single-cycle CPU** implementation written in **SystemVerilog**.  
It is designed as a learning project to understand CPU architecture, datapaths, and module-level design.
This project is a work in progress, with plans to extend it to a pipelined CPU and add additional features.

The CPU supports:
- Basic arithmetic and logic operations (ALU)
- Register file with two read ports and one write port
- Instruction memory (for storing program instructions)
- Data memory (for load/store operations)
- Control unit generating signals for ALU, memory, and registers

This project is modular, with each hardware block implemented as a separate SystemVerilog module.

---

## File Structure
cpu_project/
│
├── alu.sv # Arithmetic Logic Unit
├── regfile.sv # Register File
├── cpu.sv # Top-level CPU module
├── cpu_tb.sv # Testbench for the CPU
├── README.md # This file


## Author
**Prabhav Doma**  
Undergraduate in Computer Engineering | Interested in Digital Design & Computer Architecture  
