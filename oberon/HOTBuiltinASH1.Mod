MODULE HOTBuiltinASH1;  (* mva *)

IMPORT Out := OakOut;

PROCEDURE WriteSeq (start, dir, steps: LONGINT);
  VAR
    i: LONGINT;
  BEGIN
    i := 0;
    WHILE (i < steps) DO
      Out.String ("ASH("); Out.Int (start, 0);
      Out.String (","); Out.Int (dir, 0);
      Out.String (")=");
      start := ASH (start, dir);
      Out.Int (start, 0); Out.Ln;
      INC (i)
    END;
    Out.Ln
  END WriteSeq;

PROCEDURE Test*;
  BEGIN
    WriteSeq (4, -1, 3);
    WriteSeq (3, -1, 3);
    WriteSeq (0, -1, 1);
    WriteSeq (-3, -1, 3);
    WriteSeq (-2, 1, 2);
    WriteSeq (0, 1, 1);
    WriteSeq (1, 1, 1);
    WriteSeq (-3, -2, 2);
    WriteSeq (5, -2, 2);
    WriteSeq (3, 0, 1);
    WriteSeq (-3, 0, 1);
  END Test;

BEGIN
  Out.Open
END HOTBuiltinASH1.
