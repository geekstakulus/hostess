MODULE HOTString0;	(** prk  **)

PROCEDURE Test1*;
VAR s: ARRAY 32 OF CHAR;
BEGIN
	s := "SomeString";
	ASSERT(s = "SomeString", 110);
END Test1;

PROCEDURE Test2*;
CONST  c0 = "abc";  c1 = "xyz";
VAR s0, s1: ARRAY 32 OF CHAR;
BEGIN
	s0 := c0;  s1 := c1;
	
	ASSERT(s0 # c1, 120);	(*check PCC.StringCmp, one of the ops must be a const!!!*)
	ASSERT(s0 < c1, 121);
	ASSERT(s0 <= c1, 122);
	ASSERT(s0 <= c0, 123);
	ASSERT(s1 > c0, 124);
	ASSERT(s1 >= c0, 125);
	ASSERT(s1 >= c1, 126);

	ASSERT(s0 # s1, 130);
	ASSERT(s0 < s1, 131);
	ASSERT(s0 <= s1, 132);
	ASSERT(s0 <= s0, 133);
	ASSERT(s1 > s0, 134);
	ASSERT(s1 >= s0, 135);
	ASSERT(s1 >= s1, 136);
END Test2;

PROCEDURE Test3*;
VAR s0, s1: ARRAY 32 OF CHAR;
BEGIN
	s0 := "R";
	s1 := "RDesc";
	ASSERT(s0 < s1, 140);
	ASSERT(s0 <= s1, 141);
	ASSERT(s1 > s0, 142);
	ASSERT(s1 >= s0, 143);
	ASSERT(s1 # s0, 144);
	ASSERT(s0 # s1, 145);

	ASSERT(~(s0 < s0), 150);
	ASSERT(s0 <= s0, 151);
	ASSERT(~(s0 > s0), 152);
	ASSERT(s0 >= s0, 153);
	ASSERT(s0 = s0, 154);
	ASSERT(~(s0 # s0), 155);
END Test3;

PROCEDURE Test*;
BEGIN
	Test1;  Test2;  Test3
END Test;


END HOTString0.
