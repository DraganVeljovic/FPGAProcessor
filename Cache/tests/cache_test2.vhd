library ieee;
use ieee.std_logic_1164.all;

entity EXE_Data_Mem_test2 is
end entity;

architecture test of EXE_Data_Mem_test2 is

	-- cache address, data_in and data_out
	signal address: std_logic_vector(31 downto 0);
	signal data_in: std_logic_vector(31 downto 0);
	signal data_out: std_logic_vector(31 downto 0);
	
	signal read, write, stop: std_logic;
	
	-- bit B in IR(1 - byte, 0 - word)
	signal IR_22: std_logic;
	
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
	instance: entity work.EXE_Data_Mem(behavior) port map(
		address=>address, data_in=>data_in, data_out=>data_out,
		rd=>read, wr=>write, stop=>stop, IR_22=>IR_22, clk=>clk, wait_mem=>wait_mem,
		mem_addr=>mem_addr, mem_data=>mem_data, mem_write=>mem_write,
		mem_read=>mem_read, reset=>reset, req=>req, ack=>ack, prekid => '0'
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
		wait for 40 ns;
		reset <= '0';
		ack <= '0';
	
		-- WRITE
		wait for 10 ns;
		address <= X"0000_3FE8"; -- TAG = FF, ULAZ = 2, WORD = 2, BYTE = 0
		data_in <= X"AAAA_2222";
		read <= '0';
		write <= '1';
		stop <= '0';
		IR_22 <= '0';
		wait for 10 ns;
		ack <= '1';
		wait for 20 ns;
		
		wait for 420 ns;
		
		mem_data <= X"0000_AAAA";
		wait for 40 ns;
		mem_data <= X"1111_AAAA";
		wait for 40 ns;
		mem_data <= X"2222_AAAA";
		wait for 40 ns;
		mem_data <= X"3333_AAAA";
		wait for 60 ns;
		
		mem_data <= "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";
		
		-- WRITE
		wait for 10 ns;
		address <= X"0000_3FC4"; -- TAG = FF, ULAZ = 0, WORD = 1, BYTE = 0
		data_in <= X"AAAA_2222";
		read <= '0';
		write <= '1';
		stop <= '0';
		IR_22 <= '0';
		wait for 10 ns;
		ack <= '1';
		wait for 20 ns;
		
		wait for 420 ns;
		
		mem_data <= X"0000_AAAA";
		wait for 40 ns;
		mem_data <= X"1111_AAAA";
		wait for 40 ns;
		mem_data <= X"2222_AAAA";
		wait for 40 ns;
		mem_data <= X"3333_AAAA";
		wait for 60 ns;
		
		mem_data <= "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";
		
		-- STOP
		wait for 10 ns;
		write <= '0';
		read <= '0';
		stop <= '1';
		IR_22 <= '0';
		wait for 5000 ns;
		
	end process;
end architecture;