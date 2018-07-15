library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity instruction_file is
port(
  pc_in : in std_logic_vector(1 downto 0);
  Opcode : out std_logic_vector(1 downto 0);
  rs : out std_logic_vector(1 downto 0);
  rt : out std_logic_vector(1 downto 0);
  rd : out std_logic_vector(1 downto 0)
  --Opcode_check : out std_logic_vector(1 downto 0)
);
end instruction_file;
architecture Behavioral of instruction_file is
--signal pc_addr : std_logic_vector(1 downto 0);
--signal op : std_logic_vector(1 downto 0);
type instruc_type is array (0 to 3) of std_logic_vector(7 downto 0);
constant data_sel : instruc_type:=(
  "00000110", -- add $s0 $s1 $s2 
  "01100011", -- sub $s0 $s1 $s2 
  "10000110", -- and $s0 $s1 $s2
  "11100011"  -- or  $s0 $s1 $s2
  );
begin
  Opcode <= data_sel(to_integer(unsigned(pc_in)))(7 downto 6);
  rs <= data_sel(to_integer(unsigned(pc_in)))(5 downto 4);
  rt <= data_sel(to_integer(unsigned(pc_in)))(3 downto 2);
  rd <= data_sel(to_integer(unsigned(pc_in)))(1 downto 0);
  --Opcode <= op;
  --Opcode_check <= op;
end Behavioral;
  


