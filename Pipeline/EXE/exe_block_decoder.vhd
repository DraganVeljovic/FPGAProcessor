library ieee;

use ieee.std_logic_1164.all;

use work.instructions_types.all;

entity exe_block_decoder is

 port(
 
	-- Currently loaded
	reg_data : in std_logic_vector (31 downto 0);
	reg_no : in std_logic_vector (3 downto 0);
	reg_wr : in std_logic;
 
	instr_type : in instruction_type;
	
	ir_in : in std_logic_vector (31 downto 0);
	
	rn_in, rd_in, rm_in, rs_in : in std_logic_vector (31 downto 0);
	
	rn_out, rd_out, rm_out, rs_out : out std_logic_vector (31 downto 0);
	
	-- shifter rn; rs; f; shift_type; DR_R/ !DP_I;
	f : out std_logic;
	shift_type : out std_logic_vector (1 downto 0);
	dp_r_out : out std_logic;
	
	-- imm_handler rm; imm; s; dp_r;
	s : out std_logic;
	imm : out std_logic_vector (15 downto 0);
		
	-- swap_resolver rd; opcode; rm_addr; rd_addr; dp_r;
	opcode : out std_logic_vector (3 downto 0);
	rm_addr : out std_logic_vector (3 downto 0);
	rd_addr : out std_logic_vector (3 downto 0);
	
	-- load_store
	l : out std_logic;
	
	-- reg_file_forwarder - enable bits
	swap : out std_logic;
	load_store : out std_logic;
	
	stop : out std_logic
	
 );

end exe_block_decoder;

architecture exe_block_decoder_behave of exe_block_decoder is
begin

	process (instr_type, rn_in, rd_in, rm_in, rs_in, ir_in, reg_no, reg_wr, reg_data) is
	begin
	
		if (ir_in(24 downto 21) = reg_no and reg_wr = '1') then
			rn_out <= reg_data;
		else 
			rn_out <= rn_in;	
		end if;
			
		if (ir_in(15 downto 12) = reg_no and reg_wr = '1') then
			rm_out <= reg_data;
		else
			rm_out <= rm_in;	
		end if;
		
		if (ir_in(11 downto 8) = reg_no and reg_wr = '1') then
			rs_out <= reg_data;
		else
			rs_out <= rs_in;	
		end if;
		
		rd_out <= rd_in;
		
		f <= ir_in(7);		
		shift_type <= ir_in(6 downto 5);
		
		s <= ir_in(16);
		imm <= ir_in(15 downto 0);
		
		opcode <= ir_in(28 downto 25);
		rm_addr <= ir_in(15 downto 12);
		rd_addr <= ir_in(20 downto 17);
		
		l <= '0';
				
		-- control signals
		dp_r_out <= '0';
		
		swap <= '0';
		load_store <= '0';
		
		stop <= '0';
		
		if (instr_type = DP_R) then
			dp_r_out <= '1';
			swap <= '1';
		elsif (instr_type = DP_I) then
				dp_r_out <= '0';
				swap <= '1';
			elsif (instr_type = LS) then
					l <= ir_in(28);
					load_store <= '1';
				elsif (instr_type = STP) then
						stop <= '1';
					end if;
					
	end process;
end exe_block_decoder_behave;