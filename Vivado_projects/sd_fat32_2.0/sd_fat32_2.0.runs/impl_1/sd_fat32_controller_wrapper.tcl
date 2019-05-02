proc start_step { step } {
  set stopFile ".stop.rst"
  if {[file isfile .stop.rst]} {
    puts ""
    puts "*** Halting run - EA reset detected ***"
    puts ""
    puts ""
    return -code error
  }
  set beginFile ".$step.begin.rst"
  set platform "$::tcl_platform(platform)"
  set user "$::tcl_platform(user)"
  set pid [pid]
  set host ""
  if { [string equal $platform unix] } {
    if { [info exist ::env(HOSTNAME)] } {
      set host $::env(HOSTNAME)
    }
  } else {
    if { [info exist ::env(COMPUTERNAME)] } {
      set host $::env(COMPUTERNAME)
    }
  }
  set ch [open $beginFile w]
  puts $ch "<?xml version=\"1.0\"?>"
  puts $ch "<ProcessHandle Version=\"1\" Minor=\"0\">"
  puts $ch "    <Process Command=\".planAhead.\" Owner=\"$user\" Host=\"$host\" Pid=\"$pid\">"
  puts $ch "    </Process>"
  puts $ch "</ProcessHandle>"
  close $ch
}

proc end_step { step } {
  set endFile ".$step.end.rst"
  set ch [open $endFile w]
  close $ch
}

proc step_failed { step } {
  set endFile ".$step.error.rst"
  set ch [open $endFile w]
  close $ch
}

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000

