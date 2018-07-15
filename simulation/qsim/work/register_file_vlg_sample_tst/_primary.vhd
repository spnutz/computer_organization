library verilog;
use verilog.vl_types.all;
entity register_file_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        dst_addr        : in     vl_logic_vector(1 downto 0);
        src1_addr       : in     vl_logic_vector(1 downto 0);
        src2_addr       : in     vl_logic_vector(1 downto 0);
        wr              : in     vl_logic;
        write_data      : in     vl_logic_vector(7 downto 0);
        sampler_tx      : out    vl_logic
    );
end register_file_vlg_sample_tst;
