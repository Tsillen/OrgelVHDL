----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:42:38 12/28/2013 
-- Design Name: 
-- Module Name:    Clock_Generator - Behavioral 
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

ENTITY Clock_Generator IS
	PORT (
			reset		: IN STD_LOGIC;
			clk50		: IN STD_LOGIC;
			key			: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
			clk_div		: OUT STD_LOGIC 
		  );
END Clock_Generator;

ARCHITECTURE Behavioral OF Clock_Generator IS
SIGNAL temp_clk			: STD_LOGIC;
SIGNAL flag				: STD_LOGIC;
SIGNAL counter			: INTEGER RANGE 0 to 64 := 0;

TYPE freq_def IS (A,B,C,D,E,F,G);
SIGNAL freqentie		: freq_def;

BEGIN
PROCESS(clk50,reset)

BEGIN
IF(reset = '0') THEN
	flag <= '0';
ELSIF(RISING_EDGE(clk50)) THEN
	CASE key IS 
		WHEN X"1A" =>
			IF(flag = '0') THEN
				CASE freqentie IS
					WHEN A => 
						freqentie <= B;
					WHEN B => 
						freqentie <= C;
					WHEN C => 
						freqentie <= D;
					WHEN D => 
						freqentie <= E;
					WHEN E => 
						freqentie <= F;
					WHEN F => 
						freqentie <= G;
					WHEN G => 
						freqentie <= G;
					WHEN OTHERS => 
						freqentie <= D;
				END CASE;
				flag <= '1';
			END IF;
		WHEN X"1C" =>
			IF(flag = '0') THEN
				CASE freqentie IS
					WHEN A => 
						freqentie <= A;
					WHEN B => 
						freqentie <= A;
					WHEN C => 
						freqentie <= B;
					WHEN D => 
						freqentie <= C;
					WHEN E => 
						freqentie <= D;
					WHEN F => 
						freqentie <= E;
					WHEN G => 
						freqentie <= F;
					WHEN OTHERS => 
						freqentie <= D;
				END CASE;
				flag <= '1';
			END IF;
		WHEN OTHERS =>
			flag <= '0';
	END CASE;
END IF;
END PROCESS;

PROCESS(clk50,reset,freqentie)

BEGIN
IF(reset = '0') THEN
	counter <= 0;
	temp_clk <= '1';
ELSIF( freqentie = A ) THEN
	temp_clk <= NOT(temp_clk);
ELSIF(RISING_EDGE(clk50)) THEN
	CASE freqentie IS
		WHEN A =>
			counter <= 0;	
		WHEN B =>	
			IF ( counter >= 0 ) THEN
				temp_clk <= NOT(temp_clk);
				counter <= 0;
			ELSE
				counter <= counter + 1;
			END IF;
		WHEN C =>	
			IF ( counter >= 1 ) THEN
				temp_clk <= NOT(temp_clk);
				counter <= 0;
			ELSE
				counter <= counter + 1;
			END IF;
		WHEN D =>	
			IF ( counter >= 3 ) THEN
				temp_clk <= NOT(temp_clk);
				counter <= 0;
			ELSE
				counter <= counter + 1;
			END IF;
		WHEN E =>	
			IF ( counter >= 7 ) THEN
				temp_clk <= NOT(temp_clk);
				counter <= 0;
			ELSE
				counter <= counter + 1;
			END IF;
		WHEN F =>	
			IF ( counter >= 15 ) THEN
				temp_clk <= NOT(temp_clk);
				counter <= 0;
			ELSE
				counter <= counter + 1;
			END IF;
		WHEN G =>	
			IF ( counter >= 31 ) THEN
				temp_clk <= NOT(temp_clk);
				counter <= 0;
			ELSE
				counter <= counter + 1;
			END IF;
	END CASE;
END IF;
END PROCESS;
clk_div <= temp_clk;
END Behavioral;

