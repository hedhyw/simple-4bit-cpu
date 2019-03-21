
################################################################
# This is a generated script based on design: calc
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
# source calc_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# alu, cf, cntrl_fsm, mem, pc, regfile

# Please add the sources of those modules before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7k70tfbv676-1
}


# CHANGE DESIGN NAME HERE
variable design_name
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
  set addr [ create_bd_port -dir O -from 3 -to 0 addr ]
  set addr_set [ create_bd_port -dir O -from 3 -to 0 addr_set ]
  set addr_set_en [ create_bd_port -dir O addr_set_en ]
  set alu_a [ create_bd_port -dir O -from 3 -to 0 alu_a ]
  set alu_b [ create_bd_port -dir O -from 3 -to 0 alu_b ]
  set alu_en [ create_bd_port -dir O alu_en ]
  set alu_out [ create_bd_port -dir O -from 3 -to 0 alu_out ]
  set clk [ create_bd_port -dir I -type clk clk ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {50000000} \
 ] $clk
  set eax [ create_bd_port -dir O -from 3 -to 0 eax ]
  set ebx [ create_bd_port -dir O -from 3 -to 0 ebx ]
  set ecx [ create_bd_port -dir O -from 3 -to 0 ecx ]
  set mem_en [ create_bd_port -dir O mem_en ]
  set op_code [ create_bd_port -dir O -from 3 -to 0 op_code ]
  set pc_en [ create_bd_port -dir O pc_en ]
  set rdata0 [ create_bd_port -dir O -from 3 -to 0 rdata0 ]
  set reg_r_en [ create_bd_port -dir O reg_r_en ]
  set reg_w_en [ create_bd_port -dir O reg_w_en ]
  set rst [ create_bd_port -dir I -type rst rst ]
  set_property -dict [ list \
   CONFIG.POLARITY {ACTIVE_HIGH} \
 ] $rst
  set waddr [ create_bd_port -dir O -from 3 -to 0 waddr ]

  # Create instance: alu_0, and set properties
  set block_name alu
  set block_cell_name alu_0
  if { [catch {set alu_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $alu_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: cf_0, and set properties
  set block_name cf
  set block_cell_name cf_0
  if { [catch {set cf_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $cf_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: cntrl_fsm_0, and set properties
  set block_name cntrl_fsm
  set block_cell_name cntrl_fsm_0
  if { [catch {set cntrl_fsm_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $cntrl_fsm_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: mem_0, and set properties
  set block_name mem
  set block_cell_name mem_0
  if { [catch {set mem_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $mem_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: pc_0, and set properties
  set block_name pc
  set block_cell_name pc_0
  if { [catch {set pc_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $pc_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: regfile_0, and set properties
  set block_name regfile
  set block_cell_name regfile_0
  if { [catch {set regfile_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $regfile_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create port connections
  connect_bd_net -net Net1 [get_bd_pins cntrl_fsm_0/data_frame] [get_bd_pins mem_0/data_frame]
  connect_bd_net -net alu_0_c_out [get_bd_pins alu_0/c_out] [get_bd_pins cf_0/carry_in]
  connect_bd_net -net alu_0_result [get_bd_ports alu_out] [get_bd_pins alu_0/result] [get_bd_pins regfile_0/wdata]
  connect_bd_net -net cf_0_carry_out [get_bd_pins alu_0/c_in] [get_bd_pins cf_0/carry_out]
  connect_bd_net -net clk_1 [get_bd_ports clk] [get_bd_pins alu_0/clk] [get_bd_pins cf_0/clk] [get_bd_pins cntrl_fsm_0/clk] [get_bd_pins mem_0/clk] [get_bd_pins pc_0/clk] [get_bd_pins regfile_0/clk]
  connect_bd_net -net cntrl_fsm_0_alu_en [get_bd_ports alu_en] [get_bd_pins alu_0/en] [get_bd_pins cntrl_fsm_0/alu_en]
  connect_bd_net -net cntrl_fsm_0_b [get_bd_ports alu_b] [get_bd_pins alu_0/b] [get_bd_pins cntrl_fsm_0/b]
  connect_bd_net -net cntrl_fsm_0_mem_en [get_bd_ports mem_en] [get_bd_pins cntrl_fsm_0/mem_en] [get_bd_pins mem_0/en]
  connect_bd_net -net cntrl_fsm_0_op_code [get_bd_ports op_code] [get_bd_pins alu_0/op_code] [get_bd_pins cntrl_fsm_0/op_code]
  connect_bd_net -net cntrl_fsm_0_pc_en [get_bd_ports pc_en] [get_bd_pins cntrl_fsm_0/pc_inc_en] [get_bd_pins pc_0/inc_en]
  connect_bd_net -net cntrl_fsm_0_pc_set [get_bd_ports addr_set] [get_bd_pins cntrl_fsm_0/pc_set] [get_bd_pins pc_0/set]
  connect_bd_net -net cntrl_fsm_0_pc_set_en [get_bd_ports addr_set_en] [get_bd_pins cntrl_fsm_0/pc_set_en] [get_bd_pins pc_0/set_en]
  connect_bd_net -net cntrl_fsm_0_raddr0 [get_bd_pins cntrl_fsm_0/raddr0] [get_bd_pins regfile_0/raddr0]
  connect_bd_net -net cntrl_fsm_0_raddr1 [get_bd_pins cntrl_fsm_0/raddr1] [get_bd_pins regfile_0/raddr1]
  connect_bd_net -net cntrl_fsm_0_reg_r_en [get_bd_ports reg_r_en] [get_bd_pins cntrl_fsm_0/reg_r_en] [get_bd_pins regfile_0/r_en]
  connect_bd_net -net cntrl_fsm_0_reg_w_en [get_bd_ports reg_w_en] [get_bd_pins cf_0/en] [get_bd_pins cntrl_fsm_0/reg_w_en] [get_bd_pins regfile_0/w_en]
  connect_bd_net -net cntrl_fsm_0_waddr [get_bd_ports waddr] [get_bd_pins cntrl_fsm_0/waddr] [get_bd_pins regfile_0/waddr]
  connect_bd_net -net pc_0_addr [get_bd_ports addr] [get_bd_pins mem_0/addr] [get_bd_pins pc_0/addr]
  connect_bd_net -net regfile_0_eax [get_bd_ports eax] [get_bd_pins regfile_0/eax]
  connect_bd_net -net regfile_0_ebx [get_bd_ports ebx] [get_bd_pins regfile_0/ebx]
  connect_bd_net -net regfile_0_ecx [get_bd_ports ecx] [get_bd_pins regfile_0/ecx]
  connect_bd_net -net regfile_0_rdata [get_bd_ports alu_a] [get_bd_pins alu_0/a] [get_bd_pins cntrl_fsm_0/a]
  connect_bd_net -net regfile_0_rdata0 [get_bd_ports rdata0] [get_bd_pins cntrl_fsm_0/rdata0] [get_bd_pins regfile_0/rdata0]
  connect_bd_net -net regfile_0_rdata1 [get_bd_pins cntrl_fsm_0/rdata1] [get_bd_pins regfile_0/rdata1]
  connect_bd_net -net rst_1 [get_bd_ports rst] [get_bd_pins cf_0/rst] [get_bd_pins cntrl_fsm_0/rst] [get_bd_pins pc_0/rst] [get_bd_pins regfile_0/rst]

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


