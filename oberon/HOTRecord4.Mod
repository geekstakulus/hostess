MODULE HOTRecord4;	(** prk  **)



TYPE
	R0 = RECORD
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
VAR r0: R0;
BEGIN
	r0.a := 4;  r0.b := 5;  r0.c := 6;
	Check(r0, 4, 5, 6);
	CheckV(r0, 4, 5, 6);
	
	Set(r0, 13, 17, 19);
	ASSERT(r0.a = 13, 130);
	ASSERT(r0.b = 17, 131);
	ASSERT(r0.c = 19, 132);
	
	Check(r0, 13, 17, 19);
END Test2;


PROCEDURE Test3*;
VAR r0, r1: R0;
BEGIN
	Set(r0, 31, 37, 39);
	r1 := r0;
	Check(r1, 31, 37, 39)
END Test3;

PROCEDURE Test*;
BEGIN
	Test1;  Test2;  Test3
END Test;


END HOTRecord4.
