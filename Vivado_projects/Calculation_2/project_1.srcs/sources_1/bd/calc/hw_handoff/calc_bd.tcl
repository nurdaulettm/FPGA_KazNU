
################################################################
# This is a generated script based on design: calc
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2015.4
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   puts "ERROR: This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source calc_script.tcl

# If you do not already have a project created,
# you can create a project using the following command:
#    create_project project_1 myproj -part xc7a100tcsg324-1

# CHECKING IF PROJECT EXISTS
if { [get_projects -quiet] eq "" } {
   puts "ERROR: Please open or create a project!"
   return 1
}



# CHANGE DESIGN NAME HERE
set design_name calc

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

   set errMsg "ERROR: Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      puts "INFO: Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   puts "INFO: Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "ERROR: Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "ERROR: Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   puts "INFO: Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   puts "INFO: Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

puts "INFO: Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   puts $errMsg
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     puts "ERROR: Unable to find parent cell <$parentCell>!"
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     puts "ERROR: Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."
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
  set D_ready [ create_bd_port -dir O D_ready ]
  set D_valid [ create_bd_port -dir I D_valid ]
  set E [ create_bd_port -dir I -from 31 -to 0 -type data E ]
  set E_ready [ create_bd_port -dir O E_ready ]
  set E_valid [ create_bd_port -dir I E_valid ]
  set a_ready [ create_bd_port -dir O a_ready ]
  set a_valid [ create_bd_port -dir I a_valid ]
  set aclken [ create_bd_port -dir I -type ce aclken ]
  set_property -dict [ list \
CONFIG.POLARITY {ACTIVE_HIGH} \
 ] $aclken
  set aclken2 [ create_bd_port -dir I -type ce aclken2 ]
  set_property -dict [ list \
CONFIG.POLARITY {ACTIVE_HIGH} \
 ] $aclken2
  set aclken3 [ create_bd_port -dir I -type ce aclken3 ]
  set_property -dict [ list \
CONFIG.POLARITY {ACTIVE_HIGH} \
 ] $aclken3
  set aresetn [ create_bd_port -dir I -type rst aresetn ]
  set b_ready [ create_bd_port -dir O b_ready ]
  set b_valid [ create_bd_port -dir I b_valid ]
  set c_ready [ create_bd_port -dir O c_ready ]
  set c_valid [ create_bd_port -dir I c_valid ]
  set clk [ create_bd_port -dir I -type clk clk ]
  set_property -dict [ list \
CONFIG.FREQ_HZ {100000000} \
 ] $clk
  set k [ create_bd_port -dir I -from 31 -to 0 -type data k ]
  set k_ready [ create_bd_port -dir O k_ready ]
  set k_valid [ create_bd_port -dir I k_valid ]
  set reset2 [ create_bd_port -dir I -type rst reset2 ]
  set reset3 [ create_bd_port -dir I -type rst reset3 ]
  set result [ create_bd_port -dir O -from 31 -to 0 -type data result ]
  set result2 [ create_bd_port -dir O -from 31 -to 0 result2 ]
  set result2_valid [ create_bd_port -dir O result2_valid ]
  set result3 [ create_bd_port -dir O -from 31 -to 0 -type data result3 ]
  set result3_valid [ create_bd_port -dir O result3_valid ]
  set result_input2 [ create_bd_port -dir I -from 31 -to 0 -type data result_input2 ]
  set result_input2_ready [ create_bd_port -dir O result_input2_ready ]
  set result_input2_valid [ create_bd_port -dir I result_input2_valid ]
  set result_input3 [ create_bd_port -dir I -from 31 -to 0 -type data result_input3 ]
  set result_input3_ready [ create_bd_port -dir O result_input3_ready ]
  set result_input3_valid [ create_bd_port -dir I result_input3_valid ]
  set result_valid [ create_bd_port -dir O result_valid ]

  # Create instance: floating_point_0, and set properties
  set floating_point_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:floating_point:7.1 floating_point_0 ]
  set_property -dict [ list \
CONFIG.Add_Sub_Value {Add} \
CONFIG.Axi_Optimize_Goal {Performance} \
CONFIG.C_Latency {20} \
CONFIG.C_Mult_Usage {Full_Usage} \
CONFIG.C_Rate {1} \
CONFIG.C_Result_Exponent_Width {8} \
CONFIG.C_Result_Fraction_Width {24} \
CONFIG.Has_ACLKEN {true} \
CONFIG.Has_ARESETn {true} \
CONFIG.Has_RESULT_TREADY {false} \
CONFIG.Maximum_Latency {true} \
CONFIG.Operation_Type {FMA} \
CONFIG.Result_Precision_Type {Single} \
 ] $floating_point_0

  # Create instance: floating_point_1, and set properties
  set floating_point_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:floating_point:7.1 floating_point_1 ]
  set_property -dict [ list \
CONFIG.Add_Sub_Value {Add} \
CONFIG.Axi_Optimize_Goal {Performance} \
CONFIG.C_Latency {12} \
CONFIG.Has_ACLKEN {true} \
CONFIG.Has_ARESETn {true} \
CONFIG.Has_RESULT_TREADY {false} \
 ] $floating_point_1

  # Create instance: floating_point_2, and set properties
  set floating_point_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:floating_point:7.1 floating_point_2 ]
  set_property -dict [ list \
CONFIG.Add_Sub_Value {Add} \
CONFIG.Axi_Optimize_Goal {Performance} \
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
 ] $floating_point_2

  # Create port connections
  connect_bd_net -net A_1 [get_bd_ports A] [get_bd_pins floating_point_0/s_axis_a_tdata]
  connect_bd_net -net B_1 [get_bd_ports B] [get_bd_pins floating_point_0/s_axis_b_tdata]
  connect_bd_net -net C_1 [get_bd_ports C] [get_bd_pins floating_point_0/s_axis_c_tdata]
  connect_bd_net -net D_1 [get_bd_ports D] [get_bd_pins floating_point_1/s_axis_b_tdata]
  connect_bd_net -net D_valid_1 [get_bd_ports D_valid] [get_bd_pins floating_point_1/s_axis_b_tvalid]
  connect_bd_net -net E_1 [get_bd_ports E] [get_bd_pins floating_point_2/s_axis_c_tdata]
  connect_bd_net -net E_valid_1 [get_bd_ports E_valid] [get_bd_pins floating_point_2/s_axis_c_tvalid]
  connect_bd_net -net a_valid_1 [get_bd_ports a_valid] [get_bd_pins floating_point_0/s_axis_a_tvalid]
  connect_bd_net -net aclken2_1 [get_bd_ports aclken2] [get_bd_pins floating_point_1/aclken]
  connect_bd_net -net aclken3_1 [get_bd_ports aclken3] [get_bd_pins floating_point_2/aclken]
  connect_bd_net -net aclken_1 [get_bd_ports aclken] [get_bd_pins floating_point_0/aclken]
  connect_bd_net -net aresetn_1 [get_bd_ports aresetn] [get_bd_pins floating_point_0/aresetn]
  connect_bd_net -net b_valid_1 [get_bd_ports b_valid] [get_bd_pins floating_point_0/s_axis_b_tvalid]
  connect_bd_net -net c_valid_1 [get_bd_ports c_valid] [get_bd_pins floating_point_0/s_axis_c_tvalid]
  connect_bd_net -net clk_1 [get_bd_ports clk] [get_bd_pins floating_point_0/aclk] [get_bd_pins floating_point_1/aclk] [get_bd_pins floating_point_2/aclk]
  connect_bd_net -net floating_point_0_m_axis_result_tdata [get_bd_ports result] [get_bd_pins floating_point_0/m_axis_result_tdata]
  connect_bd_net -net floating_point_0_m_axis_result_tvalid [get_bd_ports result_valid] [get_bd_pins floating_point_0/m_axis_result_tvalid]
  connect_bd_net -net floating_point_0_s_axis_a_tready [get_bd_ports a_ready] [get_bd_pins floating_point_0/s_axis_a_tready]
  connect_bd_net -net floating_point_0_s_axis_b_tready [get_bd_ports b_ready] [get_bd_pins floating_point_0/s_axis_b_tready]
  connect_bd_net -net floating_point_0_s_axis_c_tready [get_bd_ports c_ready] [get_bd_pins floating_point_0/s_axis_c_tready]
  connect_bd_net -net floating_point_1_m_axis_result_tdata [get_bd_ports result2] [get_bd_pins floating_point_1/m_axis_result_tdata]
  connect_bd_net -net floating_point_1_m_axis_result_tvalid [get_bd_ports result2_valid] [get_bd_pins floating_point_1/m_axis_result_tvalid]
  connect_bd_net -net floating_point_1_s_axis_a_tready [get_bd_ports result_input2_ready] [get_bd_pins floating_point_1/s_axis_a_tready]
  connect_bd_net -net floating_point_1_s_axis_b_tready [get_bd_ports D_ready] [get_bd_pins floating_point_1/s_axis_b_tready]
  connect_bd_net -net floating_point_2_m_axis_result_tdata [get_bd_ports result3] [get_bd_pins floating_point_2/m_axis_result_tdata]
  connect_bd_net -net floating_point_2_m_axis_result_tvalid [get_bd_ports result3_valid] [get_bd_pins floating_point_2/m_axis_result_tvalid]
  connect_bd_net -net floating_point_2_s_axis_a_tready [get_bd_ports k_ready] [get_bd_pins floating_point_2/s_axis_a_tready]
  connect_bd_net -net floating_point_2_s_axis_b_tready [get_bd_ports result_input3_ready] [get_bd_pins floating_point_2/s_axis_b_tready]
  connect_bd_net -net floating_point_2_s_axis_c_tready [get_bd_ports E_ready] [get_bd_pins floating_point_2/s_axis_c_tready]
  connect_bd_net -net k_1 [get_bd_ports k] [get_bd_pins floating_point_2/s_axis_a_tdata]
  connect_bd_net -net k_valid_1 [get_bd_ports k_valid] [get_bd_pins floating_point_2/s_axis_a_tvalid]
  connect_bd_net -net reset2_1 [get_bd_ports reset2] [get_bd_pins floating_point_1/aresetn]
  connect_bd_net -net reset3_1 [get_bd_ports reset3] [get_bd_pins floating_point_2/aresetn]
  connect_bd_net -net result_input2_1 [get_bd_ports result_input2] [get_bd_pins floating_point_1/s_axis_a_tdata]
  connect_bd_net -net result_input3_1 [get_bd_ports result_input3] [get_bd_pins floating_point_2/s_axis_b_tdata]
  connect_bd_net -net result_input3_valid_1 [get_bd_ports result_input3_valid] [get_bd_pins floating_point_2/s_axis_b_tvalid]
  connect_bd_net -net result_input_valid2_1 [get_bd_ports result_input2_valid] [get_bd_pins floating_point_1/s_axis_a_tvalid]

  # Create address segments

  # Perform GUI Layout
  regenerate_bd_layout -layout_string {
   guistr: "# # String gsaved with Nlview 6.5.5  2015-06-26 bk=1.3371 VDI=38 GEI=35 GUI=JA:1.6
#  -string -flagsOSRD
preplace port E_valid -pg 1 -y 730 -defaultsOSRD
preplace port k_valid -pg 1 -y 570 -defaultsOSRD
preplace port k_ready -pg 1 -y 440 -defaultsOSRD
preplace port result_input3_ready -pg 1 -y 460 -defaultsOSRD
preplace port D_ready -pg 1 -y 1160 -defaultsOSRD
preplace port result_input3_valid -pg 1 -y 650 -defaultsOSRD
preplace port c_valid -pg 1 -y 310 -defaultsOSRD
preplace port aclken2 -pg 1 -y 1090 -defaultsOSRD
preplace port result_input2_ready -pg 1 -y 860 -defaultsOSRD
preplace port b_valid -pg 1 -y 230 -defaultsOSRD
preplace port aclken3 -pg 1 -y 770 -defaultsOSRD
preplace port aclken -pg 1 -y 350 -defaultsOSRD
preplace port D_valid -pg 1 -y 1050 -defaultsOSRD
preplace port result_input2_valid -pg 1 -y 970 -defaultsOSRD
preplace port E_ready -pg 1 -y 840 -defaultsOSRD
preplace port c_ready -pg 1 -y 420 -defaultsOSRD
preplace port reset2 -pg 1 -y 1110 -defaultsOSRD
preplace port clk -pg 1 -y 330 -defaultsOSRD
preplace port result3_valid -pg 1 -y 670 -defaultsOSRD
preplace port reset3 -pg 1 -y 790 -defaultsOSRD
preplace port b_ready -pg 1 -y 40 -defaultsOSRD
preplace port result2_valid -pg 1 -y 1030 -defaultsOSRD
preplace port aresetn -pg 1 -y 370 -defaultsOSRD
preplace port a_ready -pg 1 -y 20 -defaultsOSRD
preplace port result_valid -pg 1 -y 250 -defaultsOSRD
preplace port a_valid -pg 1 -y 150 -defaultsOSRD
preplace portBus result2 -pg 1 -y 1010 -defaultsOSRD
preplace portBus A -pg 1 -y 110 -defaultsOSRD
preplace portBus result3 -pg 1 -y 650 -defaultsOSRD
preplace portBus B -pg 1 -y 190 -defaultsOSRD
preplace portBus C -pg 1 -y 270 -defaultsOSRD
preplace portBus k -pg 1 -y 530 -defaultsOSRD
preplace portBus D -pg 1 -y 1010 -defaultsOSRD
preplace portBus E -pg 1 -y 690 -defaultsOSRD
preplace portBus result_input2 -pg 1 -y 930 -defaultsOSRD
preplace portBus result_input3 -pg 1 -y 610 -defaultsOSRD
preplace portBus result -pg 1 -y 230 -defaultsOSRD
preplace inst floating_point_0 -pg 1 -lvl 1 -y 230 -defaultsOSRD
preplace inst floating_point_1 -pg 1 -lvl 1 -y 1010 -defaultsOSRD
preplace inst floating_point_2 -pg 1 -lvl 1 -y 650 -defaultsOSRD
preplace netloc floating_point_0_m_axis_result_tvalid 1 1 1 NJ
preplace netloc A_1 1 0 1 NJ
preplace netloc floating_point_0_m_axis_result_tdata 1 1 1 NJ
preplace netloc E_1 1 0 1 NJ
preplace netloc result_input_valid2_1 1 0 1 NJ
preplace netloc floating_point_2_s_axis_b_tready 1 0 2 40 460 NJ
preplace netloc aclken2_1 1 0 1 NJ
preplace netloc D_valid_1 1 0 1 NJ
preplace netloc floating_point_0_s_axis_c_tready 1 0 2 40 420 NJ
preplace netloc result_input3_1 1 0 1 NJ
preplace netloc k_valid_1 1 0 1 NJ
preplace netloc a_valid_1 1 0 1 NJ
preplace netloc floating_point_1_m_axis_result_tvalid 1 1 1 NJ
preplace netloc aclken3_1 1 0 1 NJ
preplace netloc c_valid_1 1 0 1 NJ
preplace netloc reset3_1 1 0 1 NJ
preplace netloc reset2_1 1 0 1 NJ
preplace netloc floating_point_1_s_axis_a_tready 1 0 2 40 860 NJ
preplace netloc aclken_1 1 0 1 NJ
preplace netloc clk_1 1 0 1 20
preplace netloc b_valid_1 1 0 1 NJ
preplace netloc E_valid_1 1 0 1 NJ
preplace netloc aresetn_1 1 0 1 NJ
preplace netloc B_1 1 0 1 NJ
preplace netloc floating_point_2_s_axis_a_tready 1 0 2 30 440 NJ
preplace netloc floating_point_2_m_axis_result_tvalid 1 1 1 NJ
preplace netloc floating_point_2_m_axis_result_tdata 1 1 1 NJ
preplace netloc floating_point_2_s_axis_c_tready 1 0 2 40 840 NJ
preplace netloc D_1 1 0 1 NJ
preplace netloc result_input3_valid_1 1 0 1 NJ
preplace netloc k_1 1 0 1 NJ
preplace netloc floating_point_1_m_axis_result_tdata 1 1 1 NJ
preplace netloc floating_point_1_s_axis_b_tready 1 0 2 40 1160 NJ
preplace netloc result_input2_1 1 0 1 NJ
preplace netloc floating_point_0_s_axis_b_tready 1 0 2 40 40 NJ
preplace netloc floating_point_0_s_axis_a_tready 1 0 2 20 20 NJ
preplace netloc C_1 1 0 1 NJ
levelinfo -pg 1 0 230 440 -top 0 -bot 1180
",
}

  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


