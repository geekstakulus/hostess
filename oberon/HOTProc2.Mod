MODULE HOTProc2;	(** prk  **)


TYPE
	proc = PROCEDURE (i: LONGINT): LONGINT;

VAR
	p: proc;
	
PROCEDURE Identity(i: LONGINT): LONGINT;
BEGIN  RETURN i
END Identity;

PROCEDURE Check(p: proc;  i, val: LONGINT);
BEGIN
	ASSERT(p(i) = val)
END Check;

PROCEDURE Test0*;
BEGIN
	ASSERT(p(1) = 1);
END Test0;

PROCEDURE Test1*;
BEGIN
	Check(p, 1, 1);
	Check(p, 5, 5)
END Test1;

PROCEDURE Test2*;
BEGIN
	Check(Identity, 1, 1);
	Check(Identity, 5, 5)
END Test2;

PROCEDURE Test*;
BEGIN
	Test0; Test1; Test2
END Test;

BEGIN
	p := Identity
END HOTProc2.
