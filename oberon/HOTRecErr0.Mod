MODULE HOTRecErr0;	(** prk  **)

TYPE
	T = RECORD
		a, b, c: LONGINT;
	END;
	
	Q = RECORD
		a, b, c: LONGINT;
	END;
	
PROCEDURE P;
VAR t: T; q: Q;
BEGIN
	t := q;
END P;

END HOTRecErr0.
