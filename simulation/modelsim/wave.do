onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /testtop/cpu/RST
add wave -noupdate /testtop/cpu/CLK_SYSTEM
add wave -noupdate /testtop/cpu/STEP
add wave -noupdate /testtop/cpu/T1
add wave -noupdate /testtop/cpu/T2
add wave -noupdate /testtop/cpu/databus
add wave -noupdate /testtop/cpu/instrReg
add wave -noupdate /testtop/cpu/state
add wave -noupdate /testtop/cpu/mdsel
add wave -noupdate /testtop/cpu/mdout
add wave -noupdate /testtop/cpu/muxsel
add wave -noupdate /testtop/cpu/com_out
add wave -noupdate /testtop/cpu/regSel
add wave -noupdate /testtop/cpu/muxWr
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {628896336 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits us
update
WaveRestoreZoom {2272893954 ps} {2511952950 ps}
