----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:10:03 12/05/2013 
-- Design Name: 
-- Module Name:    showkey - Behavioral 
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

entity showkey is
	PORT (
		reset			: IN STD_LOGIC;
		kbclock		: IN STD_LOGIC;
		kbdata		: IN STD_LOGIC;
		dig0, dig1	: OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		scancode		: OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		byte_read	: OUT STD_LOGIC
		);
end showkey;

architecture Behavioral of showkey is
signal cnt : integer; --counter declare
signal dig1store : STD_LOGIC_VECTOR(7 downto 0); 

begin

process (reset, kbclock) is
begin
if (reset = '0') then 
		byte_read <= '0';
		cnt <= 0;
		dig1store <= "00000000";
	 
elsif falling_edge (kbclock) then
 
	if (cnt = 0) then
	 byte_read <= '0';
    dig1 <= dig1store(7 downto 0);
	 cnt <= cnt+1;

	elsif (cnt < 9) then
	  dig1store(cnt-1) <= kbdata;
     byte_read <= '0';
     cnt <= cnt + 1;
    
   elsif (cnt = 9) then   
     dig0 <= dig1store(7 downto 0);  
     scancode <= dig1store(7 downto 0); 
	  cnt <= cnt + 1;
   elsif(cnt = 10) then
	  byte_read <= '1';
	  cnt <= 0;
    end if;
end if;	 
end process;
end Behavioral;

