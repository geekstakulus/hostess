MODULE HOTArray0;	(** prk  **)


TYPE
	LI = ARRAY 32 OF LONGINT;
	I = ARRAY 32 OF INTEGER;
	SI = ARRAY 32 OF SHORTINT;

VAR
	gALI: ARRAY 32 OF LONGINT;
	gAI: ARRAY 32 OF INTEGER;
	gASI: ARRAY 32 OF SHORTINT;

	gLI: LI;	gI: I;	gSI: SI;


PROCEDURE CheckGALI*;	(* Check Global Anonymous array (LONGINT) *)
VAR i: LONGINT;
BEGIN
	FOR i := 0 TO 31 DO	gALI[i] := 10*i;	ASSERT(gALI[i] = 10*i)	END;
END CheckGALI;

PROCEDURE CheckGAI*;	(* Check Global Anonymous array (INTEGER) *)
VAR i: INTEGER;
BEGIN
	FOR i := 0 TO 31 DO	gAI[i] := 5*i;	ASSERT(gAI[i] = 5*i)	END;
END CheckGAI;

PROCEDURE CheckGASI*;	(* Check Global Anonymous array (SHORTINT) *)
VAR i: SHORTINT;
BEGIN
	FOR i := 0 TO 31 DO	gASI[i] := i;	ASSERT(gASI[i] = i)	END;
END CheckGASI;

PROCEDURE TestGA*;
BEGIN	CheckGALI; CheckGAI; CheckGASI
END TestGA;


PROCEDURE CheckLALI*;	(* Check Local Anonymous array (LONGINT) *)
VAR i: LONGINT;	lALI: ARRAY 32 OF LONGINT;
BEGIN
	FOR i := 0 TO 31 DO	lALI[i] := 9*i;	ASSERT(lALI[i] = 9*i)	END;
END CheckLALI;

PROCEDURE CheckLAI*;	(* Check Local Anonymous array (INTEGER) *)
VAR i: INTEGER;	lAI: ARRAY 32 OF INTEGER;
BEGIN
	FOR i := 0 TO 31 DO	lAI[i] := 4*i;	ASSERT(lAI[i] = 4*i)	END;
END CheckLAI;

PROCEDURE CheckLASI*;	(* Check Local Anonymous array (SHORTINT) *)
VAR i: SHORTINT;	lASI: ARRAY 32 OF SHORTINT;
BEGIN
	FOR i := 0 TO 31 DO	lASI[i] := 2*i;	ASSERT(lASI[i] = 2*i)	END;
END CheckLASI;

PROCEDURE TestLA*;
BEGIN	CheckLALI; CheckLAI; CheckLASI
END TestLA;



PROCEDURE TestGLI*;
VAR  i: LONGINT;
	PROCEDURE CompareGLI(a: LI);
	VAR  i: LONGINT;
	BEGIN	FOR i := 0 TO 31 DO  ASSERT(gLI[i] = a[i])  END
	END CompareGLI;
	
	PROCEDURE CompareGLIV(VAR a: LI);
	VAR  i: LONGINT;
	BEGIN	FOR i := 0 TO 31 DO  ASSERT(gLI[i] = a[i])  END
	END CompareGLIV;
	
	PROCEDURE CompareGOLI(a: ARRAY OF LONGINT);
	VAR  i: LONGINT;
	BEGIN	FOR i := 0 TO 31 DO  ASSERT(gLI[i] = a[i])  END
	END CompareGOLI;

	PROCEDURE CompareGOLIV(VAR a: ARRAY OF LONGINT);
	VAR  i: LONGINT;
	BEGIN	FOR i := 0 TO 31 DO  ASSERT(gLI[i] = a[i])  END
	END CompareGOLIV;
BEGIN
	FOR i := 0 TO 31 DO	gLI[i] := 8*i;  ASSERT(gLI[i] = 8*i)	END;
	CompareGLI(gLI);	CompareGLIV(gLI);	CompareGOLI(gLI);	CompareGOLIV(gLI);
END TestGLI;

PROCEDURE TestGI*;
VAR  i: INTEGER;
	PROCEDURE CompareGI(a: I);
	VAR  i: LONGINT;
	BEGIN	FOR i := 0 TO 31 DO  ASSERT(gI[i] = a[i])  END
	END CompareGI;
	
	PROCEDURE CompareGIV(VAR a: I);
	VAR  i: LONGINT;
	BEGIN	FOR i := 0 TO 31 DO  ASSERT(gI[i] = a[i])  END
	END CompareGIV;

	PROCEDURE CompareGOI(a: ARRAY OF INTEGER);
	VAR  i: LONGINT;
	BEGIN	FOR i := 0 TO 31 DO  ASSERT(gI[i] = a[i])  END
	END CompareGOI;

	PROCEDURE CompareGOIV(VAR a: ARRAY OF INTEGER);
	VAR  i: LONGINT;
	BEGIN	FOR i := 0 TO 31 DO  ASSERT(gI[i] = a[i])  END
	END CompareGOIV;
BEGIN
	FOR i := 0 TO 31 DO	gI[i] := 3*i;  ASSERT(gI[i] = 3*i)	END;
	CompareGI(gI);	CompareGIV(gI);	CompareGOI(gI);	CompareGOIV(gI)
END TestGI;

