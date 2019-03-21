-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2.2 (lin64) Build 2348494 Mon Oct  1 18:25:39 MDT 2018
-- Date        : Thu Feb 21 10:15:17 2019
-- Host        : hedhyw-Lenovo-ideapad-310-15ISK running 64-bit Ubuntu 18.04.2 LTS
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ calc_cntrl_fsm_0_1_stub.vhdl
-- Design      : calc_cntrl_fsm_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7k70tfbv676-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    data_frame : in STD_LOGIC_VECTOR ( 15 downto 0 );
    rdata0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rdata1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    pc_inc_en : out STD_LOGIC;
    pc_set_en : out STD_LOGIC;
    mem_en : out STD_LOGIC;
    reg_r_en : out STD_LOGIC;
    alu_en : out STD_LOGIC;
    reg_w_en : out STD_LOGIC;
    pc_set : out STD_LOGIC_VECTOR ( 3 downto 0 );
    raddr0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    raddr1 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    waddr : out STD_LOGIC_VECTOR ( 3 downto 0 );
    op_code : out STD_LOGIC_VECTOR ( 3 downto 0 );
    b : out STD_LOGIC_VECTOR ( 3 downto 0 );
    a : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst,data_frame[15:0],rdata0[3:0],rdata1[3:0],pc_inc_en,pc_set_en,mem_en,reg_r_en,alu_en,reg_w_en,pc_set[3:0],raddr0[3:0],raddr1[3:0],waddr[3:0],op_code[3:0],b[3:0],a[3:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "cntrl_fsm,Vivado 2018.2.2";
begin
end;
