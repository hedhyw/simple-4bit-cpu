-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2.2 (lin64) Build 2348494 Mon Oct  1 18:25:39 MDT 2018
-- Date        : Thu Feb 21 10:15:12 2019
-- Host        : hedhyw-Lenovo-ideapad-310-15ISK running 64-bit Ubuntu 18.04.2 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ calc_mem_0_0_sim_netlist.vhdl
-- Design      : calc_mem_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7k70tfbv676-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mem is
  port (
    data_frame : out STD_LOGIC_VECTOR ( 7 downto 0 );
    addr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    en : in STD_LOGIC;
    clk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mem;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mem is
  signal \data_frame[0]_i_1_n_0\ : STD_LOGIC;
  signal \data_frame[14]_i_1_n_0\ : STD_LOGIC;
  signal \data_frame[1]_i_1_n_0\ : STD_LOGIC;
  signal \data_frame[2]_i_1_n_0\ : STD_LOGIC;
  signal \data_frame[4]_i_1_n_0\ : STD_LOGIC;
  signal \data_frame[8]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \data_frame[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \data_frame[14]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \data_frame[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \data_frame[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \data_frame[4]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \data_frame[8]_i_1\ : label is "soft_lutpair1";
begin
\data_frame[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => addr(1),
      I1 => addr(0),
      O => \data_frame[0]_i_1_n_0\
    );
\data_frame[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => addr(1),
      I1 => addr(0),
      I2 => addr(2),
      O => \data_frame[14]_i_1_n_0\
    );
\data_frame[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => addr(0),
      I1 => addr(1),
      O => \data_frame[1]_i_1_n_0\
    );
\data_frame[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => addr(0),
      I1 => addr(1),
      O => \data_frame[2]_i_1_n_0\
    );
\data_frame[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => addr(1),
      I1 => addr(0),
      O => \data_frame[4]_i_1_n_0\
    );
\data_frame[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => addr(0),
      I1 => addr(1),
      O => \data_frame[8]_i_1_n_0\
    );
\data_frame_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => \data_frame[0]_i_1_n_0\,
      Q => data_frame(0),
      R => '0'
    );
\data_frame_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => addr(2),
      Q => data_frame(6),
      R => '0'
    );
\data_frame_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => \data_frame[14]_i_1_n_0\,
      Q => data_frame(7),
      R => '0'
    );
\data_frame_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => \data_frame[1]_i_1_n_0\,
      Q => data_frame(1),
      R => '0'
    );
\data_frame_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => \data_frame[2]_i_1_n_0\,
      Q => data_frame(2),
      R => '0'
    );
\data_frame_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => \data_frame[4]_i_1_n_0\,
      Q => data_frame(3),
      R => '0'
    );
\data_frame_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => addr(0),
      Q => data_frame(4),
      R => '0'
    );
\data_frame_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => \data_frame[8]_i_1_n_0\,
      Q => data_frame(5),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    addr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    data_frame : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "calc_mem_0_0,mem,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "mem,Vivado 2018.2.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal \^data_frame\ : STD_LOGIC_VECTOR ( 14 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN calc_clk";
begin
  data_frame(15) <= \<const0>\;
  data_frame(14) <= \^data_frame\(14);
  data_frame(13) <= \^data_frame\(12);
  data_frame(12) <= \^data_frame\(12);
  data_frame(11) <= \<const0>\;
  data_frame(10) <= \<const0>\;
  data_frame(9) <= \<const0>\;
  data_frame(8) <= \^data_frame\(8);
  data_frame(7) <= \<const0>\;
  data_frame(6) <= \<const0>\;
  data_frame(5 downto 4) <= \^data_frame\(5 downto 4);
  data_frame(3) <= \<const0>\;
  data_frame(2 downto 0) <= \^data_frame\(2 downto 0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mem
     port map (
      addr(2 downto 0) => addr(2 downto 0),
      clk => clk,
      data_frame(7) => \^data_frame\(14),
      data_frame(6) => \^data_frame\(12),
      data_frame(5) => \^data_frame\(8),
      data_frame(4 downto 3) => \^data_frame\(5 downto 4),
      data_frame(2 downto 0) => \^data_frame\(2 downto 0),
      en => en
    );
end STRUCTURE;
