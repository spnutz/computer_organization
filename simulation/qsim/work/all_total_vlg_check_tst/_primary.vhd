library verilog;
use verilog.vl_types.all;
entity all_total_vlg_check_tst is
    port(
        alu_result      : in     vl_logic_vector(7 downto 0);
        op_check        : in     vl_logic_vector(1 downto 0);
        rs_out          : in     vl_logic_vector(7 downto 0);
        rt_out          : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end all_total_vlg_check_tst;
