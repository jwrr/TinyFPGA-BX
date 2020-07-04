# iCEcube2 Example

This tutorial was developed by [FPGA Cores](https://www.fpga-cores.com/) to 
[iCEcube2](http://www.latticesemi.com/iCEcube2) and [Instant SoC](https://www.fpga-cores.com/instant-soc/)
is used to build the output.

A RISC-V processor running C++ is used to create a very simple system that 
controls a LED with a PWM controller. The LED will ramp up during 1 s, do a 
couple of flashes and then ramp down.

[Instant SoC](https://www.fpga-cores.com/instant-soc/) is developed by
[FPGA Cores](https://www.fpga-cores.com). Instant SoC (System on Chip) 
compiles C++ code directly to synthesize-able VHDL. The VHDL code includes a 
RISC-V soft CPU, CPU instructions, memories and peripherals.

The [iCEcube2 Design Software](http://www.latticesemi.com/iCEcube2) is developed by 
[Lattice Semiconductor](http://www.latticesemi.com) for the [iCE40](http://www.latticesemi.com/en/Products/FPGAandCPLD/iCE40)
family of FPGAs.


