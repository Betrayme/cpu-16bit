# cpu-16bit
it's a cpu of 16bit based on FPGA
EDA: QuartusII 13.0
FPGA: Cyclone 4E EP4CE55F23C8
# file structure
Top-Level Entity: CPU16bit  
single-step beat generator: clkstep.bdf
controller: Controlblock.v
buffer: buffer.v
RAM(LPM): memory_ram.v
file for initializing lpm_ram: DATA7X16.mif(16*128)
address register: addrReg.v
PC: programReg.v
register arrays: REG_AR7(16*8)
shift register: shiftReg
alu: ALU.v
woring register: workReg.v
instruction register: instrReg.v
