
################################################################
# This is a generated script based on design: calculation
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
# source calculation_script.tcl

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
set design_name calculation

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
  set A [ create_bd_port -dir I -from 31 -to 0 -type data A ]
  set B [ create_bd_port -dir I -from 31 -to 0 -type data B ]
  set C [ create_bd_port -dir I -from 31 -to 0 -type data C ]
  set D [ create_bd_port -dir I -from 31 -to 0 -type data D ]
  set E [ create_bd_port -dir I -from 31 -to 0 -type data E ]
  set a_ready [ create_bd_port -dir O a_ready ]
  set a_valid [ create_bd_port -dir I a_valid ]
  set b_ready [ create_bd_port -dir O b_ready ]
  set b_valid [ create_bd_port -dir I b_valid ]
  set c_ready [ create_bd_port -dir O c_ready ]
  set c_valid [ create_bd_port -dir I c_valid ]
  set clk [ create_bd_port -dir I -type clk clk ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {100000000} \
 ] $clk
  set clken_1 [ create_bd_port -dir I -type ce clken_1 ]
  set_property -dict [ list \
   CONFIG.POLARITY {ACTIVE_HIGH} \
 ] $clken_1
  set clken_2 [ create_bd_port -dir I -type ce clken_2 ]
  set_property -dict [ list \
   CONFIG.POLARITY {ACTIVE_HIGH} \
 ] $clken_2
  set clken_3 [ create_bd_port -dir I -type ce clken_3 ]
  set_property -dict [ list \
   CONFIG.POLARITY {ACTIVE_HIGH} \
 ] $clken_3
  set d_ready [ create_bd_port -dir O d_ready ]
  set d_valid [ create_bd_port -dir I d_valid ]
  set e_ready [ create_bd_port -dir O e_ready ]
  set e_valid [ create_bd_port -dir I e_valid ]
  set k [ create_bd_port -dir I -from 31 -to 0 -type data k ]
  set k_ready [ create_bd_port -dir O k_ready ]
  set k_valid [ create_bd_port -dir I k_valid ]
  set reset_1 [ create_bd_port -dir I -type rst reset_1 ]
  set reset_2 [ create_bd_port -dir I -type rst reset_2 ]
  set reset_3 [ create_bd_port -dir I -type rst reset_3 ]
  set result_1 [ create_bd_port -dir O -from 31 -to 0 -type data result_1 ]
  set result_1_input [ create_bd_port -dir I -from 31 -to 0 -type data result_1_input ]
  set result_1_input_ready [ create_bd_port -dir O result_1_input_ready ]
  set result_1_input_valid [ create_bd_port -dir I result_1_input_valid ]
  set result_1_valid [ create_bd_port -dir O result_1_valid ]
  set result_2 [ create_bd_port -dir O -from 31 -to 0 -type data result_2 ]
  set result_2_input [ create_bd_port -dir I -from 31 -to 0 -type data result_2_input ]
  set result_2_input_ready [ create_bd_port -dir O result_2_input_ready ]
  set result_2_input_valid [ create_bd_port -dir I result_2_input_valid ]
  set result_2_valid [ create_bd_port -dir O result_2_valid ]
  set result_3 [ create_bd_port -dir O -from 31 -to 0 -type data result_3 ]
  set result_3_valid [ create_bd_port -dir O result_3_valid ]

  # Create instance: add, and set properties
  set add [ create_bd_cell -type ip -vlnv xilinx.com:ip:floating_point:7.1 add ]
  set_property -dict [ list \
   CONFIG.Add_Sub_Value {Add} \
   CONFIG.Axi_Optimize_Goal {Resources} \
   CONFIG.C_Latency {12} \
   CONFIG.Has_ACLKEN {true} \
   CONFIG.Has_ARESETn {true} \
   CONFIG.Has_RESULT_TREADY {false} \
 ] $add

  # Create instance: mult_and_add_1, and set properties
  set mult_and_add_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:floating_point:7.1 mult_and_add_1 ]
  set_property -dict [ list \
   CONFIG.A_Precision_Type {Single} \
   CONFIG.Add_Sub_Value {Add} \
   CONFIG.Axi_Optimize_Goal {Resources} \
   CONFIG.C_A_Exponent_Width {8} \
   CONFIG.C_A_Fraction_Width {24} \
   CONFIG.C_Latency {20} \
   CONFIG.C_Mult_Usage {Full_Usage} \
   CONFIG.C_Rate {1} \
   CONFIG.C_Result_Exponent_Width {8} \
   CONFIG.C_Result_Fraction_Width {24} \
   CONFIG.Has_ACLKEN {true} \
   CONFIG.Has_ARESETn {true} \
   CONFIG.Has_RESULT_TREADY {false} \
   CONFIG.Operation_Type {FMA} \
   CONFIG.Result_Precision_Type {Single} \
 ] $mult_and_add_1

  # Create instance: mult_and_add_2, and set properties
  set mult_and_add_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:floating_point:7.1 mult_and_add_2 ]
  set_property -dict [ list \
   CONFIG.A_Precision_Type {Single} \
   CONFIG.Add_Sub_Value {Add} \
   CONFIG.Axi_Optimize_Goal {Resources} \
   CONFIG.C_A_Exponent_Width {8} \
   CONFIG.C_A_Fraction_Width {24} \
   CONFIG.C_Latency {20} \
   CONFIG.C_Mult_Usage {Full_Usage} \
   CONFIG.C_Rate {1} \
   CONFIG.C_Result_Exponent_Width {8} \
   CONFIG.C_Result_Fraction_Width {24} \
   CONFIG.Has_ACLKEN {true} \
   CONFIG.Has_ARESETn {true} \
   CONFIG.Has_RESULT_TREADY {false} \
   CONFIG.Operation_Type {FMA} \
   CONFIG.Result_Precision_Type {Single} \
 ] $mult_and_add_2

  # Create port connections
  connect_bd_net -net A_1 [get_bd_ports A] [get_bd_pins mult_and_add_1/s_axis_a_tdata]
  connect_bd_net -net B_1 [get_bd_ports B] [get_bd_pins mult_and_add_1/s_axis_b_tdata]
  connect_bd_net -net C_1 [get_bd_ports C] [get_bd_pins mult_and_add_1/s_axis_c_tdata]
  connect_bd_net -net D_1 [get_bd_ports D] [get_bd_pins add/s_axis_b_tdata]
  connect_bd_net -net E_1 [get_bd_ports E] [get_bd_pins mult_and_add_2/s_axis_c_tdata]
  connect_bd_net -net a_valid_1 [get_bd_ports a_valid] [get_bd_pins mult_and_add_1/s_axis_a_tvalid]
  connect_bd_net -net add_m_axis_result_tdata [get_bd_ports result_2] [get_bd_pins add/m_axis_result_tdata]
  connect_bd_net -net add_m_axis_result_tvalid [get_bd_ports result_2_valid] [get_bd_pins add/m_axis_result_tvalid]
  connect_bd_net -net add_s_axis_a_tready [get_bd_ports result_1_input_ready] [get_bd_pins add/s_axis_a_tready]
  connect_bd_net -net add_s_axis_b_tready [get_bd_ports d_ready] [get_bd_pins add/s_axis_b_tready]
  connect_bd_net -net b_valid_1 [get_bd_ports b_valid] [get_bd_pins mult_and_add_1/s_axis_b_tvalid]
  connect_bd_net -net c_valid_1 [get_bd_ports c_valid] [get_bd_pins mult_and_add_1/s_axis_c_tvalid]
  connect_bd_net -net clk_1 [get_bd_ports clk] [get_bd_pins add/aclk] [get_bd_pins mult_and_add_1/aclk] [get_bd_pins mult_and_add_2/aclk]
  connect_bd_net -net clken_1_1 [get_bd_ports clken_1] [get_bd_pins mult_and_add_1/aclken]
  connect_bd_net -net clken_2_1 [get_bd_ports clken_2] [get_bd_pins add/aclken]
  connect_bd_net -net clken_3_1 [get_bd_ports clken_3] [get_bd_pins mult_and_add_2/aclken]
  connect_bd_net -net d_valid_1 [get_bd_ports d_valid] [get_bd_pins add/s_axis_b_tvalid]
  connect_bd_net -net e_valid_1 [get_bd_ports e_valid] [get_bd_pins mult_and_add_2/s_axis_c_tvalid]
  connect_bd_net -net k_1 [get_bd_ports k] [get_bd_pins mult_and_add_2/s_axis_a_tdata]
  connect_bd_net -net k_valid_1 [get_bd_ports k_valid] [get_bd_pins mult_and_add_2/s_axis_a_tvalid]
  connect_bd_net -net mult_and_add_1_m_axis_result_tdata [get_bd_ports result_1] [get_bd_pins mult_and_add_1/m_axis_result_tdata]
  connect_bd_net -net mult_and_add_1_m_axis_result_tvalid [get_bd_ports result_1_valid] [get_bd_pins mult_and_add_1/m_axis_result_tvalid]
  connect_bd_net -net mult_and_add_1_s_axis_a_tready [get_bd_ports a_ready] [get_bd_pins mult_and_add_1/s_axis_a_tready]
  connect_bd_net -net mult_and_add_1_s_axis_b_tready [get_bd_ports b_ready] [get_bd_pins mult_and_add_1/s_axis_b_tready]
  connect_bd_net -net mult_and_add_1_s_axis_c_tready [get_bd_ports c_ready] [get_bd_pins mult_and_add_1/s_axis_c_tready]
  connect_bd_net -net mult_and_add_2_m_axis_result_tdata [get_bd_ports result_3] [get_bd_pins mult_and_add_2/m_axis_result_tdata]
  connect_bd_net -net mult_and_add_2_m_axis_result_tvalid [get_bd_ports result_3_valid] [get_bd_pins mult_and_add_2/m_axis_result_tvalid]
  connect_bd_net -net mult_and_add_2_s_axis_a_tready [get_bd_ports k_ready] [get_bd_pins mult_and_add_2/s_axis_a_tready]
  connect_bd_net -net mult_and_add_2_s_axis_b_tready [get_bd_ports result_2_input_ready] [get_bd_pins mult_and_add_2/s_axis_b_tready]
  connect_bd_net -net mult_and_add_2_s_axis_c_tready [get_bd_ports e_ready] [get_bd_pins mult_and_add_2/s_axis_c_tready]
  connect_bd_net -net reset_1_1 [get_bd_ports reset_1] [get_bd_pins mult_and_add_1/aresetn]
  connect_bd_net -net reset_2_1 [get_bd_ports reset_2] [get_bd_pins add/aresetn]
  connect_bd_net -net reset_3_1 [get_bd_ports reset_3] [get_bd_pins mult_and_add_2/aresetn]
  connect_bd_net -net result_1_input_1 [get_bd_ports result_1_input] [get_bd_pins add/s_axis_a_tdata]
  connect_bd_net -net result_1_input_valid_1 [get_bd_ports result_1_input_valid] [get_bd_pins add/s_axis_a_tvalid]
  connect_bd_net -net result_2_input_1 [get_bd_ports result_2_input] [get_bd_pins mult_and_add_2/s_axis_b_tdata]
  connect_bd_net -net result_2_input_valid_1 [get_bd_ports result_2_input_valid] [get_bd_pins mult_and_add_2/s_axis_b_tvalid]

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


