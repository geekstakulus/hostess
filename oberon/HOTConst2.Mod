MODULE HOTConst2;  (* mva *)

PROCEDURE Test*;
  VAR
    int: ARRAY 170 OF INTEGER;
    len: INTEGER;
  BEGIN
    (* these three notations are equivalent: *)
    len:=0; WHILE len < LEN(int) DO INC(len) END;
    len:=0; WHILE len <= SHORT(LEN(int)-1) DO INC(len) END;
    len:=0; WHILE len <= SHORT(LEN(int))-1 DO INC(len) END
  END Test;

END HOTConst2.
