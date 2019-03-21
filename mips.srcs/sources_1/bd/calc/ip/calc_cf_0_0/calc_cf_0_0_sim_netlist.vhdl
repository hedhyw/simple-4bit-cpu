-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2.2 (lin64) Build 2348494 Mon Oct  1 18:25:39 MDT 2018
-- Date        : Wed Feb 20 16:05:20 2019
-- Host        : hedhyw-Lenovo-ideapad-310-15ISK running 64-bit Ubuntu 18.04.2 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/hedhyw/Development/GraduateWork/MIPS/mips.srcs/sources_1/bd/calc/ip/calc_cf_0_0/calc_cf_0_0_sim_netlist.vhdl
-- Design      : calc_cf_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7k70tfbv676-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity calc_cf_0_0_cf is
  port (
    carry_out : out STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    carry_in : in STD_LOGIC;
    en : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of calc_cf_0_0_cf : entity is "cf";
end calc_cf_0_0_cf;

architecture STRUCTURE of calc_cf_0_0_cf is
  signal \^carry_out\ : STD_LOGIC;
  signal carry_out_i_1_n_0 : STD_LOGIC;
begin
  carry_out <= \^carry_out\;
carry_out_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => carry_in,
      I1 => en,
      I2 => \^carry_out\,
      O => carry_out_i_1_n_0
    );
carry_out_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => carry_out_i_1_n_0,
      Q => \^carry_out\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity calc_cf_0_0 is
  port (
    carry_in : in STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    en : in STD_LOGIC;
    carry_out : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of calc_cf_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of calc_cf_0_0 : entity is "calc_cf_0_0,cf,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of calc_cf_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of calc_cf_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of calc_cf_0_0 : entity is "cf,Vivado 2018.2.2";
end calc_cf_0_0;

architecture STRUCTURE of calc_cf_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN calc_clk";
  attribute X_INTERFACE_INFO of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute X_INTERFACE_PARAMETER of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH";
begin
inst: entity work.calc_cf_0_0_cf
     port map (
      carry_in => carry_in,
      carry_out => carry_out,
      clk => clk,
      en => en,
      rst => rst
    );
end STRUCTURE;
