MODULE HOTTypeTest0;  (* mva *)

IMPORT Out;

TYPE
  R = RECORD END;
  P = POINTER TO R;
  R1 = RECORD (R) END;
  P1 = POINTER TO R1;
  
VAR
  p: P;

PROCEDURE Test*;
  BEGIN
    IF p IS P1 THEN Out.String ("type test successful") END
  END Test;

BEGIN
  p := NIL;
END HOTTypeTest0.
