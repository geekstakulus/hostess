MODULE HOTRecord6;	(** prk  **)

TYPE
	R0 = POINTER TO R0Desc;
	R0Desc = RECORD
		a, b, c: LONGINT
	END;
	
VAR
	g0: R0;

PROCEDURE Check(r: R0;  a, b, c: LONGINT);
BEGIN
	ASSERT(r.a = a, 100);
	ASSERT(r.b = b, 101);
	ASSERT(r.c = c, 102)
END Check;

PROCEDURE CheckV(VAR r: R0;  a, b, c: LONGINT);
BEGIN
	ASSERT(r.a = a, 110);
	ASSERT(r.b = b, 111);
	ASSERT(r.c = c, 112);
END CheckV;

PROCEDURE Set(VAR r: R0;  a, b, c: LONGINT);
BEGIN
	r.a := a;  r.b := b;  r.c := c;
END Set;

PROCEDURE Test1*;
BEGIN
	NEW(g0);
	g0.a := 4;  g0.b := 5;  g0.c := 6;
	Check(g0, 4, 5, 6);
	CheckV(g0, 4, 5, 6);
	
	Set(g0, 13, 17, 19);
	ASSERT(g0.a = 13, 120);
	ASSERT(g0.b = 17, 121);
	ASSERT(g0.c = 19, 122);
	
	Check(g0, 13, 17, 19);
END Test1;

PROCEDURE Test2*;
VAR l0: R0;
BEGIN
	NEW(l0);
	l0.a := 4;  l0.b := 5;  l0.c := 6;
	Check(l0, 4, 5, 6);
	CheckV(l0, 4, 5, 6);
	
	Set(l0, 13, 17, 19);
	ASSERT(l0.a = 13, 130);
	ASSERT(l0.b = 17, 131);
	ASSERT(l0.c = 19, 132);
	
	Check(l0, 13, 17, 19);
END Test2;

PROCEDURE Test3*;
VAR l0, l1: R0;
BEGIN
	NEW(l0);
	l0.a := 4;  l0.b := 5;  l0.c := 6;

	l1 := l0;
	
	Check(l1, 4, 5, 6);

	Set(l0, 13, 17, 19);
	ASSERT(l1.a = 13, 140);
	ASSERT(l1.b = 17, 141);
	ASSERT(l1.c = 19, 142);
END Test3;

PROCEDURE Test4*;
VAR l0, l1: R0;
BEGIN
	NEW(l0); NEW(l1);
	l0.a := 4;  l0.b := 5;  l0.c := 6;

	l1^ := l0^;
	
	Check(l1, 4, 5, 6);

	Set(l0, 13, 17, 19);
	Check(l1, 4, 5, 6);
END Test4;

PROCEDURE Test*;
BEGIN
	Test1; Test2; Test3; Test4
END Test;

END HOTRecord6.
