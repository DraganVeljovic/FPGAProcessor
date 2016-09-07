library ieee;

use ieee.std_logic_1164.all;
use work.instructions_types.all;

entity cpu is

	port(
		
		clk : in std_logic;
		reset : in std_logic;
		
		pc_init : in std_logic;
		
		mem_addr : out std_logic_vector (31 downto 0);
		mem_data : inout std_logic_vector (31 downto 0);
		mem_read : out std_logic;
		mem_write : out std_logic;
		
		check_status : out std_logic
	
	);

end cpu;

architecture cpu_behave of cpu is

	signal brnch : std_logic;
	signal jmp_addr : std_logic_vector (31 downto 0);
	
	signal pc_if : std_logic_vector (31 downto 0);
	signal pc_id : std_logic_vector (31 downto 0);
	
	signal ir_out : std_logic_vector (31 downto 0);
	
	signal mem_read_if : std_logic;
	signal wait_mem_if : std_logic;
	
	signal req_if : std_logic;
	signal ack_if : std_logic;
	
	signal reg_a : std_logic_vector (31 downto 0);
	signal reg_no_a : std_logic_vector (3 downto 0);
	signal reg_wr_a : std_logic;
	
	signal reg_b : std_logic_vector (31 downto 0);
	signal reg_no_b : std_logic_vector (3 downto 0);
	signal reg_wr_b : std_logic;
	
	signal ir_out_id : std_logic_vector (31 downto 0);
	
	signal instr : instruction_type;
	
	signal data_rn : std_logic_vector (31 downto 0);
	signal data_rd : std_logic_vector (31 downto 0);
	signal data_rm : std_logic_vector (31 downto 0);
	signal data_rs : std_logic_vector (31 downto 0);
	
	signal req_id : std_logic;
	signal ack_id : std_logic;
	
	signal mem_read_id : std_logic;
	signal wait_mem_id : std_logic;
	
	signal wait_mem : std_logic;
	signal stop : std_logic;

	signal cache_data : std_logic_vector (31 downto 0);
	
	signal pc_mod : std_logic;
	
	signal brnch_id, brnch_exe : std_logic;
	signal jmp_addr_id, jmp_addr_exe : std_logic_vector (31 downto 0);
	
	signal csr_reg : std_logic_vector (3 downto 0);
	
	signal stop_if : std_logic;
 
begin

	if_stage : entity work.if_complete port map(wait_mem_id, stop, clk, reset, pc_if, ir_out, pc_id, brnch, jmp_addr,
		mem_addr, mem_data, mem_read_if, wait_mem_if, req_if, ack_if, pc_mod, stop_if);
		
	id_stage : entity work.id_complete port map(clk, reset, wait_mem, stop, pc_init, mem_data, ir_out, pc_id,
		reg_a, reg_no_a, reg_wr_a, reg_b, reg_no_b, reg_wr_b, pc_if, ir_out_id, instr, 
		data_rn, data_rd, data_rm, data_rs, cache_data, wait_mem_id, mem_addr,
		mem_data, mem_read_id, mem_write, req_id, ack_id, pc_mod, check_status, brnch_id, jmp_addr_id, csr_reg, stop_if);
		
	exe_stage : entity work.exe_complete port map(clk, reset, wait_mem, cache_data, ir_out_id, instr, data_rn,
		data_rd, data_rm, data_rs, reg_a, reg_no_a, reg_wr_a, reg_b, reg_no_b, reg_wr_b, jmp_addr_exe, brnch_exe, stop, csr_reg);
		
	arbitrary : entity work.arbiter port map(
		clk => clk,
		reset => reset,
		r(1) => req_id,
		r(0) => req_if,
		g(1) => ack_id,
		g(0) => ack_if
	);
	
	wait_mem <= wait_mem_id or wait_mem_if;
	mem_read <= mem_read_id or mem_read_if;
	
	brnch <= brnch_id or brnch_exe;
	jmp_addr <= jmp_addr_id when brnch_id = '1' else jmp_addr_exe; 
	
end cpu_behave;