library verilog;
use verilog.vl_types.all;
entity ssegblock is
    port(
        leds            : out    vl_logic_vector(0 to 6);
        neg             : in     vl_logic;
        bcd             : in     vl_logic_vector(3 downto 0);
        ledss           : out    vl_logic_vector(0 to 6)
    );
end ssegblock;
