MODULE HOTBuiltinCAP1;  (* mva *)

PROCEDURE Test*;
  VAR
    i: LONGINT; ch0, ch1: CHAR;
  BEGIN
    i := 0;
    WHILE (i < 128) DO
      ch0 := CHR (i);
      IF ("a" <= ch0) & (ch0 <= "z") THEN
        ch1 := CHR (i-ORD("a")+ORD("A"))
      ELSE
        ch1 := ch0
      END;
      ASSERT (CAP (ch0) = ch1);
      INC (i)
    END
  END Test;

END HOTBuiltinCAP1.
