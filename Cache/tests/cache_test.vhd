library ieee;
use ieee.std_logic_1164.all;

entity cache_test is
end entity;

architecture test of cache_test is

	-- cache address, data_in and data_out
	signal address: std_logic_vector(31 downto 0);
	signal data_in: std_logic_vector(31 downto 0);
	signal data_out: std_logic_vector(31 downto 0);
	
	signal read, write, stop: std_logic;
	
	signal clk: std_logic;
	
	signal reset: std_logic;
	
	-- indicates that cache is working with MEM
	-- generates STALL signal
	signal wait_mem: std_logic;
	
	-- memory address and data (ABUS and DBUS)
	signal mem_addr: std_logic_vector(31 downto 0);
	signal mem_data: std_logic_vector(31 downto 0);
	
	-- memory read and write signals
	signal mem_write, mem_read: std_logic;
	
	-- memory requesst and acknowledgement
	signal req, ack: std_logic;
	
begin
	instance: entity work.cache port map(
		address, data_in, data_out, read, write, stop, clk, reset, wait_mem, mem_addr, mem_data, mem_read, mem_write, req, ack
	);
	
	clock: process
	begin
		clk <= '1';
		wait for 20 ns;
		clk <= '0';
		wait for 20 ns;
	end process;
	
	sim: process
	begin
		
		mem_data <= "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";
	
		reset <= '1';
		stop <= '0';
		wait until rising_edge(clk);
		reset <= '0';
		ack <= '0';
	
		-- READ
		data_in <= "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";
		address <= X"00000002";
		read <= '1';
		write <= '0';
		
		wait until rising_edge(clk);
		
		-- WRITE
		data_in <= X"FFFF_FFFF";
		address <= X"00000002";
		read <= '0';
		write <= '1';
		
		wait until rising_edge(clk);
		
		-- READ
		data_in <= "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";
		address <= X"00000002";
		read <= '1';
		write <= '0';
		
		wait until rising_edge(clk);
		
		address <= "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";
		data_in <= "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";
		read <= '0';
		write <= '0';
		
		mem_data <= "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";
		
		wait;
		
	end process;
end architecture;