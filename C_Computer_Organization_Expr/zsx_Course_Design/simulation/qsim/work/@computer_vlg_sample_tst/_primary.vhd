library verilog;
use verilog.vl_types.all;
entity Computer_vlg_sample_tst is
    port(
        clock           : in     vl_logic;
        reset           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Computer_vlg_sample_tst;