PROCEDURE TestGSI*;
VAR  i: SHORTINT;
	PROCEDURE CompareGSI(a: SI);
	VAR  i: LONGINT;
	BEGIN	FOR i := 0 TO 31 DO  ASSERT(gSI[i] = a[i])  END
	END CompareGSI;
	
	PROCEDURE CompareGSIV(VAR a: SI);
	VAR  i: LONGINT;
	BEGIN	FOR i := 0 TO 31 DO  ASSERT(gSI[i] = a[i])  END
	END CompareGSIV;

	PROCEDURE CompareGOSI(a: ARRAY OF SHORTINT);
	VAR  i: LONGINT;
	BEGIN	FOR i := 0 TO 31 DO  ASSERT(gSI[i] = a[i])  END
	END CompareGOSI;

	PROCEDURE CompareGOSIV(VAR a: ARRAY OF SHORTINT);
	VAR  i: LONGINT;
	BEGIN	FOR i := 0 TO 31 DO  ASSERT(gSI[i] = a[i])  END
	END CompareGOSIV;
BEGIN
	FOR i := 0 TO 31 DO	gSI[i] := 3*i;  ASSERT(gSI[i] = 3*i)	END;
	CompareGSI(gSI);	CompareGSIV(gSI);	CompareGOSI(gSI);	CompareGOSIV(gSI)
END TestGSI;

PROCEDURE TestG*;
BEGIN	TestGLI;	TestGI;	TestGSI
END TestG;


PROCEDURE TestLLI*;
VAR  i: LONGINT;  lLI: LI;
	PROCEDURE CompareLLI(a: LI);
	VAR  i: LONGINT;
	BEGIN	FOR i := 0 TO 31 DO  ASSERT(lLI[i] = a[i])  END
	END CompareLLI;
	
	PROCEDURE CompareLLIV(VAR a: LI);
	VAR  i: LONGINT;
	BEGIN	FOR i := 0 TO 31 DO  ASSERT(lLI[i] = a[i])  END
	END CompareLLIV;

	PROCEDURE CompareLOLI(a: ARRAY OF LONGINT);
	VAR  i: LONGINT;
	BEGIN	FOR i := 0 TO 31 DO  ASSERT(lLI[i] = a[i])  END
	END CompareLOLI;

	PROCEDURE CompareLOLIV(VAR a: ARRAY OF LONGINT);
	VAR  i: LONGINT;
	BEGIN	FOR i := 0 TO 31 DO  ASSERT(lLI[i] = a[i])  END
	END CompareLOLIV;
BEGIN
	FOR i := 0 TO 31 DO	lLI[i] := 7*i;  ASSERT(lLI[i] = 7*i)	END;
	CompareLLI(lLI);	CompareLLIV(lLI);	CompareLOLI(lLI);	CompareLOLIV(lLI)
END TestLLI;

PROCEDURE TestLI*;
VAR  i: INTEGER;  lI: I;
	PROCEDURE CompareLI(a: I);
	VAR  i: LONGINT;
	BEGIN	FOR i := 0 TO 31 DO  ASSERT(lI[i] = a[i])  END
	END CompareLI;
	
	PROCEDURE CompareLIV(VAR a: I);
	VAR  i: LONGINT;
	BEGIN	FOR i := 0 TO 31 DO  ASSERT(lI[i] = a[i])  END
	END CompareLIV;

	PROCEDURE CompareLOI(a: ARRAY OF INTEGER);
	VAR  i: LONGINT;
	BEGIN	FOR i := 0 TO 31 DO  ASSERT(lI[i] = a[i])  END
	END CompareLOI;

	PROCEDURE CompareLOIV(VAR a: ARRAY OF INTEGER);
	VAR  i: LONGINT;
	BEGIN	FOR i := 0 TO 31 DO  ASSERT(lI[i] = a[i])  END
	END CompareLOIV;
BEGIN
	FOR i := 0 TO 31 DO	lI[i] := 2*i;  ASSERT(lI[i] = 2*i)	END;
	CompareLI(lI);	CompareLIV(lI);	CompareLOI(lI);	CompareLOIV(lI)
END TestLI;

PROCEDURE TestLSI*;
VAR  i: SHORTINT;  lSI: SI;
	PROCEDURE CompareLSI(a: SI);
	VAR  i: LONGINT;
	BEGIN	FOR i := 0 TO 31 DO  ASSERT(lSI[i] = a[i])  END
	END CompareLSI;
	
	PROCEDURE CompareLSIV(VAR a: SI);
	VAR  i: LONGINT;
	BEGIN	FOR i := 0 TO 31 DO  ASSERT(lSI[i] = a[i])  END
	END CompareLSIV;

	PROCEDURE CompareLOSI(a: ARRAY OF SHORTINT);
	VAR  i: LONGINT;
	BEGIN	FOR i := 0 TO 31 DO  ASSERT(lSI[i] = a[i])  END
	END CompareLOSI;

	PROCEDURE CompareLOSIV(VAR a: ARRAY OF SHORTINT);
	VAR  i: LONGINT;
	BEGIN	FOR i := 0 TO 31 DO  ASSERT(lSI[i] = a[i])  END
	END CompareLOSIV;
BEGIN
	FOR i := 0 TO 31 DO	lSI[i] := 4*i;  ASSERT(lSI[i] = 4*i)	END;
	CompareLSI(lSI);	CompareLSIV(lSI);	CompareLOSI(lSI);	CompareLOSIV(lSI)
END TestLSI;

PROCEDURE TestL*;
BEGIN	TestLLI;	TestLI;	TestLSI
END TestL;




PROCEDURE Test*;
BEGIN
	TestGA; TestLA; TestG; TestL
END Test;


END HOTArray0.