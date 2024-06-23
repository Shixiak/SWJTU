library verilog;
use verilog.vl_types.all;
entity Computer_vlg_check_tst is
    port(
        M_address       : in     vl_logic_vector(11 downto 0);
        M_data_out      : in     vl_logic_vector(7 downto 0);
        overflow        : in     vl_logic;
        q               : in     vl_logic_vector(7 downto 0);
        status          : in     vl_logic_vector(2 downto 0);
        write_read      : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end Computer_vlg_check_tst;
