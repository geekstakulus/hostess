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
	Set(1); ASSERT(x = 1, 500);
	Set(2); ASSERT(x = 2, 501);
	Set := Set2x;
	Set(1); ASSERT(x = 2, 510);
	Set(2); ASSERT(x = 4, 511);
END Test0;

PROCEDURE Test1*;
BEGIN
	SetA := Set1x;
	SetA(1); ASSERT(x = 1, 500);
	SetA(2); ASSERT(x = 2, 501);
	SetA := Set2x;
	SetA(1); ASSERT(x = 2, 510);
	SetA(2); ASSERT(x = 4, 511);
END Test1;

PROCEDURE Test*;
BEGIN
	Test0; Test1;
END Test;




END HOTProc5.