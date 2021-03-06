# TinyFPGA BX
The TinyFPGA BX board is a tiny FPGA board with low cost per logic element and convenient USB bitstream programming capability.  It measures just 18mm x 36mm and is a perfect fit for breadboards. The heart of the BX board is a iCE40LP8K-CM81 FPGA from Lattice.  

## Table of Contents

* [Getting Started](#getting-started)
* [Specifications](#specifications)
* [Directory Structure](#directory-structure)
  * [Apio Template](#apio-template)
  * [Icecube2 Template](#icecube2-template)
  * [Icestorm Template](#icestorm-template)
* [Examples](#examples)
  * [PicoSOC](#picosoc)
* [Project Log](#project-logs)
* [License](#license)
* [Building your own TinyFPGA BX Board](#build-your-own)
* [Buy TinyFPGA BX Boards](#buy)


## <a name="getting-started"></a>Getting Started on the BX
The [TinyFPGA BX User Guide](https://tinyfpga.com/bx/guide.html) will help you get up and running with the BX. 

For full details on the ICE40 series of FPGAs you can read the [ICE40 Family Handbook](http://www.latticesemi.com/~/media/LatticeSemi/Documents/Handbooks/iCE40FamilyHandbook.pdf).

## <a name="specifications"></a>Specifications
- Height: 1.4 inches, width: 0.7 inches
- Programming interface: USB 2.0 full-speed (12 mbit/sec)
- ICE40LP8K FPGA
    - 7,680 four-input look-up-tables
    - 128 KBit block RAM
    - Phase Locked Loop
    - 41 user IO pins
- 8 MBit of SPI Flash
- Onboard 3.3 V (300 mA) and 1.2 V (150 mA) LDO regulators
- Low-Power 16 MHz MEMs Oscillator
    - 1.3 mA power when active
    - 50 ppm stability.

## <a name="directory-structure"></a>Project Directory Structure
### <a name="board"></a>board
This contains a [KiCad](http://kicad-pcb.org/) project with the schematic and layout of the B-series boards.  The board is designed with 4/4mil track size/spacing and 0.2mm hole size.  BOM list for the BX board is available here as well.

### <a name="apio-template"></a>apio_template
[Apio](https://github.com/FPGAwars/apio) is an open source ecosystem for open FPGA boards, providing a multiplatform toolbox with static pre-built packages, project configuration tools and easy command interface to verify, synthesize, simulate and upload your verilog designs. Apio is used by [Icestudio](https://github.com/FPGAwars/icestudio).

This is a template for an Apio project.

### <a name="icecube2-template"></a>icecube2_template
[iCEcube2 Design Software](http://www.latticesemi.com/iCEcube2) is developed by [Lattice Semiconductor](http://www.latticesemi.com/) for the [ICE40](http://www.latticesemi.com/en/Products/FPGAandCPLD/iCE40) family of FPGAs.

This is a template for an iCecube2 project for developing your own designs to program onto the board.  It takes care of pin and clock constraints.  Just edit the TinyFPGA_BX.v file to add your designs module(s).

### <a name="icestorm-template"></a>icestorm_template
The [IceStorm](http://www.clifford.at/icestorm/) flow is a fully open source Verilog-to-Bitstream flow for iCE40 FPGAs. The flow includes the ([Yosys Open Synthesis Suite](http://www.clifford.at/yosys/) and [Arachne-pnr](https://github.com/YosysHQ/arachne-pnr) / [nextpnr](https://github.com/YosysHQ/nextpnr), and IceStorm) is a fully open source Verilog-to-Bitstream flow for iCE40 FPGAs.

This is a template for an IceStorm project for developing your own designs to program onto the board.  It takes care of pin and clock constraints.  Just edit the TinyFPGA_BX.v file to add your designs module(s).  Use `make` to build your project.

## <a name="examples"></a>Examples

### <a name="picosoc"></a>PicoSOC
A small System-On-Chip including a [RISC-V processor](https://github.com/cliffordwolf/picorv32).

## <a name="project-log"></a>Project Log
For more information on the development and production of the B-Series please read and follow the [TinyFPGA B-Series Project Page](https://hackaday.io/project/26848-tinyfpga-b-series) at hackaday.io.

## <a namee="license"></a>License
The TinyFPGA BX project is an open source project licensed under CERN Open Hardware Licence v1.2.  Please see the included LICENSE file for details.  If you do wish to distribute boards derived from this open source hardware project then you must also release the source files for the boards under CERN Open Hardware Licence v1.2.  You are free to do this, but please improve upon the original design and provide a tangible benefit for users of the board.

## <a name="build-your-own"></a>Building your own TinyFPGA BX Board
It is possible to build the TinyFPGA BX boards by hand in a home lab.  However, it uses tiny 0402 surface mount capacitors and resistors and the iCE40 FPGAs used are in a 81 ball BGA package with 0.4mm pitch between the balls.  It is a challenging undertaking and will most likely result in some bad assembled boards along with the good.  I have used the following with success to hand assemble the prototype boards:
+ Parts for the [TinyFPGA BX](https://octopart.com/bom-tool/ALrZVouf)
+ [Lead-Free Solder Paste](https://www.amazon.com/gp/product/B00HKK6XHC)
+ [Stainless Steel Solder Paste Squeegee](http://dirtypcbs.com/store/details/14/solder-paste-squeegee)
+ [TinyFPGA BX Solder Paste Stencil](https://www.oshstencils.com)
  + You'll need to generate the gerber files and upload the solder paste layer.  If you plan on using solder paste for the FPGA chip, you will want the stainless steel stencil, I do not believe the polymide will work with the fine pitch BGA package.  I have found that fine-pitch BGA packages are easier to assemble with only flux and no paste for prototypes.
+ [TinyFPGA BX PCBs](https://oshpark.com/shared_projects/uMrRTfyL)
  + OSH Park does a very nice job with these boards on their 4-layer process.
+ [Precision Tweezers](https://www.amazon.com/Precision-Anti-static-Marrywindix-Electronics-Jewelry-making/dp/B00DVIEJ14) for placing parts on the board
+ Some sort of magnifying tool for placing parts ([magnifying glasses](https://www.amazon.com/dp/B01H8808H6), [magnifying lamp](https://www.amazon.com/Brightech-LightView-SuperBright-Magnifier-Adjustable/dp/B00UW2IRJ2), microscope)
+ [Reflow Oven](http://www.whizoo.com/)
  + This is the kit I use to reflow my prototypes.  You may also be able to use a good hot-plate or hot-air tool.
+ [Lattice FPGA Programmer](https://www.ebay.com/sch/i.html?_productid=533163279)
  + You will need this to load the bootloader onto the SPI Flash.  Once the bootloader is installed you can use the Python-based programmer application to program the board over USB.

## <a name="buy"></a>Buy TinyFPGA BX Boards
If you don't want to go through the hassle of ordering parts, tools, and supplies and assembling the boards yourself you can order professionally assembled and tested boards from [Crowd Supply](https://www.crowdsupply.com/tinyfpga/tinyfpga-bx).  These boards are not hobbyist-made, they are fabricated and assembled in a professional PCB fab that manufactures and assembles many other consumer, industrial and military electronics.  They go through an automated testing and programming process to ensure the board is healthy and ready to program over USB.  When the Crowd Supply campaign ends and all the backers orders are shipped the boards will become available on Tindie and the TinyFPGA Store.





 the hassle of ordering parts, tools, and supplies and assembling the boards yourself you can order professionally assembled and tested boards from [Crowd Supply](https://www.crowdsupply.com/tinyfpga/tinyfpga-bx).  These boards are not hobbyist-made, they are fabricated and assembled in a professional PCB fab that manufactures and assembles many other consumer, industrial and military electronics.  They go through an automated testing and programming process to ensure the board is healthy and ready to program over USB.  When the Crowd Supply campaign ends and all the backers orders are shipped the boards will become available on Tindie and the TinyFPG
