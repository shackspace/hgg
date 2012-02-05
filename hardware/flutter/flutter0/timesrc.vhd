----------------------------------------------------------------------------------
-- Company: shackspace - hackerspace global grid
-- Engineer: hadez@shackspace.de, armin@eulerpfad.com
-- 
-- Create Date:    23:49:36 01/28/2012 
-- Design Name: 
-- Module Name:    timesrc - Behavioral 
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

entity timesrc is
	 generic ( SLOWBITS : natural := 40;
				 COUNTERBITS : natural := 32 );
    Port ( RST : in  STD_LOGIC;
           
			  TIME_CLR : in  STD_LOGIC;
           TIME_CLK : in  STD_LOGIC;
           
			  SPIIN_CS : in  STD_LOGIC;
           SPIIN_CLK : in  STD_LOGIC;
           SPIIN_DATA : in  STD_LOGIC;
			  
           DOUT_CLK : in  STD_LOGIC;
           SPIOUT_DATA : out  STD_LOGIC;
           SPIOUT_CLK : out  STD_LOGIC;
           SPIOUT_CS : out  STD_LOGIC);
end timesrc;

architecture Behavioral of timesrc is
    COMPONENT output_combinator
    Port ( SLOWIN : in  STD_LOGIC_VECTOR (SLOWBITS-1 downto 0);
           COUNTERIN : in  STD_LOGIC_VECTOR (COUNTERBITS-1 downto 0);
           RST : in  STD_LOGIC;
           LATCH_COUNTERIN : in  STD_LOGIC;
           LATCH_SLOWIN : in  STD_LOGIC;
           DCLK : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           QCLK : out  STD_LOGIC;
           QCS : out  STD_LOGIC);
    END COMPONENT;
	 
	 component counter
    Port ( RST : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR (COUNTERBITS-1 downto 0));
	 end component;

	 component sipo
    Port ( RST : in  STD_LOGIC;
           DIN : in  STD_LOGIC;
           CS : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR (SLOWBITS-1 downto 0);
           VALID : out  STD_LOGIC); 
	 end component;
 
   -- rst and timeclear -> reset of counter
	signal counter_rst : std_logic := '0';
	
	-- counter -> combinator
	signal counter_out : std_logic_vector(COUNTERBITS-1 downto 0);
	
	signal sipo_q : std_logic_vector(SLOWBITS-1 downto 0) := (others => '0');
	signal sipo_valid : std_logic := '0';
	signal LATCH_SLOWIN : std_logic := '1';
begin	
	counter_rst <= RST or TIME_CLR;
	LATCH_SLOWIN <= not SPIIN_CS;

	counter_map: counter port map (
		RST => counter_rst,
		
		CLK => TIME_CLK,
		
		Q => counter_out
	);
	
	sipo_map: sipo port map (
		RST => RST,
		
		CS => SPIIN_CS,
		CLK => SPIIN_CLK,
		DIN => SPIIN_DATA,
		
		Q => sipo_q,
		VALID => sipo_valid
	);

	output_combinator_map: output_combinator port map (
		RST => RST,
		
		COUNTERIN => counter_out,
		SLOWIN => sipo_q,		
		LATCH_COUNTERIN => TIME_CLR,
		LATCH_SLOWIN => LATCH_SLOWIN, 

		DCLK => DOUT_CLK,
		
		Q => SPIOUT_DATA,
		QCLK => SPIOUT_CLK,
		QCS => SPIOUT_CS		
	);
end Behavioral;

