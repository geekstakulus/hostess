MODULE HOTProc5;	(** prk  **)


TYPE
	SetProc* = PROCEDURE (x0: LONGINT);
	
VAR
	Set*: PROCEDURE (x0: LONGINT);
	SetA*: SetProc;
	x* : LONGINT;

PROCEDURE Set1x*(x0: LONGINT);
BEGIN	x := x0
END Set1x;

PROCEDURE Set2x*(x0: LONGINT);
BEGIN	x := 2*x0
END Set2x;

PROCEDURE Test0*;
BEGIN
	Set := Set1x;
	Set(1); ASSERT(x = 1, 100);
	Set(2); ASSERT(x = 2, 101);
	Set := Set2x;
	Set(1); ASSERT(x = 2, 110);
	Set(2); ASSERT(x = 4, 111);
END Test0;

PROCEDURE Test1*;
BEGIN
	SetA := Set1x;
	SetA(1); ASSERT(x = 1, 120);
	SetA(2); ASSERT(x = 2, 121);
	SetA := Set2x;
	SetA(1); ASSERT(x = 2, 130);
	SetA(2); ASSERT(x = 4, 131);
END Test1;

PROCEDURE Test*;
BEGIN
	Test0; Test1;
END Test;




END HOTProc5.
