library verilog;
use verilog.vl_types.all;
entity NivelRT_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        DataIn          : in     vl_logic_vector(7 downto 0);
        reset           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end NivelRT_vlg_sample_tst;
