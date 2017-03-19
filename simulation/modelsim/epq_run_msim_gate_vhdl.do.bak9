transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {epq.vho}

vcom -93 -work work {C:/Users/lukej/Desktop/EPQ/quartus PJ 2/simulation/modelsim/epq.vht}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /NA=epq_vhd.sdo -L altera -L altera_lnsim -L cyclonev -L gate_work -L work -voptargs="+acc"  alu_vhd_tsts

add wave *
view structure
view signals
run -all
