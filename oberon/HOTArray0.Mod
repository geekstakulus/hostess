MODULE HOTArray0;  (** prk  **)


TYPE
  LI = ARRAY 32 OF LONGINT;
  I = ARRAY 32 OF INTEGER;
  SI = ARRAY 32 OF SHORTINT;

VAR
  gALI: ARRAY 32 OF LONGINT;
  gAI: ARRAY 32 OF INTEGER;
  gASI: ARRAY 32 OF SHORTINT;

  gLI: LI;  gI: I;  gSI: SI;


PROCEDURE CheckGALI*;  (* Check Global Anonymous array (LONGINT) *)
VAR i: LONGINT;
BEGIN
  i := 0;
  WHILE i < 32 DO gALI[i] := 10*i; ASSERT(gALI[i] = 10*i); INC(i) END;
END CheckGALI;

PROCEDURE CheckGAI*;  (* Check Global Anonymous array (INTEGER) *)
VAR i: INTEGER;
BEGIN
  i := 0;
  WHILE i < 32  DO  gAI[i] := 5*i;  ASSERT(gAI[i] = 5*i); INC(i)  END;
END CheckGAI;

PROCEDURE CheckGASI*;  (* Check Global Anonymous array (SHORTINT) *)
VAR i: SHORTINT;
BEGIN
  i := 0;
  WHILE i < 32 DO  gASI[i] := i;  ASSERT(gASI[i] = i); INC(i)  END;
END CheckGASI;

PROCEDURE TestGA*;
BEGIN  CheckGALI; CheckGAI; CheckGASI
END TestGA;


PROCEDURE CheckLALI*;  (* Check Local Anonymous array (LONGINT) *)
VAR i: LONGINT;  lALI: ARRAY 32 OF LONGINT;
BEGIN
  i := 0;
  WHILE i < 32 DO  lALI[i] := 9*i;  ASSERT(lALI[i] = 9*i); INC(i)  END;
END CheckLALI;

PROCEDURE CheckLAI*;  (* Check Local Anonymous array (INTEGER) *)
VAR i: INTEGER;  lAI: ARRAY 32 OF INTEGER;
BEGIN
  i := 0;
  WHILE i < 32 DO  lAI[i] := 4*i;  ASSERT(lAI[i] = 4*i); INC(i)  END;
END CheckLAI;

PROCEDURE CheckLASI*;  (* Check Local Anonymous array (SHORTINT) *)
VAR i: SHORTINT;  lASI: ARRAY 32 OF SHORTINT;
BEGIN
  i := 0;
  WHILE i < 32 DO  lASI[i] := 2*i;  ASSERT(lASI[i] = 2*i); INC(i)  END;
END CheckLASI;

PROCEDURE TestLA*;
BEGIN  CheckLALI; CheckLAI; CheckLASI
END TestLA;



PROCEDURE TestGLI*;
VAR  i: LONGINT;
  PROCEDURE CompareGLI(a: LI);
  VAR  i: LONGINT;
  BEGIN i := 0; WHILE i < 32 DO  ASSERT(gLI[i] = a[i]); INC(i)  END
  END CompareGLI;
  
  PROCEDURE CompareGLIV(VAR a: LI);
  VAR  i: LONGINT;
  BEGIN  i := 0; WHILE i < 32 DO  ASSERT(gLI[i] = a[i]); INC(i)  END
  END CompareGLIV;
  
  PROCEDURE CompareGOLI(a: ARRAY OF LONGINT);
  VAR  i: LONGINT;
  BEGIN  i := 0; WHILE i < 32 DO  ASSERT(gLI[i] = a[i]); INC(i)  END
  END CompareGOLI;

  PROCEDURE CompareGOLIV(VAR a: ARRAY OF LONGINT);
  VAR  i: LONGINT;
  BEGIN  i := 0; WHILE i < 32 DO  ASSERT(gLI[i] = a[i]); INC(i)  END
  END CompareGOLIV;
