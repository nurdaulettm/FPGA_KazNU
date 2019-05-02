onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib sd_fat32_controller_opt

do {wave.do}

view wave
view structure
view signals

do {sd_fat32_controller.udo}

run -all

quit -force
