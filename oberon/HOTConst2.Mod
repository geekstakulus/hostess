MODULE HOTConst2;  (* mva *)

PROCEDURE Test*;
  VAR
    int: ARRAY 170 OF INTEGER;
    len, temp2: INTEGER;
    temp1: LONGINT;
  BEGIN
    (* these three notations are equivalent (this were FOR loops, but they
       where converted to WHILE to remain compatible with O1): *)
    len:=0; temp1 := LEN(int)-1; WHILE len <= temp1 DO INC(len) END;
    len:=0; temp2 := SHORT(LEN(int)-1); WHILE len <= temp2 DO INC(len) END;
    len:=0; temp2 := SHORT(LEN(int))-1; WHILE len <= temp2 DO INC(len) END
  END Test;

END HOTConst2.
