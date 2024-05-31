transcript on
if ![file isdirectory verilog_libs] {
	file mkdir verilog_libs
}

vlib verilog_libs/altera_ver
vmap altera_ver ./verilog_libs/altera_ver
vlog -vlog01compat -work altera_ver {d:/quatusii/install/quartus/eda/sim_lib/altera_primitives.v}

vlib verilog_libs/lpm_ver
vmap lpm_ver ./verilog_libs/lpm_ver
vlog -vlog01compat -work lpm_ver {d:/quatusii/install/quartus/eda/sim_lib/220model.v}

vlib verilog_libs/sgate_ver
vmap sgate_ver ./verilog_libs/sgate_ver
vlog -vlog01compat -work sgate_ver {d:/quatusii/install/quartus/eda/sim_lib/sgate.v}

vlib verilog_libs/altera_mf_ver
vmap altera_mf_ver ./verilog_libs/altera_mf_ver
vlog -vlog01compat -work altera_mf_ver {d:/quatusii/install/quartus/eda/sim_lib/altera_mf.v}

vlib verilog_libs/altera_lnsim_ver
vmap altera_lnsim_ver ./verilog_libs/altera_lnsim_ver
vlog -sv -work altera_lnsim_ver {d:/quatusii/install/quartus/eda/sim_lib/altera_lnsim.sv}

vlib verilog_libs/cycloneive_ver
vmap cycloneive_ver ./verilog_libs/cycloneive_ver
vlog -vlog01compat -work cycloneive_ver {d:/quatusii/install/quartus/eda/sim_lib/cycloneive_atoms.v}

if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/WORK_SPCAE/QuatusII_Project/cpu_v1 {D:/WORK_SPCAE/QuatusII_Project/cpu_v1/CPU16bit.v}
vlog -vlog01compat -work work +incdir+D:/WORK_SPCAE/QuatusII_Project/cpu_v1 {D:/WORK_SPCAE/QuatusII_Project/cpu_v1/mux_div_reg.v}
vlog -vlog01compat -work work +incdir+D:/WORK_SPCAE/QuatusII_Project/cpu_v1 {D:/WORK_SPCAE/QuatusII_Project/cpu_v1/mux_ans.v}
vlog -vlog01compat -work work +incdir+D:/WORK_SPCAE/QuatusII_Project/cpu_v1 {D:/WORK_SPCAE/QuatusII_Project/cpu_v1/tb.v}
vlog -vlog01compat -work work +incdir+D:/WORK_SPCAE/QuatusII_Project/cpu_v1 {D:/WORK_SPCAE/QuatusII_Project/cpu_v1/led.v}
vlog -vlog01compat -work work +incdir+D:/WORK_SPCAE/QuatusII_Project/cpu_v1 {D:/WORK_SPCAE/QuatusII_Project/cpu_v1/instrReg.v}
vlog -vlog01compat -work work +incdir+D:/WORK_SPCAE/QuatusII_Project/cpu_v1 {D:/WORK_SPCAE/QuatusII_Project/cpu_v1/workReg.v}
vlog -vlog01compat -work work +incdir+D:/WORK_SPCAE/QuatusII_Project/cpu_v1 {D:/WORK_SPCAE/QuatusII_Project/cpu_v1/ALU.v}
vlog -vlog01compat -work work +incdir+D:/WORK_SPCAE/QuatusII_Project/cpu_v1 {D:/WORK_SPCAE/QuatusII_Project/cpu_v1/shiftReg.v}
vlog -vlog01compat -work work +incdir+D:/WORK_SPCAE/QuatusII_Project/cpu_v1 {D:/WORK_SPCAE/QuatusII_Project/cpu_v1/REG_AR7.v}
vlog -vlog01compat -work work +incdir+D:/WORK_SPCAE/QuatusII_Project/cpu_v1 {D:/WORK_SPCAE/QuatusII_Project/cpu_v1/programReg.v}
vlog -vlog01compat -work work +incdir+D:/WORK_SPCAE/QuatusII_Project/cpu_v1 {D:/WORK_SPCAE/QuatusII_Project/cpu_v1/addrReg.v}
vlog -vlog01compat -work work +incdir+D:/WORK_SPCAE/QuatusII_Project/cpu_v1 {D:/WORK_SPCAE/QuatusII_Project/cpu_v1/memory_ram.v}
vlog -vlog01compat -work work +incdir+D:/WORK_SPCAE/QuatusII_Project/cpu_v1 {D:/WORK_SPCAE/QuatusII_Project/cpu_v1/buffer.v}
vlog -vlog01compat -work work +incdir+D:/WORK_SPCAE/QuatusII_Project/cpu_v1 {D:/WORK_SPCAE/QuatusII_Project/cpu_v1/Contrlblock.v}
vlog -vlog01compat -work work +incdir+D:/WORK_SPCAE/QuatusII_Project/cpu_v1 {D:/WORK_SPCAE/QuatusII_Project/cpu_v1/clkstep.v}
vlog -vlog01compat -work work +incdir+D:/WORK_SPCAE/QuatusII_Project/cpu_v1 {D:/WORK_SPCAE/QuatusII_Project/cpu_v1/clkdiv.v}
vlog -vlog01compat -work work +incdir+D:/WORK_SPCAE/QuatusII_Project/cpu_v1 {D:/WORK_SPCAE/QuatusII_Project/cpu_v1/connection.v}

vlog -vlog01compat -work work +incdir+D:/WORK_SPCAE/QuatusII_Project/cpu_v1/sim {D:/WORK_SPCAE/QuatusII_Project/cpu_v1/sim/testtop.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  testtop

add wave *
view structure
view signals
run -all
