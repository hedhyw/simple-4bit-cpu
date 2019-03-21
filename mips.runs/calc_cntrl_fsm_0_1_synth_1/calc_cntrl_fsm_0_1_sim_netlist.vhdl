-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2.2 (lin64) Build 2348494 Mon Oct  1 18:25:39 MDT 2018
-- Date        : Thu Feb 21 10:15:19 2019
-- Host        : hedhyw-Lenovo-ideapad-310-15ISK running 64-bit Ubuntu 18.04.2 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ calc_cntrl_fsm_0_1_sim_netlist.vhdl
-- Design      : calc_cntrl_fsm_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7k70tfbv676-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cntrl_fsm is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    raddr1 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    b : out STD_LOGIC_VECTOR ( 3 downto 0 );
    data_frame : in STD_LOGIC_VECTOR ( 11 downto 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    rdata1 : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cntrl_fsm;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cntrl_fsm is
  signal \FSM_onehot_cur_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_cur_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_cur_state[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_cur_state[7]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_cur_state_reg_n_0_[0]\ : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \FSM_onehot_cur_state_reg_n_0_[0]\ : signal is "yes";
  signal \FSM_onehot_cur_state_reg_n_0_[7]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_cur_state_reg_n_0_[7]\ : signal is "yes";
  signal \^out\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  attribute RTL_KEEP of \^out\ : signal is "yes";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_cur_state_reg[0]\ : label is "S0_INIT:00000001,S1_FETCH:00000010,S2_REG_R:00000100,S4_REG_W:00100000,S6_PC_INC:01000000,S7_DONE:10000000,S3_ALU:00010000,S5_ADDR_W:00001000";
  attribute KEEP : string;
  attribute KEEP of \FSM_onehot_cur_state_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_cur_state_reg[1]\ : label is "S0_INIT:00000001,S1_FETCH:00000010,S2_REG_R:00000100,S4_REG_W:00100000,S6_PC_INC:01000000,S7_DONE:10000000,S3_ALU:00010000,S5_ADDR_W:00001000";
  attribute KEEP of \FSM_onehot_cur_state_reg[1]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_cur_state_reg[2]\ : label is "S0_INIT:00000001,S1_FETCH:00000010,S2_REG_R:00000100,S4_REG_W:00100000,S6_PC_INC:01000000,S7_DONE:10000000,S3_ALU:00010000,S5_ADDR_W:00001000";
  attribute KEEP of \FSM_onehot_cur_state_reg[2]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_cur_state_reg[3]\ : label is "S0_INIT:00000001,S1_FETCH:00000010,S2_REG_R:00000100,S4_REG_W:00100000,S6_PC_INC:01000000,S7_DONE:10000000,S3_ALU:00010000,S5_ADDR_W:00001000";
  attribute KEEP of \FSM_onehot_cur_state_reg[3]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_cur_state_reg[4]\ : label is "S0_INIT:00000001,S1_FETCH:00000010,S2_REG_R:00000100,S4_REG_W:00100000,S6_PC_INC:01000000,S7_DONE:10000000,S3_ALU:00010000,S5_ADDR_W:00001000";
  attribute KEEP of \FSM_onehot_cur_state_reg[4]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_cur_state_reg[5]\ : label is "S0_INIT:00000001,S1_FETCH:00000010,S2_REG_R:00000100,S4_REG_W:00100000,S6_PC_INC:01000000,S7_DONE:10000000,S3_ALU:00010000,S5_ADDR_W:00001000";
  attribute KEEP of \FSM_onehot_cur_state_reg[5]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_cur_state_reg[6]\ : label is "S0_INIT:00000001,S1_FETCH:00000010,S2_REG_R:00000100,S4_REG_W:00100000,S6_PC_INC:01000000,S7_DONE:10000000,S3_ALU:00010000,S5_ADDR_W:00001000";
  attribute KEEP of \FSM_onehot_cur_state_reg[6]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_cur_state_reg[7]\ : label is "S0_INIT:00000001,S1_FETCH:00000010,S2_REG_R:00000100,S4_REG_W:00100000,S6_PC_INC:01000000,S7_DONE:10000000,S3_ALU:00010000,S5_ADDR_W:00001000";
  attribute KEEP of \FSM_onehot_cur_state_reg[7]\ : label is "yes";
begin
  \out\(5 downto 0) <= \^out\(5 downto 0);
\FSM_onehot_cur_state[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_cur_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_cur_state_reg_n_0_[7]\,
      O => \FSM_onehot_cur_state[1]_i_1_n_0\
    );
\FSM_onehot_cur_state[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000000"
    )
        port map (
      I0 => \^out\(1),
      I1 => data_frame(10),
      I2 => data_frame(11),
      I3 => data_frame(8),
      I4 => data_frame(9),
      O => \FSM_onehot_cur_state[3]_i_1_n_0\
    );
\FSM_onehot_cur_state[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A2AAAAAA"
    )
        port map (
      I0 => \^out\(1),
      I1 => data_frame(10),
      I2 => data_frame(11),
      I3 => data_frame(8),
      I4 => data_frame(9),
      O => \FSM_onehot_cur_state[4]_i_1_n_0\
    );
\FSM_onehot_cur_state[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^out\(2),
      I1 => \^out\(5),
      O => \FSM_onehot_cur_state[7]_i_1_n_0\
    );
\FSM_onehot_cur_state_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => '0',
      PRE => rst,
      Q => \FSM_onehot_cur_state_reg_n_0_[0]\
    );
\FSM_onehot_cur_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \FSM_onehot_cur_state[1]_i_1_n_0\,
      Q => \^out\(0)
    );
