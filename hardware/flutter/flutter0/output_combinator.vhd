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
	generic ( SLOWBITS : natural := 40;
				 COUNTERBITS : natural := 32);
    Port ( SLOWIN : in  STD_LOGIC_VECTOR (SLOWBITS-1 downto 0);
           COUNTERIN : in  STD_LOGIC_VECTOR (COUNTERBITS-1 downto 0);
           RST : in  STD_LOGIC;
           LATCH_COUNTERIN : in  STD_LOGIC;
           LATCH_SLOWIN : in  STD_LOGIC;
           DCLK : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           QCLK : out  STD_LOGIC;
           QCS : out  STD_LOGIC);
end output_combinator;

architecture Behavioral of output_combinator is
	TYPE states IS (IDLE, PREPARE_SEND, SENDING_SETDATA, SENDING_SETCLOCK, CLEANUP_SEND);
	TYPE SMALLINT IS RANGE 0 TO 127; -- should be SLOWBITS + COUNTERBITS;

	signal state, nextState : states;

	signal inputDataValid : std_logic := '0';
	signal sendingComplete : std_logic := '0';
	signal SPI_SEND_COUNTER : integer := 0;

	signal Q_INT : std_logic_vector(SLOWBITS  + COUNTERBITS - 1 downto 0) := (others => '0');
	signal Q_PISO : std_logic_vector(SLOWBITS  + COUNTERBITS - 1 downto 0) := (others => '0');
begin
	-- switch between states in this process
	process (DCLK, RST) 
	begin
		if(RST = '0') THEN
			state <= IDLE;
		elsif(rising_edge(DCLK)) then
			state <= nextState after 20ns;
		end if;
	end process;
	
	-- handle what needs to be done in a state
	process(DCLK) -- evtl , state
	begin
		case state is
			when IDLE => if(inputDataValid = '1') then nextState <= PREPARE_SEND;
						    else nextState <= IDLE;
							 end if;

			when PREPARE_SEND => nextState <= SENDING_SETDATA;

			when SENDING_SETDATA => if(SPI_SEND_COUNTER = 0) then nextState <= CLEANUP_SEND;
											else nextState <= SENDING_SETCLOCK;
											end if;

			when SENDING_SETCLOCK => nextState <= SENDING_SETDATA;

			when CLEANUP_SEND => nextState <= IDLE;
		end case;
	end process;
	
	-- calculate output
	process(state)
	begin
		case state is
			when PREPARE_SEND => Q <= '0'; 
										QCS <= '1'; 
										QCLK <= '0';
										Q_PISO <= Q_INT;
										SPI_SEND_COUNTER <= SLOWBITS + COUNTERBITS;
										
			when SENDING_SETDATA => Q <= Q_PISO(0);
											Q_PISO <= '0' & Q_PISO( SLOWBITS  + COUNTERBITS - 1 downto 1 );
											QCLK <= '0';
											
			when SENDING_SETCLOCK => QCLK <= '1';
											 SPI_SEND_COUNTER <= SPI_SEND_COUNTER - 1;
			
			when CLEANUP_SEND => Q <= '0';
										QCS <= '0';
										QCLK <= '0';
										sendingComplete <= '1';
			
			when IDLE => Q <= '0'; 
						 	 QCS <= '0'; 
							 QCLK <= '0';
							 sendingComplete <= '0';
		end case;	
	end process;
	
	
	-- Latching the slowtime.
	process(RST, LATCH_SLOWIN, sendingComplete) 
	begin
		if(RST = '0') then
			Q_INT(SLOWBITS  + COUNTERBITS - 1 downto COUNTERBITS) <= (others => '0');
		else

--			if(inputDataValid = '0' and LATCH_SLOWIN='1') then
--				inputDataValid <= '1';
--			elsif(sendingComplete = '1') then
--				inputDataValid <= '0';
--			end if;
			
--			if(sendingComplete = '1') then
--				inputDataValid <= '0';
--			end if;
			
			if(rising_edge(LATCH_SLOWIN)) then
				Q_INT(SLOWBITS  + COUNTERBITS - 1 downto COUNTERBITS) <= SLOWIN;
				inputDataValid <= '1';
			end if;
		end if;
	end process;
	
	-- latching the counter data.
	process (RST, LATCH_COUNTERIN) 
	begin
		if(RST = '0') then
			Q_INT(COUNTERBITS - 1 downto 0) <= (others => '0');
		else 
			if(rising_edge(LATCH_COUNTERIN)) then
				Q_INT(COUNTERBITS - 1 downto 0) <= COUNTERIN;
			end if;
		end if;
	end process;
	
end Behavioral;

