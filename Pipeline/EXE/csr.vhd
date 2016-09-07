library ieee;

use ieee.std_logic_1164.all;

entity csr is 

	port(
		
		swap : in std_logic;
		load_store : in std_logic;
	
		stall : in std_logic;
		
		stop : in std_logic;
	
		clk : in std_logic;
		reset : in std_logic;
		
		n_alu : in std_logic;
		z_alu : in std_logic;
		
		n_ls : in std_logic;
		z_ls : in std_logic;
		
		c : in std_logic;
		v : in std_logic;
		
		csr_out : out std_logic_vector (31 downto 0);
		csr_next_out : out std_logic_vector (3 downto 0)
		
	);

end;

architecture csr_behave of csr is
	
	signal csr_reg, csr_next : std_logic_vector (31 downto 0);

begin

	process (clk, reset) is 
	begin
	
		if (reset = '1') then
			csr_reg <= X"00000000";
		elsif (rising_edge(clk)) then
				csr_reg <= csr_next;
			end if;
	
	end process;

	process (stall, stop, reset, swap, load_store, n_alu, n_ls, z_alu, z_ls, c, v, csr_reg) is
		variable input : std_logic_vector (31 downto 0);
	begin
	
		input := csr_reg;
		
		if (swap = '1') then
			input(31) := n_alu;
			input(30) := z_alu;
		elsif (load_store = '1') then
				input(31) := n_ls;
				input(30) := z_ls;
			end if;
			
		input(29) := c;
		input(28) := v;
		
		if ((swap = '1' or load_store = '1') and stall = '0' and stop = '0' and reset = '0') then
			csr_next <= input;
			csr_next_out <= input(31 downto 28);
		else 
			csr_next <= csr_reg;
			csr_next_out <= csr_reg(31 downto 28);
		end if;
			
		csr_out <= csr_reg;
	
	end process;
end;