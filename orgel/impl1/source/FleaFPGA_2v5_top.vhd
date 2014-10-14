----------------------------------------------------------------------------------
-- ********* Fleatiny-FPGA V2.5 Platform top-level module ***********
-- This is basically a wrapper allows connection of user projects to 
-- Fleatiny-FPGA's on-board hardware
--
-- Creation Date: 23rd April 2014
-- Author: Valentin Angelovski
--
-- ©2013-2014 - Valentin Angelovski
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

entity FleaFPGA_2v5 is

  port(
    -- System clock and reset
	sys_clock		: in    std_logic;  -- main clock input from external clock source
	sys_reset		: in    std_logic;  -- main clock input from external RC reset circuit

    -- On-board user buttons and status LEDs
	n_pb1			: in    std_logic;  -- main clock input from external clock source
	n_pb2			: in    std_logic;  -- main clock input from external RC reset circuit
	n_led1			: buffer  std_logic;
	n_led2			: buffer  std_logic;
	n_led3			: buffer  std_logic;
	n_led4			: buffer  std_logic;

    -- USB Host (CH376T) interface
	host_reset		: out  std_logic;
	host_spi		: out  std_logic;
	host_nInt		: in  std_logic;
	host_sdi 		: buffer  std_logic;
	host_sdo		: in  std_logic;
	host_sck		: buffer  std_logic;	
	host_cs			: buffer  std_logic;
	host_tx_o 		: out  std_logic;
	host_rx_i 		: in  std_logic;
	
    -- USB Slave (FT230x) interface 
	slave_tx_o 		: out  std_logic;
	slave_rx_i 		: in  std_logic;
	
    -- User GPIO (18 I/O pins) Header
	GPIO 			: inout std_logic_vector(18 downto 1);  -- GPIO Header pins available as one data block
	
	-- SDRAM interface (For use with 16Mx16bit or 32Mx16bit SDR DRAM, depending on version)
	Dram_Clk		: out   std_logic;     -- clock to SDRAM
	Dram_n_Ras		: out   std_logic;     -- SDRAM RAS
	Dram_n_Cas		: out   std_logic;     -- SDRAM CAS
	Dram_n_We		: out   std_logic;     -- SDRAM write-enable
	Dram_BA			: out   std_logic_vector(1 downto 0);   -- SDRAM bank-address
	Dram_Addr		: out   std_logic_vector(12 downto 0);  -- SDRAM address bus
	Dram_Data		: inout std_logic_vector(15 downto 0);  -- data bus to/from SDRAM
	Dram_n_cs		: out   std_logic; 
	--Dram_dqm		: out   std_logic_vector(1 downto 0); 
	Dram_DQMH		: out   std_logic;
	Dram_DQML		: out   std_logic;	
	
	-- VGA interface (Note: 10-bit color organized as RGB = 3/4/3-bits)
	vga_vs			: out   std_logic; 
	vga_hs			: out   std_logic; 
	vga_red			: out   unsigned(3 downto 0); 
	vga_green		: out   unsigned(3 downto 0); 
	vga_blue		: out   unsigned(3 downto 0); 
	
	-- SD/MMC Interface (Support either SPI or nibble-mode)
	mmc_dat1		: in   std_logic; 
	mmc_dat2		: in   std_logic; 
	mmc_n_cs		: inout   std_logic; 
	mmc_clk			: out   std_logic; 
	mmc_mosi		: out   std_logic; 
	mmc_miso		: in   std_logic; 

	-- SPI SRAM (SPI-only for now..)
	spi_sram_cs 	: inout std_logic;
	spi_sram_hold 	: inout std_logic;
	spi_sram_clk 	: inout std_logic;
	spi_sram_miso 	: inout std_logic; 
	spi_sram_mosi 	: inout std_logic;

	-- Audio out (stereo-PWM) interface	
	Audio_l			: out   std_logic; 
	Audio_r			: out   std_logic; 
	
	-- PS2 interface (Both ports accessible via Y-splitter cable)
	PS2_clk1		: inout    std_logic;
	PS2_data1		: inout    std_logic;
	PS2_clk2		: inout     std_logic;
	PS2_data2		: inout     std_logic

    );
end FleaFPGA_2v5;


architecture arch of FleaFPGA_2v5 is


begin
  -- Housekeeping logic for unused peripherals on FleaFPGA board goes here!!!
  -- (Note: comment out any of the following code lines if peripheral is required)
  -- User-level combinatorial logic also goes here

-- Disable on-board user LEDs (Comment out if user LEDs needed..)
n_led1 <= '1';
n_led2 <= '1';
n_led3 <= '1';
n_led4 <= '1';

-- Disable on-board SDRAM (Comment out if using SDRAM..)
	Dram_n_cs <= '1';

-- Disable on-board MMC/SD (Comment out if using MMC/SD peripheral..)
	mmc_n_cs <= '1';   

	
-- Disable on-board SPI SRAM (Comment out if using SPI SRAM peripheral..)
	spi_sram_cs <= '1';


-- Disable on-board CH376T SPI  (Note: Serial UART comms to CH376T is always avaiable..)
	host_cs <= '1';
	host_spi <= '1';
	host_sdi <= '1';
	host_sck <= '1';  



-- Top-level user-project source is added here:

 my_project : entity work.myproject_toplevel
port map(
PS2_clk1 => kbclock,	
PS2_data1 => kbdata,
sys_clock => clk50,
sys_reset => reset,
Audio_l => audio_l,
Audio_r => audio_r
	);

end architecture;

