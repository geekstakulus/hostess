MODULE HOTWITH1;  (* mva *)

TYPE
  R0 = RECORD END;       P0 = POINTER TO R0;
  R1 = RECORD (R0) END;  P1 = POINTER TO R1;

PROCEDURE Proc0 (VAR r: R0);
  VAR
    r0: R0;
  BEGIN
    WITH r: R1 DO
      Proc0 (r0)
    END
  END Proc0;

PROCEDURE Proc1 (p: P0);
  VAR
    p0: P0;
  BEGIN
    WITH p: P1 DO
      Proc1 (p0)
    END
  END Proc1;

END HOTWITH1.
