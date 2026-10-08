--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : Interlock.vhf
-- /___/   /\     Timestamp : 10/02/2026 13:32:25
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl /home/ise/ISE/Lab1_Interlock_Group64/Interlock.vhf -w /home/ise/ISE/Lab1_Interlock_Group64/Interlock.sch
--Design Name: Interlock
--Device: spartan6
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity Interlock is
   port ( G     : in    std_logic; 
          HL    : in    std_logic; 
          HR    : in    std_logic; 
          Fault : out   std_logic; 
          Run   : out   std_logic);
end Interlock;

architecture BEHAVIORAL of Interlock is
   attribute BOX_TYPE   : string ;
   signal XLXN_1 : std_logic;
   component AND3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3 : component is "BLACK_BOX";
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
begin
   XLXI_1 : AND3
      port map (I0=>G,
                I1=>HR,
                I2=>HL,
                O=>Run);
   
   XLXI_2 : AND3
      port map (I0=>XLXN_1,
                I1=>HR,
                I2=>HL,
                O=>Fault);
   
   XLXI_3 : INV
      port map (I=>G,
                O=>XLXN_1);
   
end BEHAVIORAL;


