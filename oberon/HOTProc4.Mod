MODULE HOTProc4;	(** prk  **)


VAR
	x*: LONGINT;

	SetX*: PROCEDURE;

PROCEDURE SetX0*;
BEGIN x := 0
END SetX0;

PROCEDURE SetX1*;
BEGIN x := 1
END SetX1;

PROCEDURE Test1*;
BEGIN
	SetX := SetX0;
	SetX;
	ASSERT(x = 0, 200);
	SetX := SetX1;
	SetX;
	ASSERT(x = 1, 201);
END Test1;

PROCEDURE Test*;
BEGIN
	Test1
END Test;

END HOTProc4.

HOTProc4.Test
