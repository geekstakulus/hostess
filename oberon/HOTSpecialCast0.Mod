MODULE HOTSpecialCast0;	(** prk  **)

TYPE
	A = POINTER TO ARRAY 5 OF CHAR;

VAR
	p: PTR;
	a: A;
BEGIN
	a := p(A)
END HOTSpecialCast0.
