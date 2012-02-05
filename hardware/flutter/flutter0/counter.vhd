----------------------------------------------------------------------------------
-- Company: shackspace - hackerspace global grid
-- Engineer: hadez@shackspace.de, armin@eulerpfad.com
-- 
-- Create Date:    15:41:32 01/28/2012 
-- Design Name: counter
-- Module Name:    counter - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity counter is
	Generic ( BITS : natural := 32 );
    Port ( RST : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR (BITS-1 downto 0));
end counter;

architecture Behavioral of counter is
	signal Q_INT : STD_LOGIC_VECTOR (BITS-1 downto 0) := (others => '0');
begin
	process(RST, CLK)
	begin
		if(RST = '0') then
			Q_INT <= (others => '0');
		elsif(rising_edge(CLK)) then
			Q_INT <= Q_INT + 1;
		end if;
	end process;
	
	Q <= Q_INT;
	
----------- simulation ----------
--	STIM_CLK: process
--	begin
--		CLK <= '0';
--		wait for 50ns;
--		CLK <= '1';
--		wait for 50ns;
--	end process STIM_CLK;
--
--	STIM_RST: process
--	begin
--		RST <= '0', '1' after 100ns, '0' after 1000ns, '1' after 1010ns;
--	end process STIM_RST;
----------- /simulation ----------

end Behavioral;

