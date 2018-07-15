library verilog;
use verilog.vl_types.all;
entity control_unit is
    port(
        instruction     : in     vl_logic_vector(1 downto 0);
        reg_wr          : out    vl_logic;
        alu_op          : out    vl_logic_vector(1 downto 0)
    );
end control_unit;