start_step init_design
set rc [catch {
  create_msg_db init_design.pb
  create_project -in_memory -part xc7a100tcsg324-1
  set_property board_part digilentinc.com:nexys-a7-100t:part0:1.0 [current_project]
  set_property design_mode GateLvl [current_fileset]
  set_property webtalk.parent_dir D:/FPGA/Trash/sd_fat32_2.0/sd_fat32_2.0.cache/wt [current_project]
  set_property parent.project_path D:/FPGA/Trash/sd_fat32_2.0/sd_fat32_2.0.xpr [current_project]
  set_property ip_repo_paths {
  d:/FPGA/Trash/sd_fat32_2.0/sd_fat32_2.0.cache/ip
  C:/Xilinx/Vivado/2015.4/data/vivado-library
} [current_project]
  set_property ip_output_repo d:/FPGA/Trash/sd_fat32_2.0/sd_fat32_2.0.cache/ip [current_project]
  add_files -quiet D:/FPGA/Trash/sd_fat32_2.0/sd_fat32_2.0.runs/synth_1/sd_fat32_controller_wrapper.dcp
  add_files D:/FPGA/Trash/sd_fat32_2.0/sd_fat32_2.0.srcs/sources_1/bd/sd_fat32_controller/sd_fat32_controller.bmm
  set_property SCOPED_TO_REF sd_fat32_controller [get_files -all D:/FPGA/Trash/sd_fat32_2.0/sd_fat32_2.0.srcs/sources_1/bd/sd_fat32_controller/sd_fat32_controller.bmm]
  set_property SCOPED_TO_CELLS {} [get_files -all D:/FPGA/Trash/sd_fat32_2.0/sd_fat32_2.0.srcs/sources_1/bd/sd_fat32_controller/sd_fat32_controller.bmm]
  add_files d:/FPGA/Trash/sd_fat32_2.0/sd_fat32_2.0.srcs/sources_1/bd/sd_fat32_controller/ip/sd_fat32_controller_microblaze_0_0/data/mb_bootloop_le.elf
  set_property SCOPED_TO_REF sd_fat32_controller [get_files -all d:/FPGA/Trash/sd_fat32_2.0/sd_fat32_2.0.srcs/sources_1/bd/sd_fat32_controller/ip/sd_fat32_controller_microblaze_0_0/data/mb_bootloop_le.elf]
  set_property SCOPED_TO_CELLS microblaze_0 [get_files -all d:/FPGA/Trash/sd_fat32_2.0/sd_fat32_2.0.srcs/sources_1/bd/sd_fat32_controller/ip/sd_fat32_controller_microblaze_0_0/data/mb_bootloop_le.elf]
  read_xdc -ref sd_fat32_controller_mig_7series_0_1 d:/FPGA/Trash/sd_fat32_2.0/sd_fat32_2.0.srcs/sources_1/bd/sd_fat32_controller/ip/sd_fat32_controller_mig_7series_0_1/sd_fat32_controller_mig_7series_0_1/user_design/constraints/sd_fat32_controller_mig_7series_0_1.xdc
  set_property processing_order EARLY [get_files d:/FPGA/Trash/sd_fat32_2.0/sd_fat32_2.0.srcs/sources_1/bd/sd_fat32_controller/ip/sd_fat32_controller_mig_7series_0_1/sd_fat32_controller_mig_7series_0_1/user_design/constraints/sd_fat32_controller_mig_7series_0_1.xdc]
  read_xdc -prop_thru_buffers -ref sd_fat32_controller_mig_7series_0_1 d:/FPGA/Trash/sd_fat32_2.0/sd_fat32_2.0.srcs/sources_1/bd/sd_fat32_controller/ip/sd_fat32_controller_mig_7series_0_1/sd_fat32_controller_mig_7series_0_1_board.xdc
  set_property processing_order EARLY [get_files d:/FPGA/Trash/sd_fat32_2.0/sd_fat32_2.0.srcs/sources_1/bd/sd_fat32_controller/ip/sd_fat32_controller_mig_7series_0_1/sd_fat32_controller_mig_7series_0_1_board.xdc]
  read_xdc -prop_thru_buffers -ref sd_fat32_controller_clk_wiz_0_0 -cells inst d:/FPGA/Trash/sd_fat32_2.0/sd_fat32_2.0.srcs/sources_1/bd/sd_fat32_controller/ip/sd_fat32_controller_clk_wiz_0_0/sd_fat32_controller_clk_wiz_0_0_board.xdc
  set_property processing_order EARLY [get_files d:/FPGA/Trash/sd_fat32_2.0/sd_fat32_2.0.srcs/sources_1/bd/sd_fat32_controller/ip/sd_fat32_controller_clk_wiz_0_0/sd_fat32_controller_clk_wiz_0_0_board.xdc]
  read_xdc -ref sd_fat32_controller_clk_wiz_0_0 -cells inst d:/FPGA/Trash/sd_fat32_2.0/sd_fat32_2.0.srcs/sources_1/bd/sd_fat32_controller/ip/sd_fat32_controller_clk_wiz_0_0/sd_fat32_controller_clk_wiz_0_0.xdc
  set_property processing_order EARLY [get_files d:/FPGA/Trash/sd_fat32_2.0/sd_fat32_2.0.srcs/sources_1/bd/sd_fat32_controller/ip/sd_fat32_controller_clk_wiz_0_0/sd_fat32_controller_clk_wiz_0_0.xdc]
  read_xdc -prop_thru_buffers -ref sd_fat32_controller_axi_uartlite_0_0 -cells U0 d:/FPGA/Trash/sd_fat32_2.0/sd_fat32_2.0.srcs/sources_1/bd/sd_fat32_controller/ip/sd_fat32_controller_axi_uartlite_0_0/sd_fat32_controller_axi_uartlite_0_0_board.xdc
  set_property processing_order EARLY [get_files d:/FPGA/Trash/sd_fat32_2.0/sd_fat32_2.0.srcs/sources_1/bd/sd_fat32_controller/ip/sd_fat32_controller_axi_uartlite_0_0/sd_fat32_controller_axi_uartlite_0_0_board.xdc]
  read_xdc -ref sd_fat32_controller_axi_uartlite_0_0 -cells U0 d:/FPGA/Trash/sd_fat32_2.0/sd_fat32_2.0.srcs/sources_1/bd/sd_fat32_controller/ip/sd_fat32_controller_axi_uartlite_0_0/sd_fat32_controller_axi_uartlite_0_0.xdc
  set_property processing_order EARLY [get_files d:/FPGA/Trash/sd_fat32_2.0/sd_fat32_2.0.srcs/sources_1/bd/sd_fat32_controller/ip/sd_fat32_controller_axi_uartlite_0_0/sd_fat32_controller_axi_uartlite_0_0.xdc]
  read_xdc -ref sd_fat32_controller_microblaze_0_0 -cells U0 d:/FPGA/Trash/sd_fat32_2.0/sd_fat32_2.0.srcs/sources_1/bd/sd_fat32_controller/ip/sd_fat32_controller_microblaze_0_0/sd_fat32_controller_microblaze_0_0.xdc
  set_property processing_order EARLY [get_files d:/FPGA/Trash/sd_fat32_2.0/sd_fat32_2.0.srcs/sources_1/bd/sd_fat32_controller/ip/sd_fat32_controller_microblaze_0_0/sd_fat32_controller_microblaze_0_0.xdc]
  read_xdc -ref sd_fat32_controller_dlmb_v10_0 -cells U0 d:/FPGA/Trash/sd_fat32_2.0/sd_fat32_2.0.srcs/sources_1/bd/sd_fat32_controller/ip/sd_fat32_controller_dlmb_v10_0/sd_fat32_controller_dlmb_v10_0.xdc
  set_property processing_order EARLY [get_files d:/FPGA/Trash/sd_fat32_2.0/sd_fat32_2.0.srcs/sources_1/bd/sd_fat32_controller/ip/sd_fat32_controller_dlmb_v10_0/sd_fat32_controller_dlmb_v10_0.xdc]
  read_xdc -ref sd_fat32_controller_ilmb_v10_0 -cells U0 d:/FPGA/Trash/sd_fat32_2.0/sd_fat32_2.0.srcs/sources_1/bd/sd_fat32_controller/ip/sd_fat32_controller_ilmb_v10_0/sd_fat32_controller_ilmb_v10_0.xdc
  set_property processing_order EARLY [get_files d:/FPGA/Trash/sd_fat32_2.0/sd_fat32_2.0.srcs/sources_1/bd/sd_fat32_controller/ip/sd_fat32_controller_ilmb_v10_0/sd_fat32_controller_ilmb_v10_0.xdc]
  read_xdc -ref sd_fat32_controller_mdm_1_0 -cells U0 d:/FPGA/Trash/sd_fat32_2.0/sd_fat32_2.0.srcs/sources_1/bd/sd_fat32_controller/ip/sd_fat32_controller_mdm_1_0/sd_fat32_controller_mdm_1_0.xdc
  set_property processing_order EARLY [get_files d:/FPGA/Trash/sd_fat32_2.0/sd_fat32_2.0.srcs/sources_1/bd/sd_fat32_controller/ip/sd_fat32_controller_mdm_1_0/sd_fat32_controller_mdm_1_0.xdc]
  read_xdc -prop_thru_buffers -ref sd_fat32_controller_rst_clk_wiz_0_100M_0 d:/FPGA/Trash/sd_fat32_2.0/sd_fat32_2.0.srcs/sources_1/bd/sd_fat32_controller/ip/sd_fat32_controller_rst_clk_wiz_0_100M_0/sd_fat32_controller_rst_clk_wiz_0_100M_0_board.xdc
  set_property processing_order EARLY [get_files d:/FPGA/Trash/sd_fat32_2.0/sd_fat32_2.0.srcs/sources_1/bd/sd_fat32_controller/ip/sd_fat32_controller_rst_clk_wiz_0_100M_0/sd_fat32_controller_rst_clk_wiz_0_100M_0_board.xdc]
  read_xdc -ref sd_fat32_controller_rst_clk_wiz_0_100M_0 d:/FPGA/Trash/sd_fat32_2.0/sd_fat32_2.0.srcs/sources_1/bd/sd_fat32_controller/ip/sd_fat32_controller_rst_clk_wiz_0_100M_0/sd_fat32_controller_rst_clk_wiz_0_100M_0.xdc
  set_property processing_order EARLY [get_files d:/FPGA/Trash/sd_fat32_2.0/sd_fat32_2.0.srcs/sources_1/bd/sd_fat32_controller/ip/sd_fat32_controller_rst_clk_wiz_0_100M_0/sd_fat32_controller_rst_clk_wiz_0_100M_0.xdc]
  read_xdc -prop_thru_buffers -ref sd_fat32_controller_rst_mig_7series_0_75M_0 d:/FPGA/Trash/sd_fat32_2.0/sd_fat32_2.0.srcs/sources_1/bd/sd_fat32_controller/ip/sd_fat32_controller_rst_mig_7series_0_75M_0/sd_fat32_controller_rst_mig_7series_0_75M_0_board.xdc
  set_property processing_order EARLY [get_files d:/FPGA/Trash/sd_fat32_2.0/sd_fat32_2.0.srcs/sources_1/bd/sd_fat32_controller/ip/sd_fat32_controller_rst_mig_7series_0_75M_0/sd_fat32_controller_rst_mig_7series_0_75M_0_board.xdc]
  read_xdc -ref sd_fat32_controller_rst_mig_7series_0_75M_0 d:/FPGA/Trash/sd_fat32_2.0/sd_fat32_2.0.srcs/sources_1/bd/sd_fat32_controller/ip/sd_fat32_controller_rst_mig_7series_0_75M_0/sd_fat32_controller_rst_mig_7series_0_75M_0.xdc
  set_property processing_order EARLY [get_files d:/FPGA/Trash/sd_fat32_2.0/sd_fat32_2.0.srcs/sources_1/bd/sd_fat32_controller/ip/sd_fat32_controller_rst_mig_7series_0_75M_0/sd_fat32_controller_rst_mig_7series_0_75M_0.xdc]
  read_xdc -prop_thru_buffers -ref sd_fat32_controller_PmodSD_0_1 -cells inst d:/FPGA/Trash/sd_fat32_2.0/sd_fat32_2.0.srcs/sources_1/bd/sd_fat32_controller/ip/sd_fat32_controller_PmodSD_0_1/sd_fat32_controller_PmodSD_0_1_board.xdc
  set_property processing_order EARLY [get_files d:/FPGA/Trash/sd_fat32_2.0/sd_fat32_2.0.srcs/sources_1/bd/sd_fat32_controller/ip/sd_fat32_controller_PmodSD_0_1/sd_fat32_controller_PmodSD_0_1_board.xdc]
  read_xdc -prop_thru_buffers -ref PmodSD_axi_gpio_0_0 -cells U0 d:/FPGA/Trash/sd_fat32_2.0/sd_fat32_2.0.srcs/sources_1/bd/sd_fat32_controller/ip/sd_fat32_controller_PmodSD_0_1/src/PmodSD_axi_gpio_0_0/PmodSD_axi_gpio_0_0_board.xdc
  set_property processing_order EARLY [get_files d:/FPGA/Trash/sd_fat32_2.0/sd_fat32_2.0.srcs/sources_1/bd/sd_fat32_controller/ip/sd_fat32_controller_PmodSD_0_1/src/PmodSD_axi_gpio_0_0/PmodSD_axi_gpio_0_0_board.xdc]
  read_xdc -ref PmodSD_axi_gpio_0_0 -cells U0 d:/FPGA/Trash/sd_fat32_2.0/sd_fat32_2.0.srcs/sources_1/bd/sd_fat32_controller/ip/sd_fat32_controller_PmodSD_0_1/src/PmodSD_axi_gpio_0_0/PmodSD_axi_gpio_0_0.xdc
  set_property processing_order EARLY [get_files d:/FPGA/Trash/sd_fat32_2.0/sd_fat32_2.0.srcs/sources_1/bd/sd_fat32_controller/ip/sd_fat32_controller_PmodSD_0_1/src/PmodSD_axi_gpio_0_0/PmodSD_axi_gpio_0_0.xdc]
  read_xdc -prop_thru_buffers -ref PmodSD_axi_quad_spi_0_0 -cells U0 d:/FPGA/Trash/sd_fat32_2.0/sd_fat32_2.0.srcs/sources_1/bd/sd_fat32_controller/ip/sd_fat32_controller_PmodSD_0_1/src/PmodSD_axi_quad_spi_0_0/PmodSD_axi_quad_spi_0_0_board.xdc
  set_property processing_order EARLY [get_files d:/FPGA/Trash/sd_fat32_2.0/sd_fat32_2.0.srcs/sources_1/bd/sd_fat32_controller/ip/sd_fat32_controller_PmodSD_0_1/src/PmodSD_axi_quad_spi_0_0/PmodSD_axi_quad_spi_0_0_board.xdc]
  read_xdc -ref PmodSD_axi_quad_spi_0_0 -cells U0 d:/FPGA/Trash/sd_fat32_2.0/sd_fat32_2.0.srcs/sources_1/bd/sd_fat32_controller/ip/sd_fat32_controller_PmodSD_0_1/src/PmodSD_axi_quad_spi_0_0/PmodSD_axi_quad_spi_0_0.xdc
  set_property processing_order EARLY [get_files d:/FPGA/Trash/sd_fat32_2.0/sd_fat32_2.0.srcs/sources_1/bd/sd_fat32_controller/ip/sd_fat32_controller_PmodSD_0_1/src/PmodSD_axi_quad_spi_0_0/PmodSD_axi_quad_spi_0_0.xdc]
  read_xdc -prop_thru_buffers -ref PmodSD_pmod_bridge_0_0 -cells inst d:/FPGA/Trash/sd_fat32_2.0/sd_fat32_2.0.srcs/sources_1/bd/sd_fat32_controller/ip/sd_fat32_controller_PmodSD_0_1/src/PmodSD_pmod_bridge_0_0/PmodSD_pmod_bridge_0_0_board.xdc
  set_property processing_order EARLY [get_files d:/FPGA/Trash/sd_fat32_2.0/sd_fat32_2.0.srcs/sources_1/bd/sd_fat32_controller/ip/sd_fat32_controller_PmodSD_0_1/src/PmodSD_pmod_bridge_0_0/PmodSD_pmod_bridge_0_0_board.xdc]
  read_xdc -ref PmodSD_axi_quad_spi_0_0 -cells U0 d:/FPGA/Trash/sd_fat32_2.0/sd_fat32_2.0.srcs/sources_1/bd/sd_fat32_controller/ip/sd_fat32_controller_PmodSD_0_1/src/PmodSD_axi_quad_spi_0_0/PmodSD_axi_quad_spi_0_0_clocks.xdc
  set_property processing_order LATE [get_files d:/FPGA/Trash/sd_fat32_2.0/sd_fat32_2.0.srcs/sources_1/bd/sd_fat32_controller/ip/sd_fat32_controller_PmodSD_0_1/src/PmodSD_axi_quad_spi_0_0/PmodSD_axi_quad_spi_0_0_clocks.xdc]
  read_xdc -ref sd_fat32_controller_auto_cc_0 -cells inst d:/FPGA/Trash/sd_fat32_2.0/sd_fat32_2.0.srcs/sources_1/bd/sd_fat32_controller/ip/sd_fat32_controller_auto_cc_0/sd_fat32_controller_auto_cc_0_clocks.xdc
  set_property processing_order LATE [get_files d:/FPGA/Trash/sd_fat32_2.0/sd_fat32_2.0.srcs/sources_1/bd/sd_fat32_controller/ip/sd_fat32_controller_auto_cc_0/sd_fat32_controller_auto_cc_0_clocks.xdc]
  read_xdc -ref sd_fat32_controller_auto_us_0 -cells inst d:/FPGA/Trash/sd_fat32_2.0/sd_fat32_2.0.srcs/sources_1/bd/sd_fat32_controller/ip/sd_fat32_controller_auto_us_0/sd_fat32_controller_auto_us_0_clocks.xdc
  set_property processing_order LATE [get_files d:/FPGA/Trash/sd_fat32_2.0/sd_fat32_2.0.srcs/sources_1/bd/sd_fat32_controller/ip/sd_fat32_controller_auto_us_0/sd_fat32_controller_auto_us_0_clocks.xdc]
  read_xdc -ref sd_fat32_controller_auto_us_1 -cells inst d:/FPGA/Trash/sd_fat32_2.0/sd_fat32_2.0.srcs/sources_1/bd/sd_fat32_controller/ip/sd_fat32_controller_auto_us_1/sd_fat32_controller_auto_us_1_clocks.xdc
  set_property processing_order LATE [get_files d:/FPGA/Trash/sd_fat32_2.0/sd_fat32_2.0.srcs/sources_1/bd/sd_fat32_controller/ip/sd_fat32_controller_auto_us_1/sd_fat32_controller_auto_us_1_clocks.xdc]
  link_design -top sd_fat32_controller_wrapper -part xc7a100tcsg324-1
  close_msg_db -file init_design.pb
} RESULT]
if {$rc} {
  step_failed init_design
  return -code error $RESULT
} else {
  end_step init_design
}

