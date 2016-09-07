library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.instructions_types.all;

entity register_file is
	port(
	
		stall : in std_logic;
		
		stop : in std_logic;
		
		clk : in std_logic;
		reset : in std_logic;
		
		pc_init : in std_logic;
		pc_init_value : in std_logic_vector (31 downto 0);
		
		pc_in : in std_logic_vector (31 downto 0);
		
		-- Data from EXE stage 
		reg_no_a : in std_logic_vector (3 downto 0);		
		data_in_a : in std_logic_vector (31 downto 0);	
		reg_wr_a : in std_logic;
		
		reg_no_b : in std_logic_vector (3 downto 0);
		data_in_b : in std_logic_vector (31 downto 0);
		reg_wr_b : in std_logic;
		
		instr_type : in instruction_type;
		
		pc_out : out std_logic_vector (31 downto 0);
		
		ir : in std_logic_vector (31 downto 0);
		
		data_rn : out std_logic_vector (31 downto 0);
		data_rd : out std_logic_vector (31 downto 0);
		data_rm : out std_logic_vector (31 downto 0);
		data_rs : out std_logic_vector (31 downto 0)
		
	);
end register_file;

architecture register_file_behave of register_file is
	type register_memory is array (15 downto 0) of std_logic_vector (31 downto 0);

	signal registers : register_memory;
	
	signal addr_rn : std_logic_vector (3 downto 0);
	signal addr_rd : std_logic_vector (3 downto 0);
	signal addr_rm : std_logic_vector (3 downto 0);
	signal addr_rs : std_logic_vector (3 downto 0);

begin

	process (clk, reset, registers, addr_rd, addr_rm, addr_rn, addr_rs, pc_in, ir, instr_type, pc_init, 
		pc_init_value, reg_no_a, data_in_a, reg_wr_a, reg_no_b, data_in_b, reg_wr_b) is
	begin
	
		if (reset = '1') then 
			for i in 0 to 14 loop
				registers(i) <= (others => '0');
			end loop;	
		
			if (pc_init = '1') then
				registers(15) <= pc_init_value;
			else 
				registers(15) <= (others => '0');
			end if;
	
		elsif (rising_edge(clk)) then
		
				if (reg_wr_a = '1') then
					registers(to_integer(unsigned(reg_no_a))) <= data_in_a;					
				end if;
				
				if (reg_wr_b = '1') then
					registers(to_integer(unsigned(reg_no_b))) <= data_in_b;
				end if;
				
				registers(15) <= pc_in;
			
			end if;
			
		pc_out <= registers(15);
			
		data_rn <= (others => '0');
		data_rd <= (others => '0');
		data_rm <= (others => '0');
		data_rs <= (others => '0');
		
		addr_rn <= (others => '0');
		addr_rd <= (others => '0');
		addr_rm <= (others => '0');
		addr_rs <= (others => '0');
		
		case instr_type is
		
			when DP_R =>
				addr_rn <= ir(24 downto 21);
				addr_rd <= ir(20 downto 17);
				addr_rm <= ir(15 downto 12);
				addr_rs <= ir(11 downto 8);
				
			when DP_I =>
				addr_rn <= ir(24 downto 21);
				addr_rd <= ir(20 downto 17);
				addr_rm <= (others => '0');
				addr_rs <= (others => '0');
				
			when LS =>
				addr_rn <= ir(24 downto 21);
				addr_rd <= ir(20 downto 17);
				addr_rm <= (others => '0');
				addr_rs <= (others => '0');
							
			when BBL | STP =>
				addr_rn <= (others => '0');
				addr_rd <= (others => '0');
				addr_rm <= (others => '0');
				addr_rs <= (others => '0');
				
			when others =>
				addr_rn <= (others => '0');
				addr_rd <= (others => '0');
				addr_rm <= (others => '0');
				addr_rs <= (others => '0');
				
		end case;
		
		data_rn <= registers(to_integer(unsigned(addr_rn)));
		data_rd <= registers(to_integer(unsigned(addr_rd)));
		data_rm <= registers(to_integer(unsigned(addr_rm)));
		data_rs <= registers(to_integer(unsigned(addr_rs)));
		
	end process;
end register_file_behave;