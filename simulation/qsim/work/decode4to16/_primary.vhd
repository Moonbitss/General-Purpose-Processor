library verilog;
use verilog.vl_types.all;
entity decode4to16 is
    port(
        y               : out    vl_logic_vector(0 to 15);
        w2              : in     vl_logic;
        w3              : in     vl_logic;
        En1             : in     vl_logic;
        w1              : in     vl_logic_vector(1 downto 0)
    );
end decode4to16;