\FSM_onehot_cur_state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \^out\(0),
      Q => \^out\(1)
    );
\FSM_onehot_cur_state_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \FSM_onehot_cur_state[3]_i_1_n_0\,
      Q => \^out\(2)
    );
\FSM_onehot_cur_state_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \FSM_onehot_cur_state[4]_i_1_n_0\,
      Q => \^out\(3)
    );
\FSM_onehot_cur_state_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \^out\(3),
      Q => \^out\(4)
    );
\FSM_onehot_cur_state_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \^out\(4),
      Q => \^out\(5)
    );
\FSM_onehot_cur_state_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \FSM_onehot_cur_state[7]_i_1_n_0\,
      Q => \FSM_onehot_cur_state_reg_n_0_[7]\
    );
\b[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFEB00080028"
    )
        port map (
      I0 => rdata1(0),
      I1 => data_frame(11),
      I2 => data_frame(10),
      I3 => data_frame(8),
      I4 => data_frame(9),
      I5 => data_frame(0),
      O => b(0)
    );
\b[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFEB00080028"
    )
        port map (
      I0 => rdata1(1),
      I1 => data_frame(11),
      I2 => data_frame(10),
      I3 => data_frame(8),
      I4 => data_frame(9),
      I5 => data_frame(1),
      O => b(1)
    );
\b[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFEB00080028"
    )
        port map (
      I0 => rdata1(2),
      I1 => data_frame(11),
      I2 => data_frame(10),
      I3 => data_frame(8),
      I4 => data_frame(9),
      I5 => data_frame(2),
      O => b(2)
    );
\b[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFEB00080028"
    )
        port map (
      I0 => rdata1(3),
      I1 => data_frame(11),
      I2 => data_frame(10),
      I3 => data_frame(8),
      I4 => data_frame(9),
      I5 => data_frame(3),
      O => b(3)
    );
\raddr1[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFEB00080028"
    )
        port map (
      I0 => data_frame(0),
      I1 => data_frame(11),
      I2 => data_frame(10),
      I3 => data_frame(8),
      I4 => data_frame(9),
      I5 => data_frame(4),
      O => raddr1(0)
    );
\raddr1[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFEB00080028"
    )
        port map (
      I0 => data_frame(1),
      I1 => data_frame(11),
      I2 => data_frame(10),
      I3 => data_frame(8),
      I4 => data_frame(9),
      I5 => data_frame(5),
      O => raddr1(1)
    );
\raddr1[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFEB00080028"
    )
        port map (
      I0 => data_frame(2),
      I1 => data_frame(11),
      I2 => data_frame(10),
      I3 => data_frame(8),
      I4 => data_frame(9),
      I5 => data_frame(6),
      O => raddr1(2)
    );
\raddr1[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFEB00080028"
    )
        port map (
      I0 => data_frame(3),
      I1 => data_frame(11),
      I2 => data_frame(10),
      I3 => data_frame(8),
      I4 => data_frame(9),
      I5 => data_frame(7),
      O => raddr1(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "calc_cntrl_fsm_0_1,cntrl_fsm,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "cntrl_fsm,Vivado 2018.2.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \^data_frame\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \^rdata0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN calc_clk";
  attribute X_INTERFACE_INFO of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute X_INTERFACE_PARAMETER of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH";
begin
  \^data_frame\(15 downto 0) <= data_frame(15 downto 0);
  \^rdata0\(3 downto 0) <= rdata0(3 downto 0);
  a(3 downto 0) <= \^rdata0\(3 downto 0);
  op_code(3 downto 0) <= \^data_frame\(15 downto 12);
  pc_set(3 downto 0) <= \^data_frame\(3 downto 0);
  raddr0(3 downto 0) <= \^data_frame\(11 downto 8);
  waddr(3 downto 0) <= \^data_frame\(7 downto 4);
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cntrl_fsm
     port map (
      b(3 downto 0) => b(3 downto 0),
      clk => clk,
      data_frame(11 downto 8) => \^data_frame\(15 downto 12),
      data_frame(7 downto 0) => \^data_frame\(7 downto 0),
      \out\(5) => pc_inc_en,
      \out\(4) => reg_w_en,
      \out\(3) => alu_en,
      \out\(2) => pc_set_en,
      \out\(1) => reg_r_en,
      \out\(0) => mem_en,
      raddr1(3 downto 0) => raddr1(3 downto 0),
      rdata1(3 downto 0) => rdata1(3 downto 0),
      rst => rst
    );
end STRUCTURE;
