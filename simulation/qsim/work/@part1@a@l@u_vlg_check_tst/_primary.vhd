library verilog;
use verilog.vl_types.all;
entity Part1ALU_vlg_check_tst is
    port(
        R1              : in     vl_logic_vector(0 to 6);
        R2              : in     vl_logic_vector(0 to 6);
        Sign            : in     vl_logic_vector(0 to 6);
        student_id      : in     vl_logic_vector(6 downto 0);
        sampler_rx      : in     vl_logic
    );
end Part1ALU_vlg_check_tst;
