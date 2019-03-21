-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2.2 (lin64) Build 2348494 Mon Oct  1 18:25:39 MDT 2018
-- Date        : Thu Feb 21 08:05:09 2019
-- Host        : hedhyw-Lenovo-ideapad-310-15ISK running 64-bit Ubuntu 18.04.2 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ calc_alu_0_0_sim_netlist.vhdl
-- Design      : calc_alu_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7k70tfbv676-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_alu is
  port (
    result : out STD_LOGIC_VECTOR ( 3 downto 0 );
    c_out : out STD_LOGIC;
    en : in STD_LOGIC;
    clk : in STD_LOGIC;
    op_code : in STD_LOGIC_VECTOR ( 3 downto 0 );
    b : in STD_LOGIC_VECTOR ( 3 downto 0 );
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    c_in : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_alu;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_alu is
  signal \^c_out\ : STD_LOGIC;
  signal c_out_i_1_n_0 : STD_LOGIC;
  signal c_out_i_2_n_0 : STD_LOGIC;
  signal c_out_i_3_n_0 : STD_LOGIC;
  signal c_out_i_4_n_0 : STD_LOGIC;
  signal c_out_i_5_n_0 : STD_LOGIC;
  signal c_out_i_6_n_0 : STD_LOGIC;
  signal \result[0]_i_2_n_0\ : STD_LOGIC;
  signal \result[0]_i_3_n_0\ : STD_LOGIC;
  signal \result[1]_i_2_n_0\ : STD_LOGIC;
  signal \result[1]_i_3_n_0\ : STD_LOGIC;
  signal \result[1]_i_4_n_0\ : STD_LOGIC;
  signal \result[1]_i_5_n_0\ : STD_LOGIC;
  signal \result[2]_i_2_n_0\ : STD_LOGIC;
  signal \result[2]_i_3_n_0\ : STD_LOGIC;
  signal \result[2]_i_4_n_0\ : STD_LOGIC;
  signal \result[2]_i_5_n_0\ : STD_LOGIC;
  signal \result[2]_i_6_n_0\ : STD_LOGIC;
  signal \result[2]_i_7_n_0\ : STD_LOGIC;
  signal \result[2]_i_8_n_0\ : STD_LOGIC;
  signal \result[3]_i_2_n_0\ : STD_LOGIC;
  signal \result[3]_i_3_n_0\ : STD_LOGIC;
  signal \result[3]_i_4_n_0\ : STD_LOGIC;
  signal \result[3]_i_5_n_0\ : STD_LOGIC;
  signal \result[3]_i_6_n_0\ : STD_LOGIC;
  signal \result[3]_i_7_n_0\ : STD_LOGIC;
  signal result_0 : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of c_out_i_4 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \result[1]_i_4\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \result[1]_i_5\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \result[2]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \result[2]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \result[2]_i_7\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \result[3]_i_4\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \result[3]_i_5\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \result[3]_i_6\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \result[3]_i_7\ : label is "soft_lutpair2";
begin
  c_out <= \^c_out\;
c_out_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFE0"
    )
        port map (
      I0 => c_out_i_2_n_0,
      I1 => c_out_i_3_n_0,
      I2 => c_out_i_4_n_0,
      I3 => \^c_out\,
      O => c_out_i_1_n_0
    );
c_out_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAA00000FCC00000"
    )
        port map (
      I0 => c_out_i_5_n_0,
      I1 => c_out_i_6_n_0,
      I2 => a(3),
      I3 => b(3),
      I4 => op_code(3),
      I5 => c_in,
      O => c_out_i_2_n_0
    );
c_out_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000A0A00000FCC0"
    )
        port map (
      I0 => \result[3]_i_4_n_0\,
      I1 => c_out_i_6_n_0,
      I2 => a(3),
      I3 => b(3),
      I4 => op_code(3),
      I5 => op_code(1),
      O => c_out_i_3_n_0
    );
c_out_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80800888"
    )
        port map (
      I0 => en,
      I1 => op_code(2),
      I2 => op_code(1),
      I3 => op_code(0),
      I4 => op_code(3),
      O => c_out_i_4_n_0
    );
c_out_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEE0FEE00000"
    )
        port map (
      I0 => a(0),
      I1 => b(0),
      I2 => a(1),
      I3 => b(1),
      I4 => a(2),
      I5 => b(2),
      O => c_out_i_5_n_0
    );
c_out_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF880F8800000"
    )
        port map (
      I0 => b(0),
      I1 => a(0),
      I2 => a(1),
      I3 => b(1),
      I4 => a(2),
      I5 => b(2),
      O => c_out_i_6_n_0
    );
c_out_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => c_out_i_1_n_0,
      Q => \^c_out\,
      R => '0'
    );
\result[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"035CF454"
    )
        port map (
      I0 => op_code(0),
      I1 => b(0),
      I2 => op_code(1),
      I3 => a(0),
      I4 => op_code(2),
      O => \result[0]_i_2_n_0\
    );
\result[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F55A5A825FF05A82"
    )
        port map (
      I0 => op_code(2),
      I1 => op_code(0),
      I2 => a(0),
      I3 => b(0),
      I4 => op_code(1),
      I5 => c_in,
      O => \result[0]_i_3_n_0\
    );
\result[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBBBB8B8B8B8B8"
    )
        port map (
      I0 => \result[1]_i_2_n_0\,
      I1 => op_code(3),
      I2 => \result[1]_i_3_n_0\,
      I3 => a(1),
      I4 => a(0),
      I5 => \result[3]_i_5_n_0\,
      O => result_0(1)
    );
