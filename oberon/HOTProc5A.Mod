MODULE HOTProc5A;	(** prk  **)


IMPORT
		HOTProc5;

PROCEDURE Set4x*(x0: LONGINT);
BEGIN	HOTProc5.x := 4*x0
END Set4x;

PROCEDURE Set5x*(x0: LONGINT);
BEGIN	HOTProc5.x := 5*x0
END Set5x;

PROCEDURE Assign4x*;	(*for HOTProc5b *)
BEGIN
	HOTProc5.Set := Set4x
END Assign4x;

PROCEDURE Assign5x*;	(*for HOTProc5b *)
BEGIN
	HOTProc5.Set := Set5x
END Assign5x;

PROCEDURE Test0*;
BEGIN
	HOTProc5.Set := Set4x;
	HOTProc5.Set(1); ASSERT(HOTProc5.x = 4, 100);
	HOTProc5.Set(2); ASSERT(HOTProc5.x = 8, 101);
	HOTProc5.Set := Set5x;
	HOTProc5.Set(1); ASSERT(HOTProc5.x = 5, 110);
	HOTProc5.Set(2); ASSERT(HOTProc5.x = 10, 111);
END Test0;

PROCEDURE Test1*;
BEGIN
	HOTProc5.SetA := Set4x;
	HOTProc5.SetA(1); ASSERT(HOTProc5.x = 4, 120);
	HOTProc5.SetA(2); ASSERT(HOTProc5.x = 8, 121);
	HOTProc5.SetA := Set5x;
	HOTProc5.SetA(1); ASSERT(HOTProc5.x = 5, 130);
	HOTProc5.SetA(2); ASSERT(HOTProc5.x = 10, 131);
END Test1;

PROCEDURE Test*;
BEGIN
	Test0; Test1;
END Test;

END HOTProc5A.
