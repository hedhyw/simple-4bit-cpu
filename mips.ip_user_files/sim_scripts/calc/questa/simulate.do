onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib calc_opt

do {wave.do}

view wave
view structure
view signals

do {calc.udo}

run -all

quit -force