\result[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEE638800EE6388"
    )
        port map (
      I0 => b(1),
      I1 => a(1),
      I2 => op_code(0),
      I3 => op_code(2),
      I4 => op_code(1),
      I5 => \result[1]_i_4_n_0\,
      O => \result[1]_i_2_n_0\
    );
\result[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F000FF960096CC"
    )
        port map (
      I0 => \result[1]_i_5_n_0\,
      I1 => b(1),
      I2 => a(1),
      I3 => op_code(2),
      I4 => op_code(0),
      I5 => op_code(1),
      O => \result[1]_i_3_n_0\
    );
\result[1]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99969666"
    )
        port map (
      I0 => a(1),
      I1 => b(1),
      I2 => c_in,
      I3 => b(0),
      I4 => a(0),
      O => \result[1]_i_4_n_0\
    );
\result[1]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => b(0),
      I1 => a(0),
      O => \result[1]_i_5_n_0\
    );
\result[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAFFBAFFBAFFBA00"
    )
        port map (
      I0 => \result[2]_i_2_n_0\,
      I1 => \result[2]_i_3_n_0\,
      I2 => \result[2]_i_4_n_0\,
      I3 => op_code(3),
      I4 => \result[2]_i_5_n_0\,
      I5 => \result[2]_i_6_n_0\,
      O => result_0(2)
    );
\result[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"333C3804"
    )
        port map (
      I0 => op_code(0),
      I1 => op_code(2),
      I2 => op_code(1),
      I3 => a(2),
      I4 => b(2),
      O => \result[2]_i_2_n_0\
    );
\result[2]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => op_code(2),
      I1 => op_code(1),
      O => \result[2]_i_3_n_0\
    );
\result[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"011FFEE0077FF880"
    )
        port map (
      I0 => a(0),
      I1 => b(0),
      I2 => a(1),
      I3 => b(1),
      I4 => \result[2]_i_7_n_0\,
      I5 => c_in,
      O => \result[2]_i_4_n_0\
    );
\result[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00CC00FFF000F0AA"
    )
        port map (
      I0 => b(2),
      I1 => a(2),
      I2 => \result[2]_i_8_n_0\,
      I3 => op_code(2),
      I4 => op_code(0),
      I5 => op_code(1),
      O => \result[2]_i_5_n_0\
    );
\result[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020202020000000"
    )
        port map (
      I0 => op_code(2),
      I1 => op_code(0),
      I2 => op_code(1),
      I3 => a(0),
      I4 => a(1),
      I5 => a(2),
      O => \result[2]_i_6_n_0\
    );
\result[2]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(2),
      I1 => b(2),
      O => \result[2]_i_7_n_0\
    );
\result[2]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E88817771777E888"
    )
        port map (
      I0 => b(1),
      I1 => a(1),
      I2 => a(0),
      I3 => b(0),
      I4 => b(2),
      I5 => a(2),
      O => \result[2]_i_8_n_0\
    );
\result[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBBBB8B8B8B8B8"
    )
        port map (
      I0 => \result[3]_i_2_n_0\,
      I1 => op_code(3),
      I2 => \result[3]_i_3_n_0\,
      I3 => a(3),
      I4 => \result[3]_i_4_n_0\,
      I5 => \result[3]_i_5_n_0\,
      O => result_0(3)
    );
\result[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AABBBBAAABABBABA"
    )
        port map (
      I0 => \result[3]_i_6_n_0\,
      I1 => \result[2]_i_3_n_0\,
      I2 => c_out_i_6_n_0,
      I3 => c_out_i_5_n_0,
      I4 => \result[3]_i_7_n_0\,
      I5 => c_in,
      O => \result[3]_i_2_n_0\
    );
\result[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F000FF960096CC"
    )
        port map (
      I0 => c_out_i_6_n_0,
      I1 => b(3),
      I2 => a(3),
      I3 => op_code(2),
      I4 => op_code(0),
      I5 => op_code(1),
      O => \result[3]_i_3_n_0\
    );
\result[3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => a(2),
      I1 => a(0),
      I2 => a(1),
      O => \result[3]_i_4_n_0\
    );
\result[3]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => op_code(2),
      I1 => op_code(0),
      I2 => op_code(1),
      O => \result[3]_i_5_n_0\
    );
\result[3]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"333C3804"
    )
        port map (
      I0 => op_code(0),
      I1 => op_code(2),
      I2 => op_code(1),
      I3 => a(3),
      I4 => b(3),
      O => \result[3]_i_6_n_0\
    );
\result[3]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => a(3),
      I1 => b(3),
      O => \result[3]_i_7_n_0\
    );
\result_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => result_0(0),
      Q => result(0),
      R => '0'
    );
\result_reg[0]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \result[0]_i_2_n_0\,
      I1 => \result[0]_i_3_n_0\,
      O => result_0(0),
      S => op_code(3)
    );
\result_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => result_0(1),
      Q => result(1),
      R => '0'
    );
\result_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => result_0(2),
      Q => result(2),
      R => '0'
    );
\result_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => result_0(3),
      Q => result(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    en : in STD_LOGIC;
    clk : in STD_LOGIC;
    c_in : in STD_LOGIC;
    op_code : in STD_LOGIC_VECTOR ( 3 downto 0 );
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    b : in STD_LOGIC_VECTOR ( 3 downto 0 );
    c_out : out STD_LOGIC;
    result : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "calc_alu_0_0,alu,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "alu,Vivado 2018.2.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN calc_clk";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_alu
     port map (
      a(3 downto 0) => a(3 downto 0),
      b(3 downto 0) => b(3 downto 0),
      c_in => c_in,
      c_out => c_out,
      clk => clk,
      en => en,
      op_code(3 downto 0) => op_code(3 downto 0),
      result(3 downto 0) => result(3 downto 0)
    );
end STRUCTURE;
