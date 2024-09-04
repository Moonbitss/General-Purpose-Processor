library verilog;
use verilog.vl_types.all;
entity Part1ALU is
    port(
        R1              : out    vl_logic_vector(0 to 6);
        clk             : in     vl_logic;
        ResetA          : in     vl_logic;
        A               : in     vl_logic_vector(7 downto 0);
        ResetB          : in     vl_logic;
        B               : in     vl_logic_vector(7 downto 0);
        En              : in     vl_logic;
        data_in         : in     vl_logic;
        Reset           : in     vl_logic;
        R2              : out    vl_logic_vector(0 to 6);
        Sign            : out    vl_logic_vector(0 to 6);
        student_id      : out    vl_logic_vector(6 downto 0)
    );
end Part1ALU;
