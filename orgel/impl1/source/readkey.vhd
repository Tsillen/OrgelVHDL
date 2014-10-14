----------------------------------------------------------------------------------
-- Student:
-- Studentnummer: 
--
-- Ontwerp datum:    
-- Ontwerp Name: 
-- Naam van deze module:    readkey - readkey_struct 
-- Beschrijving: 
--
-- Versienummer:
-- Opmerkingen: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY readkey IS
    PORT ( clk 		: in  STD_LOGIC;
           reset 		: in  STD_LOGIC;
           kbclock 	: in  STD_LOGIC;
           kbdata 	: in  STD_LOGIC;
           key 		: out  STD_LOGIC_VECTOR (7 downto 0)
	    );
END readkey;

ARCHITECTURE readkey_struct OF readkey IS

   SIGNAL C_scancode		 : STD_LOGIC_VECTOR(7 DOWNTO 0);
   SIGNAL C_byte_read	 : STD_LOGIC;

BEGIN

L_Showkey: ENTITY work.showkey
	   		PORT MAP(reset 		=> reset,	
							kbclock 		=> kbclock,
							kbdata		=> kbdata,
							scancode		=> C_scancode,
							byte_read	=> C_byte_read 
							);

L_Constantkey: ENTITY work.Const_Key
	   		PORT MAP(reset 			=> reset,
							clk				=> clk,
							scancode			=> C_scancode,
							byte_read		=> C_byte_read,
							key				=> key
							);		
END readkey_struct;



