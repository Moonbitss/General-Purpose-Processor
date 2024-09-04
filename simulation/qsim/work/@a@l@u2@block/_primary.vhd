library verilog;
use verilog.vl_types.all;
entity ALU2Block is
    port(
        R1              : out    vl_logic_vector(0 to 6);
        Clock           : in     vl_logic;
        Reset           : in     vl_logic;
        A               : in     vl_logic_vector(7 downto 0);
        B               : in     vl_logic_vector(7 downto 0);
        En              : in     vl_logic;
        data_in         : in     vl_logic;
        FSM_reset       : in     vl_logic;
        R2              : out    vl_logic_vector(0 to 6);
        SignLED         : out    vl_logic_vector(0 to 6);
        student_id      : out    vl_logic_vector(0 to 6)
    );
end ALU2Block;
