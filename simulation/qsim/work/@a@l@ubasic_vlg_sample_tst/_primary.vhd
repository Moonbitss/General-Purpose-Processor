library verilog;
use verilog.vl_types.all;
entity ALUbasic_vlg_sample_tst is
    port(
        A               : in     vl_logic_vector(7 downto 0);
        B               : in     vl_logic_vector(7 downto 0);
        Clk             : in     vl_logic;
        OP              : in     vl_logic_vector(15 downto 0);
        student_id      : in     vl_logic_vector(3 downto 0);
        sampler_tx      : out    vl_logic
    );
end ALUbasic_vlg_sample_tst;
