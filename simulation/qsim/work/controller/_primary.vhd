library verilog;
use verilog.vl_types.all;
entity controller is
    port(
        addr_in         : in     vl_logic_vector(1 downto 0);
        clk             : in     vl_logic;
        data_wr         : out    vl_logic_vector(7 downto 0);
        opcode_check    : out    vl_logic_vector(1 downto 0)
    );
end controller;
