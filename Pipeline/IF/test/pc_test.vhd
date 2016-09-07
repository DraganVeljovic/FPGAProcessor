library ieee;

use ieee.std_logic_1164.all;

entity pc_test is
end pc_test;

architecture pc_test_arch of pc_test is
	
	signal clk : std_logic;
	signal reset : std_logic;
	
	signal pc_init : std_logic;
	signal pc_init_value : std_logic_vector (31 downto 0);
	
	signal pc_out : std_logic_vector (31 downto 0);
	signal pc_new_out : std_logic_vector (31 downto 0);
	
	signal pc_req_rd : std_logic;
	
	component pc is
		port
		(
			
			clk : in std_logic;
			reset : in std_logic;
			
			brnch : in std_logic;
			
			jmp_addr : in std_logic_vector (31 downto 0);
			
			pc_init : in std_logic;
			pc_init_value : in std_logic_vector (31 downto 0);
			
			pc : out std_logic_vector (31 downto 0);
			pc_new : out std_logic_vector (31 downto 0);
			
			pc_req_rd : out std_logic
		
		);
	end component;
	
begin

	pc_instance : pc port map (
		clk, reset, '0', (others => '0'), pc_init, pc_init_value, pc_out, pc_new_out, pc_req_rd
	);
	
	process 
	begin
		clk <= '1';
		wait for 5 ns;
		clk <= '0';
		wait for 5 ns;
	end process;
	
	process
	begin
	
		reset <= '1';
		
		pc_init_value <= (others => 'Z');
		pc_init <= '0';
		
		wait until rising_edge(clk);
		
		reset <= '0';
		
		pc_init_value <= X"0000_0100";
		pc_init <= '1';
		
		wait until rising_edge(clk);
		
		pc_init_value <= (others => 'Z');
		pc_init <= '0';
		
		wait until rising_edge(clk);
		
	wait;
	end process;
end pc_test_arch;