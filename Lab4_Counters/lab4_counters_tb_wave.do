onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /lab4_counters_tb/i_clk
add wave -noupdate /lab4_counters_tb/in_rst
add wave -noupdate /lab4_counters_tb/o_led
add wave -noupdate /lab4_counters_tb/uut/digit_sel
add wave -noupdate -radix unsigned /lab4_counters_tb/uut/digit_0
add wave -noupdate -radix unsigned /lab4_counters_tb/uut/digit_1
add wave -noupdate -radix unsigned /lab4_counters_tb/uut/digit_2
add wave -noupdate -radix unsigned /lab4_counters_tb/uut/digit_3
add wave -noupdate -divider {config digits}
add wave -noupdate /lab4_counters_tb/uut/i_pb_up
add wave -noupdate /lab4_counters_tb/uut/prev_pb_up
add wave -noupdate /lab4_counters_tb/uut/prev_prev_pb_up
add wave -noupdate /lab4_counters_tb/uut/re_pb_up
add wave -noupdate /lab4_counters_tb/uut/sDEC
add wave -noupdate /lab4_counters_tb/uut/sSEL0
add wave -noupdate -radix unsigned /lab4_counters_tb/uut/sCNT_120K
add wave -noupdate -divider run/config
add wave -noupdate /lab4_counters_tb/uut/i_pb_center
add wave -noupdate /lab4_counters_tb/uut/s_run
add wave -noupdate /lab4_counters_tb/uut/re_pb_center
add wave -noupdate -divider cnt0
add wave -noupdate /lab4_counters_tb/uut/sTC0
add wave -noupdate -radix unsigned /lab4_counters_tb/uut/sCNT0
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {13025027 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 251
configure wave -valuecolwidth 62
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {42 us}
