MODULE HOTRecord3;	(** prk  **)


TYPE
	RDesc = RECORD
		a, b, c: LONGINT;
	END;
	
VAR
	r: RDesc;

PROCEDURE Test0;
BEGIN
	r.a := 0;
	r.b := 1;
	r.c := 2;
	r.a := r.b+r.c
END Test0;

PROCEDURE Test1;
VAR  r: RDesc;
BEGIN
	r.a := 0;
	r.b := 1;
	r.c := 2;
	r.a := r.b+r.c
END Test1;


END HOTRecord3.
