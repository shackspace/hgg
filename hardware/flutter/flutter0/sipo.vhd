----------------------------------------------------------------------------------
-- Company: shackspace - hackerspace global grid
-- Engineer: hadez@shackspace.de, armin@eulerpfad.com
-- 
-- Create Date:    16:53:33 01/28/2012 
-- Design Name: sipo
-- Module Name:    sipo - Behavioral 
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

entity sipo is
	 generic ( BITS : natural := 40 );
    Port ( RST : in  STD_LOGIC;
           DIN : in  STD_LOGIC;
           CS : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR (BITS-1 downto 0);
           VALID : out  STD_LOGIC);
end sipo;

architecture Behavioral of sipo is
	signal Q_INT : std_logic_vector (BITS-1 downto 0) := (others => '0');
	signal Q_OUT : std_logic_vector (BITS-1 downto 0) := (others => '0');
	signal VALID_INT : std_logic := '0';
begin

	process(CS, CLK, RST)
	begin
		if(RST = '0') then
			Q_INT <= (others => '0');
			Q_OUT <= (others => '0');
			VALID_INT <= '0';
		else
			if(CS = '1' and rising_edge(CLK)) then
				Q_INT <= Q_INT(BITS-2 downto 0) & DIN;
			end if;
			
			if(falling_edge(CS)) then
				Q_OUT <= Q_INT;
				VALID_INT <= '1';
			end if;
			
		end if;
	end process;

	VALID <= VALID_INT;
	Q <= Q_OUT;

end Behavioral;

