--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:49:28 01/16/2014
-- Design Name:   
-- Module Name:   C:/Users/Thijs pc/Downloads/Tone_Generator/Tone_Generator/testbank.vhd
-- Project Name:  Tone_Generator
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: top_layer
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY testbank IS
END testbank;
 
ARCHITECTURE behavior OF testbank IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT top_layer
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         kbclock : IN  std_logic;
         kbdata : IN  std_logic;
         audio_r : OUT  std_logic;
         audio_l : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
	SIGNAL reset : STD_LOGIC := '0';
	SIGNAL kbclock : STD_LOGIC := '1';
	SIGNAL kbdata : STD_LOGIC := '0';
	SIGNAL tb_dig0, tb_dig1 : STD_LOGIC_VECTOR(7 DOWNTO 0);
	SIGNAL tb_scancode : STD_LOGIC_VECTOR(7 DOWNTO 0);
	SIGNAL tb_byte_read : STD_LOGIC;
	SIGNAL clk : STD_LOGIC;
	
	SHARED VARIABLE tb_stop: STD_LOGIC := '0';


 	--Outputs
   signal audio_r : std_logic;
   signal audio_l : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
   constant kbclock_period : time := 10 ns;
 
 
 --byte zendn
	PROCEDURE send_byte(
		CONSTANT byte : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		SIGNAL pr_kbclock : OUT STD_LOGIC;
		SIGNAL pr_kbdata : OUT STD_LOGIC)
		IS
		
			VARIABLE odd_parity : STD_LOGIC;
			VARIABLE data : STD_LOGIC_VECTOR(10 DOWNTO 0);
		
		BEGIN
			-- het genereren van het paritybit
			odd_parity := '1';
			FOR i IN 7 DOWNTO 0 LOOP
				odd_parity := odd_parity XOR byte(i);
				END LOOP;
			data := '1' & odd_parity & byte & '0';
			-- versturen van de data
			FOR I IN 0 TO 10 LOOP
				pr_kbdata <= data(i);
				pr_kbclock <= '1';
				WAIT FOR 200 ns;
				pr_kbclock <= '0';
				WAIT FOR 200 ns;
				END LOOP;
			pr_kbclock <= '1';
		END send_byte;
		
		
		
		
		
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: top_layer PORT MAP (
          clk => clk,
          reset => reset,
          kbclock => kbclock,
          kbdata => kbdata,
          audio_r => audio_r,
          audio_l => audio_l
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_period*10;

      -- insert stimulus here 
			reset <= '0';
					WAIT FOR 200 ns;
					reset <= '1';

					-- W
					WAIT FOR 1000 ns;
					Send_byte(X"1D", kbclock, kbdata);
					WAIT FOR 1000 ns;


					-- <geen toets>
					WAIT FOR 1000 ns;

					-- P
					WAIT FOR 1000 ns;
					Send_byte(X"4D", kbclock, kbdata);
	
					-- <geen toets>
					WAIT FOR 1000 ns;

					-- A 
					WAIT FOR 1000 ns;
					Send_byte(X"1C", kbclock, kbdata);

					-- <geen toets>
					WAIT FOR 200 ns;
--					tb_stop := '1';
      wait;
   end process;

END;
