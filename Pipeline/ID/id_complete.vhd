library ieee;

use ieee.std_logic_1164.all;

use work.instructions_types.all;

entity id_complete is

	port(
		
		clk : in std_logic;
		reset : in std_logic;
		
		stall : in std_logic;
		
		stop : in std_logic;
	
		pc_init : in std_logic;
		pc_init_value : in std_logic_vector (31 downto 0);
		
		ir : in std_logic_vector (31 downto 0);
		
		pc_in : in std_logic_vector (31 downto 0);
		
		data_in_a : in std_logic_vector (31 downto 0);
		reg_no_a : in std_logic_vector (3 downto 0);						
		reg_wr_a : in std_logic;
		
		data_in_b : in std_logic_vector (31 downto 0);
		reg_no_b : in std_logic_vector (3 downto 0);	
		reg_wr_b : in std_logic;
		
		pc_if : out std_logic_vector (31 downto 0);
		
		ir_out : out std_logic_vector (31 downto 0);
		
		instr_type : out instruction_type;
		
		data_rn : out std_logic_vector (31 downto 0);
		data_rd : out std_logic_vector (31 downto 0);
		data_rm : out std_logic_vector (31 downto 0);
		data_rs : out std_logic_vector (31 downto 0);
		
		cache_out : out std_logic_vector(31 downto 0);
		
		wait_mem : out std_logic;
		
		mem_addr : out std_logic_vector (31 downto 0);
		mem_data : inout std_logic_vector (31 downto 0);
		mem_read : out std_logic;
		mem_write : out std_logic;
		
		req : out std_logic;
		ack : in std_logic;
		
		pc_mod_out : out std_logic;
		
		check_status : out std_logic;
		
		bbl_flag : out std_logic;
		
		jmp_addr : out std_logic_vector (31 downto 0);
		
		csr_reg : in std_logic_vector (3 downto 0);
		
		stop_if : out std_logic
	
	);
	
end id_complete;

architecture id_complete_behave of id_complete is

	signal instruction : instruction_type;
	
	signal temp_data_rn : std_logic_vector (31 downto 0);
	signal temp_data_rd : std_logic_vector (31 downto 0);
	signal temp_data_rm : std_logic_vector (31 downto 0);
	signal temp_data_rs : std_logic_vector (31 downto 0);
	
	signal cache_addr : std_logic_vector (31 downto 0);
	signal cache_data : std_logic_vector (31 downto 0);
	signal cache_rd : std_logic;
	signal cache_wr : std_logic;
	
	signal pc : std_logic_vector (31 downto 0); 
	
	signal temp_reg_data : std_logic_vector (31 downto 0);
	signal temp_reg_no : std_logic_vector (3 downto 0);
	signal temp_reg_wr : std_logic; 
	
	signal link_data : std_logic_vector (31 downto 0);
	signal link_no : std_logic_vector (3 downto 0);
	signal link_wr : std_logic;
	
	signal brnch_enable : std_logic;
	
	signal pc_mod : std_logic;
	
	signal wait_mem_signal : std_logic;
	
begin

	temp_reg_data <= data_in_a or link_data;
	temp_reg_no <= reg_no_a or link_no;
	temp_reg_wr <= reg_wr_a or link_wr;

	pc_rd : entity work.check_pc port map(clk, reset, ir(31 downto 28), ir(20 downto 17), ir(28 downto 25), ir(15 downto 12), pc_mod);
	
	reg_file : entity work.register_file port map(stall, stop, clk, reset, pc_init, pc_init_value, 
		pc_in, temp_reg_no, temp_reg_data, temp_reg_wr, reg_no_b, data_in_b, reg_wr_b, instruction, pc, ir, 
		temp_data_rn, temp_data_rd, temp_data_rm, temp_data_rs);
		
	op_decoder : entity work.operation_decoder port map(ir(31 downto 29), instruction, brnch_enable, stop_if);
	
	bbl_handler : entity work.bbl_handler port map(brnch_enable, csr_reg, pc,
		ir(25 downto 0), ir(26), ir(28 downto 27), jmp_addr, link_data, link_no, link_wr, bbl_flag);
	
	load_store : entity work.check_load_store port map(wait_mem_signal, stall, stop, reset, ir(31 downto 29), ir(28), ir(24 downto 21), temp_data_rn, ir(20 downto 17), temp_data_rd, 
		data_in_a, reg_no_a, reg_wr_a, data_in_b, reg_no_b, reg_wr_b, cache_addr, cache_data, cache_rd, cache_wr);
		
	data_cache : entity work.cache port map(cache_addr, cache_data, cache_out, cache_rd, cache_wr, stop, clk, reset,
		wait_mem_signal, mem_addr, mem_data, mem_read, mem_write, req, ack, check_status);
	
	id_exe : entity work.id_exe port map(clk, reset, stall, stop, wait_mem_signal, instruction, instr_type, ir, ir_out,
		temp_data_rn, temp_data_rd, temp_data_rm, temp_data_rs, reg_no_a, data_in_a, reg_wr_a, reg_no_b, data_in_b, reg_wr_b,
		data_rn, data_rd, data_rm, data_rs);
		
	pc_if <= pc;
	pc_mod_out <= pc_mod;
	wait_mem <= wait_mem_signal;

end id_complete_behave;