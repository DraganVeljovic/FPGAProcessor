library ieee;

use ieee.std_logic_1164.all;

entity stop_generator is
port(

	clk : in std_logic;
	reset : in std_logic;
	
	stop : in std_logic;
	
	steady_stop : out std_logic

);
end stop_generator;

architecture stop_generator_behave of stop_generator is

	signal steady_stop_reg, steady_stop_next : std_logic;

begin
	
	process (clk, reset) is
	begin	
		
		if (reset = '1') then
		
			steady_stop_reg <= '0';
			
		elsif (rising_edge(clk)) then 
		
				steady_stop_reg <= steady_stop_next;
		
			end if;
	
	end process;
	
	process (stop, steady_stop_reg) is
	begin
	
		steady_stop_next <= steady_stop_reg;
		
		if (stop = '1') then
		
			steady_stop_next<= '1';
		
		end if;
	
	end process; 
	
	steady_stop <= steady_stop_reg;

end stop_generator_behave;