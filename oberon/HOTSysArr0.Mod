MODULE HOTSysArr0;	(** prk  **)



IMPORT
		SYSTEM;


PROCEDURE Check1(a: ARRAY OF CHAR;  inx, v: LONGINT);
BEGIN
	ASSERT(ORD(a[inx]) = v);
END Check1;

PROCEDURE Check2(VAR a: ARRAY OF CHAR;  inx, v: LONGINT);
BEGIN
	ASSERT(ORD(a[inx]) = v);
END Check2;

PROCEDURE Test1*;
VAR  a: ARRAY 16 OF CHAR;  i: LONGINT;
BEGIN
	i := 0;
	WHILE i <= 15 DO
		a[i] := CHR(i*3);
		Check1(a, i, i*3);
		Check2(a, i, i*3);
		INC(i)
	END
END Test1;

PROCEDURE Test2*;
VAR  a: ARRAY 16 OF CHAR;  i: LONGINT;

	PROCEDURE Check1(x: ARRAY OF SYSTEM.BYTE);
	VAR i: LONGINT;
	BEGIN
		i := 0;
		WHILE i <= 15 DO
			ASSERT(SYSTEM.VAL(CHAR, x[i]) = CHR(i*5), 100);
			INC(i)
		END
	END Check1;

	PROCEDURE Check1V(x: ARRAY OF SYSTEM.BYTE);
	VAR i: LONGINT;
	BEGIN
		i := 0;
		WHILE i <= 15 DO
			ASSERT(SYSTEM.VAL(CHAR, x[i]) = CHR(i*5), 100);
			INC(i)
		END
	END Check1V;
	
	PROCEDURE Check2(b: ARRAY OF CHAR);
	BEGIN
		Check1(b);	Check1V(b)
	END Check2;
	
	PROCEDURE Check2V(VAR b: ARRAY OF CHAR);
	BEGIN
		Check1(b);	Check1V(b)
	END Check2V;

BEGIN
	i := 0;
	WHILE i <= 15 DO a[i] := CHR(i*5); INC(i) END;
	Check1(a); Check1V(a);
	Check2(a); Check2V(a);
END Test2;


PROCEDURE Test*;
BEGIN
	Test1; Test2;
END Test;


END HOTSysArr0.
