MODULE HOTBoolExpr0;	(** prk  **)


PROCEDURE P(a, b: BOOLEAN);
BEGIN
	ASSERT(a = b)
END P;

PROCEDURE Test1*;
VAR x: BOOLEAN;
BEGIN
	P(TRUE, TRUE);
	P(FALSE, FALSE);
	P(x, x);
	x := FALSE;
	P(x, FALSE);
	P(x = FALSE, TRUE);
END Test1;

PROCEDURE Test2*;
VAR a, b: LONGINT; x: BOOLEAN;
BEGIN
	a := 0; b := 0;
	ASSERT( (a = 0) = (b = 0), 20);
	x := (a = 0) = (b = 0);	ASSERT(x, 21);
	IF (a = 0) = (b = 0) THEN
	ELSE
		HALT(202)
	END;

	a := 1; b := 1;
	ASSERT( (a = 0) = (b = 0), 22);
	x := (a = 0) = (b = 0);	ASSERT(x, 23);
	IF (a = 0) = (b = 0) THEN
	ELSE
		HALT(212)
	END;
END Test2;

PROCEDURE Test3*;
	PROCEDURE CheckRange(test, i, l0, h0, l1, h1: LONGINT);
	BEGIN
		IF ~((i >= l0) & (i <= h0) OR (i >= l1) & (i <= h1)) THEN
		ELSE
			HALT(200)
		END
	END CheckRange;

BEGIN
	CheckRange(3, 1, 2, 4, 6, 8);
	CheckRange(2, 5, 2, 4, 6, 8);
	CheckRange(1, 10, 2, 4, 6, 8);
END Test3;

PROCEDURE Test*;
BEGIN
	Test1; Test2; Test3
END Test;


END HOTBoolExpr0.
