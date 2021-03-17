transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/altera/13.0sp1/SistemasDigitalesII/pract2sistemas/pract2.vhd}
vcom -93 -work work {C:/altera/13.0sp1/SistemasDigitalesII/pract2sistemas/Controlar_paridad.vhd}
vcom -93 -work work {C:/altera/13.0sp1/SistemasDigitalesII/pract2sistemas/DetectorFlancobajada.vhd}
vcom -93 -work work {C:/altera/13.0sp1/SistemasDigitalesII/pract2sistemas/Contador1bit.vhd}
vcom -93 -work work {C:/altera/13.0sp1/SistemasDigitalesII/pract2sistemas/registrops8.vhd}
vcom -93 -work work {C:/altera/13.0sp1/SistemasDigitalesII/pract2sistemas/Unidad_control.vhd}
vcom -93 -work work {C:/altera/13.0sp1/SistemasDigitalesII/pract2sistemas/Contador.vhd}
vcom -93 -work work {C:/altera/13.0sp1/SistemasDigitalesII/pract2sistemas/mux_enviar.vhd}

vcom -93 -work work {C:/altera/13.0sp1/SistemasDigitalesII/pract2sistemas/simulation/modelsim/pract2.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  pract2_vhd_tst

add wave *
view structure
view signals
run -all
