MODULE HOTBuiltinASH2;  (* mva *)

VAR
  i: LONGINT;
  proc: PROCEDURE (a, n: LONGINT): LONGINT;
BEGIN
  i := ASH(123);
  i := ASH();
  proc := ASH;
  i := ASH("a", 1);
  
  ASH(123,1)
END HOTBuiltinASH2.
