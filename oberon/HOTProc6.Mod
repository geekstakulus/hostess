MODULE HOTProc6;	(** prk  **)

TYPE
	Proc = PROCEDURE;
	
	
PROCEDURE A;
BEGIN
END A;

PROCEDURE B;
BEGIN
END B;

PROCEDURE Test1*;
VAR a, b: Proc; res: BOOLEAN;
BEGIN
	a := A;
	b := B;
	ASSERT(a # b, 100);
	res := a # b;
	ASSERT(res, 101);
	ASSERT(a # NIL, 102);
	res := a # NIL;
	ASSERT(res, 103);
	
	ASSERT(~(a = b), 104);
	res := a = b;
	ASSERT(~res, 105);
	ASSERT(~(a = NIL), 106);
	res := a = NIL;
	ASSERT(~res, 107);
END Test1;

PROCEDURE Test2*;
VAR a, b: Proc; res: BOOLEAN;
BEGIN
	a := A;
	b := A;
	ASSERT(a = b, 110);
	res := a = b;
	ASSERT(res, 111);
	ASSERT(~(a # b), 112);
	res := a # b;
	ASSERT(~res, 113);
END Test2;

PROCEDURE Test3*;
VAR a, b: Proc; res: BOOLEAN;
BEGIN
	a := A;
	b := NIL;
	ASSERT(a # b, 120);
	res := a # b;
	ASSERT(res, 121);
	
	ASSERT(~(a = b), 122);
	res := a = b;
	ASSERT(~res, 123);
	
	ASSERT(a # NIL, 124);
	res := a # NIL;
	ASSERT(res, 125);
	ASSERT(~(a = NIL), 126);
	res := a = NIL;
	ASSERT( ~res, 127)
END Test3;

PROCEDURE Test4*;
VAR a, b: Proc; res: BOOLEAN;
BEGIN
	a := NIL;
	b := NIL;
	ASSERT(a = b, 130);
	res := a = b;
	ASSERT(res, 131);
	
	ASSERT(~(a # b), 132);
	res := a # b;
	ASSERT(~res, 133);
	
	ASSERT(a = NIL, 134);
	res := a = NIL;
	ASSERT(res, 135);
	ASSERT(~(a # NIL), 136);
	res := a # NIL;
	ASSERT( ~res, 137)
END Test4;

PROCEDURE Test*;
BEGIN
	Test1; Test2; Test3; Test4
END Test;

END HOTProc6.
