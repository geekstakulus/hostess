MODULE HOTDynArr1;  (* mva *)

TYPE
  A = POINTER TO ARRAY OF LONGINT;
  
VAR
  a: A;

PROCEDURE P1 (a: ARRAY OF LONGINT);
  BEGIN
    ASSERT (LEN(a) = 0)
  END P1;

PROCEDURE P2 (VAR a: ARRAY OF LONGINT);
  BEGIN
    ASSERT (LEN(a) = 0)
  END P2;

PROCEDURE Test*;
  BEGIN
    NEW (a, 0);
    ASSERT (LEN(a^) = 0);
    P1 (a^);
    P2 (a^)
  END Test;

END HOTDynArr1.
