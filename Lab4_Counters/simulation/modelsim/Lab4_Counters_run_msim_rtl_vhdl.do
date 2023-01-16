transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/FTN/LPRS1_01/Lab4_Counters/lab4_counters.vhd}

vcom -93 -work work {D:/FTN/LPRS1_01/Lab4_Counters/lab4_counters_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  lab4_counters_tb

do D:/FTN/LPRS1_01/Lab4_Counters/lab4_counters_tb_run.do
