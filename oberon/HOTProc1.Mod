MODULE HOTProc1;	(** prk  **)



TYPE
	proc = PROCEDURE(): LONGINT;

VAR
	p1, p2: proc;


PROCEDURE Proc1(): LONGINT;
BEGIN  RETURN 1
END Proc1;

PROCEDURE Proc2(): LONGINT;
BEGIN  RETURN 2
END Proc2;

PROCEDURE Check(p: proc;  val: LONGINT);
BEGIN
	ASSERT(p() = val)
END Check;

PROCEDURE Test0*;
BEGIN
	ASSERT(p1() = 1, 100);
	ASSERT(p2() = 2, 101);
END Test0;

PROCEDURE Test1*;
BEGIN
	Check(p1, 1);
	Check(p2, 2);
END Test1;

PROCEDURE Test2*;
BEGIN
	Check(Proc1, 1);
	Check(Proc2, 2);
END Test2;

PROCEDURE Test*;
BEGIN
	Test0; Test1; Test2
END Test;

BEGIN
	p1 := Proc1;
	p2 := Proc2;
END HOTProc1.
