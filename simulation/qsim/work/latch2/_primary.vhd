library verilog;
use verilog.vl_types.all;
entity latch2 is
    port(
        B               : in     vl_logic_vector(7 downto 0);
        Reset           : in     vl_logic;
        Clock           : in     vl_logic;
        Q               : out    vl_logic_vector(7 downto 0)
    );
end latch2;
