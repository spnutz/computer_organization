library verilog;
use verilog.vl_types.all;
entity register_file is
    port(
        clk             : in     vl_logic;
        wr              : in     vl_logic;
        write_data      : in     vl_logic_vector(7 downto 0);
        src1_addr       : in     vl_logic_vector(1 downto 0);
        src2_addr       : in     vl_logic_vector(1 downto 0);
        dst_addr        : in     vl_logic_vector(1 downto 0);
        src1_out        : out    vl_logic_vector(7 downto 0);
        src2_out        : out    vl_logic_vector(7 downto 0)
    );
end register_file;
