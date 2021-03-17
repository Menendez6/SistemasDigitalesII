transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/altera/13.0sp1/SistemasDigitalesII/Practica3/practica3.vhd}
vcom -93 -work work {C:/altera/13.0sp1/SistemasDigitalesII/Practica3/contador1ms.vhd}
vcom -93 -work work {C:/altera/13.0sp1/SistemasDigitalesII/Practica3/contador.vhd}
vcom -93 -work work {C:/altera/13.0sp1/SistemasDigitalesII/Practica3/selector.vhd}
vcom -93 -work work {C:/altera/13.0sp1/SistemasDigitalesII/Practica3/registro.vhd}
vcom -93 -work work {C:/altera/13.0sp1/SistemasDigitalesII/Practica3/multiplexor.vhd}
vcom -93 -work work {C:/altera/13.0sp1/SistemasDigitalesII/Practica3/asciia16seg.vhd}

vcom -93 -work work {C:/altera/13.0sp1/SistemasDigitalesII/Practica3/simulation/modelsim/Practica3.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  Practica3_vhd_tst

add wave *
view structure
view signals
run -all
