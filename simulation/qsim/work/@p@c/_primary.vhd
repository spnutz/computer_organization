library verilog;
use verilog.vl_types.all;
entity PC is
    port(
        clk             : in     vl_logic;
        now_instruction : in     vl_logic_vector(1 downto 0);
        next_instruction: out    vl_logic_vector(1 downto 0)
    );
end PC;
