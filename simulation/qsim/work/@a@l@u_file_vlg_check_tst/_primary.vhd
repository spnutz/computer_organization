library verilog;
use verilog.vl_types.all;
entity ALU_file_vlg_check_tst is
    port(
        alu_result      : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end ALU_file_vlg_check_tst;
