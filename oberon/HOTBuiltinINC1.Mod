MODULE HOTBuiltinINC1;  (* mva *)

PROCEDURE Test*;
  VAR
    i: INTEGER;
  BEGIN
    i := 123;
    INC (i, 123);
    ASSERT (i = 246)
  END Test;

END HOTBuiltinINC1.
