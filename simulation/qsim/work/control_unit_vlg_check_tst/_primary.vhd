library verilog;
use verilog.vl_types.all;
entity control_unit_vlg_check_tst is
    port(
        alu_op          : in     vl_logic_vector(1 downto 0);
        reg_wr          : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end control_unit_vlg_check_tst;
