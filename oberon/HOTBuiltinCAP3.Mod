MODULE HOTBuiltinCAP3;  (* mva *)

VAR
  ch: CHAR;
  proc: PROCEDURE (a: CHAR): CHAR;
BEGIN
  ch := CAP();
  proc := CAP;
  ch := CAP(1234);
  
  CAP("a")
END HOTBuiltinCAP3.
