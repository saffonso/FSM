Library IEEE;
USE IEEE.std_logic_1164.all;

entity NivelRT is
Port(DataIn : in std_logic_vector(7 downto 0);
     clk, reset : in std_logic;
	  v,c,z,n : out std_logic;
     DataOut,R10,R1,R2,R3 : out std_logic_vector(7 downto 0));
end NivelRT;

architecture arq of NivelRT is 

component Datapath is
Port(DataIn : in std_logic_vector(7 downto 0);
     clock, reset : in std_logic;
     PC : in std_logic_vector(13 downto 0);
	  v,c,z,n : out std_logic;
     DataOut,R10,R1,R2,R3 : out std_logic_vector(7 downto 0)
	  );
end component;

component FSM is
    Port (
        CLK        : in  STD_LOGIC;
        RESET      : in  STD_LOGIC;      
        CONTROL    : out STD_LOGIC_VECTOR(13 downto 0);
		  v,c,z,n : IN std_logic
    );
end component;

signal PC1 : std_logic_vector(13 downto 0);
signal v0,c0,z0,n0 :  std_logic;
begin 

FSM1: FSM port map (CONTROL => PC1,
						  CLK => clk,
						  RESET => reset,
						  v => v0,
						  c => c0,
						   z => z0,
							n => n0);

DATAPATH0: DATAPATH port map (datain => datain,
										 clock => clk,
										 reset => reset,
										 v => v0,
										 c => c0,
										 z => z0,
										 n => n0,
										 r10=>r10,
										 r1=>r1,
										 r2=>r2,
										 r3=>r3,
										 DataOut => DataOut,
										 PC => PC1);
v <= v0;
c <= c0;
z <= z0;
n <= n0;
end arq;