BEGIN
  i := 0; WHILE i < 32 DO  gLI[i] := 8*i;  ASSERT(gLI[i] = 8*i); INC(i)  END;
  CompareGLI(gLI);  CompareGLIV(gLI);  CompareGOLI(gLI);  CompareGOLIV(gLI);
END TestGLI;

PROCEDURE TestGI*;
VAR  i: INTEGER;
  PROCEDURE CompareGI(a: I);
  VAR  i: LONGINT;
  BEGIN  i := 0; WHILE i < 32 DO  ASSERT(gI[i] = a[i]); INC(i)  END
  END CompareGI;
  
  PROCEDURE CompareGIV(VAR a: I);
  VAR  i: LONGINT;
  BEGIN  i := 0; WHILE i < 32 DO  ASSERT(gI[i] = a[i]); INC(i)  END
  END CompareGIV;

  PROCEDURE CompareGOI(a: ARRAY OF INTEGER);
  VAR  i: LONGINT;
  BEGIN  i := 0; WHILE i < 32 DO  ASSERT(gI[i] = a[i]); INC(i)  END
  END CompareGOI;

  PROCEDURE CompareGOIV(VAR a: ARRAY OF INTEGER);
  VAR  i: LONGINT;
  BEGIN  i := 0; WHILE i < 32 DO  ASSERT(gI[i] = a[i]); INC(i)  END
  END CompareGOIV;
BEGIN
  i := 0; WHILE i < 32 DO  gI[i] := 3*i;  ASSERT(gI[i] = 3*i); INC(i)  END;
  CompareGI(gI);  CompareGIV(gI);  CompareGOI(gI);  CompareGOIV(gI)
END TestGI;

PROCEDURE TestGSI*;
VAR  i: SHORTINT;
  PROCEDURE CompareGSI(a: SI);
  VAR  i: LONGINT;
  BEGIN  i := 0; WHILE i < 32 DO  ASSERT(gSI[i] = a[i]); INC(i)  END
  END CompareGSI;
  
  PROCEDURE CompareGSIV(VAR a: SI);
  VAR  i: LONGINT;
  BEGIN  i := 0; WHILE i < 32 DO  ASSERT(gSI[i] = a[i]); INC(i)  END
  END CompareGSIV;

  PROCEDURE CompareGOSI(a: ARRAY OF SHORTINT);
  VAR  i: LONGINT;
  BEGIN  i := 0; WHILE i < 32 DO  ASSERT(gSI[i] = a[i]); INC(i)  END
  END CompareGOSI;

  PROCEDURE CompareGOSIV(VAR a: ARRAY OF SHORTINT);
  VAR  i: LONGINT;
  BEGIN  i := 0; WHILE i < 32 DO  ASSERT(gSI[i] = a[i]); INC(i)  END
  END CompareGOSIV;
BEGIN
  i := 0; WHILE i < 32 DO  gSI[i] := 3*i;  ASSERT(gSI[i] = 3*i); INC(i)  END;
  CompareGSI(gSI);  CompareGSIV(gSI);  CompareGOSI(gSI);  CompareGOSIV(gSI)
END TestGSI;

PROCEDURE TestG*;
BEGIN  TestGLI;  TestGI;  TestGSI
END TestG;


PROCEDURE TestLLI*;
VAR  i: LONGINT;  lLI: LI;
  PROCEDURE CompareLLI(a: LI);
  VAR  i: LONGINT;
  BEGIN  i := 0; WHILE i < 32 DO  ASSERT(lLI[i] = a[i]); INC(i)  END
  END CompareLLI;
  
  PROCEDURE CompareLLIV(VAR a: LI);
  VAR  i: LONGINT;
  BEGIN  i := 0; WHILE i < 32 DO  ASSERT(lLI[i] = a[i]); INC(i)  END
  END CompareLLIV;

  PROCEDURE CompareLOLI(a: ARRAY OF LONGINT);
  VAR  i: LONGINT;
  BEGIN  i := 0; WHILE i < 32 DO  ASSERT(lLI[i] = a[i]); INC(i)  END
  END CompareLOLI;

  PROCEDURE CompareLOLIV(VAR a: ARRAY OF LONGINT);
  VAR  i: LONGINT;
  BEGIN  i := 0; WHILE i < 32 DO  ASSERT(lLI[i] = a[i]); INC(i)  END
  END CompareLOLIV;
