--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:00:21 01/28/2012
-- Design Name:   
-- Module Name:   /home/gjehle/Development/shackspace/hgg/hardware/flutter/flutter0/output_combinator_test.vhd
-- Project Name:  flutter0
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: output_combinator
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
 
ENTITY output_combinator_test IS
END output_combinator_test;
 
ARCHITECTURE behavior OF output_combinator_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT output_combinator
    PORT(
         SLOWIN : IN  std_logic_vector(39 downto 0);
         COUNTERIN : IN  std_logic_vector(31 downto 0);
         RST : IN  std_logic;
         LATCH : in  STD_LOGIC;
         DCLK : IN  std_logic;
         Q : OUT  std_logic;
         QCLK : OUT  std_logic;
         QCS : OUT  std_logic			  
        );
    END COMPONENT;
    

   --Inputs
   signal SLOWIN : std_logic_vector(39 downto 0) := (others => '0');
   signal COUNTERIN : std_logic_vector(31 downto 0) := (others => '0');
   signal RST : std_logic := '0';
   signal LATCH : std_logic := '0';
   signal DCLK : std_logic := '0';

 	--Outputs
   signal Q : std_logic;
   signal QCLK : std_logic;
   signal QCS : std_logic;

   -- Clock period definitions
   constant DCLK_period : time := 1000 ns;
 BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: output_combinator PORT MAP (
          SLOWIN => SLOWIN,
          COUNTERIN => COUNTERIN,
          RST => RST,
          LATCH => LATCH,
          DCLK => DCLK,
          Q => Q,
          QCLK => QCLK,
          QCS => QCS
       );

   -- Clock process definitions
   DCLK_process :process
   begin
		DCLK <= '0';
		wait for DCLK_period/2;
		DCLK <= '1';
		wait for DCLK_period/2;
   end process; 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.		
      wait for DCLK_period;

      -- insert stimulus here 
		RST <= '1';
		
		wait for DCLK_period;
		SLOWIN    <= (3=>'1',4=>'1',others=>'0');

		wait for DCLK_period;
		COUNTERIN <= (1=>'1',2=>'1',others=>'0');
		
		wait for DCLK_period;
		LATCH <= '1';
		wait for DCLK_period/2;
		LATCH <= '0';
		
		wait;
   end process;

END;
