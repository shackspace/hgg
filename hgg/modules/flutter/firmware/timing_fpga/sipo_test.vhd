--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:47:23 01/28/2012
-- Design Name:   
-- Module Name:   /home/gjehle/Development/shackspace/hgg/hardware/flutter/flutter0/sipo_test.vhd
-- Project Name:  flutter0
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: sipo
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY sipo_test IS
END sipo_test;
 
ARCHITECTURE behavior OF sipo_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT sipo
    PORT(
         RST : IN  std_logic;
         DIN : IN  std_logic;
         CS : IN  std_logic;
         CLK : IN  std_logic;
         Q : OUT  std_logic_vector(39 downto 0);
         VALID : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal RST : std_logic := '0';
   signal DIN : std_logic := '0';
   signal CS : std_logic := '0';
   signal CLK : std_logic := '0';

 	--Outputs
   signal Q : std_logic_vector(39 downto 0);
   signal VALID : std_logic;

   -- Clock period definitions
   constant CLK_period : time := 100 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: sipo PORT MAP (
          RST => RST,
          DIN => DIN,
          CS => CS,
          CLK => CLK,
          Q => Q,
          VALID => VALID
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 
	DIN_process :process
	begin
		DIN <= '0';
		wait for CLK_period/7;
		DIN <= '1';
		wait for CLK_period/3;
		DIN <= '0';
		wait for CLK_period/2;
		DIN <= '1';
		wait for CLK_period/11;
	end process;

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.		
      wait for CLK_period*3;

      -- insert stimulus here 
		RST <= '1';
		
		wait for CLK_period*5;
		CS <= '1';
		
		wait for CLK_period*5;
		CS <= '0';

		wait for CLK_period*2;
		CS <= '1';

		wait for CLK_period*5;
		CS <= '0';
		
		wait;
   end process;

END;
