-- instruction decoding state machine

entity instruction_decoder is
	port (
		current_instruction	:	in std_logic_vector(15 downto 0)
		);
end instruction_decoder;

architecture impl of instruction_decoder is

begin

	process(all) begin
		

end impl;