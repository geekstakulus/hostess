MODULE HOTBuiltinINC2;  (* mva *)

PROCEDURE Test*;
  VAR
    i: INTEGER;
    j: SHORTINT;
  BEGIN
    i := 123;
    j := 123;
    INC (i, j);
    ASSERT (i = 246)
  END Test;

END HOTBuiltinINC2.
