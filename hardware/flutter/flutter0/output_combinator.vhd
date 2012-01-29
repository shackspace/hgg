----------------------------------------------------------------------------------
-- Company: shackspace - hackerspace global grid
-- Engineer: hadez@shackspace.de, armin@eulerpfad.com
-- 
-- Create Date:    17:14:33 01/28/2012 
-- Design Name: output_combinator
-- Module Name:    output_combinator - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity output_combinator is
	generic ( SLOWBITS : natural := 4;
				 COUNTERBITS : natural := 4 );
    Port ( SLOWIN : in  STD_LOGIC_VECTOR (SLOWBITS-1 downto 0);
           COUNTERIN : in  STD_LOGIC_VECTOR (COUNTERBITS-1 downto 0);
           RST : in  STD_LOGIC;
           LATCH : in  STD_LOGIC;
           DCLK : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           QCLK : out  STD_LOGIC;
           QCS : out  STD_LOGIC);
end output_combinator;

architecture Behavioral of output_combinator is
	signal Q_INT : std_logic_vector(SLOWBITS  + COUNTERBITS - 1 downto 0) := (others => '0');
	signal CLK_OUT_ENA : std_logic := '0';
	signal CLK_OUT_CNT : integer := 0;
	
begin
	process( DCLK, RST, LATCH )
	begin	
		if(RST = '0') then
			Q_INT <= (others => '0');
			QCLK <= '0';
			QCS <= '0';
			Q <= '0';
			
		elsif(CLK_OUT_ENA = '1') then
		-- clocking out  data
			if(CLK_OUT_CNT = 0) then
			   -- exit data clock-out state
				CLK_OUT_ENA <= '0';
				QCLK <= '0';
				Q <= '0';
				QCS <= '0';
			
			else				
				if(rising_edge(DCLK)) then
					-- shift out
					Q <= Q_INT(0);
					Q_INT <= '0' & Q_INT( SLOWBITS  + COUNTERBITS - 1 downto 1 );
					
					-- reset data out clock
					QCLK <= '0';
					
					-- decrement clock counter
					CLK_OUT_CNT <= CLK_OUT_CNT - 1;
				end if;
				
				if(falling_edge(DCLK)) then
					-- data on bus is valid with rising edge of QCLK
					QCLK <= '1';
				end if;
				
			end if;
			
		else -- CLK_OUT_ENA = '0'
			-- waiting for data
			if(rising_edge(LATCH)) then
				Q_INT <= SLOWIN & COUNTERIN;
			end if;
			
			if(falling_edge(LATCH)) then
				-- enter data clock-out state
				-- adding another bit because otherwise the last bit would not be clocked out properly
				CLK_OUT_CNT <= SLOWBITS + COUNTERBITS + 1;
				CLK_OUT_ENA <= '1';
				QCLK <= '0';
				Q <= '0';
				QCS <= '1';
			end if;
		end if;
	end process;
end Behavioral;

