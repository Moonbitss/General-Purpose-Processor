LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.NUMERIC_STD.ALL;
ENTITY ALU2 IS
PORT (Clock : IN STD_LOGIC ;
		A ,B : IN UNSIGNED(7 DOWNTO 0);
		Student_id: IN UNSIGNED(3 DOWNTO 0);
		OP: IN UNSIGNED(15 DOWNTO 0);
		Neg: OUT STD_LOGIC;
		R1: OUT UNSIGNED(3 DOWNTO 0);--first 4bits of 8bits Result
		R2: OUT UNSIGNED(3 DOWNTO 0));--later 4bits of 8bits Result
END ALU2;

ARCHITECTURE Behavior OF ALU2 IS
SIGNAL Reg1, Reg2, Result: UNSIGNED(7 DOWNTO 0) := (OTHERS => '0');
SIGNAL Reg4: UNSIGNED(0 TO 7);

BEGIN
Reg1 <= A;
Reg2 <= B;
	
PROCESS (Clock,OP,A,B)
BEGIN
	IF (rising_edge(Clock)) THEN
		CASE OP IS
			WHEN "0000000000000001" => --funtion 1 increment A by 2
				neg <= '0';
				Result <= (Reg1 + "00000010");
			WHEN "0000000000000010"  => --function 2 Shift B to the right by 2 bits
				neg <= '0';
				Result(0) <= Reg2(7);
				Result(1) <= Reg2(6);
				Result(2) <= Reg2(0);
				Result(3) <= Reg2(1);
				Result(4) <= Reg2(2);
				Result(5) <= Reg2(3);
				Result(6) <= Reg2(4);
				Result(7) <= Reg2(5);
			WHEN "0000000000000100" =>--Function 3 Shift A to the right by 4 bits
			   neg <= '0';
				Result(0) <= Reg1(4);
				Result(1) <= Reg1(5);
				Result(2) <= Reg1(6);
				Result(3) <= Reg1(7);
				Result(4) <= Reg1(0);
				Result(5) <= Reg1(1);
				Result(6) <= Reg1(2);
				Result(7) <= Reg1(3);
			WHEN "0000000000001000" =>--Function 4 Find the smaller value of A and B and produce the results 
				neg <= '0';
				if (Reg1 < Reg2) then
					Result <= Reg1;
				else
					Result <= Reg2;
				end if;
			WHEN "0000000000010000" =>--Function 5 Rotate A to the right by 2 bits
            neg <= '0';
				Result <= (Reg1 ror 2);
			WHEN "0000000000100000" =>--Function 6 Invert the bit-significance order of B
				neg <= '0';
				Result <= Reg2(0)&Reg2(1)&Reg2(2)&Reg2(3)&Reg2(4)&Reg2(5)&Reg2(6)&Reg2(7);
			WHEN "0000000001000000" =>--Function 7 XORing A and B
				neg <= '0';
				Result <= (Reg1 XOR Reg2);
			WHEN "0000000010000000" =>--Function 8 Produce the summation of A and B, then decrease it by 4
				neg <= '0';
				Result <= ((Reg1 + Reg2)-"00000100");
			WHEN "0000000100000000" =>--Function 9 XNOR
				neg <= '0';
				Result <= ("11111111");
			WHEN OTHERS =>-- Don't care
		END CASE;
	END IF;
END PROCESS;
	
R1 <= Result(3 DOWNTO 0);
R2 <= Result(7 DOWNTO 4);

END Behavior;