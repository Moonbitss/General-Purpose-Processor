library verilog;
use verilog.vl_types.all;
entity ALU3block_vlg_check_tst is
    port(
        student_id      : in     vl_logic_vector(0 to 6);
        yesorno         : in     vl_logic_vector(0 to 6);
        sampler_rx      : in     vl_logic
    );
end ALU3block_vlg_check_tst;
