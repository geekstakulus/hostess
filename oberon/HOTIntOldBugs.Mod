MODULE HOTIntOldBugs;	(** prk  **)

CONST
	size = 10000H;

PROCEDURE Test1;
VAR  src, dst: LONGINT;
BEGIN
	src := 100H;
	dst := size DIV src;
	ASSERT(dst = 100H);
END Test1;

PROCEDURE Test*;
BEGIN
	Test1;
END Test;



END HOTIntOldBugs.
