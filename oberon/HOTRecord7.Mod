MODULE HOTRecord7;	(** prk  **)

TYPE
	R0 = POINTER TO R0Desc;
	R0Desc = RECORD
		a, b, c: LONGINT
	END;
	
	R1 = POINTER TO R1Desc;
	R1Desc = RECORD (R0Desc)
		e, f, g: LONGINT
	END;

VAR
	r0: R0;  r1: R1;

PROCEDURE Check(r: R0;  a, b, c: LONGINT);
BEGIN
	ASSERT(r.a = a, 100);
	ASSERT(r.b = b, 101);
	ASSERT(r.c = c, 102)
END Check;

PROCEDURE Set(r: R0;  a, b, c: LONGINT);
BEGIN
	r.a := a;  r.b := b;  r.c := c;
END Set;

PROCEDURE Test1*;
BEGIN
	NEW(r1);
	Set(r1, 1, 3, 5);
	Check(r1, 1, 3, 5);
END Test1;

PROCEDURE Test2*;
VAR  r1: R1;
BEGIN
	NEW(r1);
	Set(r1, 1, 3, 5);
	Check(r1, 1, 3, 5);
END Test2;

PROCEDURE Test3*;
VAR  r0: R0;  r1: R1;
BEGIN
	NEW(r1);
	Set(r1, 7, 9, 12);
	r0 := r1;
	Check(r0, 7, 9, 12);
END Test3;

PROCEDURE CheckType(r: R0;  ext: BOOLEAN);
BEGIN
	IF ext THEN
		ASSERT(r IS R1, 100)
	ELSE
		ASSERT( ~(r IS R1), 101)
	END
END CheckType;

PROCEDURE Test4*;
VAR r0: R0;  r1: R1;
BEGIN
	NEW(r0);  NEW(r1);
	CheckType(r0, FALSE);
	CheckType(r1, TRUE);
	r0 := r1;
	CheckType(r0, TRUE)
END Test4;

PROCEDURE SetR1(r: R0;  e, f, g: LONGINT);
BEGIN
	r(R1).e := e;
	r(R1).f := f;
	r(R1).g := g;
END SetR1;

PROCEDURE SetR1Bis(r: R0;  e, f, g: LONGINT);
BEGIN
	WITH r: R1 DO
		r.e := e;
		r.f := f;
		r.g := g
	END
END SetR1Bis;

PROCEDURE Test5*;
VAR r: R1;
BEGIN
	NEW(r);
	SetR1(r, 45, 54, 63);
	ASSERT(r.e = 45, 1100);
	ASSERT(r.f = 54, 111);
	ASSERT(r.g = 63, 112);
	
	SetR1Bis(r, 89, 91, 93);
	ASSERT(r.e = 89, 113);
	ASSERT(r.f = 91, 114);
	ASSERT(r.g = 93, 115);
END Test5;

PROCEDURE Test*;
BEGIN
	Test1;  Test2;  Test3;  Test4;  Test5
END Test;


END HOTRecord7.
