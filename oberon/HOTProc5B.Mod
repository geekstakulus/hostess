MODULE HOTProc5B;	(** prk  **)


IMPORT
		HOTProc5, HOTProc5A;

PROCEDURE Test0*;
BEGIN
	HOTProc5A.Assign4x;
	HOTProc5.Set(1); ASSERT(HOTProc5.x = 4, 100);
	HOTProc5.Set(2); ASSERT(HOTProc5.x = 8, 101);
	HOTProc5A.Assign5x;
	HOTProc5.Set(1); ASSERT(HOTProc5.x = 5, 110);
	HOTProc5.Set(2); ASSERT(HOTProc5.x = 10, 111);
END Test0;

PROCEDURE Test*;
BEGIN
	Test0;
END Test;

END HOTProc5B.

