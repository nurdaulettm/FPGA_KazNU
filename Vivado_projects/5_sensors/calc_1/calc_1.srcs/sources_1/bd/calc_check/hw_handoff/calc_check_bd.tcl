
################################################################
# This is a generated script based on design: calc_check
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2018.2
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source calc_check_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7a100tcsg324-1
   set_property BOARD_PART digilentinc.com:nexys4:part0:1.1 [current_project]
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name calc_check

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports

  # Create ports
  set Comp_1 [ create_bd_port -dir I -from 31 -to 0 -type data Comp_1 ]
  set Comp_2 [ create_bd_port -dir I -from 31 -to 0 -type data Comp_2 ]
  set Sub_1 [ create_bd_port -dir I -from 31 -to 0 -type data Sub_1 ]
  set Sub_2 [ create_bd_port -dir I -from 31 -to 0 -type data Sub_2 ]
  set abs_in [ create_bd_port -dir I -from 31 -to 0 -type data abs_in ]
  set abs_in_ready [ create_bd_port -dir O abs_in_ready ]
  set abs_in_valid [ create_bd_port -dir I abs_in_valid ]
  set abs_out [ create_bd_port -dir O -from 31 -to 0 -type data abs_out ]
  set abs_out_valid [ create_bd_port -dir O abs_out_valid ]
  set clk [ create_bd_port -dir I -type clk clk ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {100000000} \
 ] $clk
  set clken_comp [ create_bd_port -dir I -type ce clken_comp ]
  set_property -dict [ list \
   CONFIG.POLARITY {ACTIVE_HIGH} \
 ] $clken_comp
  set clken_sub [ create_bd_port -dir I -type ce clken_sub ]
  set_property -dict [ list \
   CONFIG.POLARITY {ACTIVE_HIGH} \
 ] $clken_sub
  set comp_1_ready [ create_bd_port -dir O comp_1_ready ]
  set comp_1_valid [ create_bd_port -dir I comp_1_valid ]
  set comp_2_ready [ create_bd_port -dir O comp_2_ready ]
  set comp_2_valid [ create_bd_port -dir I comp_2_valid ]
  set comp_result [ create_bd_port -dir O -from 7 -to 0 -type data comp_result ]
  set comp_result_valid [ create_bd_port -dir O comp_result_valid ]
  set reset_comp [ create_bd_port -dir I -type rst reset_comp ]
  set reset_sub [ create_bd_port -dir I -type rst reset_sub ]
  set sub_1_ready [ create_bd_port -dir O sub_1_ready ]
  set sub_1_valid [ create_bd_port -dir I sub_1_valid ]
  set sub_2_ready [ create_bd_port -dir O sub_2_ready ]
  set sub_2_valid [ create_bd_port -dir I sub_2_valid ]
  set sub_result [ create_bd_port -dir O -from 31 -to 0 -type data sub_result ]
  set sub_result_valid [ create_bd_port -dir O sub_result_valid ]

  # Create instance: compare, and set properties
  set compare [ create_bd_cell -type ip -vlnv xilinx.com:ip:floating_point:7.1 compare ]
  set_property -dict [ list \
   CONFIG.C_Compare_Operation {Less_Than} \
   CONFIG.C_Latency {3} \
   CONFIG.C_Mult_Usage {No_Usage} \
   CONFIG.C_Rate {1} \
   CONFIG.C_Result_Exponent_Width {1} \
   CONFIG.C_Result_Fraction_Width {0} \
   CONFIG.Has_ACLKEN {true} \
   CONFIG.Has_ARESETn {true} \
   CONFIG.Has_RESULT_TREADY {false} \
   CONFIG.Operation_Type {Compare} \
   CONFIG.Result_Precision_Type {Custom} \
 ] $compare

  # Create instance: math_abs, and set properties
  set math_abs [ create_bd_cell -type ip -vlnv xilinx.com:ip:floating_point:7.1 math_abs ]
  set_property -dict [ list \
   CONFIG.C_Latency {0} \
   CONFIG.C_Mult_Usage {No_Usage} \
   CONFIG.C_Rate {1} \
   CONFIG.C_Result_Exponent_Width {8} \
   CONFIG.C_Result_Fraction_Width {24} \
   CONFIG.Has_RESULT_TREADY {false} \
   CONFIG.Operation_Type {Absolute} \
   CONFIG.Result_Precision_Type {Single} \
 ] $math_abs

  # Create instance: substract, and set properties
  set substract [ create_bd_cell -type ip -vlnv xilinx.com:ip:floating_point:7.1 substract ]
  set_property -dict [ list \
   CONFIG.Add_Sub_Value {Subtract} \
   CONFIG.C_Latency {12} \
   CONFIG.Has_ACLKEN {true} \
   CONFIG.Has_ARESETn {true} \
   CONFIG.Has_RESULT_TREADY {false} \
 ] $substract

  # Create port connections
  connect_bd_net -net Comp_1_1 [get_bd_ports Comp_1] [get_bd_pins compare/s_axis_a_tdata]
  connect_bd_net -net Comp_2_1 [get_bd_ports Comp_2] [get_bd_pins compare/s_axis_b_tdata]
  connect_bd_net -net Sub_1_1 [get_bd_ports Sub_1] [get_bd_pins substract/s_axis_a_tdata]
  connect_bd_net -net Sub_2_1 [get_bd_ports Sub_2] [get_bd_pins substract/s_axis_b_tdata]
  connect_bd_net -net abs_in_1 [get_bd_ports abs_in] [get_bd_pins math_abs/s_axis_a_tdata]
  connect_bd_net -net abs_in_valid_1 [get_bd_ports abs_in_valid] [get_bd_pins math_abs/s_axis_a_tvalid]
  connect_bd_net -net clk_1 [get_bd_ports clk] [get_bd_pins compare/aclk] [get_bd_pins substract/aclk]
  connect_bd_net -net clken_1 [get_bd_ports clken_comp] [get_bd_pins compare/aclken]
  connect_bd_net -net clken_sub_1 [get_bd_ports clken_sub] [get_bd_pins substract/aclken]
  connect_bd_net -net comp_1_valid_1 [get_bd_ports comp_1_valid] [get_bd_pins compare/s_axis_a_tvalid]
  connect_bd_net -net comp_2_valid_1 [get_bd_ports comp_2_valid] [get_bd_pins compare/s_axis_b_tvalid]
  connect_bd_net -net comp_reset_1 [get_bd_ports reset_comp] [get_bd_pins compare/aresetn]
  connect_bd_net -net compare_m_axis_result_tdata [get_bd_ports comp_result] [get_bd_pins compare/m_axis_result_tdata]
  connect_bd_net -net compare_m_axis_result_tvalid [get_bd_ports comp_result_valid] [get_bd_pins compare/m_axis_result_tvalid]
  connect_bd_net -net compare_s_axis_a_tready [get_bd_ports comp_1_ready] [get_bd_pins compare/s_axis_a_tready]
  connect_bd_net -net compare_s_axis_b_tready [get_bd_ports comp_2_ready] [get_bd_pins compare/s_axis_b_tready]
  connect_bd_net -net math_abs_m_axis_result_tdata [get_bd_ports abs_out] [get_bd_pins math_abs/m_axis_result_tdata]
  connect_bd_net -net math_abs_m_axis_result_tvalid [get_bd_ports abs_out_valid] [get_bd_pins math_abs/m_axis_result_tvalid]
  connect_bd_net -net math_abs_s_axis_a_tready [get_bd_ports abs_in_ready] [get_bd_pins math_abs/s_axis_a_tready]
  connect_bd_net -net reset_sub_1 [get_bd_ports reset_sub] [get_bd_pins substract/aresetn]
  connect_bd_net -net sub_1_valid_1 [get_bd_ports sub_1_valid] [get_bd_pins substract/s_axis_a_tvalid]
  connect_bd_net -net sub_2_valid_1 [get_bd_ports sub_2_valid] [get_bd_pins substract/s_axis_b_tvalid]
  connect_bd_net -net substract_m_axis_result_tdata [get_bd_ports sub_result] [get_bd_pins substract/m_axis_result_tdata]
  connect_bd_net -net substract_m_axis_result_tvalid [get_bd_ports sub_result_valid] [get_bd_pins substract/m_axis_result_tvalid]
  connect_bd_net -net substract_s_axis_a_tready [get_bd_ports sub_1_ready] [get_bd_pins substract/s_axis_a_tready]
  connect_bd_net -net substract_s_axis_b_tready [get_bd_ports sub_2_ready] [get_bd_pins substract/s_axis_b_tready]

  # Create address segments


  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


