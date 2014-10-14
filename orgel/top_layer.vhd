----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:19:59 01/16/2014 
-- Design Name: 
-- Module Name:    top_layer - Behavioral 
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

entity top_layer is
    PORT ( clk 		: in  STD_LOGIC;
           reset 		: in  STD_LOGIC;
           kbclock 	: in  STD_LOGIC;
           kbdata 	: in  STD_LOGIC;
			  audio_r  	: OUT STD_LOGIC;
			  audio_l  	: OUT STD_LOGIC 
			);
end top_layer;



architecture Behavioral of top_layer is
SIGNAL C_key : STD_LOGIC_VECTOR (7 DOWNTO 0);

begin
Tone_Gen : ENTITY work.Tone_Generator
	PORT MAP(	clk			=>	clk,
					reset			=> reset,
					key			=>	C_key,
					audio_r  	=>	audio_r,
					audio_l  	=>	audio_l
			  );
Read_key: 		  ENTITY work.readkey
    PORT MAP(  clk 		   => clk,
					reset 		=> reset,
					kbclock 	   => kbclock,
					kbdata 	   => kbdata,
					key 		   => C_Key
				);
end Behavioral;

