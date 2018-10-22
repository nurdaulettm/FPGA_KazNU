@echo off
set xv_path=C:\\Xilinx\\Vivado\\2015.4\\bin
call %xv_path%/xelab  -wto 02958141145c4546bf697b66daaa0f73 -m64 --debug typical --relax --mt 2 -L xbip_utils_v3_0_5 -L axi_utils_v2_0_1 -L xbip_pipe_v3_0_1 -L xbip_dsp48_wrapper_v3_0_4 -L xbip_dsp48_addsub_v3_0_1 -L xbip_dsp48_multadd_v3_0_1 -L xbip_bram18k_v3_0_1 -L mult_gen_v12_0_10 -L floating_point_v7_1_1 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot calc_tb_behav xil_defaultlib.calc_tb xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
