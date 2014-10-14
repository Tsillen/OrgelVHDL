----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:26:52 12/28/2013 
-- Design Name: 
-- Module Name:    Key2_Pulselenght - Behavioral 
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

ENTITY Key2_Pulselenght is
	PORT ( 
			reset		  	: IN STD_LOGIC;
			key			  	: IN STD_LOGIC_VECTOR(7 DOWNTO 0);
			pulse_length	: OUT INTEGER RANGE 0 TO 8000 
		  );
END Key2_Pulselenght;

ARCHITECTURE Behavioral OF Key2_Pulselenght IS

BEGIN
PROCESS(reset, key)

BEGIN
CASE key IS
	WHEN X"0D" => 
		pulse_length <= 7102;
	WHEN X"16" => 
		pulse_length <= 6706;
	WHEN X"15" => 
		pulse_length <= 6338;
	WHEN X"1D" => 
		pulse_length <= 5975;
	WHEN X"26" => 
		pulse_length <= 5640;
	WHEN X"24" => 
		pulse_length <= 5323;
	WHEN X"25" => 
		pulse_length <= 5024;
	WHEN X"2D" => 
		pulse_length <= 4742;
	WHEN X"2C" => 
		pulse_length <= 4477;
	WHEN X"36" => 
		pulse_length <= 4228;
	WHEN X"35" => 
		pulse_length <= 3991;
	WHEN X"3D" => 
		pulse_length <= 3768;	
	WHEN X"3C" => 
		pulse_length <= 3551;
	WHEN X"3E" => 
		pulse_length <= 3353;
	WHEN X"43" => 
		pulse_length <= 3166;
	WHEN X"44" => 
		pulse_length <= 2987;
	WHEN X"45" => 
		pulse_length <= 2820;
	WHEN X"4D" => 
		pulse_length <= 2661;
	WHEN X"4E" => 
		pulse_length <= 2512;
	WHEN X"54" => 
		pulse_length <= 2371;
	WHEN X"5B" => 
		pulse_length <= 2238;
	WHEN X"5D" => 
		pulse_length <= 2113;
	WHEN OTHERS => 
		pulse_length <= 0;
END CASE;
END PROCESS;
END Behavioral;

