MODULE HOTRecord8;	(** prk  **)


TYPE
	T = RECORD END;
	
PROCEDURE Test1;
VAR t, s: T;
BEGIN
	t := s;
END Test1;

PROCEDURE P(x: T);
BEGIN
END P;

PROCEDURE Test2;
VAR x: ARRAY 20 OF T; i: LONGINT;
BEGIN
	P(x[i]);
END Test2;



END HOTRecord8.
