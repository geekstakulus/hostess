MODULE HOTVarPar0;	(** prk  **)

VAR
	a: LONGINT;

PROCEDURE Set(VAR v: LONGINT; val: LONGINT);
BEGIN
	v := val
END Set;

PROCEDURE Test*;
BEGIN
	Set(a, 2);
	ASSERT(a = 2, 100);
	Set(a, 3);
	ASSERT(a = 3, 101)
END Test;

END HOTVarPar0.