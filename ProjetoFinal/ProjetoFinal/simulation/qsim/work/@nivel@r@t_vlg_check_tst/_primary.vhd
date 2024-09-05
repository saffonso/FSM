library verilog;
use verilog.vl_types.all;
entity NivelRT_vlg_check_tst is
    port(
        c               : in     vl_logic;
        DataOut         : in     vl_logic_vector(7 downto 0);
        n               : in     vl_logic;
        R1              : in     vl_logic_vector(7 downto 0);
        R2              : in     vl_logic_vector(7 downto 0);
        R3              : in     vl_logic_vector(7 downto 0);
        R10             : in     vl_logic_vector(7 downto 0);
        v               : in     vl_logic;
        z               : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end NivelRT_vlg_check_tst;
