MODULE HOTProc4A;	(** prk  **)



IMPORT
		HOTProc4;

PROCEDURE SetX2*;
BEGIN HOTProc4.x := 2
END SetX2;

PROCEDURE SetX3*;
BEGIN HOTProc4.x := 3
END SetX3;

PROCEDURE Test1*;
BEGIN
	HOTProc4.SetX := HOTProc4.SetX0;
	HOTProc4.SetX;
	ASSERT(HOTProc4.x = 0, 100);
	HOTProc4.SetX := HOTProc4.SetX1;
	HOTProc4.SetX;
	ASSERT(HOTProc4.x = 1, 101);
END Test1;

PROCEDURE Test2*;
BEGIN
	HOTProc4.SetX := SetX2;
	HOTProc4.SetX;
	ASSERT(HOTProc4.x = 2, 110);
	HOTProc4.SetX := SetX3;
	HOTProc4.SetX;
	ASSERT(HOTProc4.x = 3, 111);
END Test2;

PROCEDURE Test*;
BEGIN
	Test1; Test2;
END Test;

END HOTProc4A.

HOTProc4A.Test
