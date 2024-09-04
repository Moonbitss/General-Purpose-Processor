library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;
entity ALU3 is
port(Clock : in std_logic; 
   A,B : in unsigned(7 downto 0); 
   OP : in unsigned(0 to 15); 
	student_id : in unsigned(3 DOWNTO 0); 
   Neg: out std_logic; 
   R1 : out unsigned(3 downto 0); 
   R2 : out unsigned(3 downto 0)); 
end ALU3;
architecture calculation of Alu3 is
signal Reg1,Result : unsigned(7 downto 0):=(others => '0');
SIGNAL Reg4,Reg5 : UNSIGNED (0 to 3);
begin
    Reg1 <= A;
    Reg4 <= B(7 DOWNTO 4); -- Higher digit of B
    Reg5 <= B(3 DOWNTO 0); -- Lower digit of B

process(Clock, OP)
begin
	
	
IF(rising_edge(Clock)) THEN
CASE OP IS

WHEN "1000000000000000" => 

  IF (Reg4 < student_id OR Reg5 < student_id) THEN
  Result <= "00000001"; -- Y
  ELSE 
  Result <= "00000000"; -- N
  END IF;

WHEN "0100000000000000" =>

 IF (Reg4 < student_id OR Reg5 < student_id) THEN
  Result <= "00000001"; -- Y
  ELSE 
  Result <= "00000000"; -- N
  END IF;


WHEN "0010000000000000" => 

 IF (Reg4 < student_id OR Reg5 < student_id) THEN
  Result <= "00000001"; -- Y
  ELSE 
  Result <= "00000000"; -- N
  END IF;

WHEN "0001000000000000" => 

 IF (Reg4 < student_id OR Reg5 < student_id) THEN
  Result <= "00000001"; -- Y
  ELSE 
  Result <= "00000000"; -- N
  END IF;

WHEN "0000100000000000" => 

 IF (Reg4 < student_id OR Reg5 < student_id) THEN
  Result <= "00000001"; -- Y
  ELSE 
  Result <= "00000000"; -- N
  END IF;


WHEN "0000010000000000" => 

 IF (Reg4 < student_id OR Reg5 < student_id) THEN
  Result <= "00000001"; -- Y
  ELSE 
  Result <= "00000000"; -- N
  END IF;


WHEN "0000001000000000" => 

 IF (Reg4 < student_id OR Reg5 < student_id) THEN
  Result <= "00000001"; -- Y
  ELSE 
  Result <= "00000000"; -- N
  END IF;

WHEN "0000000100000000" => 

 IF (Reg4 < student_id OR Reg5 < student_id) THEN
  Result <= "00000001"; -- Y
  ELSE 
  Result <= "00000000"; -- N
  END IF;

WHEN OTHERS =>
Result <="--------"; --n


END CASE;
END IF;
END PROCESS;

R1 <= Result(3 DOWNTO 0);
END calculation;