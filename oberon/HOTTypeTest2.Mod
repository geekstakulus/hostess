MODULE HOTTypeTest2;  (* mva *)

TYPE
  R = RECORD END;
  P = POINTER TO R;

VAR
  q: P;

PROCEDURE Test*;
  VAR
    p: P;
  BEGIN
    p := NIL;
    p(P) := q;
  END Test;

BEGIN
  NEW (q);
END HOTTypeTest2.
