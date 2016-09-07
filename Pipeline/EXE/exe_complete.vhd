library ieee;

use ieee.std_logic_1164.all;

use work.instructions_types.all;

entity exe_complete is

	port(
	
		clk : in std_logic;
		reset : in std_logic;
		
		stall : in std_logic;

		cache_data : in std_logic_vector (31 downto 0);
	
		ir_in : in std_logic_vector (31 downto 0);
		
		instr_type : in instruction_type;
	
		rn_in : in std_logic_vector (31 downto 0);
		rd_in : in std_logic_vector (31 downto 0);
		rm_in : in std_logic_vector (31 downto 0);
		rs_in : in std_logic_vector (31 downto 0);
		
		reg_a : out std_logic_vector (31 downto 0);
		reg_no_a : out std_logic_vector (3 downto 0);
		reg_wr_a : out std_logic;
		
		reg_b : out std_logic_vector (31 downto 0);
		reg_no_b : out std_logic_vector (3 downto 0);
		reg_wr_b : out std_logic;
		
		jmp_addr_out : out std_logic_vector (31 downto 0);
		
		bbl_flag_out : out std_logic;
	
		stop_out : out std_logic;
		
		csr_reg_out : out std_logic_vector (3 downto 0)
		
	);

end;

architecture exe_complete_behave of exe_complete is

	signal stop : std_logic;

	signal f : std_logic;
	signal shift_type : std_logic_vector (1 downto 0);
	signal dp_r : std_logic;
	signal s : std_logic;
	signal imm : std_logic_vector (15 downto 0);
	signal opcode : std_logic_vector (3 downto 0);
	signal rm_addr : std_logic_vector (3 downto 0);
	signal rd_addr : std_logic_vector (3 downto 0);
	signal l : std_logic;
	
	signal rn, rd, rm, rs : std_logic_vector (31 downto 0);

	signal shifter_out : std_logic_vector (31 downto 0);
	signal imm_handler_out : std_logic_vector (31 downto 0);
	
	signal csr_reg : std_logic_vector (31 downto 0);
	
	signal n_bit : std_logic;
	signal z_bit : std_logic;
	signal c_bit : std_logic;
	signal v_bit : std_logic;
	
	signal alu_out : std_logic_vector (31 downto 0);
	
	signal swap : std_logic;
	signal load_store : std_logic;
	
	-- SWAP_MEM_RESOLVER
	signal reg_a0 : std_logic_vector (31 downto 0);
	signal reg_no_a0 : std_logic_vector (3 downto 0);
	signal reg_wr_a0 : std_logic;
		
	signal reg_b0 : std_logic_vector (31 downto 0);
	signal reg_no_b0 : std_logic_vector (3 downto 0);
	signal reg_wr_b0 : std_logic;
		
	-- LOAD_STORE
	signal reg_a1 : std_logic_vector (31 downto 0);
	signal reg_no_a1 : std_logic_vector (3 downto 0);
	signal reg_wr_a1 : std_logic;
	
	signal n_bit_ls, z_bit_ls : std_logic;
	
	signal stop_gen_out : std_logic;

begin
	
	stop_gen : entity work.stop_generator port map (clk, reset, stop, stop_gen_out);

	exe_decoder : entity work.exe_block_decoder port map(reg_a1, reg_no_a1, reg_wr_a1, instr_type, ir_in, rn_in, rd_in, rm_in, rs_in,
		rn, rd, rm, rs, f, shift_type, dp_r, s, imm, opcode, rm_addr, rd_addr, l, swap, load_store, stop);
	
	shifter : entity work.shifter port map(rn, rs, f, shift_type, dp_r, shifter_out);
	
	imm_handler : entity work.imm_handler port map(rm, imm, s, dp_r, imm_handler_out);
	
	csr : entity work.csr port map(swap, load_store, stall, stop, clk, reset, n_bit, z_bit, n_bit_ls, z_bit_ls, c_bit, v_bit,
		csr_reg, csr_reg_out);
	
	alu : entity work.alu port map(shifter_out, imm_handler_out, s, csr_reg(29), csr_reg(28), opcode, 
		alu_out, n_bit, z_bit, c_bit, v_bit);
					
	resolver : entity work.swap_resolver port map(swap, alu_out, rd, opcode, rm_addr, rd_addr, dp_r, 
		reg_a0, reg_no_a0, reg_wr_a0, reg_b0, reg_no_b0, reg_wr_b0); 	
				
	load_store_u : entity work.load_store_unit port map(load_store, l, cache_data, s, rd, rd_addr, reg_a1, reg_no_a1, reg_wr_a1,
		n_bit_ls, z_bit_ls);	
		
	reg_file_forward : entity work.reg_file_forwarder port map(stall, reset, stop, reg_a0, reg_no_a0, reg_wr_a0, reg_b0, reg_no_b0, reg_wr_b0,
		reg_a1, reg_no_a1, reg_wr_a1, 
		swap, load_store, reg_a, reg_no_a, reg_wr_a, reg_b, reg_no_b, reg_wr_b, jmp_addr_out, bbl_flag_out);	
	
	stop_out <= stop_gen_out or stop;
	
end exe_complete_behave;