REM BLINKY2BRAM_UCF.bat wmh 2015-02-18 : generates a compile-time .ucf file for the BRAMs containing the software for the 'BLINKY' mc8051-FPGA implementation example 
REM updated 2015-02-18 to use the Windows compatible hex2mem.exe executable generated by mingw2 gcc
REM
REM Edit path information below for compatibility on your system 
REM

REM  copy the .hex file of the BLINKY example generated by the Keil compiler into the local directory
	copy ..\8051_code\BLINKY.hex BLINKY.hex
REM  convert Blinky.hex file into Blinky.mem file to be used by the Xilinx tools
	hex2mem BLINKY

REM  construct a constraint file ROMBRAMfill.ucf which when added to the Xilinx project will initialize the mc8051's ROM data
REM  note: ROM4kx8.bmm must be updated to reflect the current identification of the ROM component 
REM        which can be seen in Webpack's "FPGA Editor" after the design has been fitted.
REM        Example from current design: XLXI_11/ROM2k_00 is at RAMB16_X1Y2

	C:\Xilinx\14.7\ISE_DS\ISE\bin\nt\data2mem -bm ROM4kx8.bmm -bd BLINKY.mem -o u ..\8051_logic\ROMinit
	pause