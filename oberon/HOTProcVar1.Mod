MODULE HOTProcVar1;  (* mva *)

PROCEDURE P;
  BEGIN
  END P;

PROCEDURE Test*;
  VAR
    p0: PROCEDURE;
  BEGIN
    p0 := P;
    ASSERT (p0 = P)
  END Test;

END HOTProcVar1.
