library verilog;
use verilog.vl_types.all;
entity instruction_file_vlg_check_tst is
    port(
        Opcode          : in     vl_logic_vector(1 downto 0);
        Opcode_check    : in     vl_logic_vector(1 downto 0);
        rd              : in     vl_logic_vector(1 downto 0);
        rs              : in     vl_logic_vector(1 downto 0);
        rt              : in     vl_logic_vector(1 downto 0);
        sampler_rx      : in     vl_logic
    );
end instruction_file_vlg_check_tst;
