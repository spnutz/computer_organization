library verilog;
use verilog.vl_types.all;
entity ALU_file is
    port(
        a               : in     vl_logic_vector(7 downto 0);
        b               : in     vl_logic_vector(7 downto 0);
        op              : in     vl_logic_vector(1 downto 0);
        alu_result      : out    vl_logic_vector(7 downto 0)
    );
end ALU_file;
