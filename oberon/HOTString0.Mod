MODULE HOTString0;	(** prk  **)

PROCEDURE Test1*;
VAR s: ARRAY 32 OF CHAR;
BEGIN
	s := "SomeString";
	ASSERT(s = "SomeString", 100);
END Test1;

PROCEDURE Test2*;
CONST  c0 = "abc";  c1 = "xyz";
VAR s0, s1: ARRAY 32 OF CHAR;
BEGIN
	s0 := c0;  s1 := c1;
	
	ASSERT(s0 # c1, 200);	(*check PCC.StringCmp, one of the ops must be a const!!!*)
	ASSERT(s0 < c1, 201);
	ASSERT(s0 <= c1, 202);
	ASSERT(s0 <= c0, 203);
	ASSERT(s1 > c0, 204);
	ASSERT(s1 >= c0, 205);
	ASSERT(s1 >= c1, 206);

	ASSERT(s0 # s1, 210);
	ASSERT(s0 < s1, 211);
	ASSERT(s0 <= s1, 212);
	ASSERT(s0 <= s0, 213);
	ASSERT(s1 > s0, 214);
	ASSERT(s1 >= s0, 215);
	ASSERT(s1 >= s1, 216);
END Test2;

PROCEDURE Test3*;
VAR s0, s1: ARRAY 32 OF CHAR;
BEGIN
	s0 := "R";
	s1 := "RDesc";
	ASSERT(s0 < s1, 300);
	ASSERT(s0 <= s1, 301);
	ASSERT(s1 > s0, 302);
	ASSERT(s1 >= s0, 303);
	ASSERT(s1 # s0, 304);
	ASSERT(s0 # s1, 305);

	ASSERT(~(s0 < s0), 310);
	ASSERT(s0 <= s0, 311);
	ASSERT(~(s0 > s0), 312);
	ASSERT(s0 >= s0, 313);
	ASSERT(s0 = s0, 314);
	ASSERT(~(s0 # s0), 315);
END Test3;

PROCEDURE Test*;
BEGIN
	Test1;  Test2;  Test3
END Test;


END HOTString0.