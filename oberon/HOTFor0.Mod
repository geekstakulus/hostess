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

PROCEDURE Test*;
BEGIN
	Test1;  Test2
END Test;


END HOTFor0.Test
