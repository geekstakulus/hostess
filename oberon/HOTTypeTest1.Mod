MODULE HOTTypeTest1;  (* mva *)

TYPE
  R = RECORD END;
  P = POINTER TO R;

VAR
  p: P;

PROCEDURE Test*;
  VAR
    q: P;
  BEGIN
    q := p(P);
  END Test;

BEGIN
  p := NIL;
END HOTTypeTest1.
