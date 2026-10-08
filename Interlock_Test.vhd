-- Vhdl test bench created from schematic /home/ise/ISE/Lab1_Interlock_Group64/Interlock.sch - Fri Oct  2 12:58:12 2026
--
-- Notes: 
-- 1) This testbench template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the unit under test.
-- Xilinx recommends that these types always be used for the top-level
-- I/O of a design in order to guarantee that the testbench will bind
-- correctly to the timing (post-route) simulation model.
-- 2) To use this template as your testbench, change the filename to any
-- name of your choice with the extension .vhd, and use the "Source->Add"
-- menu in Project Navigator to import the testbench. Then
-- edit the user defined section below, adding code to generate the 
-- stimulus for your design.
--
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
LIBRARY UNISIM;
USE UNISIM.Vcomponents.ALL;
ENTITY Interlock_Interlock_sch_tb IS
END Interlock_Interlock_sch_tb;
ARCHITECTURE behavioral OF Interlock_Interlock_sch_tb IS 

   COMPONENT Interlock
   PORT( G	:	IN	STD_LOGIC; 
          HR	:	IN	STD_LOGIC; 
          HL	:	IN	STD_LOGIC; 
          Run	:	OUT	STD_LOGIC; 
          Fault	:	OUT	STD_LOGIC);
   END COMPONENT;

	SIGNAL G	:	STD_LOGIC;
   SIGNAL HR	:	STD_LOGIC;
   SIGNAL HL	:	STD_LOGIC;
   SIGNAL Run	:	STD_LOGIC;
   SIGNAL Fault	:	STD_LOGIC;

	constant period : time := 100ns;
  BEGIN 

   UUT: Interlock PORT MAP(
		G => G, 
		HR => HR, 
		HL => HL, 
		Run => Run, 
		Fault => Fault
   );

-- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN
	-- case 000
		HR <= '0';
		HL <= '0';
		G <= '0';
		wait for period;
		
		
		assert (HR = '0' and HL '0' and G = '0')
			report "ERROR RUN SHOULD BE'0' AND FAULT SHOULD BE '0'"
			severity error;
		
		
		
		
		-- case 001
		HR <= '0';
		HL <= '0';
		G <= '1';
		wait for period;
		
		
		assert (HR = '0' and HL '0' and G = '1')
			report "ERROR RUN SHOULD BE'0' AND FAULT SHOULD BE '0'"
			severity error;
		
		-- case 010
		HR <= '0';
		HL <= '1';
		G <= '0';
		wait for period;
		
		
		assert (HR = '1' and HL '0' and G = '0')
			report "ERROR RUN SHOULD BE'0' AND FAULT SHOULD BE '0'"
			severity error;
		
		-- case 011
		HR <= '1';
		HL <= '0';
		G <= '1';
		wait for period;
		
		
		assert (HR = '1' and HL '0' and G = '1')
			report "ERROR RUN SHOULD BE'0' AND FAULT SHOULD BE '0'"
			severity error;
		
		-- case 100
		HR <= '0';
		HL <= '1';
		G <= '0';
		wait for period;
		
		
		assert (HR = '0' and HL '1' and G = '0')
			report "ERROR RUN SHOULD BE'0' AND FAULT SHOULD BE '0'"
			severity error;
		
		-- case 101
		HR <= '0';
		HL <= '1';
		G <= '1';
		wait for period;
		
		
		assert (HR = '0' and HL '1' and G = '1')
			report "ERROR RUN SHOULD BE'0' AND FAULT SHOULD BE '0'"
			severity error;
		-- case 110
		HR <= '1';
		HL <= '1';
		G <= '0';
		wait for period;
		
		
		assert (HR = '1' and HL '1' and G = '0')
			report "ERROR RUN SHOULD BE'0' AND FAULT SHOULD BE '1'"
			severity error;
		
		-- case 111
		HR <= '1';
		HL <= '1';
		G <= '1';
		wait for period;
		
		
		assert (HR = '1' and HL '1' and G = '1')
			report "ERROR RUN SHOULD BE'1' AND FAULT SHOULD BE '0'"
			severity error;
		
		
		
		
      WAIT; -- will wait forever
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
