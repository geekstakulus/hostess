MODULE HOTConst2;  (* mva *)

PROCEDURE Test*;
  VAR
    int: ARRAY 170 OF INTEGER;
    len: INTEGER;
  BEGIN
    (* these three notations are equivalent: *)
    FOR len:=0 TO LEN(int)-1 DO END;
    FOR len:=0 TO SHORT(LEN(int)-1) DO END;
    FOR len:=0 TO SHORT(LEN(int))-1 DO END
  END Test;

END HOTConst2.
