library verilog;
use verilog.vl_types.all;
entity register_file_vlg_check_tst is
    port(
        src1_out        : in     vl_logic_vector(7 downto 0);
        src2_out        : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end register_file_vlg_check_tst;
