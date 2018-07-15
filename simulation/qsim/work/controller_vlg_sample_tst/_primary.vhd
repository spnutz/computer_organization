library verilog;
use verilog.vl_types.all;
entity controller_vlg_sample_tst is
    port(
        addr_in         : in     vl_logic_vector(1 downto 0);
        clk             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end controller_vlg_sample_tst;
