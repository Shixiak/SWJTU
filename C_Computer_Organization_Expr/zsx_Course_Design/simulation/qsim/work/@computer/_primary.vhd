library verilog;
use verilog.vl_types.all;
entity Computer is
    port(
        write_read      : out    vl_logic;
        reset           : in     vl_logic;
        clock           : in     vl_logic;
        M_address       : out    vl_logic_vector(11 downto 0);
        overflow        : out    vl_logic;
        M_data_out      : out    vl_logic_vector(7 downto 0);
        q               : out    vl_logic_vector(7 downto 0);
        status          : out    vl_logic_vector(2 downto 0)
    );
end Computer;
