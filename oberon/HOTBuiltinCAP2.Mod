MODULE HOTBuiltinCAP2;  (* mva *)

PROCEDURE Test*;
  VAR
    i: LONGINT; ch0, ch1: CHAR;
  BEGIN
    i := 0;
    WHILE (i < 256) DO
      ch0 := CHR (i);
      IF ("a" <= ch0) & (ch0 <= "z") THEN
        ch1 := CHR (i-32)
      ELSIF ("à" <= ch0) & (ch0 < "ÿ") & (ch0 # "÷") THEN
        ch1 := CHR (i-32)
      ELSE
        ch1 := ch0
      END;
      ASSERT (CAP (ch0) = ch1);
      INC (i)
    END
  END Test;

END HOTBuiltinCAP2.
