library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity iim_test is
end iim_test;

architecture iimt_arch of iim_test is
	
		signal 	stall : std_logic;
			
		signal	stop : std_logic;
			
		signal clk : std_logic;
		signal	reset : std_logic;
			
			--brnch_cond_in : in std_logic;
		signal	brnch : std_logic;
			
		signal	jmp_addr : std_logic_vector (31 downto 0);
			
		signal	pc_init : std_logic;
		signal	pc_init_value : std_logic_vector (31 downto 0);
			
		signal	pc_out : std_logic_vector (31 downto 0);
		signal pc_new_out : std_logic_vector (31 downto 0);
		
		signal ir_out :  std_logic_vector (31 downto 0);
	
	component if_mem_test is
		port(
	
			stall : in std_logic;
			
			stop : in std_logic;
			
			clk : in std_logic;
			reset : in std_logic;
			
			--brnch_cond_in : in std_logic;
			brnch : in std_logic;
			
			jmp_addr : in std_logic_vector (31 downto 0);
			
			pc_init : in std_logic;
			pc_init_value : in std_logic_vector (31 downto 0);
			
			pc_out : out std_logic_vector (31 downto 0);
			pc_new_out : out std_logic_vector (31 downto 0);
			
			ir_out : out std_logic_vector (31 downto 0)
	
	);

	end component;
	
begin

	if_test : if_mem_test port map (
		stall, stop, clk, reset, brnch, jmp_addr, pc_init, pc_init_value, pc_out, pc_new_out, ir_out	
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
--		stall <= '0';
--		stop <= '0';
--		brnch <= '0';
--		jmp_addr <= (others => '0');
--		pc_init <= '1';
--		pc_init_value <= x"0001_0000";
--		
--		wait until rising_edge(clk);
--		
--		reset <= '0';
--		pc_init <= '0';
--		
--		wait until rising_edge(clk);
		
	wait;
	end process;
end iimt_arch;
