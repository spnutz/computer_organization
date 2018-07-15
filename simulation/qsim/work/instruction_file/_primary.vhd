library verilog;
use verilog.vl_types.all;
entity instruction_file is
    port(
        pc_in           : in     vl_logic_vector(1 downto 0);
        Opcode          : out    vl_logic_vector(1 downto 0);
        rs              : out    vl_logic_vector(1 downto 0);
        rt              : out    vl_logic_vector(1 downto 0);
        rd              : out    vl_logic_vector(1 downto 0);
        Opcode_check    : out    vl_logic_vector(1 downto 0)
    );
end instruction_file;
