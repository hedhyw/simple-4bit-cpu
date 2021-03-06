-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2.2 (lin64) Build 2348494 Mon Oct  1 18:25:39 MDT 2018
-- Date        : Thu Feb 21 10:15:12 2019
-- Host        : hedhyw-Lenovo-ideapad-310-15ISK running 64-bit Ubuntu 18.04.2 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/hedhyw/Development/GraduateWork/MIPS/mips.srcs/sources_1/bd/calc/ip/calc_mem_0_0/calc_mem_0_0_stub.vhdl
-- Design      : calc_mem_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7k70tfbv676-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity calc_mem_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    addr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    data_frame : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );

end calc_mem_0_0;

architecture stub of calc_mem_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,en,addr[3:0],data_frame[15:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "mem,Vivado 2018.2.2";
begin
end;
