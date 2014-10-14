----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:12:36 12/21/2013 
-- Design Name: 
-- Module Name:    Const_Key - Behavioral 
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

entity Const_Key is
	PORT (
				reset			:in std_logic;
				clk			:in std_logic;
				scancode		:in std_logic_vector(7 downto 0);
				byte_read	:in std_logic;
				key			:out std_logic_vector(7 downto 0)
	);
end Const_Key;

architecture Behavioral of Const_Key is
type state_type is (s0 ,s1 ,s2);
signal current_s,next_s: state_type;
signal byteread_sync1, byteread_sync2: STD_LOGIC;
signal scancode_sync: STD_LOGIC_VECTOR(7 DOWNTO 0); --50MHz

BEGIN
opklokken : process(clk, reset) is
begin

	if (reset = '0') then
		byteread_sync1 <= '0';
		byteread_sync2 <= '0';
		scancode_sync <= "00000000";
	
	elsif falling_edge(clk) then --clk'event and clk='1'
		byteread_sync1 <= 	byte_read;
		byteread_sync2 <= 	byteread_sync1;
		if (byteread_sync2='1') then
			scancode_sync	<=	scancode;
		end if;
	end if;	
end process;


input_decoder : process(current_s,byteread_sync2, scancode_sync)
begin
 case current_s is
     when s0 =>        
     if(byteread_sync2 ='1') then
      next_s <= s1;
		else
		next_s<=current_s;
     end if; 	
    when s1 =>        
    if(scancode_sync = "11110000") then
		next_s <= s2;
	 else
	   next_s <= current_s;
	 end if;
    when others =>       
	 if(byteread_sync2 = '1' ) then
		next_s <= current_s;
	 else
	   next_s <= s0;
	 end if;
  end case;
end process;
	
state_decoder : process(clk,reset) is
begin
	if(reset = '0') then
	current_s <= s0; ---geen key
	elsif (rising_edge(clk)) then
	current_s <= next_s; --state change
end if;
end process;

output_decoder : process(current_s, scancode_sync) is
begin
		case current_s is
		--stuff	
		when s0 =>
		key <= "00000000";
		
		when s1 =>
		key<=scancode_sync; --F0
		when others =>
		key<= "11110000";
		end case;
end process;
end Behavioral;

