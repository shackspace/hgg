--------------------------------------------------------------------------------
-- Company: shackspace - hackerspace global grid
-- Engineer: hadez@shackspace.de, armin@eulerpfad.com
--
-- Create Date:   00:31:57 01/29/2012
-- Design Name:   timesrc
-- Module Name:   /home/gjehle/Development/shackspace/hgg/hardware/flutter/flutter0/timesrc_test.vhd
-- Project Name:  flutter0
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: timesrc
-- 
-- Dependencies: sipo, counter, output_combinator
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
 
ENTITY timesrc_test IS
END timesrc_test;
 
ARCHITECTURE behavior OF timesrc_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT timesrc
	 PORT(
         RST : IN  std_logic;
         TIME_CLR : IN  std_logic;
         TIME_CLK : IN  std_logic;
         SPIIN_CS : IN  std_logic;
         SPIIN_CLK : IN  std_logic;
         SPIIN_DATA : IN  std_logic;
         DOUT_CLK : IN  std_logic;
         SPIOUT_DATA : OUT  std_logic;
         SPIOUT_CLK : OUT  std_logic;
         SPIOUT_CS : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal RST : std_logic := '0';
   signal TIME_CLR : std_logic := '0';
   signal TIME_CLK : std_logic := '0';
   signal SPIIN_CS : std_logic := '0';
   signal SPIIN_CLK : std_logic := '0';
   signal SPIIN_DATA : std_logic := '0';
   signal DOUT_CLK : std_logic := '0';

 	--Outputs
   signal SPIOUT_DATA : std_logic;
   signal SPIOUT_CLK : std_logic;
   signal SPIOUT_CS : std_logic;

   -- Clock period definitions
   constant TIME_CLK_period : time := 10 ns;
   constant SPIIN_CLK_period : time := 10 ns;
   constant DOUT_CLK_period : time := 10 ns;
	constant TIME_CLR_period : time := 300 ns;

	constant SLOWBITS : natural := 4;
	constant COUNTERBITS : natural := 4;
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: timesrc PORT MAP (
          RST => RST,
          TIME_CLR => TIME_CLR,
          TIME_CLK => TIME_CLK,
          SPIIN_CS => SPIIN_CS,
          SPIIN_CLK => SPIIN_CLK,
          SPIIN_DATA => SPIIN_DATA,
          DOUT_CLK => DOUT_CLK,
          SPIOUT_DATA => SPIOUT_DATA,
          SPIOUT_CLK => SPIOUT_CLK,
          SPIOUT_CS => SPIOUT_CS
        );

   -- Clock process definitions
   TIME_CLK_process :process
   begin
		TIME_CLK <= '0';
		wait for TIME_CLK_period/2;
		TIME_CLK <= '1';
		wait for TIME_CLK_period/2;
   end process;
 
   DOUT_CLK_process :process
   begin
		DOUT_CLK <= '0';
		wait for DOUT_CLK_period/2;
		DOUT_CLK <= '1';
		wait for DOUT_CLK_period/2;
   end process;
 
	TIME_CLR_process: process
	begin
		TIME_CLR <= '0';
		wait for TIME_CLR_period/100*99;
		TIME_CLR <= '1';
		wait for TIME_CLR_period/100;
	end process;

	SPIIN_process: process
	begin
	if(SPIIN_CS = '0') then
		if(TIME_CLR = '0') then
			wait for 100 ns;
		else
			SPIIN_CS <= '1';
		end if;
	else
		if(TIME_CLR = '1') then
			wait for 100ns;
		else
			for i in SLOWBITS-1 downto 0 loop
				SPIIN_DATA <= '0';
				SPIIN_CLK <= '0';
				wait for SPIIN_CLK_period/4;
				SPIIN_CLK <= '1';
				wait for SPIIN_CLK_period/4;
				SPIIN_DATA <= '1';
				SPIIN_CLK <= '0';
				wait for SPIIN_CLK_period/4;
				SPIIN_CLK <= '1';
				wait for SPIIN_CLK_period/4;
			end loop;
		end if;
	end if;
	end process;
	
   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		
		RST <= '1';

      wait for TIME_CLK_period*10;
		

      -- insert stimulus here 

      wait;
   end process;

END;
