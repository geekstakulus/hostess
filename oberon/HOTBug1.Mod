MODULE HOTBug1;	(** prk  **)

PROCEDURE F(): INTEGER;
BEGIN RETURN 0
END F;

PROCEDURE Do;
VAR x: INTEGER;
BEGIN
	x := F() * F();		(*popregs popped a 32-bit reg*)
END Do;


END HOTBug1.
