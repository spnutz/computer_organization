onerror {exit -code 1}
vlib work
vlog -work work processing.vo
vlog -work work register_file.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.register_file_vlg_vec_tst -voptargs="+acc"
vcd file -direction processing.msim.vcd
vcd add -internal register_file_vlg_vec_tst/*
vcd add -internal register_file_vlg_vec_tst/i1/*
run -all
quit -f
