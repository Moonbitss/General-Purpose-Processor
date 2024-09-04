library verilog;
use verilog.vl_types.all;
entity latch2_vlg_check_tst is
    port(
        Q               : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end latch2_vlg_check_tst;
