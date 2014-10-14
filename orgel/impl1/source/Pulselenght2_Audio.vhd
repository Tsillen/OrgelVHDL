----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:22:26 12/29/2013 
-- Design Name: 
-- Module Name:    Pulselenght2_Audio - Behavioral 
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

ENTITY Pulselenght2_Audio IS
	PORT ( 
				clk_div			: IN STD_LOGIC;
				reset			: IN STD_LOGIC;
				pulse_lenght	: IN INTEGER RANGE 0 TO 80000;
				audio_r			: OUT STD_LOGIC;
				audio_l			: OUT STD_LOGIC
			);
END Pulselenght2_Audio;

ARCHITECTURE Behavioral OF Pulselenght2_Audio IS
-- counter decleration
SIGNAL cnt						: INTEGER RANGE 0 TO 80000;
SIGNAL audio_tmp				: STD_LOGIC;

BEGIN
audio_generator: PROCESS(reset,clk_div)

BEGIN
IF(reset = '0') THEN
	cnt <= 0;
	audio_tmp <= '0';
ELSIF(RISING_EDGE(clk_div)) THEN
	IF(pulse_lenght = 0) THEN
		cnt <= 0;
		audio_tmp <= '0';
	ELSIF(pulse_lenght = cnt) THEN
		cnt <= 0;
		audio_tmp <= NOT audio_tmp;
	ELSE
		cnt <= cnt + 1;
	END IF;
END IF;
END PROCESS;
	audio_r <= audio_tmp;
	audio_l <= audio_tmp;
END Behavioral;