BEGIN
  i := 0; WHILE i < 32 DO  lLI[i] := 7*i;  ASSERT(lLI[i] = 7*i); INC(i)  END;
  CompareLLI(lLI);  CompareLLIV(lLI);  CompareLOLI(lLI);  CompareLOLIV(lLI)
END TestLLI;

PROCEDURE TestLI*;
VAR  i: INTEGER;  lI: I;
  PROCEDURE CompareLI(a: I);
  VAR  i: LONGINT;
  BEGIN  i := 0; WHILE i < 32 DO  ASSERT(lI[i] = a[i]); INC(i)  END
  END CompareLI;
  
  PROCEDURE CompareLIV(VAR a: I);
  VAR  i: LONGINT;
  BEGIN  i := 0; WHILE i < 32 DO  ASSERT(lI[i] = a[i]); INC(i)  END
  END CompareLIV;

  PROCEDURE CompareLOI(a: ARRAY OF INTEGER);
  VAR  i: LONGINT;
  BEGIN  i := 0; WHILE i < 32 DO  ASSERT(lI[i] = a[i]); INC(i)  END
  END CompareLOI;

  PROCEDURE CompareLOIV(VAR a: ARRAY OF INTEGER);
  VAR  i: LONGINT;
  BEGIN  i := 0; WHILE i < 32 DO  ASSERT(lI[i] = a[i]); INC(i)  END
  END CompareLOIV;
BEGIN
  i := 0; WHILE i < 32 DO  lI[i] := 2*i;  ASSERT(lI[i] = 2*i); INC(i)  END;
  CompareLI(lI);  CompareLIV(lI);  CompareLOI(lI);  CompareLOIV(lI)
END TestLI;

PROCEDURE TestLSI*;
VAR  i: SHORTINT;  lSI: SI;
  PROCEDURE CompareLSI(a: SI);
  VAR  i: LONGINT;
  BEGIN  i := 0; WHILE i < 32 DO  ASSERT(lSI[i] = a[i]); INC(i)  END
  END CompareLSI;
  
  PROCEDURE CompareLSIV(VAR a: SI);
  VAR  i: LONGINT;
  BEGIN  i := 0; WHILE i < 32 DO  ASSERT(lSI[i] = a[i]); INC(i)  END
  END CompareLSIV;

  PROCEDURE CompareLOSI(a: ARRAY OF SHORTINT);
  VAR  i: LONGINT;
  BEGIN  i := 0; WHILE i < 32 DO  ASSERT(lSI[i] = a[i]); INC(i)  END
  END CompareLOSI;

  PROCEDURE CompareLOSIV(VAR a: ARRAY OF SHORTINT);
  VAR  i: LONGINT;
  BEGIN  i := 0; WHILE i < 32 DO  ASSERT(lSI[i] = a[i]); INC(i)  END
  END CompareLOSIV;
BEGIN
  i := 0; WHILE i < 32 DO  lSI[i] := 4*i;  ASSERT(lSI[i] = 4*i); INC(i)  END;
  CompareLSI(lSI);  CompareLSIV(lSI);  CompareLOSI(lSI);  CompareLOSIV(lSI)
END TestLSI;

PROCEDURE TestL*;
BEGIN  TestLLI;  TestLI;  TestLSI
END TestL;




PROCEDURE Test*;
BEGIN
  TestGA; TestLA; TestG; TestL
END Test;


END HOTArray0.
