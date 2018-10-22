@echo off
set xv_path=C:\\Xilinx\\Vivado\\2015.4\\bin
call %xv_path%/xsim calc_tb_func_synth -key {Post-Synthesis:sim_1:Functional:calc_tb} -tclbatch calc_tb.tcl -view D:/GitHub/FPGA-KazNU/Vivado_projects/Calculation_1/project_1.srcs/sim_1/imports/project_1/calc_tb_behav.wcfg -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
