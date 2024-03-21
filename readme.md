# cpu-16bit
it's a cpu of 16bit based on FPGA
EDA: QuartusII 13.0
FPGA: Cyclone 4E EP4CE55F23C8
# File structure
decoder: it's a decoder for instruction of this cpu<br />
Top-Level Entity: CPU16bit<br />
single-step beat generator: clkstep.bdf<br />
controller: Controlblock.v<br />
buffer: buffer.v<br />
RAM(LPM): memory_ram.v<br />
file for initializing lpm_ram: DATA7X16.mif(16*128)<br />
address register: addrReg.v<br />
PC: programReg.v<br />
register arrays: REG_AR7(16*8)<br />
shift register: shiftReg<br />
alu: ALU.v<br />
woring register: workReg.v<br />
instruction register: instrReg.v<br />
