library verilog;
use verilog.vl_types.all;
entity controller_vlg_check_tst is
    port(
        data_wr         : in     vl_logic_vector(7 downto 0);
        opcode_check    : in     vl_logic_vector(1 downto 0);
        sampler_rx      : in     vl_logic
    );
end controller_vlg_check_tst;
