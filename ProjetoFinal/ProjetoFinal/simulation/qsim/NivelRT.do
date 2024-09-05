onerror {quit -f}
vlib work
vlog -work work NivelRT.vo
vlog -work work NivelRT.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.NivelRT_vlg_vec_tst
vcd file -direction NivelRT.msim.vcd
vcd add -internal NivelRT_vlg_vec_tst/*
vcd add -internal NivelRT_vlg_vec_tst/i1/*
add wave /*
run -all
