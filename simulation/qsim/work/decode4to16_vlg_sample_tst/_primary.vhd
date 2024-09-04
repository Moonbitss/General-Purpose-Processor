library verilog;
use verilog.vl_types.all;
entity decode4to16_vlg_sample_tst is
    port(
        En1             : in     vl_logic;
        w1              : in     vl_logic_vector(1 downto 0);
        w2              : in     vl_logic;
        w3              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end decode4to16_vlg_sample_tst;
