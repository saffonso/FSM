library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity FSM is
    Port (
        CLK        : in  STD_LOGIC;
        RESET      : in  STD_LOGIC;      
        CONTROL    : out STD_LOGIC_VECTOR(13 downto 0);
		  v,c,z,n : IN std_logic
		  
		  
    );
end FSM;

architecture arq of FSM is
    type state_type is (S0, S1, S2, S3, S4, S5,S6);--, S6
    signal state, next_state : state_type;
	 


begin
    process(CLK, RESET)
    begin
        if RESET = '1' then
            state <= S0;
        elsif rising_edge(CLK) then
            state <= next_state;
        end if;
    end process;

    process(state,NEXT_STATE,z)
    begin
	 
	 
	------- R0 <= DATAIN
--------R3 <= constantin(1)
---------R1 <= contantin(1010)


--------REPEAT 
-- --   R2 <= R2 + R0 SOMA
 ----   R0 <= R0 - R3 ANTECESSOR
--------R1 <= R1 - R3 10 ->  0
---------UNTIL flag z = 1
------DATAOUT <= R2 

        case state is
            when S0 =>
                CONTROL <= "10000000000000"; -- R0 <= DATAIN                     
                next_state <= S1;

            when S1 =>
                CONTROL <= "10000000000011"; -- R3 <= constant(1)
                next_state <= S2;
				 when S2 =>
                CONTROL <= "10000000000001"; -- R1 <= constant(1010)
                next_state <= S3;	 

            when S3 =>
                CONTROL <= "00000010000010"; -- R2 <= R2 + R0
                next_state <= S4;
				when S4 =>
                CONTROL <= "00001011000000"; -- R0 <= RO - R3
                next_state <= S5;
               

            when S5 =>
                CONTROL <= "00001011001001"; -- R1 <= R1 - R3
					   if Z = '1' then -- Z FLAG = 1
                    next_state <= S6;
                else
                    next_state <= S3;
                end if;
              

					when S6 =>
                CONTROL <= "00011010010010"; -- DATAOUT <= R2 
                next_state <= S6;
        end case;
    end process;

end arq;