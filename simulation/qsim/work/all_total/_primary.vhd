library verilog;
use verilog.vl_types.all;
entity all_total is
    port(
        alu_result      : out    vl_logic_vector(7 downto 0);
        clk             : in     vl_logic;
        op_check        : out    vl_logic_vector(1 downto 0);
        rs_out          : out    vl_logic_vector(7 downto 0);
        rt_out          : out    vl_logic_vector(7 downto 0)
    );
end all_total;
