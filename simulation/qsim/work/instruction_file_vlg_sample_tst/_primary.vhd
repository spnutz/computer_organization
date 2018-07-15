library verilog;
use verilog.vl_types.all;
entity instruction_file_vlg_sample_tst is
    port(
        pc_in           : in     vl_logic_vector(1 downto 0);
        sampler_tx      : out    vl_logic
    );
end instruction_file_vlg_sample_tst;
