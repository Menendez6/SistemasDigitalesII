transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/altera/13.0sp1/SistemasDigitalesII/practica5/UnidadControl.vhd}
vcom -93 -work work {C:/altera/13.0sp1/SistemasDigitalesII/practica5/ALU.vhd}
vcom -93 -work work {C:/altera/13.0sp1/SistemasDigitalesII/practica5/ROM.vhd}
vcom -93 -work work {C:/altera/13.0sp1/SistemasDigitalesII/practica5/BancoRegistros.vhd}
vcom -93 -work work {C:/altera/13.0sp1/SistemasDigitalesII/practica5/InmGen.vhd}
vcom -93 -work work {C:/altera/13.0sp1/SistemasDigitalesII/practica5/ram_core.vhd}
vcom -93 -work work {C:/altera/13.0sp1/SistemasDigitalesII/practica5/sum_res.vhd}
vcom -93 -work work {C:/altera/13.0sp1/SistemasDigitalesII/practica5/Ram.vhd}
vcom -93 -work work {C:/altera/13.0sp1/SistemasDigitalesII/practica5/Data_path.vhd}
vcom -93 -work work {C:/altera/13.0sp1/SistemasDigitalesII/practica5/RISCV.vhd}

vcom -93 -work work {C:/altera/13.0sp1/SistemasDigitalesII/practica5/simulation/modelsim/RISCV.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  RISCV_tst_bnch

add wave *
view structure
view signals
run -all
