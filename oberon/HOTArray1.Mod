MODULE HOTArray1;  (* mva *)

TYPE
  A = ARRAY 0 OF LONGINT;

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
    ASSERT (LEN(a) = 0);
    P1 (a);
    P2 (a)
  END Test;

END HOTArray1.
