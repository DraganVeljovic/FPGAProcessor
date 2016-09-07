library ieee;

use ieee.std_logic_1164.all;

entity stall_unit is

	port(
	
		clk : in std_logic;
		reset : in std_logic;
		
		stall_in : in std_logic;
		
		stall_out : std_logic
	
	);

end stall_unit;

architecture stall_unit_behave of stall_unit is

	signal stall_out_next : std_logic;

begin 

	process (clk, reset) is
	begin
	
		if (reset = '1') then
		
			stall_out <= '0';
			stall_out_next <= '0';
		
		elsif (rising_edge(clk)) then
		
			stall_out <= stall_out_next;
		
		end if;
	
	end process;

	process (stall_in) is
	begin
	
		if (stall_in = '1') then
		
			
	
	end process;
	
end stall_unit_behave;