MODULE HOTFor0;	(** prk  **)

PROCEDURE Test1*;
VAR  sum, i: LONGINT;
BEGIN
	sum := 0;
	FOR i := 0 TO 10 DO
		sum := sum + i
	END;
	ASSERT(sum = 55, 200);
END Test1;

PROCEDURE Test2*;
VAR  i, j: LONGINT;
BEGIN
	j := 2;
	FOR i := 0 TO j DO
		INC(j); ASSERT(i <= 2)
	END;
END Test2;

PROCEDURE Test3*;
	VAR i: INTEGER; j: LONGINT;
BEGIN
	FOR i := MAX(INTEGER)-1 TO MAX(INTEGER) DO
		ASSERT( (i >= MAX(INTEGER)-1) & (i <= MAX(INTEGER)) , 30)
	END;
	FOR j := MAX(INTEGER)-1 TO MAX(INTEGER) DO
		ASSERT( (j >= MAX(INTEGER)-1) & (j <= MAX(INTEGER)) , 31)
	END
	FOR i := MAX(LONGINT)-1 TO MAX(LONGINT) DO
		ASSERT( (i >= MAX(LONGINT)-1) & (i <= MAX(LONGINT)) , 32)
	END;
END Test3;

PROCEDURE Test*;
BEGIN
	Test1;  Test2;  Test3
END Test;


END HOTFor0.Test
