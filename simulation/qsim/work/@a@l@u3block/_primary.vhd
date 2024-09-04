library verilog;
use verilog.vl_types.all;
entity ALU3block is
    port(
        student_id      : out    vl_logic_vector(0 to 6);
        clk             : in     vl_logic;
        data_in         : in     vl_logic;
        reset           : in     vl_logic;
        yesorno         : out    vl_logic_vector(0 to 6);
        ResetA          : in     vl_logic;
        A               : in     vl_logic_vector(7 downto 0);
        ResetB          : in     vl_logic;
        B               : in     vl_logic_vector(7 downto 0);
        En              : in     vl_logic
    );
end ALU3block;
