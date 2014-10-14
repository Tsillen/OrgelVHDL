----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:41:32 12/28/2013 
-- Design Name: 
-- Module Name:    Tone_Generator - Behavioral 
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

ENTITY Tone_Generator IS
	PORT (	clk				: IN STD_LOGIC;
				reset				: IN STD_LOGIC;
				key				: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
				audio_r  		: OUT STD_LOGIC;
				audio_l  		: OUT STD_LOGIC 
			);
END Tone_Generator;

ARCHITECTURE Behavioral OF Tone_Generator IS
SIGNAL clk_divider	: STD_LOGIC;
SIGNAL pulselenght	: INTEGER RANGE 0 TO 8000;

BEGIN

Clock_Generator:	ENTITY WORK.Clock_Generator
	PORT MAP (	
					reset         => reset,
					clk50         => clk,
					key	        => key,
					clk_div       => clk_divider 
				 );
								
Pulse_Length:		ENTITY WORK.Key2_Pulselenght
	PORT MAP (
					reset         => reset,
					key	        => key,
					pulse_length  => pulselenght 
				 );
								
Audio_Pulse:		ENTITY WORK.Pulselenght2_Audio
	PORT MAP (
					clk_div		  => clk_divider,
					reset			  => reset,
					pulse_lenght  => pulselenght,
					audio_r		  => audio_r,
					audio_l       => audio_l 
				 );
END Behavioral;