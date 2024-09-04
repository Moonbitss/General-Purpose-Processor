library verilog;
use verilog.vl_types.all;
entity ALU2Block_vlg_check_tst is
    port(
        R1              : in     vl_logic_vector(0 to 6);
        R2              : in     vl_logic_vector(0 to 6);
        SignLED         : in     vl_logic_vector(0 to 6);
        student_id      : in     vl_logic_vector(0 to 6);
        sampler_rx      : in     vl_logic
    );
end ALU2Block_vlg_check_tst;
