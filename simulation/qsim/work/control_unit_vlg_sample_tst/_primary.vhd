library verilog;
use verilog.vl_types.all;
entity control_unit_vlg_sample_tst is
    port(
        instruction     : in     vl_logic_vector(1 downto 0);
        sampler_tx      : out    vl_logic
    );
end control_unit_vlg_sample_tst;
