MODULE HOTProc0;	(** prk  **)

TYPE
	proc = PROCEDURE;

VAR
	p: proc;


PROCEDURE P;
BEGIN
END P;

PROCEDURE Q(p: proc);
BEGIN
END Q;

PROCEDURE Test0;
BEGIN
	p := P;
	Q(p);
	Q(P);
END Test0;


END HOTProc0.
