LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY moore IS
PORT(
clk : IN std_logic;
data_in : IN std_logic;
reset : IN std_logic;
student_id : OUT std_logic_vector (3 DOWNTO 0);
current_state : OUT std_logic_vector (3 DOWNTO 0)
);
END ENTITY;

ARCHITECTURE fsm OF moore IS

TYPE state_type IS (s0,s1,s2,s3,s4,s5,s6,s7,s8);
SIGNAL yfsm : state_type;
SIGNAL data_out : std_logic_vector (3 DOWNTO 0);
SIGNAL current_statee : std_logic_vector (3 DOWNTO 0);

 
BEGIN
PROCESS (clk, reset)

BEGIN
IF reset = '1' THEN
yfsm <= s0;
ELSIF (clk'EVENT AND clk = '1')THEN

CASE yfsm is

WHEN s0 =>

IF data_in = '1' THEN
yfsm <= s1;
ELSE
yfsm <= s0;
END IF;

WHEN s1 =>

IF data_in = '1' THEN
yfsm <= s2;
ELSE
yfsm <= s1;
END IF;

WHEN s2 =>

IF data_in = '1' THEN
yfsm <= s3;
ELSE
yfsm <= s2;
END IF;

WHEN s3 =>

IF data_in = '1' THEN
yfsm <= s4;
ELSE
yfsm <= s3;
END IF;

WHEN s4 =>

IF data_in = '1' THEN
yfsm <= s5;
ELSE
yfsm <= s4;
END IF;

WHEN s5 =>

IF data_in = '1' THEN
yfsm <= s6;
ELSE
yfsm <= s5;
END IF;

WHEN s6 =>

IF data_in = '1' THEN
yfsm <= s7;
ELSE
yfsm <= s6;
END IF;

WHEN s7 =>

IF data_in = '1' THEN
yfsm <= s8;
ELSE
yfsm <= s7;
END IF;

WHEN s8 =>

IF data_in = '1' THEN
yfsm <= s0;
ELSE
yfsm <= s8;
END IF;	
				
END CASE;
END IF;
END PROCESS;
-----------------------------
PROCESS (yfsm, data_in)
BEGIN
CASE yfsm is

WHEN s0 =>
student_id <= "0101"; -- 5
current_state <= "0000";

WHEN s1 =>
student_id <= "0000"; -- 0
current_state <= "0001";

WHEN s2 =>
student_id <= "0001"; -- 1
current_state <= "0010";

WHEN s3 =>
student_id <= "0001"; -- 1
current_state <= "0011";

WHEN s4 =>
student_id <= "0110"; -- 6
current_state <= "0100";

WHEN s5 =>
student_id <= "0100"; -- 4
current_state <= "0101";

WHEN s6 =>
student_id <= "0111"; -- 7
current_state <= "0110";

WHEN s7 =>
student_id <= "0000"; -- 0
current_state <= "0111";

WHEN s8 =>
student_id <= "1000"; -- 8
current_state <= "1000";

END CASE;
END PROCESS;
END ARCHITECTURE;