start_step opt_design
set rc [catch {
  create_msg_db opt_design.pb
  catch {write_debug_probes -quiet -force debug_nets}
  opt_design 
  write_checkpoint -force sd_fat32_controller_wrapper_opt.dcp
  report_drc -file sd_fat32_controller_wrapper_drc_opted.rpt
  close_msg_db -file opt_design.pb
} RESULT]
if {$rc} {
  step_failed opt_design
  return -code error $RESULT
} else {
  end_step opt_design
}

start_step place_design
set rc [catch {
  create_msg_db place_design.pb
  catch {write_hwdef -file sd_fat32_controller_wrapper.hwdef}
  place_design 
  write_checkpoint -force sd_fat32_controller_wrapper_placed.dcp
  report_io -file sd_fat32_controller_wrapper_io_placed.rpt
  report_utilization -file sd_fat32_controller_wrapper_utilization_placed.rpt -pb sd_fat32_controller_wrapper_utilization_placed.pb
  report_control_sets -verbose -file sd_fat32_controller_wrapper_control_sets_placed.rpt
  close_msg_db -file place_design.pb
} RESULT]
if {$rc} {
  step_failed place_design
  return -code error $RESULT
} else {
  end_step place_design
}

start_step route_design
set rc [catch {
  create_msg_db route_design.pb
  route_design 
  write_checkpoint -force sd_fat32_controller_wrapper_routed.dcp
  report_drc -file sd_fat32_controller_wrapper_drc_routed.rpt -pb sd_fat32_controller_wrapper_drc_routed.pb
  report_timing_summary -warn_on_violation -max_paths 10 -file sd_fat32_controller_wrapper_timing_summary_routed.rpt -rpx sd_fat32_controller_wrapper_timing_summary_routed.rpx
  report_power -file sd_fat32_controller_wrapper_power_routed.rpt -pb sd_fat32_controller_wrapper_power_summary_routed.pb
  report_route_status -file sd_fat32_controller_wrapper_route_status.rpt -pb sd_fat32_controller_wrapper_route_status.pb
  report_clock_utilization -file sd_fat32_controller_wrapper_clock_utilization_routed.rpt
  close_msg_db -file route_design.pb
} RESULT]
if {$rc} {
  step_failed route_design
  return -code error $RESULT
} else {
  end_step route_design
}

start_step write_bitstream
set rc [catch {
  create_msg_db write_bitstream.pb
  catch { write_mem_info -force sd_fat32_controller_wrapper.mmi }
  catch { write_bmm -force sd_fat32_controller_wrapper_bd.bmm }
  write_bitstream -force sd_fat32_controller_wrapper.bit 
  catch { write_sysdef -hwdef sd_fat32_controller_wrapper.hwdef -bitfile sd_fat32_controller_wrapper.bit -meminfo sd_fat32_controller_wrapper.mmi -file sd_fat32_controller_wrapper.sysdef }
  close_msg_db -file write_bitstream.pb
} RESULT]
if {$rc} {
  step_failed write_bitstream
  return -code error $RESULT
} else {
  end_step write_bitstream
}

