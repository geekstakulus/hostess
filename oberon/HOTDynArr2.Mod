MODULE HOTDynArr2;  (* mva *)

TYPE
  A = POINTER TO ARRAY OF LONGINT;
  
VAR
  a: A;

PROCEDURE Alloc (n: LONGINT);
  BEGIN
    NEW (a, n)
  END Alloc;

PROCEDURE Test*;
  BEGIN
    (* NEW (a, -1);  <-- this is rejected by OOC as a compile-time error *)
    Alloc (-1)
  END Test;

END HOTDynArr2.
