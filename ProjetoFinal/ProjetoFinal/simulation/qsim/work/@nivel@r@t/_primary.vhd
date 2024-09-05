library verilog;
use verilog.vl_types.all;
entity NivelRT is
    port(
        DataIn          : in     vl_logic_vector(7 downto 0);
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        v               : out    vl_logic;
        c               : out    vl_logic;
        z               : out    vl_logic;
        n               : out    vl_logic;
        DataOut         : out    vl_logic_vector(7 downto 0);
        R10             : out    vl_logic_vector(7 downto 0);
        R1              : out    vl_logic_vector(7 downto 0);
        R2              : out    vl_logic_vector(7 downto 0);
        R3              : out    vl_logic_vector(7 downto 0)
    );
end NivelRT;
