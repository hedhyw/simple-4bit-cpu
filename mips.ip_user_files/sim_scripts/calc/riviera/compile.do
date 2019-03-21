vlib work
vlib riviera

vlib riviera/xil_defaultlib

vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/calc/ip/calc_alu_0_0/calc_alu_0_0_sim_netlist.v" \
"../../../bd/calc/ip/calc_mem_0_0/calc_mem_0_0_sim_netlist.v" \
"../../../bd/calc/ip/calc_pc_0_0/calc_pc_0_0_sim_netlist.v" \
"../../../bd/calc/ip/calc_cntrl_fsm_0_1/calc_cntrl_fsm_0_1_sim_netlist.v" \
"../../../bd/calc/ip/calc_cf_0_0/calc_cf_0_0_sim_netlist.v" \
"../../../bd/calc/sim/calc.v" \


vlog -work xil_defaultlib \
"glbl.v"

